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
// ElasticComputeCloudClientProtocol.swift
// ElasticComputeCloudClient
//

import Foundation
import ElasticComputeCloudModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the ElasticComputeCloud service.
 */
public protocol ElasticComputeCloudClientProtocol {
    typealias AcceptReservedInstancesExchangeQuoteSyncType = (
            _ input: ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteRequest) throws -> ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteResult
    typealias AcceptReservedInstancesExchangeQuoteAsyncType = (
            _ input: ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias AcceptTransitGatewayMulticastDomainAssociationsSyncType = (
            _ input: ElasticComputeCloudModel.AcceptTransitGatewayMulticastDomainAssociationsRequest) throws -> ElasticComputeCloudModel.AcceptTransitGatewayMulticastDomainAssociationsResult
    typealias AcceptTransitGatewayMulticastDomainAssociationsAsyncType = (
            _ input: ElasticComputeCloudModel.AcceptTransitGatewayMulticastDomainAssociationsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.AcceptTransitGatewayMulticastDomainAssociationsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias AcceptTransitGatewayPeeringAttachmentSyncType = (
            _ input: ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentRequest) throws -> ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentResult
    typealias AcceptTransitGatewayPeeringAttachmentAsyncType = (
            _ input: ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias AcceptTransitGatewayVpcAttachmentSyncType = (
            _ input: ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentRequest) throws -> ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentResult
    typealias AcceptTransitGatewayVpcAttachmentAsyncType = (
            _ input: ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias AcceptVpcEndpointConnectionsSyncType = (
            _ input: ElasticComputeCloudModel.AcceptVpcEndpointConnectionsRequest) throws -> ElasticComputeCloudModel.AcceptVpcEndpointConnectionsResult
    typealias AcceptVpcEndpointConnectionsAsyncType = (
            _ input: ElasticComputeCloudModel.AcceptVpcEndpointConnectionsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.AcceptVpcEndpointConnectionsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias AcceptVpcPeeringConnectionSyncType = (
            _ input: ElasticComputeCloudModel.AcceptVpcPeeringConnectionRequest) throws -> ElasticComputeCloudModel.AcceptVpcPeeringConnectionResult
    typealias AcceptVpcPeeringConnectionAsyncType = (
            _ input: ElasticComputeCloudModel.AcceptVpcPeeringConnectionRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.AcceptVpcPeeringConnectionResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias AdvertiseByoipCidrSyncType = (
            _ input: ElasticComputeCloudModel.AdvertiseByoipCidrRequest) throws -> ElasticComputeCloudModel.AdvertiseByoipCidrResult
    typealias AdvertiseByoipCidrAsyncType = (
            _ input: ElasticComputeCloudModel.AdvertiseByoipCidrRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.AdvertiseByoipCidrResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias AllocateAddressSyncType = (
            _ input: ElasticComputeCloudModel.AllocateAddressRequest) throws -> ElasticComputeCloudModel.AllocateAddressResult
    typealias AllocateAddressAsyncType = (
            _ input: ElasticComputeCloudModel.AllocateAddressRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.AllocateAddressResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias AllocateHostsSyncType = (
            _ input: ElasticComputeCloudModel.AllocateHostsRequest) throws -> ElasticComputeCloudModel.AllocateHostsResult
    typealias AllocateHostsAsyncType = (
            _ input: ElasticComputeCloudModel.AllocateHostsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.AllocateHostsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ApplySecurityGroupsToClientVpnTargetNetworkSyncType = (
            _ input: ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkRequest) throws -> ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkResult
    typealias ApplySecurityGroupsToClientVpnTargetNetworkAsyncType = (
            _ input: ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias AssignIpv6AddressesSyncType = (
            _ input: ElasticComputeCloudModel.AssignIpv6AddressesRequest) throws -> ElasticComputeCloudModel.AssignIpv6AddressesResult
    typealias AssignIpv6AddressesAsyncType = (
            _ input: ElasticComputeCloudModel.AssignIpv6AddressesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.AssignIpv6AddressesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias AssignPrivateIpAddressesSyncType = (
            _ input: ElasticComputeCloudModel.AssignPrivateIpAddressesRequest) throws -> ElasticComputeCloudModel.AssignPrivateIpAddressesResult
    typealias AssignPrivateIpAddressesAsyncType = (
            _ input: ElasticComputeCloudModel.AssignPrivateIpAddressesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.AssignPrivateIpAddressesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias AssociateAddressSyncType = (
            _ input: ElasticComputeCloudModel.AssociateAddressRequest) throws -> ElasticComputeCloudModel.AssociateAddressResult
    typealias AssociateAddressAsyncType = (
            _ input: ElasticComputeCloudModel.AssociateAddressRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.AssociateAddressResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias AssociateClientVpnTargetNetworkSyncType = (
            _ input: ElasticComputeCloudModel.AssociateClientVpnTargetNetworkRequest) throws -> ElasticComputeCloudModel.AssociateClientVpnTargetNetworkResult
    typealias AssociateClientVpnTargetNetworkAsyncType = (
            _ input: ElasticComputeCloudModel.AssociateClientVpnTargetNetworkRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.AssociateClientVpnTargetNetworkResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias AssociateDhcpOptionsSyncType = (
            _ input: ElasticComputeCloudModel.AssociateDhcpOptionsRequest) throws -> ()
    typealias AssociateDhcpOptionsAsyncType = (
            _ input: ElasticComputeCloudModel.AssociateDhcpOptionsRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias AssociateEnclaveCertificateIamRoleSyncType = (
            _ input: ElasticComputeCloudModel.AssociateEnclaveCertificateIamRoleRequest) throws -> ElasticComputeCloudModel.AssociateEnclaveCertificateIamRoleResult
    typealias AssociateEnclaveCertificateIamRoleAsyncType = (
            _ input: ElasticComputeCloudModel.AssociateEnclaveCertificateIamRoleRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.AssociateEnclaveCertificateIamRoleResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias AssociateIamInstanceProfileSyncType = (
            _ input: ElasticComputeCloudModel.AssociateIamInstanceProfileRequest) throws -> ElasticComputeCloudModel.AssociateIamInstanceProfileResult
    typealias AssociateIamInstanceProfileAsyncType = (
            _ input: ElasticComputeCloudModel.AssociateIamInstanceProfileRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.AssociateIamInstanceProfileResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias AssociateRouteTableSyncType = (
            _ input: ElasticComputeCloudModel.AssociateRouteTableRequest) throws -> ElasticComputeCloudModel.AssociateRouteTableResult
    typealias AssociateRouteTableAsyncType = (
            _ input: ElasticComputeCloudModel.AssociateRouteTableRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.AssociateRouteTableResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias AssociateSubnetCidrBlockSyncType = (
            _ input: ElasticComputeCloudModel.AssociateSubnetCidrBlockRequest) throws -> ElasticComputeCloudModel.AssociateSubnetCidrBlockResult
    typealias AssociateSubnetCidrBlockAsyncType = (
            _ input: ElasticComputeCloudModel.AssociateSubnetCidrBlockRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.AssociateSubnetCidrBlockResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias AssociateTransitGatewayMulticastDomainSyncType = (
            _ input: ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainRequest) throws -> ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainResult
    typealias AssociateTransitGatewayMulticastDomainAsyncType = (
            _ input: ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias AssociateTransitGatewayRouteTableSyncType = (
            _ input: ElasticComputeCloudModel.AssociateTransitGatewayRouteTableRequest) throws -> ElasticComputeCloudModel.AssociateTransitGatewayRouteTableResult
    typealias AssociateTransitGatewayRouteTableAsyncType = (
            _ input: ElasticComputeCloudModel.AssociateTransitGatewayRouteTableRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.AssociateTransitGatewayRouteTableResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias AssociateVpcCidrBlockSyncType = (
            _ input: ElasticComputeCloudModel.AssociateVpcCidrBlockRequest) throws -> ElasticComputeCloudModel.AssociateVpcCidrBlockResult
    typealias AssociateVpcCidrBlockAsyncType = (
            _ input: ElasticComputeCloudModel.AssociateVpcCidrBlockRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.AssociateVpcCidrBlockResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias AttachClassicLinkVpcSyncType = (
            _ input: ElasticComputeCloudModel.AttachClassicLinkVpcRequest) throws -> ElasticComputeCloudModel.AttachClassicLinkVpcResult
    typealias AttachClassicLinkVpcAsyncType = (
            _ input: ElasticComputeCloudModel.AttachClassicLinkVpcRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.AttachClassicLinkVpcResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias AttachInternetGatewaySyncType = (
            _ input: ElasticComputeCloudModel.AttachInternetGatewayRequest) throws -> ()
    typealias AttachInternetGatewayAsyncType = (
            _ input: ElasticComputeCloudModel.AttachInternetGatewayRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias AttachNetworkInterfaceSyncType = (
            _ input: ElasticComputeCloudModel.AttachNetworkInterfaceRequest) throws -> ElasticComputeCloudModel.AttachNetworkInterfaceResult
    typealias AttachNetworkInterfaceAsyncType = (
            _ input: ElasticComputeCloudModel.AttachNetworkInterfaceRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.AttachNetworkInterfaceResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias AttachVolumeSyncType = (
            _ input: ElasticComputeCloudModel.AttachVolumeRequest) throws -> ElasticComputeCloudModel.VolumeAttachment
    typealias AttachVolumeAsyncType = (
            _ input: ElasticComputeCloudModel.AttachVolumeRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.VolumeAttachment, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias AttachVpnGatewaySyncType = (
            _ input: ElasticComputeCloudModel.AttachVpnGatewayRequest) throws -> ElasticComputeCloudModel.AttachVpnGatewayResult
    typealias AttachVpnGatewayAsyncType = (
            _ input: ElasticComputeCloudModel.AttachVpnGatewayRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.AttachVpnGatewayResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias AuthorizeClientVpnIngressSyncType = (
            _ input: ElasticComputeCloudModel.AuthorizeClientVpnIngressRequest) throws -> ElasticComputeCloudModel.AuthorizeClientVpnIngressResult
    typealias AuthorizeClientVpnIngressAsyncType = (
            _ input: ElasticComputeCloudModel.AuthorizeClientVpnIngressRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.AuthorizeClientVpnIngressResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias AuthorizeSecurityGroupEgressSyncType = (
            _ input: ElasticComputeCloudModel.AuthorizeSecurityGroupEgressRequest) throws -> ()
    typealias AuthorizeSecurityGroupEgressAsyncType = (
            _ input: ElasticComputeCloudModel.AuthorizeSecurityGroupEgressRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias AuthorizeSecurityGroupIngressSyncType = (
            _ input: ElasticComputeCloudModel.AuthorizeSecurityGroupIngressRequest) throws -> ()
    typealias AuthorizeSecurityGroupIngressAsyncType = (
            _ input: ElasticComputeCloudModel.AuthorizeSecurityGroupIngressRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias BundleInstanceSyncType = (
            _ input: ElasticComputeCloudModel.BundleInstanceRequest) throws -> ElasticComputeCloudModel.BundleInstanceResult
    typealias BundleInstanceAsyncType = (
            _ input: ElasticComputeCloudModel.BundleInstanceRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.BundleInstanceResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CancelBundleTaskSyncType = (
            _ input: ElasticComputeCloudModel.CancelBundleTaskRequest) throws -> ElasticComputeCloudModel.CancelBundleTaskResult
    typealias CancelBundleTaskAsyncType = (
            _ input: ElasticComputeCloudModel.CancelBundleTaskRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CancelBundleTaskResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CancelCapacityReservationSyncType = (
            _ input: ElasticComputeCloudModel.CancelCapacityReservationRequest) throws -> ElasticComputeCloudModel.CancelCapacityReservationResult
    typealias CancelCapacityReservationAsyncType = (
            _ input: ElasticComputeCloudModel.CancelCapacityReservationRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CancelCapacityReservationResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CancelConversionTaskSyncType = (
            _ input: ElasticComputeCloudModel.CancelConversionRequest) throws -> ()
    typealias CancelConversionTaskAsyncType = (
            _ input: ElasticComputeCloudModel.CancelConversionRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias CancelExportTaskSyncType = (
            _ input: ElasticComputeCloudModel.CancelExportTaskRequest) throws -> ()
    typealias CancelExportTaskAsyncType = (
            _ input: ElasticComputeCloudModel.CancelExportTaskRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias CancelImportTaskSyncType = (
            _ input: ElasticComputeCloudModel.CancelImportTaskRequest) throws -> ElasticComputeCloudModel.CancelImportTaskResult
    typealias CancelImportTaskAsyncType = (
            _ input: ElasticComputeCloudModel.CancelImportTaskRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CancelImportTaskResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CancelReservedInstancesListingSyncType = (
            _ input: ElasticComputeCloudModel.CancelReservedInstancesListingRequest) throws -> ElasticComputeCloudModel.CancelReservedInstancesListingResult
    typealias CancelReservedInstancesListingAsyncType = (
            _ input: ElasticComputeCloudModel.CancelReservedInstancesListingRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CancelReservedInstancesListingResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CancelSpotFleetRequestsSyncType = (
            _ input: ElasticComputeCloudModel.CancelSpotFleetRequestsRequest) throws -> ElasticComputeCloudModel.CancelSpotFleetRequestsResponse
    typealias CancelSpotFleetRequestsAsyncType = (
            _ input: ElasticComputeCloudModel.CancelSpotFleetRequestsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CancelSpotFleetRequestsResponse, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CancelSpotInstanceRequestsSyncType = (
            _ input: ElasticComputeCloudModel.CancelSpotInstanceRequestsRequest) throws -> ElasticComputeCloudModel.CancelSpotInstanceRequestsResult
    typealias CancelSpotInstanceRequestsAsyncType = (
            _ input: ElasticComputeCloudModel.CancelSpotInstanceRequestsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CancelSpotInstanceRequestsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ConfirmProductInstanceSyncType = (
            _ input: ElasticComputeCloudModel.ConfirmProductInstanceRequest) throws -> ElasticComputeCloudModel.ConfirmProductInstanceResult
    typealias ConfirmProductInstanceAsyncType = (
            _ input: ElasticComputeCloudModel.ConfirmProductInstanceRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ConfirmProductInstanceResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CopyFpgaImageSyncType = (
            _ input: ElasticComputeCloudModel.CopyFpgaImageRequest) throws -> ElasticComputeCloudModel.CopyFpgaImageResult
    typealias CopyFpgaImageAsyncType = (
            _ input: ElasticComputeCloudModel.CopyFpgaImageRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CopyFpgaImageResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CopyImageSyncType = (
            _ input: ElasticComputeCloudModel.CopyImageRequest) throws -> ElasticComputeCloudModel.CopyImageResult
    typealias CopyImageAsyncType = (
            _ input: ElasticComputeCloudModel.CopyImageRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CopyImageResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CopySnapshotSyncType = (
            _ input: ElasticComputeCloudModel.CopySnapshotRequest) throws -> ElasticComputeCloudModel.CopySnapshotResult
    typealias CopySnapshotAsyncType = (
            _ input: ElasticComputeCloudModel.CopySnapshotRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CopySnapshotResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateCapacityReservationSyncType = (
            _ input: ElasticComputeCloudModel.CreateCapacityReservationRequest) throws -> ElasticComputeCloudModel.CreateCapacityReservationResult
    typealias CreateCapacityReservationAsyncType = (
            _ input: ElasticComputeCloudModel.CreateCapacityReservationRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateCapacityReservationResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateCarrierGatewaySyncType = (
            _ input: ElasticComputeCloudModel.CreateCarrierGatewayRequest) throws -> ElasticComputeCloudModel.CreateCarrierGatewayResult
    typealias CreateCarrierGatewayAsyncType = (
            _ input: ElasticComputeCloudModel.CreateCarrierGatewayRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateCarrierGatewayResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateClientVpnEndpointSyncType = (
            _ input: ElasticComputeCloudModel.CreateClientVpnEndpointRequest) throws -> ElasticComputeCloudModel.CreateClientVpnEndpointResult
    typealias CreateClientVpnEndpointAsyncType = (
            _ input: ElasticComputeCloudModel.CreateClientVpnEndpointRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateClientVpnEndpointResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateClientVpnRouteSyncType = (
            _ input: ElasticComputeCloudModel.CreateClientVpnRouteRequest) throws -> ElasticComputeCloudModel.CreateClientVpnRouteResult
    typealias CreateClientVpnRouteAsyncType = (
            _ input: ElasticComputeCloudModel.CreateClientVpnRouteRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateClientVpnRouteResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateCustomerGatewaySyncType = (
            _ input: ElasticComputeCloudModel.CreateCustomerGatewayRequest) throws -> ElasticComputeCloudModel.CreateCustomerGatewayResult
    typealias CreateCustomerGatewayAsyncType = (
            _ input: ElasticComputeCloudModel.CreateCustomerGatewayRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateCustomerGatewayResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateDefaultSubnetSyncType = (
            _ input: ElasticComputeCloudModel.CreateDefaultSubnetRequest) throws -> ElasticComputeCloudModel.CreateDefaultSubnetResult
    typealias CreateDefaultSubnetAsyncType = (
            _ input: ElasticComputeCloudModel.CreateDefaultSubnetRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateDefaultSubnetResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateDefaultVpcSyncType = (
            _ input: ElasticComputeCloudModel.CreateDefaultVpcRequest) throws -> ElasticComputeCloudModel.CreateDefaultVpcResult
    typealias CreateDefaultVpcAsyncType = (
            _ input: ElasticComputeCloudModel.CreateDefaultVpcRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateDefaultVpcResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateDhcpOptionsSyncType = (
            _ input: ElasticComputeCloudModel.CreateDhcpOptionsRequest) throws -> ElasticComputeCloudModel.CreateDhcpOptionsResult
    typealias CreateDhcpOptionsAsyncType = (
            _ input: ElasticComputeCloudModel.CreateDhcpOptionsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateDhcpOptionsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateEgressOnlyInternetGatewaySyncType = (
            _ input: ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayRequest) throws -> ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayResult
    typealias CreateEgressOnlyInternetGatewayAsyncType = (
            _ input: ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateFleetSyncType = (
            _ input: ElasticComputeCloudModel.CreateFleetRequest) throws -> ElasticComputeCloudModel.CreateFleetResult
    typealias CreateFleetAsyncType = (
            _ input: ElasticComputeCloudModel.CreateFleetRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateFleetResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateFlowLogsSyncType = (
            _ input: ElasticComputeCloudModel.CreateFlowLogsRequest) throws -> ElasticComputeCloudModel.CreateFlowLogsResult
    typealias CreateFlowLogsAsyncType = (
            _ input: ElasticComputeCloudModel.CreateFlowLogsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateFlowLogsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateFpgaImageSyncType = (
            _ input: ElasticComputeCloudModel.CreateFpgaImageRequest) throws -> ElasticComputeCloudModel.CreateFpgaImageResult
    typealias CreateFpgaImageAsyncType = (
            _ input: ElasticComputeCloudModel.CreateFpgaImageRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateFpgaImageResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateImageSyncType = (
            _ input: ElasticComputeCloudModel.CreateImageRequest) throws -> ElasticComputeCloudModel.CreateImageResult
    typealias CreateImageAsyncType = (
            _ input: ElasticComputeCloudModel.CreateImageRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateImageResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateInstanceExportTaskSyncType = (
            _ input: ElasticComputeCloudModel.CreateInstanceExportTaskRequest) throws -> ElasticComputeCloudModel.CreateInstanceExportTaskResult
    typealias CreateInstanceExportTaskAsyncType = (
            _ input: ElasticComputeCloudModel.CreateInstanceExportTaskRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateInstanceExportTaskResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateInternetGatewaySyncType = (
            _ input: ElasticComputeCloudModel.CreateInternetGatewayRequest) throws -> ElasticComputeCloudModel.CreateInternetGatewayResult
    typealias CreateInternetGatewayAsyncType = (
            _ input: ElasticComputeCloudModel.CreateInternetGatewayRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateInternetGatewayResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateKeyPairSyncType = (
            _ input: ElasticComputeCloudModel.CreateKeyPairRequest) throws -> ElasticComputeCloudModel.KeyPair
    typealias CreateKeyPairAsyncType = (
            _ input: ElasticComputeCloudModel.CreateKeyPairRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.KeyPair, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateLaunchTemplateSyncType = (
            _ input: ElasticComputeCloudModel.CreateLaunchTemplateRequest) throws -> ElasticComputeCloudModel.CreateLaunchTemplateResult
    typealias CreateLaunchTemplateAsyncType = (
            _ input: ElasticComputeCloudModel.CreateLaunchTemplateRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateLaunchTemplateResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateLaunchTemplateVersionSyncType = (
            _ input: ElasticComputeCloudModel.CreateLaunchTemplateVersionRequest) throws -> ElasticComputeCloudModel.CreateLaunchTemplateVersionResult
    typealias CreateLaunchTemplateVersionAsyncType = (
            _ input: ElasticComputeCloudModel.CreateLaunchTemplateVersionRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateLaunchTemplateVersionResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateLocalGatewayRouteSyncType = (
            _ input: ElasticComputeCloudModel.CreateLocalGatewayRouteRequest) throws -> ElasticComputeCloudModel.CreateLocalGatewayRouteResult
    typealias CreateLocalGatewayRouteAsyncType = (
            _ input: ElasticComputeCloudModel.CreateLocalGatewayRouteRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateLocalGatewayRouteResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateLocalGatewayRouteTableVpcAssociationSyncType = (
            _ input: ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationRequest) throws -> ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationResult
    typealias CreateLocalGatewayRouteTableVpcAssociationAsyncType = (
            _ input: ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateManagedPrefixListSyncType = (
            _ input: ElasticComputeCloudModel.CreateManagedPrefixListRequest) throws -> ElasticComputeCloudModel.CreateManagedPrefixListResult
    typealias CreateManagedPrefixListAsyncType = (
            _ input: ElasticComputeCloudModel.CreateManagedPrefixListRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateManagedPrefixListResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateNatGatewaySyncType = (
            _ input: ElasticComputeCloudModel.CreateNatGatewayRequest) throws -> ElasticComputeCloudModel.CreateNatGatewayResult
    typealias CreateNatGatewayAsyncType = (
            _ input: ElasticComputeCloudModel.CreateNatGatewayRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateNatGatewayResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateNetworkAclSyncType = (
            _ input: ElasticComputeCloudModel.CreateNetworkAclRequest) throws -> ElasticComputeCloudModel.CreateNetworkAclResult
    typealias CreateNetworkAclAsyncType = (
            _ input: ElasticComputeCloudModel.CreateNetworkAclRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateNetworkAclResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateNetworkAclEntrySyncType = (
            _ input: ElasticComputeCloudModel.CreateNetworkAclEntryRequest) throws -> ()
    typealias CreateNetworkAclEntryAsyncType = (
            _ input: ElasticComputeCloudModel.CreateNetworkAclEntryRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias CreateNetworkInsightsPathSyncType = (
            _ input: ElasticComputeCloudModel.CreateNetworkInsightsPathRequest) throws -> ElasticComputeCloudModel.CreateNetworkInsightsPathResult
    typealias CreateNetworkInsightsPathAsyncType = (
            _ input: ElasticComputeCloudModel.CreateNetworkInsightsPathRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateNetworkInsightsPathResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateNetworkInterfaceSyncType = (
            _ input: ElasticComputeCloudModel.CreateNetworkInterfaceRequest) throws -> ElasticComputeCloudModel.CreateNetworkInterfaceResult
    typealias CreateNetworkInterfaceAsyncType = (
            _ input: ElasticComputeCloudModel.CreateNetworkInterfaceRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateNetworkInterfaceResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateNetworkInterfacePermissionSyncType = (
            _ input: ElasticComputeCloudModel.CreateNetworkInterfacePermissionRequest) throws -> ElasticComputeCloudModel.CreateNetworkInterfacePermissionResult
    typealias CreateNetworkInterfacePermissionAsyncType = (
            _ input: ElasticComputeCloudModel.CreateNetworkInterfacePermissionRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateNetworkInterfacePermissionResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreatePlacementGroupSyncType = (
            _ input: ElasticComputeCloudModel.CreatePlacementGroupRequest) throws -> ElasticComputeCloudModel.CreatePlacementGroupResult
    typealias CreatePlacementGroupAsyncType = (
            _ input: ElasticComputeCloudModel.CreatePlacementGroupRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreatePlacementGroupResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateReservedInstancesListingSyncType = (
            _ input: ElasticComputeCloudModel.CreateReservedInstancesListingRequest) throws -> ElasticComputeCloudModel.CreateReservedInstancesListingResult
    typealias CreateReservedInstancesListingAsyncType = (
            _ input: ElasticComputeCloudModel.CreateReservedInstancesListingRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateReservedInstancesListingResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateRouteSyncType = (
            _ input: ElasticComputeCloudModel.CreateRouteRequest) throws -> ElasticComputeCloudModel.CreateRouteResult
    typealias CreateRouteAsyncType = (
            _ input: ElasticComputeCloudModel.CreateRouteRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateRouteResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateRouteTableSyncType = (
            _ input: ElasticComputeCloudModel.CreateRouteTableRequest) throws -> ElasticComputeCloudModel.CreateRouteTableResult
    typealias CreateRouteTableAsyncType = (
            _ input: ElasticComputeCloudModel.CreateRouteTableRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateRouteTableResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateSecurityGroupSyncType = (
            _ input: ElasticComputeCloudModel.CreateSecurityGroupRequest) throws -> ElasticComputeCloudModel.CreateSecurityGroupResult
    typealias CreateSecurityGroupAsyncType = (
            _ input: ElasticComputeCloudModel.CreateSecurityGroupRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateSecurityGroupResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateSnapshotSyncType = (
            _ input: ElasticComputeCloudModel.CreateSnapshotRequest) throws -> ElasticComputeCloudModel.Snapshot
    typealias CreateSnapshotAsyncType = (
            _ input: ElasticComputeCloudModel.CreateSnapshotRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.Snapshot, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateSnapshotsSyncType = (
            _ input: ElasticComputeCloudModel.CreateSnapshotsRequest) throws -> ElasticComputeCloudModel.CreateSnapshotsResult
    typealias CreateSnapshotsAsyncType = (
            _ input: ElasticComputeCloudModel.CreateSnapshotsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateSnapshotsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateSpotDatafeedSubscriptionSyncType = (
            _ input: ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionRequest) throws -> ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionResult
    typealias CreateSpotDatafeedSubscriptionAsyncType = (
            _ input: ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateSubnetSyncType = (
            _ input: ElasticComputeCloudModel.CreateSubnetRequest) throws -> ElasticComputeCloudModel.CreateSubnetResult
    typealias CreateSubnetAsyncType = (
            _ input: ElasticComputeCloudModel.CreateSubnetRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateSubnetResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateTagsSyncType = (
            _ input: ElasticComputeCloudModel.CreateTagsRequest) throws -> ()
    typealias CreateTagsAsyncType = (
            _ input: ElasticComputeCloudModel.CreateTagsRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias CreateTrafficMirrorFilterSyncType = (
            _ input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRequest) throws -> ElasticComputeCloudModel.CreateTrafficMirrorFilterResult
    typealias CreateTrafficMirrorFilterAsyncType = (
            _ input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateTrafficMirrorFilterResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateTrafficMirrorFilterRuleSyncType = (
            _ input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleRequest) throws -> ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleResult
    typealias CreateTrafficMirrorFilterRuleAsyncType = (
            _ input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateTrafficMirrorSessionSyncType = (
            _ input: ElasticComputeCloudModel.CreateTrafficMirrorSessionRequest) throws -> ElasticComputeCloudModel.CreateTrafficMirrorSessionResult
    typealias CreateTrafficMirrorSessionAsyncType = (
            _ input: ElasticComputeCloudModel.CreateTrafficMirrorSessionRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateTrafficMirrorSessionResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateTrafficMirrorTargetSyncType = (
            _ input: ElasticComputeCloudModel.CreateTrafficMirrorTargetRequest) throws -> ElasticComputeCloudModel.CreateTrafficMirrorTargetResult
    typealias CreateTrafficMirrorTargetAsyncType = (
            _ input: ElasticComputeCloudModel.CreateTrafficMirrorTargetRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateTrafficMirrorTargetResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateTransitGatewaySyncType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayResult
    typealias CreateTransitGatewayAsyncType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateTransitGatewayConnectSyncType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayConnectRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayConnectResult
    typealias CreateTransitGatewayConnectAsyncType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayConnectRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayConnectResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateTransitGatewayConnectPeerSyncType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayConnectPeerRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayConnectPeerResult
    typealias CreateTransitGatewayConnectPeerAsyncType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayConnectPeerRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayConnectPeerResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateTransitGatewayMulticastDomainSyncType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainResult
    typealias CreateTransitGatewayMulticastDomainAsyncType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateTransitGatewayPeeringAttachmentSyncType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentResult
    typealias CreateTransitGatewayPeeringAttachmentAsyncType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateTransitGatewayPrefixListReferenceSyncType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayPrefixListReferenceRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayPrefixListReferenceResult
    typealias CreateTransitGatewayPrefixListReferenceAsyncType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayPrefixListReferenceRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayPrefixListReferenceResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateTransitGatewayRouteSyncType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayRouteRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayRouteResult
    typealias CreateTransitGatewayRouteAsyncType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayRouteRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayRouteResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateTransitGatewayRouteTableSyncType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayRouteTableRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayRouteTableResult
    typealias CreateTransitGatewayRouteTableAsyncType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayRouteTableRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayRouteTableResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateTransitGatewayVpcAttachmentSyncType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentResult
    typealias CreateTransitGatewayVpcAttachmentAsyncType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateVolumeSyncType = (
            _ input: ElasticComputeCloudModel.CreateVolumeRequest) throws -> ElasticComputeCloudModel.Volume
    typealias CreateVolumeAsyncType = (
            _ input: ElasticComputeCloudModel.CreateVolumeRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.Volume, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateVpcSyncType = (
            _ input: ElasticComputeCloudModel.CreateVpcRequest) throws -> ElasticComputeCloudModel.CreateVpcResult
    typealias CreateVpcAsyncType = (
            _ input: ElasticComputeCloudModel.CreateVpcRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateVpcResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateVpcEndpointSyncType = (
            _ input: ElasticComputeCloudModel.CreateVpcEndpointRequest) throws -> ElasticComputeCloudModel.CreateVpcEndpointResult
    typealias CreateVpcEndpointAsyncType = (
            _ input: ElasticComputeCloudModel.CreateVpcEndpointRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateVpcEndpointResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateVpcEndpointConnectionNotificationSyncType = (
            _ input: ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationRequest) throws -> ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationResult
    typealias CreateVpcEndpointConnectionNotificationAsyncType = (
            _ input: ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateVpcEndpointServiceConfigurationSyncType = (
            _ input: ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationRequest) throws -> ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationResult
    typealias CreateVpcEndpointServiceConfigurationAsyncType = (
            _ input: ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateVpcPeeringConnectionSyncType = (
            _ input: ElasticComputeCloudModel.CreateVpcPeeringConnectionRequest) throws -> ElasticComputeCloudModel.CreateVpcPeeringConnectionResult
    typealias CreateVpcPeeringConnectionAsyncType = (
            _ input: ElasticComputeCloudModel.CreateVpcPeeringConnectionRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateVpcPeeringConnectionResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateVpnConnectionSyncType = (
            _ input: ElasticComputeCloudModel.CreateVpnConnectionRequest) throws -> ElasticComputeCloudModel.CreateVpnConnectionResult
    typealias CreateVpnConnectionAsyncType = (
            _ input: ElasticComputeCloudModel.CreateVpnConnectionRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateVpnConnectionResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias CreateVpnConnectionRouteSyncType = (
            _ input: ElasticComputeCloudModel.CreateVpnConnectionRouteRequest) throws -> ()
    typealias CreateVpnConnectionRouteAsyncType = (
            _ input: ElasticComputeCloudModel.CreateVpnConnectionRouteRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias CreateVpnGatewaySyncType = (
            _ input: ElasticComputeCloudModel.CreateVpnGatewayRequest) throws -> ElasticComputeCloudModel.CreateVpnGatewayResult
    typealias CreateVpnGatewayAsyncType = (
            _ input: ElasticComputeCloudModel.CreateVpnGatewayRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateVpnGatewayResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteCarrierGatewaySyncType = (
            _ input: ElasticComputeCloudModel.DeleteCarrierGatewayRequest) throws -> ElasticComputeCloudModel.DeleteCarrierGatewayResult
    typealias DeleteCarrierGatewayAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteCarrierGatewayRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteCarrierGatewayResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteClientVpnEndpointSyncType = (
            _ input: ElasticComputeCloudModel.DeleteClientVpnEndpointRequest) throws -> ElasticComputeCloudModel.DeleteClientVpnEndpointResult
    typealias DeleteClientVpnEndpointAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteClientVpnEndpointRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteClientVpnEndpointResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteClientVpnRouteSyncType = (
            _ input: ElasticComputeCloudModel.DeleteClientVpnRouteRequest) throws -> ElasticComputeCloudModel.DeleteClientVpnRouteResult
    typealias DeleteClientVpnRouteAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteClientVpnRouteRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteClientVpnRouteResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteCustomerGatewaySyncType = (
            _ input: ElasticComputeCloudModel.DeleteCustomerGatewayRequest) throws -> ()
    typealias DeleteCustomerGatewayAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteCustomerGatewayRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias DeleteDhcpOptionsSyncType = (
            _ input: ElasticComputeCloudModel.DeleteDhcpOptionsRequest) throws -> ()
    typealias DeleteDhcpOptionsAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteDhcpOptionsRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias DeleteEgressOnlyInternetGatewaySyncType = (
            _ input: ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayRequest) throws -> ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayResult
    typealias DeleteEgressOnlyInternetGatewayAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteFleetsSyncType = (
            _ input: ElasticComputeCloudModel.DeleteFleetsRequest) throws -> ElasticComputeCloudModel.DeleteFleetsResult
    typealias DeleteFleetsAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteFleetsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteFleetsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteFlowLogsSyncType = (
            _ input: ElasticComputeCloudModel.DeleteFlowLogsRequest) throws -> ElasticComputeCloudModel.DeleteFlowLogsResult
    typealias DeleteFlowLogsAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteFlowLogsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteFlowLogsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteFpgaImageSyncType = (
            _ input: ElasticComputeCloudModel.DeleteFpgaImageRequest) throws -> ElasticComputeCloudModel.DeleteFpgaImageResult
    typealias DeleteFpgaImageAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteFpgaImageRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteFpgaImageResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteInternetGatewaySyncType = (
            _ input: ElasticComputeCloudModel.DeleteInternetGatewayRequest) throws -> ()
    typealias DeleteInternetGatewayAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteInternetGatewayRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias DeleteKeyPairSyncType = (
            _ input: ElasticComputeCloudModel.DeleteKeyPairRequest) throws -> ()
    typealias DeleteKeyPairAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteKeyPairRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias DeleteLaunchTemplateSyncType = (
            _ input: ElasticComputeCloudModel.DeleteLaunchTemplateRequest) throws -> ElasticComputeCloudModel.DeleteLaunchTemplateResult
    typealias DeleteLaunchTemplateAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteLaunchTemplateRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteLaunchTemplateResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteLaunchTemplateVersionsSyncType = (
            _ input: ElasticComputeCloudModel.DeleteLaunchTemplateVersionsRequest) throws -> ElasticComputeCloudModel.DeleteLaunchTemplateVersionsResult
    typealias DeleteLaunchTemplateVersionsAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteLaunchTemplateVersionsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteLaunchTemplateVersionsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteLocalGatewayRouteSyncType = (
            _ input: ElasticComputeCloudModel.DeleteLocalGatewayRouteRequest) throws -> ElasticComputeCloudModel.DeleteLocalGatewayRouteResult
    typealias DeleteLocalGatewayRouteAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteLocalGatewayRouteRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteLocalGatewayRouteResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteLocalGatewayRouteTableVpcAssociationSyncType = (
            _ input: ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationRequest) throws -> ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationResult
    typealias DeleteLocalGatewayRouteTableVpcAssociationAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteManagedPrefixListSyncType = (
            _ input: ElasticComputeCloudModel.DeleteManagedPrefixListRequest) throws -> ElasticComputeCloudModel.DeleteManagedPrefixListResult
    typealias DeleteManagedPrefixListAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteManagedPrefixListRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteManagedPrefixListResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteNatGatewaySyncType = (
            _ input: ElasticComputeCloudModel.DeleteNatGatewayRequest) throws -> ElasticComputeCloudModel.DeleteNatGatewayResult
    typealias DeleteNatGatewayAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteNatGatewayRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteNatGatewayResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteNetworkAclSyncType = (
            _ input: ElasticComputeCloudModel.DeleteNetworkAclRequest) throws -> ()
    typealias DeleteNetworkAclAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteNetworkAclRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias DeleteNetworkAclEntrySyncType = (
            _ input: ElasticComputeCloudModel.DeleteNetworkAclEntryRequest) throws -> ()
    typealias DeleteNetworkAclEntryAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteNetworkAclEntryRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias DeleteNetworkInsightsAnalysisSyncType = (
            _ input: ElasticComputeCloudModel.DeleteNetworkInsightsAnalysisRequest) throws -> ElasticComputeCloudModel.DeleteNetworkInsightsAnalysisResult
    typealias DeleteNetworkInsightsAnalysisAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteNetworkInsightsAnalysisRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteNetworkInsightsAnalysisResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteNetworkInsightsPathSyncType = (
            _ input: ElasticComputeCloudModel.DeleteNetworkInsightsPathRequest) throws -> ElasticComputeCloudModel.DeleteNetworkInsightsPathResult
    typealias DeleteNetworkInsightsPathAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteNetworkInsightsPathRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteNetworkInsightsPathResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteNetworkInterfaceSyncType = (
            _ input: ElasticComputeCloudModel.DeleteNetworkInterfaceRequest) throws -> ()
    typealias DeleteNetworkInterfaceAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteNetworkInterfaceRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias DeleteNetworkInterfacePermissionSyncType = (
            _ input: ElasticComputeCloudModel.DeleteNetworkInterfacePermissionRequest) throws -> ElasticComputeCloudModel.DeleteNetworkInterfacePermissionResult
    typealias DeleteNetworkInterfacePermissionAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteNetworkInterfacePermissionRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteNetworkInterfacePermissionResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeletePlacementGroupSyncType = (
            _ input: ElasticComputeCloudModel.DeletePlacementGroupRequest) throws -> ()
    typealias DeletePlacementGroupAsyncType = (
            _ input: ElasticComputeCloudModel.DeletePlacementGroupRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias DeleteQueuedReservedInstancesSyncType = (
            _ input: ElasticComputeCloudModel.DeleteQueuedReservedInstancesRequest) throws -> ElasticComputeCloudModel.DeleteQueuedReservedInstancesResult
    typealias DeleteQueuedReservedInstancesAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteQueuedReservedInstancesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteQueuedReservedInstancesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteRouteSyncType = (
            _ input: ElasticComputeCloudModel.DeleteRouteRequest) throws -> ()
    typealias DeleteRouteAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteRouteRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias DeleteRouteTableSyncType = (
            _ input: ElasticComputeCloudModel.DeleteRouteTableRequest) throws -> ()
    typealias DeleteRouteTableAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteRouteTableRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias DeleteSecurityGroupSyncType = (
            _ input: ElasticComputeCloudModel.DeleteSecurityGroupRequest) throws -> ()
    typealias DeleteSecurityGroupAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteSecurityGroupRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias DeleteSnapshotSyncType = (
            _ input: ElasticComputeCloudModel.DeleteSnapshotRequest) throws -> ()
    typealias DeleteSnapshotAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteSnapshotRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias DeleteSpotDatafeedSubscriptionSyncType = (
            _ input: ElasticComputeCloudModel.DeleteSpotDatafeedSubscriptionRequest) throws -> ()
    typealias DeleteSpotDatafeedSubscriptionAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteSpotDatafeedSubscriptionRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias DeleteSubnetSyncType = (
            _ input: ElasticComputeCloudModel.DeleteSubnetRequest) throws -> ()
    typealias DeleteSubnetAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteSubnetRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias DeleteTagsSyncType = (
            _ input: ElasticComputeCloudModel.DeleteTagsRequest) throws -> ()
    typealias DeleteTagsAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteTagsRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias DeleteTrafficMirrorFilterSyncType = (
            _ input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRequest) throws -> ElasticComputeCloudModel.DeleteTrafficMirrorFilterResult
    typealias DeleteTrafficMirrorFilterAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteTrafficMirrorFilterResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteTrafficMirrorFilterRuleSyncType = (
            _ input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleRequest) throws -> ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleResult
    typealias DeleteTrafficMirrorFilterRuleAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteTrafficMirrorSessionSyncType = (
            _ input: ElasticComputeCloudModel.DeleteTrafficMirrorSessionRequest) throws -> ElasticComputeCloudModel.DeleteTrafficMirrorSessionResult
    typealias DeleteTrafficMirrorSessionAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteTrafficMirrorSessionRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteTrafficMirrorSessionResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteTrafficMirrorTargetSyncType = (
            _ input: ElasticComputeCloudModel.DeleteTrafficMirrorTargetRequest) throws -> ElasticComputeCloudModel.DeleteTrafficMirrorTargetResult
    typealias DeleteTrafficMirrorTargetAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteTrafficMirrorTargetRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteTrafficMirrorTargetResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteTransitGatewaySyncType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayResult
    typealias DeleteTransitGatewayAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteTransitGatewayConnectSyncType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayConnectRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayConnectResult
    typealias DeleteTransitGatewayConnectAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayConnectRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayConnectResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteTransitGatewayConnectPeerSyncType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayConnectPeerRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayConnectPeerResult
    typealias DeleteTransitGatewayConnectPeerAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayConnectPeerRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayConnectPeerResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteTransitGatewayMulticastDomainSyncType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainResult
    typealias DeleteTransitGatewayMulticastDomainAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteTransitGatewayPeeringAttachmentSyncType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentResult
    typealias DeleteTransitGatewayPeeringAttachmentAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteTransitGatewayPrefixListReferenceSyncType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayPrefixListReferenceRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayPrefixListReferenceResult
    typealias DeleteTransitGatewayPrefixListReferenceAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayPrefixListReferenceRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayPrefixListReferenceResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteTransitGatewayRouteSyncType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayRouteRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayRouteResult
    typealias DeleteTransitGatewayRouteAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayRouteRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayRouteResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteTransitGatewayRouteTableSyncType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayRouteTableRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayRouteTableResult
    typealias DeleteTransitGatewayRouteTableAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayRouteTableRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayRouteTableResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteTransitGatewayVpcAttachmentSyncType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentResult
    typealias DeleteTransitGatewayVpcAttachmentAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteVolumeSyncType = (
            _ input: ElasticComputeCloudModel.DeleteVolumeRequest) throws -> ()
    typealias DeleteVolumeAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteVolumeRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias DeleteVpcSyncType = (
            _ input: ElasticComputeCloudModel.DeleteVpcRequest) throws -> ()
    typealias DeleteVpcAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteVpcRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias DeleteVpcEndpointConnectionNotificationsSyncType = (
            _ input: ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsRequest) throws -> ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsResult
    typealias DeleteVpcEndpointConnectionNotificationsAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteVpcEndpointServiceConfigurationsSyncType = (
            _ input: ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsRequest) throws -> ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsResult
    typealias DeleteVpcEndpointServiceConfigurationsAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteVpcEndpointsSyncType = (
            _ input: ElasticComputeCloudModel.DeleteVpcEndpointsRequest) throws -> ElasticComputeCloudModel.DeleteVpcEndpointsResult
    typealias DeleteVpcEndpointsAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteVpcEndpointsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteVpcEndpointsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteVpcPeeringConnectionSyncType = (
            _ input: ElasticComputeCloudModel.DeleteVpcPeeringConnectionRequest) throws -> ElasticComputeCloudModel.DeleteVpcPeeringConnectionResult
    typealias DeleteVpcPeeringConnectionAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteVpcPeeringConnectionRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteVpcPeeringConnectionResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeleteVpnConnectionSyncType = (
            _ input: ElasticComputeCloudModel.DeleteVpnConnectionRequest) throws -> ()
    typealias DeleteVpnConnectionAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteVpnConnectionRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias DeleteVpnConnectionRouteSyncType = (
            _ input: ElasticComputeCloudModel.DeleteVpnConnectionRouteRequest) throws -> ()
    typealias DeleteVpnConnectionRouteAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteVpnConnectionRouteRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias DeleteVpnGatewaySyncType = (
            _ input: ElasticComputeCloudModel.DeleteVpnGatewayRequest) throws -> ()
    typealias DeleteVpnGatewayAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteVpnGatewayRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias DeprovisionByoipCidrSyncType = (
            _ input: ElasticComputeCloudModel.DeprovisionByoipCidrRequest) throws -> ElasticComputeCloudModel.DeprovisionByoipCidrResult
    typealias DeprovisionByoipCidrAsyncType = (
            _ input: ElasticComputeCloudModel.DeprovisionByoipCidrRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeprovisionByoipCidrResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeregisterImageSyncType = (
            _ input: ElasticComputeCloudModel.DeregisterImageRequest) throws -> ()
    typealias DeregisterImageAsyncType = (
            _ input: ElasticComputeCloudModel.DeregisterImageRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias DeregisterInstanceEventNotificationAttributesSyncType = (
            _ input: ElasticComputeCloudModel.DeregisterInstanceEventNotificationAttributesRequest) throws -> ElasticComputeCloudModel.DeregisterInstanceEventNotificationAttributesResult
    typealias DeregisterInstanceEventNotificationAttributesAsyncType = (
            _ input: ElasticComputeCloudModel.DeregisterInstanceEventNotificationAttributesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeregisterInstanceEventNotificationAttributesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeregisterTransitGatewayMulticastGroupMembersSyncType = (
            _ input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersRequest) throws -> ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersResult
    typealias DeregisterTransitGatewayMulticastGroupMembersAsyncType = (
            _ input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DeregisterTransitGatewayMulticastGroupSourcesSyncType = (
            _ input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesRequest) throws -> ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesResult
    typealias DeregisterTransitGatewayMulticastGroupSourcesAsyncType = (
            _ input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeAccountAttributesSyncType = (
            _ input: ElasticComputeCloudModel.DescribeAccountAttributesRequest) throws -> ElasticComputeCloudModel.DescribeAccountAttributesResult
    typealias DescribeAccountAttributesAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeAccountAttributesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeAccountAttributesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeAddressesSyncType = (
            _ input: ElasticComputeCloudModel.DescribeAddressesRequest) throws -> ElasticComputeCloudModel.DescribeAddressesResult
    typealias DescribeAddressesAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeAddressesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeAddressesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeAddressesAttributeSyncType = (
            _ input: ElasticComputeCloudModel.DescribeAddressesAttributeRequest) throws -> ElasticComputeCloudModel.DescribeAddressesAttributeResult
    typealias DescribeAddressesAttributeAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeAddressesAttributeRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeAddressesAttributeResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeAggregateIdFormatSyncType = (
            _ input: ElasticComputeCloudModel.DescribeAggregateIdFormatRequest) throws -> ElasticComputeCloudModel.DescribeAggregateIdFormatResult
    typealias DescribeAggregateIdFormatAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeAggregateIdFormatRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeAggregateIdFormatResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeAvailabilityZonesSyncType = (
            _ input: ElasticComputeCloudModel.DescribeAvailabilityZonesRequest) throws -> ElasticComputeCloudModel.DescribeAvailabilityZonesResult
    typealias DescribeAvailabilityZonesAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeAvailabilityZonesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeAvailabilityZonesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeBundleTasksSyncType = (
            _ input: ElasticComputeCloudModel.DescribeBundleTasksRequest) throws -> ElasticComputeCloudModel.DescribeBundleTasksResult
    typealias DescribeBundleTasksAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeBundleTasksRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeBundleTasksResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeByoipCidrsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeByoipCidrsRequest) throws -> ElasticComputeCloudModel.DescribeByoipCidrsResult
    typealias DescribeByoipCidrsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeByoipCidrsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeByoipCidrsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeCapacityReservationsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeCapacityReservationsRequest) throws -> ElasticComputeCloudModel.DescribeCapacityReservationsResult
    typealias DescribeCapacityReservationsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeCapacityReservationsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeCapacityReservationsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeCarrierGatewaysSyncType = (
            _ input: ElasticComputeCloudModel.DescribeCarrierGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeCarrierGatewaysResult
    typealias DescribeCarrierGatewaysAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeCarrierGatewaysRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeCarrierGatewaysResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeClassicLinkInstancesSyncType = (
            _ input: ElasticComputeCloudModel.DescribeClassicLinkInstancesRequest) throws -> ElasticComputeCloudModel.DescribeClassicLinkInstancesResult
    typealias DescribeClassicLinkInstancesAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeClassicLinkInstancesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeClassicLinkInstancesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeClientVpnAuthorizationRulesSyncType = (
            _ input: ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesRequest) throws -> ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesResult
    typealias DescribeClientVpnAuthorizationRulesAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeClientVpnConnectionsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeClientVpnConnectionsRequest) throws -> ElasticComputeCloudModel.DescribeClientVpnConnectionsResult
    typealias DescribeClientVpnConnectionsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeClientVpnConnectionsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeClientVpnConnectionsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeClientVpnEndpointsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeClientVpnEndpointsRequest) throws -> ElasticComputeCloudModel.DescribeClientVpnEndpointsResult
    typealias DescribeClientVpnEndpointsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeClientVpnEndpointsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeClientVpnEndpointsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeClientVpnRoutesSyncType = (
            _ input: ElasticComputeCloudModel.DescribeClientVpnRoutesRequest) throws -> ElasticComputeCloudModel.DescribeClientVpnRoutesResult
    typealias DescribeClientVpnRoutesAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeClientVpnRoutesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeClientVpnRoutesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeClientVpnTargetNetworksSyncType = (
            _ input: ElasticComputeCloudModel.DescribeClientVpnTargetNetworksRequest) throws -> ElasticComputeCloudModel.DescribeClientVpnTargetNetworksResult
    typealias DescribeClientVpnTargetNetworksAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeClientVpnTargetNetworksRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeClientVpnTargetNetworksResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeCoipPoolsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeCoipPoolsRequest) throws -> ElasticComputeCloudModel.DescribeCoipPoolsResult
    typealias DescribeCoipPoolsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeCoipPoolsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeCoipPoolsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeConversionTasksSyncType = (
            _ input: ElasticComputeCloudModel.DescribeConversionTasksRequest) throws -> ElasticComputeCloudModel.DescribeConversionTasksResult
    typealias DescribeConversionTasksAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeConversionTasksRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeConversionTasksResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeCustomerGatewaysSyncType = (
            _ input: ElasticComputeCloudModel.DescribeCustomerGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeCustomerGatewaysResult
    typealias DescribeCustomerGatewaysAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeCustomerGatewaysRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeCustomerGatewaysResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeDhcpOptionsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeDhcpOptionsRequest) throws -> ElasticComputeCloudModel.DescribeDhcpOptionsResult
    typealias DescribeDhcpOptionsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeDhcpOptionsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeDhcpOptionsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeEgressOnlyInternetGatewaysSyncType = (
            _ input: ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysResult
    typealias DescribeEgressOnlyInternetGatewaysAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeElasticGpusSyncType = (
            _ input: ElasticComputeCloudModel.DescribeElasticGpusRequest) throws -> ElasticComputeCloudModel.DescribeElasticGpusResult
    typealias DescribeElasticGpusAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeElasticGpusRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeElasticGpusResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeExportImageTasksSyncType = (
            _ input: ElasticComputeCloudModel.DescribeExportImageTasksRequest) throws -> ElasticComputeCloudModel.DescribeExportImageTasksResult
    typealias DescribeExportImageTasksAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeExportImageTasksRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeExportImageTasksResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeExportTasksSyncType = (
            _ input: ElasticComputeCloudModel.DescribeExportTasksRequest) throws -> ElasticComputeCloudModel.DescribeExportTasksResult
    typealias DescribeExportTasksAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeExportTasksRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeExportTasksResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeFastSnapshotRestoresSyncType = (
            _ input: ElasticComputeCloudModel.DescribeFastSnapshotRestoresRequest) throws -> ElasticComputeCloudModel.DescribeFastSnapshotRestoresResult
    typealias DescribeFastSnapshotRestoresAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeFastSnapshotRestoresRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeFastSnapshotRestoresResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeFleetHistorySyncType = (
            _ input: ElasticComputeCloudModel.DescribeFleetHistoryRequest) throws -> ElasticComputeCloudModel.DescribeFleetHistoryResult
    typealias DescribeFleetHistoryAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeFleetHistoryRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeFleetHistoryResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeFleetInstancesSyncType = (
            _ input: ElasticComputeCloudModel.DescribeFleetInstancesRequest) throws -> ElasticComputeCloudModel.DescribeFleetInstancesResult
    typealias DescribeFleetInstancesAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeFleetInstancesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeFleetInstancesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeFleetsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeFleetsRequest) throws -> ElasticComputeCloudModel.DescribeFleetsResult
    typealias DescribeFleetsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeFleetsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeFleetsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeFlowLogsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeFlowLogsRequest) throws -> ElasticComputeCloudModel.DescribeFlowLogsResult
    typealias DescribeFlowLogsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeFlowLogsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeFlowLogsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeFpgaImageAttributeSyncType = (
            _ input: ElasticComputeCloudModel.DescribeFpgaImageAttributeRequest) throws -> ElasticComputeCloudModel.DescribeFpgaImageAttributeResult
    typealias DescribeFpgaImageAttributeAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeFpgaImageAttributeRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeFpgaImageAttributeResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeFpgaImagesSyncType = (
            _ input: ElasticComputeCloudModel.DescribeFpgaImagesRequest) throws -> ElasticComputeCloudModel.DescribeFpgaImagesResult
    typealias DescribeFpgaImagesAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeFpgaImagesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeFpgaImagesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeHostReservationOfferingsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeHostReservationOfferingsRequest) throws -> ElasticComputeCloudModel.DescribeHostReservationOfferingsResult
    typealias DescribeHostReservationOfferingsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeHostReservationOfferingsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeHostReservationOfferingsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeHostReservationsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeHostReservationsRequest) throws -> ElasticComputeCloudModel.DescribeHostReservationsResult
    typealias DescribeHostReservationsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeHostReservationsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeHostReservationsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeHostsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeHostsRequest) throws -> ElasticComputeCloudModel.DescribeHostsResult
    typealias DescribeHostsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeHostsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeHostsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeIamInstanceProfileAssociationsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsRequest) throws -> ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsResult
    typealias DescribeIamInstanceProfileAssociationsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeIdFormatSyncType = (
            _ input: ElasticComputeCloudModel.DescribeIdFormatRequest) throws -> ElasticComputeCloudModel.DescribeIdFormatResult
    typealias DescribeIdFormatAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeIdFormatRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeIdFormatResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeIdentityIdFormatSyncType = (
            _ input: ElasticComputeCloudModel.DescribeIdentityIdFormatRequest) throws -> ElasticComputeCloudModel.DescribeIdentityIdFormatResult
    typealias DescribeIdentityIdFormatAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeIdentityIdFormatRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeIdentityIdFormatResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeImageAttributeSyncType = (
            _ input: ElasticComputeCloudModel.DescribeImageAttributeRequest) throws -> ElasticComputeCloudModel.ImageAttribute
    typealias DescribeImageAttributeAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeImageAttributeRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ImageAttribute, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeImagesSyncType = (
            _ input: ElasticComputeCloudModel.DescribeImagesRequest) throws -> ElasticComputeCloudModel.DescribeImagesResult
    typealias DescribeImagesAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeImagesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeImagesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeImportImageTasksSyncType = (
            _ input: ElasticComputeCloudModel.DescribeImportImageTasksRequest) throws -> ElasticComputeCloudModel.DescribeImportImageTasksResult
    typealias DescribeImportImageTasksAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeImportImageTasksRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeImportImageTasksResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeImportSnapshotTasksSyncType = (
            _ input: ElasticComputeCloudModel.DescribeImportSnapshotTasksRequest) throws -> ElasticComputeCloudModel.DescribeImportSnapshotTasksResult
    typealias DescribeImportSnapshotTasksAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeImportSnapshotTasksRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeImportSnapshotTasksResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeInstanceAttributeSyncType = (
            _ input: ElasticComputeCloudModel.DescribeInstanceAttributeRequest) throws -> ElasticComputeCloudModel.InstanceAttribute
    typealias DescribeInstanceAttributeAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeInstanceAttributeRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.InstanceAttribute, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeInstanceCreditSpecificationsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsRequest) throws -> ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsResult
    typealias DescribeInstanceCreditSpecificationsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeInstanceEventNotificationAttributesSyncType = (
            _ input: ElasticComputeCloudModel.DescribeInstanceEventNotificationAttributesRequest) throws -> ElasticComputeCloudModel.DescribeInstanceEventNotificationAttributesResult
    typealias DescribeInstanceEventNotificationAttributesAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeInstanceEventNotificationAttributesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeInstanceEventNotificationAttributesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeInstanceStatusSyncType = (
            _ input: ElasticComputeCloudModel.DescribeInstanceStatusRequest) throws -> ElasticComputeCloudModel.DescribeInstanceStatusResult
    typealias DescribeInstanceStatusAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeInstanceStatusRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeInstanceStatusResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeInstanceTypeOfferingsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeInstanceTypeOfferingsRequest) throws -> ElasticComputeCloudModel.DescribeInstanceTypeOfferingsResult
    typealias DescribeInstanceTypeOfferingsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeInstanceTypeOfferingsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeInstanceTypeOfferingsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeInstanceTypesSyncType = (
            _ input: ElasticComputeCloudModel.DescribeInstanceTypesRequest) throws -> ElasticComputeCloudModel.DescribeInstanceTypesResult
    typealias DescribeInstanceTypesAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeInstanceTypesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeInstanceTypesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeInstancesSyncType = (
            _ input: ElasticComputeCloudModel.DescribeInstancesRequest) throws -> ElasticComputeCloudModel.DescribeInstancesResult
    typealias DescribeInstancesAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeInstancesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeInstancesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeInternetGatewaysSyncType = (
            _ input: ElasticComputeCloudModel.DescribeInternetGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeInternetGatewaysResult
    typealias DescribeInternetGatewaysAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeInternetGatewaysRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeInternetGatewaysResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeIpv6PoolsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeIpv6PoolsRequest) throws -> ElasticComputeCloudModel.DescribeIpv6PoolsResult
    typealias DescribeIpv6PoolsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeIpv6PoolsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeIpv6PoolsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeKeyPairsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeKeyPairsRequest) throws -> ElasticComputeCloudModel.DescribeKeyPairsResult
    typealias DescribeKeyPairsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeKeyPairsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeKeyPairsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeLaunchTemplateVersionsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeLaunchTemplateVersionsRequest) throws -> ElasticComputeCloudModel.DescribeLaunchTemplateVersionsResult
    typealias DescribeLaunchTemplateVersionsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeLaunchTemplateVersionsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeLaunchTemplateVersionsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeLaunchTemplatesSyncType = (
            _ input: ElasticComputeCloudModel.DescribeLaunchTemplatesRequest) throws -> ElasticComputeCloudModel.DescribeLaunchTemplatesResult
    typealias DescribeLaunchTemplatesAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeLaunchTemplatesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeLaunchTemplatesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest) throws -> ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult
    typealias DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeLocalGatewayRouteTableVpcAssociationsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsRequest) throws -> ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsResult
    typealias DescribeLocalGatewayRouteTableVpcAssociationsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeLocalGatewayRouteTablesSyncType = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesRequest) throws -> ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesResult
    typealias DescribeLocalGatewayRouteTablesAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeLocalGatewayVirtualInterfaceGroupsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsRequest) throws -> ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsResult
    typealias DescribeLocalGatewayVirtualInterfaceGroupsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeLocalGatewayVirtualInterfacesSyncType = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesRequest) throws -> ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesResult
    typealias DescribeLocalGatewayVirtualInterfacesAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeLocalGatewaysSyncType = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeLocalGatewaysResult
    typealias DescribeLocalGatewaysAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewaysRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeLocalGatewaysResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeManagedPrefixListsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeManagedPrefixListsRequest) throws -> ElasticComputeCloudModel.DescribeManagedPrefixListsResult
    typealias DescribeManagedPrefixListsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeManagedPrefixListsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeManagedPrefixListsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeMovingAddressesSyncType = (
            _ input: ElasticComputeCloudModel.DescribeMovingAddressesRequest) throws -> ElasticComputeCloudModel.DescribeMovingAddressesResult
    typealias DescribeMovingAddressesAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeMovingAddressesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeMovingAddressesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeNatGatewaysSyncType = (
            _ input: ElasticComputeCloudModel.DescribeNatGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeNatGatewaysResult
    typealias DescribeNatGatewaysAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeNatGatewaysRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeNatGatewaysResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeNetworkAclsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeNetworkAclsRequest) throws -> ElasticComputeCloudModel.DescribeNetworkAclsResult
    typealias DescribeNetworkAclsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeNetworkAclsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeNetworkAclsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeNetworkInsightsAnalysesSyncType = (
            _ input: ElasticComputeCloudModel.DescribeNetworkInsightsAnalysesRequest) throws -> ElasticComputeCloudModel.DescribeNetworkInsightsAnalysesResult
    typealias DescribeNetworkInsightsAnalysesAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeNetworkInsightsAnalysesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeNetworkInsightsAnalysesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeNetworkInsightsPathsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeNetworkInsightsPathsRequest) throws -> ElasticComputeCloudModel.DescribeNetworkInsightsPathsResult
    typealias DescribeNetworkInsightsPathsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeNetworkInsightsPathsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeNetworkInsightsPathsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeNetworkInterfaceAttributeSyncType = (
            _ input: ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeRequest) throws -> ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeResult
    typealias DescribeNetworkInterfaceAttributeAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeNetworkInterfacePermissionsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsRequest) throws -> ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsResult
    typealias DescribeNetworkInterfacePermissionsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeNetworkInterfacesSyncType = (
            _ input: ElasticComputeCloudModel.DescribeNetworkInterfacesRequest) throws -> ElasticComputeCloudModel.DescribeNetworkInterfacesResult
    typealias DescribeNetworkInterfacesAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeNetworkInterfacesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeNetworkInterfacesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribePlacementGroupsSyncType = (
            _ input: ElasticComputeCloudModel.DescribePlacementGroupsRequest) throws -> ElasticComputeCloudModel.DescribePlacementGroupsResult
    typealias DescribePlacementGroupsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribePlacementGroupsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribePlacementGroupsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribePrefixListsSyncType = (
            _ input: ElasticComputeCloudModel.DescribePrefixListsRequest) throws -> ElasticComputeCloudModel.DescribePrefixListsResult
    typealias DescribePrefixListsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribePrefixListsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribePrefixListsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribePrincipalIdFormatSyncType = (
            _ input: ElasticComputeCloudModel.DescribePrincipalIdFormatRequest) throws -> ElasticComputeCloudModel.DescribePrincipalIdFormatResult
    typealias DescribePrincipalIdFormatAsyncType = (
            _ input: ElasticComputeCloudModel.DescribePrincipalIdFormatRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribePrincipalIdFormatResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribePublicIpv4PoolsSyncType = (
            _ input: ElasticComputeCloudModel.DescribePublicIpv4PoolsRequest) throws -> ElasticComputeCloudModel.DescribePublicIpv4PoolsResult
    typealias DescribePublicIpv4PoolsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribePublicIpv4PoolsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribePublicIpv4PoolsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeRegionsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeRegionsRequest) throws -> ElasticComputeCloudModel.DescribeRegionsResult
    typealias DescribeRegionsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeRegionsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeRegionsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeReservedInstancesSyncType = (
            _ input: ElasticComputeCloudModel.DescribeReservedInstancesRequest) throws -> ElasticComputeCloudModel.DescribeReservedInstancesResult
    typealias DescribeReservedInstancesAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeReservedInstancesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeReservedInstancesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeReservedInstancesListingsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeReservedInstancesListingsRequest) throws -> ElasticComputeCloudModel.DescribeReservedInstancesListingsResult
    typealias DescribeReservedInstancesListingsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeReservedInstancesListingsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeReservedInstancesListingsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeReservedInstancesModificationsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeReservedInstancesModificationsRequest) throws -> ElasticComputeCloudModel.DescribeReservedInstancesModificationsResult
    typealias DescribeReservedInstancesModificationsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeReservedInstancesModificationsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeReservedInstancesModificationsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeReservedInstancesOfferingsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeReservedInstancesOfferingsRequest) throws -> ElasticComputeCloudModel.DescribeReservedInstancesOfferingsResult
    typealias DescribeReservedInstancesOfferingsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeReservedInstancesOfferingsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeReservedInstancesOfferingsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeRouteTablesSyncType = (
            _ input: ElasticComputeCloudModel.DescribeRouteTablesRequest) throws -> ElasticComputeCloudModel.DescribeRouteTablesResult
    typealias DescribeRouteTablesAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeRouteTablesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeRouteTablesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeScheduledInstanceAvailabilitySyncType = (
            _ input: ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityRequest) throws -> ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityResult
    typealias DescribeScheduledInstanceAvailabilityAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeScheduledInstancesSyncType = (
            _ input: ElasticComputeCloudModel.DescribeScheduledInstancesRequest) throws -> ElasticComputeCloudModel.DescribeScheduledInstancesResult
    typealias DescribeScheduledInstancesAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeScheduledInstancesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeScheduledInstancesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeSecurityGroupReferencesSyncType = (
            _ input: ElasticComputeCloudModel.DescribeSecurityGroupReferencesRequest) throws -> ElasticComputeCloudModel.DescribeSecurityGroupReferencesResult
    typealias DescribeSecurityGroupReferencesAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeSecurityGroupReferencesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeSecurityGroupReferencesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeSecurityGroupsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeSecurityGroupsRequest) throws -> ElasticComputeCloudModel.DescribeSecurityGroupsResult
    typealias DescribeSecurityGroupsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeSecurityGroupsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeSecurityGroupsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeSnapshotAttributeSyncType = (
            _ input: ElasticComputeCloudModel.DescribeSnapshotAttributeRequest) throws -> ElasticComputeCloudModel.DescribeSnapshotAttributeResult
    typealias DescribeSnapshotAttributeAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeSnapshotAttributeRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeSnapshotAttributeResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeSnapshotsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeSnapshotsRequest) throws -> ElasticComputeCloudModel.DescribeSnapshotsResult
    typealias DescribeSnapshotsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeSnapshotsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeSnapshotsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeSpotDatafeedSubscriptionSyncType = (
            _ input: ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionRequest) throws -> ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionResult
    typealias DescribeSpotDatafeedSubscriptionAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeSpotFleetInstancesSyncType = (
            _ input: ElasticComputeCloudModel.DescribeSpotFleetInstancesRequest) throws -> ElasticComputeCloudModel.DescribeSpotFleetInstancesResponse
    typealias DescribeSpotFleetInstancesAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeSpotFleetInstancesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeSpotFleetInstancesResponse, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeSpotFleetRequestHistorySyncType = (
            _ input: ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryRequest) throws -> ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryResponse
    typealias DescribeSpotFleetRequestHistoryAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryResponse, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeSpotFleetRequestsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeSpotFleetRequestsRequest) throws -> ElasticComputeCloudModel.DescribeSpotFleetRequestsResponse
    typealias DescribeSpotFleetRequestsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeSpotFleetRequestsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeSpotFleetRequestsResponse, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeSpotInstanceRequestsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeSpotInstanceRequestsRequest) throws -> ElasticComputeCloudModel.DescribeSpotInstanceRequestsResult
    typealias DescribeSpotInstanceRequestsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeSpotInstanceRequestsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeSpotInstanceRequestsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeSpotPriceHistorySyncType = (
            _ input: ElasticComputeCloudModel.DescribeSpotPriceHistoryRequest) throws -> ElasticComputeCloudModel.DescribeSpotPriceHistoryResult
    typealias DescribeSpotPriceHistoryAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeSpotPriceHistoryRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeSpotPriceHistoryResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeStaleSecurityGroupsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeStaleSecurityGroupsRequest) throws -> ElasticComputeCloudModel.DescribeStaleSecurityGroupsResult
    typealias DescribeStaleSecurityGroupsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeStaleSecurityGroupsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeStaleSecurityGroupsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeSubnetsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeSubnetsRequest) throws -> ElasticComputeCloudModel.DescribeSubnetsResult
    typealias DescribeSubnetsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeSubnetsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeSubnetsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeTagsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeTagsRequest) throws -> ElasticComputeCloudModel.DescribeTagsResult
    typealias DescribeTagsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeTagsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeTagsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeTrafficMirrorFiltersSyncType = (
            _ input: ElasticComputeCloudModel.DescribeTrafficMirrorFiltersRequest) throws -> ElasticComputeCloudModel.DescribeTrafficMirrorFiltersResult
    typealias DescribeTrafficMirrorFiltersAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeTrafficMirrorFiltersRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeTrafficMirrorFiltersResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeTrafficMirrorSessionsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeTrafficMirrorSessionsRequest) throws -> ElasticComputeCloudModel.DescribeTrafficMirrorSessionsResult
    typealias DescribeTrafficMirrorSessionsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeTrafficMirrorSessionsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeTrafficMirrorSessionsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeTrafficMirrorTargetsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeTrafficMirrorTargetsRequest) throws -> ElasticComputeCloudModel.DescribeTrafficMirrorTargetsResult
    typealias DescribeTrafficMirrorTargetsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeTrafficMirrorTargetsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeTrafficMirrorTargetsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeTransitGatewayAttachmentsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsRequest) throws -> ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsResult
    typealias DescribeTransitGatewayAttachmentsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeTransitGatewayConnectPeersSyncType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayConnectPeersRequest) throws -> ElasticComputeCloudModel.DescribeTransitGatewayConnectPeersResult
    typealias DescribeTransitGatewayConnectPeersAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayConnectPeersRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewayConnectPeersResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeTransitGatewayConnectsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayConnectsRequest) throws -> ElasticComputeCloudModel.DescribeTransitGatewayConnectsResult
    typealias DescribeTransitGatewayConnectsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayConnectsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewayConnectsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeTransitGatewayMulticastDomainsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsRequest) throws -> ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsResult
    typealias DescribeTransitGatewayMulticastDomainsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeTransitGatewayPeeringAttachmentsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsRequest) throws -> ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsResult
    typealias DescribeTransitGatewayPeeringAttachmentsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeTransitGatewayRouteTablesSyncType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesRequest) throws -> ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesResult
    typealias DescribeTransitGatewayRouteTablesAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeTransitGatewayVpcAttachmentsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsRequest) throws -> ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsResult
    typealias DescribeTransitGatewayVpcAttachmentsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeTransitGatewaysSyncType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeTransitGatewaysResult
    typealias DescribeTransitGatewaysAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewaysRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewaysResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeVolumeAttributeSyncType = (
            _ input: ElasticComputeCloudModel.DescribeVolumeAttributeRequest) throws -> ElasticComputeCloudModel.DescribeVolumeAttributeResult
    typealias DescribeVolumeAttributeAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVolumeAttributeRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVolumeAttributeResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeVolumeStatusSyncType = (
            _ input: ElasticComputeCloudModel.DescribeVolumeStatusRequest) throws -> ElasticComputeCloudModel.DescribeVolumeStatusResult
    typealias DescribeVolumeStatusAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVolumeStatusRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVolumeStatusResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeVolumesSyncType = (
            _ input: ElasticComputeCloudModel.DescribeVolumesRequest) throws -> ElasticComputeCloudModel.DescribeVolumesResult
    typealias DescribeVolumesAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVolumesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVolumesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeVolumesModificationsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeVolumesModificationsRequest) throws -> ElasticComputeCloudModel.DescribeVolumesModificationsResult
    typealias DescribeVolumesModificationsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVolumesModificationsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVolumesModificationsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeVpcAttributeSyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcAttributeRequest) throws -> ElasticComputeCloudModel.DescribeVpcAttributeResult
    typealias DescribeVpcAttributeAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcAttributeRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcAttributeResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeVpcClassicLinkSyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcClassicLinkRequest) throws -> ElasticComputeCloudModel.DescribeVpcClassicLinkResult
    typealias DescribeVpcClassicLinkAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcClassicLinkRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcClassicLinkResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeVpcClassicLinkDnsSupportSyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportRequest) throws -> ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportResult
    typealias DescribeVpcClassicLinkDnsSupportAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeVpcEndpointConnectionNotificationsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsResult
    typealias DescribeVpcEndpointConnectionNotificationsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeVpcEndpointConnectionsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionsRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointConnectionsResult
    typealias DescribeVpcEndpointConnectionsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcEndpointConnectionsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeVpcEndpointServiceConfigurationsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsResult
    typealias DescribeVpcEndpointServiceConfigurationsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeVpcEndpointServicePermissionsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsResult
    typealias DescribeVpcEndpointServicePermissionsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeVpcEndpointServicesSyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointServicesRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointServicesResult
    typealias DescribeVpcEndpointServicesAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointServicesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcEndpointServicesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeVpcEndpointsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointsRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointsResult
    typealias DescribeVpcEndpointsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcEndpointsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeVpcPeeringConnectionsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcPeeringConnectionsRequest) throws -> ElasticComputeCloudModel.DescribeVpcPeeringConnectionsResult
    typealias DescribeVpcPeeringConnectionsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcPeeringConnectionsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcPeeringConnectionsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeVpcsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcsRequest) throws -> ElasticComputeCloudModel.DescribeVpcsResult
    typealias DescribeVpcsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeVpnConnectionsSyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpnConnectionsRequest) throws -> ElasticComputeCloudModel.DescribeVpnConnectionsResult
    typealias DescribeVpnConnectionsAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpnConnectionsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpnConnectionsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DescribeVpnGatewaysSyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpnGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeVpnGatewaysResult
    typealias DescribeVpnGatewaysAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpnGatewaysRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpnGatewaysResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DetachClassicLinkVpcSyncType = (
            _ input: ElasticComputeCloudModel.DetachClassicLinkVpcRequest) throws -> ElasticComputeCloudModel.DetachClassicLinkVpcResult
    typealias DetachClassicLinkVpcAsyncType = (
            _ input: ElasticComputeCloudModel.DetachClassicLinkVpcRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DetachClassicLinkVpcResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DetachInternetGatewaySyncType = (
            _ input: ElasticComputeCloudModel.DetachInternetGatewayRequest) throws -> ()
    typealias DetachInternetGatewayAsyncType = (
            _ input: ElasticComputeCloudModel.DetachInternetGatewayRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias DetachNetworkInterfaceSyncType = (
            _ input: ElasticComputeCloudModel.DetachNetworkInterfaceRequest) throws -> ()
    typealias DetachNetworkInterfaceAsyncType = (
            _ input: ElasticComputeCloudModel.DetachNetworkInterfaceRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias DetachVolumeSyncType = (
            _ input: ElasticComputeCloudModel.DetachVolumeRequest) throws -> ElasticComputeCloudModel.VolumeAttachment
    typealias DetachVolumeAsyncType = (
            _ input: ElasticComputeCloudModel.DetachVolumeRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.VolumeAttachment, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DetachVpnGatewaySyncType = (
            _ input: ElasticComputeCloudModel.DetachVpnGatewayRequest) throws -> ()
    typealias DetachVpnGatewayAsyncType = (
            _ input: ElasticComputeCloudModel.DetachVpnGatewayRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias DisableEbsEncryptionByDefaultSyncType = (
            _ input: ElasticComputeCloudModel.DisableEbsEncryptionByDefaultRequest) throws -> ElasticComputeCloudModel.DisableEbsEncryptionByDefaultResult
    typealias DisableEbsEncryptionByDefaultAsyncType = (
            _ input: ElasticComputeCloudModel.DisableEbsEncryptionByDefaultRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DisableEbsEncryptionByDefaultResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DisableFastSnapshotRestoresSyncType = (
            _ input: ElasticComputeCloudModel.DisableFastSnapshotRestoresRequest) throws -> ElasticComputeCloudModel.DisableFastSnapshotRestoresResult
    typealias DisableFastSnapshotRestoresAsyncType = (
            _ input: ElasticComputeCloudModel.DisableFastSnapshotRestoresRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DisableFastSnapshotRestoresResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DisableTransitGatewayRouteTablePropagationSyncType = (
            _ input: ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationRequest) throws -> ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationResult
    typealias DisableTransitGatewayRouteTablePropagationAsyncType = (
            _ input: ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DisableVgwRoutePropagationSyncType = (
            _ input: ElasticComputeCloudModel.DisableVgwRoutePropagationRequest) throws -> ()
    typealias DisableVgwRoutePropagationAsyncType = (
            _ input: ElasticComputeCloudModel.DisableVgwRoutePropagationRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias DisableVpcClassicLinkSyncType = (
            _ input: ElasticComputeCloudModel.DisableVpcClassicLinkRequest) throws -> ElasticComputeCloudModel.DisableVpcClassicLinkResult
    typealias DisableVpcClassicLinkAsyncType = (
            _ input: ElasticComputeCloudModel.DisableVpcClassicLinkRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DisableVpcClassicLinkResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DisableVpcClassicLinkDnsSupportSyncType = (
            _ input: ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportRequest) throws -> ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportResult
    typealias DisableVpcClassicLinkDnsSupportAsyncType = (
            _ input: ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DisassociateAddressSyncType = (
            _ input: ElasticComputeCloudModel.DisassociateAddressRequest) throws -> ()
    typealias DisassociateAddressAsyncType = (
            _ input: ElasticComputeCloudModel.DisassociateAddressRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias DisassociateClientVpnTargetNetworkSyncType = (
            _ input: ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkRequest) throws -> ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkResult
    typealias DisassociateClientVpnTargetNetworkAsyncType = (
            _ input: ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DisassociateEnclaveCertificateIamRoleSyncType = (
            _ input: ElasticComputeCloudModel.DisassociateEnclaveCertificateIamRoleRequest) throws -> ElasticComputeCloudModel.DisassociateEnclaveCertificateIamRoleResult
    typealias DisassociateEnclaveCertificateIamRoleAsyncType = (
            _ input: ElasticComputeCloudModel.DisassociateEnclaveCertificateIamRoleRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DisassociateEnclaveCertificateIamRoleResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DisassociateIamInstanceProfileSyncType = (
            _ input: ElasticComputeCloudModel.DisassociateIamInstanceProfileRequest) throws -> ElasticComputeCloudModel.DisassociateIamInstanceProfileResult
    typealias DisassociateIamInstanceProfileAsyncType = (
            _ input: ElasticComputeCloudModel.DisassociateIamInstanceProfileRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DisassociateIamInstanceProfileResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DisassociateRouteTableSyncType = (
            _ input: ElasticComputeCloudModel.DisassociateRouteTableRequest) throws -> ()
    typealias DisassociateRouteTableAsyncType = (
            _ input: ElasticComputeCloudModel.DisassociateRouteTableRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias DisassociateSubnetCidrBlockSyncType = (
            _ input: ElasticComputeCloudModel.DisassociateSubnetCidrBlockRequest) throws -> ElasticComputeCloudModel.DisassociateSubnetCidrBlockResult
    typealias DisassociateSubnetCidrBlockAsyncType = (
            _ input: ElasticComputeCloudModel.DisassociateSubnetCidrBlockRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DisassociateSubnetCidrBlockResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DisassociateTransitGatewayMulticastDomainSyncType = (
            _ input: ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainRequest) throws -> ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainResult
    typealias DisassociateTransitGatewayMulticastDomainAsyncType = (
            _ input: ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DisassociateTransitGatewayRouteTableSyncType = (
            _ input: ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableRequest) throws -> ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableResult
    typealias DisassociateTransitGatewayRouteTableAsyncType = (
            _ input: ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias DisassociateVpcCidrBlockSyncType = (
            _ input: ElasticComputeCloudModel.DisassociateVpcCidrBlockRequest) throws -> ElasticComputeCloudModel.DisassociateVpcCidrBlockResult
    typealias DisassociateVpcCidrBlockAsyncType = (
            _ input: ElasticComputeCloudModel.DisassociateVpcCidrBlockRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.DisassociateVpcCidrBlockResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias EnableEbsEncryptionByDefaultSyncType = (
            _ input: ElasticComputeCloudModel.EnableEbsEncryptionByDefaultRequest) throws -> ElasticComputeCloudModel.EnableEbsEncryptionByDefaultResult
    typealias EnableEbsEncryptionByDefaultAsyncType = (
            _ input: ElasticComputeCloudModel.EnableEbsEncryptionByDefaultRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.EnableEbsEncryptionByDefaultResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias EnableFastSnapshotRestoresSyncType = (
            _ input: ElasticComputeCloudModel.EnableFastSnapshotRestoresRequest) throws -> ElasticComputeCloudModel.EnableFastSnapshotRestoresResult
    typealias EnableFastSnapshotRestoresAsyncType = (
            _ input: ElasticComputeCloudModel.EnableFastSnapshotRestoresRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.EnableFastSnapshotRestoresResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias EnableTransitGatewayRouteTablePropagationSyncType = (
            _ input: ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationRequest) throws -> ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationResult
    typealias EnableTransitGatewayRouteTablePropagationAsyncType = (
            _ input: ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias EnableVgwRoutePropagationSyncType = (
            _ input: ElasticComputeCloudModel.EnableVgwRoutePropagationRequest) throws -> ()
    typealias EnableVgwRoutePropagationAsyncType = (
            _ input: ElasticComputeCloudModel.EnableVgwRoutePropagationRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias EnableVolumeIOSyncType = (
            _ input: ElasticComputeCloudModel.EnableVolumeIORequest) throws -> ()
    typealias EnableVolumeIOAsyncType = (
            _ input: ElasticComputeCloudModel.EnableVolumeIORequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias EnableVpcClassicLinkSyncType = (
            _ input: ElasticComputeCloudModel.EnableVpcClassicLinkRequest) throws -> ElasticComputeCloudModel.EnableVpcClassicLinkResult
    typealias EnableVpcClassicLinkAsyncType = (
            _ input: ElasticComputeCloudModel.EnableVpcClassicLinkRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.EnableVpcClassicLinkResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias EnableVpcClassicLinkDnsSupportSyncType = (
            _ input: ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportRequest) throws -> ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportResult
    typealias EnableVpcClassicLinkDnsSupportAsyncType = (
            _ input: ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ExportClientVpnClientCertificateRevocationListSyncType = (
            _ input: ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListRequest) throws -> ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListResult
    typealias ExportClientVpnClientCertificateRevocationListAsyncType = (
            _ input: ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ExportClientVpnClientConfigurationSyncType = (
            _ input: ElasticComputeCloudModel.ExportClientVpnClientConfigurationRequest) throws -> ElasticComputeCloudModel.ExportClientVpnClientConfigurationResult
    typealias ExportClientVpnClientConfigurationAsyncType = (
            _ input: ElasticComputeCloudModel.ExportClientVpnClientConfigurationRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ExportClientVpnClientConfigurationResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ExportImageSyncType = (
            _ input: ElasticComputeCloudModel.ExportImageRequest) throws -> ElasticComputeCloudModel.ExportImageResult
    typealias ExportImageAsyncType = (
            _ input: ElasticComputeCloudModel.ExportImageRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ExportImageResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ExportTransitGatewayRoutesSyncType = (
            _ input: ElasticComputeCloudModel.ExportTransitGatewayRoutesRequest) throws -> ElasticComputeCloudModel.ExportTransitGatewayRoutesResult
    typealias ExportTransitGatewayRoutesAsyncType = (
            _ input: ElasticComputeCloudModel.ExportTransitGatewayRoutesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ExportTransitGatewayRoutesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias GetAssociatedEnclaveCertificateIamRolesSyncType = (
            _ input: ElasticComputeCloudModel.GetAssociatedEnclaveCertificateIamRolesRequest) throws -> ElasticComputeCloudModel.GetAssociatedEnclaveCertificateIamRolesResult
    typealias GetAssociatedEnclaveCertificateIamRolesAsyncType = (
            _ input: ElasticComputeCloudModel.GetAssociatedEnclaveCertificateIamRolesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetAssociatedEnclaveCertificateIamRolesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias GetAssociatedIpv6PoolCidrsSyncType = (
            _ input: ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsRequest) throws -> ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsResult
    typealias GetAssociatedIpv6PoolCidrsAsyncType = (
            _ input: ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias GetCapacityReservationUsageSyncType = (
            _ input: ElasticComputeCloudModel.GetCapacityReservationUsageRequest) throws -> ElasticComputeCloudModel.GetCapacityReservationUsageResult
    typealias GetCapacityReservationUsageAsyncType = (
            _ input: ElasticComputeCloudModel.GetCapacityReservationUsageRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetCapacityReservationUsageResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias GetCoipPoolUsageSyncType = (
            _ input: ElasticComputeCloudModel.GetCoipPoolUsageRequest) throws -> ElasticComputeCloudModel.GetCoipPoolUsageResult
    typealias GetCoipPoolUsageAsyncType = (
            _ input: ElasticComputeCloudModel.GetCoipPoolUsageRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetCoipPoolUsageResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias GetConsoleOutputSyncType = (
            _ input: ElasticComputeCloudModel.GetConsoleOutputRequest) throws -> ElasticComputeCloudModel.GetConsoleOutputResult
    typealias GetConsoleOutputAsyncType = (
            _ input: ElasticComputeCloudModel.GetConsoleOutputRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetConsoleOutputResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias GetConsoleScreenshotSyncType = (
            _ input: ElasticComputeCloudModel.GetConsoleScreenshotRequest) throws -> ElasticComputeCloudModel.GetConsoleScreenshotResult
    typealias GetConsoleScreenshotAsyncType = (
            _ input: ElasticComputeCloudModel.GetConsoleScreenshotRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetConsoleScreenshotResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias GetDefaultCreditSpecificationSyncType = (
            _ input: ElasticComputeCloudModel.GetDefaultCreditSpecificationRequest) throws -> ElasticComputeCloudModel.GetDefaultCreditSpecificationResult
    typealias GetDefaultCreditSpecificationAsyncType = (
            _ input: ElasticComputeCloudModel.GetDefaultCreditSpecificationRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetDefaultCreditSpecificationResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias GetEbsDefaultKmsKeyIdSyncType = (
            _ input: ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdRequest) throws -> ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdResult
    typealias GetEbsDefaultKmsKeyIdAsyncType = (
            _ input: ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias GetEbsEncryptionByDefaultSyncType = (
            _ input: ElasticComputeCloudModel.GetEbsEncryptionByDefaultRequest) throws -> ElasticComputeCloudModel.GetEbsEncryptionByDefaultResult
    typealias GetEbsEncryptionByDefaultAsyncType = (
            _ input: ElasticComputeCloudModel.GetEbsEncryptionByDefaultRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetEbsEncryptionByDefaultResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias GetGroupsForCapacityReservationSyncType = (
            _ input: ElasticComputeCloudModel.GetGroupsForCapacityReservationRequest) throws -> ElasticComputeCloudModel.GetGroupsForCapacityReservationResult
    typealias GetGroupsForCapacityReservationAsyncType = (
            _ input: ElasticComputeCloudModel.GetGroupsForCapacityReservationRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetGroupsForCapacityReservationResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias GetHostReservationPurchasePreviewSyncType = (
            _ input: ElasticComputeCloudModel.GetHostReservationPurchasePreviewRequest) throws -> ElasticComputeCloudModel.GetHostReservationPurchasePreviewResult
    typealias GetHostReservationPurchasePreviewAsyncType = (
            _ input: ElasticComputeCloudModel.GetHostReservationPurchasePreviewRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetHostReservationPurchasePreviewResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias GetLaunchTemplateDataSyncType = (
            _ input: ElasticComputeCloudModel.GetLaunchTemplateDataRequest) throws -> ElasticComputeCloudModel.GetLaunchTemplateDataResult
    typealias GetLaunchTemplateDataAsyncType = (
            _ input: ElasticComputeCloudModel.GetLaunchTemplateDataRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetLaunchTemplateDataResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias GetManagedPrefixListAssociationsSyncType = (
            _ input: ElasticComputeCloudModel.GetManagedPrefixListAssociationsRequest) throws -> ElasticComputeCloudModel.GetManagedPrefixListAssociationsResult
    typealias GetManagedPrefixListAssociationsAsyncType = (
            _ input: ElasticComputeCloudModel.GetManagedPrefixListAssociationsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetManagedPrefixListAssociationsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias GetManagedPrefixListEntriesSyncType = (
            _ input: ElasticComputeCloudModel.GetManagedPrefixListEntriesRequest) throws -> ElasticComputeCloudModel.GetManagedPrefixListEntriesResult
    typealias GetManagedPrefixListEntriesAsyncType = (
            _ input: ElasticComputeCloudModel.GetManagedPrefixListEntriesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetManagedPrefixListEntriesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias GetPasswordDataSyncType = (
            _ input: ElasticComputeCloudModel.GetPasswordDataRequest) throws -> ElasticComputeCloudModel.GetPasswordDataResult
    typealias GetPasswordDataAsyncType = (
            _ input: ElasticComputeCloudModel.GetPasswordDataRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetPasswordDataResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias GetReservedInstancesExchangeQuoteSyncType = (
            _ input: ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteRequest) throws -> ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteResult
    typealias GetReservedInstancesExchangeQuoteAsyncType = (
            _ input: ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias GetTransitGatewayAttachmentPropagationsSyncType = (
            _ input: ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsRequest) throws -> ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsResult
    typealias GetTransitGatewayAttachmentPropagationsAsyncType = (
            _ input: ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias GetTransitGatewayMulticastDomainAssociationsSyncType = (
            _ input: ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsRequest) throws -> ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsResult
    typealias GetTransitGatewayMulticastDomainAssociationsAsyncType = (
            _ input: ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias GetTransitGatewayPrefixListReferencesSyncType = (
            _ input: ElasticComputeCloudModel.GetTransitGatewayPrefixListReferencesRequest) throws -> ElasticComputeCloudModel.GetTransitGatewayPrefixListReferencesResult
    typealias GetTransitGatewayPrefixListReferencesAsyncType = (
            _ input: ElasticComputeCloudModel.GetTransitGatewayPrefixListReferencesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetTransitGatewayPrefixListReferencesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias GetTransitGatewayRouteTableAssociationsSyncType = (
            _ input: ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsRequest) throws -> ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsResult
    typealias GetTransitGatewayRouteTableAssociationsAsyncType = (
            _ input: ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias GetTransitGatewayRouteTablePropagationsSyncType = (
            _ input: ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsRequest) throws -> ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsResult
    typealias GetTransitGatewayRouteTablePropagationsAsyncType = (
            _ input: ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ImportClientVpnClientCertificateRevocationListSyncType = (
            _ input: ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListRequest) throws -> ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListResult
    typealias ImportClientVpnClientCertificateRevocationListAsyncType = (
            _ input: ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ImportImageSyncType = (
            _ input: ElasticComputeCloudModel.ImportImageRequest) throws -> ElasticComputeCloudModel.ImportImageResult
    typealias ImportImageAsyncType = (
            _ input: ElasticComputeCloudModel.ImportImageRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ImportImageResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ImportInstanceSyncType = (
            _ input: ElasticComputeCloudModel.ImportInstanceRequest) throws -> ElasticComputeCloudModel.ImportInstanceResult
    typealias ImportInstanceAsyncType = (
            _ input: ElasticComputeCloudModel.ImportInstanceRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ImportInstanceResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ImportKeyPairSyncType = (
            _ input: ElasticComputeCloudModel.ImportKeyPairRequest) throws -> ElasticComputeCloudModel.ImportKeyPairResult
    typealias ImportKeyPairAsyncType = (
            _ input: ElasticComputeCloudModel.ImportKeyPairRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ImportKeyPairResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ImportSnapshotSyncType = (
            _ input: ElasticComputeCloudModel.ImportSnapshotRequest) throws -> ElasticComputeCloudModel.ImportSnapshotResult
    typealias ImportSnapshotAsyncType = (
            _ input: ElasticComputeCloudModel.ImportSnapshotRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ImportSnapshotResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ImportVolumeSyncType = (
            _ input: ElasticComputeCloudModel.ImportVolumeRequest) throws -> ElasticComputeCloudModel.ImportVolumeResult
    typealias ImportVolumeAsyncType = (
            _ input: ElasticComputeCloudModel.ImportVolumeRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ImportVolumeResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyAddressAttributeSyncType = (
            _ input: ElasticComputeCloudModel.ModifyAddressAttributeRequest) throws -> ElasticComputeCloudModel.ModifyAddressAttributeResult
    typealias ModifyAddressAttributeAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyAddressAttributeRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyAddressAttributeResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyAvailabilityZoneGroupSyncType = (
            _ input: ElasticComputeCloudModel.ModifyAvailabilityZoneGroupRequest) throws -> ElasticComputeCloudModel.ModifyAvailabilityZoneGroupResult
    typealias ModifyAvailabilityZoneGroupAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyAvailabilityZoneGroupRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyAvailabilityZoneGroupResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyCapacityReservationSyncType = (
            _ input: ElasticComputeCloudModel.ModifyCapacityReservationRequest) throws -> ElasticComputeCloudModel.ModifyCapacityReservationResult
    typealias ModifyCapacityReservationAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyCapacityReservationRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyCapacityReservationResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyClientVpnEndpointSyncType = (
            _ input: ElasticComputeCloudModel.ModifyClientVpnEndpointRequest) throws -> ElasticComputeCloudModel.ModifyClientVpnEndpointResult
    typealias ModifyClientVpnEndpointAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyClientVpnEndpointRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyClientVpnEndpointResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyDefaultCreditSpecificationSyncType = (
            _ input: ElasticComputeCloudModel.ModifyDefaultCreditSpecificationRequest) throws -> ElasticComputeCloudModel.ModifyDefaultCreditSpecificationResult
    typealias ModifyDefaultCreditSpecificationAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyDefaultCreditSpecificationRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyDefaultCreditSpecificationResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyEbsDefaultKmsKeyIdSyncType = (
            _ input: ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdRequest) throws -> ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdResult
    typealias ModifyEbsDefaultKmsKeyIdAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyFleetSyncType = (
            _ input: ElasticComputeCloudModel.ModifyFleetRequest) throws -> ElasticComputeCloudModel.ModifyFleetResult
    typealias ModifyFleetAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyFleetRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyFleetResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyFpgaImageAttributeSyncType = (
            _ input: ElasticComputeCloudModel.ModifyFpgaImageAttributeRequest) throws -> ElasticComputeCloudModel.ModifyFpgaImageAttributeResult
    typealias ModifyFpgaImageAttributeAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyFpgaImageAttributeRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyFpgaImageAttributeResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyHostsSyncType = (
            _ input: ElasticComputeCloudModel.ModifyHostsRequest) throws -> ElasticComputeCloudModel.ModifyHostsResult
    typealias ModifyHostsAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyHostsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyHostsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyIdFormatSyncType = (
            _ input: ElasticComputeCloudModel.ModifyIdFormatRequest) throws -> ()
    typealias ModifyIdFormatAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyIdFormatRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias ModifyIdentityIdFormatSyncType = (
            _ input: ElasticComputeCloudModel.ModifyIdentityIdFormatRequest) throws -> ()
    typealias ModifyIdentityIdFormatAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyIdentityIdFormatRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias ModifyImageAttributeSyncType = (
            _ input: ElasticComputeCloudModel.ModifyImageAttributeRequest) throws -> ()
    typealias ModifyImageAttributeAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyImageAttributeRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias ModifyInstanceAttributeSyncType = (
            _ input: ElasticComputeCloudModel.ModifyInstanceAttributeRequest) throws -> ()
    typealias ModifyInstanceAttributeAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyInstanceAttributeRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias ModifyInstanceCapacityReservationAttributesSyncType = (
            _ input: ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesRequest) throws -> ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesResult
    typealias ModifyInstanceCapacityReservationAttributesAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyInstanceCreditSpecificationSyncType = (
            _ input: ElasticComputeCloudModel.ModifyInstanceCreditSpecificationRequest) throws -> ElasticComputeCloudModel.ModifyInstanceCreditSpecificationResult
    typealias ModifyInstanceCreditSpecificationAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyInstanceCreditSpecificationRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyInstanceCreditSpecificationResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyInstanceEventStartTimeSyncType = (
            _ input: ElasticComputeCloudModel.ModifyInstanceEventStartTimeRequest) throws -> ElasticComputeCloudModel.ModifyInstanceEventStartTimeResult
    typealias ModifyInstanceEventStartTimeAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyInstanceEventStartTimeRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyInstanceEventStartTimeResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyInstanceMetadataOptionsSyncType = (
            _ input: ElasticComputeCloudModel.ModifyInstanceMetadataOptionsRequest) throws -> ElasticComputeCloudModel.ModifyInstanceMetadataOptionsResult
    typealias ModifyInstanceMetadataOptionsAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyInstanceMetadataOptionsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyInstanceMetadataOptionsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyInstancePlacementSyncType = (
            _ input: ElasticComputeCloudModel.ModifyInstancePlacementRequest) throws -> ElasticComputeCloudModel.ModifyInstancePlacementResult
    typealias ModifyInstancePlacementAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyInstancePlacementRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyInstancePlacementResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyLaunchTemplateSyncType = (
            _ input: ElasticComputeCloudModel.ModifyLaunchTemplateRequest) throws -> ElasticComputeCloudModel.ModifyLaunchTemplateResult
    typealias ModifyLaunchTemplateAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyLaunchTemplateRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyLaunchTemplateResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyManagedPrefixListSyncType = (
            _ input: ElasticComputeCloudModel.ModifyManagedPrefixListRequest) throws -> ElasticComputeCloudModel.ModifyManagedPrefixListResult
    typealias ModifyManagedPrefixListAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyManagedPrefixListRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyManagedPrefixListResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyNetworkInterfaceAttributeSyncType = (
            _ input: ElasticComputeCloudModel.ModifyNetworkInterfaceAttributeRequest) throws -> ()
    typealias ModifyNetworkInterfaceAttributeAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyNetworkInterfaceAttributeRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias ModifyReservedInstancesSyncType = (
            _ input: ElasticComputeCloudModel.ModifyReservedInstancesRequest) throws -> ElasticComputeCloudModel.ModifyReservedInstancesResult
    typealias ModifyReservedInstancesAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyReservedInstancesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyReservedInstancesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifySnapshotAttributeSyncType = (
            _ input: ElasticComputeCloudModel.ModifySnapshotAttributeRequest) throws -> ()
    typealias ModifySnapshotAttributeAsyncType = (
            _ input: ElasticComputeCloudModel.ModifySnapshotAttributeRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias ModifySpotFleetRequestSyncType = (
            _ input: ElasticComputeCloudModel.ModifySpotFleetRequestRequest) throws -> ElasticComputeCloudModel.ModifySpotFleetRequestResponse
    typealias ModifySpotFleetRequestAsyncType = (
            _ input: ElasticComputeCloudModel.ModifySpotFleetRequestRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifySpotFleetRequestResponse, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifySubnetAttributeSyncType = (
            _ input: ElasticComputeCloudModel.ModifySubnetAttributeRequest) throws -> ()
    typealias ModifySubnetAttributeAsyncType = (
            _ input: ElasticComputeCloudModel.ModifySubnetAttributeRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias ModifyTrafficMirrorFilterNetworkServicesSyncType = (
            _ input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesRequest) throws -> ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesResult
    typealias ModifyTrafficMirrorFilterNetworkServicesAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyTrafficMirrorFilterRuleSyncType = (
            _ input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleRequest) throws -> ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleResult
    typealias ModifyTrafficMirrorFilterRuleAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyTrafficMirrorSessionSyncType = (
            _ input: ElasticComputeCloudModel.ModifyTrafficMirrorSessionRequest) throws -> ElasticComputeCloudModel.ModifyTrafficMirrorSessionResult
    typealias ModifyTrafficMirrorSessionAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyTrafficMirrorSessionRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyTrafficMirrorSessionResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyTransitGatewaySyncType = (
            _ input: ElasticComputeCloudModel.ModifyTransitGatewayRequest) throws -> ElasticComputeCloudModel.ModifyTransitGatewayResult
    typealias ModifyTransitGatewayAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyTransitGatewayRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyTransitGatewayResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyTransitGatewayPrefixListReferenceSyncType = (
            _ input: ElasticComputeCloudModel.ModifyTransitGatewayPrefixListReferenceRequest) throws -> ElasticComputeCloudModel.ModifyTransitGatewayPrefixListReferenceResult
    typealias ModifyTransitGatewayPrefixListReferenceAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyTransitGatewayPrefixListReferenceRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyTransitGatewayPrefixListReferenceResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyTransitGatewayVpcAttachmentSyncType = (
            _ input: ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentRequest) throws -> ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentResult
    typealias ModifyTransitGatewayVpcAttachmentAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyVolumeSyncType = (
            _ input: ElasticComputeCloudModel.ModifyVolumeRequest) throws -> ElasticComputeCloudModel.ModifyVolumeResult
    typealias ModifyVolumeAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyVolumeRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyVolumeResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyVolumeAttributeSyncType = (
            _ input: ElasticComputeCloudModel.ModifyVolumeAttributeRequest) throws -> ()
    typealias ModifyVolumeAttributeAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyVolumeAttributeRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias ModifyVpcAttributeSyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpcAttributeRequest) throws -> ()
    typealias ModifyVpcAttributeAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpcAttributeRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias ModifyVpcEndpointSyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpcEndpointRequest) throws -> ElasticComputeCloudModel.ModifyVpcEndpointResult
    typealias ModifyVpcEndpointAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpcEndpointRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpcEndpointResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyVpcEndpointConnectionNotificationSyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationRequest) throws -> ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationResult
    typealias ModifyVpcEndpointConnectionNotificationAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyVpcEndpointServiceConfigurationSyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationRequest) throws -> ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationResult
    typealias ModifyVpcEndpointServiceConfigurationAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyVpcEndpointServicePermissionsSyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsRequest) throws -> ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsResult
    typealias ModifyVpcEndpointServicePermissionsAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyVpcPeeringConnectionOptionsSyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsRequest) throws -> ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsResult
    typealias ModifyVpcPeeringConnectionOptionsAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyVpcTenancySyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpcTenancyRequest) throws -> ElasticComputeCloudModel.ModifyVpcTenancyResult
    typealias ModifyVpcTenancyAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpcTenancyRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpcTenancyResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyVpnConnectionSyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpnConnectionRequest) throws -> ElasticComputeCloudModel.ModifyVpnConnectionResult
    typealias ModifyVpnConnectionAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpnConnectionRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpnConnectionResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyVpnConnectionOptionsSyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpnConnectionOptionsRequest) throws -> ElasticComputeCloudModel.ModifyVpnConnectionOptionsResult
    typealias ModifyVpnConnectionOptionsAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpnConnectionOptionsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpnConnectionOptionsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyVpnTunnelCertificateSyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpnTunnelCertificateRequest) throws -> ElasticComputeCloudModel.ModifyVpnTunnelCertificateResult
    typealias ModifyVpnTunnelCertificateAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpnTunnelCertificateRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpnTunnelCertificateResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ModifyVpnTunnelOptionsSyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpnTunnelOptionsRequest) throws -> ElasticComputeCloudModel.ModifyVpnTunnelOptionsResult
    typealias ModifyVpnTunnelOptionsAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpnTunnelOptionsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpnTunnelOptionsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias MonitorInstancesSyncType = (
            _ input: ElasticComputeCloudModel.MonitorInstancesRequest) throws -> ElasticComputeCloudModel.MonitorInstancesResult
    typealias MonitorInstancesAsyncType = (
            _ input: ElasticComputeCloudModel.MonitorInstancesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.MonitorInstancesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias MoveAddressToVpcSyncType = (
            _ input: ElasticComputeCloudModel.MoveAddressToVpcRequest) throws -> ElasticComputeCloudModel.MoveAddressToVpcResult
    typealias MoveAddressToVpcAsyncType = (
            _ input: ElasticComputeCloudModel.MoveAddressToVpcRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.MoveAddressToVpcResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ProvisionByoipCidrSyncType = (
            _ input: ElasticComputeCloudModel.ProvisionByoipCidrRequest) throws -> ElasticComputeCloudModel.ProvisionByoipCidrResult
    typealias ProvisionByoipCidrAsyncType = (
            _ input: ElasticComputeCloudModel.ProvisionByoipCidrRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ProvisionByoipCidrResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias PurchaseHostReservationSyncType = (
            _ input: ElasticComputeCloudModel.PurchaseHostReservationRequest) throws -> ElasticComputeCloudModel.PurchaseHostReservationResult
    typealias PurchaseHostReservationAsyncType = (
            _ input: ElasticComputeCloudModel.PurchaseHostReservationRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.PurchaseHostReservationResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias PurchaseReservedInstancesOfferingSyncType = (
            _ input: ElasticComputeCloudModel.PurchaseReservedInstancesOfferingRequest) throws -> ElasticComputeCloudModel.PurchaseReservedInstancesOfferingResult
    typealias PurchaseReservedInstancesOfferingAsyncType = (
            _ input: ElasticComputeCloudModel.PurchaseReservedInstancesOfferingRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.PurchaseReservedInstancesOfferingResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias PurchaseScheduledInstancesSyncType = (
            _ input: ElasticComputeCloudModel.PurchaseScheduledInstancesRequest) throws -> ElasticComputeCloudModel.PurchaseScheduledInstancesResult
    typealias PurchaseScheduledInstancesAsyncType = (
            _ input: ElasticComputeCloudModel.PurchaseScheduledInstancesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.PurchaseScheduledInstancesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias RebootInstancesSyncType = (
            _ input: ElasticComputeCloudModel.RebootInstancesRequest) throws -> ()
    typealias RebootInstancesAsyncType = (
            _ input: ElasticComputeCloudModel.RebootInstancesRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias RegisterImageSyncType = (
            _ input: ElasticComputeCloudModel.RegisterImageRequest) throws -> ElasticComputeCloudModel.RegisterImageResult
    typealias RegisterImageAsyncType = (
            _ input: ElasticComputeCloudModel.RegisterImageRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.RegisterImageResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias RegisterInstanceEventNotificationAttributesSyncType = (
            _ input: ElasticComputeCloudModel.RegisterInstanceEventNotificationAttributesRequest) throws -> ElasticComputeCloudModel.RegisterInstanceEventNotificationAttributesResult
    typealias RegisterInstanceEventNotificationAttributesAsyncType = (
            _ input: ElasticComputeCloudModel.RegisterInstanceEventNotificationAttributesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.RegisterInstanceEventNotificationAttributesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias RegisterTransitGatewayMulticastGroupMembersSyncType = (
            _ input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersRequest) throws -> ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersResult
    typealias RegisterTransitGatewayMulticastGroupMembersAsyncType = (
            _ input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias RegisterTransitGatewayMulticastGroupSourcesSyncType = (
            _ input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesRequest) throws -> ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesResult
    typealias RegisterTransitGatewayMulticastGroupSourcesAsyncType = (
            _ input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias RejectTransitGatewayMulticastDomainAssociationsSyncType = (
            _ input: ElasticComputeCloudModel.RejectTransitGatewayMulticastDomainAssociationsRequest) throws -> ElasticComputeCloudModel.RejectTransitGatewayMulticastDomainAssociationsResult
    typealias RejectTransitGatewayMulticastDomainAssociationsAsyncType = (
            _ input: ElasticComputeCloudModel.RejectTransitGatewayMulticastDomainAssociationsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.RejectTransitGatewayMulticastDomainAssociationsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias RejectTransitGatewayPeeringAttachmentSyncType = (
            _ input: ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentRequest) throws -> ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentResult
    typealias RejectTransitGatewayPeeringAttachmentAsyncType = (
            _ input: ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias RejectTransitGatewayVpcAttachmentSyncType = (
            _ input: ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentRequest) throws -> ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentResult
    typealias RejectTransitGatewayVpcAttachmentAsyncType = (
            _ input: ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias RejectVpcEndpointConnectionsSyncType = (
            _ input: ElasticComputeCloudModel.RejectVpcEndpointConnectionsRequest) throws -> ElasticComputeCloudModel.RejectVpcEndpointConnectionsResult
    typealias RejectVpcEndpointConnectionsAsyncType = (
            _ input: ElasticComputeCloudModel.RejectVpcEndpointConnectionsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.RejectVpcEndpointConnectionsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias RejectVpcPeeringConnectionSyncType = (
            _ input: ElasticComputeCloudModel.RejectVpcPeeringConnectionRequest) throws -> ElasticComputeCloudModel.RejectVpcPeeringConnectionResult
    typealias RejectVpcPeeringConnectionAsyncType = (
            _ input: ElasticComputeCloudModel.RejectVpcPeeringConnectionRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.RejectVpcPeeringConnectionResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ReleaseAddressSyncType = (
            _ input: ElasticComputeCloudModel.ReleaseAddressRequest) throws -> ()
    typealias ReleaseAddressAsyncType = (
            _ input: ElasticComputeCloudModel.ReleaseAddressRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias ReleaseHostsSyncType = (
            _ input: ElasticComputeCloudModel.ReleaseHostsRequest) throws -> ElasticComputeCloudModel.ReleaseHostsResult
    typealias ReleaseHostsAsyncType = (
            _ input: ElasticComputeCloudModel.ReleaseHostsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ReleaseHostsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ReplaceIamInstanceProfileAssociationSyncType = (
            _ input: ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationRequest) throws -> ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationResult
    typealias ReplaceIamInstanceProfileAssociationAsyncType = (
            _ input: ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ReplaceNetworkAclAssociationSyncType = (
            _ input: ElasticComputeCloudModel.ReplaceNetworkAclAssociationRequest) throws -> ElasticComputeCloudModel.ReplaceNetworkAclAssociationResult
    typealias ReplaceNetworkAclAssociationAsyncType = (
            _ input: ElasticComputeCloudModel.ReplaceNetworkAclAssociationRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ReplaceNetworkAclAssociationResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ReplaceNetworkAclEntrySyncType = (
            _ input: ElasticComputeCloudModel.ReplaceNetworkAclEntryRequest) throws -> ()
    typealias ReplaceNetworkAclEntryAsyncType = (
            _ input: ElasticComputeCloudModel.ReplaceNetworkAclEntryRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias ReplaceRouteSyncType = (
            _ input: ElasticComputeCloudModel.ReplaceRouteRequest) throws -> ()
    typealias ReplaceRouteAsyncType = (
            _ input: ElasticComputeCloudModel.ReplaceRouteRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias ReplaceRouteTableAssociationSyncType = (
            _ input: ElasticComputeCloudModel.ReplaceRouteTableAssociationRequest) throws -> ElasticComputeCloudModel.ReplaceRouteTableAssociationResult
    typealias ReplaceRouteTableAssociationAsyncType = (
            _ input: ElasticComputeCloudModel.ReplaceRouteTableAssociationRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ReplaceRouteTableAssociationResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ReplaceTransitGatewayRouteSyncType = (
            _ input: ElasticComputeCloudModel.ReplaceTransitGatewayRouteRequest) throws -> ElasticComputeCloudModel.ReplaceTransitGatewayRouteResult
    typealias ReplaceTransitGatewayRouteAsyncType = (
            _ input: ElasticComputeCloudModel.ReplaceTransitGatewayRouteRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ReplaceTransitGatewayRouteResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ReportInstanceStatusSyncType = (
            _ input: ElasticComputeCloudModel.ReportInstanceStatusRequest) throws -> ()
    typealias ReportInstanceStatusAsyncType = (
            _ input: ElasticComputeCloudModel.ReportInstanceStatusRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias RequestSpotFleetSyncType = (
            _ input: ElasticComputeCloudModel.RequestSpotFleetRequest) throws -> ElasticComputeCloudModel.RequestSpotFleetResponse
    typealias RequestSpotFleetAsyncType = (
            _ input: ElasticComputeCloudModel.RequestSpotFleetRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.RequestSpotFleetResponse, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias RequestSpotInstancesSyncType = (
            _ input: ElasticComputeCloudModel.RequestSpotInstancesRequest) throws -> ElasticComputeCloudModel.RequestSpotInstancesResult
    typealias RequestSpotInstancesAsyncType = (
            _ input: ElasticComputeCloudModel.RequestSpotInstancesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.RequestSpotInstancesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ResetAddressAttributeSyncType = (
            _ input: ElasticComputeCloudModel.ResetAddressAttributeRequest) throws -> ElasticComputeCloudModel.ResetAddressAttributeResult
    typealias ResetAddressAttributeAsyncType = (
            _ input: ElasticComputeCloudModel.ResetAddressAttributeRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ResetAddressAttributeResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ResetEbsDefaultKmsKeyIdSyncType = (
            _ input: ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdRequest) throws -> ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdResult
    typealias ResetEbsDefaultKmsKeyIdAsyncType = (
            _ input: ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ResetFpgaImageAttributeSyncType = (
            _ input: ElasticComputeCloudModel.ResetFpgaImageAttributeRequest) throws -> ElasticComputeCloudModel.ResetFpgaImageAttributeResult
    typealias ResetFpgaImageAttributeAsyncType = (
            _ input: ElasticComputeCloudModel.ResetFpgaImageAttributeRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.ResetFpgaImageAttributeResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias ResetImageAttributeSyncType = (
            _ input: ElasticComputeCloudModel.ResetImageAttributeRequest) throws -> ()
    typealias ResetImageAttributeAsyncType = (
            _ input: ElasticComputeCloudModel.ResetImageAttributeRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias ResetInstanceAttributeSyncType = (
            _ input: ElasticComputeCloudModel.ResetInstanceAttributeRequest) throws -> ()
    typealias ResetInstanceAttributeAsyncType = (
            _ input: ElasticComputeCloudModel.ResetInstanceAttributeRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias ResetNetworkInterfaceAttributeSyncType = (
            _ input: ElasticComputeCloudModel.ResetNetworkInterfaceAttributeRequest) throws -> ()
    typealias ResetNetworkInterfaceAttributeAsyncType = (
            _ input: ElasticComputeCloudModel.ResetNetworkInterfaceAttributeRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias ResetSnapshotAttributeSyncType = (
            _ input: ElasticComputeCloudModel.ResetSnapshotAttributeRequest) throws -> ()
    typealias ResetSnapshotAttributeAsyncType = (
            _ input: ElasticComputeCloudModel.ResetSnapshotAttributeRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias RestoreAddressToClassicSyncType = (
            _ input: ElasticComputeCloudModel.RestoreAddressToClassicRequest) throws -> ElasticComputeCloudModel.RestoreAddressToClassicResult
    typealias RestoreAddressToClassicAsyncType = (
            _ input: ElasticComputeCloudModel.RestoreAddressToClassicRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.RestoreAddressToClassicResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias RestoreManagedPrefixListVersionSyncType = (
            _ input: ElasticComputeCloudModel.RestoreManagedPrefixListVersionRequest) throws -> ElasticComputeCloudModel.RestoreManagedPrefixListVersionResult
    typealias RestoreManagedPrefixListVersionAsyncType = (
            _ input: ElasticComputeCloudModel.RestoreManagedPrefixListVersionRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.RestoreManagedPrefixListVersionResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias RevokeClientVpnIngressSyncType = (
            _ input: ElasticComputeCloudModel.RevokeClientVpnIngressRequest) throws -> ElasticComputeCloudModel.RevokeClientVpnIngressResult
    typealias RevokeClientVpnIngressAsyncType = (
            _ input: ElasticComputeCloudModel.RevokeClientVpnIngressRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.RevokeClientVpnIngressResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias RevokeSecurityGroupEgressSyncType = (
            _ input: ElasticComputeCloudModel.RevokeSecurityGroupEgressRequest) throws -> ElasticComputeCloudModel.RevokeSecurityGroupEgressResult
    typealias RevokeSecurityGroupEgressAsyncType = (
            _ input: ElasticComputeCloudModel.RevokeSecurityGroupEgressRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.RevokeSecurityGroupEgressResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias RevokeSecurityGroupIngressSyncType = (
            _ input: ElasticComputeCloudModel.RevokeSecurityGroupIngressRequest) throws -> ElasticComputeCloudModel.RevokeSecurityGroupIngressResult
    typealias RevokeSecurityGroupIngressAsyncType = (
            _ input: ElasticComputeCloudModel.RevokeSecurityGroupIngressRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.RevokeSecurityGroupIngressResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias RunInstancesSyncType = (
            _ input: ElasticComputeCloudModel.RunInstancesRequest) throws -> ElasticComputeCloudModel.Reservation
    typealias RunInstancesAsyncType = (
            _ input: ElasticComputeCloudModel.RunInstancesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.Reservation, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias RunScheduledInstancesSyncType = (
            _ input: ElasticComputeCloudModel.RunScheduledInstancesRequest) throws -> ElasticComputeCloudModel.RunScheduledInstancesResult
    typealias RunScheduledInstancesAsyncType = (
            _ input: ElasticComputeCloudModel.RunScheduledInstancesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.RunScheduledInstancesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias SearchLocalGatewayRoutesSyncType = (
            _ input: ElasticComputeCloudModel.SearchLocalGatewayRoutesRequest) throws -> ElasticComputeCloudModel.SearchLocalGatewayRoutesResult
    typealias SearchLocalGatewayRoutesAsyncType = (
            _ input: ElasticComputeCloudModel.SearchLocalGatewayRoutesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.SearchLocalGatewayRoutesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias SearchTransitGatewayMulticastGroupsSyncType = (
            _ input: ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsRequest) throws -> ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsResult
    typealias SearchTransitGatewayMulticastGroupsAsyncType = (
            _ input: ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias SearchTransitGatewayRoutesSyncType = (
            _ input: ElasticComputeCloudModel.SearchTransitGatewayRoutesRequest) throws -> ElasticComputeCloudModel.SearchTransitGatewayRoutesResult
    typealias SearchTransitGatewayRoutesAsyncType = (
            _ input: ElasticComputeCloudModel.SearchTransitGatewayRoutesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.SearchTransitGatewayRoutesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias SendDiagnosticInterruptSyncType = (
            _ input: ElasticComputeCloudModel.SendDiagnosticInterruptRequest) throws -> ()
    typealias SendDiagnosticInterruptAsyncType = (
            _ input: ElasticComputeCloudModel.SendDiagnosticInterruptRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias StartInstancesSyncType = (
            _ input: ElasticComputeCloudModel.StartInstancesRequest) throws -> ElasticComputeCloudModel.StartInstancesResult
    typealias StartInstancesAsyncType = (
            _ input: ElasticComputeCloudModel.StartInstancesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.StartInstancesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias StartNetworkInsightsAnalysisSyncType = (
            _ input: ElasticComputeCloudModel.StartNetworkInsightsAnalysisRequest) throws -> ElasticComputeCloudModel.StartNetworkInsightsAnalysisResult
    typealias StartNetworkInsightsAnalysisAsyncType = (
            _ input: ElasticComputeCloudModel.StartNetworkInsightsAnalysisRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.StartNetworkInsightsAnalysisResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias StartVpcEndpointServicePrivateDnsVerificationSyncType = (
            _ input: ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationRequest) throws -> ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationResult
    typealias StartVpcEndpointServicePrivateDnsVerificationAsyncType = (
            _ input: ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias StopInstancesSyncType = (
            _ input: ElasticComputeCloudModel.StopInstancesRequest) throws -> ElasticComputeCloudModel.StopInstancesResult
    typealias StopInstancesAsyncType = (
            _ input: ElasticComputeCloudModel.StopInstancesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.StopInstancesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias TerminateClientVpnConnectionsSyncType = (
            _ input: ElasticComputeCloudModel.TerminateClientVpnConnectionsRequest) throws -> ElasticComputeCloudModel.TerminateClientVpnConnectionsResult
    typealias TerminateClientVpnConnectionsAsyncType = (
            _ input: ElasticComputeCloudModel.TerminateClientVpnConnectionsRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.TerminateClientVpnConnectionsResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias TerminateInstancesSyncType = (
            _ input: ElasticComputeCloudModel.TerminateInstancesRequest) throws -> ElasticComputeCloudModel.TerminateInstancesResult
    typealias TerminateInstancesAsyncType = (
            _ input: ElasticComputeCloudModel.TerminateInstancesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.TerminateInstancesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias UnassignIpv6AddressesSyncType = (
            _ input: ElasticComputeCloudModel.UnassignIpv6AddressesRequest) throws -> ElasticComputeCloudModel.UnassignIpv6AddressesResult
    typealias UnassignIpv6AddressesAsyncType = (
            _ input: ElasticComputeCloudModel.UnassignIpv6AddressesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.UnassignIpv6AddressesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias UnassignPrivateIpAddressesSyncType = (
            _ input: ElasticComputeCloudModel.UnassignPrivateIpAddressesRequest) throws -> ()
    typealias UnassignPrivateIpAddressesAsyncType = (
            _ input: ElasticComputeCloudModel.UnassignPrivateIpAddressesRequest, 
            _ completion: @escaping (ElasticComputeCloudError?) -> ()) throws -> ()
    typealias UnmonitorInstancesSyncType = (
            _ input: ElasticComputeCloudModel.UnmonitorInstancesRequest) throws -> ElasticComputeCloudModel.UnmonitorInstancesResult
    typealias UnmonitorInstancesAsyncType = (
            _ input: ElasticComputeCloudModel.UnmonitorInstancesRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.UnmonitorInstancesResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias UpdateSecurityGroupRuleDescriptionsEgressSyncType = (
            _ input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressRequest) throws -> ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressResult
    typealias UpdateSecurityGroupRuleDescriptionsEgressAsyncType = (
            _ input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias UpdateSecurityGroupRuleDescriptionsIngressSyncType = (
            _ input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressRequest) throws -> ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressResult
    typealias UpdateSecurityGroupRuleDescriptionsIngressAsyncType = (
            _ input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressResult, ElasticComputeCloudError>) -> ()) throws -> ()
    typealias WithdrawByoipCidrSyncType = (
            _ input: ElasticComputeCloudModel.WithdrawByoipCidrRequest) throws -> ElasticComputeCloudModel.WithdrawByoipCidrResult
    typealias WithdrawByoipCidrAsyncType = (
            _ input: ElasticComputeCloudModel.WithdrawByoipCidrRequest, 
            _ completion: @escaping (Result<ElasticComputeCloudModel.WithdrawByoipCidrResult, ElasticComputeCloudError>) -> ()) throws -> ()

    /**
     Invokes the AcceptReservedInstancesExchangeQuote operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AcceptReservedInstancesExchangeQuoteRequest object being passed to this operation.
         - completion: The AcceptReservedInstancesExchangeQuoteResult object or an error will be passed to this 
           callback when the operation is complete. The AcceptReservedInstancesExchangeQuoteResult
           object will be validated before being returned to caller.
     */
    func acceptReservedInstancesExchangeQuoteAsync(
            input: ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the AcceptReservedInstancesExchangeQuote operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcceptReservedInstancesExchangeQuoteRequest object being passed to this operation.
     - Returns: The AcceptReservedInstancesExchangeQuoteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptReservedInstancesExchangeQuoteSync(
            input: ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteRequest) throws -> ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteResult

    /**
     Invokes the AcceptTransitGatewayMulticastDomainAssociations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AcceptTransitGatewayMulticastDomainAssociationsRequest object being passed to this operation.
         - completion: The AcceptTransitGatewayMulticastDomainAssociationsResult object or an error will be passed to this 
           callback when the operation is complete. The AcceptTransitGatewayMulticastDomainAssociationsResult
           object will be validated before being returned to caller.
     */
    func acceptTransitGatewayMulticastDomainAssociationsAsync(
            input: ElasticComputeCloudModel.AcceptTransitGatewayMulticastDomainAssociationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AcceptTransitGatewayMulticastDomainAssociationsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the AcceptTransitGatewayMulticastDomainAssociations operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcceptTransitGatewayMulticastDomainAssociationsRequest object being passed to this operation.
     - Returns: The AcceptTransitGatewayMulticastDomainAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptTransitGatewayMulticastDomainAssociationsSync(
            input: ElasticComputeCloudModel.AcceptTransitGatewayMulticastDomainAssociationsRequest) throws -> ElasticComputeCloudModel.AcceptTransitGatewayMulticastDomainAssociationsResult

    /**
     Invokes the AcceptTransitGatewayPeeringAttachment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AcceptTransitGatewayPeeringAttachmentRequest object being passed to this operation.
         - completion: The AcceptTransitGatewayPeeringAttachmentResult object or an error will be passed to this 
           callback when the operation is complete. The AcceptTransitGatewayPeeringAttachmentResult
           object will be validated before being returned to caller.
     */
    func acceptTransitGatewayPeeringAttachmentAsync(
            input: ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the AcceptTransitGatewayPeeringAttachment operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcceptTransitGatewayPeeringAttachmentRequest object being passed to this operation.
     - Returns: The AcceptTransitGatewayPeeringAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptTransitGatewayPeeringAttachmentSync(
            input: ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentRequest) throws -> ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentResult

    /**
     Invokes the AcceptTransitGatewayVpcAttachment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AcceptTransitGatewayVpcAttachmentRequest object being passed to this operation.
         - completion: The AcceptTransitGatewayVpcAttachmentResult object or an error will be passed to this 
           callback when the operation is complete. The AcceptTransitGatewayVpcAttachmentResult
           object will be validated before being returned to caller.
     */
    func acceptTransitGatewayVpcAttachmentAsync(
            input: ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the AcceptTransitGatewayVpcAttachment operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcceptTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The AcceptTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptTransitGatewayVpcAttachmentSync(
            input: ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentRequest) throws -> ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentResult

    /**
     Invokes the AcceptVpcEndpointConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AcceptVpcEndpointConnectionsRequest object being passed to this operation.
         - completion: The AcceptVpcEndpointConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The AcceptVpcEndpointConnectionsResult
           object will be validated before being returned to caller.
     */
    func acceptVpcEndpointConnectionsAsync(
            input: ElasticComputeCloudModel.AcceptVpcEndpointConnectionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AcceptVpcEndpointConnectionsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the AcceptVpcEndpointConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcceptVpcEndpointConnectionsRequest object being passed to this operation.
     - Returns: The AcceptVpcEndpointConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptVpcEndpointConnectionsSync(
            input: ElasticComputeCloudModel.AcceptVpcEndpointConnectionsRequest) throws -> ElasticComputeCloudModel.AcceptVpcEndpointConnectionsResult

    /**
     Invokes the AcceptVpcPeeringConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AcceptVpcPeeringConnectionRequest object being passed to this operation.
         - completion: The AcceptVpcPeeringConnectionResult object or an error will be passed to this 
           callback when the operation is complete. The AcceptVpcPeeringConnectionResult
           object will be validated before being returned to caller.
     */
    func acceptVpcPeeringConnectionAsync(
            input: ElasticComputeCloudModel.AcceptVpcPeeringConnectionRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AcceptVpcPeeringConnectionResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the AcceptVpcPeeringConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcceptVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: The AcceptVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptVpcPeeringConnectionSync(
            input: ElasticComputeCloudModel.AcceptVpcPeeringConnectionRequest) throws -> ElasticComputeCloudModel.AcceptVpcPeeringConnectionResult

    /**
     Invokes the AdvertiseByoipCidr operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AdvertiseByoipCidrRequest object being passed to this operation.
         - completion: The AdvertiseByoipCidrResult object or an error will be passed to this 
           callback when the operation is complete. The AdvertiseByoipCidrResult
           object will be validated before being returned to caller.
     */
    func advertiseByoipCidrAsync(
            input: ElasticComputeCloudModel.AdvertiseByoipCidrRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AdvertiseByoipCidrResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the AdvertiseByoipCidr operation waiting for the response before returning.

     - Parameters:
         - input: The validated AdvertiseByoipCidrRequest object being passed to this operation.
     - Returns: The AdvertiseByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func advertiseByoipCidrSync(
            input: ElasticComputeCloudModel.AdvertiseByoipCidrRequest) throws -> ElasticComputeCloudModel.AdvertiseByoipCidrResult

    /**
     Invokes the AllocateAddress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AllocateAddressRequest object being passed to this operation.
         - completion: The AllocateAddressResult object or an error will be passed to this 
           callback when the operation is complete. The AllocateAddressResult
           object will be validated before being returned to caller.
     */
    func allocateAddressAsync(
            input: ElasticComputeCloudModel.AllocateAddressRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AllocateAddressResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the AllocateAddress operation waiting for the response before returning.

     - Parameters:
         - input: The validated AllocateAddressRequest object being passed to this operation.
     - Returns: The AllocateAddressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func allocateAddressSync(
            input: ElasticComputeCloudModel.AllocateAddressRequest) throws -> ElasticComputeCloudModel.AllocateAddressResult

    /**
     Invokes the AllocateHosts operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AllocateHostsRequest object being passed to this operation.
         - completion: The AllocateHostsResult object or an error will be passed to this 
           callback when the operation is complete. The AllocateHostsResult
           object will be validated before being returned to caller.
     */
    func allocateHostsAsync(
            input: ElasticComputeCloudModel.AllocateHostsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AllocateHostsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the AllocateHosts operation waiting for the response before returning.

     - Parameters:
         - input: The validated AllocateHostsRequest object being passed to this operation.
     - Returns: The AllocateHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func allocateHostsSync(
            input: ElasticComputeCloudModel.AllocateHostsRequest) throws -> ElasticComputeCloudModel.AllocateHostsResult

    /**
     Invokes the ApplySecurityGroupsToClientVpnTargetNetwork operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ApplySecurityGroupsToClientVpnTargetNetworkRequest object being passed to this operation.
         - completion: The ApplySecurityGroupsToClientVpnTargetNetworkResult object or an error will be passed to this 
           callback when the operation is complete. The ApplySecurityGroupsToClientVpnTargetNetworkResult
           object will be validated before being returned to caller.
     */
    func applySecurityGroupsToClientVpnTargetNetworkAsync(
            input: ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ApplySecurityGroupsToClientVpnTargetNetwork operation waiting for the response before returning.

     - Parameters:
         - input: The validated ApplySecurityGroupsToClientVpnTargetNetworkRequest object being passed to this operation.
     - Returns: The ApplySecurityGroupsToClientVpnTargetNetworkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func applySecurityGroupsToClientVpnTargetNetworkSync(
            input: ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkRequest) throws -> ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkResult

    /**
     Invokes the AssignIpv6Addresses operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssignIpv6AddressesRequest object being passed to this operation.
         - completion: The AssignIpv6AddressesResult object or an error will be passed to this 
           callback when the operation is complete. The AssignIpv6AddressesResult
           object will be validated before being returned to caller.
     */
    func assignIpv6AddressesAsync(
            input: ElasticComputeCloudModel.AssignIpv6AddressesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AssignIpv6AddressesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the AssignIpv6Addresses operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssignIpv6AddressesRequest object being passed to this operation.
     - Returns: The AssignIpv6AddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func assignIpv6AddressesSync(
            input: ElasticComputeCloudModel.AssignIpv6AddressesRequest) throws -> ElasticComputeCloudModel.AssignIpv6AddressesResult

    /**
     Invokes the AssignPrivateIpAddresses operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssignPrivateIpAddressesRequest object being passed to this operation.
         - completion: The AssignPrivateIpAddressesResult object or an error will be passed to this 
           callback when the operation is complete. The AssignPrivateIpAddressesResult
           object will be validated before being returned to caller.
     */
    func assignPrivateIpAddressesAsync(
            input: ElasticComputeCloudModel.AssignPrivateIpAddressesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AssignPrivateIpAddressesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the AssignPrivateIpAddresses operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssignPrivateIpAddressesRequest object being passed to this operation.
     - Returns: The AssignPrivateIpAddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func assignPrivateIpAddressesSync(
            input: ElasticComputeCloudModel.AssignPrivateIpAddressesRequest) throws -> ElasticComputeCloudModel.AssignPrivateIpAddressesResult

    /**
     Invokes the AssociateAddress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateAddressRequest object being passed to this operation.
         - completion: The AssociateAddressResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateAddressResult
           object will be validated before being returned to caller.
     */
    func associateAddressAsync(
            input: ElasticComputeCloudModel.AssociateAddressRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AssociateAddressResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the AssociateAddress operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateAddressRequest object being passed to this operation.
     - Returns: The AssociateAddressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateAddressSync(
            input: ElasticComputeCloudModel.AssociateAddressRequest) throws -> ElasticComputeCloudModel.AssociateAddressResult

    /**
     Invokes the AssociateClientVpnTargetNetwork operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateClientVpnTargetNetworkRequest object being passed to this operation.
         - completion: The AssociateClientVpnTargetNetworkResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateClientVpnTargetNetworkResult
           object will be validated before being returned to caller.
     */
    func associateClientVpnTargetNetworkAsync(
            input: ElasticComputeCloudModel.AssociateClientVpnTargetNetworkRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AssociateClientVpnTargetNetworkResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the AssociateClientVpnTargetNetwork operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateClientVpnTargetNetworkRequest object being passed to this operation.
     - Returns: The AssociateClientVpnTargetNetworkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateClientVpnTargetNetworkSync(
            input: ElasticComputeCloudModel.AssociateClientVpnTargetNetworkRequest) throws -> ElasticComputeCloudModel.AssociateClientVpnTargetNetworkResult

    /**
     Invokes the AssociateDhcpOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateDhcpOptionsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func associateDhcpOptionsAsync(
            input: ElasticComputeCloudModel.AssociateDhcpOptionsRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the AssociateDhcpOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateDhcpOptionsRequest object being passed to this operation.
     */
    func associateDhcpOptionsSync(
            input: ElasticComputeCloudModel.AssociateDhcpOptionsRequest) throws

    /**
     Invokes the AssociateEnclaveCertificateIamRole operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateEnclaveCertificateIamRoleRequest object being passed to this operation.
         - completion: The AssociateEnclaveCertificateIamRoleResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateEnclaveCertificateIamRoleResult
           object will be validated before being returned to caller.
     */
    func associateEnclaveCertificateIamRoleAsync(
            input: ElasticComputeCloudModel.AssociateEnclaveCertificateIamRoleRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AssociateEnclaveCertificateIamRoleResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the AssociateEnclaveCertificateIamRole operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateEnclaveCertificateIamRoleRequest object being passed to this operation.
     - Returns: The AssociateEnclaveCertificateIamRoleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateEnclaveCertificateIamRoleSync(
            input: ElasticComputeCloudModel.AssociateEnclaveCertificateIamRoleRequest) throws -> ElasticComputeCloudModel.AssociateEnclaveCertificateIamRoleResult

    /**
     Invokes the AssociateIamInstanceProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateIamInstanceProfileRequest object being passed to this operation.
         - completion: The AssociateIamInstanceProfileResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateIamInstanceProfileResult
           object will be validated before being returned to caller.
     */
    func associateIamInstanceProfileAsync(
            input: ElasticComputeCloudModel.AssociateIamInstanceProfileRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AssociateIamInstanceProfileResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the AssociateIamInstanceProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateIamInstanceProfileRequest object being passed to this operation.
     - Returns: The AssociateIamInstanceProfileResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateIamInstanceProfileSync(
            input: ElasticComputeCloudModel.AssociateIamInstanceProfileRequest) throws -> ElasticComputeCloudModel.AssociateIamInstanceProfileResult

    /**
     Invokes the AssociateRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateRouteTableRequest object being passed to this operation.
         - completion: The AssociateRouteTableResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateRouteTableResult
           object will be validated before being returned to caller.
     */
    func associateRouteTableAsync(
            input: ElasticComputeCloudModel.AssociateRouteTableRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AssociateRouteTableResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the AssociateRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateRouteTableRequest object being passed to this operation.
     - Returns: The AssociateRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateRouteTableSync(
            input: ElasticComputeCloudModel.AssociateRouteTableRequest) throws -> ElasticComputeCloudModel.AssociateRouteTableResult

    /**
     Invokes the AssociateSubnetCidrBlock operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateSubnetCidrBlockRequest object being passed to this operation.
         - completion: The AssociateSubnetCidrBlockResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateSubnetCidrBlockResult
           object will be validated before being returned to caller.
     */
    func associateSubnetCidrBlockAsync(
            input: ElasticComputeCloudModel.AssociateSubnetCidrBlockRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AssociateSubnetCidrBlockResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the AssociateSubnetCidrBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateSubnetCidrBlockRequest object being passed to this operation.
     - Returns: The AssociateSubnetCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateSubnetCidrBlockSync(
            input: ElasticComputeCloudModel.AssociateSubnetCidrBlockRequest) throws -> ElasticComputeCloudModel.AssociateSubnetCidrBlockResult

    /**
     Invokes the AssociateTransitGatewayMulticastDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateTransitGatewayMulticastDomainRequest object being passed to this operation.
         - completion: The AssociateTransitGatewayMulticastDomainResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateTransitGatewayMulticastDomainResult
           object will be validated before being returned to caller.
     */
    func associateTransitGatewayMulticastDomainAsync(
            input: ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the AssociateTransitGatewayMulticastDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateTransitGatewayMulticastDomainRequest object being passed to this operation.
     - Returns: The AssociateTransitGatewayMulticastDomainResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateTransitGatewayMulticastDomainSync(
            input: ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainRequest) throws -> ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainResult

    /**
     Invokes the AssociateTransitGatewayRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateTransitGatewayRouteTableRequest object being passed to this operation.
         - completion: The AssociateTransitGatewayRouteTableResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateTransitGatewayRouteTableResult
           object will be validated before being returned to caller.
     */
    func associateTransitGatewayRouteTableAsync(
            input: ElasticComputeCloudModel.AssociateTransitGatewayRouteTableRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AssociateTransitGatewayRouteTableResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the AssociateTransitGatewayRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: The AssociateTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateTransitGatewayRouteTableSync(
            input: ElasticComputeCloudModel.AssociateTransitGatewayRouteTableRequest) throws -> ElasticComputeCloudModel.AssociateTransitGatewayRouteTableResult

    /**
     Invokes the AssociateVpcCidrBlock operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateVpcCidrBlockRequest object being passed to this operation.
         - completion: The AssociateVpcCidrBlockResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateVpcCidrBlockResult
           object will be validated before being returned to caller.
     */
    func associateVpcCidrBlockAsync(
            input: ElasticComputeCloudModel.AssociateVpcCidrBlockRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AssociateVpcCidrBlockResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the AssociateVpcCidrBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateVpcCidrBlockRequest object being passed to this operation.
     - Returns: The AssociateVpcCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateVpcCidrBlockSync(
            input: ElasticComputeCloudModel.AssociateVpcCidrBlockRequest) throws -> ElasticComputeCloudModel.AssociateVpcCidrBlockResult

    /**
     Invokes the AttachClassicLinkVpc operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachClassicLinkVpcRequest object being passed to this operation.
         - completion: The AttachClassicLinkVpcResult object or an error will be passed to this 
           callback when the operation is complete. The AttachClassicLinkVpcResult
           object will be validated before being returned to caller.
     */
    func attachClassicLinkVpcAsync(
            input: ElasticComputeCloudModel.AttachClassicLinkVpcRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AttachClassicLinkVpcResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the AttachClassicLinkVpc operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachClassicLinkVpcRequest object being passed to this operation.
     - Returns: The AttachClassicLinkVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func attachClassicLinkVpcSync(
            input: ElasticComputeCloudModel.AttachClassicLinkVpcRequest) throws -> ElasticComputeCloudModel.AttachClassicLinkVpcResult

    /**
     Invokes the AttachInternetGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachInternetGatewayRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func attachInternetGatewayAsync(
            input: ElasticComputeCloudModel.AttachInternetGatewayRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the AttachInternetGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachInternetGatewayRequest object being passed to this operation.
     */
    func attachInternetGatewaySync(
            input: ElasticComputeCloudModel.AttachInternetGatewayRequest) throws

    /**
     Invokes the AttachNetworkInterface operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachNetworkInterfaceRequest object being passed to this operation.
         - completion: The AttachNetworkInterfaceResult object or an error will be passed to this 
           callback when the operation is complete. The AttachNetworkInterfaceResult
           object will be validated before being returned to caller.
     */
    func attachNetworkInterfaceAsync(
            input: ElasticComputeCloudModel.AttachNetworkInterfaceRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AttachNetworkInterfaceResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the AttachNetworkInterface operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachNetworkInterfaceRequest object being passed to this operation.
     - Returns: The AttachNetworkInterfaceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func attachNetworkInterfaceSync(
            input: ElasticComputeCloudModel.AttachNetworkInterfaceRequest) throws -> ElasticComputeCloudModel.AttachNetworkInterfaceResult

    /**
     Invokes the AttachVolume operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachVolumeRequest object being passed to this operation.
         - completion: The VolumeAttachment object or an error will be passed to this 
           callback when the operation is complete. The VolumeAttachment
           object will be validated before being returned to caller.
     */
    func attachVolumeAsync(
            input: ElasticComputeCloudModel.AttachVolumeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.VolumeAttachment, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the AttachVolume operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachVolumeRequest object being passed to this operation.
     - Returns: The VolumeAttachment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func attachVolumeSync(
            input: ElasticComputeCloudModel.AttachVolumeRequest) throws -> ElasticComputeCloudModel.VolumeAttachment

    /**
     Invokes the AttachVpnGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachVpnGatewayRequest object being passed to this operation.
         - completion: The AttachVpnGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The AttachVpnGatewayResult
           object will be validated before being returned to caller.
     */
    func attachVpnGatewayAsync(
            input: ElasticComputeCloudModel.AttachVpnGatewayRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AttachVpnGatewayResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the AttachVpnGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachVpnGatewayRequest object being passed to this operation.
     - Returns: The AttachVpnGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func attachVpnGatewaySync(
            input: ElasticComputeCloudModel.AttachVpnGatewayRequest) throws -> ElasticComputeCloudModel.AttachVpnGatewayResult

    /**
     Invokes the AuthorizeClientVpnIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AuthorizeClientVpnIngressRequest object being passed to this operation.
         - completion: The AuthorizeClientVpnIngressResult object or an error will be passed to this 
           callback when the operation is complete. The AuthorizeClientVpnIngressResult
           object will be validated before being returned to caller.
     */
    func authorizeClientVpnIngressAsync(
            input: ElasticComputeCloudModel.AuthorizeClientVpnIngressRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AuthorizeClientVpnIngressResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the AuthorizeClientVpnIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated AuthorizeClientVpnIngressRequest object being passed to this operation.
     - Returns: The AuthorizeClientVpnIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func authorizeClientVpnIngressSync(
            input: ElasticComputeCloudModel.AuthorizeClientVpnIngressRequest) throws -> ElasticComputeCloudModel.AuthorizeClientVpnIngressResult

    /**
     Invokes the AuthorizeSecurityGroupEgress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AuthorizeSecurityGroupEgressRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func authorizeSecurityGroupEgressAsync(
            input: ElasticComputeCloudModel.AuthorizeSecurityGroupEgressRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the AuthorizeSecurityGroupEgress operation waiting for the response before returning.

     - Parameters:
         - input: The validated AuthorizeSecurityGroupEgressRequest object being passed to this operation.
     */
    func authorizeSecurityGroupEgressSync(
            input: ElasticComputeCloudModel.AuthorizeSecurityGroupEgressRequest) throws

    /**
     Invokes the AuthorizeSecurityGroupIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AuthorizeSecurityGroupIngressRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func authorizeSecurityGroupIngressAsync(
            input: ElasticComputeCloudModel.AuthorizeSecurityGroupIngressRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the AuthorizeSecurityGroupIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated AuthorizeSecurityGroupIngressRequest object being passed to this operation.
     */
    func authorizeSecurityGroupIngressSync(
            input: ElasticComputeCloudModel.AuthorizeSecurityGroupIngressRequest) throws

    /**
     Invokes the BundleInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BundleInstanceRequest object being passed to this operation.
         - completion: The BundleInstanceResult object or an error will be passed to this 
           callback when the operation is complete. The BundleInstanceResult
           object will be validated before being returned to caller.
     */
    func bundleInstanceAsync(
            input: ElasticComputeCloudModel.BundleInstanceRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.BundleInstanceResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the BundleInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated BundleInstanceRequest object being passed to this operation.
     - Returns: The BundleInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func bundleInstanceSync(
            input: ElasticComputeCloudModel.BundleInstanceRequest) throws -> ElasticComputeCloudModel.BundleInstanceResult

    /**
     Invokes the CancelBundleTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelBundleTaskRequest object being passed to this operation.
         - completion: The CancelBundleTaskResult object or an error will be passed to this 
           callback when the operation is complete. The CancelBundleTaskResult
           object will be validated before being returned to caller.
     */
    func cancelBundleTaskAsync(
            input: ElasticComputeCloudModel.CancelBundleTaskRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CancelBundleTaskResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CancelBundleTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelBundleTaskRequest object being passed to this operation.
     - Returns: The CancelBundleTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelBundleTaskSync(
            input: ElasticComputeCloudModel.CancelBundleTaskRequest) throws -> ElasticComputeCloudModel.CancelBundleTaskResult

    /**
     Invokes the CancelCapacityReservation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelCapacityReservationRequest object being passed to this operation.
         - completion: The CancelCapacityReservationResult object or an error will be passed to this 
           callback when the operation is complete. The CancelCapacityReservationResult
           object will be validated before being returned to caller.
     */
    func cancelCapacityReservationAsync(
            input: ElasticComputeCloudModel.CancelCapacityReservationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CancelCapacityReservationResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CancelCapacityReservation operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelCapacityReservationRequest object being passed to this operation.
     - Returns: The CancelCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelCapacityReservationSync(
            input: ElasticComputeCloudModel.CancelCapacityReservationRequest) throws -> ElasticComputeCloudModel.CancelCapacityReservationResult

    /**
     Invokes the CancelConversionTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelConversionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func cancelConversionTaskAsync(
            input: ElasticComputeCloudModel.CancelConversionRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the CancelConversionTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelConversionRequest object being passed to this operation.
     */
    func cancelConversionTaskSync(
            input: ElasticComputeCloudModel.CancelConversionRequest) throws

    /**
     Invokes the CancelExportTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelExportTaskRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func cancelExportTaskAsync(
            input: ElasticComputeCloudModel.CancelExportTaskRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the CancelExportTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelExportTaskRequest object being passed to this operation.
     */
    func cancelExportTaskSync(
            input: ElasticComputeCloudModel.CancelExportTaskRequest) throws

    /**
     Invokes the CancelImportTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelImportTaskRequest object being passed to this operation.
         - completion: The CancelImportTaskResult object or an error will be passed to this 
           callback when the operation is complete. The CancelImportTaskResult
           object will be validated before being returned to caller.
     */
    func cancelImportTaskAsync(
            input: ElasticComputeCloudModel.CancelImportTaskRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CancelImportTaskResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CancelImportTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelImportTaskRequest object being passed to this operation.
     - Returns: The CancelImportTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelImportTaskSync(
            input: ElasticComputeCloudModel.CancelImportTaskRequest) throws -> ElasticComputeCloudModel.CancelImportTaskResult

    /**
     Invokes the CancelReservedInstancesListing operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelReservedInstancesListingRequest object being passed to this operation.
         - completion: The CancelReservedInstancesListingResult object or an error will be passed to this 
           callback when the operation is complete. The CancelReservedInstancesListingResult
           object will be validated before being returned to caller.
     */
    func cancelReservedInstancesListingAsync(
            input: ElasticComputeCloudModel.CancelReservedInstancesListingRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CancelReservedInstancesListingResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CancelReservedInstancesListing operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelReservedInstancesListingRequest object being passed to this operation.
     - Returns: The CancelReservedInstancesListingResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelReservedInstancesListingSync(
            input: ElasticComputeCloudModel.CancelReservedInstancesListingRequest) throws -> ElasticComputeCloudModel.CancelReservedInstancesListingResult

    /**
     Invokes the CancelSpotFleetRequests operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelSpotFleetRequestsRequest object being passed to this operation.
         - completion: The CancelSpotFleetRequestsResponse object or an error will be passed to this 
           callback when the operation is complete. The CancelSpotFleetRequestsResponse
           object will be validated before being returned to caller.
     */
    func cancelSpotFleetRequestsAsync(
            input: ElasticComputeCloudModel.CancelSpotFleetRequestsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CancelSpotFleetRequestsResponse, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CancelSpotFleetRequests operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelSpotFleetRequestsRequest object being passed to this operation.
     - Returns: The CancelSpotFleetRequestsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelSpotFleetRequestsSync(
            input: ElasticComputeCloudModel.CancelSpotFleetRequestsRequest) throws -> ElasticComputeCloudModel.CancelSpotFleetRequestsResponse

    /**
     Invokes the CancelSpotInstanceRequests operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelSpotInstanceRequestsRequest object being passed to this operation.
         - completion: The CancelSpotInstanceRequestsResult object or an error will be passed to this 
           callback when the operation is complete. The CancelSpotInstanceRequestsResult
           object will be validated before being returned to caller.
     */
    func cancelSpotInstanceRequestsAsync(
            input: ElasticComputeCloudModel.CancelSpotInstanceRequestsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CancelSpotInstanceRequestsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CancelSpotInstanceRequests operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelSpotInstanceRequestsRequest object being passed to this operation.
     - Returns: The CancelSpotInstanceRequestsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelSpotInstanceRequestsSync(
            input: ElasticComputeCloudModel.CancelSpotInstanceRequestsRequest) throws -> ElasticComputeCloudModel.CancelSpotInstanceRequestsResult

    /**
     Invokes the ConfirmProductInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ConfirmProductInstanceRequest object being passed to this operation.
         - completion: The ConfirmProductInstanceResult object or an error will be passed to this 
           callback when the operation is complete. The ConfirmProductInstanceResult
           object will be validated before being returned to caller.
     */
    func confirmProductInstanceAsync(
            input: ElasticComputeCloudModel.ConfirmProductInstanceRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ConfirmProductInstanceResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ConfirmProductInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated ConfirmProductInstanceRequest object being passed to this operation.
     - Returns: The ConfirmProductInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func confirmProductInstanceSync(
            input: ElasticComputeCloudModel.ConfirmProductInstanceRequest) throws -> ElasticComputeCloudModel.ConfirmProductInstanceResult

    /**
     Invokes the CopyFpgaImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyFpgaImageRequest object being passed to this operation.
         - completion: The CopyFpgaImageResult object or an error will be passed to this 
           callback when the operation is complete. The CopyFpgaImageResult
           object will be validated before being returned to caller.
     */
    func copyFpgaImageAsync(
            input: ElasticComputeCloudModel.CopyFpgaImageRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CopyFpgaImageResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CopyFpgaImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyFpgaImageRequest object being passed to this operation.
     - Returns: The CopyFpgaImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func copyFpgaImageSync(
            input: ElasticComputeCloudModel.CopyFpgaImageRequest) throws -> ElasticComputeCloudModel.CopyFpgaImageResult

    /**
     Invokes the CopyImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyImageRequest object being passed to this operation.
         - completion: The CopyImageResult object or an error will be passed to this 
           callback when the operation is complete. The CopyImageResult
           object will be validated before being returned to caller.
     */
    func copyImageAsync(
            input: ElasticComputeCloudModel.CopyImageRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CopyImageResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CopyImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyImageRequest object being passed to this operation.
     - Returns: The CopyImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func copyImageSync(
            input: ElasticComputeCloudModel.CopyImageRequest) throws -> ElasticComputeCloudModel.CopyImageResult

    /**
     Invokes the CopySnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopySnapshotRequest object being passed to this operation.
         - completion: The CopySnapshotResult object or an error will be passed to this 
           callback when the operation is complete. The CopySnapshotResult
           object will be validated before being returned to caller.
     */
    func copySnapshotAsync(
            input: ElasticComputeCloudModel.CopySnapshotRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CopySnapshotResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CopySnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopySnapshotRequest object being passed to this operation.
     - Returns: The CopySnapshotResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func copySnapshotSync(
            input: ElasticComputeCloudModel.CopySnapshotRequest) throws -> ElasticComputeCloudModel.CopySnapshotResult

    /**
     Invokes the CreateCapacityReservation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateCapacityReservationRequest object being passed to this operation.
         - completion: The CreateCapacityReservationResult object or an error will be passed to this 
           callback when the operation is complete. The CreateCapacityReservationResult
           object will be validated before being returned to caller.
     */
    func createCapacityReservationAsync(
            input: ElasticComputeCloudModel.CreateCapacityReservationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateCapacityReservationResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateCapacityReservation operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateCapacityReservationRequest object being passed to this operation.
     - Returns: The CreateCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createCapacityReservationSync(
            input: ElasticComputeCloudModel.CreateCapacityReservationRequest) throws -> ElasticComputeCloudModel.CreateCapacityReservationResult

    /**
     Invokes the CreateCarrierGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateCarrierGatewayRequest object being passed to this operation.
         - completion: The CreateCarrierGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The CreateCarrierGatewayResult
           object will be validated before being returned to caller.
     */
    func createCarrierGatewayAsync(
            input: ElasticComputeCloudModel.CreateCarrierGatewayRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateCarrierGatewayResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateCarrierGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateCarrierGatewayRequest object being passed to this operation.
     - Returns: The CreateCarrierGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createCarrierGatewaySync(
            input: ElasticComputeCloudModel.CreateCarrierGatewayRequest) throws -> ElasticComputeCloudModel.CreateCarrierGatewayResult

    /**
     Invokes the CreateClientVpnEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateClientVpnEndpointRequest object being passed to this operation.
         - completion: The CreateClientVpnEndpointResult object or an error will be passed to this 
           callback when the operation is complete. The CreateClientVpnEndpointResult
           object will be validated before being returned to caller.
     */
    func createClientVpnEndpointAsync(
            input: ElasticComputeCloudModel.CreateClientVpnEndpointRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateClientVpnEndpointResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateClientVpnEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateClientVpnEndpointRequest object being passed to this operation.
     - Returns: The CreateClientVpnEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createClientVpnEndpointSync(
            input: ElasticComputeCloudModel.CreateClientVpnEndpointRequest) throws -> ElasticComputeCloudModel.CreateClientVpnEndpointResult

    /**
     Invokes the CreateClientVpnRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateClientVpnRouteRequest object being passed to this operation.
         - completion: The CreateClientVpnRouteResult object or an error will be passed to this 
           callback when the operation is complete. The CreateClientVpnRouteResult
           object will be validated before being returned to caller.
     */
    func createClientVpnRouteAsync(
            input: ElasticComputeCloudModel.CreateClientVpnRouteRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateClientVpnRouteResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateClientVpnRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateClientVpnRouteRequest object being passed to this operation.
     - Returns: The CreateClientVpnRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createClientVpnRouteSync(
            input: ElasticComputeCloudModel.CreateClientVpnRouteRequest) throws -> ElasticComputeCloudModel.CreateClientVpnRouteResult

    /**
     Invokes the CreateCustomerGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateCustomerGatewayRequest object being passed to this operation.
         - completion: The CreateCustomerGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The CreateCustomerGatewayResult
           object will be validated before being returned to caller.
     */
    func createCustomerGatewayAsync(
            input: ElasticComputeCloudModel.CreateCustomerGatewayRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateCustomerGatewayResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateCustomerGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateCustomerGatewayRequest object being passed to this operation.
     - Returns: The CreateCustomerGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createCustomerGatewaySync(
            input: ElasticComputeCloudModel.CreateCustomerGatewayRequest) throws -> ElasticComputeCloudModel.CreateCustomerGatewayResult

    /**
     Invokes the CreateDefaultSubnet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDefaultSubnetRequest object being passed to this operation.
         - completion: The CreateDefaultSubnetResult object or an error will be passed to this 
           callback when the operation is complete. The CreateDefaultSubnetResult
           object will be validated before being returned to caller.
     */
    func createDefaultSubnetAsync(
            input: ElasticComputeCloudModel.CreateDefaultSubnetRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateDefaultSubnetResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateDefaultSubnet operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDefaultSubnetRequest object being passed to this operation.
     - Returns: The CreateDefaultSubnetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createDefaultSubnetSync(
            input: ElasticComputeCloudModel.CreateDefaultSubnetRequest) throws -> ElasticComputeCloudModel.CreateDefaultSubnetResult

    /**
     Invokes the CreateDefaultVpc operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDefaultVpcRequest object being passed to this operation.
         - completion: The CreateDefaultVpcResult object or an error will be passed to this 
           callback when the operation is complete. The CreateDefaultVpcResult
           object will be validated before being returned to caller.
     */
    func createDefaultVpcAsync(
            input: ElasticComputeCloudModel.CreateDefaultVpcRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateDefaultVpcResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateDefaultVpc operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDefaultVpcRequest object being passed to this operation.
     - Returns: The CreateDefaultVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createDefaultVpcSync(
            input: ElasticComputeCloudModel.CreateDefaultVpcRequest) throws -> ElasticComputeCloudModel.CreateDefaultVpcResult

    /**
     Invokes the CreateDhcpOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDhcpOptionsRequest object being passed to this operation.
         - completion: The CreateDhcpOptionsResult object or an error will be passed to this 
           callback when the operation is complete. The CreateDhcpOptionsResult
           object will be validated before being returned to caller.
     */
    func createDhcpOptionsAsync(
            input: ElasticComputeCloudModel.CreateDhcpOptionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateDhcpOptionsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateDhcpOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDhcpOptionsRequest object being passed to this operation.
     - Returns: The CreateDhcpOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createDhcpOptionsSync(
            input: ElasticComputeCloudModel.CreateDhcpOptionsRequest) throws -> ElasticComputeCloudModel.CreateDhcpOptionsResult

    /**
     Invokes the CreateEgressOnlyInternetGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateEgressOnlyInternetGatewayRequest object being passed to this operation.
         - completion: The CreateEgressOnlyInternetGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The CreateEgressOnlyInternetGatewayResult
           object will be validated before being returned to caller.
     */
    func createEgressOnlyInternetGatewayAsync(
            input: ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateEgressOnlyInternetGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateEgressOnlyInternetGatewayRequest object being passed to this operation.
     - Returns: The CreateEgressOnlyInternetGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createEgressOnlyInternetGatewaySync(
            input: ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayRequest) throws -> ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayResult

    /**
     Invokes the CreateFleet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateFleetRequest object being passed to this operation.
         - completion: The CreateFleetResult object or an error will be passed to this 
           callback when the operation is complete. The CreateFleetResult
           object will be validated before being returned to caller.
     */
    func createFleetAsync(
            input: ElasticComputeCloudModel.CreateFleetRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateFleetResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateFleet operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateFleetRequest object being passed to this operation.
     - Returns: The CreateFleetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createFleetSync(
            input: ElasticComputeCloudModel.CreateFleetRequest) throws -> ElasticComputeCloudModel.CreateFleetResult

    /**
     Invokes the CreateFlowLogs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateFlowLogsRequest object being passed to this operation.
         - completion: The CreateFlowLogsResult object or an error will be passed to this 
           callback when the operation is complete. The CreateFlowLogsResult
           object will be validated before being returned to caller.
     */
    func createFlowLogsAsync(
            input: ElasticComputeCloudModel.CreateFlowLogsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateFlowLogsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateFlowLogs operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateFlowLogsRequest object being passed to this operation.
     - Returns: The CreateFlowLogsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createFlowLogsSync(
            input: ElasticComputeCloudModel.CreateFlowLogsRequest) throws -> ElasticComputeCloudModel.CreateFlowLogsResult

    /**
     Invokes the CreateFpgaImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateFpgaImageRequest object being passed to this operation.
         - completion: The CreateFpgaImageResult object or an error will be passed to this 
           callback when the operation is complete. The CreateFpgaImageResult
           object will be validated before being returned to caller.
     */
    func createFpgaImageAsync(
            input: ElasticComputeCloudModel.CreateFpgaImageRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateFpgaImageResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateFpgaImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateFpgaImageRequest object being passed to this operation.
     - Returns: The CreateFpgaImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createFpgaImageSync(
            input: ElasticComputeCloudModel.CreateFpgaImageRequest) throws -> ElasticComputeCloudModel.CreateFpgaImageResult

    /**
     Invokes the CreateImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateImageRequest object being passed to this operation.
         - completion: The CreateImageResult object or an error will be passed to this 
           callback when the operation is complete. The CreateImageResult
           object will be validated before being returned to caller.
     */
    func createImageAsync(
            input: ElasticComputeCloudModel.CreateImageRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateImageResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateImageRequest object being passed to this operation.
     - Returns: The CreateImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createImageSync(
            input: ElasticComputeCloudModel.CreateImageRequest) throws -> ElasticComputeCloudModel.CreateImageResult

    /**
     Invokes the CreateInstanceExportTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateInstanceExportTaskRequest object being passed to this operation.
         - completion: The CreateInstanceExportTaskResult object or an error will be passed to this 
           callback when the operation is complete. The CreateInstanceExportTaskResult
           object will be validated before being returned to caller.
     */
    func createInstanceExportTaskAsync(
            input: ElasticComputeCloudModel.CreateInstanceExportTaskRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateInstanceExportTaskResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateInstanceExportTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateInstanceExportTaskRequest object being passed to this operation.
     - Returns: The CreateInstanceExportTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createInstanceExportTaskSync(
            input: ElasticComputeCloudModel.CreateInstanceExportTaskRequest) throws -> ElasticComputeCloudModel.CreateInstanceExportTaskResult

    /**
     Invokes the CreateInternetGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateInternetGatewayRequest object being passed to this operation.
         - completion: The CreateInternetGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The CreateInternetGatewayResult
           object will be validated before being returned to caller.
     */
    func createInternetGatewayAsync(
            input: ElasticComputeCloudModel.CreateInternetGatewayRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateInternetGatewayResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateInternetGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateInternetGatewayRequest object being passed to this operation.
     - Returns: The CreateInternetGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createInternetGatewaySync(
            input: ElasticComputeCloudModel.CreateInternetGatewayRequest) throws -> ElasticComputeCloudModel.CreateInternetGatewayResult

    /**
     Invokes the CreateKeyPair operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateKeyPairRequest object being passed to this operation.
         - completion: The KeyPair object or an error will be passed to this 
           callback when the operation is complete. The KeyPair
           object will be validated before being returned to caller.
     */
    func createKeyPairAsync(
            input: ElasticComputeCloudModel.CreateKeyPairRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.KeyPair, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateKeyPair operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateKeyPairRequest object being passed to this operation.
     - Returns: The KeyPair object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createKeyPairSync(
            input: ElasticComputeCloudModel.CreateKeyPairRequest) throws -> ElasticComputeCloudModel.KeyPair

    /**
     Invokes the CreateLaunchTemplate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateLaunchTemplateRequest object being passed to this operation.
         - completion: The CreateLaunchTemplateResult object or an error will be passed to this 
           callback when the operation is complete. The CreateLaunchTemplateResult
           object will be validated before being returned to caller.
     */
    func createLaunchTemplateAsync(
            input: ElasticComputeCloudModel.CreateLaunchTemplateRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateLaunchTemplateResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateLaunchTemplate operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateLaunchTemplateRequest object being passed to this operation.
     - Returns: The CreateLaunchTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createLaunchTemplateSync(
            input: ElasticComputeCloudModel.CreateLaunchTemplateRequest) throws -> ElasticComputeCloudModel.CreateLaunchTemplateResult

    /**
     Invokes the CreateLaunchTemplateVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateLaunchTemplateVersionRequest object being passed to this operation.
         - completion: The CreateLaunchTemplateVersionResult object or an error will be passed to this 
           callback when the operation is complete. The CreateLaunchTemplateVersionResult
           object will be validated before being returned to caller.
     */
    func createLaunchTemplateVersionAsync(
            input: ElasticComputeCloudModel.CreateLaunchTemplateVersionRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateLaunchTemplateVersionResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateLaunchTemplateVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateLaunchTemplateVersionRequest object being passed to this operation.
     - Returns: The CreateLaunchTemplateVersionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createLaunchTemplateVersionSync(
            input: ElasticComputeCloudModel.CreateLaunchTemplateVersionRequest) throws -> ElasticComputeCloudModel.CreateLaunchTemplateVersionResult

    /**
     Invokes the CreateLocalGatewayRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateLocalGatewayRouteRequest object being passed to this operation.
         - completion: The CreateLocalGatewayRouteResult object or an error will be passed to this 
           callback when the operation is complete. The CreateLocalGatewayRouteResult
           object will be validated before being returned to caller.
     */
    func createLocalGatewayRouteAsync(
            input: ElasticComputeCloudModel.CreateLocalGatewayRouteRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateLocalGatewayRouteResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateLocalGatewayRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateLocalGatewayRouteRequest object being passed to this operation.
     - Returns: The CreateLocalGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createLocalGatewayRouteSync(
            input: ElasticComputeCloudModel.CreateLocalGatewayRouteRequest) throws -> ElasticComputeCloudModel.CreateLocalGatewayRouteResult

    /**
     Invokes the CreateLocalGatewayRouteTableVpcAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateLocalGatewayRouteTableVpcAssociationRequest object being passed to this operation.
         - completion: The CreateLocalGatewayRouteTableVpcAssociationResult object or an error will be passed to this 
           callback when the operation is complete. The CreateLocalGatewayRouteTableVpcAssociationResult
           object will be validated before being returned to caller.
     */
    func createLocalGatewayRouteTableVpcAssociationAsync(
            input: ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateLocalGatewayRouteTableVpcAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateLocalGatewayRouteTableVpcAssociationRequest object being passed to this operation.
     - Returns: The CreateLocalGatewayRouteTableVpcAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createLocalGatewayRouteTableVpcAssociationSync(
            input: ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationRequest) throws -> ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationResult

    /**
     Invokes the CreateManagedPrefixList operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateManagedPrefixListRequest object being passed to this operation.
         - completion: The CreateManagedPrefixListResult object or an error will be passed to this 
           callback when the operation is complete. The CreateManagedPrefixListResult
           object will be validated before being returned to caller.
     */
    func createManagedPrefixListAsync(
            input: ElasticComputeCloudModel.CreateManagedPrefixListRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateManagedPrefixListResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateManagedPrefixList operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateManagedPrefixListRequest object being passed to this operation.
     - Returns: The CreateManagedPrefixListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createManagedPrefixListSync(
            input: ElasticComputeCloudModel.CreateManagedPrefixListRequest) throws -> ElasticComputeCloudModel.CreateManagedPrefixListResult

    /**
     Invokes the CreateNatGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateNatGatewayRequest object being passed to this operation.
         - completion: The CreateNatGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The CreateNatGatewayResult
           object will be validated before being returned to caller.
     */
    func createNatGatewayAsync(
            input: ElasticComputeCloudModel.CreateNatGatewayRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateNatGatewayResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateNatGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateNatGatewayRequest object being passed to this operation.
     - Returns: The CreateNatGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createNatGatewaySync(
            input: ElasticComputeCloudModel.CreateNatGatewayRequest) throws -> ElasticComputeCloudModel.CreateNatGatewayResult

    /**
     Invokes the CreateNetworkAcl operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateNetworkAclRequest object being passed to this operation.
         - completion: The CreateNetworkAclResult object or an error will be passed to this 
           callback when the operation is complete. The CreateNetworkAclResult
           object will be validated before being returned to caller.
     */
    func createNetworkAclAsync(
            input: ElasticComputeCloudModel.CreateNetworkAclRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateNetworkAclResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateNetworkAcl operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateNetworkAclRequest object being passed to this operation.
     - Returns: The CreateNetworkAclResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createNetworkAclSync(
            input: ElasticComputeCloudModel.CreateNetworkAclRequest) throws -> ElasticComputeCloudModel.CreateNetworkAclResult

    /**
     Invokes the CreateNetworkAclEntry operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateNetworkAclEntryRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func createNetworkAclEntryAsync(
            input: ElasticComputeCloudModel.CreateNetworkAclEntryRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the CreateNetworkAclEntry operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateNetworkAclEntryRequest object being passed to this operation.
     */
    func createNetworkAclEntrySync(
            input: ElasticComputeCloudModel.CreateNetworkAclEntryRequest) throws

    /**
     Invokes the CreateNetworkInsightsPath operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateNetworkInsightsPathRequest object being passed to this operation.
         - completion: The CreateNetworkInsightsPathResult object or an error will be passed to this 
           callback when the operation is complete. The CreateNetworkInsightsPathResult
           object will be validated before being returned to caller.
     */
    func createNetworkInsightsPathAsync(
            input: ElasticComputeCloudModel.CreateNetworkInsightsPathRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateNetworkInsightsPathResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateNetworkInsightsPath operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateNetworkInsightsPathRequest object being passed to this operation.
     - Returns: The CreateNetworkInsightsPathResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createNetworkInsightsPathSync(
            input: ElasticComputeCloudModel.CreateNetworkInsightsPathRequest) throws -> ElasticComputeCloudModel.CreateNetworkInsightsPathResult

    /**
     Invokes the CreateNetworkInterface operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateNetworkInterfaceRequest object being passed to this operation.
         - completion: The CreateNetworkInterfaceResult object or an error will be passed to this 
           callback when the operation is complete. The CreateNetworkInterfaceResult
           object will be validated before being returned to caller.
     */
    func createNetworkInterfaceAsync(
            input: ElasticComputeCloudModel.CreateNetworkInterfaceRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateNetworkInterfaceResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateNetworkInterface operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateNetworkInterfaceRequest object being passed to this operation.
     - Returns: The CreateNetworkInterfaceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createNetworkInterfaceSync(
            input: ElasticComputeCloudModel.CreateNetworkInterfaceRequest) throws -> ElasticComputeCloudModel.CreateNetworkInterfaceResult

    /**
     Invokes the CreateNetworkInterfacePermission operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateNetworkInterfacePermissionRequest object being passed to this operation.
         - completion: The CreateNetworkInterfacePermissionResult object or an error will be passed to this 
           callback when the operation is complete. The CreateNetworkInterfacePermissionResult
           object will be validated before being returned to caller.
     */
    func createNetworkInterfacePermissionAsync(
            input: ElasticComputeCloudModel.CreateNetworkInterfacePermissionRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateNetworkInterfacePermissionResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateNetworkInterfacePermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateNetworkInterfacePermissionRequest object being passed to this operation.
     - Returns: The CreateNetworkInterfacePermissionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createNetworkInterfacePermissionSync(
            input: ElasticComputeCloudModel.CreateNetworkInterfacePermissionRequest) throws -> ElasticComputeCloudModel.CreateNetworkInterfacePermissionResult

    /**
     Invokes the CreatePlacementGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreatePlacementGroupRequest object being passed to this operation.
         - completion: The CreatePlacementGroupResult object or an error will be passed to this 
           callback when the operation is complete. The CreatePlacementGroupResult
           object will be validated before being returned to caller.
     */
    func createPlacementGroupAsync(
            input: ElasticComputeCloudModel.CreatePlacementGroupRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreatePlacementGroupResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreatePlacementGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreatePlacementGroupRequest object being passed to this operation.
     - Returns: The CreatePlacementGroupResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createPlacementGroupSync(
            input: ElasticComputeCloudModel.CreatePlacementGroupRequest) throws -> ElasticComputeCloudModel.CreatePlacementGroupResult

    /**
     Invokes the CreateReservedInstancesListing operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateReservedInstancesListingRequest object being passed to this operation.
         - completion: The CreateReservedInstancesListingResult object or an error will be passed to this 
           callback when the operation is complete. The CreateReservedInstancesListingResult
           object will be validated before being returned to caller.
     */
    func createReservedInstancesListingAsync(
            input: ElasticComputeCloudModel.CreateReservedInstancesListingRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateReservedInstancesListingResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateReservedInstancesListing operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateReservedInstancesListingRequest object being passed to this operation.
     - Returns: The CreateReservedInstancesListingResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createReservedInstancesListingSync(
            input: ElasticComputeCloudModel.CreateReservedInstancesListingRequest) throws -> ElasticComputeCloudModel.CreateReservedInstancesListingResult

    /**
     Invokes the CreateRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateRouteRequest object being passed to this operation.
         - completion: The CreateRouteResult object or an error will be passed to this 
           callback when the operation is complete. The CreateRouteResult
           object will be validated before being returned to caller.
     */
    func createRouteAsync(
            input: ElasticComputeCloudModel.CreateRouteRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateRouteResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateRouteRequest object being passed to this operation.
     - Returns: The CreateRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createRouteSync(
            input: ElasticComputeCloudModel.CreateRouteRequest) throws -> ElasticComputeCloudModel.CreateRouteResult

    /**
     Invokes the CreateRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateRouteTableRequest object being passed to this operation.
         - completion: The CreateRouteTableResult object or an error will be passed to this 
           callback when the operation is complete. The CreateRouteTableResult
           object will be validated before being returned to caller.
     */
    func createRouteTableAsync(
            input: ElasticComputeCloudModel.CreateRouteTableRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateRouteTableResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateRouteTableRequest object being passed to this operation.
     - Returns: The CreateRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createRouteTableSync(
            input: ElasticComputeCloudModel.CreateRouteTableRequest) throws -> ElasticComputeCloudModel.CreateRouteTableResult

    /**
     Invokes the CreateSecurityGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateSecurityGroupRequest object being passed to this operation.
         - completion: The CreateSecurityGroupResult object or an error will be passed to this 
           callback when the operation is complete. The CreateSecurityGroupResult
           object will be validated before being returned to caller.
     */
    func createSecurityGroupAsync(
            input: ElasticComputeCloudModel.CreateSecurityGroupRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateSecurityGroupResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateSecurityGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateSecurityGroupRequest object being passed to this operation.
     - Returns: The CreateSecurityGroupResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createSecurityGroupSync(
            input: ElasticComputeCloudModel.CreateSecurityGroupRequest) throws -> ElasticComputeCloudModel.CreateSecurityGroupResult

    /**
     Invokes the CreateSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateSnapshotRequest object being passed to this operation.
         - completion: The Snapshot object or an error will be passed to this 
           callback when the operation is complete. The Snapshot
           object will be validated before being returned to caller.
     */
    func createSnapshotAsync(
            input: ElasticComputeCloudModel.CreateSnapshotRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.Snapshot, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateSnapshotRequest object being passed to this operation.
     - Returns: The Snapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createSnapshotSync(
            input: ElasticComputeCloudModel.CreateSnapshotRequest) throws -> ElasticComputeCloudModel.Snapshot

    /**
     Invokes the CreateSnapshots operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateSnapshotsRequest object being passed to this operation.
         - completion: The CreateSnapshotsResult object or an error will be passed to this 
           callback when the operation is complete. The CreateSnapshotsResult
           object will be validated before being returned to caller.
     */
    func createSnapshotsAsync(
            input: ElasticComputeCloudModel.CreateSnapshotsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateSnapshotsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateSnapshots operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateSnapshotsRequest object being passed to this operation.
     - Returns: The CreateSnapshotsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createSnapshotsSync(
            input: ElasticComputeCloudModel.CreateSnapshotsRequest) throws -> ElasticComputeCloudModel.CreateSnapshotsResult

    /**
     Invokes the CreateSpotDatafeedSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateSpotDatafeedSubscriptionRequest object being passed to this operation.
         - completion: The CreateSpotDatafeedSubscriptionResult object or an error will be passed to this 
           callback when the operation is complete. The CreateSpotDatafeedSubscriptionResult
           object will be validated before being returned to caller.
     */
    func createSpotDatafeedSubscriptionAsync(
            input: ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateSpotDatafeedSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateSpotDatafeedSubscriptionRequest object being passed to this operation.
     - Returns: The CreateSpotDatafeedSubscriptionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createSpotDatafeedSubscriptionSync(
            input: ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionRequest) throws -> ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionResult

    /**
     Invokes the CreateSubnet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateSubnetRequest object being passed to this operation.
         - completion: The CreateSubnetResult object or an error will be passed to this 
           callback when the operation is complete. The CreateSubnetResult
           object will be validated before being returned to caller.
     */
    func createSubnetAsync(
            input: ElasticComputeCloudModel.CreateSubnetRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateSubnetResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateSubnet operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateSubnetRequest object being passed to this operation.
     - Returns: The CreateSubnetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createSubnetSync(
            input: ElasticComputeCloudModel.CreateSubnetRequest) throws -> ElasticComputeCloudModel.CreateSubnetResult

    /**
     Invokes the CreateTags operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTagsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func createTagsAsync(
            input: ElasticComputeCloudModel.CreateTagsRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the CreateTags operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTagsRequest object being passed to this operation.
     */
    func createTagsSync(
            input: ElasticComputeCloudModel.CreateTagsRequest) throws

    /**
     Invokes the CreateTrafficMirrorFilter operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTrafficMirrorFilterRequest object being passed to this operation.
         - completion: The CreateTrafficMirrorFilterResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTrafficMirrorFilterResult
           object will be validated before being returned to caller.
     */
    func createTrafficMirrorFilterAsync(
            input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTrafficMirrorFilterResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateTrafficMirrorFilter operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTrafficMirrorFilterRequest object being passed to this operation.
     - Returns: The CreateTrafficMirrorFilterResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTrafficMirrorFilterSync(
            input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRequest) throws -> ElasticComputeCloudModel.CreateTrafficMirrorFilterResult

    /**
     Invokes the CreateTrafficMirrorFilterRule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTrafficMirrorFilterRuleRequest object being passed to this operation.
         - completion: The CreateTrafficMirrorFilterRuleResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTrafficMirrorFilterRuleResult
           object will be validated before being returned to caller.
     */
    func createTrafficMirrorFilterRuleAsync(
            input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateTrafficMirrorFilterRule operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTrafficMirrorFilterRuleRequest object being passed to this operation.
     - Returns: The CreateTrafficMirrorFilterRuleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTrafficMirrorFilterRuleSync(
            input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleRequest) throws -> ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleResult

    /**
     Invokes the CreateTrafficMirrorSession operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTrafficMirrorSessionRequest object being passed to this operation.
         - completion: The CreateTrafficMirrorSessionResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTrafficMirrorSessionResult
           object will be validated before being returned to caller.
     */
    func createTrafficMirrorSessionAsync(
            input: ElasticComputeCloudModel.CreateTrafficMirrorSessionRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTrafficMirrorSessionResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateTrafficMirrorSession operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTrafficMirrorSessionRequest object being passed to this operation.
     - Returns: The CreateTrafficMirrorSessionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTrafficMirrorSessionSync(
            input: ElasticComputeCloudModel.CreateTrafficMirrorSessionRequest) throws -> ElasticComputeCloudModel.CreateTrafficMirrorSessionResult

    /**
     Invokes the CreateTrafficMirrorTarget operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTrafficMirrorTargetRequest object being passed to this operation.
         - completion: The CreateTrafficMirrorTargetResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTrafficMirrorTargetResult
           object will be validated before being returned to caller.
     */
    func createTrafficMirrorTargetAsync(
            input: ElasticComputeCloudModel.CreateTrafficMirrorTargetRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTrafficMirrorTargetResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateTrafficMirrorTarget operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTrafficMirrorTargetRequest object being passed to this operation.
     - Returns: The CreateTrafficMirrorTargetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTrafficMirrorTargetSync(
            input: ElasticComputeCloudModel.CreateTrafficMirrorTargetRequest) throws -> ElasticComputeCloudModel.CreateTrafficMirrorTargetResult

    /**
     Invokes the CreateTransitGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTransitGatewayRequest object being passed to this operation.
         - completion: The CreateTransitGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTransitGatewayResult
           object will be validated before being returned to caller.
     */
    func createTransitGatewayAsync(
            input: ElasticComputeCloudModel.CreateTransitGatewayRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateTransitGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewaySync(
            input: ElasticComputeCloudModel.CreateTransitGatewayRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayResult

    /**
     Invokes the CreateTransitGatewayConnect operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTransitGatewayConnectRequest object being passed to this operation.
         - completion: The CreateTransitGatewayConnectResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTransitGatewayConnectResult
           object will be validated before being returned to caller.
     */
    func createTransitGatewayConnectAsync(
            input: ElasticComputeCloudModel.CreateTransitGatewayConnectRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayConnectResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateTransitGatewayConnect operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayConnectRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayConnectResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayConnectSync(
            input: ElasticComputeCloudModel.CreateTransitGatewayConnectRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayConnectResult

    /**
     Invokes the CreateTransitGatewayConnectPeer operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTransitGatewayConnectPeerRequest object being passed to this operation.
         - completion: The CreateTransitGatewayConnectPeerResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTransitGatewayConnectPeerResult
           object will be validated before being returned to caller.
     */
    func createTransitGatewayConnectPeerAsync(
            input: ElasticComputeCloudModel.CreateTransitGatewayConnectPeerRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayConnectPeerResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateTransitGatewayConnectPeer operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayConnectPeerRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayConnectPeerResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayConnectPeerSync(
            input: ElasticComputeCloudModel.CreateTransitGatewayConnectPeerRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayConnectPeerResult

    /**
     Invokes the CreateTransitGatewayMulticastDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTransitGatewayMulticastDomainRequest object being passed to this operation.
         - completion: The CreateTransitGatewayMulticastDomainResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTransitGatewayMulticastDomainResult
           object will be validated before being returned to caller.
     */
    func createTransitGatewayMulticastDomainAsync(
            input: ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateTransitGatewayMulticastDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayMulticastDomainRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayMulticastDomainResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayMulticastDomainSync(
            input: ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainResult

    /**
     Invokes the CreateTransitGatewayPeeringAttachment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTransitGatewayPeeringAttachmentRequest object being passed to this operation.
         - completion: The CreateTransitGatewayPeeringAttachmentResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTransitGatewayPeeringAttachmentResult
           object will be validated before being returned to caller.
     */
    func createTransitGatewayPeeringAttachmentAsync(
            input: ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateTransitGatewayPeeringAttachment operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayPeeringAttachmentRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayPeeringAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayPeeringAttachmentSync(
            input: ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentResult

    /**
     Invokes the CreateTransitGatewayPrefixListReference operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTransitGatewayPrefixListReferenceRequest object being passed to this operation.
         - completion: The CreateTransitGatewayPrefixListReferenceResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTransitGatewayPrefixListReferenceResult
           object will be validated before being returned to caller.
     */
    func createTransitGatewayPrefixListReferenceAsync(
            input: ElasticComputeCloudModel.CreateTransitGatewayPrefixListReferenceRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayPrefixListReferenceResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateTransitGatewayPrefixListReference operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayPrefixListReferenceRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayPrefixListReferenceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayPrefixListReferenceSync(
            input: ElasticComputeCloudModel.CreateTransitGatewayPrefixListReferenceRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayPrefixListReferenceResult

    /**
     Invokes the CreateTransitGatewayRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTransitGatewayRouteRequest object being passed to this operation.
         - completion: The CreateTransitGatewayRouteResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTransitGatewayRouteResult
           object will be validated before being returned to caller.
     */
    func createTransitGatewayRouteAsync(
            input: ElasticComputeCloudModel.CreateTransitGatewayRouteRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayRouteResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateTransitGatewayRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayRouteRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayRouteSync(
            input: ElasticComputeCloudModel.CreateTransitGatewayRouteRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayRouteResult

    /**
     Invokes the CreateTransitGatewayRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTransitGatewayRouteTableRequest object being passed to this operation.
         - completion: The CreateTransitGatewayRouteTableResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTransitGatewayRouteTableResult
           object will be validated before being returned to caller.
     */
    func createTransitGatewayRouteTableAsync(
            input: ElasticComputeCloudModel.CreateTransitGatewayRouteTableRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayRouteTableResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateTransitGatewayRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayRouteTableSync(
            input: ElasticComputeCloudModel.CreateTransitGatewayRouteTableRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayRouteTableResult

    /**
     Invokes the CreateTransitGatewayVpcAttachment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTransitGatewayVpcAttachmentRequest object being passed to this operation.
         - completion: The CreateTransitGatewayVpcAttachmentResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTransitGatewayVpcAttachmentResult
           object will be validated before being returned to caller.
     */
    func createTransitGatewayVpcAttachmentAsync(
            input: ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateTransitGatewayVpcAttachment operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayVpcAttachmentSync(
            input: ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentResult

    /**
     Invokes the CreateVolume operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVolumeRequest object being passed to this operation.
         - completion: The Volume object or an error will be passed to this 
           callback when the operation is complete. The Volume
           object will be validated before being returned to caller.
     */
    func createVolumeAsync(
            input: ElasticComputeCloudModel.CreateVolumeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.Volume, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateVolume operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVolumeRequest object being passed to this operation.
     - Returns: The Volume object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVolumeSync(
            input: ElasticComputeCloudModel.CreateVolumeRequest) throws -> ElasticComputeCloudModel.Volume

    /**
     Invokes the CreateVpc operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpcRequest object being passed to this operation.
         - completion: The CreateVpcResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpcResult
           object will be validated before being returned to caller.
     */
    func createVpcAsync(
            input: ElasticComputeCloudModel.CreateVpcRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateVpcResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateVpc operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpcRequest object being passed to this operation.
     - Returns: The CreateVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpcSync(
            input: ElasticComputeCloudModel.CreateVpcRequest) throws -> ElasticComputeCloudModel.CreateVpcResult

    /**
     Invokes the CreateVpcEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpcEndpointRequest object being passed to this operation.
         - completion: The CreateVpcEndpointResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpcEndpointResult
           object will be validated before being returned to caller.
     */
    func createVpcEndpointAsync(
            input: ElasticComputeCloudModel.CreateVpcEndpointRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateVpcEndpointResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateVpcEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpcEndpointRequest object being passed to this operation.
     - Returns: The CreateVpcEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpcEndpointSync(
            input: ElasticComputeCloudModel.CreateVpcEndpointRequest) throws -> ElasticComputeCloudModel.CreateVpcEndpointResult

    /**
     Invokes the CreateVpcEndpointConnectionNotification operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpcEndpointConnectionNotificationRequest object being passed to this operation.
         - completion: The CreateVpcEndpointConnectionNotificationResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpcEndpointConnectionNotificationResult
           object will be validated before being returned to caller.
     */
    func createVpcEndpointConnectionNotificationAsync(
            input: ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateVpcEndpointConnectionNotification operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpcEndpointConnectionNotificationRequest object being passed to this operation.
     - Returns: The CreateVpcEndpointConnectionNotificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpcEndpointConnectionNotificationSync(
            input: ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationRequest) throws -> ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationResult

    /**
     Invokes the CreateVpcEndpointServiceConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpcEndpointServiceConfigurationRequest object being passed to this operation.
         - completion: The CreateVpcEndpointServiceConfigurationResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpcEndpointServiceConfigurationResult
           object will be validated before being returned to caller.
     */
    func createVpcEndpointServiceConfigurationAsync(
            input: ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateVpcEndpointServiceConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpcEndpointServiceConfigurationRequest object being passed to this operation.
     - Returns: The CreateVpcEndpointServiceConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpcEndpointServiceConfigurationSync(
            input: ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationRequest) throws -> ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationResult

    /**
     Invokes the CreateVpcPeeringConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpcPeeringConnectionRequest object being passed to this operation.
         - completion: The CreateVpcPeeringConnectionResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpcPeeringConnectionResult
           object will be validated before being returned to caller.
     */
    func createVpcPeeringConnectionAsync(
            input: ElasticComputeCloudModel.CreateVpcPeeringConnectionRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateVpcPeeringConnectionResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateVpcPeeringConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: The CreateVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpcPeeringConnectionSync(
            input: ElasticComputeCloudModel.CreateVpcPeeringConnectionRequest) throws -> ElasticComputeCloudModel.CreateVpcPeeringConnectionResult

    /**
     Invokes the CreateVpnConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpnConnectionRequest object being passed to this operation.
         - completion: The CreateVpnConnectionResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpnConnectionResult
           object will be validated before being returned to caller.
     */
    func createVpnConnectionAsync(
            input: ElasticComputeCloudModel.CreateVpnConnectionRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateVpnConnectionResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateVpnConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpnConnectionRequest object being passed to this operation.
     - Returns: The CreateVpnConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpnConnectionSync(
            input: ElasticComputeCloudModel.CreateVpnConnectionRequest) throws -> ElasticComputeCloudModel.CreateVpnConnectionResult

    /**
     Invokes the CreateVpnConnectionRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpnConnectionRouteRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func createVpnConnectionRouteAsync(
            input: ElasticComputeCloudModel.CreateVpnConnectionRouteRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the CreateVpnConnectionRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpnConnectionRouteRequest object being passed to this operation.
     */
    func createVpnConnectionRouteSync(
            input: ElasticComputeCloudModel.CreateVpnConnectionRouteRequest) throws

    /**
     Invokes the CreateVpnGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpnGatewayRequest object being passed to this operation.
         - completion: The CreateVpnGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpnGatewayResult
           object will be validated before being returned to caller.
     */
    func createVpnGatewayAsync(
            input: ElasticComputeCloudModel.CreateVpnGatewayRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateVpnGatewayResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the CreateVpnGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpnGatewayRequest object being passed to this operation.
     - Returns: The CreateVpnGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpnGatewaySync(
            input: ElasticComputeCloudModel.CreateVpnGatewayRequest) throws -> ElasticComputeCloudModel.CreateVpnGatewayResult

    /**
     Invokes the DeleteCarrierGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteCarrierGatewayRequest object being passed to this operation.
         - completion: The DeleteCarrierGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteCarrierGatewayResult
           object will be validated before being returned to caller.
     */
    func deleteCarrierGatewayAsync(
            input: ElasticComputeCloudModel.DeleteCarrierGatewayRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteCarrierGatewayResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteCarrierGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteCarrierGatewayRequest object being passed to this operation.
     - Returns: The DeleteCarrierGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteCarrierGatewaySync(
            input: ElasticComputeCloudModel.DeleteCarrierGatewayRequest) throws -> ElasticComputeCloudModel.DeleteCarrierGatewayResult

    /**
     Invokes the DeleteClientVpnEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteClientVpnEndpointRequest object being passed to this operation.
         - completion: The DeleteClientVpnEndpointResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteClientVpnEndpointResult
           object will be validated before being returned to caller.
     */
    func deleteClientVpnEndpointAsync(
            input: ElasticComputeCloudModel.DeleteClientVpnEndpointRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteClientVpnEndpointResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteClientVpnEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteClientVpnEndpointRequest object being passed to this operation.
     - Returns: The DeleteClientVpnEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteClientVpnEndpointSync(
            input: ElasticComputeCloudModel.DeleteClientVpnEndpointRequest) throws -> ElasticComputeCloudModel.DeleteClientVpnEndpointResult

    /**
     Invokes the DeleteClientVpnRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteClientVpnRouteRequest object being passed to this operation.
         - completion: The DeleteClientVpnRouteResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteClientVpnRouteResult
           object will be validated before being returned to caller.
     */
    func deleteClientVpnRouteAsync(
            input: ElasticComputeCloudModel.DeleteClientVpnRouteRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteClientVpnRouteResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteClientVpnRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteClientVpnRouteRequest object being passed to this operation.
     - Returns: The DeleteClientVpnRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteClientVpnRouteSync(
            input: ElasticComputeCloudModel.DeleteClientVpnRouteRequest) throws -> ElasticComputeCloudModel.DeleteClientVpnRouteResult

    /**
     Invokes the DeleteCustomerGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteCustomerGatewayRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteCustomerGatewayAsync(
            input: ElasticComputeCloudModel.DeleteCustomerGatewayRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the DeleteCustomerGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteCustomerGatewayRequest object being passed to this operation.
     */
    func deleteCustomerGatewaySync(
            input: ElasticComputeCloudModel.DeleteCustomerGatewayRequest) throws

    /**
     Invokes the DeleteDhcpOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDhcpOptionsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteDhcpOptionsAsync(
            input: ElasticComputeCloudModel.DeleteDhcpOptionsRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the DeleteDhcpOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDhcpOptionsRequest object being passed to this operation.
     */
    func deleteDhcpOptionsSync(
            input: ElasticComputeCloudModel.DeleteDhcpOptionsRequest) throws

    /**
     Invokes the DeleteEgressOnlyInternetGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteEgressOnlyInternetGatewayRequest object being passed to this operation.
         - completion: The DeleteEgressOnlyInternetGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteEgressOnlyInternetGatewayResult
           object will be validated before being returned to caller.
     */
    func deleteEgressOnlyInternetGatewayAsync(
            input: ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteEgressOnlyInternetGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteEgressOnlyInternetGatewayRequest object being passed to this operation.
     - Returns: The DeleteEgressOnlyInternetGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteEgressOnlyInternetGatewaySync(
            input: ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayRequest) throws -> ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayResult

    /**
     Invokes the DeleteFleets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteFleetsRequest object being passed to this operation.
         - completion: The DeleteFleetsResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteFleetsResult
           object will be validated before being returned to caller.
     */
    func deleteFleetsAsync(
            input: ElasticComputeCloudModel.DeleteFleetsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteFleetsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteFleets operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteFleetsRequest object being passed to this operation.
     - Returns: The DeleteFleetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteFleetsSync(
            input: ElasticComputeCloudModel.DeleteFleetsRequest) throws -> ElasticComputeCloudModel.DeleteFleetsResult

    /**
     Invokes the DeleteFlowLogs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteFlowLogsRequest object being passed to this operation.
         - completion: The DeleteFlowLogsResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteFlowLogsResult
           object will be validated before being returned to caller.
     */
    func deleteFlowLogsAsync(
            input: ElasticComputeCloudModel.DeleteFlowLogsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteFlowLogsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteFlowLogs operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteFlowLogsRequest object being passed to this operation.
     - Returns: The DeleteFlowLogsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteFlowLogsSync(
            input: ElasticComputeCloudModel.DeleteFlowLogsRequest) throws -> ElasticComputeCloudModel.DeleteFlowLogsResult

    /**
     Invokes the DeleteFpgaImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteFpgaImageRequest object being passed to this operation.
         - completion: The DeleteFpgaImageResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteFpgaImageResult
           object will be validated before being returned to caller.
     */
    func deleteFpgaImageAsync(
            input: ElasticComputeCloudModel.DeleteFpgaImageRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteFpgaImageResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteFpgaImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteFpgaImageRequest object being passed to this operation.
     - Returns: The DeleteFpgaImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteFpgaImageSync(
            input: ElasticComputeCloudModel.DeleteFpgaImageRequest) throws -> ElasticComputeCloudModel.DeleteFpgaImageResult

    /**
     Invokes the DeleteInternetGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteInternetGatewayRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteInternetGatewayAsync(
            input: ElasticComputeCloudModel.DeleteInternetGatewayRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the DeleteInternetGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteInternetGatewayRequest object being passed to this operation.
     */
    func deleteInternetGatewaySync(
            input: ElasticComputeCloudModel.DeleteInternetGatewayRequest) throws

    /**
     Invokes the DeleteKeyPair operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteKeyPairRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteKeyPairAsync(
            input: ElasticComputeCloudModel.DeleteKeyPairRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the DeleteKeyPair operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteKeyPairRequest object being passed to this operation.
     */
    func deleteKeyPairSync(
            input: ElasticComputeCloudModel.DeleteKeyPairRequest) throws

    /**
     Invokes the DeleteLaunchTemplate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteLaunchTemplateRequest object being passed to this operation.
         - completion: The DeleteLaunchTemplateResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteLaunchTemplateResult
           object will be validated before being returned to caller.
     */
    func deleteLaunchTemplateAsync(
            input: ElasticComputeCloudModel.DeleteLaunchTemplateRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteLaunchTemplateResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteLaunchTemplate operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteLaunchTemplateRequest object being passed to this operation.
     - Returns: The DeleteLaunchTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteLaunchTemplateSync(
            input: ElasticComputeCloudModel.DeleteLaunchTemplateRequest) throws -> ElasticComputeCloudModel.DeleteLaunchTemplateResult

    /**
     Invokes the DeleteLaunchTemplateVersions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteLaunchTemplateVersionsRequest object being passed to this operation.
         - completion: The DeleteLaunchTemplateVersionsResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteLaunchTemplateVersionsResult
           object will be validated before being returned to caller.
     */
    func deleteLaunchTemplateVersionsAsync(
            input: ElasticComputeCloudModel.DeleteLaunchTemplateVersionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteLaunchTemplateVersionsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteLaunchTemplateVersions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteLaunchTemplateVersionsRequest object being passed to this operation.
     - Returns: The DeleteLaunchTemplateVersionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteLaunchTemplateVersionsSync(
            input: ElasticComputeCloudModel.DeleteLaunchTemplateVersionsRequest) throws -> ElasticComputeCloudModel.DeleteLaunchTemplateVersionsResult

    /**
     Invokes the DeleteLocalGatewayRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteLocalGatewayRouteRequest object being passed to this operation.
         - completion: The DeleteLocalGatewayRouteResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteLocalGatewayRouteResult
           object will be validated before being returned to caller.
     */
    func deleteLocalGatewayRouteAsync(
            input: ElasticComputeCloudModel.DeleteLocalGatewayRouteRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteLocalGatewayRouteResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteLocalGatewayRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteLocalGatewayRouteRequest object being passed to this operation.
     - Returns: The DeleteLocalGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteLocalGatewayRouteSync(
            input: ElasticComputeCloudModel.DeleteLocalGatewayRouteRequest) throws -> ElasticComputeCloudModel.DeleteLocalGatewayRouteResult

    /**
     Invokes the DeleteLocalGatewayRouteTableVpcAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteLocalGatewayRouteTableVpcAssociationRequest object being passed to this operation.
         - completion: The DeleteLocalGatewayRouteTableVpcAssociationResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteLocalGatewayRouteTableVpcAssociationResult
           object will be validated before being returned to caller.
     */
    func deleteLocalGatewayRouteTableVpcAssociationAsync(
            input: ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteLocalGatewayRouteTableVpcAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteLocalGatewayRouteTableVpcAssociationRequest object being passed to this operation.
     - Returns: The DeleteLocalGatewayRouteTableVpcAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteLocalGatewayRouteTableVpcAssociationSync(
            input: ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationRequest) throws -> ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationResult

    /**
     Invokes the DeleteManagedPrefixList operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteManagedPrefixListRequest object being passed to this operation.
         - completion: The DeleteManagedPrefixListResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteManagedPrefixListResult
           object will be validated before being returned to caller.
     */
    func deleteManagedPrefixListAsync(
            input: ElasticComputeCloudModel.DeleteManagedPrefixListRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteManagedPrefixListResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteManagedPrefixList operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteManagedPrefixListRequest object being passed to this operation.
     - Returns: The DeleteManagedPrefixListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteManagedPrefixListSync(
            input: ElasticComputeCloudModel.DeleteManagedPrefixListRequest) throws -> ElasticComputeCloudModel.DeleteManagedPrefixListResult

    /**
     Invokes the DeleteNatGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteNatGatewayRequest object being passed to this operation.
         - completion: The DeleteNatGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteNatGatewayResult
           object will be validated before being returned to caller.
     */
    func deleteNatGatewayAsync(
            input: ElasticComputeCloudModel.DeleteNatGatewayRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteNatGatewayResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteNatGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteNatGatewayRequest object being passed to this operation.
     - Returns: The DeleteNatGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteNatGatewaySync(
            input: ElasticComputeCloudModel.DeleteNatGatewayRequest) throws -> ElasticComputeCloudModel.DeleteNatGatewayResult

    /**
     Invokes the DeleteNetworkAcl operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteNetworkAclRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteNetworkAclAsync(
            input: ElasticComputeCloudModel.DeleteNetworkAclRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the DeleteNetworkAcl operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteNetworkAclRequest object being passed to this operation.
     */
    func deleteNetworkAclSync(
            input: ElasticComputeCloudModel.DeleteNetworkAclRequest) throws

    /**
     Invokes the DeleteNetworkAclEntry operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteNetworkAclEntryRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteNetworkAclEntryAsync(
            input: ElasticComputeCloudModel.DeleteNetworkAclEntryRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the DeleteNetworkAclEntry operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteNetworkAclEntryRequest object being passed to this operation.
     */
    func deleteNetworkAclEntrySync(
            input: ElasticComputeCloudModel.DeleteNetworkAclEntryRequest) throws

    /**
     Invokes the DeleteNetworkInsightsAnalysis operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteNetworkInsightsAnalysisRequest object being passed to this operation.
         - completion: The DeleteNetworkInsightsAnalysisResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteNetworkInsightsAnalysisResult
           object will be validated before being returned to caller.
     */
    func deleteNetworkInsightsAnalysisAsync(
            input: ElasticComputeCloudModel.DeleteNetworkInsightsAnalysisRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteNetworkInsightsAnalysisResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteNetworkInsightsAnalysis operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteNetworkInsightsAnalysisRequest object being passed to this operation.
     - Returns: The DeleteNetworkInsightsAnalysisResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteNetworkInsightsAnalysisSync(
            input: ElasticComputeCloudModel.DeleteNetworkInsightsAnalysisRequest) throws -> ElasticComputeCloudModel.DeleteNetworkInsightsAnalysisResult

    /**
     Invokes the DeleteNetworkInsightsPath operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteNetworkInsightsPathRequest object being passed to this operation.
         - completion: The DeleteNetworkInsightsPathResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteNetworkInsightsPathResult
           object will be validated before being returned to caller.
     */
    func deleteNetworkInsightsPathAsync(
            input: ElasticComputeCloudModel.DeleteNetworkInsightsPathRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteNetworkInsightsPathResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteNetworkInsightsPath operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteNetworkInsightsPathRequest object being passed to this operation.
     - Returns: The DeleteNetworkInsightsPathResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteNetworkInsightsPathSync(
            input: ElasticComputeCloudModel.DeleteNetworkInsightsPathRequest) throws -> ElasticComputeCloudModel.DeleteNetworkInsightsPathResult

    /**
     Invokes the DeleteNetworkInterface operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteNetworkInterfaceRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteNetworkInterfaceAsync(
            input: ElasticComputeCloudModel.DeleteNetworkInterfaceRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the DeleteNetworkInterface operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteNetworkInterfaceRequest object being passed to this operation.
     */
    func deleteNetworkInterfaceSync(
            input: ElasticComputeCloudModel.DeleteNetworkInterfaceRequest) throws

    /**
     Invokes the DeleteNetworkInterfacePermission operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteNetworkInterfacePermissionRequest object being passed to this operation.
         - completion: The DeleteNetworkInterfacePermissionResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteNetworkInterfacePermissionResult
           object will be validated before being returned to caller.
     */
    func deleteNetworkInterfacePermissionAsync(
            input: ElasticComputeCloudModel.DeleteNetworkInterfacePermissionRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteNetworkInterfacePermissionResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteNetworkInterfacePermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteNetworkInterfacePermissionRequest object being passed to this operation.
     - Returns: The DeleteNetworkInterfacePermissionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteNetworkInterfacePermissionSync(
            input: ElasticComputeCloudModel.DeleteNetworkInterfacePermissionRequest) throws -> ElasticComputeCloudModel.DeleteNetworkInterfacePermissionResult

    /**
     Invokes the DeletePlacementGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeletePlacementGroupRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deletePlacementGroupAsync(
            input: ElasticComputeCloudModel.DeletePlacementGroupRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the DeletePlacementGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeletePlacementGroupRequest object being passed to this operation.
     */
    func deletePlacementGroupSync(
            input: ElasticComputeCloudModel.DeletePlacementGroupRequest) throws

    /**
     Invokes the DeleteQueuedReservedInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteQueuedReservedInstancesRequest object being passed to this operation.
         - completion: The DeleteQueuedReservedInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteQueuedReservedInstancesResult
           object will be validated before being returned to caller.
     */
    func deleteQueuedReservedInstancesAsync(
            input: ElasticComputeCloudModel.DeleteQueuedReservedInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteQueuedReservedInstancesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteQueuedReservedInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteQueuedReservedInstancesRequest object being passed to this operation.
     - Returns: The DeleteQueuedReservedInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteQueuedReservedInstancesSync(
            input: ElasticComputeCloudModel.DeleteQueuedReservedInstancesRequest) throws -> ElasticComputeCloudModel.DeleteQueuedReservedInstancesResult

    /**
     Invokes the DeleteRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteRouteRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteRouteAsync(
            input: ElasticComputeCloudModel.DeleteRouteRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the DeleteRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteRouteRequest object being passed to this operation.
     */
    func deleteRouteSync(
            input: ElasticComputeCloudModel.DeleteRouteRequest) throws

    /**
     Invokes the DeleteRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteRouteTableRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteRouteTableAsync(
            input: ElasticComputeCloudModel.DeleteRouteTableRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the DeleteRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteRouteTableRequest object being passed to this operation.
     */
    func deleteRouteTableSync(
            input: ElasticComputeCloudModel.DeleteRouteTableRequest) throws

    /**
     Invokes the DeleteSecurityGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteSecurityGroupRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteSecurityGroupAsync(
            input: ElasticComputeCloudModel.DeleteSecurityGroupRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the DeleteSecurityGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteSecurityGroupRequest object being passed to this operation.
     */
    func deleteSecurityGroupSync(
            input: ElasticComputeCloudModel.DeleteSecurityGroupRequest) throws

    /**
     Invokes the DeleteSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteSnapshotRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteSnapshotAsync(
            input: ElasticComputeCloudModel.DeleteSnapshotRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the DeleteSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteSnapshotRequest object being passed to this operation.
     */
    func deleteSnapshotSync(
            input: ElasticComputeCloudModel.DeleteSnapshotRequest) throws

    /**
     Invokes the DeleteSpotDatafeedSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteSpotDatafeedSubscriptionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteSpotDatafeedSubscriptionAsync(
            input: ElasticComputeCloudModel.DeleteSpotDatafeedSubscriptionRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the DeleteSpotDatafeedSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteSpotDatafeedSubscriptionRequest object being passed to this operation.
     */
    func deleteSpotDatafeedSubscriptionSync(
            input: ElasticComputeCloudModel.DeleteSpotDatafeedSubscriptionRequest) throws

    /**
     Invokes the DeleteSubnet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteSubnetRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteSubnetAsync(
            input: ElasticComputeCloudModel.DeleteSubnetRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the DeleteSubnet operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteSubnetRequest object being passed to this operation.
     */
    func deleteSubnetSync(
            input: ElasticComputeCloudModel.DeleteSubnetRequest) throws

    /**
     Invokes the DeleteTags operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTagsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteTagsAsync(
            input: ElasticComputeCloudModel.DeleteTagsRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the DeleteTags operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTagsRequest object being passed to this operation.
     */
    func deleteTagsSync(
            input: ElasticComputeCloudModel.DeleteTagsRequest) throws

    /**
     Invokes the DeleteTrafficMirrorFilter operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTrafficMirrorFilterRequest object being passed to this operation.
         - completion: The DeleteTrafficMirrorFilterResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTrafficMirrorFilterResult
           object will be validated before being returned to caller.
     */
    func deleteTrafficMirrorFilterAsync(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTrafficMirrorFilterResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteTrafficMirrorFilter operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTrafficMirrorFilterRequest object being passed to this operation.
     - Returns: The DeleteTrafficMirrorFilterResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTrafficMirrorFilterSync(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRequest) throws -> ElasticComputeCloudModel.DeleteTrafficMirrorFilterResult

    /**
     Invokes the DeleteTrafficMirrorFilterRule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTrafficMirrorFilterRuleRequest object being passed to this operation.
         - completion: The DeleteTrafficMirrorFilterRuleResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTrafficMirrorFilterRuleResult
           object will be validated before being returned to caller.
     */
    func deleteTrafficMirrorFilterRuleAsync(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteTrafficMirrorFilterRule operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTrafficMirrorFilterRuleRequest object being passed to this operation.
     - Returns: The DeleteTrafficMirrorFilterRuleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTrafficMirrorFilterRuleSync(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleRequest) throws -> ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleResult

    /**
     Invokes the DeleteTrafficMirrorSession operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTrafficMirrorSessionRequest object being passed to this operation.
         - completion: The DeleteTrafficMirrorSessionResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTrafficMirrorSessionResult
           object will be validated before being returned to caller.
     */
    func deleteTrafficMirrorSessionAsync(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorSessionRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTrafficMirrorSessionResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteTrafficMirrorSession operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTrafficMirrorSessionRequest object being passed to this operation.
     - Returns: The DeleteTrafficMirrorSessionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTrafficMirrorSessionSync(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorSessionRequest) throws -> ElasticComputeCloudModel.DeleteTrafficMirrorSessionResult

    /**
     Invokes the DeleteTrafficMirrorTarget operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTrafficMirrorTargetRequest object being passed to this operation.
         - completion: The DeleteTrafficMirrorTargetResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTrafficMirrorTargetResult
           object will be validated before being returned to caller.
     */
    func deleteTrafficMirrorTargetAsync(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorTargetRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTrafficMirrorTargetResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteTrafficMirrorTarget operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTrafficMirrorTargetRequest object being passed to this operation.
     - Returns: The DeleteTrafficMirrorTargetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTrafficMirrorTargetSync(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorTargetRequest) throws -> ElasticComputeCloudModel.DeleteTrafficMirrorTargetResult

    /**
     Invokes the DeleteTransitGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTransitGatewayRequest object being passed to this operation.
         - completion: The DeleteTransitGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTransitGatewayResult
           object will be validated before being returned to caller.
     */
    func deleteTransitGatewayAsync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteTransitGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewaySync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayResult

    /**
     Invokes the DeleteTransitGatewayConnect operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTransitGatewayConnectRequest object being passed to this operation.
         - completion: The DeleteTransitGatewayConnectResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTransitGatewayConnectResult
           object will be validated before being returned to caller.
     */
    func deleteTransitGatewayConnectAsync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayConnectRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayConnectResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteTransitGatewayConnect operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayConnectRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayConnectResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayConnectSync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayConnectRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayConnectResult

    /**
     Invokes the DeleteTransitGatewayConnectPeer operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTransitGatewayConnectPeerRequest object being passed to this operation.
         - completion: The DeleteTransitGatewayConnectPeerResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTransitGatewayConnectPeerResult
           object will be validated before being returned to caller.
     */
    func deleteTransitGatewayConnectPeerAsync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayConnectPeerRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayConnectPeerResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteTransitGatewayConnectPeer operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayConnectPeerRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayConnectPeerResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayConnectPeerSync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayConnectPeerRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayConnectPeerResult

    /**
     Invokes the DeleteTransitGatewayMulticastDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTransitGatewayMulticastDomainRequest object being passed to this operation.
         - completion: The DeleteTransitGatewayMulticastDomainResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTransitGatewayMulticastDomainResult
           object will be validated before being returned to caller.
     */
    func deleteTransitGatewayMulticastDomainAsync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteTransitGatewayMulticastDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayMulticastDomainRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayMulticastDomainResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayMulticastDomainSync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainResult

    /**
     Invokes the DeleteTransitGatewayPeeringAttachment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTransitGatewayPeeringAttachmentRequest object being passed to this operation.
         - completion: The DeleteTransitGatewayPeeringAttachmentResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTransitGatewayPeeringAttachmentResult
           object will be validated before being returned to caller.
     */
    func deleteTransitGatewayPeeringAttachmentAsync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteTransitGatewayPeeringAttachment operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayPeeringAttachmentRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayPeeringAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayPeeringAttachmentSync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentResult

    /**
     Invokes the DeleteTransitGatewayPrefixListReference operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTransitGatewayPrefixListReferenceRequest object being passed to this operation.
         - completion: The DeleteTransitGatewayPrefixListReferenceResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTransitGatewayPrefixListReferenceResult
           object will be validated before being returned to caller.
     */
    func deleteTransitGatewayPrefixListReferenceAsync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayPrefixListReferenceRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayPrefixListReferenceResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteTransitGatewayPrefixListReference operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayPrefixListReferenceRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayPrefixListReferenceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayPrefixListReferenceSync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayPrefixListReferenceRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayPrefixListReferenceResult

    /**
     Invokes the DeleteTransitGatewayRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTransitGatewayRouteRequest object being passed to this operation.
         - completion: The DeleteTransitGatewayRouteResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTransitGatewayRouteResult
           object will be validated before being returned to caller.
     */
    func deleteTransitGatewayRouteAsync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayRouteRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayRouteResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteTransitGatewayRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayRouteRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayRouteSync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayRouteRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayRouteResult

    /**
     Invokes the DeleteTransitGatewayRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTransitGatewayRouteTableRequest object being passed to this operation.
         - completion: The DeleteTransitGatewayRouteTableResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTransitGatewayRouteTableResult
           object will be validated before being returned to caller.
     */
    func deleteTransitGatewayRouteTableAsync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayRouteTableRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayRouteTableResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteTransitGatewayRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayRouteTableSync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayRouteTableRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayRouteTableResult

    /**
     Invokes the DeleteTransitGatewayVpcAttachment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTransitGatewayVpcAttachmentRequest object being passed to this operation.
         - completion: The DeleteTransitGatewayVpcAttachmentResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTransitGatewayVpcAttachmentResult
           object will be validated before being returned to caller.
     */
    func deleteTransitGatewayVpcAttachmentAsync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteTransitGatewayVpcAttachment operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayVpcAttachmentSync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentResult

    /**
     Invokes the DeleteVolume operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVolumeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteVolumeAsync(
            input: ElasticComputeCloudModel.DeleteVolumeRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the DeleteVolume operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVolumeRequest object being passed to this operation.
     */
    func deleteVolumeSync(
            input: ElasticComputeCloudModel.DeleteVolumeRequest) throws

    /**
     Invokes the DeleteVpc operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpcRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteVpcAsync(
            input: ElasticComputeCloudModel.DeleteVpcRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the DeleteVpc operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpcRequest object being passed to this operation.
     */
    func deleteVpcSync(
            input: ElasticComputeCloudModel.DeleteVpcRequest) throws

    /**
     Invokes the DeleteVpcEndpointConnectionNotifications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpcEndpointConnectionNotificationsRequest object being passed to this operation.
         - completion: The DeleteVpcEndpointConnectionNotificationsResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteVpcEndpointConnectionNotificationsResult
           object will be validated before being returned to caller.
     */
    func deleteVpcEndpointConnectionNotificationsAsync(
            input: ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteVpcEndpointConnectionNotifications operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpcEndpointConnectionNotificationsRequest object being passed to this operation.
     - Returns: The DeleteVpcEndpointConnectionNotificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteVpcEndpointConnectionNotificationsSync(
            input: ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsRequest) throws -> ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsResult

    /**
     Invokes the DeleteVpcEndpointServiceConfigurations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpcEndpointServiceConfigurationsRequest object being passed to this operation.
         - completion: The DeleteVpcEndpointServiceConfigurationsResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteVpcEndpointServiceConfigurationsResult
           object will be validated before being returned to caller.
     */
    func deleteVpcEndpointServiceConfigurationsAsync(
            input: ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteVpcEndpointServiceConfigurations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpcEndpointServiceConfigurationsRequest object being passed to this operation.
     - Returns: The DeleteVpcEndpointServiceConfigurationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteVpcEndpointServiceConfigurationsSync(
            input: ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsRequest) throws -> ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsResult

    /**
     Invokes the DeleteVpcEndpoints operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpcEndpointsRequest object being passed to this operation.
         - completion: The DeleteVpcEndpointsResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteVpcEndpointsResult
           object will be validated before being returned to caller.
     */
    func deleteVpcEndpointsAsync(
            input: ElasticComputeCloudModel.DeleteVpcEndpointsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteVpcEndpointsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteVpcEndpoints operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpcEndpointsRequest object being passed to this operation.
     - Returns: The DeleteVpcEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteVpcEndpointsSync(
            input: ElasticComputeCloudModel.DeleteVpcEndpointsRequest) throws -> ElasticComputeCloudModel.DeleteVpcEndpointsResult

    /**
     Invokes the DeleteVpcPeeringConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpcPeeringConnectionRequest object being passed to this operation.
         - completion: The DeleteVpcPeeringConnectionResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteVpcPeeringConnectionResult
           object will be validated before being returned to caller.
     */
    func deleteVpcPeeringConnectionAsync(
            input: ElasticComputeCloudModel.DeleteVpcPeeringConnectionRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteVpcPeeringConnectionResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeleteVpcPeeringConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: The DeleteVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteVpcPeeringConnectionSync(
            input: ElasticComputeCloudModel.DeleteVpcPeeringConnectionRequest) throws -> ElasticComputeCloudModel.DeleteVpcPeeringConnectionResult

    /**
     Invokes the DeleteVpnConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpnConnectionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteVpnConnectionAsync(
            input: ElasticComputeCloudModel.DeleteVpnConnectionRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the DeleteVpnConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpnConnectionRequest object being passed to this operation.
     */
    func deleteVpnConnectionSync(
            input: ElasticComputeCloudModel.DeleteVpnConnectionRequest) throws

    /**
     Invokes the DeleteVpnConnectionRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpnConnectionRouteRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteVpnConnectionRouteAsync(
            input: ElasticComputeCloudModel.DeleteVpnConnectionRouteRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the DeleteVpnConnectionRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpnConnectionRouteRequest object being passed to this operation.
     */
    func deleteVpnConnectionRouteSync(
            input: ElasticComputeCloudModel.DeleteVpnConnectionRouteRequest) throws

    /**
     Invokes the DeleteVpnGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpnGatewayRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteVpnGatewayAsync(
            input: ElasticComputeCloudModel.DeleteVpnGatewayRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the DeleteVpnGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpnGatewayRequest object being passed to this operation.
     */
    func deleteVpnGatewaySync(
            input: ElasticComputeCloudModel.DeleteVpnGatewayRequest) throws

    /**
     Invokes the DeprovisionByoipCidr operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeprovisionByoipCidrRequest object being passed to this operation.
         - completion: The DeprovisionByoipCidrResult object or an error will be passed to this 
           callback when the operation is complete. The DeprovisionByoipCidrResult
           object will be validated before being returned to caller.
     */
    func deprovisionByoipCidrAsync(
            input: ElasticComputeCloudModel.DeprovisionByoipCidrRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeprovisionByoipCidrResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeprovisionByoipCidr operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeprovisionByoipCidrRequest object being passed to this operation.
     - Returns: The DeprovisionByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deprovisionByoipCidrSync(
            input: ElasticComputeCloudModel.DeprovisionByoipCidrRequest) throws -> ElasticComputeCloudModel.DeprovisionByoipCidrResult

    /**
     Invokes the DeregisterImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeregisterImageRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deregisterImageAsync(
            input: ElasticComputeCloudModel.DeregisterImageRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the DeregisterImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterImageRequest object being passed to this operation.
     */
    func deregisterImageSync(
            input: ElasticComputeCloudModel.DeregisterImageRequest) throws

    /**
     Invokes the DeregisterInstanceEventNotificationAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeregisterInstanceEventNotificationAttributesRequest object being passed to this operation.
         - completion: The DeregisterInstanceEventNotificationAttributesResult object or an error will be passed to this 
           callback when the operation is complete. The DeregisterInstanceEventNotificationAttributesResult
           object will be validated before being returned to caller.
     */
    func deregisterInstanceEventNotificationAttributesAsync(
            input: ElasticComputeCloudModel.DeregisterInstanceEventNotificationAttributesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeregisterInstanceEventNotificationAttributesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeregisterInstanceEventNotificationAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterInstanceEventNotificationAttributesRequest object being passed to this operation.
     - Returns: The DeregisterInstanceEventNotificationAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deregisterInstanceEventNotificationAttributesSync(
            input: ElasticComputeCloudModel.DeregisterInstanceEventNotificationAttributesRequest) throws -> ElasticComputeCloudModel.DeregisterInstanceEventNotificationAttributesResult

    /**
     Invokes the DeregisterTransitGatewayMulticastGroupMembers operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeregisterTransitGatewayMulticastGroupMembersRequest object being passed to this operation.
         - completion: The DeregisterTransitGatewayMulticastGroupMembersResult object or an error will be passed to this 
           callback when the operation is complete. The DeregisterTransitGatewayMulticastGroupMembersResult
           object will be validated before being returned to caller.
     */
    func deregisterTransitGatewayMulticastGroupMembersAsync(
            input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeregisterTransitGatewayMulticastGroupMembers operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterTransitGatewayMulticastGroupMembersRequest object being passed to this operation.
     - Returns: The DeregisterTransitGatewayMulticastGroupMembersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deregisterTransitGatewayMulticastGroupMembersSync(
            input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersRequest) throws -> ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersResult

    /**
     Invokes the DeregisterTransitGatewayMulticastGroupSources operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeregisterTransitGatewayMulticastGroupSourcesRequest object being passed to this operation.
         - completion: The DeregisterTransitGatewayMulticastGroupSourcesResult object or an error will be passed to this 
           callback when the operation is complete. The DeregisterTransitGatewayMulticastGroupSourcesResult
           object will be validated before being returned to caller.
     */
    func deregisterTransitGatewayMulticastGroupSourcesAsync(
            input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DeregisterTransitGatewayMulticastGroupSources operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterTransitGatewayMulticastGroupSourcesRequest object being passed to this operation.
     - Returns: The DeregisterTransitGatewayMulticastGroupSourcesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deregisterTransitGatewayMulticastGroupSourcesSync(
            input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesRequest) throws -> ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesResult

    /**
     Invokes the DescribeAccountAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAccountAttributesRequest object being passed to this operation.
         - completion: The DescribeAccountAttributesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeAccountAttributesResult
           object will be validated before being returned to caller.
     */
    func describeAccountAttributesAsync(
            input: ElasticComputeCloudModel.DescribeAccountAttributesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeAccountAttributesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeAccountAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAccountAttributesRequest object being passed to this operation.
     - Returns: The DescribeAccountAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAccountAttributesSync(
            input: ElasticComputeCloudModel.DescribeAccountAttributesRequest) throws -> ElasticComputeCloudModel.DescribeAccountAttributesResult

    /**
     Invokes the DescribeAddresses operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAddressesRequest object being passed to this operation.
         - completion: The DescribeAddressesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeAddressesResult
           object will be validated before being returned to caller.
     */
    func describeAddressesAsync(
            input: ElasticComputeCloudModel.DescribeAddressesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeAddressesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeAddresses operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAddressesRequest object being passed to this operation.
     - Returns: The DescribeAddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAddressesSync(
            input: ElasticComputeCloudModel.DescribeAddressesRequest) throws -> ElasticComputeCloudModel.DescribeAddressesResult

    /**
     Invokes the DescribeAddressesAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAddressesAttributeRequest object being passed to this operation.
         - completion: The DescribeAddressesAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeAddressesAttributeResult
           object will be validated before being returned to caller.
     */
    func describeAddressesAttributeAsync(
            input: ElasticComputeCloudModel.DescribeAddressesAttributeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeAddressesAttributeResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeAddressesAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAddressesAttributeRequest object being passed to this operation.
     - Returns: The DescribeAddressesAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAddressesAttributeSync(
            input: ElasticComputeCloudModel.DescribeAddressesAttributeRequest) throws -> ElasticComputeCloudModel.DescribeAddressesAttributeResult

    /**
     Invokes the DescribeAggregateIdFormat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAggregateIdFormatRequest object being passed to this operation.
         - completion: The DescribeAggregateIdFormatResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeAggregateIdFormatResult
           object will be validated before being returned to caller.
     */
    func describeAggregateIdFormatAsync(
            input: ElasticComputeCloudModel.DescribeAggregateIdFormatRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeAggregateIdFormatResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeAggregateIdFormat operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAggregateIdFormatRequest object being passed to this operation.
     - Returns: The DescribeAggregateIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAggregateIdFormatSync(
            input: ElasticComputeCloudModel.DescribeAggregateIdFormatRequest) throws -> ElasticComputeCloudModel.DescribeAggregateIdFormatResult

    /**
     Invokes the DescribeAvailabilityZones operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAvailabilityZonesRequest object being passed to this operation.
         - completion: The DescribeAvailabilityZonesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeAvailabilityZonesResult
           object will be validated before being returned to caller.
     */
    func describeAvailabilityZonesAsync(
            input: ElasticComputeCloudModel.DescribeAvailabilityZonesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeAvailabilityZonesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeAvailabilityZones operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAvailabilityZonesRequest object being passed to this operation.
     - Returns: The DescribeAvailabilityZonesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAvailabilityZonesSync(
            input: ElasticComputeCloudModel.DescribeAvailabilityZonesRequest) throws -> ElasticComputeCloudModel.DescribeAvailabilityZonesResult

    /**
     Invokes the DescribeBundleTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeBundleTasksRequest object being passed to this operation.
         - completion: The DescribeBundleTasksResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeBundleTasksResult
           object will be validated before being returned to caller.
     */
    func describeBundleTasksAsync(
            input: ElasticComputeCloudModel.DescribeBundleTasksRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeBundleTasksResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeBundleTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeBundleTasksRequest object being passed to this operation.
     - Returns: The DescribeBundleTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeBundleTasksSync(
            input: ElasticComputeCloudModel.DescribeBundleTasksRequest) throws -> ElasticComputeCloudModel.DescribeBundleTasksResult

    /**
     Invokes the DescribeByoipCidrs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeByoipCidrsRequest object being passed to this operation.
         - completion: The DescribeByoipCidrsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeByoipCidrsResult
           object will be validated before being returned to caller.
     */
    func describeByoipCidrsAsync(
            input: ElasticComputeCloudModel.DescribeByoipCidrsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeByoipCidrsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeByoipCidrs operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeByoipCidrsRequest object being passed to this operation.
     - Returns: The DescribeByoipCidrsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeByoipCidrsSync(
            input: ElasticComputeCloudModel.DescribeByoipCidrsRequest) throws -> ElasticComputeCloudModel.DescribeByoipCidrsResult

    /**
     Invokes the DescribeCapacityReservations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCapacityReservationsRequest object being passed to this operation.
         - completion: The DescribeCapacityReservationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeCapacityReservationsResult
           object will be validated before being returned to caller.
     */
    func describeCapacityReservationsAsync(
            input: ElasticComputeCloudModel.DescribeCapacityReservationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeCapacityReservationsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeCapacityReservations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCapacityReservationsRequest object being passed to this operation.
     - Returns: The DescribeCapacityReservationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeCapacityReservationsSync(
            input: ElasticComputeCloudModel.DescribeCapacityReservationsRequest) throws -> ElasticComputeCloudModel.DescribeCapacityReservationsResult

    /**
     Invokes the DescribeCarrierGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCarrierGatewaysRequest object being passed to this operation.
         - completion: The DescribeCarrierGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeCarrierGatewaysResult
           object will be validated before being returned to caller.
     */
    func describeCarrierGatewaysAsync(
            input: ElasticComputeCloudModel.DescribeCarrierGatewaysRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeCarrierGatewaysResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeCarrierGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCarrierGatewaysRequest object being passed to this operation.
     - Returns: The DescribeCarrierGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeCarrierGatewaysSync(
            input: ElasticComputeCloudModel.DescribeCarrierGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeCarrierGatewaysResult

    /**
     Invokes the DescribeClassicLinkInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeClassicLinkInstancesRequest object being passed to this operation.
         - completion: The DescribeClassicLinkInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeClassicLinkInstancesResult
           object will be validated before being returned to caller.
     */
    func describeClassicLinkInstancesAsync(
            input: ElasticComputeCloudModel.DescribeClassicLinkInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeClassicLinkInstancesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeClassicLinkInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeClassicLinkInstancesRequest object being passed to this operation.
     - Returns: The DescribeClassicLinkInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClassicLinkInstancesSync(
            input: ElasticComputeCloudModel.DescribeClassicLinkInstancesRequest) throws -> ElasticComputeCloudModel.DescribeClassicLinkInstancesResult

    /**
     Invokes the DescribeClientVpnAuthorizationRules operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeClientVpnAuthorizationRulesRequest object being passed to this operation.
         - completion: The DescribeClientVpnAuthorizationRulesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeClientVpnAuthorizationRulesResult
           object will be validated before being returned to caller.
     */
    func describeClientVpnAuthorizationRulesAsync(
            input: ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeClientVpnAuthorizationRules operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeClientVpnAuthorizationRulesRequest object being passed to this operation.
     - Returns: The DescribeClientVpnAuthorizationRulesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClientVpnAuthorizationRulesSync(
            input: ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesRequest) throws -> ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesResult

    /**
     Invokes the DescribeClientVpnConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeClientVpnConnectionsRequest object being passed to this operation.
         - completion: The DescribeClientVpnConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeClientVpnConnectionsResult
           object will be validated before being returned to caller.
     */
    func describeClientVpnConnectionsAsync(
            input: ElasticComputeCloudModel.DescribeClientVpnConnectionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeClientVpnConnectionsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeClientVpnConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeClientVpnConnectionsRequest object being passed to this operation.
     - Returns: The DescribeClientVpnConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClientVpnConnectionsSync(
            input: ElasticComputeCloudModel.DescribeClientVpnConnectionsRequest) throws -> ElasticComputeCloudModel.DescribeClientVpnConnectionsResult

    /**
     Invokes the DescribeClientVpnEndpoints operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeClientVpnEndpointsRequest object being passed to this operation.
         - completion: The DescribeClientVpnEndpointsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeClientVpnEndpointsResult
           object will be validated before being returned to caller.
     */
    func describeClientVpnEndpointsAsync(
            input: ElasticComputeCloudModel.DescribeClientVpnEndpointsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeClientVpnEndpointsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeClientVpnEndpoints operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeClientVpnEndpointsRequest object being passed to this operation.
     - Returns: The DescribeClientVpnEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClientVpnEndpointsSync(
            input: ElasticComputeCloudModel.DescribeClientVpnEndpointsRequest) throws -> ElasticComputeCloudModel.DescribeClientVpnEndpointsResult

    /**
     Invokes the DescribeClientVpnRoutes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeClientVpnRoutesRequest object being passed to this operation.
         - completion: The DescribeClientVpnRoutesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeClientVpnRoutesResult
           object will be validated before being returned to caller.
     */
    func describeClientVpnRoutesAsync(
            input: ElasticComputeCloudModel.DescribeClientVpnRoutesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeClientVpnRoutesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeClientVpnRoutes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeClientVpnRoutesRequest object being passed to this operation.
     - Returns: The DescribeClientVpnRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClientVpnRoutesSync(
            input: ElasticComputeCloudModel.DescribeClientVpnRoutesRequest) throws -> ElasticComputeCloudModel.DescribeClientVpnRoutesResult

    /**
     Invokes the DescribeClientVpnTargetNetworks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeClientVpnTargetNetworksRequest object being passed to this operation.
         - completion: The DescribeClientVpnTargetNetworksResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeClientVpnTargetNetworksResult
           object will be validated before being returned to caller.
     */
    func describeClientVpnTargetNetworksAsync(
            input: ElasticComputeCloudModel.DescribeClientVpnTargetNetworksRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeClientVpnTargetNetworksResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeClientVpnTargetNetworks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeClientVpnTargetNetworksRequest object being passed to this operation.
     - Returns: The DescribeClientVpnTargetNetworksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClientVpnTargetNetworksSync(
            input: ElasticComputeCloudModel.DescribeClientVpnTargetNetworksRequest) throws -> ElasticComputeCloudModel.DescribeClientVpnTargetNetworksResult

    /**
     Invokes the DescribeCoipPools operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCoipPoolsRequest object being passed to this operation.
         - completion: The DescribeCoipPoolsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeCoipPoolsResult
           object will be validated before being returned to caller.
     */
    func describeCoipPoolsAsync(
            input: ElasticComputeCloudModel.DescribeCoipPoolsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeCoipPoolsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeCoipPools operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCoipPoolsRequest object being passed to this operation.
     - Returns: The DescribeCoipPoolsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeCoipPoolsSync(
            input: ElasticComputeCloudModel.DescribeCoipPoolsRequest) throws -> ElasticComputeCloudModel.DescribeCoipPoolsResult

    /**
     Invokes the DescribeConversionTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeConversionTasksRequest object being passed to this operation.
         - completion: The DescribeConversionTasksResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeConversionTasksResult
           object will be validated before being returned to caller.
     */
    func describeConversionTasksAsync(
            input: ElasticComputeCloudModel.DescribeConversionTasksRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeConversionTasksResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeConversionTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeConversionTasksRequest object being passed to this operation.
     - Returns: The DescribeConversionTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeConversionTasksSync(
            input: ElasticComputeCloudModel.DescribeConversionTasksRequest) throws -> ElasticComputeCloudModel.DescribeConversionTasksResult

    /**
     Invokes the DescribeCustomerGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCustomerGatewaysRequest object being passed to this operation.
         - completion: The DescribeCustomerGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeCustomerGatewaysResult
           object will be validated before being returned to caller.
     */
    func describeCustomerGatewaysAsync(
            input: ElasticComputeCloudModel.DescribeCustomerGatewaysRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeCustomerGatewaysResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeCustomerGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCustomerGatewaysRequest object being passed to this operation.
     - Returns: The DescribeCustomerGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeCustomerGatewaysSync(
            input: ElasticComputeCloudModel.DescribeCustomerGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeCustomerGatewaysResult

    /**
     Invokes the DescribeDhcpOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDhcpOptionsRequest object being passed to this operation.
         - completion: The DescribeDhcpOptionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeDhcpOptionsResult
           object will be validated before being returned to caller.
     */
    func describeDhcpOptionsAsync(
            input: ElasticComputeCloudModel.DescribeDhcpOptionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeDhcpOptionsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeDhcpOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDhcpOptionsRequest object being passed to this operation.
     - Returns: The DescribeDhcpOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeDhcpOptionsSync(
            input: ElasticComputeCloudModel.DescribeDhcpOptionsRequest) throws -> ElasticComputeCloudModel.DescribeDhcpOptionsResult

    /**
     Invokes the DescribeEgressOnlyInternetGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEgressOnlyInternetGatewaysRequest object being passed to this operation.
         - completion: The DescribeEgressOnlyInternetGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeEgressOnlyInternetGatewaysResult
           object will be validated before being returned to caller.
     */
    func describeEgressOnlyInternetGatewaysAsync(
            input: ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeEgressOnlyInternetGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEgressOnlyInternetGatewaysRequest object being passed to this operation.
     - Returns: The DescribeEgressOnlyInternetGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEgressOnlyInternetGatewaysSync(
            input: ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysResult

    /**
     Invokes the DescribeElasticGpus operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeElasticGpusRequest object being passed to this operation.
         - completion: The DescribeElasticGpusResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeElasticGpusResult
           object will be validated before being returned to caller.
     */
    func describeElasticGpusAsync(
            input: ElasticComputeCloudModel.DescribeElasticGpusRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeElasticGpusResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeElasticGpus operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeElasticGpusRequest object being passed to this operation.
     - Returns: The DescribeElasticGpusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeElasticGpusSync(
            input: ElasticComputeCloudModel.DescribeElasticGpusRequest) throws -> ElasticComputeCloudModel.DescribeElasticGpusResult

    /**
     Invokes the DescribeExportImageTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeExportImageTasksRequest object being passed to this operation.
         - completion: The DescribeExportImageTasksResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeExportImageTasksResult
           object will be validated before being returned to caller.
     */
    func describeExportImageTasksAsync(
            input: ElasticComputeCloudModel.DescribeExportImageTasksRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeExportImageTasksResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeExportImageTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeExportImageTasksRequest object being passed to this operation.
     - Returns: The DescribeExportImageTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeExportImageTasksSync(
            input: ElasticComputeCloudModel.DescribeExportImageTasksRequest) throws -> ElasticComputeCloudModel.DescribeExportImageTasksResult

    /**
     Invokes the DescribeExportTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeExportTasksRequest object being passed to this operation.
         - completion: The DescribeExportTasksResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeExportTasksResult
           object will be validated before being returned to caller.
     */
    func describeExportTasksAsync(
            input: ElasticComputeCloudModel.DescribeExportTasksRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeExportTasksResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeExportTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeExportTasksRequest object being passed to this operation.
     - Returns: The DescribeExportTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeExportTasksSync(
            input: ElasticComputeCloudModel.DescribeExportTasksRequest) throws -> ElasticComputeCloudModel.DescribeExportTasksResult

    /**
     Invokes the DescribeFastSnapshotRestores operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFastSnapshotRestoresRequest object being passed to this operation.
         - completion: The DescribeFastSnapshotRestoresResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFastSnapshotRestoresResult
           object will be validated before being returned to caller.
     */
    func describeFastSnapshotRestoresAsync(
            input: ElasticComputeCloudModel.DescribeFastSnapshotRestoresRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeFastSnapshotRestoresResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeFastSnapshotRestores operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFastSnapshotRestoresRequest object being passed to this operation.
     - Returns: The DescribeFastSnapshotRestoresResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFastSnapshotRestoresSync(
            input: ElasticComputeCloudModel.DescribeFastSnapshotRestoresRequest) throws -> ElasticComputeCloudModel.DescribeFastSnapshotRestoresResult

    /**
     Invokes the DescribeFleetHistory operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFleetHistoryRequest object being passed to this operation.
         - completion: The DescribeFleetHistoryResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFleetHistoryResult
           object will be validated before being returned to caller.
     */
    func describeFleetHistoryAsync(
            input: ElasticComputeCloudModel.DescribeFleetHistoryRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeFleetHistoryResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeFleetHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFleetHistoryRequest object being passed to this operation.
     - Returns: The DescribeFleetHistoryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFleetHistorySync(
            input: ElasticComputeCloudModel.DescribeFleetHistoryRequest) throws -> ElasticComputeCloudModel.DescribeFleetHistoryResult

    /**
     Invokes the DescribeFleetInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFleetInstancesRequest object being passed to this operation.
         - completion: The DescribeFleetInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFleetInstancesResult
           object will be validated before being returned to caller.
     */
    func describeFleetInstancesAsync(
            input: ElasticComputeCloudModel.DescribeFleetInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeFleetInstancesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeFleetInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFleetInstancesRequest object being passed to this operation.
     - Returns: The DescribeFleetInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFleetInstancesSync(
            input: ElasticComputeCloudModel.DescribeFleetInstancesRequest) throws -> ElasticComputeCloudModel.DescribeFleetInstancesResult

    /**
     Invokes the DescribeFleets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFleetsRequest object being passed to this operation.
         - completion: The DescribeFleetsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFleetsResult
           object will be validated before being returned to caller.
     */
    func describeFleetsAsync(
            input: ElasticComputeCloudModel.DescribeFleetsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeFleetsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeFleets operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFleetsRequest object being passed to this operation.
     - Returns: The DescribeFleetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFleetsSync(
            input: ElasticComputeCloudModel.DescribeFleetsRequest) throws -> ElasticComputeCloudModel.DescribeFleetsResult

    /**
     Invokes the DescribeFlowLogs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFlowLogsRequest object being passed to this operation.
         - completion: The DescribeFlowLogsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFlowLogsResult
           object will be validated before being returned to caller.
     */
    func describeFlowLogsAsync(
            input: ElasticComputeCloudModel.DescribeFlowLogsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeFlowLogsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeFlowLogs operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFlowLogsRequest object being passed to this operation.
     - Returns: The DescribeFlowLogsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFlowLogsSync(
            input: ElasticComputeCloudModel.DescribeFlowLogsRequest) throws -> ElasticComputeCloudModel.DescribeFlowLogsResult

    /**
     Invokes the DescribeFpgaImageAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFpgaImageAttributeRequest object being passed to this operation.
         - completion: The DescribeFpgaImageAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFpgaImageAttributeResult
           object will be validated before being returned to caller.
     */
    func describeFpgaImageAttributeAsync(
            input: ElasticComputeCloudModel.DescribeFpgaImageAttributeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeFpgaImageAttributeResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeFpgaImageAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFpgaImageAttributeRequest object being passed to this operation.
     - Returns: The DescribeFpgaImageAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFpgaImageAttributeSync(
            input: ElasticComputeCloudModel.DescribeFpgaImageAttributeRequest) throws -> ElasticComputeCloudModel.DescribeFpgaImageAttributeResult

    /**
     Invokes the DescribeFpgaImages operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFpgaImagesRequest object being passed to this operation.
         - completion: The DescribeFpgaImagesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFpgaImagesResult
           object will be validated before being returned to caller.
     */
    func describeFpgaImagesAsync(
            input: ElasticComputeCloudModel.DescribeFpgaImagesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeFpgaImagesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeFpgaImages operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFpgaImagesRequest object being passed to this operation.
     - Returns: The DescribeFpgaImagesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFpgaImagesSync(
            input: ElasticComputeCloudModel.DescribeFpgaImagesRequest) throws -> ElasticComputeCloudModel.DescribeFpgaImagesResult

    /**
     Invokes the DescribeHostReservationOfferings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeHostReservationOfferingsRequest object being passed to this operation.
         - completion: The DescribeHostReservationOfferingsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeHostReservationOfferingsResult
           object will be validated before being returned to caller.
     */
    func describeHostReservationOfferingsAsync(
            input: ElasticComputeCloudModel.DescribeHostReservationOfferingsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeHostReservationOfferingsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeHostReservationOfferings operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeHostReservationOfferingsRequest object being passed to this operation.
     - Returns: The DescribeHostReservationOfferingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeHostReservationOfferingsSync(
            input: ElasticComputeCloudModel.DescribeHostReservationOfferingsRequest) throws -> ElasticComputeCloudModel.DescribeHostReservationOfferingsResult

    /**
     Invokes the DescribeHostReservations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeHostReservationsRequest object being passed to this operation.
         - completion: The DescribeHostReservationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeHostReservationsResult
           object will be validated before being returned to caller.
     */
    func describeHostReservationsAsync(
            input: ElasticComputeCloudModel.DescribeHostReservationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeHostReservationsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeHostReservations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeHostReservationsRequest object being passed to this operation.
     - Returns: The DescribeHostReservationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeHostReservationsSync(
            input: ElasticComputeCloudModel.DescribeHostReservationsRequest) throws -> ElasticComputeCloudModel.DescribeHostReservationsResult

    /**
     Invokes the DescribeHosts operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeHostsRequest object being passed to this operation.
         - completion: The DescribeHostsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeHostsResult
           object will be validated before being returned to caller.
     */
    func describeHostsAsync(
            input: ElasticComputeCloudModel.DescribeHostsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeHostsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeHosts operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeHostsRequest object being passed to this operation.
     - Returns: The DescribeHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeHostsSync(
            input: ElasticComputeCloudModel.DescribeHostsRequest) throws -> ElasticComputeCloudModel.DescribeHostsResult

    /**
     Invokes the DescribeIamInstanceProfileAssociations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeIamInstanceProfileAssociationsRequest object being passed to this operation.
         - completion: The DescribeIamInstanceProfileAssociationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeIamInstanceProfileAssociationsResult
           object will be validated before being returned to caller.
     */
    func describeIamInstanceProfileAssociationsAsync(
            input: ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeIamInstanceProfileAssociations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeIamInstanceProfileAssociationsRequest object being passed to this operation.
     - Returns: The DescribeIamInstanceProfileAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIamInstanceProfileAssociationsSync(
            input: ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsRequest) throws -> ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsResult

    /**
     Invokes the DescribeIdFormat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeIdFormatRequest object being passed to this operation.
         - completion: The DescribeIdFormatResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeIdFormatResult
           object will be validated before being returned to caller.
     */
    func describeIdFormatAsync(
            input: ElasticComputeCloudModel.DescribeIdFormatRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeIdFormatResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeIdFormat operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeIdFormatRequest object being passed to this operation.
     - Returns: The DescribeIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIdFormatSync(
            input: ElasticComputeCloudModel.DescribeIdFormatRequest) throws -> ElasticComputeCloudModel.DescribeIdFormatResult

    /**
     Invokes the DescribeIdentityIdFormat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeIdentityIdFormatRequest object being passed to this operation.
         - completion: The DescribeIdentityIdFormatResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeIdentityIdFormatResult
           object will be validated before being returned to caller.
     */
    func describeIdentityIdFormatAsync(
            input: ElasticComputeCloudModel.DescribeIdentityIdFormatRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeIdentityIdFormatResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeIdentityIdFormat operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeIdentityIdFormatRequest object being passed to this operation.
     - Returns: The DescribeIdentityIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIdentityIdFormatSync(
            input: ElasticComputeCloudModel.DescribeIdentityIdFormatRequest) throws -> ElasticComputeCloudModel.DescribeIdentityIdFormatResult

    /**
     Invokes the DescribeImageAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeImageAttributeRequest object being passed to this operation.
         - completion: The ImageAttribute object or an error will be passed to this 
           callback when the operation is complete. The ImageAttribute
           object will be validated before being returned to caller.
     */
    func describeImageAttributeAsync(
            input: ElasticComputeCloudModel.DescribeImageAttributeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ImageAttribute, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeImageAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeImageAttributeRequest object being passed to this operation.
     - Returns: The ImageAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeImageAttributeSync(
            input: ElasticComputeCloudModel.DescribeImageAttributeRequest) throws -> ElasticComputeCloudModel.ImageAttribute

    /**
     Invokes the DescribeImages operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeImagesRequest object being passed to this operation.
         - completion: The DescribeImagesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeImagesResult
           object will be validated before being returned to caller.
     */
    func describeImagesAsync(
            input: ElasticComputeCloudModel.DescribeImagesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeImagesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeImages operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeImagesRequest object being passed to this operation.
     - Returns: The DescribeImagesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeImagesSync(
            input: ElasticComputeCloudModel.DescribeImagesRequest) throws -> ElasticComputeCloudModel.DescribeImagesResult

    /**
     Invokes the DescribeImportImageTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeImportImageTasksRequest object being passed to this operation.
         - completion: The DescribeImportImageTasksResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeImportImageTasksResult
           object will be validated before being returned to caller.
     */
    func describeImportImageTasksAsync(
            input: ElasticComputeCloudModel.DescribeImportImageTasksRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeImportImageTasksResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeImportImageTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeImportImageTasksRequest object being passed to this operation.
     - Returns: The DescribeImportImageTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeImportImageTasksSync(
            input: ElasticComputeCloudModel.DescribeImportImageTasksRequest) throws -> ElasticComputeCloudModel.DescribeImportImageTasksResult

    /**
     Invokes the DescribeImportSnapshotTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeImportSnapshotTasksRequest object being passed to this operation.
         - completion: The DescribeImportSnapshotTasksResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeImportSnapshotTasksResult
           object will be validated before being returned to caller.
     */
    func describeImportSnapshotTasksAsync(
            input: ElasticComputeCloudModel.DescribeImportSnapshotTasksRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeImportSnapshotTasksResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeImportSnapshotTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeImportSnapshotTasksRequest object being passed to this operation.
     - Returns: The DescribeImportSnapshotTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeImportSnapshotTasksSync(
            input: ElasticComputeCloudModel.DescribeImportSnapshotTasksRequest) throws -> ElasticComputeCloudModel.DescribeImportSnapshotTasksResult

    /**
     Invokes the DescribeInstanceAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInstanceAttributeRequest object being passed to this operation.
         - completion: The InstanceAttribute object or an error will be passed to this 
           callback when the operation is complete. The InstanceAttribute
           object will be validated before being returned to caller.
     */
    func describeInstanceAttributeAsync(
            input: ElasticComputeCloudModel.DescribeInstanceAttributeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.InstanceAttribute, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeInstanceAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInstanceAttributeRequest object being passed to this operation.
     - Returns: The InstanceAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceAttributeSync(
            input: ElasticComputeCloudModel.DescribeInstanceAttributeRequest) throws -> ElasticComputeCloudModel.InstanceAttribute

    /**
     Invokes the DescribeInstanceCreditSpecifications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInstanceCreditSpecificationsRequest object being passed to this operation.
         - completion: The DescribeInstanceCreditSpecificationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeInstanceCreditSpecificationsResult
           object will be validated before being returned to caller.
     */
    func describeInstanceCreditSpecificationsAsync(
            input: ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeInstanceCreditSpecifications operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInstanceCreditSpecificationsRequest object being passed to this operation.
     - Returns: The DescribeInstanceCreditSpecificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceCreditSpecificationsSync(
            input: ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsRequest) throws -> ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsResult

    /**
     Invokes the DescribeInstanceEventNotificationAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInstanceEventNotificationAttributesRequest object being passed to this operation.
         - completion: The DescribeInstanceEventNotificationAttributesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeInstanceEventNotificationAttributesResult
           object will be validated before being returned to caller.
     */
    func describeInstanceEventNotificationAttributesAsync(
            input: ElasticComputeCloudModel.DescribeInstanceEventNotificationAttributesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeInstanceEventNotificationAttributesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeInstanceEventNotificationAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInstanceEventNotificationAttributesRequest object being passed to this operation.
     - Returns: The DescribeInstanceEventNotificationAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceEventNotificationAttributesSync(
            input: ElasticComputeCloudModel.DescribeInstanceEventNotificationAttributesRequest) throws -> ElasticComputeCloudModel.DescribeInstanceEventNotificationAttributesResult

    /**
     Invokes the DescribeInstanceStatus operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInstanceStatusRequest object being passed to this operation.
         - completion: The DescribeInstanceStatusResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeInstanceStatusResult
           object will be validated before being returned to caller.
     */
    func describeInstanceStatusAsync(
            input: ElasticComputeCloudModel.DescribeInstanceStatusRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeInstanceStatusResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeInstanceStatus operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInstanceStatusRequest object being passed to this operation.
     - Returns: The DescribeInstanceStatusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceStatusSync(
            input: ElasticComputeCloudModel.DescribeInstanceStatusRequest) throws -> ElasticComputeCloudModel.DescribeInstanceStatusResult

    /**
     Invokes the DescribeInstanceTypeOfferings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInstanceTypeOfferingsRequest object being passed to this operation.
         - completion: The DescribeInstanceTypeOfferingsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeInstanceTypeOfferingsResult
           object will be validated before being returned to caller.
     */
    func describeInstanceTypeOfferingsAsync(
            input: ElasticComputeCloudModel.DescribeInstanceTypeOfferingsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeInstanceTypeOfferingsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeInstanceTypeOfferings operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInstanceTypeOfferingsRequest object being passed to this operation.
     - Returns: The DescribeInstanceTypeOfferingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceTypeOfferingsSync(
            input: ElasticComputeCloudModel.DescribeInstanceTypeOfferingsRequest) throws -> ElasticComputeCloudModel.DescribeInstanceTypeOfferingsResult

    /**
     Invokes the DescribeInstanceTypes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInstanceTypesRequest object being passed to this operation.
         - completion: The DescribeInstanceTypesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeInstanceTypesResult
           object will be validated before being returned to caller.
     */
    func describeInstanceTypesAsync(
            input: ElasticComputeCloudModel.DescribeInstanceTypesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeInstanceTypesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeInstanceTypes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInstanceTypesRequest object being passed to this operation.
     - Returns: The DescribeInstanceTypesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceTypesSync(
            input: ElasticComputeCloudModel.DescribeInstanceTypesRequest) throws -> ElasticComputeCloudModel.DescribeInstanceTypesResult

    /**
     Invokes the DescribeInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInstancesRequest object being passed to this operation.
         - completion: The DescribeInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeInstancesResult
           object will be validated before being returned to caller.
     */
    func describeInstancesAsync(
            input: ElasticComputeCloudModel.DescribeInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeInstancesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInstancesRequest object being passed to this operation.
     - Returns: The DescribeInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstancesSync(
            input: ElasticComputeCloudModel.DescribeInstancesRequest) throws -> ElasticComputeCloudModel.DescribeInstancesResult

    /**
     Invokes the DescribeInternetGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInternetGatewaysRequest object being passed to this operation.
         - completion: The DescribeInternetGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeInternetGatewaysResult
           object will be validated before being returned to caller.
     */
    func describeInternetGatewaysAsync(
            input: ElasticComputeCloudModel.DescribeInternetGatewaysRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeInternetGatewaysResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeInternetGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInternetGatewaysRequest object being passed to this operation.
     - Returns: The DescribeInternetGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInternetGatewaysSync(
            input: ElasticComputeCloudModel.DescribeInternetGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeInternetGatewaysResult

    /**
     Invokes the DescribeIpv6Pools operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeIpv6PoolsRequest object being passed to this operation.
         - completion: The DescribeIpv6PoolsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeIpv6PoolsResult
           object will be validated before being returned to caller.
     */
    func describeIpv6PoolsAsync(
            input: ElasticComputeCloudModel.DescribeIpv6PoolsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeIpv6PoolsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeIpv6Pools operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeIpv6PoolsRequest object being passed to this operation.
     - Returns: The DescribeIpv6PoolsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIpv6PoolsSync(
            input: ElasticComputeCloudModel.DescribeIpv6PoolsRequest) throws -> ElasticComputeCloudModel.DescribeIpv6PoolsResult

    /**
     Invokes the DescribeKeyPairs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeKeyPairsRequest object being passed to this operation.
         - completion: The DescribeKeyPairsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeKeyPairsResult
           object will be validated before being returned to caller.
     */
    func describeKeyPairsAsync(
            input: ElasticComputeCloudModel.DescribeKeyPairsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeKeyPairsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeKeyPairs operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeKeyPairsRequest object being passed to this operation.
     - Returns: The DescribeKeyPairsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeKeyPairsSync(
            input: ElasticComputeCloudModel.DescribeKeyPairsRequest) throws -> ElasticComputeCloudModel.DescribeKeyPairsResult

    /**
     Invokes the DescribeLaunchTemplateVersions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeLaunchTemplateVersionsRequest object being passed to this operation.
         - completion: The DescribeLaunchTemplateVersionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeLaunchTemplateVersionsResult
           object will be validated before being returned to caller.
     */
    func describeLaunchTemplateVersionsAsync(
            input: ElasticComputeCloudModel.DescribeLaunchTemplateVersionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeLaunchTemplateVersionsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeLaunchTemplateVersions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeLaunchTemplateVersionsRequest object being passed to this operation.
     - Returns: The DescribeLaunchTemplateVersionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLaunchTemplateVersionsSync(
            input: ElasticComputeCloudModel.DescribeLaunchTemplateVersionsRequest) throws -> ElasticComputeCloudModel.DescribeLaunchTemplateVersionsResult

    /**
     Invokes the DescribeLaunchTemplates operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeLaunchTemplatesRequest object being passed to this operation.
         - completion: The DescribeLaunchTemplatesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeLaunchTemplatesResult
           object will be validated before being returned to caller.
     */
    func describeLaunchTemplatesAsync(
            input: ElasticComputeCloudModel.DescribeLaunchTemplatesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeLaunchTemplatesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeLaunchTemplates operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeLaunchTemplatesRequest object being passed to this operation.
     - Returns: The DescribeLaunchTemplatesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLaunchTemplatesSync(
            input: ElasticComputeCloudModel.DescribeLaunchTemplatesRequest) throws -> ElasticComputeCloudModel.DescribeLaunchTemplatesResult

    /**
     Invokes the DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest object being passed to this operation.
         - completion: The DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult
           object will be validated before being returned to caller.
     */
    func describeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsAsync(
            input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsSync(
            input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest) throws -> ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult

    /**
     Invokes the DescribeLocalGatewayRouteTableVpcAssociations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTableVpcAssociationsRequest object being passed to this operation.
         - completion: The DescribeLocalGatewayRouteTableVpcAssociationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeLocalGatewayRouteTableVpcAssociationsResult
           object will be validated before being returned to caller.
     */
    func describeLocalGatewayRouteTableVpcAssociationsAsync(
            input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeLocalGatewayRouteTableVpcAssociations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTableVpcAssociationsRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewayRouteTableVpcAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLocalGatewayRouteTableVpcAssociationsSync(
            input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsRequest) throws -> ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsResult

    /**
     Invokes the DescribeLocalGatewayRouteTables operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTablesRequest object being passed to this operation.
         - completion: The DescribeLocalGatewayRouteTablesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeLocalGatewayRouteTablesResult
           object will be validated before being returned to caller.
     */
    func describeLocalGatewayRouteTablesAsync(
            input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeLocalGatewayRouteTables operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTablesRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewayRouteTablesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLocalGatewayRouteTablesSync(
            input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesRequest) throws -> ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesResult

    /**
     Invokes the DescribeLocalGatewayVirtualInterfaceGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeLocalGatewayVirtualInterfaceGroupsRequest object being passed to this operation.
         - completion: The DescribeLocalGatewayVirtualInterfaceGroupsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeLocalGatewayVirtualInterfaceGroupsResult
           object will be validated before being returned to caller.
     */
    func describeLocalGatewayVirtualInterfaceGroupsAsync(
            input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeLocalGatewayVirtualInterfaceGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeLocalGatewayVirtualInterfaceGroupsRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewayVirtualInterfaceGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLocalGatewayVirtualInterfaceGroupsSync(
            input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsRequest) throws -> ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsResult

    /**
     Invokes the DescribeLocalGatewayVirtualInterfaces operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeLocalGatewayVirtualInterfacesRequest object being passed to this operation.
         - completion: The DescribeLocalGatewayVirtualInterfacesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeLocalGatewayVirtualInterfacesResult
           object will be validated before being returned to caller.
     */
    func describeLocalGatewayVirtualInterfacesAsync(
            input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeLocalGatewayVirtualInterfaces operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeLocalGatewayVirtualInterfacesRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewayVirtualInterfacesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLocalGatewayVirtualInterfacesSync(
            input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesRequest) throws -> ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesResult

    /**
     Invokes the DescribeLocalGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeLocalGatewaysRequest object being passed to this operation.
         - completion: The DescribeLocalGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeLocalGatewaysResult
           object will be validated before being returned to caller.
     */
    func describeLocalGatewaysAsync(
            input: ElasticComputeCloudModel.DescribeLocalGatewaysRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeLocalGatewaysResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeLocalGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeLocalGatewaysRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLocalGatewaysSync(
            input: ElasticComputeCloudModel.DescribeLocalGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeLocalGatewaysResult

    /**
     Invokes the DescribeManagedPrefixLists operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeManagedPrefixListsRequest object being passed to this operation.
         - completion: The DescribeManagedPrefixListsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeManagedPrefixListsResult
           object will be validated before being returned to caller.
     */
    func describeManagedPrefixListsAsync(
            input: ElasticComputeCloudModel.DescribeManagedPrefixListsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeManagedPrefixListsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeManagedPrefixLists operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeManagedPrefixListsRequest object being passed to this operation.
     - Returns: The DescribeManagedPrefixListsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeManagedPrefixListsSync(
            input: ElasticComputeCloudModel.DescribeManagedPrefixListsRequest) throws -> ElasticComputeCloudModel.DescribeManagedPrefixListsResult

    /**
     Invokes the DescribeMovingAddresses operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeMovingAddressesRequest object being passed to this operation.
         - completion: The DescribeMovingAddressesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeMovingAddressesResult
           object will be validated before being returned to caller.
     */
    func describeMovingAddressesAsync(
            input: ElasticComputeCloudModel.DescribeMovingAddressesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeMovingAddressesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeMovingAddresses operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeMovingAddressesRequest object being passed to this operation.
     - Returns: The DescribeMovingAddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeMovingAddressesSync(
            input: ElasticComputeCloudModel.DescribeMovingAddressesRequest) throws -> ElasticComputeCloudModel.DescribeMovingAddressesResult

    /**
     Invokes the DescribeNatGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeNatGatewaysRequest object being passed to this operation.
         - completion: The DescribeNatGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeNatGatewaysResult
           object will be validated before being returned to caller.
     */
    func describeNatGatewaysAsync(
            input: ElasticComputeCloudModel.DescribeNatGatewaysRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeNatGatewaysResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeNatGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeNatGatewaysRequest object being passed to this operation.
     - Returns: The DescribeNatGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNatGatewaysSync(
            input: ElasticComputeCloudModel.DescribeNatGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeNatGatewaysResult

    /**
     Invokes the DescribeNetworkAcls operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeNetworkAclsRequest object being passed to this operation.
         - completion: The DescribeNetworkAclsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeNetworkAclsResult
           object will be validated before being returned to caller.
     */
    func describeNetworkAclsAsync(
            input: ElasticComputeCloudModel.DescribeNetworkAclsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeNetworkAclsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeNetworkAcls operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeNetworkAclsRequest object being passed to this operation.
     - Returns: The DescribeNetworkAclsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkAclsSync(
            input: ElasticComputeCloudModel.DescribeNetworkAclsRequest) throws -> ElasticComputeCloudModel.DescribeNetworkAclsResult

    /**
     Invokes the DescribeNetworkInsightsAnalyses operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeNetworkInsightsAnalysesRequest object being passed to this operation.
         - completion: The DescribeNetworkInsightsAnalysesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeNetworkInsightsAnalysesResult
           object will be validated before being returned to caller.
     */
    func describeNetworkInsightsAnalysesAsync(
            input: ElasticComputeCloudModel.DescribeNetworkInsightsAnalysesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeNetworkInsightsAnalysesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeNetworkInsightsAnalyses operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeNetworkInsightsAnalysesRequest object being passed to this operation.
     - Returns: The DescribeNetworkInsightsAnalysesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkInsightsAnalysesSync(
            input: ElasticComputeCloudModel.DescribeNetworkInsightsAnalysesRequest) throws -> ElasticComputeCloudModel.DescribeNetworkInsightsAnalysesResult

    /**
     Invokes the DescribeNetworkInsightsPaths operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeNetworkInsightsPathsRequest object being passed to this operation.
         - completion: The DescribeNetworkInsightsPathsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeNetworkInsightsPathsResult
           object will be validated before being returned to caller.
     */
    func describeNetworkInsightsPathsAsync(
            input: ElasticComputeCloudModel.DescribeNetworkInsightsPathsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeNetworkInsightsPathsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeNetworkInsightsPaths operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeNetworkInsightsPathsRequest object being passed to this operation.
     - Returns: The DescribeNetworkInsightsPathsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkInsightsPathsSync(
            input: ElasticComputeCloudModel.DescribeNetworkInsightsPathsRequest) throws -> ElasticComputeCloudModel.DescribeNetworkInsightsPathsResult

    /**
     Invokes the DescribeNetworkInterfaceAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeNetworkInterfaceAttributeRequest object being passed to this operation.
         - completion: The DescribeNetworkInterfaceAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeNetworkInterfaceAttributeResult
           object will be validated before being returned to caller.
     */
    func describeNetworkInterfaceAttributeAsync(
            input: ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeNetworkInterfaceAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeNetworkInterfaceAttributeRequest object being passed to this operation.
     - Returns: The DescribeNetworkInterfaceAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkInterfaceAttributeSync(
            input: ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeRequest) throws -> ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeResult

    /**
     Invokes the DescribeNetworkInterfacePermissions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeNetworkInterfacePermissionsRequest object being passed to this operation.
         - completion: The DescribeNetworkInterfacePermissionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeNetworkInterfacePermissionsResult
           object will be validated before being returned to caller.
     */
    func describeNetworkInterfacePermissionsAsync(
            input: ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeNetworkInterfacePermissions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeNetworkInterfacePermissionsRequest object being passed to this operation.
     - Returns: The DescribeNetworkInterfacePermissionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkInterfacePermissionsSync(
            input: ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsRequest) throws -> ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsResult

    /**
     Invokes the DescribeNetworkInterfaces operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeNetworkInterfacesRequest object being passed to this operation.
         - completion: The DescribeNetworkInterfacesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeNetworkInterfacesResult
           object will be validated before being returned to caller.
     */
    func describeNetworkInterfacesAsync(
            input: ElasticComputeCloudModel.DescribeNetworkInterfacesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeNetworkInterfacesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeNetworkInterfaces operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeNetworkInterfacesRequest object being passed to this operation.
     - Returns: The DescribeNetworkInterfacesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkInterfacesSync(
            input: ElasticComputeCloudModel.DescribeNetworkInterfacesRequest) throws -> ElasticComputeCloudModel.DescribeNetworkInterfacesResult

    /**
     Invokes the DescribePlacementGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribePlacementGroupsRequest object being passed to this operation.
         - completion: The DescribePlacementGroupsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribePlacementGroupsResult
           object will be validated before being returned to caller.
     */
    func describePlacementGroupsAsync(
            input: ElasticComputeCloudModel.DescribePlacementGroupsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribePlacementGroupsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribePlacementGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribePlacementGroupsRequest object being passed to this operation.
     - Returns: The DescribePlacementGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describePlacementGroupsSync(
            input: ElasticComputeCloudModel.DescribePlacementGroupsRequest) throws -> ElasticComputeCloudModel.DescribePlacementGroupsResult

    /**
     Invokes the DescribePrefixLists operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribePrefixListsRequest object being passed to this operation.
         - completion: The DescribePrefixListsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribePrefixListsResult
           object will be validated before being returned to caller.
     */
    func describePrefixListsAsync(
            input: ElasticComputeCloudModel.DescribePrefixListsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribePrefixListsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribePrefixLists operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribePrefixListsRequest object being passed to this operation.
     - Returns: The DescribePrefixListsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describePrefixListsSync(
            input: ElasticComputeCloudModel.DescribePrefixListsRequest) throws -> ElasticComputeCloudModel.DescribePrefixListsResult

    /**
     Invokes the DescribePrincipalIdFormat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribePrincipalIdFormatRequest object being passed to this operation.
         - completion: The DescribePrincipalIdFormatResult object or an error will be passed to this 
           callback when the operation is complete. The DescribePrincipalIdFormatResult
           object will be validated before being returned to caller.
     */
    func describePrincipalIdFormatAsync(
            input: ElasticComputeCloudModel.DescribePrincipalIdFormatRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribePrincipalIdFormatResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribePrincipalIdFormat operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribePrincipalIdFormatRequest object being passed to this operation.
     - Returns: The DescribePrincipalIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describePrincipalIdFormatSync(
            input: ElasticComputeCloudModel.DescribePrincipalIdFormatRequest) throws -> ElasticComputeCloudModel.DescribePrincipalIdFormatResult

    /**
     Invokes the DescribePublicIpv4Pools operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribePublicIpv4PoolsRequest object being passed to this operation.
         - completion: The DescribePublicIpv4PoolsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribePublicIpv4PoolsResult
           object will be validated before being returned to caller.
     */
    func describePublicIpv4PoolsAsync(
            input: ElasticComputeCloudModel.DescribePublicIpv4PoolsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribePublicIpv4PoolsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribePublicIpv4Pools operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribePublicIpv4PoolsRequest object being passed to this operation.
     - Returns: The DescribePublicIpv4PoolsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describePublicIpv4PoolsSync(
            input: ElasticComputeCloudModel.DescribePublicIpv4PoolsRequest) throws -> ElasticComputeCloudModel.DescribePublicIpv4PoolsResult

    /**
     Invokes the DescribeRegions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeRegionsRequest object being passed to this operation.
         - completion: The DescribeRegionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeRegionsResult
           object will be validated before being returned to caller.
     */
    func describeRegionsAsync(
            input: ElasticComputeCloudModel.DescribeRegionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeRegionsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeRegions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeRegionsRequest object being passed to this operation.
     - Returns: The DescribeRegionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeRegionsSync(
            input: ElasticComputeCloudModel.DescribeRegionsRequest) throws -> ElasticComputeCloudModel.DescribeRegionsResult

    /**
     Invokes the DescribeReservedInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeReservedInstancesRequest object being passed to this operation.
         - completion: The DescribeReservedInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeReservedInstancesResult
           object will be validated before being returned to caller.
     */
    func describeReservedInstancesAsync(
            input: ElasticComputeCloudModel.DescribeReservedInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeReservedInstancesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeReservedInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedInstancesRequest object being passed to this operation.
     - Returns: The DescribeReservedInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeReservedInstancesSync(
            input: ElasticComputeCloudModel.DescribeReservedInstancesRequest) throws -> ElasticComputeCloudModel.DescribeReservedInstancesResult

    /**
     Invokes the DescribeReservedInstancesListings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeReservedInstancesListingsRequest object being passed to this operation.
         - completion: The DescribeReservedInstancesListingsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeReservedInstancesListingsResult
           object will be validated before being returned to caller.
     */
    func describeReservedInstancesListingsAsync(
            input: ElasticComputeCloudModel.DescribeReservedInstancesListingsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeReservedInstancesListingsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeReservedInstancesListings operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedInstancesListingsRequest object being passed to this operation.
     - Returns: The DescribeReservedInstancesListingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeReservedInstancesListingsSync(
            input: ElasticComputeCloudModel.DescribeReservedInstancesListingsRequest) throws -> ElasticComputeCloudModel.DescribeReservedInstancesListingsResult

    /**
     Invokes the DescribeReservedInstancesModifications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeReservedInstancesModificationsRequest object being passed to this operation.
         - completion: The DescribeReservedInstancesModificationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeReservedInstancesModificationsResult
           object will be validated before being returned to caller.
     */
    func describeReservedInstancesModificationsAsync(
            input: ElasticComputeCloudModel.DescribeReservedInstancesModificationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeReservedInstancesModificationsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeReservedInstancesModifications operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedInstancesModificationsRequest object being passed to this operation.
     - Returns: The DescribeReservedInstancesModificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeReservedInstancesModificationsSync(
            input: ElasticComputeCloudModel.DescribeReservedInstancesModificationsRequest) throws -> ElasticComputeCloudModel.DescribeReservedInstancesModificationsResult

    /**
     Invokes the DescribeReservedInstancesOfferings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeReservedInstancesOfferingsRequest object being passed to this operation.
         - completion: The DescribeReservedInstancesOfferingsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeReservedInstancesOfferingsResult
           object will be validated before being returned to caller.
     */
    func describeReservedInstancesOfferingsAsync(
            input: ElasticComputeCloudModel.DescribeReservedInstancesOfferingsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeReservedInstancesOfferingsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeReservedInstancesOfferings operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedInstancesOfferingsRequest object being passed to this operation.
     - Returns: The DescribeReservedInstancesOfferingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeReservedInstancesOfferingsSync(
            input: ElasticComputeCloudModel.DescribeReservedInstancesOfferingsRequest) throws -> ElasticComputeCloudModel.DescribeReservedInstancesOfferingsResult

    /**
     Invokes the DescribeRouteTables operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeRouteTablesRequest object being passed to this operation.
         - completion: The DescribeRouteTablesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeRouteTablesResult
           object will be validated before being returned to caller.
     */
    func describeRouteTablesAsync(
            input: ElasticComputeCloudModel.DescribeRouteTablesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeRouteTablesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeRouteTables operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeRouteTablesRequest object being passed to this operation.
     - Returns: The DescribeRouteTablesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeRouteTablesSync(
            input: ElasticComputeCloudModel.DescribeRouteTablesRequest) throws -> ElasticComputeCloudModel.DescribeRouteTablesResult

    /**
     Invokes the DescribeScheduledInstanceAvailability operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeScheduledInstanceAvailabilityRequest object being passed to this operation.
         - completion: The DescribeScheduledInstanceAvailabilityResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeScheduledInstanceAvailabilityResult
           object will be validated before being returned to caller.
     */
    func describeScheduledInstanceAvailabilityAsync(
            input: ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeScheduledInstanceAvailability operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeScheduledInstanceAvailabilityRequest object being passed to this operation.
     - Returns: The DescribeScheduledInstanceAvailabilityResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeScheduledInstanceAvailabilitySync(
            input: ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityRequest) throws -> ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityResult

    /**
     Invokes the DescribeScheduledInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeScheduledInstancesRequest object being passed to this operation.
         - completion: The DescribeScheduledInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeScheduledInstancesResult
           object will be validated before being returned to caller.
     */
    func describeScheduledInstancesAsync(
            input: ElasticComputeCloudModel.DescribeScheduledInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeScheduledInstancesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeScheduledInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeScheduledInstancesRequest object being passed to this operation.
     - Returns: The DescribeScheduledInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeScheduledInstancesSync(
            input: ElasticComputeCloudModel.DescribeScheduledInstancesRequest) throws -> ElasticComputeCloudModel.DescribeScheduledInstancesResult

    /**
     Invokes the DescribeSecurityGroupReferences operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSecurityGroupReferencesRequest object being passed to this operation.
         - completion: The DescribeSecurityGroupReferencesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSecurityGroupReferencesResult
           object will be validated before being returned to caller.
     */
    func describeSecurityGroupReferencesAsync(
            input: ElasticComputeCloudModel.DescribeSecurityGroupReferencesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSecurityGroupReferencesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeSecurityGroupReferences operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSecurityGroupReferencesRequest object being passed to this operation.
     - Returns: The DescribeSecurityGroupReferencesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSecurityGroupReferencesSync(
            input: ElasticComputeCloudModel.DescribeSecurityGroupReferencesRequest) throws -> ElasticComputeCloudModel.DescribeSecurityGroupReferencesResult

    /**
     Invokes the DescribeSecurityGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSecurityGroupsRequest object being passed to this operation.
         - completion: The DescribeSecurityGroupsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSecurityGroupsResult
           object will be validated before being returned to caller.
     */
    func describeSecurityGroupsAsync(
            input: ElasticComputeCloudModel.DescribeSecurityGroupsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSecurityGroupsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeSecurityGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSecurityGroupsRequest object being passed to this operation.
     - Returns: The DescribeSecurityGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSecurityGroupsSync(
            input: ElasticComputeCloudModel.DescribeSecurityGroupsRequest) throws -> ElasticComputeCloudModel.DescribeSecurityGroupsResult

    /**
     Invokes the DescribeSnapshotAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSnapshotAttributeRequest object being passed to this operation.
         - completion: The DescribeSnapshotAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSnapshotAttributeResult
           object will be validated before being returned to caller.
     */
    func describeSnapshotAttributeAsync(
            input: ElasticComputeCloudModel.DescribeSnapshotAttributeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSnapshotAttributeResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeSnapshotAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSnapshotAttributeRequest object being passed to this operation.
     - Returns: The DescribeSnapshotAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSnapshotAttributeSync(
            input: ElasticComputeCloudModel.DescribeSnapshotAttributeRequest) throws -> ElasticComputeCloudModel.DescribeSnapshotAttributeResult

    /**
     Invokes the DescribeSnapshots operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSnapshotsRequest object being passed to this operation.
         - completion: The DescribeSnapshotsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSnapshotsResult
           object will be validated before being returned to caller.
     */
    func describeSnapshotsAsync(
            input: ElasticComputeCloudModel.DescribeSnapshotsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSnapshotsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeSnapshots operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSnapshotsRequest object being passed to this operation.
     - Returns: The DescribeSnapshotsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSnapshotsSync(
            input: ElasticComputeCloudModel.DescribeSnapshotsRequest) throws -> ElasticComputeCloudModel.DescribeSnapshotsResult

    /**
     Invokes the DescribeSpotDatafeedSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSpotDatafeedSubscriptionRequest object being passed to this operation.
         - completion: The DescribeSpotDatafeedSubscriptionResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSpotDatafeedSubscriptionResult
           object will be validated before being returned to caller.
     */
    func describeSpotDatafeedSubscriptionAsync(
            input: ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeSpotDatafeedSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSpotDatafeedSubscriptionRequest object being passed to this operation.
     - Returns: The DescribeSpotDatafeedSubscriptionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotDatafeedSubscriptionSync(
            input: ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionRequest) throws -> ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionResult

    /**
     Invokes the DescribeSpotFleetInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSpotFleetInstancesRequest object being passed to this operation.
         - completion: The DescribeSpotFleetInstancesResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeSpotFleetInstancesResponse
           object will be validated before being returned to caller.
     */
    func describeSpotFleetInstancesAsync(
            input: ElasticComputeCloudModel.DescribeSpotFleetInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSpotFleetInstancesResponse, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeSpotFleetInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSpotFleetInstancesRequest object being passed to this operation.
     - Returns: The DescribeSpotFleetInstancesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotFleetInstancesSync(
            input: ElasticComputeCloudModel.DescribeSpotFleetInstancesRequest) throws -> ElasticComputeCloudModel.DescribeSpotFleetInstancesResponse

    /**
     Invokes the DescribeSpotFleetRequestHistory operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSpotFleetRequestHistoryRequest object being passed to this operation.
         - completion: The DescribeSpotFleetRequestHistoryResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeSpotFleetRequestHistoryResponse
           object will be validated before being returned to caller.
     */
    func describeSpotFleetRequestHistoryAsync(
            input: ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryResponse, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeSpotFleetRequestHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSpotFleetRequestHistoryRequest object being passed to this operation.
     - Returns: The DescribeSpotFleetRequestHistoryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotFleetRequestHistorySync(
            input: ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryRequest) throws -> ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryResponse

    /**
     Invokes the DescribeSpotFleetRequests operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSpotFleetRequestsRequest object being passed to this operation.
         - completion: The DescribeSpotFleetRequestsResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeSpotFleetRequestsResponse
           object will be validated before being returned to caller.
     */
    func describeSpotFleetRequestsAsync(
            input: ElasticComputeCloudModel.DescribeSpotFleetRequestsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSpotFleetRequestsResponse, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeSpotFleetRequests operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSpotFleetRequestsRequest object being passed to this operation.
     - Returns: The DescribeSpotFleetRequestsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotFleetRequestsSync(
            input: ElasticComputeCloudModel.DescribeSpotFleetRequestsRequest) throws -> ElasticComputeCloudModel.DescribeSpotFleetRequestsResponse

    /**
     Invokes the DescribeSpotInstanceRequests operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSpotInstanceRequestsRequest object being passed to this operation.
         - completion: The DescribeSpotInstanceRequestsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSpotInstanceRequestsResult
           object will be validated before being returned to caller.
     */
    func describeSpotInstanceRequestsAsync(
            input: ElasticComputeCloudModel.DescribeSpotInstanceRequestsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSpotInstanceRequestsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeSpotInstanceRequests operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSpotInstanceRequestsRequest object being passed to this operation.
     - Returns: The DescribeSpotInstanceRequestsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotInstanceRequestsSync(
            input: ElasticComputeCloudModel.DescribeSpotInstanceRequestsRequest) throws -> ElasticComputeCloudModel.DescribeSpotInstanceRequestsResult

    /**
     Invokes the DescribeSpotPriceHistory operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSpotPriceHistoryRequest object being passed to this operation.
         - completion: The DescribeSpotPriceHistoryResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSpotPriceHistoryResult
           object will be validated before being returned to caller.
     */
    func describeSpotPriceHistoryAsync(
            input: ElasticComputeCloudModel.DescribeSpotPriceHistoryRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSpotPriceHistoryResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeSpotPriceHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSpotPriceHistoryRequest object being passed to this operation.
     - Returns: The DescribeSpotPriceHistoryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotPriceHistorySync(
            input: ElasticComputeCloudModel.DescribeSpotPriceHistoryRequest) throws -> ElasticComputeCloudModel.DescribeSpotPriceHistoryResult

    /**
     Invokes the DescribeStaleSecurityGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStaleSecurityGroupsRequest object being passed to this operation.
         - completion: The DescribeStaleSecurityGroupsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeStaleSecurityGroupsResult
           object will be validated before being returned to caller.
     */
    func describeStaleSecurityGroupsAsync(
            input: ElasticComputeCloudModel.DescribeStaleSecurityGroupsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeStaleSecurityGroupsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeStaleSecurityGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStaleSecurityGroupsRequest object being passed to this operation.
     - Returns: The DescribeStaleSecurityGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeStaleSecurityGroupsSync(
            input: ElasticComputeCloudModel.DescribeStaleSecurityGroupsRequest) throws -> ElasticComputeCloudModel.DescribeStaleSecurityGroupsResult

    /**
     Invokes the DescribeSubnets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSubnetsRequest object being passed to this operation.
         - completion: The DescribeSubnetsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSubnetsResult
           object will be validated before being returned to caller.
     */
    func describeSubnetsAsync(
            input: ElasticComputeCloudModel.DescribeSubnetsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSubnetsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeSubnets operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSubnetsRequest object being passed to this operation.
     - Returns: The DescribeSubnetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSubnetsSync(
            input: ElasticComputeCloudModel.DescribeSubnetsRequest) throws -> ElasticComputeCloudModel.DescribeSubnetsResult

    /**
     Invokes the DescribeTags operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTagsRequest object being passed to this operation.
         - completion: The DescribeTagsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTagsResult
           object will be validated before being returned to caller.
     */
    func describeTagsAsync(
            input: ElasticComputeCloudModel.DescribeTagsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTagsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeTags operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTagsRequest object being passed to this operation.
     - Returns: The DescribeTagsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTagsSync(
            input: ElasticComputeCloudModel.DescribeTagsRequest) throws -> ElasticComputeCloudModel.DescribeTagsResult

    /**
     Invokes the DescribeTrafficMirrorFilters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTrafficMirrorFiltersRequest object being passed to this operation.
         - completion: The DescribeTrafficMirrorFiltersResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTrafficMirrorFiltersResult
           object will be validated before being returned to caller.
     */
    func describeTrafficMirrorFiltersAsync(
            input: ElasticComputeCloudModel.DescribeTrafficMirrorFiltersRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTrafficMirrorFiltersResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeTrafficMirrorFilters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTrafficMirrorFiltersRequest object being passed to this operation.
     - Returns: The DescribeTrafficMirrorFiltersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTrafficMirrorFiltersSync(
            input: ElasticComputeCloudModel.DescribeTrafficMirrorFiltersRequest) throws -> ElasticComputeCloudModel.DescribeTrafficMirrorFiltersResult

    /**
     Invokes the DescribeTrafficMirrorSessions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTrafficMirrorSessionsRequest object being passed to this operation.
         - completion: The DescribeTrafficMirrorSessionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTrafficMirrorSessionsResult
           object will be validated before being returned to caller.
     */
    func describeTrafficMirrorSessionsAsync(
            input: ElasticComputeCloudModel.DescribeTrafficMirrorSessionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTrafficMirrorSessionsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeTrafficMirrorSessions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTrafficMirrorSessionsRequest object being passed to this operation.
     - Returns: The DescribeTrafficMirrorSessionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTrafficMirrorSessionsSync(
            input: ElasticComputeCloudModel.DescribeTrafficMirrorSessionsRequest) throws -> ElasticComputeCloudModel.DescribeTrafficMirrorSessionsResult

    /**
     Invokes the DescribeTrafficMirrorTargets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTrafficMirrorTargetsRequest object being passed to this operation.
         - completion: The DescribeTrafficMirrorTargetsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTrafficMirrorTargetsResult
           object will be validated before being returned to caller.
     */
    func describeTrafficMirrorTargetsAsync(
            input: ElasticComputeCloudModel.DescribeTrafficMirrorTargetsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTrafficMirrorTargetsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeTrafficMirrorTargets operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTrafficMirrorTargetsRequest object being passed to this operation.
     - Returns: The DescribeTrafficMirrorTargetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTrafficMirrorTargetsSync(
            input: ElasticComputeCloudModel.DescribeTrafficMirrorTargetsRequest) throws -> ElasticComputeCloudModel.DescribeTrafficMirrorTargetsResult

    /**
     Invokes the DescribeTransitGatewayAttachments operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTransitGatewayAttachmentsRequest object being passed to this operation.
         - completion: The DescribeTransitGatewayAttachmentsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTransitGatewayAttachmentsResult
           object will be validated before being returned to caller.
     */
    func describeTransitGatewayAttachmentsAsync(
            input: ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeTransitGatewayAttachments operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayAttachmentsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayAttachmentsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayAttachmentsSync(
            input: ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsRequest) throws -> ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsResult

    /**
     Invokes the DescribeTransitGatewayConnectPeers operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTransitGatewayConnectPeersRequest object being passed to this operation.
         - completion: The DescribeTransitGatewayConnectPeersResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTransitGatewayConnectPeersResult
           object will be validated before being returned to caller.
     */
    func describeTransitGatewayConnectPeersAsync(
            input: ElasticComputeCloudModel.DescribeTransitGatewayConnectPeersRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewayConnectPeersResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeTransitGatewayConnectPeers operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayConnectPeersRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayConnectPeersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayConnectPeersSync(
            input: ElasticComputeCloudModel.DescribeTransitGatewayConnectPeersRequest) throws -> ElasticComputeCloudModel.DescribeTransitGatewayConnectPeersResult

    /**
     Invokes the DescribeTransitGatewayConnects operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTransitGatewayConnectsRequest object being passed to this operation.
         - completion: The DescribeTransitGatewayConnectsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTransitGatewayConnectsResult
           object will be validated before being returned to caller.
     */
    func describeTransitGatewayConnectsAsync(
            input: ElasticComputeCloudModel.DescribeTransitGatewayConnectsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewayConnectsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeTransitGatewayConnects operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayConnectsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayConnectsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayConnectsSync(
            input: ElasticComputeCloudModel.DescribeTransitGatewayConnectsRequest) throws -> ElasticComputeCloudModel.DescribeTransitGatewayConnectsResult

    /**
     Invokes the DescribeTransitGatewayMulticastDomains operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTransitGatewayMulticastDomainsRequest object being passed to this operation.
         - completion: The DescribeTransitGatewayMulticastDomainsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTransitGatewayMulticastDomainsResult
           object will be validated before being returned to caller.
     */
    func describeTransitGatewayMulticastDomainsAsync(
            input: ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeTransitGatewayMulticastDomains operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayMulticastDomainsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayMulticastDomainsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayMulticastDomainsSync(
            input: ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsRequest) throws -> ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsResult

    /**
     Invokes the DescribeTransitGatewayPeeringAttachments operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTransitGatewayPeeringAttachmentsRequest object being passed to this operation.
         - completion: The DescribeTransitGatewayPeeringAttachmentsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTransitGatewayPeeringAttachmentsResult
           object will be validated before being returned to caller.
     */
    func describeTransitGatewayPeeringAttachmentsAsync(
            input: ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeTransitGatewayPeeringAttachments operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayPeeringAttachmentsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayPeeringAttachmentsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayPeeringAttachmentsSync(
            input: ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsRequest) throws -> ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsResult

    /**
     Invokes the DescribeTransitGatewayRouteTables operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTransitGatewayRouteTablesRequest object being passed to this operation.
         - completion: The DescribeTransitGatewayRouteTablesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTransitGatewayRouteTablesResult
           object will be validated before being returned to caller.
     */
    func describeTransitGatewayRouteTablesAsync(
            input: ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeTransitGatewayRouteTables operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayRouteTablesRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayRouteTablesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayRouteTablesSync(
            input: ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesRequest) throws -> ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesResult

    /**
     Invokes the DescribeTransitGatewayVpcAttachments operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTransitGatewayVpcAttachmentsRequest object being passed to this operation.
         - completion: The DescribeTransitGatewayVpcAttachmentsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTransitGatewayVpcAttachmentsResult
           object will be validated before being returned to caller.
     */
    func describeTransitGatewayVpcAttachmentsAsync(
            input: ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeTransitGatewayVpcAttachments operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayVpcAttachmentsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayVpcAttachmentsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayVpcAttachmentsSync(
            input: ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsRequest) throws -> ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsResult

    /**
     Invokes the DescribeTransitGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTransitGatewaysRequest object being passed to this operation.
         - completion: The DescribeTransitGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTransitGatewaysResult
           object will be validated before being returned to caller.
     */
    func describeTransitGatewaysAsync(
            input: ElasticComputeCloudModel.DescribeTransitGatewaysRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewaysResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeTransitGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewaysRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewaysSync(
            input: ElasticComputeCloudModel.DescribeTransitGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeTransitGatewaysResult

    /**
     Invokes the DescribeVolumeAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVolumeAttributeRequest object being passed to this operation.
         - completion: The DescribeVolumeAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVolumeAttributeResult
           object will be validated before being returned to caller.
     */
    func describeVolumeAttributeAsync(
            input: ElasticComputeCloudModel.DescribeVolumeAttributeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVolumeAttributeResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeVolumeAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVolumeAttributeRequest object being passed to this operation.
     - Returns: The DescribeVolumeAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVolumeAttributeSync(
            input: ElasticComputeCloudModel.DescribeVolumeAttributeRequest) throws -> ElasticComputeCloudModel.DescribeVolumeAttributeResult

    /**
     Invokes the DescribeVolumeStatus operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVolumeStatusRequest object being passed to this operation.
         - completion: The DescribeVolumeStatusResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVolumeStatusResult
           object will be validated before being returned to caller.
     */
    func describeVolumeStatusAsync(
            input: ElasticComputeCloudModel.DescribeVolumeStatusRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVolumeStatusResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeVolumeStatus operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVolumeStatusRequest object being passed to this operation.
     - Returns: The DescribeVolumeStatusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVolumeStatusSync(
            input: ElasticComputeCloudModel.DescribeVolumeStatusRequest) throws -> ElasticComputeCloudModel.DescribeVolumeStatusResult

    /**
     Invokes the DescribeVolumes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVolumesRequest object being passed to this operation.
         - completion: The DescribeVolumesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVolumesResult
           object will be validated before being returned to caller.
     */
    func describeVolumesAsync(
            input: ElasticComputeCloudModel.DescribeVolumesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVolumesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeVolumes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVolumesRequest object being passed to this operation.
     - Returns: The DescribeVolumesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVolumesSync(
            input: ElasticComputeCloudModel.DescribeVolumesRequest) throws -> ElasticComputeCloudModel.DescribeVolumesResult

    /**
     Invokes the DescribeVolumesModifications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVolumesModificationsRequest object being passed to this operation.
         - completion: The DescribeVolumesModificationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVolumesModificationsResult
           object will be validated before being returned to caller.
     */
    func describeVolumesModificationsAsync(
            input: ElasticComputeCloudModel.DescribeVolumesModificationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVolumesModificationsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeVolumesModifications operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVolumesModificationsRequest object being passed to this operation.
     - Returns: The DescribeVolumesModificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVolumesModificationsSync(
            input: ElasticComputeCloudModel.DescribeVolumesModificationsRequest) throws -> ElasticComputeCloudModel.DescribeVolumesModificationsResult

    /**
     Invokes the DescribeVpcAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcAttributeRequest object being passed to this operation.
         - completion: The DescribeVpcAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcAttributeResult
           object will be validated before being returned to caller.
     */
    func describeVpcAttributeAsync(
            input: ElasticComputeCloudModel.DescribeVpcAttributeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcAttributeResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeVpcAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcAttributeRequest object being passed to this operation.
     - Returns: The DescribeVpcAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcAttributeSync(
            input: ElasticComputeCloudModel.DescribeVpcAttributeRequest) throws -> ElasticComputeCloudModel.DescribeVpcAttributeResult

    /**
     Invokes the DescribeVpcClassicLink operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcClassicLinkRequest object being passed to this operation.
         - completion: The DescribeVpcClassicLinkResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcClassicLinkResult
           object will be validated before being returned to caller.
     */
    func describeVpcClassicLinkAsync(
            input: ElasticComputeCloudModel.DescribeVpcClassicLinkRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcClassicLinkResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeVpcClassicLink operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcClassicLinkRequest object being passed to this operation.
     - Returns: The DescribeVpcClassicLinkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcClassicLinkSync(
            input: ElasticComputeCloudModel.DescribeVpcClassicLinkRequest) throws -> ElasticComputeCloudModel.DescribeVpcClassicLinkResult

    /**
     Invokes the DescribeVpcClassicLinkDnsSupport operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcClassicLinkDnsSupportRequest object being passed to this operation.
         - completion: The DescribeVpcClassicLinkDnsSupportResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcClassicLinkDnsSupportResult
           object will be validated before being returned to caller.
     */
    func describeVpcClassicLinkDnsSupportAsync(
            input: ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeVpcClassicLinkDnsSupport operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcClassicLinkDnsSupportRequest object being passed to this operation.
     - Returns: The DescribeVpcClassicLinkDnsSupportResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcClassicLinkDnsSupportSync(
            input: ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportRequest) throws -> ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportResult

    /**
     Invokes the DescribeVpcEndpointConnectionNotifications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcEndpointConnectionNotificationsRequest object being passed to this operation.
         - completion: The DescribeVpcEndpointConnectionNotificationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcEndpointConnectionNotificationsResult
           object will be validated before being returned to caller.
     */
    func describeVpcEndpointConnectionNotificationsAsync(
            input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeVpcEndpointConnectionNotifications operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointConnectionNotificationsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointConnectionNotificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointConnectionNotificationsSync(
            input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsResult

    /**
     Invokes the DescribeVpcEndpointConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcEndpointConnectionsRequest object being passed to this operation.
         - completion: The DescribeVpcEndpointConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcEndpointConnectionsResult
           object will be validated before being returned to caller.
     */
    func describeVpcEndpointConnectionsAsync(
            input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcEndpointConnectionsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeVpcEndpointConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointConnectionsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointConnectionsSync(
            input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionsRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointConnectionsResult

    /**
     Invokes the DescribeVpcEndpointServiceConfigurations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcEndpointServiceConfigurationsRequest object being passed to this operation.
         - completion: The DescribeVpcEndpointServiceConfigurationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcEndpointServiceConfigurationsResult
           object will be validated before being returned to caller.
     */
    func describeVpcEndpointServiceConfigurationsAsync(
            input: ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeVpcEndpointServiceConfigurations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointServiceConfigurationsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointServiceConfigurationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointServiceConfigurationsSync(
            input: ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsResult

    /**
     Invokes the DescribeVpcEndpointServicePermissions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcEndpointServicePermissionsRequest object being passed to this operation.
         - completion: The DescribeVpcEndpointServicePermissionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcEndpointServicePermissionsResult
           object will be validated before being returned to caller.
     */
    func describeVpcEndpointServicePermissionsAsync(
            input: ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeVpcEndpointServicePermissions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointServicePermissionsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointServicePermissionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointServicePermissionsSync(
            input: ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsResult

    /**
     Invokes the DescribeVpcEndpointServices operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcEndpointServicesRequest object being passed to this operation.
         - completion: The DescribeVpcEndpointServicesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcEndpointServicesResult
           object will be validated before being returned to caller.
     */
    func describeVpcEndpointServicesAsync(
            input: ElasticComputeCloudModel.DescribeVpcEndpointServicesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcEndpointServicesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeVpcEndpointServices operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointServicesRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointServicesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointServicesSync(
            input: ElasticComputeCloudModel.DescribeVpcEndpointServicesRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointServicesResult

    /**
     Invokes the DescribeVpcEndpoints operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcEndpointsRequest object being passed to this operation.
         - completion: The DescribeVpcEndpointsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcEndpointsResult
           object will be validated before being returned to caller.
     */
    func describeVpcEndpointsAsync(
            input: ElasticComputeCloudModel.DescribeVpcEndpointsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcEndpointsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeVpcEndpoints operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointsSync(
            input: ElasticComputeCloudModel.DescribeVpcEndpointsRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointsResult

    /**
     Invokes the DescribeVpcPeeringConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcPeeringConnectionsRequest object being passed to this operation.
         - completion: The DescribeVpcPeeringConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcPeeringConnectionsResult
           object will be validated before being returned to caller.
     */
    func describeVpcPeeringConnectionsAsync(
            input: ElasticComputeCloudModel.DescribeVpcPeeringConnectionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcPeeringConnectionsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeVpcPeeringConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcPeeringConnectionsRequest object being passed to this operation.
     - Returns: The DescribeVpcPeeringConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcPeeringConnectionsSync(
            input: ElasticComputeCloudModel.DescribeVpcPeeringConnectionsRequest) throws -> ElasticComputeCloudModel.DescribeVpcPeeringConnectionsResult

    /**
     Invokes the DescribeVpcs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcsRequest object being passed to this operation.
         - completion: The DescribeVpcsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcsResult
           object will be validated before being returned to caller.
     */
    func describeVpcsAsync(
            input: ElasticComputeCloudModel.DescribeVpcsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeVpcs operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcsRequest object being passed to this operation.
     - Returns: The DescribeVpcsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcsSync(
            input: ElasticComputeCloudModel.DescribeVpcsRequest) throws -> ElasticComputeCloudModel.DescribeVpcsResult

    /**
     Invokes the DescribeVpnConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpnConnectionsRequest object being passed to this operation.
         - completion: The DescribeVpnConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpnConnectionsResult
           object will be validated before being returned to caller.
     */
    func describeVpnConnectionsAsync(
            input: ElasticComputeCloudModel.DescribeVpnConnectionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpnConnectionsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeVpnConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpnConnectionsRequest object being passed to this operation.
     - Returns: The DescribeVpnConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpnConnectionsSync(
            input: ElasticComputeCloudModel.DescribeVpnConnectionsRequest) throws -> ElasticComputeCloudModel.DescribeVpnConnectionsResult

    /**
     Invokes the DescribeVpnGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpnGatewaysRequest object being passed to this operation.
         - completion: The DescribeVpnGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpnGatewaysResult
           object will be validated before being returned to caller.
     */
    func describeVpnGatewaysAsync(
            input: ElasticComputeCloudModel.DescribeVpnGatewaysRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpnGatewaysResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DescribeVpnGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpnGatewaysRequest object being passed to this operation.
     - Returns: The DescribeVpnGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpnGatewaysSync(
            input: ElasticComputeCloudModel.DescribeVpnGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeVpnGatewaysResult

    /**
     Invokes the DetachClassicLinkVpc operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachClassicLinkVpcRequest object being passed to this operation.
         - completion: The DetachClassicLinkVpcResult object or an error will be passed to this 
           callback when the operation is complete. The DetachClassicLinkVpcResult
           object will be validated before being returned to caller.
     */
    func detachClassicLinkVpcAsync(
            input: ElasticComputeCloudModel.DetachClassicLinkVpcRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DetachClassicLinkVpcResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DetachClassicLinkVpc operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachClassicLinkVpcRequest object being passed to this operation.
     - Returns: The DetachClassicLinkVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func detachClassicLinkVpcSync(
            input: ElasticComputeCloudModel.DetachClassicLinkVpcRequest) throws -> ElasticComputeCloudModel.DetachClassicLinkVpcResult

    /**
     Invokes the DetachInternetGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachInternetGatewayRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func detachInternetGatewayAsync(
            input: ElasticComputeCloudModel.DetachInternetGatewayRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the DetachInternetGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachInternetGatewayRequest object being passed to this operation.
     */
    func detachInternetGatewaySync(
            input: ElasticComputeCloudModel.DetachInternetGatewayRequest) throws

    /**
     Invokes the DetachNetworkInterface operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachNetworkInterfaceRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func detachNetworkInterfaceAsync(
            input: ElasticComputeCloudModel.DetachNetworkInterfaceRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the DetachNetworkInterface operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachNetworkInterfaceRequest object being passed to this operation.
     */
    func detachNetworkInterfaceSync(
            input: ElasticComputeCloudModel.DetachNetworkInterfaceRequest) throws

    /**
     Invokes the DetachVolume operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachVolumeRequest object being passed to this operation.
         - completion: The VolumeAttachment object or an error will be passed to this 
           callback when the operation is complete. The VolumeAttachment
           object will be validated before being returned to caller.
     */
    func detachVolumeAsync(
            input: ElasticComputeCloudModel.DetachVolumeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.VolumeAttachment, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DetachVolume operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachVolumeRequest object being passed to this operation.
     - Returns: The VolumeAttachment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func detachVolumeSync(
            input: ElasticComputeCloudModel.DetachVolumeRequest) throws -> ElasticComputeCloudModel.VolumeAttachment

    /**
     Invokes the DetachVpnGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachVpnGatewayRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func detachVpnGatewayAsync(
            input: ElasticComputeCloudModel.DetachVpnGatewayRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the DetachVpnGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachVpnGatewayRequest object being passed to this operation.
     */
    func detachVpnGatewaySync(
            input: ElasticComputeCloudModel.DetachVpnGatewayRequest) throws

    /**
     Invokes the DisableEbsEncryptionByDefault operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableEbsEncryptionByDefaultRequest object being passed to this operation.
         - completion: The DisableEbsEncryptionByDefaultResult object or an error will be passed to this 
           callback when the operation is complete. The DisableEbsEncryptionByDefaultResult
           object will be validated before being returned to caller.
     */
    func disableEbsEncryptionByDefaultAsync(
            input: ElasticComputeCloudModel.DisableEbsEncryptionByDefaultRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DisableEbsEncryptionByDefaultResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DisableEbsEncryptionByDefault operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableEbsEncryptionByDefaultRequest object being passed to this operation.
     - Returns: The DisableEbsEncryptionByDefaultResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableEbsEncryptionByDefaultSync(
            input: ElasticComputeCloudModel.DisableEbsEncryptionByDefaultRequest) throws -> ElasticComputeCloudModel.DisableEbsEncryptionByDefaultResult

    /**
     Invokes the DisableFastSnapshotRestores operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableFastSnapshotRestoresRequest object being passed to this operation.
         - completion: The DisableFastSnapshotRestoresResult object or an error will be passed to this 
           callback when the operation is complete. The DisableFastSnapshotRestoresResult
           object will be validated before being returned to caller.
     */
    func disableFastSnapshotRestoresAsync(
            input: ElasticComputeCloudModel.DisableFastSnapshotRestoresRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DisableFastSnapshotRestoresResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DisableFastSnapshotRestores operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableFastSnapshotRestoresRequest object being passed to this operation.
     - Returns: The DisableFastSnapshotRestoresResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableFastSnapshotRestoresSync(
            input: ElasticComputeCloudModel.DisableFastSnapshotRestoresRequest) throws -> ElasticComputeCloudModel.DisableFastSnapshotRestoresResult

    /**
     Invokes the DisableTransitGatewayRouteTablePropagation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableTransitGatewayRouteTablePropagationRequest object being passed to this operation.
         - completion: The DisableTransitGatewayRouteTablePropagationResult object or an error will be passed to this 
           callback when the operation is complete. The DisableTransitGatewayRouteTablePropagationResult
           object will be validated before being returned to caller.
     */
    func disableTransitGatewayRouteTablePropagationAsync(
            input: ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DisableTransitGatewayRouteTablePropagation operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableTransitGatewayRouteTablePropagationRequest object being passed to this operation.
     - Returns: The DisableTransitGatewayRouteTablePropagationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableTransitGatewayRouteTablePropagationSync(
            input: ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationRequest) throws -> ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationResult

    /**
     Invokes the DisableVgwRoutePropagation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableVgwRoutePropagationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func disableVgwRoutePropagationAsync(
            input: ElasticComputeCloudModel.DisableVgwRoutePropagationRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the DisableVgwRoutePropagation operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableVgwRoutePropagationRequest object being passed to this operation.
     */
    func disableVgwRoutePropagationSync(
            input: ElasticComputeCloudModel.DisableVgwRoutePropagationRequest) throws

    /**
     Invokes the DisableVpcClassicLink operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableVpcClassicLinkRequest object being passed to this operation.
         - completion: The DisableVpcClassicLinkResult object or an error will be passed to this 
           callback when the operation is complete. The DisableVpcClassicLinkResult
           object will be validated before being returned to caller.
     */
    func disableVpcClassicLinkAsync(
            input: ElasticComputeCloudModel.DisableVpcClassicLinkRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DisableVpcClassicLinkResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DisableVpcClassicLink operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableVpcClassicLinkRequest object being passed to this operation.
     - Returns: The DisableVpcClassicLinkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableVpcClassicLinkSync(
            input: ElasticComputeCloudModel.DisableVpcClassicLinkRequest) throws -> ElasticComputeCloudModel.DisableVpcClassicLinkResult

    /**
     Invokes the DisableVpcClassicLinkDnsSupport operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableVpcClassicLinkDnsSupportRequest object being passed to this operation.
         - completion: The DisableVpcClassicLinkDnsSupportResult object or an error will be passed to this 
           callback when the operation is complete. The DisableVpcClassicLinkDnsSupportResult
           object will be validated before being returned to caller.
     */
    func disableVpcClassicLinkDnsSupportAsync(
            input: ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DisableVpcClassicLinkDnsSupport operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableVpcClassicLinkDnsSupportRequest object being passed to this operation.
     - Returns: The DisableVpcClassicLinkDnsSupportResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableVpcClassicLinkDnsSupportSync(
            input: ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportRequest) throws -> ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportResult

    /**
     Invokes the DisassociateAddress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateAddressRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func disassociateAddressAsync(
            input: ElasticComputeCloudModel.DisassociateAddressRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the DisassociateAddress operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateAddressRequest object being passed to this operation.
     */
    func disassociateAddressSync(
            input: ElasticComputeCloudModel.DisassociateAddressRequest) throws

    /**
     Invokes the DisassociateClientVpnTargetNetwork operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateClientVpnTargetNetworkRequest object being passed to this operation.
         - completion: The DisassociateClientVpnTargetNetworkResult object or an error will be passed to this 
           callback when the operation is complete. The DisassociateClientVpnTargetNetworkResult
           object will be validated before being returned to caller.
     */
    func disassociateClientVpnTargetNetworkAsync(
            input: ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DisassociateClientVpnTargetNetwork operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateClientVpnTargetNetworkRequest object being passed to this operation.
     - Returns: The DisassociateClientVpnTargetNetworkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateClientVpnTargetNetworkSync(
            input: ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkRequest) throws -> ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkResult

    /**
     Invokes the DisassociateEnclaveCertificateIamRole operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateEnclaveCertificateIamRoleRequest object being passed to this operation.
         - completion: The DisassociateEnclaveCertificateIamRoleResult object or an error will be passed to this 
           callback when the operation is complete. The DisassociateEnclaveCertificateIamRoleResult
           object will be validated before being returned to caller.
     */
    func disassociateEnclaveCertificateIamRoleAsync(
            input: ElasticComputeCloudModel.DisassociateEnclaveCertificateIamRoleRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DisassociateEnclaveCertificateIamRoleResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DisassociateEnclaveCertificateIamRole operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateEnclaveCertificateIamRoleRequest object being passed to this operation.
     - Returns: The DisassociateEnclaveCertificateIamRoleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateEnclaveCertificateIamRoleSync(
            input: ElasticComputeCloudModel.DisassociateEnclaveCertificateIamRoleRequest) throws -> ElasticComputeCloudModel.DisassociateEnclaveCertificateIamRoleResult

    /**
     Invokes the DisassociateIamInstanceProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateIamInstanceProfileRequest object being passed to this operation.
         - completion: The DisassociateIamInstanceProfileResult object or an error will be passed to this 
           callback when the operation is complete. The DisassociateIamInstanceProfileResult
           object will be validated before being returned to caller.
     */
    func disassociateIamInstanceProfileAsync(
            input: ElasticComputeCloudModel.DisassociateIamInstanceProfileRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DisassociateIamInstanceProfileResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DisassociateIamInstanceProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateIamInstanceProfileRequest object being passed to this operation.
     - Returns: The DisassociateIamInstanceProfileResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateIamInstanceProfileSync(
            input: ElasticComputeCloudModel.DisassociateIamInstanceProfileRequest) throws -> ElasticComputeCloudModel.DisassociateIamInstanceProfileResult

    /**
     Invokes the DisassociateRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateRouteTableRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func disassociateRouteTableAsync(
            input: ElasticComputeCloudModel.DisassociateRouteTableRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the DisassociateRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateRouteTableRequest object being passed to this operation.
     */
    func disassociateRouteTableSync(
            input: ElasticComputeCloudModel.DisassociateRouteTableRequest) throws

    /**
     Invokes the DisassociateSubnetCidrBlock operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateSubnetCidrBlockRequest object being passed to this operation.
         - completion: The DisassociateSubnetCidrBlockResult object or an error will be passed to this 
           callback when the operation is complete. The DisassociateSubnetCidrBlockResult
           object will be validated before being returned to caller.
     */
    func disassociateSubnetCidrBlockAsync(
            input: ElasticComputeCloudModel.DisassociateSubnetCidrBlockRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DisassociateSubnetCidrBlockResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DisassociateSubnetCidrBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateSubnetCidrBlockRequest object being passed to this operation.
     - Returns: The DisassociateSubnetCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateSubnetCidrBlockSync(
            input: ElasticComputeCloudModel.DisassociateSubnetCidrBlockRequest) throws -> ElasticComputeCloudModel.DisassociateSubnetCidrBlockResult

    /**
     Invokes the DisassociateTransitGatewayMulticastDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateTransitGatewayMulticastDomainRequest object being passed to this operation.
         - completion: The DisassociateTransitGatewayMulticastDomainResult object or an error will be passed to this 
           callback when the operation is complete. The DisassociateTransitGatewayMulticastDomainResult
           object will be validated before being returned to caller.
     */
    func disassociateTransitGatewayMulticastDomainAsync(
            input: ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DisassociateTransitGatewayMulticastDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateTransitGatewayMulticastDomainRequest object being passed to this operation.
     - Returns: The DisassociateTransitGatewayMulticastDomainResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateTransitGatewayMulticastDomainSync(
            input: ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainRequest) throws -> ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainResult

    /**
     Invokes the DisassociateTransitGatewayRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateTransitGatewayRouteTableRequest object being passed to this operation.
         - completion: The DisassociateTransitGatewayRouteTableResult object or an error will be passed to this 
           callback when the operation is complete. The DisassociateTransitGatewayRouteTableResult
           object will be validated before being returned to caller.
     */
    func disassociateTransitGatewayRouteTableAsync(
            input: ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DisassociateTransitGatewayRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: The DisassociateTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateTransitGatewayRouteTableSync(
            input: ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableRequest) throws -> ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableResult

    /**
     Invokes the DisassociateVpcCidrBlock operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateVpcCidrBlockRequest object being passed to this operation.
         - completion: The DisassociateVpcCidrBlockResult object or an error will be passed to this 
           callback when the operation is complete. The DisassociateVpcCidrBlockResult
           object will be validated before being returned to caller.
     */
    func disassociateVpcCidrBlockAsync(
            input: ElasticComputeCloudModel.DisassociateVpcCidrBlockRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DisassociateVpcCidrBlockResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the DisassociateVpcCidrBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateVpcCidrBlockRequest object being passed to this operation.
     - Returns: The DisassociateVpcCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateVpcCidrBlockSync(
            input: ElasticComputeCloudModel.DisassociateVpcCidrBlockRequest) throws -> ElasticComputeCloudModel.DisassociateVpcCidrBlockResult

    /**
     Invokes the EnableEbsEncryptionByDefault operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableEbsEncryptionByDefaultRequest object being passed to this operation.
         - completion: The EnableEbsEncryptionByDefaultResult object or an error will be passed to this 
           callback when the operation is complete. The EnableEbsEncryptionByDefaultResult
           object will be validated before being returned to caller.
     */
    func enableEbsEncryptionByDefaultAsync(
            input: ElasticComputeCloudModel.EnableEbsEncryptionByDefaultRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.EnableEbsEncryptionByDefaultResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the EnableEbsEncryptionByDefault operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableEbsEncryptionByDefaultRequest object being passed to this operation.
     - Returns: The EnableEbsEncryptionByDefaultResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableEbsEncryptionByDefaultSync(
            input: ElasticComputeCloudModel.EnableEbsEncryptionByDefaultRequest) throws -> ElasticComputeCloudModel.EnableEbsEncryptionByDefaultResult

    /**
     Invokes the EnableFastSnapshotRestores operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableFastSnapshotRestoresRequest object being passed to this operation.
         - completion: The EnableFastSnapshotRestoresResult object or an error will be passed to this 
           callback when the operation is complete. The EnableFastSnapshotRestoresResult
           object will be validated before being returned to caller.
     */
    func enableFastSnapshotRestoresAsync(
            input: ElasticComputeCloudModel.EnableFastSnapshotRestoresRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.EnableFastSnapshotRestoresResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the EnableFastSnapshotRestores operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableFastSnapshotRestoresRequest object being passed to this operation.
     - Returns: The EnableFastSnapshotRestoresResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableFastSnapshotRestoresSync(
            input: ElasticComputeCloudModel.EnableFastSnapshotRestoresRequest) throws -> ElasticComputeCloudModel.EnableFastSnapshotRestoresResult

    /**
     Invokes the EnableTransitGatewayRouteTablePropagation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableTransitGatewayRouteTablePropagationRequest object being passed to this operation.
         - completion: The EnableTransitGatewayRouteTablePropagationResult object or an error will be passed to this 
           callback when the operation is complete. The EnableTransitGatewayRouteTablePropagationResult
           object will be validated before being returned to caller.
     */
    func enableTransitGatewayRouteTablePropagationAsync(
            input: ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the EnableTransitGatewayRouteTablePropagation operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableTransitGatewayRouteTablePropagationRequest object being passed to this operation.
     - Returns: The EnableTransitGatewayRouteTablePropagationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableTransitGatewayRouteTablePropagationSync(
            input: ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationRequest) throws -> ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationResult

    /**
     Invokes the EnableVgwRoutePropagation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableVgwRoutePropagationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func enableVgwRoutePropagationAsync(
            input: ElasticComputeCloudModel.EnableVgwRoutePropagationRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the EnableVgwRoutePropagation operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableVgwRoutePropagationRequest object being passed to this operation.
     */
    func enableVgwRoutePropagationSync(
            input: ElasticComputeCloudModel.EnableVgwRoutePropagationRequest) throws

    /**
     Invokes the EnableVolumeIO operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableVolumeIORequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func enableVolumeIOAsync(
            input: ElasticComputeCloudModel.EnableVolumeIORequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the EnableVolumeIO operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableVolumeIORequest object being passed to this operation.
     */
    func enableVolumeIOSync(
            input: ElasticComputeCloudModel.EnableVolumeIORequest) throws

    /**
     Invokes the EnableVpcClassicLink operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableVpcClassicLinkRequest object being passed to this operation.
         - completion: The EnableVpcClassicLinkResult object or an error will be passed to this 
           callback when the operation is complete. The EnableVpcClassicLinkResult
           object will be validated before being returned to caller.
     */
    func enableVpcClassicLinkAsync(
            input: ElasticComputeCloudModel.EnableVpcClassicLinkRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.EnableVpcClassicLinkResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the EnableVpcClassicLink operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableVpcClassicLinkRequest object being passed to this operation.
     - Returns: The EnableVpcClassicLinkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableVpcClassicLinkSync(
            input: ElasticComputeCloudModel.EnableVpcClassicLinkRequest) throws -> ElasticComputeCloudModel.EnableVpcClassicLinkResult

    /**
     Invokes the EnableVpcClassicLinkDnsSupport operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableVpcClassicLinkDnsSupportRequest object being passed to this operation.
         - completion: The EnableVpcClassicLinkDnsSupportResult object or an error will be passed to this 
           callback when the operation is complete. The EnableVpcClassicLinkDnsSupportResult
           object will be validated before being returned to caller.
     */
    func enableVpcClassicLinkDnsSupportAsync(
            input: ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the EnableVpcClassicLinkDnsSupport operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableVpcClassicLinkDnsSupportRequest object being passed to this operation.
     - Returns: The EnableVpcClassicLinkDnsSupportResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableVpcClassicLinkDnsSupportSync(
            input: ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportRequest) throws -> ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportResult

    /**
     Invokes the ExportClientVpnClientCertificateRevocationList operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ExportClientVpnClientCertificateRevocationListRequest object being passed to this operation.
         - completion: The ExportClientVpnClientCertificateRevocationListResult object or an error will be passed to this 
           callback when the operation is complete. The ExportClientVpnClientCertificateRevocationListResult
           object will be validated before being returned to caller.
     */
    func exportClientVpnClientCertificateRevocationListAsync(
            input: ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ExportClientVpnClientCertificateRevocationList operation waiting for the response before returning.

     - Parameters:
         - input: The validated ExportClientVpnClientCertificateRevocationListRequest object being passed to this operation.
     - Returns: The ExportClientVpnClientCertificateRevocationListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func exportClientVpnClientCertificateRevocationListSync(
            input: ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListRequest) throws -> ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListResult

    /**
     Invokes the ExportClientVpnClientConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ExportClientVpnClientConfigurationRequest object being passed to this operation.
         - completion: The ExportClientVpnClientConfigurationResult object or an error will be passed to this 
           callback when the operation is complete. The ExportClientVpnClientConfigurationResult
           object will be validated before being returned to caller.
     */
    func exportClientVpnClientConfigurationAsync(
            input: ElasticComputeCloudModel.ExportClientVpnClientConfigurationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ExportClientVpnClientConfigurationResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ExportClientVpnClientConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated ExportClientVpnClientConfigurationRequest object being passed to this operation.
     - Returns: The ExportClientVpnClientConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func exportClientVpnClientConfigurationSync(
            input: ElasticComputeCloudModel.ExportClientVpnClientConfigurationRequest) throws -> ElasticComputeCloudModel.ExportClientVpnClientConfigurationResult

    /**
     Invokes the ExportImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ExportImageRequest object being passed to this operation.
         - completion: The ExportImageResult object or an error will be passed to this 
           callback when the operation is complete. The ExportImageResult
           object will be validated before being returned to caller.
     */
    func exportImageAsync(
            input: ElasticComputeCloudModel.ExportImageRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ExportImageResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ExportImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated ExportImageRequest object being passed to this operation.
     - Returns: The ExportImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func exportImageSync(
            input: ElasticComputeCloudModel.ExportImageRequest) throws -> ElasticComputeCloudModel.ExportImageResult

    /**
     Invokes the ExportTransitGatewayRoutes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ExportTransitGatewayRoutesRequest object being passed to this operation.
         - completion: The ExportTransitGatewayRoutesResult object or an error will be passed to this 
           callback when the operation is complete. The ExportTransitGatewayRoutesResult
           object will be validated before being returned to caller.
     */
    func exportTransitGatewayRoutesAsync(
            input: ElasticComputeCloudModel.ExportTransitGatewayRoutesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ExportTransitGatewayRoutesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ExportTransitGatewayRoutes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ExportTransitGatewayRoutesRequest object being passed to this operation.
     - Returns: The ExportTransitGatewayRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func exportTransitGatewayRoutesSync(
            input: ElasticComputeCloudModel.ExportTransitGatewayRoutesRequest) throws -> ElasticComputeCloudModel.ExportTransitGatewayRoutesResult

    /**
     Invokes the GetAssociatedEnclaveCertificateIamRoles operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetAssociatedEnclaveCertificateIamRolesRequest object being passed to this operation.
         - completion: The GetAssociatedEnclaveCertificateIamRolesResult object or an error will be passed to this 
           callback when the operation is complete. The GetAssociatedEnclaveCertificateIamRolesResult
           object will be validated before being returned to caller.
     */
    func getAssociatedEnclaveCertificateIamRolesAsync(
            input: ElasticComputeCloudModel.GetAssociatedEnclaveCertificateIamRolesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetAssociatedEnclaveCertificateIamRolesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the GetAssociatedEnclaveCertificateIamRoles operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetAssociatedEnclaveCertificateIamRolesRequest object being passed to this operation.
     - Returns: The GetAssociatedEnclaveCertificateIamRolesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getAssociatedEnclaveCertificateIamRolesSync(
            input: ElasticComputeCloudModel.GetAssociatedEnclaveCertificateIamRolesRequest) throws -> ElasticComputeCloudModel.GetAssociatedEnclaveCertificateIamRolesResult

    /**
     Invokes the GetAssociatedIpv6PoolCidrs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetAssociatedIpv6PoolCidrsRequest object being passed to this operation.
         - completion: The GetAssociatedIpv6PoolCidrsResult object or an error will be passed to this 
           callback when the operation is complete. The GetAssociatedIpv6PoolCidrsResult
           object will be validated before being returned to caller.
     */
    func getAssociatedIpv6PoolCidrsAsync(
            input: ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the GetAssociatedIpv6PoolCidrs operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetAssociatedIpv6PoolCidrsRequest object being passed to this operation.
     - Returns: The GetAssociatedIpv6PoolCidrsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getAssociatedIpv6PoolCidrsSync(
            input: ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsRequest) throws -> ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsResult

    /**
     Invokes the GetCapacityReservationUsage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetCapacityReservationUsageRequest object being passed to this operation.
         - completion: The GetCapacityReservationUsageResult object or an error will be passed to this 
           callback when the operation is complete. The GetCapacityReservationUsageResult
           object will be validated before being returned to caller.
     */
    func getCapacityReservationUsageAsync(
            input: ElasticComputeCloudModel.GetCapacityReservationUsageRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetCapacityReservationUsageResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the GetCapacityReservationUsage operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetCapacityReservationUsageRequest object being passed to this operation.
     - Returns: The GetCapacityReservationUsageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getCapacityReservationUsageSync(
            input: ElasticComputeCloudModel.GetCapacityReservationUsageRequest) throws -> ElasticComputeCloudModel.GetCapacityReservationUsageResult

    /**
     Invokes the GetCoipPoolUsage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetCoipPoolUsageRequest object being passed to this operation.
         - completion: The GetCoipPoolUsageResult object or an error will be passed to this 
           callback when the operation is complete. The GetCoipPoolUsageResult
           object will be validated before being returned to caller.
     */
    func getCoipPoolUsageAsync(
            input: ElasticComputeCloudModel.GetCoipPoolUsageRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetCoipPoolUsageResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the GetCoipPoolUsage operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetCoipPoolUsageRequest object being passed to this operation.
     - Returns: The GetCoipPoolUsageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getCoipPoolUsageSync(
            input: ElasticComputeCloudModel.GetCoipPoolUsageRequest) throws -> ElasticComputeCloudModel.GetCoipPoolUsageResult

    /**
     Invokes the GetConsoleOutput operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetConsoleOutputRequest object being passed to this operation.
         - completion: The GetConsoleOutputResult object or an error will be passed to this 
           callback when the operation is complete. The GetConsoleOutputResult
           object will be validated before being returned to caller.
     */
    func getConsoleOutputAsync(
            input: ElasticComputeCloudModel.GetConsoleOutputRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetConsoleOutputResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the GetConsoleOutput operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetConsoleOutputRequest object being passed to this operation.
     - Returns: The GetConsoleOutputResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getConsoleOutputSync(
            input: ElasticComputeCloudModel.GetConsoleOutputRequest) throws -> ElasticComputeCloudModel.GetConsoleOutputResult

    /**
     Invokes the GetConsoleScreenshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetConsoleScreenshotRequest object being passed to this operation.
         - completion: The GetConsoleScreenshotResult object or an error will be passed to this 
           callback when the operation is complete. The GetConsoleScreenshotResult
           object will be validated before being returned to caller.
     */
    func getConsoleScreenshotAsync(
            input: ElasticComputeCloudModel.GetConsoleScreenshotRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetConsoleScreenshotResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the GetConsoleScreenshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetConsoleScreenshotRequest object being passed to this operation.
     - Returns: The GetConsoleScreenshotResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getConsoleScreenshotSync(
            input: ElasticComputeCloudModel.GetConsoleScreenshotRequest) throws -> ElasticComputeCloudModel.GetConsoleScreenshotResult

    /**
     Invokes the GetDefaultCreditSpecification operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetDefaultCreditSpecificationRequest object being passed to this operation.
         - completion: The GetDefaultCreditSpecificationResult object or an error will be passed to this 
           callback when the operation is complete. The GetDefaultCreditSpecificationResult
           object will be validated before being returned to caller.
     */
    func getDefaultCreditSpecificationAsync(
            input: ElasticComputeCloudModel.GetDefaultCreditSpecificationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetDefaultCreditSpecificationResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the GetDefaultCreditSpecification operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetDefaultCreditSpecificationRequest object being passed to this operation.
     - Returns: The GetDefaultCreditSpecificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getDefaultCreditSpecificationSync(
            input: ElasticComputeCloudModel.GetDefaultCreditSpecificationRequest) throws -> ElasticComputeCloudModel.GetDefaultCreditSpecificationResult

    /**
     Invokes the GetEbsDefaultKmsKeyId operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetEbsDefaultKmsKeyIdRequest object being passed to this operation.
         - completion: The GetEbsDefaultKmsKeyIdResult object or an error will be passed to this 
           callback when the operation is complete. The GetEbsDefaultKmsKeyIdResult
           object will be validated before being returned to caller.
     */
    func getEbsDefaultKmsKeyIdAsync(
            input: ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the GetEbsDefaultKmsKeyId operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetEbsDefaultKmsKeyIdRequest object being passed to this operation.
     - Returns: The GetEbsDefaultKmsKeyIdResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getEbsDefaultKmsKeyIdSync(
            input: ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdRequest) throws -> ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdResult

    /**
     Invokes the GetEbsEncryptionByDefault operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetEbsEncryptionByDefaultRequest object being passed to this operation.
         - completion: The GetEbsEncryptionByDefaultResult object or an error will be passed to this 
           callback when the operation is complete. The GetEbsEncryptionByDefaultResult
           object will be validated before being returned to caller.
     */
    func getEbsEncryptionByDefaultAsync(
            input: ElasticComputeCloudModel.GetEbsEncryptionByDefaultRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetEbsEncryptionByDefaultResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the GetEbsEncryptionByDefault operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetEbsEncryptionByDefaultRequest object being passed to this operation.
     - Returns: The GetEbsEncryptionByDefaultResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getEbsEncryptionByDefaultSync(
            input: ElasticComputeCloudModel.GetEbsEncryptionByDefaultRequest) throws -> ElasticComputeCloudModel.GetEbsEncryptionByDefaultResult

    /**
     Invokes the GetGroupsForCapacityReservation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetGroupsForCapacityReservationRequest object being passed to this operation.
         - completion: The GetGroupsForCapacityReservationResult object or an error will be passed to this 
           callback when the operation is complete. The GetGroupsForCapacityReservationResult
           object will be validated before being returned to caller.
     */
    func getGroupsForCapacityReservationAsync(
            input: ElasticComputeCloudModel.GetGroupsForCapacityReservationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetGroupsForCapacityReservationResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the GetGroupsForCapacityReservation operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetGroupsForCapacityReservationRequest object being passed to this operation.
     - Returns: The GetGroupsForCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getGroupsForCapacityReservationSync(
            input: ElasticComputeCloudModel.GetGroupsForCapacityReservationRequest) throws -> ElasticComputeCloudModel.GetGroupsForCapacityReservationResult

    /**
     Invokes the GetHostReservationPurchasePreview operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetHostReservationPurchasePreviewRequest object being passed to this operation.
         - completion: The GetHostReservationPurchasePreviewResult object or an error will be passed to this 
           callback when the operation is complete. The GetHostReservationPurchasePreviewResult
           object will be validated before being returned to caller.
     */
    func getHostReservationPurchasePreviewAsync(
            input: ElasticComputeCloudModel.GetHostReservationPurchasePreviewRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetHostReservationPurchasePreviewResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the GetHostReservationPurchasePreview operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetHostReservationPurchasePreviewRequest object being passed to this operation.
     - Returns: The GetHostReservationPurchasePreviewResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getHostReservationPurchasePreviewSync(
            input: ElasticComputeCloudModel.GetHostReservationPurchasePreviewRequest) throws -> ElasticComputeCloudModel.GetHostReservationPurchasePreviewResult

    /**
     Invokes the GetLaunchTemplateData operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetLaunchTemplateDataRequest object being passed to this operation.
         - completion: The GetLaunchTemplateDataResult object or an error will be passed to this 
           callback when the operation is complete. The GetLaunchTemplateDataResult
           object will be validated before being returned to caller.
     */
    func getLaunchTemplateDataAsync(
            input: ElasticComputeCloudModel.GetLaunchTemplateDataRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetLaunchTemplateDataResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the GetLaunchTemplateData operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetLaunchTemplateDataRequest object being passed to this operation.
     - Returns: The GetLaunchTemplateDataResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getLaunchTemplateDataSync(
            input: ElasticComputeCloudModel.GetLaunchTemplateDataRequest) throws -> ElasticComputeCloudModel.GetLaunchTemplateDataResult

    /**
     Invokes the GetManagedPrefixListAssociations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetManagedPrefixListAssociationsRequest object being passed to this operation.
         - completion: The GetManagedPrefixListAssociationsResult object or an error will be passed to this 
           callback when the operation is complete. The GetManagedPrefixListAssociationsResult
           object will be validated before being returned to caller.
     */
    func getManagedPrefixListAssociationsAsync(
            input: ElasticComputeCloudModel.GetManagedPrefixListAssociationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetManagedPrefixListAssociationsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the GetManagedPrefixListAssociations operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetManagedPrefixListAssociationsRequest object being passed to this operation.
     - Returns: The GetManagedPrefixListAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getManagedPrefixListAssociationsSync(
            input: ElasticComputeCloudModel.GetManagedPrefixListAssociationsRequest) throws -> ElasticComputeCloudModel.GetManagedPrefixListAssociationsResult

    /**
     Invokes the GetManagedPrefixListEntries operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetManagedPrefixListEntriesRequest object being passed to this operation.
         - completion: The GetManagedPrefixListEntriesResult object or an error will be passed to this 
           callback when the operation is complete. The GetManagedPrefixListEntriesResult
           object will be validated before being returned to caller.
     */
    func getManagedPrefixListEntriesAsync(
            input: ElasticComputeCloudModel.GetManagedPrefixListEntriesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetManagedPrefixListEntriesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the GetManagedPrefixListEntries operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetManagedPrefixListEntriesRequest object being passed to this operation.
     - Returns: The GetManagedPrefixListEntriesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getManagedPrefixListEntriesSync(
            input: ElasticComputeCloudModel.GetManagedPrefixListEntriesRequest) throws -> ElasticComputeCloudModel.GetManagedPrefixListEntriesResult

    /**
     Invokes the GetPasswordData operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetPasswordDataRequest object being passed to this operation.
         - completion: The GetPasswordDataResult object or an error will be passed to this 
           callback when the operation is complete. The GetPasswordDataResult
           object will be validated before being returned to caller.
     */
    func getPasswordDataAsync(
            input: ElasticComputeCloudModel.GetPasswordDataRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetPasswordDataResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the GetPasswordData operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetPasswordDataRequest object being passed to this operation.
     - Returns: The GetPasswordDataResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getPasswordDataSync(
            input: ElasticComputeCloudModel.GetPasswordDataRequest) throws -> ElasticComputeCloudModel.GetPasswordDataResult

    /**
     Invokes the GetReservedInstancesExchangeQuote operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetReservedInstancesExchangeQuoteRequest object being passed to this operation.
         - completion: The GetReservedInstancesExchangeQuoteResult object or an error will be passed to this 
           callback when the operation is complete. The GetReservedInstancesExchangeQuoteResult
           object will be validated before being returned to caller.
     */
    func getReservedInstancesExchangeQuoteAsync(
            input: ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the GetReservedInstancesExchangeQuote operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetReservedInstancesExchangeQuoteRequest object being passed to this operation.
     - Returns: The GetReservedInstancesExchangeQuoteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getReservedInstancesExchangeQuoteSync(
            input: ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteRequest) throws -> ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteResult

    /**
     Invokes the GetTransitGatewayAttachmentPropagations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetTransitGatewayAttachmentPropagationsRequest object being passed to this operation.
         - completion: The GetTransitGatewayAttachmentPropagationsResult object or an error will be passed to this 
           callback when the operation is complete. The GetTransitGatewayAttachmentPropagationsResult
           object will be validated before being returned to caller.
     */
    func getTransitGatewayAttachmentPropagationsAsync(
            input: ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the GetTransitGatewayAttachmentPropagations operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetTransitGatewayAttachmentPropagationsRequest object being passed to this operation.
     - Returns: The GetTransitGatewayAttachmentPropagationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getTransitGatewayAttachmentPropagationsSync(
            input: ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsRequest) throws -> ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsResult

    /**
     Invokes the GetTransitGatewayMulticastDomainAssociations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetTransitGatewayMulticastDomainAssociationsRequest object being passed to this operation.
         - completion: The GetTransitGatewayMulticastDomainAssociationsResult object or an error will be passed to this 
           callback when the operation is complete. The GetTransitGatewayMulticastDomainAssociationsResult
           object will be validated before being returned to caller.
     */
    func getTransitGatewayMulticastDomainAssociationsAsync(
            input: ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the GetTransitGatewayMulticastDomainAssociations operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetTransitGatewayMulticastDomainAssociationsRequest object being passed to this operation.
     - Returns: The GetTransitGatewayMulticastDomainAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getTransitGatewayMulticastDomainAssociationsSync(
            input: ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsRequest) throws -> ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsResult

    /**
     Invokes the GetTransitGatewayPrefixListReferences operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetTransitGatewayPrefixListReferencesRequest object being passed to this operation.
         - completion: The GetTransitGatewayPrefixListReferencesResult object or an error will be passed to this 
           callback when the operation is complete. The GetTransitGatewayPrefixListReferencesResult
           object will be validated before being returned to caller.
     */
    func getTransitGatewayPrefixListReferencesAsync(
            input: ElasticComputeCloudModel.GetTransitGatewayPrefixListReferencesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetTransitGatewayPrefixListReferencesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the GetTransitGatewayPrefixListReferences operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetTransitGatewayPrefixListReferencesRequest object being passed to this operation.
     - Returns: The GetTransitGatewayPrefixListReferencesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getTransitGatewayPrefixListReferencesSync(
            input: ElasticComputeCloudModel.GetTransitGatewayPrefixListReferencesRequest) throws -> ElasticComputeCloudModel.GetTransitGatewayPrefixListReferencesResult

    /**
     Invokes the GetTransitGatewayRouteTableAssociations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetTransitGatewayRouteTableAssociationsRequest object being passed to this operation.
         - completion: The GetTransitGatewayRouteTableAssociationsResult object or an error will be passed to this 
           callback when the operation is complete. The GetTransitGatewayRouteTableAssociationsResult
           object will be validated before being returned to caller.
     */
    func getTransitGatewayRouteTableAssociationsAsync(
            input: ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the GetTransitGatewayRouteTableAssociations operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetTransitGatewayRouteTableAssociationsRequest object being passed to this operation.
     - Returns: The GetTransitGatewayRouteTableAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getTransitGatewayRouteTableAssociationsSync(
            input: ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsRequest) throws -> ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsResult

    /**
     Invokes the GetTransitGatewayRouteTablePropagations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetTransitGatewayRouteTablePropagationsRequest object being passed to this operation.
         - completion: The GetTransitGatewayRouteTablePropagationsResult object or an error will be passed to this 
           callback when the operation is complete. The GetTransitGatewayRouteTablePropagationsResult
           object will be validated before being returned to caller.
     */
    func getTransitGatewayRouteTablePropagationsAsync(
            input: ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the GetTransitGatewayRouteTablePropagations operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetTransitGatewayRouteTablePropagationsRequest object being passed to this operation.
     - Returns: The GetTransitGatewayRouteTablePropagationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getTransitGatewayRouteTablePropagationsSync(
            input: ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsRequest) throws -> ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsResult

    /**
     Invokes the ImportClientVpnClientCertificateRevocationList operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportClientVpnClientCertificateRevocationListRequest object being passed to this operation.
         - completion: The ImportClientVpnClientCertificateRevocationListResult object or an error will be passed to this 
           callback when the operation is complete. The ImportClientVpnClientCertificateRevocationListResult
           object will be validated before being returned to caller.
     */
    func importClientVpnClientCertificateRevocationListAsync(
            input: ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ImportClientVpnClientCertificateRevocationList operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportClientVpnClientCertificateRevocationListRequest object being passed to this operation.
     - Returns: The ImportClientVpnClientCertificateRevocationListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importClientVpnClientCertificateRevocationListSync(
            input: ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListRequest) throws -> ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListResult

    /**
     Invokes the ImportImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportImageRequest object being passed to this operation.
         - completion: The ImportImageResult object or an error will be passed to this 
           callback when the operation is complete. The ImportImageResult
           object will be validated before being returned to caller.
     */
    func importImageAsync(
            input: ElasticComputeCloudModel.ImportImageRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ImportImageResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ImportImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportImageRequest object being passed to this operation.
     - Returns: The ImportImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importImageSync(
            input: ElasticComputeCloudModel.ImportImageRequest) throws -> ElasticComputeCloudModel.ImportImageResult

    /**
     Invokes the ImportInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportInstanceRequest object being passed to this operation.
         - completion: The ImportInstanceResult object or an error will be passed to this 
           callback when the operation is complete. The ImportInstanceResult
           object will be validated before being returned to caller.
     */
    func importInstanceAsync(
            input: ElasticComputeCloudModel.ImportInstanceRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ImportInstanceResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ImportInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportInstanceRequest object being passed to this operation.
     - Returns: The ImportInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importInstanceSync(
            input: ElasticComputeCloudModel.ImportInstanceRequest) throws -> ElasticComputeCloudModel.ImportInstanceResult

    /**
     Invokes the ImportKeyPair operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportKeyPairRequest object being passed to this operation.
         - completion: The ImportKeyPairResult object or an error will be passed to this 
           callback when the operation is complete. The ImportKeyPairResult
           object will be validated before being returned to caller.
     */
    func importKeyPairAsync(
            input: ElasticComputeCloudModel.ImportKeyPairRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ImportKeyPairResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ImportKeyPair operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportKeyPairRequest object being passed to this operation.
     - Returns: The ImportKeyPairResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importKeyPairSync(
            input: ElasticComputeCloudModel.ImportKeyPairRequest) throws -> ElasticComputeCloudModel.ImportKeyPairResult

    /**
     Invokes the ImportSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportSnapshotRequest object being passed to this operation.
         - completion: The ImportSnapshotResult object or an error will be passed to this 
           callback when the operation is complete. The ImportSnapshotResult
           object will be validated before being returned to caller.
     */
    func importSnapshotAsync(
            input: ElasticComputeCloudModel.ImportSnapshotRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ImportSnapshotResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ImportSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportSnapshotRequest object being passed to this operation.
     - Returns: The ImportSnapshotResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importSnapshotSync(
            input: ElasticComputeCloudModel.ImportSnapshotRequest) throws -> ElasticComputeCloudModel.ImportSnapshotResult

    /**
     Invokes the ImportVolume operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportVolumeRequest object being passed to this operation.
         - completion: The ImportVolumeResult object or an error will be passed to this 
           callback when the operation is complete. The ImportVolumeResult
           object will be validated before being returned to caller.
     */
    func importVolumeAsync(
            input: ElasticComputeCloudModel.ImportVolumeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ImportVolumeResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ImportVolume operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportVolumeRequest object being passed to this operation.
     - Returns: The ImportVolumeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importVolumeSync(
            input: ElasticComputeCloudModel.ImportVolumeRequest) throws -> ElasticComputeCloudModel.ImportVolumeResult

    /**
     Invokes the ModifyAddressAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyAddressAttributeRequest object being passed to this operation.
         - completion: The ModifyAddressAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyAddressAttributeResult
           object will be validated before being returned to caller.
     */
    func modifyAddressAttributeAsync(
            input: ElasticComputeCloudModel.ModifyAddressAttributeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyAddressAttributeResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyAddressAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyAddressAttributeRequest object being passed to this operation.
     - Returns: The ModifyAddressAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyAddressAttributeSync(
            input: ElasticComputeCloudModel.ModifyAddressAttributeRequest) throws -> ElasticComputeCloudModel.ModifyAddressAttributeResult

    /**
     Invokes the ModifyAvailabilityZoneGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyAvailabilityZoneGroupRequest object being passed to this operation.
         - completion: The ModifyAvailabilityZoneGroupResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyAvailabilityZoneGroupResult
           object will be validated before being returned to caller.
     */
    func modifyAvailabilityZoneGroupAsync(
            input: ElasticComputeCloudModel.ModifyAvailabilityZoneGroupRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyAvailabilityZoneGroupResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyAvailabilityZoneGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyAvailabilityZoneGroupRequest object being passed to this operation.
     - Returns: The ModifyAvailabilityZoneGroupResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyAvailabilityZoneGroupSync(
            input: ElasticComputeCloudModel.ModifyAvailabilityZoneGroupRequest) throws -> ElasticComputeCloudModel.ModifyAvailabilityZoneGroupResult

    /**
     Invokes the ModifyCapacityReservation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyCapacityReservationRequest object being passed to this operation.
         - completion: The ModifyCapacityReservationResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyCapacityReservationResult
           object will be validated before being returned to caller.
     */
    func modifyCapacityReservationAsync(
            input: ElasticComputeCloudModel.ModifyCapacityReservationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyCapacityReservationResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyCapacityReservation operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyCapacityReservationRequest object being passed to this operation.
     - Returns: The ModifyCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyCapacityReservationSync(
            input: ElasticComputeCloudModel.ModifyCapacityReservationRequest) throws -> ElasticComputeCloudModel.ModifyCapacityReservationResult

    /**
     Invokes the ModifyClientVpnEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyClientVpnEndpointRequest object being passed to this operation.
         - completion: The ModifyClientVpnEndpointResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyClientVpnEndpointResult
           object will be validated before being returned to caller.
     */
    func modifyClientVpnEndpointAsync(
            input: ElasticComputeCloudModel.ModifyClientVpnEndpointRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyClientVpnEndpointResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyClientVpnEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyClientVpnEndpointRequest object being passed to this operation.
     - Returns: The ModifyClientVpnEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyClientVpnEndpointSync(
            input: ElasticComputeCloudModel.ModifyClientVpnEndpointRequest) throws -> ElasticComputeCloudModel.ModifyClientVpnEndpointResult

    /**
     Invokes the ModifyDefaultCreditSpecification operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDefaultCreditSpecificationRequest object being passed to this operation.
         - completion: The ModifyDefaultCreditSpecificationResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyDefaultCreditSpecificationResult
           object will be validated before being returned to caller.
     */
    func modifyDefaultCreditSpecificationAsync(
            input: ElasticComputeCloudModel.ModifyDefaultCreditSpecificationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyDefaultCreditSpecificationResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyDefaultCreditSpecification operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDefaultCreditSpecificationRequest object being passed to this operation.
     - Returns: The ModifyDefaultCreditSpecificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyDefaultCreditSpecificationSync(
            input: ElasticComputeCloudModel.ModifyDefaultCreditSpecificationRequest) throws -> ElasticComputeCloudModel.ModifyDefaultCreditSpecificationResult

    /**
     Invokes the ModifyEbsDefaultKmsKeyId operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyEbsDefaultKmsKeyIdRequest object being passed to this operation.
         - completion: The ModifyEbsDefaultKmsKeyIdResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyEbsDefaultKmsKeyIdResult
           object will be validated before being returned to caller.
     */
    func modifyEbsDefaultKmsKeyIdAsync(
            input: ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyEbsDefaultKmsKeyId operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyEbsDefaultKmsKeyIdRequest object being passed to this operation.
     - Returns: The ModifyEbsDefaultKmsKeyIdResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyEbsDefaultKmsKeyIdSync(
            input: ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdRequest) throws -> ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdResult

    /**
     Invokes the ModifyFleet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyFleetRequest object being passed to this operation.
         - completion: The ModifyFleetResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyFleetResult
           object will be validated before being returned to caller.
     */
    func modifyFleetAsync(
            input: ElasticComputeCloudModel.ModifyFleetRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyFleetResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyFleet operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyFleetRequest object being passed to this operation.
     - Returns: The ModifyFleetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyFleetSync(
            input: ElasticComputeCloudModel.ModifyFleetRequest) throws -> ElasticComputeCloudModel.ModifyFleetResult

    /**
     Invokes the ModifyFpgaImageAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyFpgaImageAttributeRequest object being passed to this operation.
         - completion: The ModifyFpgaImageAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyFpgaImageAttributeResult
           object will be validated before being returned to caller.
     */
    func modifyFpgaImageAttributeAsync(
            input: ElasticComputeCloudModel.ModifyFpgaImageAttributeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyFpgaImageAttributeResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyFpgaImageAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyFpgaImageAttributeRequest object being passed to this operation.
     - Returns: The ModifyFpgaImageAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyFpgaImageAttributeSync(
            input: ElasticComputeCloudModel.ModifyFpgaImageAttributeRequest) throws -> ElasticComputeCloudModel.ModifyFpgaImageAttributeResult

    /**
     Invokes the ModifyHosts operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyHostsRequest object being passed to this operation.
         - completion: The ModifyHostsResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyHostsResult
           object will be validated before being returned to caller.
     */
    func modifyHostsAsync(
            input: ElasticComputeCloudModel.ModifyHostsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyHostsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyHosts operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyHostsRequest object being passed to this operation.
     - Returns: The ModifyHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyHostsSync(
            input: ElasticComputeCloudModel.ModifyHostsRequest) throws -> ElasticComputeCloudModel.ModifyHostsResult

    /**
     Invokes the ModifyIdFormat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyIdFormatRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func modifyIdFormatAsync(
            input: ElasticComputeCloudModel.ModifyIdFormatRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the ModifyIdFormat operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyIdFormatRequest object being passed to this operation.
     */
    func modifyIdFormatSync(
            input: ElasticComputeCloudModel.ModifyIdFormatRequest) throws

    /**
     Invokes the ModifyIdentityIdFormat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyIdentityIdFormatRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func modifyIdentityIdFormatAsync(
            input: ElasticComputeCloudModel.ModifyIdentityIdFormatRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the ModifyIdentityIdFormat operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyIdentityIdFormatRequest object being passed to this operation.
     */
    func modifyIdentityIdFormatSync(
            input: ElasticComputeCloudModel.ModifyIdentityIdFormatRequest) throws

    /**
     Invokes the ModifyImageAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyImageAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func modifyImageAttributeAsync(
            input: ElasticComputeCloudModel.ModifyImageAttributeRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the ModifyImageAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyImageAttributeRequest object being passed to this operation.
     */
    func modifyImageAttributeSync(
            input: ElasticComputeCloudModel.ModifyImageAttributeRequest) throws

    /**
     Invokes the ModifyInstanceAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyInstanceAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func modifyInstanceAttributeAsync(
            input: ElasticComputeCloudModel.ModifyInstanceAttributeRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the ModifyInstanceAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyInstanceAttributeRequest object being passed to this operation.
     */
    func modifyInstanceAttributeSync(
            input: ElasticComputeCloudModel.ModifyInstanceAttributeRequest) throws

    /**
     Invokes the ModifyInstanceCapacityReservationAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyInstanceCapacityReservationAttributesRequest object being passed to this operation.
         - completion: The ModifyInstanceCapacityReservationAttributesResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyInstanceCapacityReservationAttributesResult
           object will be validated before being returned to caller.
     */
    func modifyInstanceCapacityReservationAttributesAsync(
            input: ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyInstanceCapacityReservationAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyInstanceCapacityReservationAttributesRequest object being passed to this operation.
     - Returns: The ModifyInstanceCapacityReservationAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstanceCapacityReservationAttributesSync(
            input: ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesRequest) throws -> ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesResult

    /**
     Invokes the ModifyInstanceCreditSpecification operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyInstanceCreditSpecificationRequest object being passed to this operation.
         - completion: The ModifyInstanceCreditSpecificationResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyInstanceCreditSpecificationResult
           object will be validated before being returned to caller.
     */
    func modifyInstanceCreditSpecificationAsync(
            input: ElasticComputeCloudModel.ModifyInstanceCreditSpecificationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyInstanceCreditSpecificationResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyInstanceCreditSpecification operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyInstanceCreditSpecificationRequest object being passed to this operation.
     - Returns: The ModifyInstanceCreditSpecificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstanceCreditSpecificationSync(
            input: ElasticComputeCloudModel.ModifyInstanceCreditSpecificationRequest) throws -> ElasticComputeCloudModel.ModifyInstanceCreditSpecificationResult

    /**
     Invokes the ModifyInstanceEventStartTime operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyInstanceEventStartTimeRequest object being passed to this operation.
         - completion: The ModifyInstanceEventStartTimeResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyInstanceEventStartTimeResult
           object will be validated before being returned to caller.
     */
    func modifyInstanceEventStartTimeAsync(
            input: ElasticComputeCloudModel.ModifyInstanceEventStartTimeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyInstanceEventStartTimeResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyInstanceEventStartTime operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyInstanceEventStartTimeRequest object being passed to this operation.
     - Returns: The ModifyInstanceEventStartTimeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstanceEventStartTimeSync(
            input: ElasticComputeCloudModel.ModifyInstanceEventStartTimeRequest) throws -> ElasticComputeCloudModel.ModifyInstanceEventStartTimeResult

    /**
     Invokes the ModifyInstanceMetadataOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyInstanceMetadataOptionsRequest object being passed to this operation.
         - completion: The ModifyInstanceMetadataOptionsResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyInstanceMetadataOptionsResult
           object will be validated before being returned to caller.
     */
    func modifyInstanceMetadataOptionsAsync(
            input: ElasticComputeCloudModel.ModifyInstanceMetadataOptionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyInstanceMetadataOptionsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyInstanceMetadataOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyInstanceMetadataOptionsRequest object being passed to this operation.
     - Returns: The ModifyInstanceMetadataOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstanceMetadataOptionsSync(
            input: ElasticComputeCloudModel.ModifyInstanceMetadataOptionsRequest) throws -> ElasticComputeCloudModel.ModifyInstanceMetadataOptionsResult

    /**
     Invokes the ModifyInstancePlacement operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyInstancePlacementRequest object being passed to this operation.
         - completion: The ModifyInstancePlacementResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyInstancePlacementResult
           object will be validated before being returned to caller.
     */
    func modifyInstancePlacementAsync(
            input: ElasticComputeCloudModel.ModifyInstancePlacementRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyInstancePlacementResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyInstancePlacement operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyInstancePlacementRequest object being passed to this operation.
     - Returns: The ModifyInstancePlacementResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstancePlacementSync(
            input: ElasticComputeCloudModel.ModifyInstancePlacementRequest) throws -> ElasticComputeCloudModel.ModifyInstancePlacementResult

    /**
     Invokes the ModifyLaunchTemplate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyLaunchTemplateRequest object being passed to this operation.
         - completion: The ModifyLaunchTemplateResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyLaunchTemplateResult
           object will be validated before being returned to caller.
     */
    func modifyLaunchTemplateAsync(
            input: ElasticComputeCloudModel.ModifyLaunchTemplateRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyLaunchTemplateResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyLaunchTemplate operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyLaunchTemplateRequest object being passed to this operation.
     - Returns: The ModifyLaunchTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyLaunchTemplateSync(
            input: ElasticComputeCloudModel.ModifyLaunchTemplateRequest) throws -> ElasticComputeCloudModel.ModifyLaunchTemplateResult

    /**
     Invokes the ModifyManagedPrefixList operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyManagedPrefixListRequest object being passed to this operation.
         - completion: The ModifyManagedPrefixListResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyManagedPrefixListResult
           object will be validated before being returned to caller.
     */
    func modifyManagedPrefixListAsync(
            input: ElasticComputeCloudModel.ModifyManagedPrefixListRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyManagedPrefixListResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyManagedPrefixList operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyManagedPrefixListRequest object being passed to this operation.
     - Returns: The ModifyManagedPrefixListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyManagedPrefixListSync(
            input: ElasticComputeCloudModel.ModifyManagedPrefixListRequest) throws -> ElasticComputeCloudModel.ModifyManagedPrefixListResult

    /**
     Invokes the ModifyNetworkInterfaceAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyNetworkInterfaceAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func modifyNetworkInterfaceAttributeAsync(
            input: ElasticComputeCloudModel.ModifyNetworkInterfaceAttributeRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the ModifyNetworkInterfaceAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyNetworkInterfaceAttributeRequest object being passed to this operation.
     */
    func modifyNetworkInterfaceAttributeSync(
            input: ElasticComputeCloudModel.ModifyNetworkInterfaceAttributeRequest) throws

    /**
     Invokes the ModifyReservedInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyReservedInstancesRequest object being passed to this operation.
         - completion: The ModifyReservedInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyReservedInstancesResult
           object will be validated before being returned to caller.
     */
    func modifyReservedInstancesAsync(
            input: ElasticComputeCloudModel.ModifyReservedInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyReservedInstancesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyReservedInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyReservedInstancesRequest object being passed to this operation.
     - Returns: The ModifyReservedInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyReservedInstancesSync(
            input: ElasticComputeCloudModel.ModifyReservedInstancesRequest) throws -> ElasticComputeCloudModel.ModifyReservedInstancesResult

    /**
     Invokes the ModifySnapshotAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifySnapshotAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func modifySnapshotAttributeAsync(
            input: ElasticComputeCloudModel.ModifySnapshotAttributeRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the ModifySnapshotAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifySnapshotAttributeRequest object being passed to this operation.
     */
    func modifySnapshotAttributeSync(
            input: ElasticComputeCloudModel.ModifySnapshotAttributeRequest) throws

    /**
     Invokes the ModifySpotFleetRequest operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifySpotFleetRequestRequest object being passed to this operation.
         - completion: The ModifySpotFleetRequestResponse object or an error will be passed to this 
           callback when the operation is complete. The ModifySpotFleetRequestResponse
           object will be validated before being returned to caller.
     */
    func modifySpotFleetRequestAsync(
            input: ElasticComputeCloudModel.ModifySpotFleetRequestRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifySpotFleetRequestResponse, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifySpotFleetRequest operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifySpotFleetRequestRequest object being passed to this operation.
     - Returns: The ModifySpotFleetRequestResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifySpotFleetRequestSync(
            input: ElasticComputeCloudModel.ModifySpotFleetRequestRequest) throws -> ElasticComputeCloudModel.ModifySpotFleetRequestResponse

    /**
     Invokes the ModifySubnetAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifySubnetAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func modifySubnetAttributeAsync(
            input: ElasticComputeCloudModel.ModifySubnetAttributeRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the ModifySubnetAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifySubnetAttributeRequest object being passed to this operation.
     */
    func modifySubnetAttributeSync(
            input: ElasticComputeCloudModel.ModifySubnetAttributeRequest) throws

    /**
     Invokes the ModifyTrafficMirrorFilterNetworkServices operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyTrafficMirrorFilterNetworkServicesRequest object being passed to this operation.
         - completion: The ModifyTrafficMirrorFilterNetworkServicesResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyTrafficMirrorFilterNetworkServicesResult
           object will be validated before being returned to caller.
     */
    func modifyTrafficMirrorFilterNetworkServicesAsync(
            input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyTrafficMirrorFilterNetworkServices operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyTrafficMirrorFilterNetworkServicesRequest object being passed to this operation.
     - Returns: The ModifyTrafficMirrorFilterNetworkServicesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyTrafficMirrorFilterNetworkServicesSync(
            input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesRequest) throws -> ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesResult

    /**
     Invokes the ModifyTrafficMirrorFilterRule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyTrafficMirrorFilterRuleRequest object being passed to this operation.
         - completion: The ModifyTrafficMirrorFilterRuleResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyTrafficMirrorFilterRuleResult
           object will be validated before being returned to caller.
     */
    func modifyTrafficMirrorFilterRuleAsync(
            input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyTrafficMirrorFilterRule operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyTrafficMirrorFilterRuleRequest object being passed to this operation.
     - Returns: The ModifyTrafficMirrorFilterRuleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyTrafficMirrorFilterRuleSync(
            input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleRequest) throws -> ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleResult

    /**
     Invokes the ModifyTrafficMirrorSession operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyTrafficMirrorSessionRequest object being passed to this operation.
         - completion: The ModifyTrafficMirrorSessionResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyTrafficMirrorSessionResult
           object will be validated before being returned to caller.
     */
    func modifyTrafficMirrorSessionAsync(
            input: ElasticComputeCloudModel.ModifyTrafficMirrorSessionRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyTrafficMirrorSessionResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyTrafficMirrorSession operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyTrafficMirrorSessionRequest object being passed to this operation.
     - Returns: The ModifyTrafficMirrorSessionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyTrafficMirrorSessionSync(
            input: ElasticComputeCloudModel.ModifyTrafficMirrorSessionRequest) throws -> ElasticComputeCloudModel.ModifyTrafficMirrorSessionResult

    /**
     Invokes the ModifyTransitGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyTransitGatewayRequest object being passed to this operation.
         - completion: The ModifyTransitGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyTransitGatewayResult
           object will be validated before being returned to caller.
     */
    func modifyTransitGatewayAsync(
            input: ElasticComputeCloudModel.ModifyTransitGatewayRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyTransitGatewayResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyTransitGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyTransitGatewayRequest object being passed to this operation.
     - Returns: The ModifyTransitGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyTransitGatewaySync(
            input: ElasticComputeCloudModel.ModifyTransitGatewayRequest) throws -> ElasticComputeCloudModel.ModifyTransitGatewayResult

    /**
     Invokes the ModifyTransitGatewayPrefixListReference operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyTransitGatewayPrefixListReferenceRequest object being passed to this operation.
         - completion: The ModifyTransitGatewayPrefixListReferenceResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyTransitGatewayPrefixListReferenceResult
           object will be validated before being returned to caller.
     */
    func modifyTransitGatewayPrefixListReferenceAsync(
            input: ElasticComputeCloudModel.ModifyTransitGatewayPrefixListReferenceRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyTransitGatewayPrefixListReferenceResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyTransitGatewayPrefixListReference operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyTransitGatewayPrefixListReferenceRequest object being passed to this operation.
     - Returns: The ModifyTransitGatewayPrefixListReferenceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyTransitGatewayPrefixListReferenceSync(
            input: ElasticComputeCloudModel.ModifyTransitGatewayPrefixListReferenceRequest) throws -> ElasticComputeCloudModel.ModifyTransitGatewayPrefixListReferenceResult

    /**
     Invokes the ModifyTransitGatewayVpcAttachment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyTransitGatewayVpcAttachmentRequest object being passed to this operation.
         - completion: The ModifyTransitGatewayVpcAttachmentResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyTransitGatewayVpcAttachmentResult
           object will be validated before being returned to caller.
     */
    func modifyTransitGatewayVpcAttachmentAsync(
            input: ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyTransitGatewayVpcAttachment operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The ModifyTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyTransitGatewayVpcAttachmentSync(
            input: ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentRequest) throws -> ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentResult

    /**
     Invokes the ModifyVolume operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVolumeRequest object being passed to this operation.
         - completion: The ModifyVolumeResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVolumeResult
           object will be validated before being returned to caller.
     */
    func modifyVolumeAsync(
            input: ElasticComputeCloudModel.ModifyVolumeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyVolumeResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyVolume operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVolumeRequest object being passed to this operation.
     - Returns: The ModifyVolumeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVolumeSync(
            input: ElasticComputeCloudModel.ModifyVolumeRequest) throws -> ElasticComputeCloudModel.ModifyVolumeResult

    /**
     Invokes the ModifyVolumeAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVolumeAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func modifyVolumeAttributeAsync(
            input: ElasticComputeCloudModel.ModifyVolumeAttributeRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the ModifyVolumeAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVolumeAttributeRequest object being passed to this operation.
     */
    func modifyVolumeAttributeSync(
            input: ElasticComputeCloudModel.ModifyVolumeAttributeRequest) throws

    /**
     Invokes the ModifyVpcAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func modifyVpcAttributeAsync(
            input: ElasticComputeCloudModel.ModifyVpcAttributeRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the ModifyVpcAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcAttributeRequest object being passed to this operation.
     */
    func modifyVpcAttributeSync(
            input: ElasticComputeCloudModel.ModifyVpcAttributeRequest) throws

    /**
     Invokes the ModifyVpcEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcEndpointRequest object being passed to this operation.
         - completion: The ModifyVpcEndpointResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpcEndpointResult
           object will be validated before being returned to caller.
     */
    func modifyVpcEndpointAsync(
            input: ElasticComputeCloudModel.ModifyVpcEndpointRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpcEndpointResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyVpcEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcEndpointRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcEndpointSync(
            input: ElasticComputeCloudModel.ModifyVpcEndpointRequest) throws -> ElasticComputeCloudModel.ModifyVpcEndpointResult

    /**
     Invokes the ModifyVpcEndpointConnectionNotification operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcEndpointConnectionNotificationRequest object being passed to this operation.
         - completion: The ModifyVpcEndpointConnectionNotificationResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpcEndpointConnectionNotificationResult
           object will be validated before being returned to caller.
     */
    func modifyVpcEndpointConnectionNotificationAsync(
            input: ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyVpcEndpointConnectionNotification operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcEndpointConnectionNotificationRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointConnectionNotificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcEndpointConnectionNotificationSync(
            input: ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationRequest) throws -> ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationResult

    /**
     Invokes the ModifyVpcEndpointServiceConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcEndpointServiceConfigurationRequest object being passed to this operation.
         - completion: The ModifyVpcEndpointServiceConfigurationResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpcEndpointServiceConfigurationResult
           object will be validated before being returned to caller.
     */
    func modifyVpcEndpointServiceConfigurationAsync(
            input: ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyVpcEndpointServiceConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcEndpointServiceConfigurationRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointServiceConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcEndpointServiceConfigurationSync(
            input: ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationRequest) throws -> ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationResult

    /**
     Invokes the ModifyVpcEndpointServicePermissions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcEndpointServicePermissionsRequest object being passed to this operation.
         - completion: The ModifyVpcEndpointServicePermissionsResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpcEndpointServicePermissionsResult
           object will be validated before being returned to caller.
     */
    func modifyVpcEndpointServicePermissionsAsync(
            input: ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyVpcEndpointServicePermissions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcEndpointServicePermissionsRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointServicePermissionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcEndpointServicePermissionsSync(
            input: ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsRequest) throws -> ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsResult

    /**
     Invokes the ModifyVpcPeeringConnectionOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcPeeringConnectionOptionsRequest object being passed to this operation.
         - completion: The ModifyVpcPeeringConnectionOptionsResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpcPeeringConnectionOptionsResult
           object will be validated before being returned to caller.
     */
    func modifyVpcPeeringConnectionOptionsAsync(
            input: ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyVpcPeeringConnectionOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcPeeringConnectionOptionsRequest object being passed to this operation.
     - Returns: The ModifyVpcPeeringConnectionOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcPeeringConnectionOptionsSync(
            input: ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsRequest) throws -> ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsResult

    /**
     Invokes the ModifyVpcTenancy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcTenancyRequest object being passed to this operation.
         - completion: The ModifyVpcTenancyResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpcTenancyResult
           object will be validated before being returned to caller.
     */
    func modifyVpcTenancyAsync(
            input: ElasticComputeCloudModel.ModifyVpcTenancyRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpcTenancyResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyVpcTenancy operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcTenancyRequest object being passed to this operation.
     - Returns: The ModifyVpcTenancyResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcTenancySync(
            input: ElasticComputeCloudModel.ModifyVpcTenancyRequest) throws -> ElasticComputeCloudModel.ModifyVpcTenancyResult

    /**
     Invokes the ModifyVpnConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpnConnectionRequest object being passed to this operation.
         - completion: The ModifyVpnConnectionResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpnConnectionResult
           object will be validated before being returned to caller.
     */
    func modifyVpnConnectionAsync(
            input: ElasticComputeCloudModel.ModifyVpnConnectionRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpnConnectionResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyVpnConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpnConnectionRequest object being passed to this operation.
     - Returns: The ModifyVpnConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpnConnectionSync(
            input: ElasticComputeCloudModel.ModifyVpnConnectionRequest) throws -> ElasticComputeCloudModel.ModifyVpnConnectionResult

    /**
     Invokes the ModifyVpnConnectionOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpnConnectionOptionsRequest object being passed to this operation.
         - completion: The ModifyVpnConnectionOptionsResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpnConnectionOptionsResult
           object will be validated before being returned to caller.
     */
    func modifyVpnConnectionOptionsAsync(
            input: ElasticComputeCloudModel.ModifyVpnConnectionOptionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpnConnectionOptionsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyVpnConnectionOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpnConnectionOptionsRequest object being passed to this operation.
     - Returns: The ModifyVpnConnectionOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpnConnectionOptionsSync(
            input: ElasticComputeCloudModel.ModifyVpnConnectionOptionsRequest) throws -> ElasticComputeCloudModel.ModifyVpnConnectionOptionsResult

    /**
     Invokes the ModifyVpnTunnelCertificate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpnTunnelCertificateRequest object being passed to this operation.
         - completion: The ModifyVpnTunnelCertificateResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpnTunnelCertificateResult
           object will be validated before being returned to caller.
     */
    func modifyVpnTunnelCertificateAsync(
            input: ElasticComputeCloudModel.ModifyVpnTunnelCertificateRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpnTunnelCertificateResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyVpnTunnelCertificate operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpnTunnelCertificateRequest object being passed to this operation.
     - Returns: The ModifyVpnTunnelCertificateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpnTunnelCertificateSync(
            input: ElasticComputeCloudModel.ModifyVpnTunnelCertificateRequest) throws -> ElasticComputeCloudModel.ModifyVpnTunnelCertificateResult

    /**
     Invokes the ModifyVpnTunnelOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpnTunnelOptionsRequest object being passed to this operation.
         - completion: The ModifyVpnTunnelOptionsResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpnTunnelOptionsResult
           object will be validated before being returned to caller.
     */
    func modifyVpnTunnelOptionsAsync(
            input: ElasticComputeCloudModel.ModifyVpnTunnelOptionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpnTunnelOptionsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ModifyVpnTunnelOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpnTunnelOptionsRequest object being passed to this operation.
     - Returns: The ModifyVpnTunnelOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpnTunnelOptionsSync(
            input: ElasticComputeCloudModel.ModifyVpnTunnelOptionsRequest) throws -> ElasticComputeCloudModel.ModifyVpnTunnelOptionsResult

    /**
     Invokes the MonitorInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated MonitorInstancesRequest object being passed to this operation.
         - completion: The MonitorInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The MonitorInstancesResult
           object will be validated before being returned to caller.
     */
    func monitorInstancesAsync(
            input: ElasticComputeCloudModel.MonitorInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.MonitorInstancesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the MonitorInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated MonitorInstancesRequest object being passed to this operation.
     - Returns: The MonitorInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func monitorInstancesSync(
            input: ElasticComputeCloudModel.MonitorInstancesRequest) throws -> ElasticComputeCloudModel.MonitorInstancesResult

    /**
     Invokes the MoveAddressToVpc operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated MoveAddressToVpcRequest object being passed to this operation.
         - completion: The MoveAddressToVpcResult object or an error will be passed to this 
           callback when the operation is complete. The MoveAddressToVpcResult
           object will be validated before being returned to caller.
     */
    func moveAddressToVpcAsync(
            input: ElasticComputeCloudModel.MoveAddressToVpcRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.MoveAddressToVpcResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the MoveAddressToVpc operation waiting for the response before returning.

     - Parameters:
         - input: The validated MoveAddressToVpcRequest object being passed to this operation.
     - Returns: The MoveAddressToVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func moveAddressToVpcSync(
            input: ElasticComputeCloudModel.MoveAddressToVpcRequest) throws -> ElasticComputeCloudModel.MoveAddressToVpcResult

    /**
     Invokes the ProvisionByoipCidr operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ProvisionByoipCidrRequest object being passed to this operation.
         - completion: The ProvisionByoipCidrResult object or an error will be passed to this 
           callback when the operation is complete. The ProvisionByoipCidrResult
           object will be validated before being returned to caller.
     */
    func provisionByoipCidrAsync(
            input: ElasticComputeCloudModel.ProvisionByoipCidrRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ProvisionByoipCidrResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ProvisionByoipCidr operation waiting for the response before returning.

     - Parameters:
         - input: The validated ProvisionByoipCidrRequest object being passed to this operation.
     - Returns: The ProvisionByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func provisionByoipCidrSync(
            input: ElasticComputeCloudModel.ProvisionByoipCidrRequest) throws -> ElasticComputeCloudModel.ProvisionByoipCidrResult

    /**
     Invokes the PurchaseHostReservation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PurchaseHostReservationRequest object being passed to this operation.
         - completion: The PurchaseHostReservationResult object or an error will be passed to this 
           callback when the operation is complete. The PurchaseHostReservationResult
           object will be validated before being returned to caller.
     */
    func purchaseHostReservationAsync(
            input: ElasticComputeCloudModel.PurchaseHostReservationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.PurchaseHostReservationResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the PurchaseHostReservation operation waiting for the response before returning.

     - Parameters:
         - input: The validated PurchaseHostReservationRequest object being passed to this operation.
     - Returns: The PurchaseHostReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func purchaseHostReservationSync(
            input: ElasticComputeCloudModel.PurchaseHostReservationRequest) throws -> ElasticComputeCloudModel.PurchaseHostReservationResult

    /**
     Invokes the PurchaseReservedInstancesOffering operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PurchaseReservedInstancesOfferingRequest object being passed to this operation.
         - completion: The PurchaseReservedInstancesOfferingResult object or an error will be passed to this 
           callback when the operation is complete. The PurchaseReservedInstancesOfferingResult
           object will be validated before being returned to caller.
     */
    func purchaseReservedInstancesOfferingAsync(
            input: ElasticComputeCloudModel.PurchaseReservedInstancesOfferingRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.PurchaseReservedInstancesOfferingResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the PurchaseReservedInstancesOffering operation waiting for the response before returning.

     - Parameters:
         - input: The validated PurchaseReservedInstancesOfferingRequest object being passed to this operation.
     - Returns: The PurchaseReservedInstancesOfferingResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func purchaseReservedInstancesOfferingSync(
            input: ElasticComputeCloudModel.PurchaseReservedInstancesOfferingRequest) throws -> ElasticComputeCloudModel.PurchaseReservedInstancesOfferingResult

    /**
     Invokes the PurchaseScheduledInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PurchaseScheduledInstancesRequest object being passed to this operation.
         - completion: The PurchaseScheduledInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The PurchaseScheduledInstancesResult
           object will be validated before being returned to caller.
     */
    func purchaseScheduledInstancesAsync(
            input: ElasticComputeCloudModel.PurchaseScheduledInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.PurchaseScheduledInstancesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the PurchaseScheduledInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated PurchaseScheduledInstancesRequest object being passed to this operation.
     - Returns: The PurchaseScheduledInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func purchaseScheduledInstancesSync(
            input: ElasticComputeCloudModel.PurchaseScheduledInstancesRequest) throws -> ElasticComputeCloudModel.PurchaseScheduledInstancesResult

    /**
     Invokes the RebootInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RebootInstancesRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func rebootInstancesAsync(
            input: ElasticComputeCloudModel.RebootInstancesRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the RebootInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated RebootInstancesRequest object being passed to this operation.
     */
    func rebootInstancesSync(
            input: ElasticComputeCloudModel.RebootInstancesRequest) throws

    /**
     Invokes the RegisterImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterImageRequest object being passed to this operation.
         - completion: The RegisterImageResult object or an error will be passed to this 
           callback when the operation is complete. The RegisterImageResult
           object will be validated before being returned to caller.
     */
    func registerImageAsync(
            input: ElasticComputeCloudModel.RegisterImageRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RegisterImageResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the RegisterImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterImageRequest object being passed to this operation.
     - Returns: The RegisterImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func registerImageSync(
            input: ElasticComputeCloudModel.RegisterImageRequest) throws -> ElasticComputeCloudModel.RegisterImageResult

    /**
     Invokes the RegisterInstanceEventNotificationAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterInstanceEventNotificationAttributesRequest object being passed to this operation.
         - completion: The RegisterInstanceEventNotificationAttributesResult object or an error will be passed to this 
           callback when the operation is complete. The RegisterInstanceEventNotificationAttributesResult
           object will be validated before being returned to caller.
     */
    func registerInstanceEventNotificationAttributesAsync(
            input: ElasticComputeCloudModel.RegisterInstanceEventNotificationAttributesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RegisterInstanceEventNotificationAttributesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the RegisterInstanceEventNotificationAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterInstanceEventNotificationAttributesRequest object being passed to this operation.
     - Returns: The RegisterInstanceEventNotificationAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func registerInstanceEventNotificationAttributesSync(
            input: ElasticComputeCloudModel.RegisterInstanceEventNotificationAttributesRequest) throws -> ElasticComputeCloudModel.RegisterInstanceEventNotificationAttributesResult

    /**
     Invokes the RegisterTransitGatewayMulticastGroupMembers operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterTransitGatewayMulticastGroupMembersRequest object being passed to this operation.
         - completion: The RegisterTransitGatewayMulticastGroupMembersResult object or an error will be passed to this 
           callback when the operation is complete. The RegisterTransitGatewayMulticastGroupMembersResult
           object will be validated before being returned to caller.
     */
    func registerTransitGatewayMulticastGroupMembersAsync(
            input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the RegisterTransitGatewayMulticastGroupMembers operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterTransitGatewayMulticastGroupMembersRequest object being passed to this operation.
     - Returns: The RegisterTransitGatewayMulticastGroupMembersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func registerTransitGatewayMulticastGroupMembersSync(
            input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersRequest) throws -> ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersResult

    /**
     Invokes the RegisterTransitGatewayMulticastGroupSources operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterTransitGatewayMulticastGroupSourcesRequest object being passed to this operation.
         - completion: The RegisterTransitGatewayMulticastGroupSourcesResult object or an error will be passed to this 
           callback when the operation is complete. The RegisterTransitGatewayMulticastGroupSourcesResult
           object will be validated before being returned to caller.
     */
    func registerTransitGatewayMulticastGroupSourcesAsync(
            input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the RegisterTransitGatewayMulticastGroupSources operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterTransitGatewayMulticastGroupSourcesRequest object being passed to this operation.
     - Returns: The RegisterTransitGatewayMulticastGroupSourcesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func registerTransitGatewayMulticastGroupSourcesSync(
            input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesRequest) throws -> ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesResult

    /**
     Invokes the RejectTransitGatewayMulticastDomainAssociations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RejectTransitGatewayMulticastDomainAssociationsRequest object being passed to this operation.
         - completion: The RejectTransitGatewayMulticastDomainAssociationsResult object or an error will be passed to this 
           callback when the operation is complete. The RejectTransitGatewayMulticastDomainAssociationsResult
           object will be validated before being returned to caller.
     */
    func rejectTransitGatewayMulticastDomainAssociationsAsync(
            input: ElasticComputeCloudModel.RejectTransitGatewayMulticastDomainAssociationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RejectTransitGatewayMulticastDomainAssociationsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the RejectTransitGatewayMulticastDomainAssociations operation waiting for the response before returning.

     - Parameters:
         - input: The validated RejectTransitGatewayMulticastDomainAssociationsRequest object being passed to this operation.
     - Returns: The RejectTransitGatewayMulticastDomainAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func rejectTransitGatewayMulticastDomainAssociationsSync(
            input: ElasticComputeCloudModel.RejectTransitGatewayMulticastDomainAssociationsRequest) throws -> ElasticComputeCloudModel.RejectTransitGatewayMulticastDomainAssociationsResult

    /**
     Invokes the RejectTransitGatewayPeeringAttachment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RejectTransitGatewayPeeringAttachmentRequest object being passed to this operation.
         - completion: The RejectTransitGatewayPeeringAttachmentResult object or an error will be passed to this 
           callback when the operation is complete. The RejectTransitGatewayPeeringAttachmentResult
           object will be validated before being returned to caller.
     */
    func rejectTransitGatewayPeeringAttachmentAsync(
            input: ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the RejectTransitGatewayPeeringAttachment operation waiting for the response before returning.

     - Parameters:
         - input: The validated RejectTransitGatewayPeeringAttachmentRequest object being passed to this operation.
     - Returns: The RejectTransitGatewayPeeringAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func rejectTransitGatewayPeeringAttachmentSync(
            input: ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentRequest) throws -> ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentResult

    /**
     Invokes the RejectTransitGatewayVpcAttachment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RejectTransitGatewayVpcAttachmentRequest object being passed to this operation.
         - completion: The RejectTransitGatewayVpcAttachmentResult object or an error will be passed to this 
           callback when the operation is complete. The RejectTransitGatewayVpcAttachmentResult
           object will be validated before being returned to caller.
     */
    func rejectTransitGatewayVpcAttachmentAsync(
            input: ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the RejectTransitGatewayVpcAttachment operation waiting for the response before returning.

     - Parameters:
         - input: The validated RejectTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The RejectTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func rejectTransitGatewayVpcAttachmentSync(
            input: ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentRequest) throws -> ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentResult

    /**
     Invokes the RejectVpcEndpointConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RejectVpcEndpointConnectionsRequest object being passed to this operation.
         - completion: The RejectVpcEndpointConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The RejectVpcEndpointConnectionsResult
           object will be validated before being returned to caller.
     */
    func rejectVpcEndpointConnectionsAsync(
            input: ElasticComputeCloudModel.RejectVpcEndpointConnectionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RejectVpcEndpointConnectionsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the RejectVpcEndpointConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated RejectVpcEndpointConnectionsRequest object being passed to this operation.
     - Returns: The RejectVpcEndpointConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func rejectVpcEndpointConnectionsSync(
            input: ElasticComputeCloudModel.RejectVpcEndpointConnectionsRequest) throws -> ElasticComputeCloudModel.RejectVpcEndpointConnectionsResult

    /**
     Invokes the RejectVpcPeeringConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RejectVpcPeeringConnectionRequest object being passed to this operation.
         - completion: The RejectVpcPeeringConnectionResult object or an error will be passed to this 
           callback when the operation is complete. The RejectVpcPeeringConnectionResult
           object will be validated before being returned to caller.
     */
    func rejectVpcPeeringConnectionAsync(
            input: ElasticComputeCloudModel.RejectVpcPeeringConnectionRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RejectVpcPeeringConnectionResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the RejectVpcPeeringConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated RejectVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: The RejectVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func rejectVpcPeeringConnectionSync(
            input: ElasticComputeCloudModel.RejectVpcPeeringConnectionRequest) throws -> ElasticComputeCloudModel.RejectVpcPeeringConnectionResult

    /**
     Invokes the ReleaseAddress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReleaseAddressRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func releaseAddressAsync(
            input: ElasticComputeCloudModel.ReleaseAddressRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the ReleaseAddress operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReleaseAddressRequest object being passed to this operation.
     */
    func releaseAddressSync(
            input: ElasticComputeCloudModel.ReleaseAddressRequest) throws

    /**
     Invokes the ReleaseHosts operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReleaseHostsRequest object being passed to this operation.
         - completion: The ReleaseHostsResult object or an error will be passed to this 
           callback when the operation is complete. The ReleaseHostsResult
           object will be validated before being returned to caller.
     */
    func releaseHostsAsync(
            input: ElasticComputeCloudModel.ReleaseHostsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ReleaseHostsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ReleaseHosts operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReleaseHostsRequest object being passed to this operation.
     - Returns: The ReleaseHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func releaseHostsSync(
            input: ElasticComputeCloudModel.ReleaseHostsRequest) throws -> ElasticComputeCloudModel.ReleaseHostsResult

    /**
     Invokes the ReplaceIamInstanceProfileAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReplaceIamInstanceProfileAssociationRequest object being passed to this operation.
         - completion: The ReplaceIamInstanceProfileAssociationResult object or an error will be passed to this 
           callback when the operation is complete. The ReplaceIamInstanceProfileAssociationResult
           object will be validated before being returned to caller.
     */
    func replaceIamInstanceProfileAssociationAsync(
            input: ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ReplaceIamInstanceProfileAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReplaceIamInstanceProfileAssociationRequest object being passed to this operation.
     - Returns: The ReplaceIamInstanceProfileAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func replaceIamInstanceProfileAssociationSync(
            input: ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationRequest) throws -> ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationResult

    /**
     Invokes the ReplaceNetworkAclAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReplaceNetworkAclAssociationRequest object being passed to this operation.
         - completion: The ReplaceNetworkAclAssociationResult object or an error will be passed to this 
           callback when the operation is complete. The ReplaceNetworkAclAssociationResult
           object will be validated before being returned to caller.
     */
    func replaceNetworkAclAssociationAsync(
            input: ElasticComputeCloudModel.ReplaceNetworkAclAssociationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ReplaceNetworkAclAssociationResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ReplaceNetworkAclAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReplaceNetworkAclAssociationRequest object being passed to this operation.
     - Returns: The ReplaceNetworkAclAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func replaceNetworkAclAssociationSync(
            input: ElasticComputeCloudModel.ReplaceNetworkAclAssociationRequest) throws -> ElasticComputeCloudModel.ReplaceNetworkAclAssociationResult

    /**
     Invokes the ReplaceNetworkAclEntry operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReplaceNetworkAclEntryRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func replaceNetworkAclEntryAsync(
            input: ElasticComputeCloudModel.ReplaceNetworkAclEntryRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the ReplaceNetworkAclEntry operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReplaceNetworkAclEntryRequest object being passed to this operation.
     */
    func replaceNetworkAclEntrySync(
            input: ElasticComputeCloudModel.ReplaceNetworkAclEntryRequest) throws

    /**
     Invokes the ReplaceRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReplaceRouteRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func replaceRouteAsync(
            input: ElasticComputeCloudModel.ReplaceRouteRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the ReplaceRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReplaceRouteRequest object being passed to this operation.
     */
    func replaceRouteSync(
            input: ElasticComputeCloudModel.ReplaceRouteRequest) throws

    /**
     Invokes the ReplaceRouteTableAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReplaceRouteTableAssociationRequest object being passed to this operation.
         - completion: The ReplaceRouteTableAssociationResult object or an error will be passed to this 
           callback when the operation is complete. The ReplaceRouteTableAssociationResult
           object will be validated before being returned to caller.
     */
    func replaceRouteTableAssociationAsync(
            input: ElasticComputeCloudModel.ReplaceRouteTableAssociationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ReplaceRouteTableAssociationResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ReplaceRouteTableAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReplaceRouteTableAssociationRequest object being passed to this operation.
     - Returns: The ReplaceRouteTableAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func replaceRouteTableAssociationSync(
            input: ElasticComputeCloudModel.ReplaceRouteTableAssociationRequest) throws -> ElasticComputeCloudModel.ReplaceRouteTableAssociationResult

    /**
     Invokes the ReplaceTransitGatewayRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReplaceTransitGatewayRouteRequest object being passed to this operation.
         - completion: The ReplaceTransitGatewayRouteResult object or an error will be passed to this 
           callback when the operation is complete. The ReplaceTransitGatewayRouteResult
           object will be validated before being returned to caller.
     */
    func replaceTransitGatewayRouteAsync(
            input: ElasticComputeCloudModel.ReplaceTransitGatewayRouteRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ReplaceTransitGatewayRouteResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ReplaceTransitGatewayRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReplaceTransitGatewayRouteRequest object being passed to this operation.
     - Returns: The ReplaceTransitGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func replaceTransitGatewayRouteSync(
            input: ElasticComputeCloudModel.ReplaceTransitGatewayRouteRequest) throws -> ElasticComputeCloudModel.ReplaceTransitGatewayRouteResult

    /**
     Invokes the ReportInstanceStatus operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReportInstanceStatusRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func reportInstanceStatusAsync(
            input: ElasticComputeCloudModel.ReportInstanceStatusRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the ReportInstanceStatus operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReportInstanceStatusRequest object being passed to this operation.
     */
    func reportInstanceStatusSync(
            input: ElasticComputeCloudModel.ReportInstanceStatusRequest) throws

    /**
     Invokes the RequestSpotFleet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RequestSpotFleetRequest object being passed to this operation.
         - completion: The RequestSpotFleetResponse object or an error will be passed to this 
           callback when the operation is complete. The RequestSpotFleetResponse
           object will be validated before being returned to caller.
     */
    func requestSpotFleetAsync(
            input: ElasticComputeCloudModel.RequestSpotFleetRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RequestSpotFleetResponse, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the RequestSpotFleet operation waiting for the response before returning.

     - Parameters:
         - input: The validated RequestSpotFleetRequest object being passed to this operation.
     - Returns: The RequestSpotFleetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func requestSpotFleetSync(
            input: ElasticComputeCloudModel.RequestSpotFleetRequest) throws -> ElasticComputeCloudModel.RequestSpotFleetResponse

    /**
     Invokes the RequestSpotInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RequestSpotInstancesRequest object being passed to this operation.
         - completion: The RequestSpotInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The RequestSpotInstancesResult
           object will be validated before being returned to caller.
     */
    func requestSpotInstancesAsync(
            input: ElasticComputeCloudModel.RequestSpotInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RequestSpotInstancesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the RequestSpotInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated RequestSpotInstancesRequest object being passed to this operation.
     - Returns: The RequestSpotInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func requestSpotInstancesSync(
            input: ElasticComputeCloudModel.RequestSpotInstancesRequest) throws -> ElasticComputeCloudModel.RequestSpotInstancesResult

    /**
     Invokes the ResetAddressAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetAddressAttributeRequest object being passed to this operation.
         - completion: The ResetAddressAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The ResetAddressAttributeResult
           object will be validated before being returned to caller.
     */
    func resetAddressAttributeAsync(
            input: ElasticComputeCloudModel.ResetAddressAttributeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ResetAddressAttributeResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ResetAddressAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetAddressAttributeRequest object being passed to this operation.
     - Returns: The ResetAddressAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func resetAddressAttributeSync(
            input: ElasticComputeCloudModel.ResetAddressAttributeRequest) throws -> ElasticComputeCloudModel.ResetAddressAttributeResult

    /**
     Invokes the ResetEbsDefaultKmsKeyId operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetEbsDefaultKmsKeyIdRequest object being passed to this operation.
         - completion: The ResetEbsDefaultKmsKeyIdResult object or an error will be passed to this 
           callback when the operation is complete. The ResetEbsDefaultKmsKeyIdResult
           object will be validated before being returned to caller.
     */
    func resetEbsDefaultKmsKeyIdAsync(
            input: ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ResetEbsDefaultKmsKeyId operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetEbsDefaultKmsKeyIdRequest object being passed to this operation.
     - Returns: The ResetEbsDefaultKmsKeyIdResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func resetEbsDefaultKmsKeyIdSync(
            input: ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdRequest) throws -> ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdResult

    /**
     Invokes the ResetFpgaImageAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetFpgaImageAttributeRequest object being passed to this operation.
         - completion: The ResetFpgaImageAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The ResetFpgaImageAttributeResult
           object will be validated before being returned to caller.
     */
    func resetFpgaImageAttributeAsync(
            input: ElasticComputeCloudModel.ResetFpgaImageAttributeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ResetFpgaImageAttributeResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the ResetFpgaImageAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetFpgaImageAttributeRequest object being passed to this operation.
     - Returns: The ResetFpgaImageAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func resetFpgaImageAttributeSync(
            input: ElasticComputeCloudModel.ResetFpgaImageAttributeRequest) throws -> ElasticComputeCloudModel.ResetFpgaImageAttributeResult

    /**
     Invokes the ResetImageAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetImageAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func resetImageAttributeAsync(
            input: ElasticComputeCloudModel.ResetImageAttributeRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the ResetImageAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetImageAttributeRequest object being passed to this operation.
     */
    func resetImageAttributeSync(
            input: ElasticComputeCloudModel.ResetImageAttributeRequest) throws

    /**
     Invokes the ResetInstanceAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetInstanceAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func resetInstanceAttributeAsync(
            input: ElasticComputeCloudModel.ResetInstanceAttributeRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the ResetInstanceAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetInstanceAttributeRequest object being passed to this operation.
     */
    func resetInstanceAttributeSync(
            input: ElasticComputeCloudModel.ResetInstanceAttributeRequest) throws

    /**
     Invokes the ResetNetworkInterfaceAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetNetworkInterfaceAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func resetNetworkInterfaceAttributeAsync(
            input: ElasticComputeCloudModel.ResetNetworkInterfaceAttributeRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the ResetNetworkInterfaceAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetNetworkInterfaceAttributeRequest object being passed to this operation.
     */
    func resetNetworkInterfaceAttributeSync(
            input: ElasticComputeCloudModel.ResetNetworkInterfaceAttributeRequest) throws

    /**
     Invokes the ResetSnapshotAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetSnapshotAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func resetSnapshotAttributeAsync(
            input: ElasticComputeCloudModel.ResetSnapshotAttributeRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the ResetSnapshotAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetSnapshotAttributeRequest object being passed to this operation.
     */
    func resetSnapshotAttributeSync(
            input: ElasticComputeCloudModel.ResetSnapshotAttributeRequest) throws

    /**
     Invokes the RestoreAddressToClassic operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreAddressToClassicRequest object being passed to this operation.
         - completion: The RestoreAddressToClassicResult object or an error will be passed to this 
           callback when the operation is complete. The RestoreAddressToClassicResult
           object will be validated before being returned to caller.
     */
    func restoreAddressToClassicAsync(
            input: ElasticComputeCloudModel.RestoreAddressToClassicRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RestoreAddressToClassicResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the RestoreAddressToClassic operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreAddressToClassicRequest object being passed to this operation.
     - Returns: The RestoreAddressToClassicResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func restoreAddressToClassicSync(
            input: ElasticComputeCloudModel.RestoreAddressToClassicRequest) throws -> ElasticComputeCloudModel.RestoreAddressToClassicResult

    /**
     Invokes the RestoreManagedPrefixListVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreManagedPrefixListVersionRequest object being passed to this operation.
         - completion: The RestoreManagedPrefixListVersionResult object or an error will be passed to this 
           callback when the operation is complete. The RestoreManagedPrefixListVersionResult
           object will be validated before being returned to caller.
     */
    func restoreManagedPrefixListVersionAsync(
            input: ElasticComputeCloudModel.RestoreManagedPrefixListVersionRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RestoreManagedPrefixListVersionResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the RestoreManagedPrefixListVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreManagedPrefixListVersionRequest object being passed to this operation.
     - Returns: The RestoreManagedPrefixListVersionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func restoreManagedPrefixListVersionSync(
            input: ElasticComputeCloudModel.RestoreManagedPrefixListVersionRequest) throws -> ElasticComputeCloudModel.RestoreManagedPrefixListVersionResult

    /**
     Invokes the RevokeClientVpnIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RevokeClientVpnIngressRequest object being passed to this operation.
         - completion: The RevokeClientVpnIngressResult object or an error will be passed to this 
           callback when the operation is complete. The RevokeClientVpnIngressResult
           object will be validated before being returned to caller.
     */
    func revokeClientVpnIngressAsync(
            input: ElasticComputeCloudModel.RevokeClientVpnIngressRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RevokeClientVpnIngressResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the RevokeClientVpnIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated RevokeClientVpnIngressRequest object being passed to this operation.
     - Returns: The RevokeClientVpnIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func revokeClientVpnIngressSync(
            input: ElasticComputeCloudModel.RevokeClientVpnIngressRequest) throws -> ElasticComputeCloudModel.RevokeClientVpnIngressResult

    /**
     Invokes the RevokeSecurityGroupEgress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RevokeSecurityGroupEgressRequest object being passed to this operation.
         - completion: The RevokeSecurityGroupEgressResult object or an error will be passed to this 
           callback when the operation is complete. The RevokeSecurityGroupEgressResult
           object will be validated before being returned to caller.
     */
    func revokeSecurityGroupEgressAsync(
            input: ElasticComputeCloudModel.RevokeSecurityGroupEgressRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RevokeSecurityGroupEgressResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the RevokeSecurityGroupEgress operation waiting for the response before returning.

     - Parameters:
         - input: The validated RevokeSecurityGroupEgressRequest object being passed to this operation.
     - Returns: The RevokeSecurityGroupEgressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func revokeSecurityGroupEgressSync(
            input: ElasticComputeCloudModel.RevokeSecurityGroupEgressRequest) throws -> ElasticComputeCloudModel.RevokeSecurityGroupEgressResult

    /**
     Invokes the RevokeSecurityGroupIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RevokeSecurityGroupIngressRequest object being passed to this operation.
         - completion: The RevokeSecurityGroupIngressResult object or an error will be passed to this 
           callback when the operation is complete. The RevokeSecurityGroupIngressResult
           object will be validated before being returned to caller.
     */
    func revokeSecurityGroupIngressAsync(
            input: ElasticComputeCloudModel.RevokeSecurityGroupIngressRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RevokeSecurityGroupIngressResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the RevokeSecurityGroupIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated RevokeSecurityGroupIngressRequest object being passed to this operation.
     - Returns: The RevokeSecurityGroupIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func revokeSecurityGroupIngressSync(
            input: ElasticComputeCloudModel.RevokeSecurityGroupIngressRequest) throws -> ElasticComputeCloudModel.RevokeSecurityGroupIngressResult

    /**
     Invokes the RunInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RunInstancesRequest object being passed to this operation.
         - completion: The Reservation object or an error will be passed to this 
           callback when the operation is complete. The Reservation
           object will be validated before being returned to caller.
     */
    func runInstancesAsync(
            input: ElasticComputeCloudModel.RunInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.Reservation, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the RunInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated RunInstancesRequest object being passed to this operation.
     - Returns: The Reservation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func runInstancesSync(
            input: ElasticComputeCloudModel.RunInstancesRequest) throws -> ElasticComputeCloudModel.Reservation

    /**
     Invokes the RunScheduledInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RunScheduledInstancesRequest object being passed to this operation.
         - completion: The RunScheduledInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The RunScheduledInstancesResult
           object will be validated before being returned to caller.
     */
    func runScheduledInstancesAsync(
            input: ElasticComputeCloudModel.RunScheduledInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RunScheduledInstancesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the RunScheduledInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated RunScheduledInstancesRequest object being passed to this operation.
     - Returns: The RunScheduledInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func runScheduledInstancesSync(
            input: ElasticComputeCloudModel.RunScheduledInstancesRequest) throws -> ElasticComputeCloudModel.RunScheduledInstancesResult

    /**
     Invokes the SearchLocalGatewayRoutes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SearchLocalGatewayRoutesRequest object being passed to this operation.
         - completion: The SearchLocalGatewayRoutesResult object or an error will be passed to this 
           callback when the operation is complete. The SearchLocalGatewayRoutesResult
           object will be validated before being returned to caller.
     */
    func searchLocalGatewayRoutesAsync(
            input: ElasticComputeCloudModel.SearchLocalGatewayRoutesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.SearchLocalGatewayRoutesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the SearchLocalGatewayRoutes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SearchLocalGatewayRoutesRequest object being passed to this operation.
     - Returns: The SearchLocalGatewayRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func searchLocalGatewayRoutesSync(
            input: ElasticComputeCloudModel.SearchLocalGatewayRoutesRequest) throws -> ElasticComputeCloudModel.SearchLocalGatewayRoutesResult

    /**
     Invokes the SearchTransitGatewayMulticastGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SearchTransitGatewayMulticastGroupsRequest object being passed to this operation.
         - completion: The SearchTransitGatewayMulticastGroupsResult object or an error will be passed to this 
           callback when the operation is complete. The SearchTransitGatewayMulticastGroupsResult
           object will be validated before being returned to caller.
     */
    func searchTransitGatewayMulticastGroupsAsync(
            input: ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the SearchTransitGatewayMulticastGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated SearchTransitGatewayMulticastGroupsRequest object being passed to this operation.
     - Returns: The SearchTransitGatewayMulticastGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func searchTransitGatewayMulticastGroupsSync(
            input: ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsRequest) throws -> ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsResult

    /**
     Invokes the SearchTransitGatewayRoutes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SearchTransitGatewayRoutesRequest object being passed to this operation.
         - completion: The SearchTransitGatewayRoutesResult object or an error will be passed to this 
           callback when the operation is complete. The SearchTransitGatewayRoutesResult
           object will be validated before being returned to caller.
     */
    func searchTransitGatewayRoutesAsync(
            input: ElasticComputeCloudModel.SearchTransitGatewayRoutesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.SearchTransitGatewayRoutesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the SearchTransitGatewayRoutes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SearchTransitGatewayRoutesRequest object being passed to this operation.
     - Returns: The SearchTransitGatewayRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func searchTransitGatewayRoutesSync(
            input: ElasticComputeCloudModel.SearchTransitGatewayRoutesRequest) throws -> ElasticComputeCloudModel.SearchTransitGatewayRoutesResult

    /**
     Invokes the SendDiagnosticInterrupt operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SendDiagnosticInterruptRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func sendDiagnosticInterruptAsync(
            input: ElasticComputeCloudModel.SendDiagnosticInterruptRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the SendDiagnosticInterrupt operation waiting for the response before returning.

     - Parameters:
         - input: The validated SendDiagnosticInterruptRequest object being passed to this operation.
     */
    func sendDiagnosticInterruptSync(
            input: ElasticComputeCloudModel.SendDiagnosticInterruptRequest) throws

    /**
     Invokes the StartInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartInstancesRequest object being passed to this operation.
         - completion: The StartInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The StartInstancesResult
           object will be validated before being returned to caller.
     */
    func startInstancesAsync(
            input: ElasticComputeCloudModel.StartInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.StartInstancesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the StartInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartInstancesRequest object being passed to this operation.
     - Returns: The StartInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func startInstancesSync(
            input: ElasticComputeCloudModel.StartInstancesRequest) throws -> ElasticComputeCloudModel.StartInstancesResult

    /**
     Invokes the StartNetworkInsightsAnalysis operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartNetworkInsightsAnalysisRequest object being passed to this operation.
         - completion: The StartNetworkInsightsAnalysisResult object or an error will be passed to this 
           callback when the operation is complete. The StartNetworkInsightsAnalysisResult
           object will be validated before being returned to caller.
     */
    func startNetworkInsightsAnalysisAsync(
            input: ElasticComputeCloudModel.StartNetworkInsightsAnalysisRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.StartNetworkInsightsAnalysisResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the StartNetworkInsightsAnalysis operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartNetworkInsightsAnalysisRequest object being passed to this operation.
     - Returns: The StartNetworkInsightsAnalysisResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func startNetworkInsightsAnalysisSync(
            input: ElasticComputeCloudModel.StartNetworkInsightsAnalysisRequest) throws -> ElasticComputeCloudModel.StartNetworkInsightsAnalysisResult

    /**
     Invokes the StartVpcEndpointServicePrivateDnsVerification operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartVpcEndpointServicePrivateDnsVerificationRequest object being passed to this operation.
         - completion: The StartVpcEndpointServicePrivateDnsVerificationResult object or an error will be passed to this 
           callback when the operation is complete. The StartVpcEndpointServicePrivateDnsVerificationResult
           object will be validated before being returned to caller.
     */
    func startVpcEndpointServicePrivateDnsVerificationAsync(
            input: ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the StartVpcEndpointServicePrivateDnsVerification operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartVpcEndpointServicePrivateDnsVerificationRequest object being passed to this operation.
     - Returns: The StartVpcEndpointServicePrivateDnsVerificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func startVpcEndpointServicePrivateDnsVerificationSync(
            input: ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationRequest) throws -> ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationResult

    /**
     Invokes the StopInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopInstancesRequest object being passed to this operation.
         - completion: The StopInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The StopInstancesResult
           object will be validated before being returned to caller.
     */
    func stopInstancesAsync(
            input: ElasticComputeCloudModel.StopInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.StopInstancesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the StopInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopInstancesRequest object being passed to this operation.
     - Returns: The StopInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func stopInstancesSync(
            input: ElasticComputeCloudModel.StopInstancesRequest) throws -> ElasticComputeCloudModel.StopInstancesResult

    /**
     Invokes the TerminateClientVpnConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TerminateClientVpnConnectionsRequest object being passed to this operation.
         - completion: The TerminateClientVpnConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The TerminateClientVpnConnectionsResult
           object will be validated before being returned to caller.
     */
    func terminateClientVpnConnectionsAsync(
            input: ElasticComputeCloudModel.TerminateClientVpnConnectionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.TerminateClientVpnConnectionsResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the TerminateClientVpnConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated TerminateClientVpnConnectionsRequest object being passed to this operation.
     - Returns: The TerminateClientVpnConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func terminateClientVpnConnectionsSync(
            input: ElasticComputeCloudModel.TerminateClientVpnConnectionsRequest) throws -> ElasticComputeCloudModel.TerminateClientVpnConnectionsResult

    /**
     Invokes the TerminateInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TerminateInstancesRequest object being passed to this operation.
         - completion: The TerminateInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The TerminateInstancesResult
           object will be validated before being returned to caller.
     */
    func terminateInstancesAsync(
            input: ElasticComputeCloudModel.TerminateInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.TerminateInstancesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the TerminateInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated TerminateInstancesRequest object being passed to this operation.
     - Returns: The TerminateInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func terminateInstancesSync(
            input: ElasticComputeCloudModel.TerminateInstancesRequest) throws -> ElasticComputeCloudModel.TerminateInstancesResult

    /**
     Invokes the UnassignIpv6Addresses operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UnassignIpv6AddressesRequest object being passed to this operation.
         - completion: The UnassignIpv6AddressesResult object or an error will be passed to this 
           callback when the operation is complete. The UnassignIpv6AddressesResult
           object will be validated before being returned to caller.
     */
    func unassignIpv6AddressesAsync(
            input: ElasticComputeCloudModel.UnassignIpv6AddressesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.UnassignIpv6AddressesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the UnassignIpv6Addresses operation waiting for the response before returning.

     - Parameters:
         - input: The validated UnassignIpv6AddressesRequest object being passed to this operation.
     - Returns: The UnassignIpv6AddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func unassignIpv6AddressesSync(
            input: ElasticComputeCloudModel.UnassignIpv6AddressesRequest) throws -> ElasticComputeCloudModel.UnassignIpv6AddressesResult

    /**
     Invokes the UnassignPrivateIpAddresses operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UnassignPrivateIpAddressesRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func unassignPrivateIpAddressesAsync(
            input: ElasticComputeCloudModel.UnassignPrivateIpAddressesRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws

    /**
     Invokes the UnassignPrivateIpAddresses operation waiting for the response before returning.

     - Parameters:
         - input: The validated UnassignPrivateIpAddressesRequest object being passed to this operation.
     */
    func unassignPrivateIpAddressesSync(
            input: ElasticComputeCloudModel.UnassignPrivateIpAddressesRequest) throws

    /**
     Invokes the UnmonitorInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UnmonitorInstancesRequest object being passed to this operation.
         - completion: The UnmonitorInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The UnmonitorInstancesResult
           object will be validated before being returned to caller.
     */
    func unmonitorInstancesAsync(
            input: ElasticComputeCloudModel.UnmonitorInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.UnmonitorInstancesResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the UnmonitorInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated UnmonitorInstancesRequest object being passed to this operation.
     - Returns: The UnmonitorInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func unmonitorInstancesSync(
            input: ElasticComputeCloudModel.UnmonitorInstancesRequest) throws -> ElasticComputeCloudModel.UnmonitorInstancesResult

    /**
     Invokes the UpdateSecurityGroupRuleDescriptionsEgress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateSecurityGroupRuleDescriptionsEgressRequest object being passed to this operation.
         - completion: The UpdateSecurityGroupRuleDescriptionsEgressResult object or an error will be passed to this 
           callback when the operation is complete. The UpdateSecurityGroupRuleDescriptionsEgressResult
           object will be validated before being returned to caller.
     */
    func updateSecurityGroupRuleDescriptionsEgressAsync(
            input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the UpdateSecurityGroupRuleDescriptionsEgress operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateSecurityGroupRuleDescriptionsEgressRequest object being passed to this operation.
     - Returns: The UpdateSecurityGroupRuleDescriptionsEgressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func updateSecurityGroupRuleDescriptionsEgressSync(
            input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressRequest) throws -> ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressResult

    /**
     Invokes the UpdateSecurityGroupRuleDescriptionsIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateSecurityGroupRuleDescriptionsIngressRequest object being passed to this operation.
         - completion: The UpdateSecurityGroupRuleDescriptionsIngressResult object or an error will be passed to this 
           callback when the operation is complete. The UpdateSecurityGroupRuleDescriptionsIngressResult
           object will be validated before being returned to caller.
     */
    func updateSecurityGroupRuleDescriptionsIngressAsync(
            input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the UpdateSecurityGroupRuleDescriptionsIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateSecurityGroupRuleDescriptionsIngressRequest object being passed to this operation.
     - Returns: The UpdateSecurityGroupRuleDescriptionsIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func updateSecurityGroupRuleDescriptionsIngressSync(
            input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressRequest) throws -> ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressResult

    /**
     Invokes the WithdrawByoipCidr operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated WithdrawByoipCidrRequest object being passed to this operation.
         - completion: The WithdrawByoipCidrResult object or an error will be passed to this 
           callback when the operation is complete. The WithdrawByoipCidrResult
           object will be validated before being returned to caller.
     */
    func withdrawByoipCidrAsync(
            input: ElasticComputeCloudModel.WithdrawByoipCidrRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.WithdrawByoipCidrResult, ElasticComputeCloudError>) -> ()) throws

    /**
     Invokes the WithdrawByoipCidr operation waiting for the response before returning.

     - Parameters:
         - input: The validated WithdrawByoipCidrRequest object being passed to this operation.
     - Returns: The WithdrawByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func withdrawByoipCidrSync(
            input: ElasticComputeCloudModel.WithdrawByoipCidrRequest) throws -> ElasticComputeCloudModel.WithdrawByoipCidrResult
}
