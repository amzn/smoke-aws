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
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the ElasticComputeCloud service.
 */
public protocol ElasticComputeCloudClientProtocol {
    typealias AcceptReservedInstancesExchangeQuoteSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteResult
    typealias AcceptReservedInstancesExchangeQuoteAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteResult, HTTPClientError>) -> ()) throws -> ()
    typealias AcceptTransitGatewayPeeringAttachmentSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentResult
    typealias AcceptTransitGatewayPeeringAttachmentAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentResult, HTTPClientError>) -> ()) throws -> ()
    typealias AcceptTransitGatewayVpcAttachmentSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentResult
    typealias AcceptTransitGatewayVpcAttachmentAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentResult, HTTPClientError>) -> ()) throws -> ()
    typealias AcceptVpcEndpointConnectionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AcceptVpcEndpointConnectionsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AcceptVpcEndpointConnectionsResult
    typealias AcceptVpcEndpointConnectionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AcceptVpcEndpointConnectionsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.AcceptVpcEndpointConnectionsResult, HTTPClientError>) -> ()) throws -> ()
    typealias AcceptVpcPeeringConnectionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AcceptVpcPeeringConnectionRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AcceptVpcPeeringConnectionResult
    typealias AcceptVpcPeeringConnectionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AcceptVpcPeeringConnectionRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.AcceptVpcPeeringConnectionResult, HTTPClientError>) -> ()) throws -> ()
    typealias AdvertiseByoipCidrSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AdvertiseByoipCidrRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AdvertiseByoipCidrResult
    typealias AdvertiseByoipCidrAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AdvertiseByoipCidrRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.AdvertiseByoipCidrResult, HTTPClientError>) -> ()) throws -> ()
    typealias AllocateAddressSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AllocateAddressRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AllocateAddressResult
    typealias AllocateAddressAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AllocateAddressRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.AllocateAddressResult, HTTPClientError>) -> ()) throws -> ()
    typealias AllocateHostsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AllocateHostsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AllocateHostsResult
    typealias AllocateHostsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AllocateHostsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.AllocateHostsResult, HTTPClientError>) -> ()) throws -> ()
    typealias ApplySecurityGroupsToClientVpnTargetNetworkSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkResult
    typealias ApplySecurityGroupsToClientVpnTargetNetworkAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkResult, HTTPClientError>) -> ()) throws -> ()
    typealias AssignIpv6AddressesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AssignIpv6AddressesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AssignIpv6AddressesResult
    typealias AssignIpv6AddressesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AssignIpv6AddressesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.AssignIpv6AddressesResult, HTTPClientError>) -> ()) throws -> ()
    typealias AssignPrivateIpAddressesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AssignPrivateIpAddressesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AssignPrivateIpAddressesResult
    typealias AssignPrivateIpAddressesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AssignPrivateIpAddressesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.AssignPrivateIpAddressesResult, HTTPClientError>) -> ()) throws -> ()
    typealias AssociateAddressSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AssociateAddressRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AssociateAddressResult
    typealias AssociateAddressAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AssociateAddressRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.AssociateAddressResult, HTTPClientError>) -> ()) throws -> ()
    typealias AssociateClientVpnTargetNetworkSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AssociateClientVpnTargetNetworkRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AssociateClientVpnTargetNetworkResult
    typealias AssociateClientVpnTargetNetworkAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AssociateClientVpnTargetNetworkRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.AssociateClientVpnTargetNetworkResult, HTTPClientError>) -> ()) throws -> ()
    typealias AssociateDhcpOptionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AssociateDhcpOptionsRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias AssociateDhcpOptionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AssociateDhcpOptionsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias AssociateIamInstanceProfileSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AssociateIamInstanceProfileRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AssociateIamInstanceProfileResult
    typealias AssociateIamInstanceProfileAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AssociateIamInstanceProfileRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.AssociateIamInstanceProfileResult, HTTPClientError>) -> ()) throws -> ()
    typealias AssociateRouteTableSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AssociateRouteTableRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AssociateRouteTableResult
    typealias AssociateRouteTableAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AssociateRouteTableRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.AssociateRouteTableResult, HTTPClientError>) -> ()) throws -> ()
    typealias AssociateSubnetCidrBlockSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AssociateSubnetCidrBlockRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AssociateSubnetCidrBlockResult
    typealias AssociateSubnetCidrBlockAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AssociateSubnetCidrBlockRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.AssociateSubnetCidrBlockResult, HTTPClientError>) -> ()) throws -> ()
    typealias AssociateTransitGatewayMulticastDomainSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainResult
    typealias AssociateTransitGatewayMulticastDomainAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainResult, HTTPClientError>) -> ()) throws -> ()
    typealias AssociateTransitGatewayRouteTableSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AssociateTransitGatewayRouteTableRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AssociateTransitGatewayRouteTableResult
    typealias AssociateTransitGatewayRouteTableAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AssociateTransitGatewayRouteTableRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.AssociateTransitGatewayRouteTableResult, HTTPClientError>) -> ()) throws -> ()
    typealias AssociateVpcCidrBlockSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AssociateVpcCidrBlockRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AssociateVpcCidrBlockResult
    typealias AssociateVpcCidrBlockAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AssociateVpcCidrBlockRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.AssociateVpcCidrBlockResult, HTTPClientError>) -> ()) throws -> ()
    typealias AttachClassicLinkVpcSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AttachClassicLinkVpcRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AttachClassicLinkVpcResult
    typealias AttachClassicLinkVpcAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AttachClassicLinkVpcRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.AttachClassicLinkVpcResult, HTTPClientError>) -> ()) throws -> ()
    typealias AttachInternetGatewaySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AttachInternetGatewayRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias AttachInternetGatewayAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AttachInternetGatewayRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias AttachNetworkInterfaceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AttachNetworkInterfaceRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AttachNetworkInterfaceResult
    typealias AttachNetworkInterfaceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AttachNetworkInterfaceRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.AttachNetworkInterfaceResult, HTTPClientError>) -> ()) throws -> ()
    typealias AttachVolumeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AttachVolumeRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.VolumeAttachment
    typealias AttachVolumeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AttachVolumeRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.VolumeAttachment, HTTPClientError>) -> ()) throws -> ()
    typealias AttachVpnGatewaySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AttachVpnGatewayRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AttachVpnGatewayResult
    typealias AttachVpnGatewayAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AttachVpnGatewayRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.AttachVpnGatewayResult, HTTPClientError>) -> ()) throws -> ()
    typealias AuthorizeClientVpnIngressSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AuthorizeClientVpnIngressRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AuthorizeClientVpnIngressResult
    typealias AuthorizeClientVpnIngressAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AuthorizeClientVpnIngressRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.AuthorizeClientVpnIngressResult, HTTPClientError>) -> ()) throws -> ()
    typealias AuthorizeSecurityGroupEgressSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AuthorizeSecurityGroupEgressRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias AuthorizeSecurityGroupEgressAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AuthorizeSecurityGroupEgressRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias AuthorizeSecurityGroupIngressSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AuthorizeSecurityGroupIngressRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias AuthorizeSecurityGroupIngressAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.AuthorizeSecurityGroupIngressRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias BundleInstanceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.BundleInstanceRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.BundleInstanceResult
    typealias BundleInstanceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.BundleInstanceRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.BundleInstanceResult, HTTPClientError>) -> ()) throws -> ()
    typealias CancelBundleTaskSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CancelBundleTaskRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CancelBundleTaskResult
    typealias CancelBundleTaskAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CancelBundleTaskRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CancelBundleTaskResult, HTTPClientError>) -> ()) throws -> ()
    typealias CancelCapacityReservationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CancelCapacityReservationRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CancelCapacityReservationResult
    typealias CancelCapacityReservationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CancelCapacityReservationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CancelCapacityReservationResult, HTTPClientError>) -> ()) throws -> ()
    typealias CancelConversionTaskSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CancelConversionRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias CancelConversionTaskAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CancelConversionRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias CancelExportTaskSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CancelExportTaskRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias CancelExportTaskAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CancelExportTaskRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias CancelImportTaskSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CancelImportTaskRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CancelImportTaskResult
    typealias CancelImportTaskAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CancelImportTaskRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CancelImportTaskResult, HTTPClientError>) -> ()) throws -> ()
    typealias CancelReservedInstancesListingSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CancelReservedInstancesListingRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CancelReservedInstancesListingResult
    typealias CancelReservedInstancesListingAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CancelReservedInstancesListingRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CancelReservedInstancesListingResult, HTTPClientError>) -> ()) throws -> ()
    typealias CancelSpotFleetRequestsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CancelSpotFleetRequestsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CancelSpotFleetRequestsResponse
    typealias CancelSpotFleetRequestsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CancelSpotFleetRequestsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CancelSpotFleetRequestsResponse, HTTPClientError>) -> ()) throws -> ()
    typealias CancelSpotInstanceRequestsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CancelSpotInstanceRequestsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CancelSpotInstanceRequestsResult
    typealias CancelSpotInstanceRequestsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CancelSpotInstanceRequestsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CancelSpotInstanceRequestsResult, HTTPClientError>) -> ()) throws -> ()
    typealias ConfirmProductInstanceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ConfirmProductInstanceRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ConfirmProductInstanceResult
    typealias ConfirmProductInstanceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ConfirmProductInstanceRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ConfirmProductInstanceResult, HTTPClientError>) -> ()) throws -> ()
    typealias CopyFpgaImageSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CopyFpgaImageRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CopyFpgaImageResult
    typealias CopyFpgaImageAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CopyFpgaImageRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CopyFpgaImageResult, HTTPClientError>) -> ()) throws -> ()
    typealias CopyImageSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CopyImageRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CopyImageResult
    typealias CopyImageAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CopyImageRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CopyImageResult, HTTPClientError>) -> ()) throws -> ()
    typealias CopySnapshotSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CopySnapshotRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CopySnapshotResult
    typealias CopySnapshotAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CopySnapshotRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CopySnapshotResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateCapacityReservationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateCapacityReservationRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateCapacityReservationResult
    typealias CreateCapacityReservationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateCapacityReservationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateCapacityReservationResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateClientVpnEndpointSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateClientVpnEndpointRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateClientVpnEndpointResult
    typealias CreateClientVpnEndpointAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateClientVpnEndpointRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateClientVpnEndpointResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateClientVpnRouteSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateClientVpnRouteRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateClientVpnRouteResult
    typealias CreateClientVpnRouteAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateClientVpnRouteRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateClientVpnRouteResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateCustomerGatewaySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateCustomerGatewayRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateCustomerGatewayResult
    typealias CreateCustomerGatewayAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateCustomerGatewayRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateCustomerGatewayResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateDefaultSubnetSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateDefaultSubnetRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateDefaultSubnetResult
    typealias CreateDefaultSubnetAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateDefaultSubnetRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateDefaultSubnetResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateDefaultVpcSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateDefaultVpcRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateDefaultVpcResult
    typealias CreateDefaultVpcAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateDefaultVpcRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateDefaultVpcResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateDhcpOptionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateDhcpOptionsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateDhcpOptionsResult
    typealias CreateDhcpOptionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateDhcpOptionsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateDhcpOptionsResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateEgressOnlyInternetGatewaySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayResult
    typealias CreateEgressOnlyInternetGatewayAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateFleetSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateFleetRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateFleetResult
    typealias CreateFleetAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateFleetRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateFleetResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateFlowLogsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateFlowLogsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateFlowLogsResult
    typealias CreateFlowLogsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateFlowLogsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateFlowLogsResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateFpgaImageSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateFpgaImageRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateFpgaImageResult
    typealias CreateFpgaImageAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateFpgaImageRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateFpgaImageResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateImageSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateImageRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateImageResult
    typealias CreateImageAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateImageRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateImageResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateInstanceExportTaskSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateInstanceExportTaskRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateInstanceExportTaskResult
    typealias CreateInstanceExportTaskAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateInstanceExportTaskRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateInstanceExportTaskResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateInternetGatewaySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateInternetGatewayRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateInternetGatewayResult
    typealias CreateInternetGatewayAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateInternetGatewayRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateInternetGatewayResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateKeyPairSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateKeyPairRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.KeyPair
    typealias CreateKeyPairAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateKeyPairRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.KeyPair, HTTPClientError>) -> ()) throws -> ()
    typealias CreateLaunchTemplateSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateLaunchTemplateRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateLaunchTemplateResult
    typealias CreateLaunchTemplateAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateLaunchTemplateRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateLaunchTemplateResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateLaunchTemplateVersionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateLaunchTemplateVersionRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateLaunchTemplateVersionResult
    typealias CreateLaunchTemplateVersionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateLaunchTemplateVersionRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateLaunchTemplateVersionResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateLocalGatewayRouteSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateLocalGatewayRouteRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateLocalGatewayRouteResult
    typealias CreateLocalGatewayRouteAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateLocalGatewayRouteRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateLocalGatewayRouteResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateLocalGatewayRouteTableVpcAssociationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationResult
    typealias CreateLocalGatewayRouteTableVpcAssociationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateNatGatewaySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateNatGatewayRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateNatGatewayResult
    typealias CreateNatGatewayAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateNatGatewayRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateNatGatewayResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateNetworkAclSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateNetworkAclRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateNetworkAclResult
    typealias CreateNetworkAclAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateNetworkAclRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateNetworkAclResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateNetworkAclEntrySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateNetworkAclEntryRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias CreateNetworkAclEntryAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateNetworkAclEntryRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias CreateNetworkInterfaceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateNetworkInterfaceRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateNetworkInterfaceResult
    typealias CreateNetworkInterfaceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateNetworkInterfaceRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateNetworkInterfaceResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateNetworkInterfacePermissionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateNetworkInterfacePermissionRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateNetworkInterfacePermissionResult
    typealias CreateNetworkInterfacePermissionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateNetworkInterfacePermissionRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateNetworkInterfacePermissionResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreatePlacementGroupSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreatePlacementGroupRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias CreatePlacementGroupAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreatePlacementGroupRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias CreateReservedInstancesListingSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateReservedInstancesListingRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateReservedInstancesListingResult
    typealias CreateReservedInstancesListingAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateReservedInstancesListingRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateReservedInstancesListingResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateRouteSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateRouteRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateRouteResult
    typealias CreateRouteAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateRouteRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateRouteResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateRouteTableSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateRouteTableRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateRouteTableResult
    typealias CreateRouteTableAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateRouteTableRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateRouteTableResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateSecurityGroupSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateSecurityGroupRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateSecurityGroupResult
    typealias CreateSecurityGroupAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateSecurityGroupRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateSecurityGroupResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateSnapshotSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateSnapshotRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.Snapshot
    typealias CreateSnapshotAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateSnapshotRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.Snapshot, HTTPClientError>) -> ()) throws -> ()
    typealias CreateSnapshotsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateSnapshotsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateSnapshotsResult
    typealias CreateSnapshotsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateSnapshotsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateSnapshotsResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateSpotDatafeedSubscriptionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionResult
    typealias CreateSpotDatafeedSubscriptionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateSubnetSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateSubnetRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateSubnetResult
    typealias CreateSubnetAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateSubnetRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateSubnetResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateTagsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateTagsRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias CreateTagsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateTagsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias CreateTrafficMirrorFilterSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateTrafficMirrorFilterResult
    typealias CreateTrafficMirrorFilterAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateTrafficMirrorFilterResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateTrafficMirrorFilterRuleSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleResult
    typealias CreateTrafficMirrorFilterRuleAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateTrafficMirrorSessionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateTrafficMirrorSessionRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateTrafficMirrorSessionResult
    typealias CreateTrafficMirrorSessionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateTrafficMirrorSessionRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateTrafficMirrorSessionResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateTrafficMirrorTargetSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateTrafficMirrorTargetRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateTrafficMirrorTargetResult
    typealias CreateTrafficMirrorTargetAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateTrafficMirrorTargetRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateTrafficMirrorTargetResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateTransitGatewaySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateTransitGatewayResult
    typealias CreateTransitGatewayAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateTransitGatewayMulticastDomainSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainResult
    typealias CreateTransitGatewayMulticastDomainAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateTransitGatewayPeeringAttachmentSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentResult
    typealias CreateTransitGatewayPeeringAttachmentAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateTransitGatewayRouteSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayRouteRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateTransitGatewayRouteResult
    typealias CreateTransitGatewayRouteAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayRouteRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayRouteResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateTransitGatewayRouteTableSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayRouteTableRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateTransitGatewayRouteTableResult
    typealias CreateTransitGatewayRouteTableAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayRouteTableRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayRouteTableResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateTransitGatewayVpcAttachmentSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentResult
    typealias CreateTransitGatewayVpcAttachmentAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateVolumeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateVolumeRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.Volume
    typealias CreateVolumeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateVolumeRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.Volume, HTTPClientError>) -> ()) throws -> ()
    typealias CreateVpcSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateVpcRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateVpcResult
    typealias CreateVpcAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateVpcRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateVpcResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateVpcEndpointSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateVpcEndpointRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateVpcEndpointResult
    typealias CreateVpcEndpointAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateVpcEndpointRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateVpcEndpointResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateVpcEndpointConnectionNotificationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationResult
    typealias CreateVpcEndpointConnectionNotificationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateVpcEndpointServiceConfigurationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationResult
    typealias CreateVpcEndpointServiceConfigurationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateVpcPeeringConnectionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateVpcPeeringConnectionRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateVpcPeeringConnectionResult
    typealias CreateVpcPeeringConnectionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateVpcPeeringConnectionRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateVpcPeeringConnectionResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateVpnConnectionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateVpnConnectionRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateVpnConnectionResult
    typealias CreateVpnConnectionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateVpnConnectionRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateVpnConnectionResult, HTTPClientError>) -> ()) throws -> ()
    typealias CreateVpnConnectionRouteSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateVpnConnectionRouteRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias CreateVpnConnectionRouteAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateVpnConnectionRouteRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias CreateVpnGatewaySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateVpnGatewayRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateVpnGatewayResult
    typealias CreateVpnGatewayAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.CreateVpnGatewayRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.CreateVpnGatewayResult, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteClientVpnEndpointSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteClientVpnEndpointRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteClientVpnEndpointResult
    typealias DeleteClientVpnEndpointAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteClientVpnEndpointRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteClientVpnEndpointResult, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteClientVpnRouteSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteClientVpnRouteRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteClientVpnRouteResult
    typealias DeleteClientVpnRouteAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteClientVpnRouteRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteClientVpnRouteResult, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteCustomerGatewaySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteCustomerGatewayRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteCustomerGatewayAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteCustomerGatewayRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteDhcpOptionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteDhcpOptionsRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteDhcpOptionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteDhcpOptionsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteEgressOnlyInternetGatewaySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayResult
    typealias DeleteEgressOnlyInternetGatewayAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayResult, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteFleetsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteFleetsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteFleetsResult
    typealias DeleteFleetsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteFleetsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteFleetsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteFlowLogsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteFlowLogsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteFlowLogsResult
    typealias DeleteFlowLogsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteFlowLogsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteFlowLogsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteFpgaImageSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteFpgaImageRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteFpgaImageResult
    typealias DeleteFpgaImageAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteFpgaImageRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteFpgaImageResult, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteInternetGatewaySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteInternetGatewayRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteInternetGatewayAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteInternetGatewayRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteKeyPairSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteKeyPairRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteKeyPairAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteKeyPairRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteLaunchTemplateSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteLaunchTemplateRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteLaunchTemplateResult
    typealias DeleteLaunchTemplateAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteLaunchTemplateRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteLaunchTemplateResult, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteLaunchTemplateVersionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteLaunchTemplateVersionsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteLaunchTemplateVersionsResult
    typealias DeleteLaunchTemplateVersionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteLaunchTemplateVersionsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteLaunchTemplateVersionsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteLocalGatewayRouteSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteLocalGatewayRouteRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteLocalGatewayRouteResult
    typealias DeleteLocalGatewayRouteAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteLocalGatewayRouteRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteLocalGatewayRouteResult, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteLocalGatewayRouteTableVpcAssociationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationResult
    typealias DeleteLocalGatewayRouteTableVpcAssociationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationResult, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteNatGatewaySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteNatGatewayRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteNatGatewayResult
    typealias DeleteNatGatewayAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteNatGatewayRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteNatGatewayResult, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteNetworkAclSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteNetworkAclRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteNetworkAclAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteNetworkAclRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteNetworkAclEntrySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteNetworkAclEntryRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteNetworkAclEntryAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteNetworkAclEntryRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteNetworkInterfaceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteNetworkInterfaceRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteNetworkInterfaceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteNetworkInterfaceRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteNetworkInterfacePermissionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteNetworkInterfacePermissionRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteNetworkInterfacePermissionResult
    typealias DeleteNetworkInterfacePermissionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteNetworkInterfacePermissionRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteNetworkInterfacePermissionResult, HTTPClientError>) -> ()) throws -> ()
    typealias DeletePlacementGroupSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeletePlacementGroupRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeletePlacementGroupAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeletePlacementGroupRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteQueuedReservedInstancesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteQueuedReservedInstancesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteQueuedReservedInstancesResult
    typealias DeleteQueuedReservedInstancesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteQueuedReservedInstancesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteQueuedReservedInstancesResult, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteRouteSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteRouteRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteRouteAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteRouteRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteRouteTableSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteRouteTableRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteRouteTableAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteRouteTableRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteSecurityGroupSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteSecurityGroupRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteSecurityGroupAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteSecurityGroupRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteSnapshotSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteSnapshotRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteSnapshotAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteSnapshotRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteSpotDatafeedSubscriptionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteSpotDatafeedSubscriptionRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteSpotDatafeedSubscriptionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteSpotDatafeedSubscriptionRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteSubnetSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteSubnetRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteSubnetAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteSubnetRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteTagsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteTagsRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteTagsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteTagsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteTrafficMirrorFilterSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteTrafficMirrorFilterResult
    typealias DeleteTrafficMirrorFilterAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteTrafficMirrorFilterResult, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteTrafficMirrorFilterRuleSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleResult
    typealias DeleteTrafficMirrorFilterRuleAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleResult, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteTrafficMirrorSessionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteTrafficMirrorSessionRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteTrafficMirrorSessionResult
    typealias DeleteTrafficMirrorSessionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteTrafficMirrorSessionRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteTrafficMirrorSessionResult, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteTrafficMirrorTargetSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteTrafficMirrorTargetRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteTrafficMirrorTargetResult
    typealias DeleteTrafficMirrorTargetAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteTrafficMirrorTargetRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteTrafficMirrorTargetResult, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteTransitGatewaySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteTransitGatewayResult
    typealias DeleteTransitGatewayAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayResult, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteTransitGatewayMulticastDomainSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainResult
    typealias DeleteTransitGatewayMulticastDomainAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainResult, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteTransitGatewayPeeringAttachmentSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentResult
    typealias DeleteTransitGatewayPeeringAttachmentAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentResult, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteTransitGatewayRouteSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayRouteRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteTransitGatewayRouteResult
    typealias DeleteTransitGatewayRouteAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayRouteRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayRouteResult, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteTransitGatewayRouteTableSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayRouteTableRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteTransitGatewayRouteTableResult
    typealias DeleteTransitGatewayRouteTableAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayRouteTableRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayRouteTableResult, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteTransitGatewayVpcAttachmentSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentResult
    typealias DeleteTransitGatewayVpcAttachmentAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentResult, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteVolumeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteVolumeRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteVolumeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteVolumeRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteVpcSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteVpcRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteVpcAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteVpcRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteVpcEndpointConnectionNotificationsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsResult
    typealias DeleteVpcEndpointConnectionNotificationsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteVpcEndpointServiceConfigurationsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsResult
    typealias DeleteVpcEndpointServiceConfigurationsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteVpcEndpointsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteVpcEndpointsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteVpcEndpointsResult
    typealias DeleteVpcEndpointsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteVpcEndpointsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteVpcEndpointsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteVpcPeeringConnectionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteVpcPeeringConnectionRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteVpcPeeringConnectionResult
    typealias DeleteVpcPeeringConnectionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteVpcPeeringConnectionRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeleteVpcPeeringConnectionResult, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteVpnConnectionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteVpnConnectionRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteVpnConnectionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteVpnConnectionRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteVpnConnectionRouteSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteVpnConnectionRouteRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteVpnConnectionRouteAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteVpnConnectionRouteRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteVpnGatewaySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteVpnGatewayRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteVpnGatewayAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeleteVpnGatewayRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeprovisionByoipCidrSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeprovisionByoipCidrRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeprovisionByoipCidrResult
    typealias DeprovisionByoipCidrAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeprovisionByoipCidrRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeprovisionByoipCidrResult, HTTPClientError>) -> ()) throws -> ()
    typealias DeregisterImageSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeregisterImageRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeregisterImageAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeregisterImageRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeregisterTransitGatewayMulticastGroupMembersSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersResult
    typealias DeregisterTransitGatewayMulticastGroupMembersAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersResult, HTTPClientError>) -> ()) throws -> ()
    typealias DeregisterTransitGatewayMulticastGroupSourcesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesResult
    typealias DeregisterTransitGatewayMulticastGroupSourcesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeAccountAttributesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeAccountAttributesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeAccountAttributesResult
    typealias DescribeAccountAttributesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeAccountAttributesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeAccountAttributesResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeAddressesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeAddressesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeAddressesResult
    typealias DescribeAddressesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeAddressesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeAddressesResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeAggregateIdFormatSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeAggregateIdFormatRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeAggregateIdFormatResult
    typealias DescribeAggregateIdFormatAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeAggregateIdFormatRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeAggregateIdFormatResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeAvailabilityZonesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeAvailabilityZonesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeAvailabilityZonesResult
    typealias DescribeAvailabilityZonesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeAvailabilityZonesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeAvailabilityZonesResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeBundleTasksSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeBundleTasksRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeBundleTasksResult
    typealias DescribeBundleTasksAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeBundleTasksRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeBundleTasksResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeByoipCidrsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeByoipCidrsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeByoipCidrsResult
    typealias DescribeByoipCidrsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeByoipCidrsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeByoipCidrsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeCapacityReservationsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeCapacityReservationsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeCapacityReservationsResult
    typealias DescribeCapacityReservationsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeCapacityReservationsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeCapacityReservationsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeClassicLinkInstancesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeClassicLinkInstancesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeClassicLinkInstancesResult
    typealias DescribeClassicLinkInstancesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeClassicLinkInstancesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeClassicLinkInstancesResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeClientVpnAuthorizationRulesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesResult
    typealias DescribeClientVpnAuthorizationRulesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeClientVpnConnectionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeClientVpnConnectionsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeClientVpnConnectionsResult
    typealias DescribeClientVpnConnectionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeClientVpnConnectionsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeClientVpnConnectionsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeClientVpnEndpointsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeClientVpnEndpointsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeClientVpnEndpointsResult
    typealias DescribeClientVpnEndpointsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeClientVpnEndpointsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeClientVpnEndpointsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeClientVpnRoutesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeClientVpnRoutesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeClientVpnRoutesResult
    typealias DescribeClientVpnRoutesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeClientVpnRoutesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeClientVpnRoutesResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeClientVpnTargetNetworksSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeClientVpnTargetNetworksRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeClientVpnTargetNetworksResult
    typealias DescribeClientVpnTargetNetworksAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeClientVpnTargetNetworksRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeClientVpnTargetNetworksResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeCoipPoolsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeCoipPoolsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeCoipPoolsResult
    typealias DescribeCoipPoolsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeCoipPoolsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeCoipPoolsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeConversionTasksSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeConversionTasksRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeConversionTasksResult
    typealias DescribeConversionTasksAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeConversionTasksRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeConversionTasksResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeCustomerGatewaysSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeCustomerGatewaysRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeCustomerGatewaysResult
    typealias DescribeCustomerGatewaysAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeCustomerGatewaysRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeCustomerGatewaysResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDhcpOptionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeDhcpOptionsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeDhcpOptionsResult
    typealias DescribeDhcpOptionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeDhcpOptionsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeDhcpOptionsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeEgressOnlyInternetGatewaysSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysResult
    typealias DescribeEgressOnlyInternetGatewaysAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeElasticGpusSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeElasticGpusRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeElasticGpusResult
    typealias DescribeElasticGpusAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeElasticGpusRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeElasticGpusResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeExportImageTasksSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeExportImageTasksRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeExportImageTasksResult
    typealias DescribeExportImageTasksAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeExportImageTasksRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeExportImageTasksResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeExportTasksSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeExportTasksRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeExportTasksResult
    typealias DescribeExportTasksAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeExportTasksRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeExportTasksResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeFastSnapshotRestoresSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeFastSnapshotRestoresRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeFastSnapshotRestoresResult
    typealias DescribeFastSnapshotRestoresAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeFastSnapshotRestoresRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeFastSnapshotRestoresResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeFleetHistorySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeFleetHistoryRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeFleetHistoryResult
    typealias DescribeFleetHistoryAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeFleetHistoryRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeFleetHistoryResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeFleetInstancesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeFleetInstancesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeFleetInstancesResult
    typealias DescribeFleetInstancesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeFleetInstancesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeFleetInstancesResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeFleetsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeFleetsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeFleetsResult
    typealias DescribeFleetsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeFleetsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeFleetsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeFlowLogsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeFlowLogsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeFlowLogsResult
    typealias DescribeFlowLogsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeFlowLogsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeFlowLogsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeFpgaImageAttributeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeFpgaImageAttributeRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeFpgaImageAttributeResult
    typealias DescribeFpgaImageAttributeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeFpgaImageAttributeRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeFpgaImageAttributeResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeFpgaImagesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeFpgaImagesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeFpgaImagesResult
    typealias DescribeFpgaImagesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeFpgaImagesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeFpgaImagesResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeHostReservationOfferingsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeHostReservationOfferingsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeHostReservationOfferingsResult
    typealias DescribeHostReservationOfferingsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeHostReservationOfferingsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeHostReservationOfferingsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeHostReservationsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeHostReservationsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeHostReservationsResult
    typealias DescribeHostReservationsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeHostReservationsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeHostReservationsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeHostsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeHostsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeHostsResult
    typealias DescribeHostsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeHostsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeHostsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeIamInstanceProfileAssociationsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsResult
    typealias DescribeIamInstanceProfileAssociationsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeIdFormatSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeIdFormatRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeIdFormatResult
    typealias DescribeIdFormatAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeIdFormatRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeIdFormatResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeIdentityIdFormatSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeIdentityIdFormatRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeIdentityIdFormatResult
    typealias DescribeIdentityIdFormatAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeIdentityIdFormatRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeIdentityIdFormatResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeImageAttributeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeImageAttributeRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ImageAttribute
    typealias DescribeImageAttributeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeImageAttributeRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ImageAttribute, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeImagesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeImagesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeImagesResult
    typealias DescribeImagesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeImagesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeImagesResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeImportImageTasksSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeImportImageTasksRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeImportImageTasksResult
    typealias DescribeImportImageTasksAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeImportImageTasksRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeImportImageTasksResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeImportSnapshotTasksSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeImportSnapshotTasksRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeImportSnapshotTasksResult
    typealias DescribeImportSnapshotTasksAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeImportSnapshotTasksRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeImportSnapshotTasksResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeInstanceAttributeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeInstanceAttributeRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.InstanceAttribute
    typealias DescribeInstanceAttributeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeInstanceAttributeRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.InstanceAttribute, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeInstanceCreditSpecificationsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsResult
    typealias DescribeInstanceCreditSpecificationsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeInstanceStatusSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeInstanceStatusRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeInstanceStatusResult
    typealias DescribeInstanceStatusAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeInstanceStatusRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeInstanceStatusResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeInstanceTypeOfferingsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeInstanceTypeOfferingsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeInstanceTypeOfferingsResult
    typealias DescribeInstanceTypeOfferingsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeInstanceTypeOfferingsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeInstanceTypeOfferingsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeInstanceTypesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeInstanceTypesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeInstanceTypesResult
    typealias DescribeInstanceTypesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeInstanceTypesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeInstanceTypesResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeInstancesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeInstancesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeInstancesResult
    typealias DescribeInstancesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeInstancesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeInstancesResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeInternetGatewaysSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeInternetGatewaysRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeInternetGatewaysResult
    typealias DescribeInternetGatewaysAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeInternetGatewaysRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeInternetGatewaysResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeIpv6PoolsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeIpv6PoolsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeIpv6PoolsResult
    typealias DescribeIpv6PoolsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeIpv6PoolsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeIpv6PoolsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeKeyPairsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeKeyPairsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeKeyPairsResult
    typealias DescribeKeyPairsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeKeyPairsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeKeyPairsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeLaunchTemplateVersionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeLaunchTemplateVersionsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeLaunchTemplateVersionsResult
    typealias DescribeLaunchTemplateVersionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeLaunchTemplateVersionsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeLaunchTemplateVersionsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeLaunchTemplatesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeLaunchTemplatesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeLaunchTemplatesResult
    typealias DescribeLaunchTemplatesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeLaunchTemplatesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeLaunchTemplatesResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult
    typealias DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeLocalGatewayRouteTableVpcAssociationsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsResult
    typealias DescribeLocalGatewayRouteTableVpcAssociationsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeLocalGatewayRouteTablesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesResult
    typealias DescribeLocalGatewayRouteTablesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeLocalGatewayVirtualInterfaceGroupsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsResult
    typealias DescribeLocalGatewayVirtualInterfaceGroupsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeLocalGatewayVirtualInterfacesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesResult
    typealias DescribeLocalGatewayVirtualInterfacesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeLocalGatewaysSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewaysRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeLocalGatewaysResult
    typealias DescribeLocalGatewaysAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewaysRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeLocalGatewaysResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeMovingAddressesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeMovingAddressesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeMovingAddressesResult
    typealias DescribeMovingAddressesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeMovingAddressesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeMovingAddressesResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeNatGatewaysSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeNatGatewaysRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeNatGatewaysResult
    typealias DescribeNatGatewaysAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeNatGatewaysRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeNatGatewaysResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeNetworkAclsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeNetworkAclsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeNetworkAclsResult
    typealias DescribeNetworkAclsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeNetworkAclsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeNetworkAclsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeNetworkInterfaceAttributeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeResult
    typealias DescribeNetworkInterfaceAttributeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeNetworkInterfacePermissionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsResult
    typealias DescribeNetworkInterfacePermissionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeNetworkInterfacesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeNetworkInterfacesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeNetworkInterfacesResult
    typealias DescribeNetworkInterfacesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeNetworkInterfacesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeNetworkInterfacesResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribePlacementGroupsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribePlacementGroupsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribePlacementGroupsResult
    typealias DescribePlacementGroupsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribePlacementGroupsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribePlacementGroupsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribePrefixListsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribePrefixListsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribePrefixListsResult
    typealias DescribePrefixListsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribePrefixListsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribePrefixListsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribePrincipalIdFormatSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribePrincipalIdFormatRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribePrincipalIdFormatResult
    typealias DescribePrincipalIdFormatAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribePrincipalIdFormatRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribePrincipalIdFormatResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribePublicIpv4PoolsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribePublicIpv4PoolsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribePublicIpv4PoolsResult
    typealias DescribePublicIpv4PoolsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribePublicIpv4PoolsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribePublicIpv4PoolsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeRegionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeRegionsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeRegionsResult
    typealias DescribeRegionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeRegionsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeRegionsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeReservedInstancesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeReservedInstancesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeReservedInstancesResult
    typealias DescribeReservedInstancesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeReservedInstancesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeReservedInstancesResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeReservedInstancesListingsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeReservedInstancesListingsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeReservedInstancesListingsResult
    typealias DescribeReservedInstancesListingsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeReservedInstancesListingsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeReservedInstancesListingsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeReservedInstancesModificationsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeReservedInstancesModificationsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeReservedInstancesModificationsResult
    typealias DescribeReservedInstancesModificationsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeReservedInstancesModificationsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeReservedInstancesModificationsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeReservedInstancesOfferingsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeReservedInstancesOfferingsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeReservedInstancesOfferingsResult
    typealias DescribeReservedInstancesOfferingsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeReservedInstancesOfferingsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeReservedInstancesOfferingsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeRouteTablesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeRouteTablesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeRouteTablesResult
    typealias DescribeRouteTablesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeRouteTablesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeRouteTablesResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeScheduledInstanceAvailabilitySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityResult
    typealias DescribeScheduledInstanceAvailabilityAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeScheduledInstancesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeScheduledInstancesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeScheduledInstancesResult
    typealias DescribeScheduledInstancesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeScheduledInstancesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeScheduledInstancesResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeSecurityGroupReferencesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeSecurityGroupReferencesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeSecurityGroupReferencesResult
    typealias DescribeSecurityGroupReferencesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeSecurityGroupReferencesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeSecurityGroupReferencesResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeSecurityGroupsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeSecurityGroupsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeSecurityGroupsResult
    typealias DescribeSecurityGroupsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeSecurityGroupsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeSecurityGroupsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeSnapshotAttributeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeSnapshotAttributeRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeSnapshotAttributeResult
    typealias DescribeSnapshotAttributeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeSnapshotAttributeRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeSnapshotAttributeResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeSnapshotsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeSnapshotsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeSnapshotsResult
    typealias DescribeSnapshotsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeSnapshotsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeSnapshotsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeSpotDatafeedSubscriptionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionResult
    typealias DescribeSpotDatafeedSubscriptionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeSpotFleetInstancesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeSpotFleetInstancesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeSpotFleetInstancesResponse
    typealias DescribeSpotFleetInstancesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeSpotFleetInstancesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeSpotFleetInstancesResponse, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeSpotFleetRequestHistorySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryResponse
    typealias DescribeSpotFleetRequestHistoryAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryResponse, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeSpotFleetRequestsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeSpotFleetRequestsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeSpotFleetRequestsResponse
    typealias DescribeSpotFleetRequestsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeSpotFleetRequestsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeSpotFleetRequestsResponse, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeSpotInstanceRequestsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeSpotInstanceRequestsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeSpotInstanceRequestsResult
    typealias DescribeSpotInstanceRequestsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeSpotInstanceRequestsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeSpotInstanceRequestsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeSpotPriceHistorySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeSpotPriceHistoryRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeSpotPriceHistoryResult
    typealias DescribeSpotPriceHistoryAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeSpotPriceHistoryRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeSpotPriceHistoryResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeStaleSecurityGroupsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeStaleSecurityGroupsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeStaleSecurityGroupsResult
    typealias DescribeStaleSecurityGroupsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeStaleSecurityGroupsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeStaleSecurityGroupsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeSubnetsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeSubnetsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeSubnetsResult
    typealias DescribeSubnetsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeSubnetsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeSubnetsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeTagsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeTagsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeTagsResult
    typealias DescribeTagsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeTagsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeTagsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeTrafficMirrorFiltersSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeTrafficMirrorFiltersRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeTrafficMirrorFiltersResult
    typealias DescribeTrafficMirrorFiltersAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeTrafficMirrorFiltersRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeTrafficMirrorFiltersResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeTrafficMirrorSessionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeTrafficMirrorSessionsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeTrafficMirrorSessionsResult
    typealias DescribeTrafficMirrorSessionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeTrafficMirrorSessionsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeTrafficMirrorSessionsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeTrafficMirrorTargetsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeTrafficMirrorTargetsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeTrafficMirrorTargetsResult
    typealias DescribeTrafficMirrorTargetsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeTrafficMirrorTargetsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeTrafficMirrorTargetsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeTransitGatewayAttachmentsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsResult
    typealias DescribeTransitGatewayAttachmentsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeTransitGatewayMulticastDomainsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsResult
    typealias DescribeTransitGatewayMulticastDomainsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeTransitGatewayPeeringAttachmentsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsResult
    typealias DescribeTransitGatewayPeeringAttachmentsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeTransitGatewayRouteTablesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesResult
    typealias DescribeTransitGatewayRouteTablesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeTransitGatewayVpcAttachmentsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsResult
    typealias DescribeTransitGatewayVpcAttachmentsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeTransitGatewaysSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewaysRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeTransitGatewaysResult
    typealias DescribeTransitGatewaysAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewaysRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewaysResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeVolumeAttributeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVolumeAttributeRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVolumeAttributeResult
    typealias DescribeVolumeAttributeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVolumeAttributeRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVolumeAttributeResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeVolumeStatusSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVolumeStatusRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVolumeStatusResult
    typealias DescribeVolumeStatusAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVolumeStatusRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVolumeStatusResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeVolumesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVolumesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVolumesResult
    typealias DescribeVolumesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVolumesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVolumesResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeVolumesModificationsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVolumesModificationsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVolumesModificationsResult
    typealias DescribeVolumesModificationsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVolumesModificationsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVolumesModificationsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeVpcAttributeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVpcAttributeRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVpcAttributeResult
    typealias DescribeVpcAttributeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVpcAttributeRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcAttributeResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeVpcClassicLinkSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVpcClassicLinkRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVpcClassicLinkResult
    typealias DescribeVpcClassicLinkAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVpcClassicLinkRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcClassicLinkResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeVpcClassicLinkDnsSupportSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportResult
    typealias DescribeVpcClassicLinkDnsSupportAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeVpcEndpointConnectionNotificationsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsResult
    typealias DescribeVpcEndpointConnectionNotificationsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeVpcEndpointConnectionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVpcEndpointConnectionsResult
    typealias DescribeVpcEndpointConnectionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcEndpointConnectionsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeVpcEndpointServiceConfigurationsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsResult
    typealias DescribeVpcEndpointServiceConfigurationsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeVpcEndpointServicePermissionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsResult
    typealias DescribeVpcEndpointServicePermissionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeVpcEndpointServicesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointServicesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVpcEndpointServicesResult
    typealias DescribeVpcEndpointServicesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointServicesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcEndpointServicesResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeVpcEndpointsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVpcEndpointsResult
    typealias DescribeVpcEndpointsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcEndpointsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeVpcPeeringConnectionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVpcPeeringConnectionsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVpcPeeringConnectionsResult
    typealias DescribeVpcPeeringConnectionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVpcPeeringConnectionsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcPeeringConnectionsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeVpcsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVpcsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVpcsResult
    typealias DescribeVpcsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVpcsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeVpnConnectionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVpnConnectionsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVpnConnectionsResult
    typealias DescribeVpnConnectionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVpnConnectionsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpnConnectionsResult, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeVpnGatewaysSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVpnGatewaysRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVpnGatewaysResult
    typealias DescribeVpnGatewaysAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DescribeVpnGatewaysRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpnGatewaysResult, HTTPClientError>) -> ()) throws -> ()
    typealias DetachClassicLinkVpcSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DetachClassicLinkVpcRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DetachClassicLinkVpcResult
    typealias DetachClassicLinkVpcAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DetachClassicLinkVpcRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DetachClassicLinkVpcResult, HTTPClientError>) -> ()) throws -> ()
    typealias DetachInternetGatewaySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DetachInternetGatewayRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DetachInternetGatewayAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DetachInternetGatewayRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DetachNetworkInterfaceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DetachNetworkInterfaceRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DetachNetworkInterfaceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DetachNetworkInterfaceRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DetachVolumeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DetachVolumeRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.VolumeAttachment
    typealias DetachVolumeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DetachVolumeRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.VolumeAttachment, HTTPClientError>) -> ()) throws -> ()
    typealias DetachVpnGatewaySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DetachVpnGatewayRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DetachVpnGatewayAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DetachVpnGatewayRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DisableEbsEncryptionByDefaultSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DisableEbsEncryptionByDefaultRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DisableEbsEncryptionByDefaultResult
    typealias DisableEbsEncryptionByDefaultAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DisableEbsEncryptionByDefaultRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DisableEbsEncryptionByDefaultResult, HTTPClientError>) -> ()) throws -> ()
    typealias DisableFastSnapshotRestoresSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DisableFastSnapshotRestoresRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DisableFastSnapshotRestoresResult
    typealias DisableFastSnapshotRestoresAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DisableFastSnapshotRestoresRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DisableFastSnapshotRestoresResult, HTTPClientError>) -> ()) throws -> ()
    typealias DisableTransitGatewayRouteTablePropagationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationResult
    typealias DisableTransitGatewayRouteTablePropagationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationResult, HTTPClientError>) -> ()) throws -> ()
    typealias DisableVgwRoutePropagationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DisableVgwRoutePropagationRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DisableVgwRoutePropagationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DisableVgwRoutePropagationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DisableVpcClassicLinkSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DisableVpcClassicLinkRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DisableVpcClassicLinkResult
    typealias DisableVpcClassicLinkAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DisableVpcClassicLinkRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DisableVpcClassicLinkResult, HTTPClientError>) -> ()) throws -> ()
    typealias DisableVpcClassicLinkDnsSupportSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportResult
    typealias DisableVpcClassicLinkDnsSupportAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportResult, HTTPClientError>) -> ()) throws -> ()
    typealias DisassociateAddressSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DisassociateAddressRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DisassociateAddressAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DisassociateAddressRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DisassociateClientVpnTargetNetworkSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkResult
    typealias DisassociateClientVpnTargetNetworkAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkResult, HTTPClientError>) -> ()) throws -> ()
    typealias DisassociateIamInstanceProfileSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DisassociateIamInstanceProfileRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DisassociateIamInstanceProfileResult
    typealias DisassociateIamInstanceProfileAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DisassociateIamInstanceProfileRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DisassociateIamInstanceProfileResult, HTTPClientError>) -> ()) throws -> ()
    typealias DisassociateRouteTableSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DisassociateRouteTableRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DisassociateRouteTableAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DisassociateRouteTableRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DisassociateSubnetCidrBlockSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DisassociateSubnetCidrBlockRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DisassociateSubnetCidrBlockResult
    typealias DisassociateSubnetCidrBlockAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DisassociateSubnetCidrBlockRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DisassociateSubnetCidrBlockResult, HTTPClientError>) -> ()) throws -> ()
    typealias DisassociateTransitGatewayMulticastDomainSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainResult
    typealias DisassociateTransitGatewayMulticastDomainAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainResult, HTTPClientError>) -> ()) throws -> ()
    typealias DisassociateTransitGatewayRouteTableSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableResult
    typealias DisassociateTransitGatewayRouteTableAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableResult, HTTPClientError>) -> ()) throws -> ()
    typealias DisassociateVpcCidrBlockSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DisassociateVpcCidrBlockRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DisassociateVpcCidrBlockResult
    typealias DisassociateVpcCidrBlockAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.DisassociateVpcCidrBlockRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.DisassociateVpcCidrBlockResult, HTTPClientError>) -> ()) throws -> ()
    typealias EnableEbsEncryptionByDefaultSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.EnableEbsEncryptionByDefaultRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.EnableEbsEncryptionByDefaultResult
    typealias EnableEbsEncryptionByDefaultAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.EnableEbsEncryptionByDefaultRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.EnableEbsEncryptionByDefaultResult, HTTPClientError>) -> ()) throws -> ()
    typealias EnableFastSnapshotRestoresSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.EnableFastSnapshotRestoresRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.EnableFastSnapshotRestoresResult
    typealias EnableFastSnapshotRestoresAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.EnableFastSnapshotRestoresRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.EnableFastSnapshotRestoresResult, HTTPClientError>) -> ()) throws -> ()
    typealias EnableTransitGatewayRouteTablePropagationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationResult
    typealias EnableTransitGatewayRouteTablePropagationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationResult, HTTPClientError>) -> ()) throws -> ()
    typealias EnableVgwRoutePropagationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.EnableVgwRoutePropagationRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias EnableVgwRoutePropagationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.EnableVgwRoutePropagationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias EnableVolumeIOSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.EnableVolumeIORequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias EnableVolumeIOAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.EnableVolumeIORequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias EnableVpcClassicLinkSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.EnableVpcClassicLinkRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.EnableVpcClassicLinkResult
    typealias EnableVpcClassicLinkAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.EnableVpcClassicLinkRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.EnableVpcClassicLinkResult, HTTPClientError>) -> ()) throws -> ()
    typealias EnableVpcClassicLinkDnsSupportSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportResult
    typealias EnableVpcClassicLinkDnsSupportAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportResult, HTTPClientError>) -> ()) throws -> ()
    typealias ExportClientVpnClientCertificateRevocationListSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListResult
    typealias ExportClientVpnClientCertificateRevocationListAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListResult, HTTPClientError>) -> ()) throws -> ()
    typealias ExportClientVpnClientConfigurationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ExportClientVpnClientConfigurationRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ExportClientVpnClientConfigurationResult
    typealias ExportClientVpnClientConfigurationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ExportClientVpnClientConfigurationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ExportClientVpnClientConfigurationResult, HTTPClientError>) -> ()) throws -> ()
    typealias ExportImageSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ExportImageRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ExportImageResult
    typealias ExportImageAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ExportImageRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ExportImageResult, HTTPClientError>) -> ()) throws -> ()
    typealias ExportTransitGatewayRoutesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ExportTransitGatewayRoutesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ExportTransitGatewayRoutesResult
    typealias ExportTransitGatewayRoutesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ExportTransitGatewayRoutesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ExportTransitGatewayRoutesResult, HTTPClientError>) -> ()) throws -> ()
    typealias GetAssociatedIpv6PoolCidrsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsResult
    typealias GetAssociatedIpv6PoolCidrsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsResult, HTTPClientError>) -> ()) throws -> ()
    typealias GetCapacityReservationUsageSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.GetCapacityReservationUsageRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.GetCapacityReservationUsageResult
    typealias GetCapacityReservationUsageAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.GetCapacityReservationUsageRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetCapacityReservationUsageResult, HTTPClientError>) -> ()) throws -> ()
    typealias GetCoipPoolUsageSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.GetCoipPoolUsageRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.GetCoipPoolUsageResult
    typealias GetCoipPoolUsageAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.GetCoipPoolUsageRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetCoipPoolUsageResult, HTTPClientError>) -> ()) throws -> ()
    typealias GetConsoleOutputSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.GetConsoleOutputRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.GetConsoleOutputResult
    typealias GetConsoleOutputAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.GetConsoleOutputRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetConsoleOutputResult, HTTPClientError>) -> ()) throws -> ()
    typealias GetConsoleScreenshotSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.GetConsoleScreenshotRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.GetConsoleScreenshotResult
    typealias GetConsoleScreenshotAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.GetConsoleScreenshotRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetConsoleScreenshotResult, HTTPClientError>) -> ()) throws -> ()
    typealias GetDefaultCreditSpecificationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.GetDefaultCreditSpecificationRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.GetDefaultCreditSpecificationResult
    typealias GetDefaultCreditSpecificationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.GetDefaultCreditSpecificationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetDefaultCreditSpecificationResult, HTTPClientError>) -> ()) throws -> ()
    typealias GetEbsDefaultKmsKeyIdSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdResult
    typealias GetEbsDefaultKmsKeyIdAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdResult, HTTPClientError>) -> ()) throws -> ()
    typealias GetEbsEncryptionByDefaultSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.GetEbsEncryptionByDefaultRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.GetEbsEncryptionByDefaultResult
    typealias GetEbsEncryptionByDefaultAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.GetEbsEncryptionByDefaultRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetEbsEncryptionByDefaultResult, HTTPClientError>) -> ()) throws -> ()
    typealias GetHostReservationPurchasePreviewSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.GetHostReservationPurchasePreviewRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.GetHostReservationPurchasePreviewResult
    typealias GetHostReservationPurchasePreviewAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.GetHostReservationPurchasePreviewRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetHostReservationPurchasePreviewResult, HTTPClientError>) -> ()) throws -> ()
    typealias GetLaunchTemplateDataSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.GetLaunchTemplateDataRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.GetLaunchTemplateDataResult
    typealias GetLaunchTemplateDataAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.GetLaunchTemplateDataRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetLaunchTemplateDataResult, HTTPClientError>) -> ()) throws -> ()
    typealias GetPasswordDataSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.GetPasswordDataRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.GetPasswordDataResult
    typealias GetPasswordDataAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.GetPasswordDataRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetPasswordDataResult, HTTPClientError>) -> ()) throws -> ()
    typealias GetReservedInstancesExchangeQuoteSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteResult
    typealias GetReservedInstancesExchangeQuoteAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteResult, HTTPClientError>) -> ()) throws -> ()
    typealias GetTransitGatewayAttachmentPropagationsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsResult
    typealias GetTransitGatewayAttachmentPropagationsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsResult, HTTPClientError>) -> ()) throws -> ()
    typealias GetTransitGatewayMulticastDomainAssociationsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsResult
    typealias GetTransitGatewayMulticastDomainAssociationsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsResult, HTTPClientError>) -> ()) throws -> ()
    typealias GetTransitGatewayRouteTableAssociationsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsResult
    typealias GetTransitGatewayRouteTableAssociationsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsResult, HTTPClientError>) -> ()) throws -> ()
    typealias GetTransitGatewayRouteTablePropagationsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsResult
    typealias GetTransitGatewayRouteTablePropagationsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsResult, HTTPClientError>) -> ()) throws -> ()
    typealias ImportClientVpnClientCertificateRevocationListSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListResult
    typealias ImportClientVpnClientCertificateRevocationListAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListResult, HTTPClientError>) -> ()) throws -> ()
    typealias ImportImageSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ImportImageRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ImportImageResult
    typealias ImportImageAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ImportImageRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ImportImageResult, HTTPClientError>) -> ()) throws -> ()
    typealias ImportInstanceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ImportInstanceRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ImportInstanceResult
    typealias ImportInstanceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ImportInstanceRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ImportInstanceResult, HTTPClientError>) -> ()) throws -> ()
    typealias ImportKeyPairSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ImportKeyPairRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ImportKeyPairResult
    typealias ImportKeyPairAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ImportKeyPairRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ImportKeyPairResult, HTTPClientError>) -> ()) throws -> ()
    typealias ImportSnapshotSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ImportSnapshotRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ImportSnapshotResult
    typealias ImportSnapshotAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ImportSnapshotRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ImportSnapshotResult, HTTPClientError>) -> ()) throws -> ()
    typealias ImportVolumeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ImportVolumeRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ImportVolumeResult
    typealias ImportVolumeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ImportVolumeRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ImportVolumeResult, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyCapacityReservationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyCapacityReservationRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyCapacityReservationResult
    typealias ModifyCapacityReservationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyCapacityReservationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyCapacityReservationResult, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyClientVpnEndpointSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyClientVpnEndpointRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyClientVpnEndpointResult
    typealias ModifyClientVpnEndpointAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyClientVpnEndpointRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyClientVpnEndpointResult, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyDefaultCreditSpecificationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyDefaultCreditSpecificationRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyDefaultCreditSpecificationResult
    typealias ModifyDefaultCreditSpecificationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyDefaultCreditSpecificationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyDefaultCreditSpecificationResult, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyEbsDefaultKmsKeyIdSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdResult
    typealias ModifyEbsDefaultKmsKeyIdAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdResult, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyFleetSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyFleetRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyFleetResult
    typealias ModifyFleetAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyFleetRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyFleetResult, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyFpgaImageAttributeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyFpgaImageAttributeRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyFpgaImageAttributeResult
    typealias ModifyFpgaImageAttributeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyFpgaImageAttributeRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyFpgaImageAttributeResult, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyHostsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyHostsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyHostsResult
    typealias ModifyHostsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyHostsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyHostsResult, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyIdFormatSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyIdFormatRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias ModifyIdFormatAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyIdFormatRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ModifyIdentityIdFormatSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyIdentityIdFormatRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias ModifyIdentityIdFormatAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyIdentityIdFormatRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ModifyImageAttributeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyImageAttributeRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias ModifyImageAttributeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyImageAttributeRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ModifyInstanceAttributeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyInstanceAttributeRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias ModifyInstanceAttributeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyInstanceAttributeRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ModifyInstanceCapacityReservationAttributesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesResult
    typealias ModifyInstanceCapacityReservationAttributesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesResult, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyInstanceCreditSpecificationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyInstanceCreditSpecificationRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyInstanceCreditSpecificationResult
    typealias ModifyInstanceCreditSpecificationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyInstanceCreditSpecificationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyInstanceCreditSpecificationResult, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyInstanceEventStartTimeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyInstanceEventStartTimeRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyInstanceEventStartTimeResult
    typealias ModifyInstanceEventStartTimeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyInstanceEventStartTimeRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyInstanceEventStartTimeResult, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyInstanceMetadataOptionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyInstanceMetadataOptionsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyInstanceMetadataOptionsResult
    typealias ModifyInstanceMetadataOptionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyInstanceMetadataOptionsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyInstanceMetadataOptionsResult, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyInstancePlacementSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyInstancePlacementRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyInstancePlacementResult
    typealias ModifyInstancePlacementAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyInstancePlacementRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyInstancePlacementResult, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyLaunchTemplateSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyLaunchTemplateRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyLaunchTemplateResult
    typealias ModifyLaunchTemplateAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyLaunchTemplateRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyLaunchTemplateResult, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyNetworkInterfaceAttributeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyNetworkInterfaceAttributeRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias ModifyNetworkInterfaceAttributeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyNetworkInterfaceAttributeRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ModifyReservedInstancesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyReservedInstancesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyReservedInstancesResult
    typealias ModifyReservedInstancesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyReservedInstancesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyReservedInstancesResult, HTTPClientError>) -> ()) throws -> ()
    typealias ModifySnapshotAttributeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifySnapshotAttributeRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias ModifySnapshotAttributeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifySnapshotAttributeRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ModifySpotFleetRequestSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifySpotFleetRequestRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifySpotFleetRequestResponse
    typealias ModifySpotFleetRequestAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifySpotFleetRequestRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifySpotFleetRequestResponse, HTTPClientError>) -> ()) throws -> ()
    typealias ModifySubnetAttributeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifySubnetAttributeRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias ModifySubnetAttributeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifySubnetAttributeRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ModifyTrafficMirrorFilterNetworkServicesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesResult
    typealias ModifyTrafficMirrorFilterNetworkServicesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesResult, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyTrafficMirrorFilterRuleSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleResult
    typealias ModifyTrafficMirrorFilterRuleAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleResult, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyTrafficMirrorSessionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyTrafficMirrorSessionRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyTrafficMirrorSessionResult
    typealias ModifyTrafficMirrorSessionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyTrafficMirrorSessionRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyTrafficMirrorSessionResult, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyTransitGatewayVpcAttachmentSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentResult
    typealias ModifyTransitGatewayVpcAttachmentAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentResult, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyVolumeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyVolumeRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyVolumeResult
    typealias ModifyVolumeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyVolumeRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyVolumeResult, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyVolumeAttributeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyVolumeAttributeRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias ModifyVolumeAttributeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyVolumeAttributeRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ModifyVpcAttributeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyVpcAttributeRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias ModifyVpcAttributeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyVpcAttributeRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ModifyVpcEndpointSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyVpcEndpointRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyVpcEndpointResult
    typealias ModifyVpcEndpointAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyVpcEndpointRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpcEndpointResult, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyVpcEndpointConnectionNotificationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationResult
    typealias ModifyVpcEndpointConnectionNotificationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationResult, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyVpcEndpointServiceConfigurationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationResult
    typealias ModifyVpcEndpointServiceConfigurationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationResult, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyVpcEndpointServicePermissionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsResult
    typealias ModifyVpcEndpointServicePermissionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsResult, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyVpcPeeringConnectionOptionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsResult
    typealias ModifyVpcPeeringConnectionOptionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsResult, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyVpcTenancySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyVpcTenancyRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyVpcTenancyResult
    typealias ModifyVpcTenancyAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyVpcTenancyRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpcTenancyResult, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyVpnConnectionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyVpnConnectionRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyVpnConnectionResult
    typealias ModifyVpnConnectionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyVpnConnectionRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpnConnectionResult, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyVpnTunnelCertificateSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyVpnTunnelCertificateRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyVpnTunnelCertificateResult
    typealias ModifyVpnTunnelCertificateAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyVpnTunnelCertificateRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpnTunnelCertificateResult, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyVpnTunnelOptionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyVpnTunnelOptionsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyVpnTunnelOptionsResult
    typealias ModifyVpnTunnelOptionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ModifyVpnTunnelOptionsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpnTunnelOptionsResult, HTTPClientError>) -> ()) throws -> ()
    typealias MonitorInstancesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.MonitorInstancesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.MonitorInstancesResult
    typealias MonitorInstancesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.MonitorInstancesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.MonitorInstancesResult, HTTPClientError>) -> ()) throws -> ()
    typealias MoveAddressToVpcSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.MoveAddressToVpcRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.MoveAddressToVpcResult
    typealias MoveAddressToVpcAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.MoveAddressToVpcRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.MoveAddressToVpcResult, HTTPClientError>) -> ()) throws -> ()
    typealias ProvisionByoipCidrSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ProvisionByoipCidrRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ProvisionByoipCidrResult
    typealias ProvisionByoipCidrAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ProvisionByoipCidrRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ProvisionByoipCidrResult, HTTPClientError>) -> ()) throws -> ()
    typealias PurchaseHostReservationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.PurchaseHostReservationRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.PurchaseHostReservationResult
    typealias PurchaseHostReservationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.PurchaseHostReservationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.PurchaseHostReservationResult, HTTPClientError>) -> ()) throws -> ()
    typealias PurchaseReservedInstancesOfferingSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.PurchaseReservedInstancesOfferingRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.PurchaseReservedInstancesOfferingResult
    typealias PurchaseReservedInstancesOfferingAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.PurchaseReservedInstancesOfferingRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.PurchaseReservedInstancesOfferingResult, HTTPClientError>) -> ()) throws -> ()
    typealias PurchaseScheduledInstancesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.PurchaseScheduledInstancesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.PurchaseScheduledInstancesResult
    typealias PurchaseScheduledInstancesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.PurchaseScheduledInstancesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.PurchaseScheduledInstancesResult, HTTPClientError>) -> ()) throws -> ()
    typealias RebootInstancesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.RebootInstancesRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias RebootInstancesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.RebootInstancesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RegisterImageSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.RegisterImageRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.RegisterImageResult
    typealias RegisterImageAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.RegisterImageRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.RegisterImageResult, HTTPClientError>) -> ()) throws -> ()
    typealias RegisterTransitGatewayMulticastGroupMembersSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersResult
    typealias RegisterTransitGatewayMulticastGroupMembersAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersResult, HTTPClientError>) -> ()) throws -> ()
    typealias RegisterTransitGatewayMulticastGroupSourcesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesResult
    typealias RegisterTransitGatewayMulticastGroupSourcesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesResult, HTTPClientError>) -> ()) throws -> ()
    typealias RejectTransitGatewayPeeringAttachmentSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentResult
    typealias RejectTransitGatewayPeeringAttachmentAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentResult, HTTPClientError>) -> ()) throws -> ()
    typealias RejectTransitGatewayVpcAttachmentSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentResult
    typealias RejectTransitGatewayVpcAttachmentAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentResult, HTTPClientError>) -> ()) throws -> ()
    typealias RejectVpcEndpointConnectionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.RejectVpcEndpointConnectionsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.RejectVpcEndpointConnectionsResult
    typealias RejectVpcEndpointConnectionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.RejectVpcEndpointConnectionsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.RejectVpcEndpointConnectionsResult, HTTPClientError>) -> ()) throws -> ()
    typealias RejectVpcPeeringConnectionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.RejectVpcPeeringConnectionRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.RejectVpcPeeringConnectionResult
    typealias RejectVpcPeeringConnectionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.RejectVpcPeeringConnectionRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.RejectVpcPeeringConnectionResult, HTTPClientError>) -> ()) throws -> ()
    typealias ReleaseAddressSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ReleaseAddressRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias ReleaseAddressAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ReleaseAddressRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ReleaseHostsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ReleaseHostsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ReleaseHostsResult
    typealias ReleaseHostsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ReleaseHostsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ReleaseHostsResult, HTTPClientError>) -> ()) throws -> ()
    typealias ReplaceIamInstanceProfileAssociationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationResult
    typealias ReplaceIamInstanceProfileAssociationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationResult, HTTPClientError>) -> ()) throws -> ()
    typealias ReplaceNetworkAclAssociationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ReplaceNetworkAclAssociationRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ReplaceNetworkAclAssociationResult
    typealias ReplaceNetworkAclAssociationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ReplaceNetworkAclAssociationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ReplaceNetworkAclAssociationResult, HTTPClientError>) -> ()) throws -> ()
    typealias ReplaceNetworkAclEntrySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ReplaceNetworkAclEntryRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias ReplaceNetworkAclEntryAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ReplaceNetworkAclEntryRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ReplaceRouteSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ReplaceRouteRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias ReplaceRouteAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ReplaceRouteRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ReplaceRouteTableAssociationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ReplaceRouteTableAssociationRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ReplaceRouteTableAssociationResult
    typealias ReplaceRouteTableAssociationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ReplaceRouteTableAssociationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ReplaceRouteTableAssociationResult, HTTPClientError>) -> ()) throws -> ()
    typealias ReplaceTransitGatewayRouteSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ReplaceTransitGatewayRouteRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ReplaceTransitGatewayRouteResult
    typealias ReplaceTransitGatewayRouteAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ReplaceTransitGatewayRouteRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ReplaceTransitGatewayRouteResult, HTTPClientError>) -> ()) throws -> ()
    typealias ReportInstanceStatusSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ReportInstanceStatusRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias ReportInstanceStatusAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ReportInstanceStatusRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RequestSpotFleetSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.RequestSpotFleetRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.RequestSpotFleetResponse
    typealias RequestSpotFleetAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.RequestSpotFleetRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.RequestSpotFleetResponse, HTTPClientError>) -> ()) throws -> ()
    typealias RequestSpotInstancesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.RequestSpotInstancesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.RequestSpotInstancesResult
    typealias RequestSpotInstancesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.RequestSpotInstancesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.RequestSpotInstancesResult, HTTPClientError>) -> ()) throws -> ()
    typealias ResetEbsDefaultKmsKeyIdSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdResult
    typealias ResetEbsDefaultKmsKeyIdAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdResult, HTTPClientError>) -> ()) throws -> ()
    typealias ResetFpgaImageAttributeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ResetFpgaImageAttributeRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ResetFpgaImageAttributeResult
    typealias ResetFpgaImageAttributeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ResetFpgaImageAttributeRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.ResetFpgaImageAttributeResult, HTTPClientError>) -> ()) throws -> ()
    typealias ResetImageAttributeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ResetImageAttributeRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias ResetImageAttributeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ResetImageAttributeRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ResetInstanceAttributeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ResetInstanceAttributeRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias ResetInstanceAttributeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ResetInstanceAttributeRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ResetNetworkInterfaceAttributeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ResetNetworkInterfaceAttributeRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias ResetNetworkInterfaceAttributeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ResetNetworkInterfaceAttributeRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ResetSnapshotAttributeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ResetSnapshotAttributeRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias ResetSnapshotAttributeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.ResetSnapshotAttributeRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RestoreAddressToClassicSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.RestoreAddressToClassicRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.RestoreAddressToClassicResult
    typealias RestoreAddressToClassicAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.RestoreAddressToClassicRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.RestoreAddressToClassicResult, HTTPClientError>) -> ()) throws -> ()
    typealias RevokeClientVpnIngressSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.RevokeClientVpnIngressRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.RevokeClientVpnIngressResult
    typealias RevokeClientVpnIngressAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.RevokeClientVpnIngressRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.RevokeClientVpnIngressResult, HTTPClientError>) -> ()) throws -> ()
    typealias RevokeSecurityGroupEgressSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.RevokeSecurityGroupEgressRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias RevokeSecurityGroupEgressAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.RevokeSecurityGroupEgressRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RevokeSecurityGroupIngressSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.RevokeSecurityGroupIngressRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias RevokeSecurityGroupIngressAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.RevokeSecurityGroupIngressRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RunInstancesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.RunInstancesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.Reservation
    typealias RunInstancesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.RunInstancesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.Reservation, HTTPClientError>) -> ()) throws -> ()
    typealias RunScheduledInstancesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.RunScheduledInstancesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.RunScheduledInstancesResult
    typealias RunScheduledInstancesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.RunScheduledInstancesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.RunScheduledInstancesResult, HTTPClientError>) -> ()) throws -> ()
    typealias SearchLocalGatewayRoutesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.SearchLocalGatewayRoutesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.SearchLocalGatewayRoutesResult
    typealias SearchLocalGatewayRoutesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.SearchLocalGatewayRoutesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.SearchLocalGatewayRoutesResult, HTTPClientError>) -> ()) throws -> ()
    typealias SearchTransitGatewayMulticastGroupsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsResult
    typealias SearchTransitGatewayMulticastGroupsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsResult, HTTPClientError>) -> ()) throws -> ()
    typealias SearchTransitGatewayRoutesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.SearchTransitGatewayRoutesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.SearchTransitGatewayRoutesResult
    typealias SearchTransitGatewayRoutesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.SearchTransitGatewayRoutesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.SearchTransitGatewayRoutesResult, HTTPClientError>) -> ()) throws -> ()
    typealias SendDiagnosticInterruptSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.SendDiagnosticInterruptRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias SendDiagnosticInterruptAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.SendDiagnosticInterruptRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias StartInstancesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.StartInstancesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.StartInstancesResult
    typealias StartInstancesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.StartInstancesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.StartInstancesResult, HTTPClientError>) -> ()) throws -> ()
    typealias StartVpcEndpointServicePrivateDnsVerificationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationResult
    typealias StartVpcEndpointServicePrivateDnsVerificationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationResult, HTTPClientError>) -> ()) throws -> ()
    typealias StopInstancesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.StopInstancesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.StopInstancesResult
    typealias StopInstancesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.StopInstancesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.StopInstancesResult, HTTPClientError>) -> ()) throws -> ()
    typealias TerminateClientVpnConnectionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.TerminateClientVpnConnectionsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.TerminateClientVpnConnectionsResult
    typealias TerminateClientVpnConnectionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.TerminateClientVpnConnectionsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.TerminateClientVpnConnectionsResult, HTTPClientError>) -> ()) throws -> ()
    typealias TerminateInstancesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.TerminateInstancesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.TerminateInstancesResult
    typealias TerminateInstancesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.TerminateInstancesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.TerminateInstancesResult, HTTPClientError>) -> ()) throws -> ()
    typealias UnassignIpv6AddressesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.UnassignIpv6AddressesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.UnassignIpv6AddressesResult
    typealias UnassignIpv6AddressesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.UnassignIpv6AddressesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.UnassignIpv6AddressesResult, HTTPClientError>) -> ()) throws -> ()
    typealias UnassignPrivateIpAddressesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.UnassignPrivateIpAddressesRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias UnassignPrivateIpAddressesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.UnassignPrivateIpAddressesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias UnmonitorInstancesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.UnmonitorInstancesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.UnmonitorInstancesResult
    typealias UnmonitorInstancesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.UnmonitorInstancesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.UnmonitorInstancesResult, HTTPClientError>) -> ()) throws -> ()
    typealias UpdateSecurityGroupRuleDescriptionsEgressSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressResult
    typealias UpdateSecurityGroupRuleDescriptionsEgressAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressResult, HTTPClientError>) -> ()) throws -> ()
    typealias UpdateSecurityGroupRuleDescriptionsIngressSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressResult
    typealias UpdateSecurityGroupRuleDescriptionsIngressAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressResult, HTTPClientError>) -> ()) throws -> ()
    typealias WithdrawByoipCidrSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.WithdrawByoipCidrRequest,
            _ reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.WithdrawByoipCidrResult
    typealias WithdrawByoipCidrAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticComputeCloudModel.WithdrawByoipCidrRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticComputeCloudModel.WithdrawByoipCidrResult, HTTPClientError>) -> ()) throws -> ()

    /**
     Invokes the AcceptReservedInstancesExchangeQuote operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AcceptReservedInstancesExchangeQuoteRequest object being passed to this operation.
         - completion: The AcceptReservedInstancesExchangeQuoteResult object or an error will be passed to this 
           callback when the operation is complete. The AcceptReservedInstancesExchangeQuoteResult
           object will be validated before being returned to caller.
     */
    func acceptReservedInstancesExchangeQuoteAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the AcceptReservedInstancesExchangeQuote operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcceptReservedInstancesExchangeQuoteRequest object being passed to this operation.
     - Returns: The AcceptReservedInstancesExchangeQuoteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptReservedInstancesExchangeQuoteSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteResult

    /**
     Invokes the AcceptTransitGatewayPeeringAttachment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AcceptTransitGatewayPeeringAttachmentRequest object being passed to this operation.
         - completion: The AcceptTransitGatewayPeeringAttachmentResult object or an error will be passed to this 
           callback when the operation is complete. The AcceptTransitGatewayPeeringAttachmentResult
           object will be validated before being returned to caller.
     */
    func acceptTransitGatewayPeeringAttachmentAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the AcceptTransitGatewayPeeringAttachment operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcceptTransitGatewayPeeringAttachmentRequest object being passed to this operation.
     - Returns: The AcceptTransitGatewayPeeringAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptTransitGatewayPeeringAttachmentSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentResult

    /**
     Invokes the AcceptTransitGatewayVpcAttachment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AcceptTransitGatewayVpcAttachmentRequest object being passed to this operation.
         - completion: The AcceptTransitGatewayVpcAttachmentResult object or an error will be passed to this 
           callback when the operation is complete. The AcceptTransitGatewayVpcAttachmentResult
           object will be validated before being returned to caller.
     */
    func acceptTransitGatewayVpcAttachmentAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the AcceptTransitGatewayVpcAttachment operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcceptTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The AcceptTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptTransitGatewayVpcAttachmentSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentResult

    /**
     Invokes the AcceptVpcEndpointConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AcceptVpcEndpointConnectionsRequest object being passed to this operation.
         - completion: The AcceptVpcEndpointConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The AcceptVpcEndpointConnectionsResult
           object will be validated before being returned to caller.
     */
    func acceptVpcEndpointConnectionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AcceptVpcEndpointConnectionsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.AcceptVpcEndpointConnectionsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the AcceptVpcEndpointConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcceptVpcEndpointConnectionsRequest object being passed to this operation.
     - Returns: The AcceptVpcEndpointConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptVpcEndpointConnectionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AcceptVpcEndpointConnectionsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AcceptVpcEndpointConnectionsResult

    /**
     Invokes the AcceptVpcPeeringConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AcceptVpcPeeringConnectionRequest object being passed to this operation.
         - completion: The AcceptVpcPeeringConnectionResult object or an error will be passed to this 
           callback when the operation is complete. The AcceptVpcPeeringConnectionResult
           object will be validated before being returned to caller.
     */
    func acceptVpcPeeringConnectionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AcceptVpcPeeringConnectionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.AcceptVpcPeeringConnectionResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the AcceptVpcPeeringConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcceptVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: The AcceptVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptVpcPeeringConnectionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AcceptVpcPeeringConnectionRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AcceptVpcPeeringConnectionResult

    /**
     Invokes the AdvertiseByoipCidr operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AdvertiseByoipCidrRequest object being passed to this operation.
         - completion: The AdvertiseByoipCidrResult object or an error will be passed to this 
           callback when the operation is complete. The AdvertiseByoipCidrResult
           object will be validated before being returned to caller.
     */
    func advertiseByoipCidrAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AdvertiseByoipCidrRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.AdvertiseByoipCidrResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the AdvertiseByoipCidr operation waiting for the response before returning.

     - Parameters:
         - input: The validated AdvertiseByoipCidrRequest object being passed to this operation.
     - Returns: The AdvertiseByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func advertiseByoipCidrSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AdvertiseByoipCidrRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AdvertiseByoipCidrResult

    /**
     Invokes the AllocateAddress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AllocateAddressRequest object being passed to this operation.
         - completion: The AllocateAddressResult object or an error will be passed to this 
           callback when the operation is complete. The AllocateAddressResult
           object will be validated before being returned to caller.
     */
    func allocateAddressAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AllocateAddressRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.AllocateAddressResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the AllocateAddress operation waiting for the response before returning.

     - Parameters:
         - input: The validated AllocateAddressRequest object being passed to this operation.
     - Returns: The AllocateAddressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func allocateAddressSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AllocateAddressRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AllocateAddressResult

    /**
     Invokes the AllocateHosts operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AllocateHostsRequest object being passed to this operation.
         - completion: The AllocateHostsResult object or an error will be passed to this 
           callback when the operation is complete. The AllocateHostsResult
           object will be validated before being returned to caller.
     */
    func allocateHostsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AllocateHostsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.AllocateHostsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the AllocateHosts operation waiting for the response before returning.

     - Parameters:
         - input: The validated AllocateHostsRequest object being passed to this operation.
     - Returns: The AllocateHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func allocateHostsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AllocateHostsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AllocateHostsResult

    /**
     Invokes the ApplySecurityGroupsToClientVpnTargetNetwork operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ApplySecurityGroupsToClientVpnTargetNetworkRequest object being passed to this operation.
         - completion: The ApplySecurityGroupsToClientVpnTargetNetworkResult object or an error will be passed to this 
           callback when the operation is complete. The ApplySecurityGroupsToClientVpnTargetNetworkResult
           object will be validated before being returned to caller.
     */
    func applySecurityGroupsToClientVpnTargetNetworkAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ApplySecurityGroupsToClientVpnTargetNetwork operation waiting for the response before returning.

     - Parameters:
         - input: The validated ApplySecurityGroupsToClientVpnTargetNetworkRequest object being passed to this operation.
     - Returns: The ApplySecurityGroupsToClientVpnTargetNetworkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func applySecurityGroupsToClientVpnTargetNetworkSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkResult

    /**
     Invokes the AssignIpv6Addresses operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssignIpv6AddressesRequest object being passed to this operation.
         - completion: The AssignIpv6AddressesResult object or an error will be passed to this 
           callback when the operation is complete. The AssignIpv6AddressesResult
           object will be validated before being returned to caller.
     */
    func assignIpv6AddressesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AssignIpv6AddressesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.AssignIpv6AddressesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the AssignIpv6Addresses operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssignIpv6AddressesRequest object being passed to this operation.
     - Returns: The AssignIpv6AddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func assignIpv6AddressesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AssignIpv6AddressesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AssignIpv6AddressesResult

    /**
     Invokes the AssignPrivateIpAddresses operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssignPrivateIpAddressesRequest object being passed to this operation.
         - completion: The AssignPrivateIpAddressesResult object or an error will be passed to this 
           callback when the operation is complete. The AssignPrivateIpAddressesResult
           object will be validated before being returned to caller.
     */
    func assignPrivateIpAddressesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AssignPrivateIpAddressesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.AssignPrivateIpAddressesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the AssignPrivateIpAddresses operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssignPrivateIpAddressesRequest object being passed to this operation.
     - Returns: The AssignPrivateIpAddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func assignPrivateIpAddressesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AssignPrivateIpAddressesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AssignPrivateIpAddressesResult

    /**
     Invokes the AssociateAddress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateAddressRequest object being passed to this operation.
         - completion: The AssociateAddressResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateAddressResult
           object will be validated before being returned to caller.
     */
    func associateAddressAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AssociateAddressRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.AssociateAddressResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the AssociateAddress operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateAddressRequest object being passed to this operation.
     - Returns: The AssociateAddressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateAddressSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AssociateAddressRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AssociateAddressResult

    /**
     Invokes the AssociateClientVpnTargetNetwork operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateClientVpnTargetNetworkRequest object being passed to this operation.
         - completion: The AssociateClientVpnTargetNetworkResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateClientVpnTargetNetworkResult
           object will be validated before being returned to caller.
     */
    func associateClientVpnTargetNetworkAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AssociateClientVpnTargetNetworkRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.AssociateClientVpnTargetNetworkResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the AssociateClientVpnTargetNetwork operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateClientVpnTargetNetworkRequest object being passed to this operation.
     - Returns: The AssociateClientVpnTargetNetworkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateClientVpnTargetNetworkSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AssociateClientVpnTargetNetworkRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AssociateClientVpnTargetNetworkResult

    /**
     Invokes the AssociateDhcpOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateDhcpOptionsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func associateDhcpOptionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AssociateDhcpOptionsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the AssociateDhcpOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateDhcpOptionsRequest object being passed to this operation.
     */
    func associateDhcpOptionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AssociateDhcpOptionsRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the AssociateIamInstanceProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateIamInstanceProfileRequest object being passed to this operation.
         - completion: The AssociateIamInstanceProfileResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateIamInstanceProfileResult
           object will be validated before being returned to caller.
     */
    func associateIamInstanceProfileAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AssociateIamInstanceProfileRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.AssociateIamInstanceProfileResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the AssociateIamInstanceProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateIamInstanceProfileRequest object being passed to this operation.
     - Returns: The AssociateIamInstanceProfileResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateIamInstanceProfileSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AssociateIamInstanceProfileRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AssociateIamInstanceProfileResult

    /**
     Invokes the AssociateRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateRouteTableRequest object being passed to this operation.
         - completion: The AssociateRouteTableResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateRouteTableResult
           object will be validated before being returned to caller.
     */
    func associateRouteTableAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AssociateRouteTableRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.AssociateRouteTableResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the AssociateRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateRouteTableRequest object being passed to this operation.
     - Returns: The AssociateRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateRouteTableSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AssociateRouteTableRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AssociateRouteTableResult

    /**
     Invokes the AssociateSubnetCidrBlock operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateSubnetCidrBlockRequest object being passed to this operation.
         - completion: The AssociateSubnetCidrBlockResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateSubnetCidrBlockResult
           object will be validated before being returned to caller.
     */
    func associateSubnetCidrBlockAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AssociateSubnetCidrBlockRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.AssociateSubnetCidrBlockResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the AssociateSubnetCidrBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateSubnetCidrBlockRequest object being passed to this operation.
     - Returns: The AssociateSubnetCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateSubnetCidrBlockSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AssociateSubnetCidrBlockRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AssociateSubnetCidrBlockResult

    /**
     Invokes the AssociateTransitGatewayMulticastDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateTransitGatewayMulticastDomainRequest object being passed to this operation.
         - completion: The AssociateTransitGatewayMulticastDomainResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateTransitGatewayMulticastDomainResult
           object will be validated before being returned to caller.
     */
    func associateTransitGatewayMulticastDomainAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the AssociateTransitGatewayMulticastDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateTransitGatewayMulticastDomainRequest object being passed to this operation.
     - Returns: The AssociateTransitGatewayMulticastDomainResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateTransitGatewayMulticastDomainSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainResult

    /**
     Invokes the AssociateTransitGatewayRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateTransitGatewayRouteTableRequest object being passed to this operation.
         - completion: The AssociateTransitGatewayRouteTableResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateTransitGatewayRouteTableResult
           object will be validated before being returned to caller.
     */
    func associateTransitGatewayRouteTableAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AssociateTransitGatewayRouteTableRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.AssociateTransitGatewayRouteTableResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the AssociateTransitGatewayRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: The AssociateTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateTransitGatewayRouteTableSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AssociateTransitGatewayRouteTableRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AssociateTransitGatewayRouteTableResult

    /**
     Invokes the AssociateVpcCidrBlock operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateVpcCidrBlockRequest object being passed to this operation.
         - completion: The AssociateVpcCidrBlockResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateVpcCidrBlockResult
           object will be validated before being returned to caller.
     */
    func associateVpcCidrBlockAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AssociateVpcCidrBlockRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.AssociateVpcCidrBlockResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the AssociateVpcCidrBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateVpcCidrBlockRequest object being passed to this operation.
     - Returns: The AssociateVpcCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateVpcCidrBlockSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AssociateVpcCidrBlockRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AssociateVpcCidrBlockResult

    /**
     Invokes the AttachClassicLinkVpc operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachClassicLinkVpcRequest object being passed to this operation.
         - completion: The AttachClassicLinkVpcResult object or an error will be passed to this 
           callback when the operation is complete. The AttachClassicLinkVpcResult
           object will be validated before being returned to caller.
     */
    func attachClassicLinkVpcAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AttachClassicLinkVpcRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.AttachClassicLinkVpcResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the AttachClassicLinkVpc operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachClassicLinkVpcRequest object being passed to this operation.
     - Returns: The AttachClassicLinkVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func attachClassicLinkVpcSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AttachClassicLinkVpcRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AttachClassicLinkVpcResult

    /**
     Invokes the AttachInternetGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachInternetGatewayRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func attachInternetGatewayAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AttachInternetGatewayRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the AttachInternetGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachInternetGatewayRequest object being passed to this operation.
     */
    func attachInternetGatewaySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AttachInternetGatewayRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the AttachNetworkInterface operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachNetworkInterfaceRequest object being passed to this operation.
         - completion: The AttachNetworkInterfaceResult object or an error will be passed to this 
           callback when the operation is complete. The AttachNetworkInterfaceResult
           object will be validated before being returned to caller.
     */
    func attachNetworkInterfaceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AttachNetworkInterfaceRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.AttachNetworkInterfaceResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the AttachNetworkInterface operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachNetworkInterfaceRequest object being passed to this operation.
     - Returns: The AttachNetworkInterfaceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func attachNetworkInterfaceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AttachNetworkInterfaceRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AttachNetworkInterfaceResult

    /**
     Invokes the AttachVolume operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachVolumeRequest object being passed to this operation.
         - completion: The VolumeAttachment object or an error will be passed to this 
           callback when the operation is complete. The VolumeAttachment
           object will be validated before being returned to caller.
     */
    func attachVolumeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AttachVolumeRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.VolumeAttachment, HTTPClientError>) -> ()) throws

    /**
     Invokes the AttachVolume operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachVolumeRequest object being passed to this operation.
     - Returns: The VolumeAttachment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func attachVolumeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AttachVolumeRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.VolumeAttachment

    /**
     Invokes the AttachVpnGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachVpnGatewayRequest object being passed to this operation.
         - completion: The AttachVpnGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The AttachVpnGatewayResult
           object will be validated before being returned to caller.
     */
    func attachVpnGatewayAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AttachVpnGatewayRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.AttachVpnGatewayResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the AttachVpnGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachVpnGatewayRequest object being passed to this operation.
     - Returns: The AttachVpnGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func attachVpnGatewaySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AttachVpnGatewayRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AttachVpnGatewayResult

    /**
     Invokes the AuthorizeClientVpnIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AuthorizeClientVpnIngressRequest object being passed to this operation.
         - completion: The AuthorizeClientVpnIngressResult object or an error will be passed to this 
           callback when the operation is complete. The AuthorizeClientVpnIngressResult
           object will be validated before being returned to caller.
     */
    func authorizeClientVpnIngressAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AuthorizeClientVpnIngressRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.AuthorizeClientVpnIngressResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the AuthorizeClientVpnIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated AuthorizeClientVpnIngressRequest object being passed to this operation.
     - Returns: The AuthorizeClientVpnIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func authorizeClientVpnIngressSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AuthorizeClientVpnIngressRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.AuthorizeClientVpnIngressResult

    /**
     Invokes the AuthorizeSecurityGroupEgress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AuthorizeSecurityGroupEgressRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func authorizeSecurityGroupEgressAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AuthorizeSecurityGroupEgressRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the AuthorizeSecurityGroupEgress operation waiting for the response before returning.

     - Parameters:
         - input: The validated AuthorizeSecurityGroupEgressRequest object being passed to this operation.
     */
    func authorizeSecurityGroupEgressSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AuthorizeSecurityGroupEgressRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the AuthorizeSecurityGroupIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AuthorizeSecurityGroupIngressRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func authorizeSecurityGroupIngressAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AuthorizeSecurityGroupIngressRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the AuthorizeSecurityGroupIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated AuthorizeSecurityGroupIngressRequest object being passed to this operation.
     */
    func authorizeSecurityGroupIngressSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.AuthorizeSecurityGroupIngressRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the BundleInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BundleInstanceRequest object being passed to this operation.
         - completion: The BundleInstanceResult object or an error will be passed to this 
           callback when the operation is complete. The BundleInstanceResult
           object will be validated before being returned to caller.
     */
    func bundleInstanceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.BundleInstanceRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.BundleInstanceResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the BundleInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated BundleInstanceRequest object being passed to this operation.
     - Returns: The BundleInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func bundleInstanceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.BundleInstanceRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.BundleInstanceResult

    /**
     Invokes the CancelBundleTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelBundleTaskRequest object being passed to this operation.
         - completion: The CancelBundleTaskResult object or an error will be passed to this 
           callback when the operation is complete. The CancelBundleTaskResult
           object will be validated before being returned to caller.
     */
    func cancelBundleTaskAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CancelBundleTaskRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CancelBundleTaskResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CancelBundleTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelBundleTaskRequest object being passed to this operation.
     - Returns: The CancelBundleTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelBundleTaskSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CancelBundleTaskRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CancelBundleTaskResult

    /**
     Invokes the CancelCapacityReservation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelCapacityReservationRequest object being passed to this operation.
         - completion: The CancelCapacityReservationResult object or an error will be passed to this 
           callback when the operation is complete. The CancelCapacityReservationResult
           object will be validated before being returned to caller.
     */
    func cancelCapacityReservationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CancelCapacityReservationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CancelCapacityReservationResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CancelCapacityReservation operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelCapacityReservationRequest object being passed to this operation.
     - Returns: The CancelCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelCapacityReservationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CancelCapacityReservationRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CancelCapacityReservationResult

    /**
     Invokes the CancelConversionTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelConversionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func cancelConversionTaskAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CancelConversionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the CancelConversionTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelConversionRequest object being passed to this operation.
     */
    func cancelConversionTaskSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CancelConversionRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the CancelExportTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelExportTaskRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func cancelExportTaskAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CancelExportTaskRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the CancelExportTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelExportTaskRequest object being passed to this operation.
     */
    func cancelExportTaskSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CancelExportTaskRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the CancelImportTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelImportTaskRequest object being passed to this operation.
         - completion: The CancelImportTaskResult object or an error will be passed to this 
           callback when the operation is complete. The CancelImportTaskResult
           object will be validated before being returned to caller.
     */
    func cancelImportTaskAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CancelImportTaskRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CancelImportTaskResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CancelImportTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelImportTaskRequest object being passed to this operation.
     - Returns: The CancelImportTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelImportTaskSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CancelImportTaskRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CancelImportTaskResult

    /**
     Invokes the CancelReservedInstancesListing operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelReservedInstancesListingRequest object being passed to this operation.
         - completion: The CancelReservedInstancesListingResult object or an error will be passed to this 
           callback when the operation is complete. The CancelReservedInstancesListingResult
           object will be validated before being returned to caller.
     */
    func cancelReservedInstancesListingAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CancelReservedInstancesListingRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CancelReservedInstancesListingResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CancelReservedInstancesListing operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelReservedInstancesListingRequest object being passed to this operation.
     - Returns: The CancelReservedInstancesListingResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelReservedInstancesListingSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CancelReservedInstancesListingRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CancelReservedInstancesListingResult

    /**
     Invokes the CancelSpotFleetRequests operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelSpotFleetRequestsRequest object being passed to this operation.
         - completion: The CancelSpotFleetRequestsResponse object or an error will be passed to this 
           callback when the operation is complete. The CancelSpotFleetRequestsResponse
           object will be validated before being returned to caller.
     */
    func cancelSpotFleetRequestsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CancelSpotFleetRequestsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CancelSpotFleetRequestsResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the CancelSpotFleetRequests operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelSpotFleetRequestsRequest object being passed to this operation.
     - Returns: The CancelSpotFleetRequestsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelSpotFleetRequestsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CancelSpotFleetRequestsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CancelSpotFleetRequestsResponse

    /**
     Invokes the CancelSpotInstanceRequests operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelSpotInstanceRequestsRequest object being passed to this operation.
         - completion: The CancelSpotInstanceRequestsResult object or an error will be passed to this 
           callback when the operation is complete. The CancelSpotInstanceRequestsResult
           object will be validated before being returned to caller.
     */
    func cancelSpotInstanceRequestsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CancelSpotInstanceRequestsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CancelSpotInstanceRequestsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CancelSpotInstanceRequests operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelSpotInstanceRequestsRequest object being passed to this operation.
     - Returns: The CancelSpotInstanceRequestsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelSpotInstanceRequestsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CancelSpotInstanceRequestsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CancelSpotInstanceRequestsResult

    /**
     Invokes the ConfirmProductInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ConfirmProductInstanceRequest object being passed to this operation.
         - completion: The ConfirmProductInstanceResult object or an error will be passed to this 
           callback when the operation is complete. The ConfirmProductInstanceResult
           object will be validated before being returned to caller.
     */
    func confirmProductInstanceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ConfirmProductInstanceRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ConfirmProductInstanceResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ConfirmProductInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated ConfirmProductInstanceRequest object being passed to this operation.
     - Returns: The ConfirmProductInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func confirmProductInstanceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ConfirmProductInstanceRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ConfirmProductInstanceResult

    /**
     Invokes the CopyFpgaImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyFpgaImageRequest object being passed to this operation.
         - completion: The CopyFpgaImageResult object or an error will be passed to this 
           callback when the operation is complete. The CopyFpgaImageResult
           object will be validated before being returned to caller.
     */
    func copyFpgaImageAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CopyFpgaImageRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CopyFpgaImageResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CopyFpgaImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyFpgaImageRequest object being passed to this operation.
     - Returns: The CopyFpgaImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func copyFpgaImageSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CopyFpgaImageRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CopyFpgaImageResult

    /**
     Invokes the CopyImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyImageRequest object being passed to this operation.
         - completion: The CopyImageResult object or an error will be passed to this 
           callback when the operation is complete. The CopyImageResult
           object will be validated before being returned to caller.
     */
    func copyImageAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CopyImageRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CopyImageResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CopyImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyImageRequest object being passed to this operation.
     - Returns: The CopyImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func copyImageSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CopyImageRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CopyImageResult

    /**
     Invokes the CopySnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopySnapshotRequest object being passed to this operation.
         - completion: The CopySnapshotResult object or an error will be passed to this 
           callback when the operation is complete. The CopySnapshotResult
           object will be validated before being returned to caller.
     */
    func copySnapshotAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CopySnapshotRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CopySnapshotResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CopySnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopySnapshotRequest object being passed to this operation.
     - Returns: The CopySnapshotResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func copySnapshotSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CopySnapshotRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CopySnapshotResult

    /**
     Invokes the CreateCapacityReservation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateCapacityReservationRequest object being passed to this operation.
         - completion: The CreateCapacityReservationResult object or an error will be passed to this 
           callback when the operation is complete. The CreateCapacityReservationResult
           object will be validated before being returned to caller.
     */
    func createCapacityReservationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateCapacityReservationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateCapacityReservationResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateCapacityReservation operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateCapacityReservationRequest object being passed to this operation.
     - Returns: The CreateCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createCapacityReservationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateCapacityReservationRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateCapacityReservationResult

    /**
     Invokes the CreateClientVpnEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateClientVpnEndpointRequest object being passed to this operation.
         - completion: The CreateClientVpnEndpointResult object or an error will be passed to this 
           callback when the operation is complete. The CreateClientVpnEndpointResult
           object will be validated before being returned to caller.
     */
    func createClientVpnEndpointAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateClientVpnEndpointRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateClientVpnEndpointResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateClientVpnEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateClientVpnEndpointRequest object being passed to this operation.
     - Returns: The CreateClientVpnEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createClientVpnEndpointSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateClientVpnEndpointRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateClientVpnEndpointResult

    /**
     Invokes the CreateClientVpnRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateClientVpnRouteRequest object being passed to this operation.
         - completion: The CreateClientVpnRouteResult object or an error will be passed to this 
           callback when the operation is complete. The CreateClientVpnRouteResult
           object will be validated before being returned to caller.
     */
    func createClientVpnRouteAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateClientVpnRouteRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateClientVpnRouteResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateClientVpnRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateClientVpnRouteRequest object being passed to this operation.
     - Returns: The CreateClientVpnRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createClientVpnRouteSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateClientVpnRouteRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateClientVpnRouteResult

    /**
     Invokes the CreateCustomerGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateCustomerGatewayRequest object being passed to this operation.
         - completion: The CreateCustomerGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The CreateCustomerGatewayResult
           object will be validated before being returned to caller.
     */
    func createCustomerGatewayAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateCustomerGatewayRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateCustomerGatewayResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateCustomerGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateCustomerGatewayRequest object being passed to this operation.
     - Returns: The CreateCustomerGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createCustomerGatewaySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateCustomerGatewayRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateCustomerGatewayResult

    /**
     Invokes the CreateDefaultSubnet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDefaultSubnetRequest object being passed to this operation.
         - completion: The CreateDefaultSubnetResult object or an error will be passed to this 
           callback when the operation is complete. The CreateDefaultSubnetResult
           object will be validated before being returned to caller.
     */
    func createDefaultSubnetAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateDefaultSubnetRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateDefaultSubnetResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateDefaultSubnet operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDefaultSubnetRequest object being passed to this operation.
     - Returns: The CreateDefaultSubnetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createDefaultSubnetSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateDefaultSubnetRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateDefaultSubnetResult

    /**
     Invokes the CreateDefaultVpc operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDefaultVpcRequest object being passed to this operation.
         - completion: The CreateDefaultVpcResult object or an error will be passed to this 
           callback when the operation is complete. The CreateDefaultVpcResult
           object will be validated before being returned to caller.
     */
    func createDefaultVpcAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateDefaultVpcRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateDefaultVpcResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateDefaultVpc operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDefaultVpcRequest object being passed to this operation.
     - Returns: The CreateDefaultVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createDefaultVpcSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateDefaultVpcRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateDefaultVpcResult

    /**
     Invokes the CreateDhcpOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDhcpOptionsRequest object being passed to this operation.
         - completion: The CreateDhcpOptionsResult object or an error will be passed to this 
           callback when the operation is complete. The CreateDhcpOptionsResult
           object will be validated before being returned to caller.
     */
    func createDhcpOptionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateDhcpOptionsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateDhcpOptionsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateDhcpOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDhcpOptionsRequest object being passed to this operation.
     - Returns: The CreateDhcpOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createDhcpOptionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateDhcpOptionsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateDhcpOptionsResult

    /**
     Invokes the CreateEgressOnlyInternetGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateEgressOnlyInternetGatewayRequest object being passed to this operation.
         - completion: The CreateEgressOnlyInternetGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The CreateEgressOnlyInternetGatewayResult
           object will be validated before being returned to caller.
     */
    func createEgressOnlyInternetGatewayAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateEgressOnlyInternetGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateEgressOnlyInternetGatewayRequest object being passed to this operation.
     - Returns: The CreateEgressOnlyInternetGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createEgressOnlyInternetGatewaySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayResult

    /**
     Invokes the CreateFleet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateFleetRequest object being passed to this operation.
         - completion: The CreateFleetResult object or an error will be passed to this 
           callback when the operation is complete. The CreateFleetResult
           object will be validated before being returned to caller.
     */
    func createFleetAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateFleetRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateFleetResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateFleet operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateFleetRequest object being passed to this operation.
     - Returns: The CreateFleetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createFleetSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateFleetRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateFleetResult

    /**
     Invokes the CreateFlowLogs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateFlowLogsRequest object being passed to this operation.
         - completion: The CreateFlowLogsResult object or an error will be passed to this 
           callback when the operation is complete. The CreateFlowLogsResult
           object will be validated before being returned to caller.
     */
    func createFlowLogsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateFlowLogsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateFlowLogsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateFlowLogs operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateFlowLogsRequest object being passed to this operation.
     - Returns: The CreateFlowLogsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createFlowLogsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateFlowLogsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateFlowLogsResult

    /**
     Invokes the CreateFpgaImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateFpgaImageRequest object being passed to this operation.
         - completion: The CreateFpgaImageResult object or an error will be passed to this 
           callback when the operation is complete. The CreateFpgaImageResult
           object will be validated before being returned to caller.
     */
    func createFpgaImageAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateFpgaImageRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateFpgaImageResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateFpgaImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateFpgaImageRequest object being passed to this operation.
     - Returns: The CreateFpgaImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createFpgaImageSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateFpgaImageRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateFpgaImageResult

    /**
     Invokes the CreateImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateImageRequest object being passed to this operation.
         - completion: The CreateImageResult object or an error will be passed to this 
           callback when the operation is complete. The CreateImageResult
           object will be validated before being returned to caller.
     */
    func createImageAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateImageRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateImageResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateImageRequest object being passed to this operation.
     - Returns: The CreateImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createImageSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateImageRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateImageResult

    /**
     Invokes the CreateInstanceExportTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateInstanceExportTaskRequest object being passed to this operation.
         - completion: The CreateInstanceExportTaskResult object or an error will be passed to this 
           callback when the operation is complete. The CreateInstanceExportTaskResult
           object will be validated before being returned to caller.
     */
    func createInstanceExportTaskAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateInstanceExportTaskRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateInstanceExportTaskResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateInstanceExportTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateInstanceExportTaskRequest object being passed to this operation.
     - Returns: The CreateInstanceExportTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createInstanceExportTaskSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateInstanceExportTaskRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateInstanceExportTaskResult

    /**
     Invokes the CreateInternetGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateInternetGatewayRequest object being passed to this operation.
         - completion: The CreateInternetGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The CreateInternetGatewayResult
           object will be validated before being returned to caller.
     */
    func createInternetGatewayAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateInternetGatewayRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateInternetGatewayResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateInternetGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateInternetGatewayRequest object being passed to this operation.
     - Returns: The CreateInternetGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createInternetGatewaySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateInternetGatewayRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateInternetGatewayResult

    /**
     Invokes the CreateKeyPair operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateKeyPairRequest object being passed to this operation.
         - completion: The KeyPair object or an error will be passed to this 
           callback when the operation is complete. The KeyPair
           object will be validated before being returned to caller.
     */
    func createKeyPairAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateKeyPairRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.KeyPair, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateKeyPair operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateKeyPairRequest object being passed to this operation.
     - Returns: The KeyPair object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createKeyPairSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateKeyPairRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.KeyPair

    /**
     Invokes the CreateLaunchTemplate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateLaunchTemplateRequest object being passed to this operation.
         - completion: The CreateLaunchTemplateResult object or an error will be passed to this 
           callback when the operation is complete. The CreateLaunchTemplateResult
           object will be validated before being returned to caller.
     */
    func createLaunchTemplateAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateLaunchTemplateRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateLaunchTemplateResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateLaunchTemplate operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateLaunchTemplateRequest object being passed to this operation.
     - Returns: The CreateLaunchTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createLaunchTemplateSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateLaunchTemplateRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateLaunchTemplateResult

    /**
     Invokes the CreateLaunchTemplateVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateLaunchTemplateVersionRequest object being passed to this operation.
         - completion: The CreateLaunchTemplateVersionResult object or an error will be passed to this 
           callback when the operation is complete. The CreateLaunchTemplateVersionResult
           object will be validated before being returned to caller.
     */
    func createLaunchTemplateVersionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateLaunchTemplateVersionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateLaunchTemplateVersionResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateLaunchTemplateVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateLaunchTemplateVersionRequest object being passed to this operation.
     - Returns: The CreateLaunchTemplateVersionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createLaunchTemplateVersionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateLaunchTemplateVersionRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateLaunchTemplateVersionResult

    /**
     Invokes the CreateLocalGatewayRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateLocalGatewayRouteRequest object being passed to this operation.
         - completion: The CreateLocalGatewayRouteResult object or an error will be passed to this 
           callback when the operation is complete. The CreateLocalGatewayRouteResult
           object will be validated before being returned to caller.
     */
    func createLocalGatewayRouteAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateLocalGatewayRouteRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateLocalGatewayRouteResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateLocalGatewayRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateLocalGatewayRouteRequest object being passed to this operation.
     - Returns: The CreateLocalGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createLocalGatewayRouteSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateLocalGatewayRouteRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateLocalGatewayRouteResult

    /**
     Invokes the CreateLocalGatewayRouteTableVpcAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateLocalGatewayRouteTableVpcAssociationRequest object being passed to this operation.
         - completion: The CreateLocalGatewayRouteTableVpcAssociationResult object or an error will be passed to this 
           callback when the operation is complete. The CreateLocalGatewayRouteTableVpcAssociationResult
           object will be validated before being returned to caller.
     */
    func createLocalGatewayRouteTableVpcAssociationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateLocalGatewayRouteTableVpcAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateLocalGatewayRouteTableVpcAssociationRequest object being passed to this operation.
     - Returns: The CreateLocalGatewayRouteTableVpcAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createLocalGatewayRouteTableVpcAssociationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationResult

    /**
     Invokes the CreateNatGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateNatGatewayRequest object being passed to this operation.
         - completion: The CreateNatGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The CreateNatGatewayResult
           object will be validated before being returned to caller.
     */
    func createNatGatewayAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateNatGatewayRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateNatGatewayResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateNatGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateNatGatewayRequest object being passed to this operation.
     - Returns: The CreateNatGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createNatGatewaySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateNatGatewayRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateNatGatewayResult

    /**
     Invokes the CreateNetworkAcl operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateNetworkAclRequest object being passed to this operation.
         - completion: The CreateNetworkAclResult object or an error will be passed to this 
           callback when the operation is complete. The CreateNetworkAclResult
           object will be validated before being returned to caller.
     */
    func createNetworkAclAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateNetworkAclRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateNetworkAclResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateNetworkAcl operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateNetworkAclRequest object being passed to this operation.
     - Returns: The CreateNetworkAclResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createNetworkAclSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateNetworkAclRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateNetworkAclResult

    /**
     Invokes the CreateNetworkAclEntry operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateNetworkAclEntryRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func createNetworkAclEntryAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateNetworkAclEntryRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the CreateNetworkAclEntry operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateNetworkAclEntryRequest object being passed to this operation.
     */
    func createNetworkAclEntrySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateNetworkAclEntryRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the CreateNetworkInterface operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateNetworkInterfaceRequest object being passed to this operation.
         - completion: The CreateNetworkInterfaceResult object or an error will be passed to this 
           callback when the operation is complete. The CreateNetworkInterfaceResult
           object will be validated before being returned to caller.
     */
    func createNetworkInterfaceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateNetworkInterfaceRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateNetworkInterfaceResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateNetworkInterface operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateNetworkInterfaceRequest object being passed to this operation.
     - Returns: The CreateNetworkInterfaceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createNetworkInterfaceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateNetworkInterfaceRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateNetworkInterfaceResult

    /**
     Invokes the CreateNetworkInterfacePermission operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateNetworkInterfacePermissionRequest object being passed to this operation.
         - completion: The CreateNetworkInterfacePermissionResult object or an error will be passed to this 
           callback when the operation is complete. The CreateNetworkInterfacePermissionResult
           object will be validated before being returned to caller.
     */
    func createNetworkInterfacePermissionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateNetworkInterfacePermissionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateNetworkInterfacePermissionResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateNetworkInterfacePermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateNetworkInterfacePermissionRequest object being passed to this operation.
     - Returns: The CreateNetworkInterfacePermissionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createNetworkInterfacePermissionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateNetworkInterfacePermissionRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateNetworkInterfacePermissionResult

    /**
     Invokes the CreatePlacementGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreatePlacementGroupRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func createPlacementGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreatePlacementGroupRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the CreatePlacementGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreatePlacementGroupRequest object being passed to this operation.
     */
    func createPlacementGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreatePlacementGroupRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the CreateReservedInstancesListing operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateReservedInstancesListingRequest object being passed to this operation.
         - completion: The CreateReservedInstancesListingResult object or an error will be passed to this 
           callback when the operation is complete. The CreateReservedInstancesListingResult
           object will be validated before being returned to caller.
     */
    func createReservedInstancesListingAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateReservedInstancesListingRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateReservedInstancesListingResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateReservedInstancesListing operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateReservedInstancesListingRequest object being passed to this operation.
     - Returns: The CreateReservedInstancesListingResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createReservedInstancesListingSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateReservedInstancesListingRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateReservedInstancesListingResult

    /**
     Invokes the CreateRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateRouteRequest object being passed to this operation.
         - completion: The CreateRouteResult object or an error will be passed to this 
           callback when the operation is complete. The CreateRouteResult
           object will be validated before being returned to caller.
     */
    func createRouteAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateRouteRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateRouteResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateRouteRequest object being passed to this operation.
     - Returns: The CreateRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createRouteSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateRouteRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateRouteResult

    /**
     Invokes the CreateRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateRouteTableRequest object being passed to this operation.
         - completion: The CreateRouteTableResult object or an error will be passed to this 
           callback when the operation is complete. The CreateRouteTableResult
           object will be validated before being returned to caller.
     */
    func createRouteTableAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateRouteTableRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateRouteTableResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateRouteTableRequest object being passed to this operation.
     - Returns: The CreateRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createRouteTableSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateRouteTableRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateRouteTableResult

    /**
     Invokes the CreateSecurityGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateSecurityGroupRequest object being passed to this operation.
         - completion: The CreateSecurityGroupResult object or an error will be passed to this 
           callback when the operation is complete. The CreateSecurityGroupResult
           object will be validated before being returned to caller.
     */
    func createSecurityGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateSecurityGroupRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateSecurityGroupResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateSecurityGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateSecurityGroupRequest object being passed to this operation.
     - Returns: The CreateSecurityGroupResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createSecurityGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateSecurityGroupRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateSecurityGroupResult

    /**
     Invokes the CreateSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateSnapshotRequest object being passed to this operation.
         - completion: The Snapshot object or an error will be passed to this 
           callback when the operation is complete. The Snapshot
           object will be validated before being returned to caller.
     */
    func createSnapshotAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateSnapshotRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.Snapshot, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateSnapshotRequest object being passed to this operation.
     - Returns: The Snapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createSnapshotSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateSnapshotRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.Snapshot

    /**
     Invokes the CreateSnapshots operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateSnapshotsRequest object being passed to this operation.
         - completion: The CreateSnapshotsResult object or an error will be passed to this 
           callback when the operation is complete. The CreateSnapshotsResult
           object will be validated before being returned to caller.
     */
    func createSnapshotsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateSnapshotsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateSnapshotsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateSnapshots operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateSnapshotsRequest object being passed to this operation.
     - Returns: The CreateSnapshotsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createSnapshotsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateSnapshotsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateSnapshotsResult

    /**
     Invokes the CreateSpotDatafeedSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateSpotDatafeedSubscriptionRequest object being passed to this operation.
         - completion: The CreateSpotDatafeedSubscriptionResult object or an error will be passed to this 
           callback when the operation is complete. The CreateSpotDatafeedSubscriptionResult
           object will be validated before being returned to caller.
     */
    func createSpotDatafeedSubscriptionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateSpotDatafeedSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateSpotDatafeedSubscriptionRequest object being passed to this operation.
     - Returns: The CreateSpotDatafeedSubscriptionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createSpotDatafeedSubscriptionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionResult

    /**
     Invokes the CreateSubnet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateSubnetRequest object being passed to this operation.
         - completion: The CreateSubnetResult object or an error will be passed to this 
           callback when the operation is complete. The CreateSubnetResult
           object will be validated before being returned to caller.
     */
    func createSubnetAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateSubnetRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateSubnetResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateSubnet operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateSubnetRequest object being passed to this operation.
     - Returns: The CreateSubnetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createSubnetSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateSubnetRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateSubnetResult

    /**
     Invokes the CreateTags operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTagsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func createTagsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateTagsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the CreateTags operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTagsRequest object being passed to this operation.
     */
    func createTagsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateTagsRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the CreateTrafficMirrorFilter operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTrafficMirrorFilterRequest object being passed to this operation.
         - completion: The CreateTrafficMirrorFilterResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTrafficMirrorFilterResult
           object will be validated before being returned to caller.
     */
    func createTrafficMirrorFilterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTrafficMirrorFilterResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateTrafficMirrorFilter operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTrafficMirrorFilterRequest object being passed to this operation.
     - Returns: The CreateTrafficMirrorFilterResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTrafficMirrorFilterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateTrafficMirrorFilterResult

    /**
     Invokes the CreateTrafficMirrorFilterRule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTrafficMirrorFilterRuleRequest object being passed to this operation.
         - completion: The CreateTrafficMirrorFilterRuleResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTrafficMirrorFilterRuleResult
           object will be validated before being returned to caller.
     */
    func createTrafficMirrorFilterRuleAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateTrafficMirrorFilterRule operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTrafficMirrorFilterRuleRequest object being passed to this operation.
     - Returns: The CreateTrafficMirrorFilterRuleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTrafficMirrorFilterRuleSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleResult

    /**
     Invokes the CreateTrafficMirrorSession operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTrafficMirrorSessionRequest object being passed to this operation.
         - completion: The CreateTrafficMirrorSessionResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTrafficMirrorSessionResult
           object will be validated before being returned to caller.
     */
    func createTrafficMirrorSessionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateTrafficMirrorSessionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTrafficMirrorSessionResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateTrafficMirrorSession operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTrafficMirrorSessionRequest object being passed to this operation.
     - Returns: The CreateTrafficMirrorSessionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTrafficMirrorSessionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateTrafficMirrorSessionRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateTrafficMirrorSessionResult

    /**
     Invokes the CreateTrafficMirrorTarget operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTrafficMirrorTargetRequest object being passed to this operation.
         - completion: The CreateTrafficMirrorTargetResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTrafficMirrorTargetResult
           object will be validated before being returned to caller.
     */
    func createTrafficMirrorTargetAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateTrafficMirrorTargetRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTrafficMirrorTargetResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateTrafficMirrorTarget operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTrafficMirrorTargetRequest object being passed to this operation.
     - Returns: The CreateTrafficMirrorTargetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTrafficMirrorTargetSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateTrafficMirrorTargetRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateTrafficMirrorTargetResult

    /**
     Invokes the CreateTransitGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTransitGatewayRequest object being passed to this operation.
         - completion: The CreateTransitGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTransitGatewayResult
           object will be validated before being returned to caller.
     */
    func createTransitGatewayAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateTransitGatewayRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateTransitGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewaySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateTransitGatewayRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateTransitGatewayResult

    /**
     Invokes the CreateTransitGatewayMulticastDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTransitGatewayMulticastDomainRequest object being passed to this operation.
         - completion: The CreateTransitGatewayMulticastDomainResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTransitGatewayMulticastDomainResult
           object will be validated before being returned to caller.
     */
    func createTransitGatewayMulticastDomainAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateTransitGatewayMulticastDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayMulticastDomainRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayMulticastDomainResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayMulticastDomainSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainResult

    /**
     Invokes the CreateTransitGatewayPeeringAttachment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTransitGatewayPeeringAttachmentRequest object being passed to this operation.
         - completion: The CreateTransitGatewayPeeringAttachmentResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTransitGatewayPeeringAttachmentResult
           object will be validated before being returned to caller.
     */
    func createTransitGatewayPeeringAttachmentAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateTransitGatewayPeeringAttachment operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayPeeringAttachmentRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayPeeringAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayPeeringAttachmentSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentResult

    /**
     Invokes the CreateTransitGatewayRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTransitGatewayRouteRequest object being passed to this operation.
         - completion: The CreateTransitGatewayRouteResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTransitGatewayRouteResult
           object will be validated before being returned to caller.
     */
    func createTransitGatewayRouteAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateTransitGatewayRouteRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayRouteResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateTransitGatewayRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayRouteRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayRouteSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateTransitGatewayRouteRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateTransitGatewayRouteResult

    /**
     Invokes the CreateTransitGatewayRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTransitGatewayRouteTableRequest object being passed to this operation.
         - completion: The CreateTransitGatewayRouteTableResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTransitGatewayRouteTableResult
           object will be validated before being returned to caller.
     */
    func createTransitGatewayRouteTableAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateTransitGatewayRouteTableRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayRouteTableResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateTransitGatewayRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayRouteTableSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateTransitGatewayRouteTableRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateTransitGatewayRouteTableResult

    /**
     Invokes the CreateTransitGatewayVpcAttachment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTransitGatewayVpcAttachmentRequest object being passed to this operation.
         - completion: The CreateTransitGatewayVpcAttachmentResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTransitGatewayVpcAttachmentResult
           object will be validated before being returned to caller.
     */
    func createTransitGatewayVpcAttachmentAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateTransitGatewayVpcAttachment operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayVpcAttachmentSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentResult

    /**
     Invokes the CreateVolume operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVolumeRequest object being passed to this operation.
         - completion: The Volume object or an error will be passed to this 
           callback when the operation is complete. The Volume
           object will be validated before being returned to caller.
     */
    func createVolumeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateVolumeRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.Volume, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateVolume operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVolumeRequest object being passed to this operation.
     - Returns: The Volume object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVolumeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateVolumeRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.Volume

    /**
     Invokes the CreateVpc operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpcRequest object being passed to this operation.
         - completion: The CreateVpcResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpcResult
           object will be validated before being returned to caller.
     */
    func createVpcAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateVpcRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateVpcResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateVpc operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpcRequest object being passed to this operation.
     - Returns: The CreateVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpcSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateVpcRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateVpcResult

    /**
     Invokes the CreateVpcEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpcEndpointRequest object being passed to this operation.
         - completion: The CreateVpcEndpointResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpcEndpointResult
           object will be validated before being returned to caller.
     */
    func createVpcEndpointAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateVpcEndpointRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateVpcEndpointResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateVpcEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpcEndpointRequest object being passed to this operation.
     - Returns: The CreateVpcEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpcEndpointSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateVpcEndpointRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateVpcEndpointResult

    /**
     Invokes the CreateVpcEndpointConnectionNotification operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpcEndpointConnectionNotificationRequest object being passed to this operation.
         - completion: The CreateVpcEndpointConnectionNotificationResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpcEndpointConnectionNotificationResult
           object will be validated before being returned to caller.
     */
    func createVpcEndpointConnectionNotificationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateVpcEndpointConnectionNotification operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpcEndpointConnectionNotificationRequest object being passed to this operation.
     - Returns: The CreateVpcEndpointConnectionNotificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpcEndpointConnectionNotificationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationResult

    /**
     Invokes the CreateVpcEndpointServiceConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpcEndpointServiceConfigurationRequest object being passed to this operation.
         - completion: The CreateVpcEndpointServiceConfigurationResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpcEndpointServiceConfigurationResult
           object will be validated before being returned to caller.
     */
    func createVpcEndpointServiceConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateVpcEndpointServiceConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpcEndpointServiceConfigurationRequest object being passed to this operation.
     - Returns: The CreateVpcEndpointServiceConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpcEndpointServiceConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationResult

    /**
     Invokes the CreateVpcPeeringConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpcPeeringConnectionRequest object being passed to this operation.
         - completion: The CreateVpcPeeringConnectionResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpcPeeringConnectionResult
           object will be validated before being returned to caller.
     */
    func createVpcPeeringConnectionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateVpcPeeringConnectionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateVpcPeeringConnectionResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateVpcPeeringConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: The CreateVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpcPeeringConnectionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateVpcPeeringConnectionRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateVpcPeeringConnectionResult

    /**
     Invokes the CreateVpnConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpnConnectionRequest object being passed to this operation.
         - completion: The CreateVpnConnectionResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpnConnectionResult
           object will be validated before being returned to caller.
     */
    func createVpnConnectionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateVpnConnectionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateVpnConnectionResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateVpnConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpnConnectionRequest object being passed to this operation.
     - Returns: The CreateVpnConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpnConnectionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateVpnConnectionRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateVpnConnectionResult

    /**
     Invokes the CreateVpnConnectionRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpnConnectionRouteRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func createVpnConnectionRouteAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateVpnConnectionRouteRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the CreateVpnConnectionRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpnConnectionRouteRequest object being passed to this operation.
     */
    func createVpnConnectionRouteSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateVpnConnectionRouteRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the CreateVpnGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpnGatewayRequest object being passed to this operation.
         - completion: The CreateVpnGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpnGatewayResult
           object will be validated before being returned to caller.
     */
    func createVpnGatewayAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateVpnGatewayRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.CreateVpnGatewayResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateVpnGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpnGatewayRequest object being passed to this operation.
     - Returns: The CreateVpnGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpnGatewaySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.CreateVpnGatewayRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.CreateVpnGatewayResult

    /**
     Invokes the DeleteClientVpnEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteClientVpnEndpointRequest object being passed to this operation.
         - completion: The DeleteClientVpnEndpointResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteClientVpnEndpointResult
           object will be validated before being returned to caller.
     */
    func deleteClientVpnEndpointAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteClientVpnEndpointRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteClientVpnEndpointResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteClientVpnEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteClientVpnEndpointRequest object being passed to this operation.
     - Returns: The DeleteClientVpnEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteClientVpnEndpointSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteClientVpnEndpointRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteClientVpnEndpointResult

    /**
     Invokes the DeleteClientVpnRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteClientVpnRouteRequest object being passed to this operation.
         - completion: The DeleteClientVpnRouteResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteClientVpnRouteResult
           object will be validated before being returned to caller.
     */
    func deleteClientVpnRouteAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteClientVpnRouteRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteClientVpnRouteResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteClientVpnRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteClientVpnRouteRequest object being passed to this operation.
     - Returns: The DeleteClientVpnRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteClientVpnRouteSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteClientVpnRouteRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteClientVpnRouteResult

    /**
     Invokes the DeleteCustomerGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteCustomerGatewayRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteCustomerGatewayAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteCustomerGatewayRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteCustomerGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteCustomerGatewayRequest object being passed to this operation.
     */
    func deleteCustomerGatewaySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteCustomerGatewayRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteDhcpOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDhcpOptionsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteDhcpOptionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteDhcpOptionsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteDhcpOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDhcpOptionsRequest object being passed to this operation.
     */
    func deleteDhcpOptionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteDhcpOptionsRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteEgressOnlyInternetGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteEgressOnlyInternetGatewayRequest object being passed to this operation.
         - completion: The DeleteEgressOnlyInternetGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteEgressOnlyInternetGatewayResult
           object will be validated before being returned to caller.
     */
    func deleteEgressOnlyInternetGatewayAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteEgressOnlyInternetGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteEgressOnlyInternetGatewayRequest object being passed to this operation.
     - Returns: The DeleteEgressOnlyInternetGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteEgressOnlyInternetGatewaySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayResult

    /**
     Invokes the DeleteFleets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteFleetsRequest object being passed to this operation.
         - completion: The DeleteFleetsResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteFleetsResult
           object will be validated before being returned to caller.
     */
    func deleteFleetsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteFleetsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteFleetsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteFleets operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteFleetsRequest object being passed to this operation.
     - Returns: The DeleteFleetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteFleetsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteFleetsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteFleetsResult

    /**
     Invokes the DeleteFlowLogs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteFlowLogsRequest object being passed to this operation.
         - completion: The DeleteFlowLogsResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteFlowLogsResult
           object will be validated before being returned to caller.
     */
    func deleteFlowLogsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteFlowLogsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteFlowLogsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteFlowLogs operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteFlowLogsRequest object being passed to this operation.
     - Returns: The DeleteFlowLogsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteFlowLogsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteFlowLogsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteFlowLogsResult

    /**
     Invokes the DeleteFpgaImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteFpgaImageRequest object being passed to this operation.
         - completion: The DeleteFpgaImageResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteFpgaImageResult
           object will be validated before being returned to caller.
     */
    func deleteFpgaImageAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteFpgaImageRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteFpgaImageResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteFpgaImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteFpgaImageRequest object being passed to this operation.
     - Returns: The DeleteFpgaImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteFpgaImageSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteFpgaImageRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteFpgaImageResult

    /**
     Invokes the DeleteInternetGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteInternetGatewayRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteInternetGatewayAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteInternetGatewayRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteInternetGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteInternetGatewayRequest object being passed to this operation.
     */
    func deleteInternetGatewaySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteInternetGatewayRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteKeyPair operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteKeyPairRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteKeyPairAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteKeyPairRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteKeyPair operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteKeyPairRequest object being passed to this operation.
     */
    func deleteKeyPairSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteKeyPairRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteLaunchTemplate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteLaunchTemplateRequest object being passed to this operation.
         - completion: The DeleteLaunchTemplateResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteLaunchTemplateResult
           object will be validated before being returned to caller.
     */
    func deleteLaunchTemplateAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteLaunchTemplateRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteLaunchTemplateResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteLaunchTemplate operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteLaunchTemplateRequest object being passed to this operation.
     - Returns: The DeleteLaunchTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteLaunchTemplateSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteLaunchTemplateRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteLaunchTemplateResult

    /**
     Invokes the DeleteLaunchTemplateVersions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteLaunchTemplateVersionsRequest object being passed to this operation.
         - completion: The DeleteLaunchTemplateVersionsResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteLaunchTemplateVersionsResult
           object will be validated before being returned to caller.
     */
    func deleteLaunchTemplateVersionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteLaunchTemplateVersionsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteLaunchTemplateVersionsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteLaunchTemplateVersions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteLaunchTemplateVersionsRequest object being passed to this operation.
     - Returns: The DeleteLaunchTemplateVersionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteLaunchTemplateVersionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteLaunchTemplateVersionsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteLaunchTemplateVersionsResult

    /**
     Invokes the DeleteLocalGatewayRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteLocalGatewayRouteRequest object being passed to this operation.
         - completion: The DeleteLocalGatewayRouteResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteLocalGatewayRouteResult
           object will be validated before being returned to caller.
     */
    func deleteLocalGatewayRouteAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteLocalGatewayRouteRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteLocalGatewayRouteResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteLocalGatewayRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteLocalGatewayRouteRequest object being passed to this operation.
     - Returns: The DeleteLocalGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteLocalGatewayRouteSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteLocalGatewayRouteRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteLocalGatewayRouteResult

    /**
     Invokes the DeleteLocalGatewayRouteTableVpcAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteLocalGatewayRouteTableVpcAssociationRequest object being passed to this operation.
         - completion: The DeleteLocalGatewayRouteTableVpcAssociationResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteLocalGatewayRouteTableVpcAssociationResult
           object will be validated before being returned to caller.
     */
    func deleteLocalGatewayRouteTableVpcAssociationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteLocalGatewayRouteTableVpcAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteLocalGatewayRouteTableVpcAssociationRequest object being passed to this operation.
     - Returns: The DeleteLocalGatewayRouteTableVpcAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteLocalGatewayRouteTableVpcAssociationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationResult

    /**
     Invokes the DeleteNatGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteNatGatewayRequest object being passed to this operation.
         - completion: The DeleteNatGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteNatGatewayResult
           object will be validated before being returned to caller.
     */
    func deleteNatGatewayAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteNatGatewayRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteNatGatewayResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteNatGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteNatGatewayRequest object being passed to this operation.
     - Returns: The DeleteNatGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteNatGatewaySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteNatGatewayRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteNatGatewayResult

    /**
     Invokes the DeleteNetworkAcl operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteNetworkAclRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteNetworkAclAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteNetworkAclRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteNetworkAcl operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteNetworkAclRequest object being passed to this operation.
     */
    func deleteNetworkAclSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteNetworkAclRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteNetworkAclEntry operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteNetworkAclEntryRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteNetworkAclEntryAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteNetworkAclEntryRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteNetworkAclEntry operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteNetworkAclEntryRequest object being passed to this operation.
     */
    func deleteNetworkAclEntrySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteNetworkAclEntryRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteNetworkInterface operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteNetworkInterfaceRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteNetworkInterfaceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteNetworkInterfaceRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteNetworkInterface operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteNetworkInterfaceRequest object being passed to this operation.
     */
    func deleteNetworkInterfaceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteNetworkInterfaceRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteNetworkInterfacePermission operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteNetworkInterfacePermissionRequest object being passed to this operation.
         - completion: The DeleteNetworkInterfacePermissionResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteNetworkInterfacePermissionResult
           object will be validated before being returned to caller.
     */
    func deleteNetworkInterfacePermissionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteNetworkInterfacePermissionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteNetworkInterfacePermissionResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteNetworkInterfacePermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteNetworkInterfacePermissionRequest object being passed to this operation.
     - Returns: The DeleteNetworkInterfacePermissionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteNetworkInterfacePermissionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteNetworkInterfacePermissionRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteNetworkInterfacePermissionResult

    /**
     Invokes the DeletePlacementGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeletePlacementGroupRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deletePlacementGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeletePlacementGroupRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeletePlacementGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeletePlacementGroupRequest object being passed to this operation.
     */
    func deletePlacementGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeletePlacementGroupRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteQueuedReservedInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteQueuedReservedInstancesRequest object being passed to this operation.
         - completion: The DeleteQueuedReservedInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteQueuedReservedInstancesResult
           object will be validated before being returned to caller.
     */
    func deleteQueuedReservedInstancesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteQueuedReservedInstancesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteQueuedReservedInstancesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteQueuedReservedInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteQueuedReservedInstancesRequest object being passed to this operation.
     - Returns: The DeleteQueuedReservedInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteQueuedReservedInstancesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteQueuedReservedInstancesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteQueuedReservedInstancesResult

    /**
     Invokes the DeleteRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteRouteRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteRouteAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteRouteRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteRouteRequest object being passed to this operation.
     */
    func deleteRouteSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteRouteRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteRouteTableRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteRouteTableAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteRouteTableRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteRouteTableRequest object being passed to this operation.
     */
    func deleteRouteTableSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteRouteTableRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteSecurityGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteSecurityGroupRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteSecurityGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteSecurityGroupRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteSecurityGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteSecurityGroupRequest object being passed to this operation.
     */
    func deleteSecurityGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteSecurityGroupRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteSnapshotRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteSnapshotAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteSnapshotRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteSnapshotRequest object being passed to this operation.
     */
    func deleteSnapshotSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteSnapshotRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteSpotDatafeedSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteSpotDatafeedSubscriptionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteSpotDatafeedSubscriptionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteSpotDatafeedSubscriptionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteSpotDatafeedSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteSpotDatafeedSubscriptionRequest object being passed to this operation.
     */
    func deleteSpotDatafeedSubscriptionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteSpotDatafeedSubscriptionRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteSubnet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteSubnetRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteSubnetAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteSubnetRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteSubnet operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteSubnetRequest object being passed to this operation.
     */
    func deleteSubnetSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteSubnetRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteTags operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTagsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteTagsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteTagsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteTags operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTagsRequest object being passed to this operation.
     */
    func deleteTagsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteTagsRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteTrafficMirrorFilter operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTrafficMirrorFilterRequest object being passed to this operation.
         - completion: The DeleteTrafficMirrorFilterResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTrafficMirrorFilterResult
           object will be validated before being returned to caller.
     */
    func deleteTrafficMirrorFilterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTrafficMirrorFilterResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteTrafficMirrorFilter operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTrafficMirrorFilterRequest object being passed to this operation.
     - Returns: The DeleteTrafficMirrorFilterResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTrafficMirrorFilterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteTrafficMirrorFilterResult

    /**
     Invokes the DeleteTrafficMirrorFilterRule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTrafficMirrorFilterRuleRequest object being passed to this operation.
         - completion: The DeleteTrafficMirrorFilterRuleResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTrafficMirrorFilterRuleResult
           object will be validated before being returned to caller.
     */
    func deleteTrafficMirrorFilterRuleAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteTrafficMirrorFilterRule operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTrafficMirrorFilterRuleRequest object being passed to this operation.
     - Returns: The DeleteTrafficMirrorFilterRuleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTrafficMirrorFilterRuleSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleResult

    /**
     Invokes the DeleteTrafficMirrorSession operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTrafficMirrorSessionRequest object being passed to this operation.
         - completion: The DeleteTrafficMirrorSessionResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTrafficMirrorSessionResult
           object will be validated before being returned to caller.
     */
    func deleteTrafficMirrorSessionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorSessionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTrafficMirrorSessionResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteTrafficMirrorSession operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTrafficMirrorSessionRequest object being passed to this operation.
     - Returns: The DeleteTrafficMirrorSessionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTrafficMirrorSessionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorSessionRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteTrafficMirrorSessionResult

    /**
     Invokes the DeleteTrafficMirrorTarget operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTrafficMirrorTargetRequest object being passed to this operation.
         - completion: The DeleteTrafficMirrorTargetResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTrafficMirrorTargetResult
           object will be validated before being returned to caller.
     */
    func deleteTrafficMirrorTargetAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorTargetRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTrafficMirrorTargetResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteTrafficMirrorTarget operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTrafficMirrorTargetRequest object being passed to this operation.
     - Returns: The DeleteTrafficMirrorTargetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTrafficMirrorTargetSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorTargetRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteTrafficMirrorTargetResult

    /**
     Invokes the DeleteTransitGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTransitGatewayRequest object being passed to this operation.
         - completion: The DeleteTransitGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTransitGatewayResult
           object will be validated before being returned to caller.
     */
    func deleteTransitGatewayAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteTransitGatewayRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteTransitGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewaySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteTransitGatewayRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteTransitGatewayResult

    /**
     Invokes the DeleteTransitGatewayMulticastDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTransitGatewayMulticastDomainRequest object being passed to this operation.
         - completion: The DeleteTransitGatewayMulticastDomainResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTransitGatewayMulticastDomainResult
           object will be validated before being returned to caller.
     */
    func deleteTransitGatewayMulticastDomainAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteTransitGatewayMulticastDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayMulticastDomainRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayMulticastDomainResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayMulticastDomainSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainResult

    /**
     Invokes the DeleteTransitGatewayPeeringAttachment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTransitGatewayPeeringAttachmentRequest object being passed to this operation.
         - completion: The DeleteTransitGatewayPeeringAttachmentResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTransitGatewayPeeringAttachmentResult
           object will be validated before being returned to caller.
     */
    func deleteTransitGatewayPeeringAttachmentAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteTransitGatewayPeeringAttachment operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayPeeringAttachmentRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayPeeringAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayPeeringAttachmentSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentResult

    /**
     Invokes the DeleteTransitGatewayRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTransitGatewayRouteRequest object being passed to this operation.
         - completion: The DeleteTransitGatewayRouteResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTransitGatewayRouteResult
           object will be validated before being returned to caller.
     */
    func deleteTransitGatewayRouteAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteTransitGatewayRouteRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayRouteResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteTransitGatewayRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayRouteRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayRouteSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteTransitGatewayRouteRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteTransitGatewayRouteResult

    /**
     Invokes the DeleteTransitGatewayRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTransitGatewayRouteTableRequest object being passed to this operation.
         - completion: The DeleteTransitGatewayRouteTableResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTransitGatewayRouteTableResult
           object will be validated before being returned to caller.
     */
    func deleteTransitGatewayRouteTableAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteTransitGatewayRouteTableRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayRouteTableResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteTransitGatewayRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayRouteTableSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteTransitGatewayRouteTableRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteTransitGatewayRouteTableResult

    /**
     Invokes the DeleteTransitGatewayVpcAttachment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTransitGatewayVpcAttachmentRequest object being passed to this operation.
         - completion: The DeleteTransitGatewayVpcAttachmentResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTransitGatewayVpcAttachmentResult
           object will be validated before being returned to caller.
     */
    func deleteTransitGatewayVpcAttachmentAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteTransitGatewayVpcAttachment operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayVpcAttachmentSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentResult

    /**
     Invokes the DeleteVolume operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVolumeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteVolumeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteVolumeRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteVolume operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVolumeRequest object being passed to this operation.
     */
    func deleteVolumeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteVolumeRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteVpc operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpcRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteVpcAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteVpcRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteVpc operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpcRequest object being passed to this operation.
     */
    func deleteVpcSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteVpcRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteVpcEndpointConnectionNotifications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpcEndpointConnectionNotificationsRequest object being passed to this operation.
         - completion: The DeleteVpcEndpointConnectionNotificationsResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteVpcEndpointConnectionNotificationsResult
           object will be validated before being returned to caller.
     */
    func deleteVpcEndpointConnectionNotificationsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteVpcEndpointConnectionNotifications operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpcEndpointConnectionNotificationsRequest object being passed to this operation.
     - Returns: The DeleteVpcEndpointConnectionNotificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteVpcEndpointConnectionNotificationsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsResult

    /**
     Invokes the DeleteVpcEndpointServiceConfigurations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpcEndpointServiceConfigurationsRequest object being passed to this operation.
         - completion: The DeleteVpcEndpointServiceConfigurationsResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteVpcEndpointServiceConfigurationsResult
           object will be validated before being returned to caller.
     */
    func deleteVpcEndpointServiceConfigurationsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteVpcEndpointServiceConfigurations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpcEndpointServiceConfigurationsRequest object being passed to this operation.
     - Returns: The DeleteVpcEndpointServiceConfigurationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteVpcEndpointServiceConfigurationsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsResult

    /**
     Invokes the DeleteVpcEndpoints operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpcEndpointsRequest object being passed to this operation.
         - completion: The DeleteVpcEndpointsResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteVpcEndpointsResult
           object will be validated before being returned to caller.
     */
    func deleteVpcEndpointsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteVpcEndpointsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteVpcEndpointsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteVpcEndpoints operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpcEndpointsRequest object being passed to this operation.
     - Returns: The DeleteVpcEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteVpcEndpointsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteVpcEndpointsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteVpcEndpointsResult

    /**
     Invokes the DeleteVpcPeeringConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpcPeeringConnectionRequest object being passed to this operation.
         - completion: The DeleteVpcPeeringConnectionResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteVpcPeeringConnectionResult
           object will be validated before being returned to caller.
     */
    func deleteVpcPeeringConnectionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteVpcPeeringConnectionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteVpcPeeringConnectionResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteVpcPeeringConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: The DeleteVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteVpcPeeringConnectionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteVpcPeeringConnectionRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeleteVpcPeeringConnectionResult

    /**
     Invokes the DeleteVpnConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpnConnectionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteVpnConnectionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteVpnConnectionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteVpnConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpnConnectionRequest object being passed to this operation.
     */
    func deleteVpnConnectionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteVpnConnectionRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteVpnConnectionRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpnConnectionRouteRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteVpnConnectionRouteAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteVpnConnectionRouteRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteVpnConnectionRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpnConnectionRouteRequest object being passed to this operation.
     */
    func deleteVpnConnectionRouteSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteVpnConnectionRouteRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteVpnGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpnGatewayRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteVpnGatewayAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteVpnGatewayRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteVpnGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpnGatewayRequest object being passed to this operation.
     */
    func deleteVpnGatewaySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeleteVpnGatewayRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeprovisionByoipCidr operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeprovisionByoipCidrRequest object being passed to this operation.
         - completion: The DeprovisionByoipCidrResult object or an error will be passed to this 
           callback when the operation is complete. The DeprovisionByoipCidrResult
           object will be validated before being returned to caller.
     */
    func deprovisionByoipCidrAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeprovisionByoipCidrRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DeprovisionByoipCidrResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeprovisionByoipCidr operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeprovisionByoipCidrRequest object being passed to this operation.
     - Returns: The DeprovisionByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deprovisionByoipCidrSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeprovisionByoipCidrRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeprovisionByoipCidrResult

    /**
     Invokes the DeregisterImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeregisterImageRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deregisterImageAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeregisterImageRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeregisterImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterImageRequest object being passed to this operation.
     */
    func deregisterImageSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeregisterImageRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeregisterTransitGatewayMulticastGroupMembers operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeregisterTransitGatewayMulticastGroupMembersRequest object being passed to this operation.
         - completion: The DeregisterTransitGatewayMulticastGroupMembersResult object or an error will be passed to this 
           callback when the operation is complete. The DeregisterTransitGatewayMulticastGroupMembersResult
           object will be validated before being returned to caller.
     */
    func deregisterTransitGatewayMulticastGroupMembersAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeregisterTransitGatewayMulticastGroupMembers operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterTransitGatewayMulticastGroupMembersRequest object being passed to this operation.
     - Returns: The DeregisterTransitGatewayMulticastGroupMembersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deregisterTransitGatewayMulticastGroupMembersSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersResult

    /**
     Invokes the DeregisterTransitGatewayMulticastGroupSources operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeregisterTransitGatewayMulticastGroupSourcesRequest object being passed to this operation.
         - completion: The DeregisterTransitGatewayMulticastGroupSourcesResult object or an error will be passed to this 
           callback when the operation is complete. The DeregisterTransitGatewayMulticastGroupSourcesResult
           object will be validated before being returned to caller.
     */
    func deregisterTransitGatewayMulticastGroupSourcesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeregisterTransitGatewayMulticastGroupSources operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterTransitGatewayMulticastGroupSourcesRequest object being passed to this operation.
     - Returns: The DeregisterTransitGatewayMulticastGroupSourcesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deregisterTransitGatewayMulticastGroupSourcesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesResult

    /**
     Invokes the DescribeAccountAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAccountAttributesRequest object being passed to this operation.
         - completion: The DescribeAccountAttributesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeAccountAttributesResult
           object will be validated before being returned to caller.
     */
    func describeAccountAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeAccountAttributesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeAccountAttributesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeAccountAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAccountAttributesRequest object being passed to this operation.
     - Returns: The DescribeAccountAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAccountAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeAccountAttributesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeAccountAttributesResult

    /**
     Invokes the DescribeAddresses operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAddressesRequest object being passed to this operation.
         - completion: The DescribeAddressesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeAddressesResult
           object will be validated before being returned to caller.
     */
    func describeAddressesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeAddressesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeAddressesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeAddresses operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAddressesRequest object being passed to this operation.
     - Returns: The DescribeAddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAddressesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeAddressesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeAddressesResult

    /**
     Invokes the DescribeAggregateIdFormat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAggregateIdFormatRequest object being passed to this operation.
         - completion: The DescribeAggregateIdFormatResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeAggregateIdFormatResult
           object will be validated before being returned to caller.
     */
    func describeAggregateIdFormatAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeAggregateIdFormatRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeAggregateIdFormatResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeAggregateIdFormat operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAggregateIdFormatRequest object being passed to this operation.
     - Returns: The DescribeAggregateIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAggregateIdFormatSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeAggregateIdFormatRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeAggregateIdFormatResult

    /**
     Invokes the DescribeAvailabilityZones operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAvailabilityZonesRequest object being passed to this operation.
         - completion: The DescribeAvailabilityZonesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeAvailabilityZonesResult
           object will be validated before being returned to caller.
     */
    func describeAvailabilityZonesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeAvailabilityZonesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeAvailabilityZonesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeAvailabilityZones operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAvailabilityZonesRequest object being passed to this operation.
     - Returns: The DescribeAvailabilityZonesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAvailabilityZonesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeAvailabilityZonesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeAvailabilityZonesResult

    /**
     Invokes the DescribeBundleTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeBundleTasksRequest object being passed to this operation.
         - completion: The DescribeBundleTasksResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeBundleTasksResult
           object will be validated before being returned to caller.
     */
    func describeBundleTasksAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeBundleTasksRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeBundleTasksResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeBundleTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeBundleTasksRequest object being passed to this operation.
     - Returns: The DescribeBundleTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeBundleTasksSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeBundleTasksRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeBundleTasksResult

    /**
     Invokes the DescribeByoipCidrs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeByoipCidrsRequest object being passed to this operation.
         - completion: The DescribeByoipCidrsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeByoipCidrsResult
           object will be validated before being returned to caller.
     */
    func describeByoipCidrsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeByoipCidrsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeByoipCidrsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeByoipCidrs operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeByoipCidrsRequest object being passed to this operation.
     - Returns: The DescribeByoipCidrsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeByoipCidrsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeByoipCidrsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeByoipCidrsResult

    /**
     Invokes the DescribeCapacityReservations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCapacityReservationsRequest object being passed to this operation.
         - completion: The DescribeCapacityReservationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeCapacityReservationsResult
           object will be validated before being returned to caller.
     */
    func describeCapacityReservationsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeCapacityReservationsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeCapacityReservationsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeCapacityReservations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCapacityReservationsRequest object being passed to this operation.
     - Returns: The DescribeCapacityReservationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeCapacityReservationsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeCapacityReservationsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeCapacityReservationsResult

    /**
     Invokes the DescribeClassicLinkInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeClassicLinkInstancesRequest object being passed to this operation.
         - completion: The DescribeClassicLinkInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeClassicLinkInstancesResult
           object will be validated before being returned to caller.
     */
    func describeClassicLinkInstancesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeClassicLinkInstancesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeClassicLinkInstancesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeClassicLinkInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeClassicLinkInstancesRequest object being passed to this operation.
     - Returns: The DescribeClassicLinkInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClassicLinkInstancesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeClassicLinkInstancesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeClassicLinkInstancesResult

    /**
     Invokes the DescribeClientVpnAuthorizationRules operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeClientVpnAuthorizationRulesRequest object being passed to this operation.
         - completion: The DescribeClientVpnAuthorizationRulesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeClientVpnAuthorizationRulesResult
           object will be validated before being returned to caller.
     */
    func describeClientVpnAuthorizationRulesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeClientVpnAuthorizationRules operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeClientVpnAuthorizationRulesRequest object being passed to this operation.
     - Returns: The DescribeClientVpnAuthorizationRulesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClientVpnAuthorizationRulesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesResult

    /**
     Invokes the DescribeClientVpnConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeClientVpnConnectionsRequest object being passed to this operation.
         - completion: The DescribeClientVpnConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeClientVpnConnectionsResult
           object will be validated before being returned to caller.
     */
    func describeClientVpnConnectionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeClientVpnConnectionsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeClientVpnConnectionsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeClientVpnConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeClientVpnConnectionsRequest object being passed to this operation.
     - Returns: The DescribeClientVpnConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClientVpnConnectionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeClientVpnConnectionsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeClientVpnConnectionsResult

    /**
     Invokes the DescribeClientVpnEndpoints operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeClientVpnEndpointsRequest object being passed to this operation.
         - completion: The DescribeClientVpnEndpointsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeClientVpnEndpointsResult
           object will be validated before being returned to caller.
     */
    func describeClientVpnEndpointsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeClientVpnEndpointsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeClientVpnEndpointsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeClientVpnEndpoints operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeClientVpnEndpointsRequest object being passed to this operation.
     - Returns: The DescribeClientVpnEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClientVpnEndpointsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeClientVpnEndpointsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeClientVpnEndpointsResult

    /**
     Invokes the DescribeClientVpnRoutes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeClientVpnRoutesRequest object being passed to this operation.
         - completion: The DescribeClientVpnRoutesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeClientVpnRoutesResult
           object will be validated before being returned to caller.
     */
    func describeClientVpnRoutesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeClientVpnRoutesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeClientVpnRoutesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeClientVpnRoutes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeClientVpnRoutesRequest object being passed to this operation.
     - Returns: The DescribeClientVpnRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClientVpnRoutesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeClientVpnRoutesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeClientVpnRoutesResult

    /**
     Invokes the DescribeClientVpnTargetNetworks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeClientVpnTargetNetworksRequest object being passed to this operation.
         - completion: The DescribeClientVpnTargetNetworksResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeClientVpnTargetNetworksResult
           object will be validated before being returned to caller.
     */
    func describeClientVpnTargetNetworksAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeClientVpnTargetNetworksRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeClientVpnTargetNetworksResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeClientVpnTargetNetworks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeClientVpnTargetNetworksRequest object being passed to this operation.
     - Returns: The DescribeClientVpnTargetNetworksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClientVpnTargetNetworksSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeClientVpnTargetNetworksRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeClientVpnTargetNetworksResult

    /**
     Invokes the DescribeCoipPools operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCoipPoolsRequest object being passed to this operation.
         - completion: The DescribeCoipPoolsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeCoipPoolsResult
           object will be validated before being returned to caller.
     */
    func describeCoipPoolsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeCoipPoolsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeCoipPoolsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeCoipPools operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCoipPoolsRequest object being passed to this operation.
     - Returns: The DescribeCoipPoolsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeCoipPoolsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeCoipPoolsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeCoipPoolsResult

    /**
     Invokes the DescribeConversionTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeConversionTasksRequest object being passed to this operation.
         - completion: The DescribeConversionTasksResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeConversionTasksResult
           object will be validated before being returned to caller.
     */
    func describeConversionTasksAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeConversionTasksRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeConversionTasksResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeConversionTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeConversionTasksRequest object being passed to this operation.
     - Returns: The DescribeConversionTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeConversionTasksSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeConversionTasksRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeConversionTasksResult

    /**
     Invokes the DescribeCustomerGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCustomerGatewaysRequest object being passed to this operation.
         - completion: The DescribeCustomerGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeCustomerGatewaysResult
           object will be validated before being returned to caller.
     */
    func describeCustomerGatewaysAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeCustomerGatewaysRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeCustomerGatewaysResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeCustomerGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCustomerGatewaysRequest object being passed to this operation.
     - Returns: The DescribeCustomerGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeCustomerGatewaysSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeCustomerGatewaysRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeCustomerGatewaysResult

    /**
     Invokes the DescribeDhcpOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDhcpOptionsRequest object being passed to this operation.
         - completion: The DescribeDhcpOptionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeDhcpOptionsResult
           object will be validated before being returned to caller.
     */
    func describeDhcpOptionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeDhcpOptionsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeDhcpOptionsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDhcpOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDhcpOptionsRequest object being passed to this operation.
     - Returns: The DescribeDhcpOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeDhcpOptionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeDhcpOptionsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeDhcpOptionsResult

    /**
     Invokes the DescribeEgressOnlyInternetGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEgressOnlyInternetGatewaysRequest object being passed to this operation.
         - completion: The DescribeEgressOnlyInternetGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeEgressOnlyInternetGatewaysResult
           object will be validated before being returned to caller.
     */
    func describeEgressOnlyInternetGatewaysAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeEgressOnlyInternetGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEgressOnlyInternetGatewaysRequest object being passed to this operation.
     - Returns: The DescribeEgressOnlyInternetGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEgressOnlyInternetGatewaysSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysResult

    /**
     Invokes the DescribeElasticGpus operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeElasticGpusRequest object being passed to this operation.
         - completion: The DescribeElasticGpusResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeElasticGpusResult
           object will be validated before being returned to caller.
     */
    func describeElasticGpusAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeElasticGpusRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeElasticGpusResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeElasticGpus operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeElasticGpusRequest object being passed to this operation.
     - Returns: The DescribeElasticGpusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeElasticGpusSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeElasticGpusRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeElasticGpusResult

    /**
     Invokes the DescribeExportImageTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeExportImageTasksRequest object being passed to this operation.
         - completion: The DescribeExportImageTasksResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeExportImageTasksResult
           object will be validated before being returned to caller.
     */
    func describeExportImageTasksAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeExportImageTasksRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeExportImageTasksResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeExportImageTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeExportImageTasksRequest object being passed to this operation.
     - Returns: The DescribeExportImageTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeExportImageTasksSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeExportImageTasksRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeExportImageTasksResult

    /**
     Invokes the DescribeExportTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeExportTasksRequest object being passed to this operation.
         - completion: The DescribeExportTasksResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeExportTasksResult
           object will be validated before being returned to caller.
     */
    func describeExportTasksAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeExportTasksRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeExportTasksResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeExportTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeExportTasksRequest object being passed to this operation.
     - Returns: The DescribeExportTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeExportTasksSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeExportTasksRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeExportTasksResult

    /**
     Invokes the DescribeFastSnapshotRestores operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFastSnapshotRestoresRequest object being passed to this operation.
         - completion: The DescribeFastSnapshotRestoresResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFastSnapshotRestoresResult
           object will be validated before being returned to caller.
     */
    func describeFastSnapshotRestoresAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeFastSnapshotRestoresRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeFastSnapshotRestoresResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeFastSnapshotRestores operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFastSnapshotRestoresRequest object being passed to this operation.
     - Returns: The DescribeFastSnapshotRestoresResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFastSnapshotRestoresSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeFastSnapshotRestoresRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeFastSnapshotRestoresResult

    /**
     Invokes the DescribeFleetHistory operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFleetHistoryRequest object being passed to this operation.
         - completion: The DescribeFleetHistoryResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFleetHistoryResult
           object will be validated before being returned to caller.
     */
    func describeFleetHistoryAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeFleetHistoryRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeFleetHistoryResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeFleetHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFleetHistoryRequest object being passed to this operation.
     - Returns: The DescribeFleetHistoryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFleetHistorySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeFleetHistoryRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeFleetHistoryResult

    /**
     Invokes the DescribeFleetInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFleetInstancesRequest object being passed to this operation.
         - completion: The DescribeFleetInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFleetInstancesResult
           object will be validated before being returned to caller.
     */
    func describeFleetInstancesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeFleetInstancesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeFleetInstancesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeFleetInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFleetInstancesRequest object being passed to this operation.
     - Returns: The DescribeFleetInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFleetInstancesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeFleetInstancesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeFleetInstancesResult

    /**
     Invokes the DescribeFleets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFleetsRequest object being passed to this operation.
         - completion: The DescribeFleetsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFleetsResult
           object will be validated before being returned to caller.
     */
    func describeFleetsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeFleetsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeFleetsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeFleets operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFleetsRequest object being passed to this operation.
     - Returns: The DescribeFleetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFleetsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeFleetsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeFleetsResult

    /**
     Invokes the DescribeFlowLogs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFlowLogsRequest object being passed to this operation.
         - completion: The DescribeFlowLogsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFlowLogsResult
           object will be validated before being returned to caller.
     */
    func describeFlowLogsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeFlowLogsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeFlowLogsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeFlowLogs operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFlowLogsRequest object being passed to this operation.
     - Returns: The DescribeFlowLogsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFlowLogsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeFlowLogsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeFlowLogsResult

    /**
     Invokes the DescribeFpgaImageAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFpgaImageAttributeRequest object being passed to this operation.
         - completion: The DescribeFpgaImageAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFpgaImageAttributeResult
           object will be validated before being returned to caller.
     */
    func describeFpgaImageAttributeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeFpgaImageAttributeRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeFpgaImageAttributeResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeFpgaImageAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFpgaImageAttributeRequest object being passed to this operation.
     - Returns: The DescribeFpgaImageAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFpgaImageAttributeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeFpgaImageAttributeRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeFpgaImageAttributeResult

    /**
     Invokes the DescribeFpgaImages operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFpgaImagesRequest object being passed to this operation.
         - completion: The DescribeFpgaImagesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFpgaImagesResult
           object will be validated before being returned to caller.
     */
    func describeFpgaImagesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeFpgaImagesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeFpgaImagesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeFpgaImages operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFpgaImagesRequest object being passed to this operation.
     - Returns: The DescribeFpgaImagesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFpgaImagesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeFpgaImagesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeFpgaImagesResult

    /**
     Invokes the DescribeHostReservationOfferings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeHostReservationOfferingsRequest object being passed to this operation.
         - completion: The DescribeHostReservationOfferingsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeHostReservationOfferingsResult
           object will be validated before being returned to caller.
     */
    func describeHostReservationOfferingsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeHostReservationOfferingsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeHostReservationOfferingsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeHostReservationOfferings operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeHostReservationOfferingsRequest object being passed to this operation.
     - Returns: The DescribeHostReservationOfferingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeHostReservationOfferingsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeHostReservationOfferingsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeHostReservationOfferingsResult

    /**
     Invokes the DescribeHostReservations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeHostReservationsRequest object being passed to this operation.
         - completion: The DescribeHostReservationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeHostReservationsResult
           object will be validated before being returned to caller.
     */
    func describeHostReservationsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeHostReservationsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeHostReservationsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeHostReservations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeHostReservationsRequest object being passed to this operation.
     - Returns: The DescribeHostReservationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeHostReservationsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeHostReservationsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeHostReservationsResult

    /**
     Invokes the DescribeHosts operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeHostsRequest object being passed to this operation.
         - completion: The DescribeHostsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeHostsResult
           object will be validated before being returned to caller.
     */
    func describeHostsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeHostsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeHostsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeHosts operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeHostsRequest object being passed to this operation.
     - Returns: The DescribeHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeHostsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeHostsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeHostsResult

    /**
     Invokes the DescribeIamInstanceProfileAssociations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeIamInstanceProfileAssociationsRequest object being passed to this operation.
         - completion: The DescribeIamInstanceProfileAssociationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeIamInstanceProfileAssociationsResult
           object will be validated before being returned to caller.
     */
    func describeIamInstanceProfileAssociationsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeIamInstanceProfileAssociations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeIamInstanceProfileAssociationsRequest object being passed to this operation.
     - Returns: The DescribeIamInstanceProfileAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIamInstanceProfileAssociationsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsResult

    /**
     Invokes the DescribeIdFormat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeIdFormatRequest object being passed to this operation.
         - completion: The DescribeIdFormatResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeIdFormatResult
           object will be validated before being returned to caller.
     */
    func describeIdFormatAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeIdFormatRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeIdFormatResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeIdFormat operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeIdFormatRequest object being passed to this operation.
     - Returns: The DescribeIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIdFormatSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeIdFormatRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeIdFormatResult

    /**
     Invokes the DescribeIdentityIdFormat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeIdentityIdFormatRequest object being passed to this operation.
         - completion: The DescribeIdentityIdFormatResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeIdentityIdFormatResult
           object will be validated before being returned to caller.
     */
    func describeIdentityIdFormatAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeIdentityIdFormatRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeIdentityIdFormatResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeIdentityIdFormat operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeIdentityIdFormatRequest object being passed to this operation.
     - Returns: The DescribeIdentityIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIdentityIdFormatSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeIdentityIdFormatRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeIdentityIdFormatResult

    /**
     Invokes the DescribeImageAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeImageAttributeRequest object being passed to this operation.
         - completion: The ImageAttribute object or an error will be passed to this 
           callback when the operation is complete. The ImageAttribute
           object will be validated before being returned to caller.
     */
    func describeImageAttributeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeImageAttributeRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ImageAttribute, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeImageAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeImageAttributeRequest object being passed to this operation.
     - Returns: The ImageAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeImageAttributeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeImageAttributeRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ImageAttribute

    /**
     Invokes the DescribeImages operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeImagesRequest object being passed to this operation.
         - completion: The DescribeImagesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeImagesResult
           object will be validated before being returned to caller.
     */
    func describeImagesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeImagesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeImagesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeImages operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeImagesRequest object being passed to this operation.
     - Returns: The DescribeImagesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeImagesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeImagesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeImagesResult

    /**
     Invokes the DescribeImportImageTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeImportImageTasksRequest object being passed to this operation.
         - completion: The DescribeImportImageTasksResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeImportImageTasksResult
           object will be validated before being returned to caller.
     */
    func describeImportImageTasksAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeImportImageTasksRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeImportImageTasksResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeImportImageTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeImportImageTasksRequest object being passed to this operation.
     - Returns: The DescribeImportImageTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeImportImageTasksSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeImportImageTasksRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeImportImageTasksResult

    /**
     Invokes the DescribeImportSnapshotTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeImportSnapshotTasksRequest object being passed to this operation.
         - completion: The DescribeImportSnapshotTasksResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeImportSnapshotTasksResult
           object will be validated before being returned to caller.
     */
    func describeImportSnapshotTasksAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeImportSnapshotTasksRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeImportSnapshotTasksResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeImportSnapshotTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeImportSnapshotTasksRequest object being passed to this operation.
     - Returns: The DescribeImportSnapshotTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeImportSnapshotTasksSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeImportSnapshotTasksRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeImportSnapshotTasksResult

    /**
     Invokes the DescribeInstanceAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInstanceAttributeRequest object being passed to this operation.
         - completion: The InstanceAttribute object or an error will be passed to this 
           callback when the operation is complete. The InstanceAttribute
           object will be validated before being returned to caller.
     */
    func describeInstanceAttributeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeInstanceAttributeRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.InstanceAttribute, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeInstanceAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInstanceAttributeRequest object being passed to this operation.
     - Returns: The InstanceAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceAttributeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeInstanceAttributeRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.InstanceAttribute

    /**
     Invokes the DescribeInstanceCreditSpecifications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInstanceCreditSpecificationsRequest object being passed to this operation.
         - completion: The DescribeInstanceCreditSpecificationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeInstanceCreditSpecificationsResult
           object will be validated before being returned to caller.
     */
    func describeInstanceCreditSpecificationsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeInstanceCreditSpecifications operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInstanceCreditSpecificationsRequest object being passed to this operation.
     - Returns: The DescribeInstanceCreditSpecificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceCreditSpecificationsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsResult

    /**
     Invokes the DescribeInstanceStatus operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInstanceStatusRequest object being passed to this operation.
         - completion: The DescribeInstanceStatusResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeInstanceStatusResult
           object will be validated before being returned to caller.
     */
    func describeInstanceStatusAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeInstanceStatusRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeInstanceStatusResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeInstanceStatus operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInstanceStatusRequest object being passed to this operation.
     - Returns: The DescribeInstanceStatusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceStatusSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeInstanceStatusRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeInstanceStatusResult

    /**
     Invokes the DescribeInstanceTypeOfferings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInstanceTypeOfferingsRequest object being passed to this operation.
         - completion: The DescribeInstanceTypeOfferingsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeInstanceTypeOfferingsResult
           object will be validated before being returned to caller.
     */
    func describeInstanceTypeOfferingsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeInstanceTypeOfferingsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeInstanceTypeOfferingsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeInstanceTypeOfferings operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInstanceTypeOfferingsRequest object being passed to this operation.
     - Returns: The DescribeInstanceTypeOfferingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceTypeOfferingsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeInstanceTypeOfferingsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeInstanceTypeOfferingsResult

    /**
     Invokes the DescribeInstanceTypes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInstanceTypesRequest object being passed to this operation.
         - completion: The DescribeInstanceTypesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeInstanceTypesResult
           object will be validated before being returned to caller.
     */
    func describeInstanceTypesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeInstanceTypesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeInstanceTypesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeInstanceTypes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInstanceTypesRequest object being passed to this operation.
     - Returns: The DescribeInstanceTypesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceTypesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeInstanceTypesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeInstanceTypesResult

    /**
     Invokes the DescribeInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInstancesRequest object being passed to this operation.
         - completion: The DescribeInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeInstancesResult
           object will be validated before being returned to caller.
     */
    func describeInstancesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeInstancesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeInstancesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInstancesRequest object being passed to this operation.
     - Returns: The DescribeInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstancesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeInstancesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeInstancesResult

    /**
     Invokes the DescribeInternetGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInternetGatewaysRequest object being passed to this operation.
         - completion: The DescribeInternetGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeInternetGatewaysResult
           object will be validated before being returned to caller.
     */
    func describeInternetGatewaysAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeInternetGatewaysRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeInternetGatewaysResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeInternetGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInternetGatewaysRequest object being passed to this operation.
     - Returns: The DescribeInternetGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInternetGatewaysSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeInternetGatewaysRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeInternetGatewaysResult

    /**
     Invokes the DescribeIpv6Pools operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeIpv6PoolsRequest object being passed to this operation.
         - completion: The DescribeIpv6PoolsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeIpv6PoolsResult
           object will be validated before being returned to caller.
     */
    func describeIpv6PoolsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeIpv6PoolsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeIpv6PoolsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeIpv6Pools operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeIpv6PoolsRequest object being passed to this operation.
     - Returns: The DescribeIpv6PoolsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIpv6PoolsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeIpv6PoolsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeIpv6PoolsResult

    /**
     Invokes the DescribeKeyPairs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeKeyPairsRequest object being passed to this operation.
         - completion: The DescribeKeyPairsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeKeyPairsResult
           object will be validated before being returned to caller.
     */
    func describeKeyPairsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeKeyPairsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeKeyPairsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeKeyPairs operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeKeyPairsRequest object being passed to this operation.
     - Returns: The DescribeKeyPairsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeKeyPairsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeKeyPairsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeKeyPairsResult

    /**
     Invokes the DescribeLaunchTemplateVersions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeLaunchTemplateVersionsRequest object being passed to this operation.
         - completion: The DescribeLaunchTemplateVersionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeLaunchTemplateVersionsResult
           object will be validated before being returned to caller.
     */
    func describeLaunchTemplateVersionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeLaunchTemplateVersionsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeLaunchTemplateVersionsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeLaunchTemplateVersions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeLaunchTemplateVersionsRequest object being passed to this operation.
     - Returns: The DescribeLaunchTemplateVersionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLaunchTemplateVersionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeLaunchTemplateVersionsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeLaunchTemplateVersionsResult

    /**
     Invokes the DescribeLaunchTemplates operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeLaunchTemplatesRequest object being passed to this operation.
         - completion: The DescribeLaunchTemplatesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeLaunchTemplatesResult
           object will be validated before being returned to caller.
     */
    func describeLaunchTemplatesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeLaunchTemplatesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeLaunchTemplatesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeLaunchTemplates operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeLaunchTemplatesRequest object being passed to this operation.
     - Returns: The DescribeLaunchTemplatesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLaunchTemplatesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeLaunchTemplatesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeLaunchTemplatesResult

    /**
     Invokes the DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest object being passed to this operation.
         - completion: The DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult
           object will be validated before being returned to caller.
     */
    func describeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult

    /**
     Invokes the DescribeLocalGatewayRouteTableVpcAssociations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTableVpcAssociationsRequest object being passed to this operation.
         - completion: The DescribeLocalGatewayRouteTableVpcAssociationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeLocalGatewayRouteTableVpcAssociationsResult
           object will be validated before being returned to caller.
     */
    func describeLocalGatewayRouteTableVpcAssociationsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeLocalGatewayRouteTableVpcAssociations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTableVpcAssociationsRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewayRouteTableVpcAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLocalGatewayRouteTableVpcAssociationsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsResult

    /**
     Invokes the DescribeLocalGatewayRouteTables operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTablesRequest object being passed to this operation.
         - completion: The DescribeLocalGatewayRouteTablesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeLocalGatewayRouteTablesResult
           object will be validated before being returned to caller.
     */
    func describeLocalGatewayRouteTablesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeLocalGatewayRouteTables operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTablesRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewayRouteTablesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLocalGatewayRouteTablesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesResult

    /**
     Invokes the DescribeLocalGatewayVirtualInterfaceGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeLocalGatewayVirtualInterfaceGroupsRequest object being passed to this operation.
         - completion: The DescribeLocalGatewayVirtualInterfaceGroupsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeLocalGatewayVirtualInterfaceGroupsResult
           object will be validated before being returned to caller.
     */
    func describeLocalGatewayVirtualInterfaceGroupsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeLocalGatewayVirtualInterfaceGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeLocalGatewayVirtualInterfaceGroupsRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewayVirtualInterfaceGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLocalGatewayVirtualInterfaceGroupsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsResult

    /**
     Invokes the DescribeLocalGatewayVirtualInterfaces operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeLocalGatewayVirtualInterfacesRequest object being passed to this operation.
         - completion: The DescribeLocalGatewayVirtualInterfacesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeLocalGatewayVirtualInterfacesResult
           object will be validated before being returned to caller.
     */
    func describeLocalGatewayVirtualInterfacesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeLocalGatewayVirtualInterfaces operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeLocalGatewayVirtualInterfacesRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewayVirtualInterfacesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLocalGatewayVirtualInterfacesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesResult

    /**
     Invokes the DescribeLocalGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeLocalGatewaysRequest object being passed to this operation.
         - completion: The DescribeLocalGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeLocalGatewaysResult
           object will be validated before being returned to caller.
     */
    func describeLocalGatewaysAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeLocalGatewaysRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeLocalGatewaysResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeLocalGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeLocalGatewaysRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLocalGatewaysSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeLocalGatewaysRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeLocalGatewaysResult

    /**
     Invokes the DescribeMovingAddresses operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeMovingAddressesRequest object being passed to this operation.
         - completion: The DescribeMovingAddressesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeMovingAddressesResult
           object will be validated before being returned to caller.
     */
    func describeMovingAddressesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeMovingAddressesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeMovingAddressesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeMovingAddresses operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeMovingAddressesRequest object being passed to this operation.
     - Returns: The DescribeMovingAddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeMovingAddressesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeMovingAddressesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeMovingAddressesResult

    /**
     Invokes the DescribeNatGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeNatGatewaysRequest object being passed to this operation.
         - completion: The DescribeNatGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeNatGatewaysResult
           object will be validated before being returned to caller.
     */
    func describeNatGatewaysAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeNatGatewaysRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeNatGatewaysResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeNatGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeNatGatewaysRequest object being passed to this operation.
     - Returns: The DescribeNatGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNatGatewaysSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeNatGatewaysRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeNatGatewaysResult

    /**
     Invokes the DescribeNetworkAcls operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeNetworkAclsRequest object being passed to this operation.
         - completion: The DescribeNetworkAclsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeNetworkAclsResult
           object will be validated before being returned to caller.
     */
    func describeNetworkAclsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeNetworkAclsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeNetworkAclsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeNetworkAcls operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeNetworkAclsRequest object being passed to this operation.
     - Returns: The DescribeNetworkAclsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkAclsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeNetworkAclsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeNetworkAclsResult

    /**
     Invokes the DescribeNetworkInterfaceAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeNetworkInterfaceAttributeRequest object being passed to this operation.
         - completion: The DescribeNetworkInterfaceAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeNetworkInterfaceAttributeResult
           object will be validated before being returned to caller.
     */
    func describeNetworkInterfaceAttributeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeNetworkInterfaceAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeNetworkInterfaceAttributeRequest object being passed to this operation.
     - Returns: The DescribeNetworkInterfaceAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkInterfaceAttributeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeResult

    /**
     Invokes the DescribeNetworkInterfacePermissions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeNetworkInterfacePermissionsRequest object being passed to this operation.
         - completion: The DescribeNetworkInterfacePermissionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeNetworkInterfacePermissionsResult
           object will be validated before being returned to caller.
     */
    func describeNetworkInterfacePermissionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeNetworkInterfacePermissions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeNetworkInterfacePermissionsRequest object being passed to this operation.
     - Returns: The DescribeNetworkInterfacePermissionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkInterfacePermissionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsResult

    /**
     Invokes the DescribeNetworkInterfaces operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeNetworkInterfacesRequest object being passed to this operation.
         - completion: The DescribeNetworkInterfacesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeNetworkInterfacesResult
           object will be validated before being returned to caller.
     */
    func describeNetworkInterfacesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeNetworkInterfacesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeNetworkInterfacesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeNetworkInterfaces operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeNetworkInterfacesRequest object being passed to this operation.
     - Returns: The DescribeNetworkInterfacesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkInterfacesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeNetworkInterfacesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeNetworkInterfacesResult

    /**
     Invokes the DescribePlacementGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribePlacementGroupsRequest object being passed to this operation.
         - completion: The DescribePlacementGroupsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribePlacementGroupsResult
           object will be validated before being returned to caller.
     */
    func describePlacementGroupsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribePlacementGroupsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribePlacementGroupsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribePlacementGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribePlacementGroupsRequest object being passed to this operation.
     - Returns: The DescribePlacementGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describePlacementGroupsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribePlacementGroupsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribePlacementGroupsResult

    /**
     Invokes the DescribePrefixLists operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribePrefixListsRequest object being passed to this operation.
         - completion: The DescribePrefixListsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribePrefixListsResult
           object will be validated before being returned to caller.
     */
    func describePrefixListsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribePrefixListsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribePrefixListsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribePrefixLists operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribePrefixListsRequest object being passed to this operation.
     - Returns: The DescribePrefixListsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describePrefixListsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribePrefixListsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribePrefixListsResult

    /**
     Invokes the DescribePrincipalIdFormat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribePrincipalIdFormatRequest object being passed to this operation.
         - completion: The DescribePrincipalIdFormatResult object or an error will be passed to this 
           callback when the operation is complete. The DescribePrincipalIdFormatResult
           object will be validated before being returned to caller.
     */
    func describePrincipalIdFormatAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribePrincipalIdFormatRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribePrincipalIdFormatResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribePrincipalIdFormat operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribePrincipalIdFormatRequest object being passed to this operation.
     - Returns: The DescribePrincipalIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describePrincipalIdFormatSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribePrincipalIdFormatRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribePrincipalIdFormatResult

    /**
     Invokes the DescribePublicIpv4Pools operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribePublicIpv4PoolsRequest object being passed to this operation.
         - completion: The DescribePublicIpv4PoolsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribePublicIpv4PoolsResult
           object will be validated before being returned to caller.
     */
    func describePublicIpv4PoolsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribePublicIpv4PoolsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribePublicIpv4PoolsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribePublicIpv4Pools operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribePublicIpv4PoolsRequest object being passed to this operation.
     - Returns: The DescribePublicIpv4PoolsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describePublicIpv4PoolsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribePublicIpv4PoolsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribePublicIpv4PoolsResult

    /**
     Invokes the DescribeRegions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeRegionsRequest object being passed to this operation.
         - completion: The DescribeRegionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeRegionsResult
           object will be validated before being returned to caller.
     */
    func describeRegionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeRegionsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeRegionsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeRegions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeRegionsRequest object being passed to this operation.
     - Returns: The DescribeRegionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeRegionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeRegionsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeRegionsResult

    /**
     Invokes the DescribeReservedInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeReservedInstancesRequest object being passed to this operation.
         - completion: The DescribeReservedInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeReservedInstancesResult
           object will be validated before being returned to caller.
     */
    func describeReservedInstancesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeReservedInstancesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeReservedInstancesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeReservedInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedInstancesRequest object being passed to this operation.
     - Returns: The DescribeReservedInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeReservedInstancesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeReservedInstancesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeReservedInstancesResult

    /**
     Invokes the DescribeReservedInstancesListings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeReservedInstancesListingsRequest object being passed to this operation.
         - completion: The DescribeReservedInstancesListingsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeReservedInstancesListingsResult
           object will be validated before being returned to caller.
     */
    func describeReservedInstancesListingsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeReservedInstancesListingsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeReservedInstancesListingsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeReservedInstancesListings operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedInstancesListingsRequest object being passed to this operation.
     - Returns: The DescribeReservedInstancesListingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeReservedInstancesListingsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeReservedInstancesListingsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeReservedInstancesListingsResult

    /**
     Invokes the DescribeReservedInstancesModifications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeReservedInstancesModificationsRequest object being passed to this operation.
         - completion: The DescribeReservedInstancesModificationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeReservedInstancesModificationsResult
           object will be validated before being returned to caller.
     */
    func describeReservedInstancesModificationsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeReservedInstancesModificationsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeReservedInstancesModificationsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeReservedInstancesModifications operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedInstancesModificationsRequest object being passed to this operation.
     - Returns: The DescribeReservedInstancesModificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeReservedInstancesModificationsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeReservedInstancesModificationsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeReservedInstancesModificationsResult

    /**
     Invokes the DescribeReservedInstancesOfferings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeReservedInstancesOfferingsRequest object being passed to this operation.
         - completion: The DescribeReservedInstancesOfferingsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeReservedInstancesOfferingsResult
           object will be validated before being returned to caller.
     */
    func describeReservedInstancesOfferingsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeReservedInstancesOfferingsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeReservedInstancesOfferingsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeReservedInstancesOfferings operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedInstancesOfferingsRequest object being passed to this operation.
     - Returns: The DescribeReservedInstancesOfferingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeReservedInstancesOfferingsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeReservedInstancesOfferingsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeReservedInstancesOfferingsResult

    /**
     Invokes the DescribeRouteTables operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeRouteTablesRequest object being passed to this operation.
         - completion: The DescribeRouteTablesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeRouteTablesResult
           object will be validated before being returned to caller.
     */
    func describeRouteTablesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeRouteTablesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeRouteTablesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeRouteTables operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeRouteTablesRequest object being passed to this operation.
     - Returns: The DescribeRouteTablesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeRouteTablesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeRouteTablesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeRouteTablesResult

    /**
     Invokes the DescribeScheduledInstanceAvailability operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeScheduledInstanceAvailabilityRequest object being passed to this operation.
         - completion: The DescribeScheduledInstanceAvailabilityResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeScheduledInstanceAvailabilityResult
           object will be validated before being returned to caller.
     */
    func describeScheduledInstanceAvailabilityAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeScheduledInstanceAvailability operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeScheduledInstanceAvailabilityRequest object being passed to this operation.
     - Returns: The DescribeScheduledInstanceAvailabilityResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeScheduledInstanceAvailabilitySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityResult

    /**
     Invokes the DescribeScheduledInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeScheduledInstancesRequest object being passed to this operation.
         - completion: The DescribeScheduledInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeScheduledInstancesResult
           object will be validated before being returned to caller.
     */
    func describeScheduledInstancesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeScheduledInstancesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeScheduledInstancesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeScheduledInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeScheduledInstancesRequest object being passed to this operation.
     - Returns: The DescribeScheduledInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeScheduledInstancesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeScheduledInstancesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeScheduledInstancesResult

    /**
     Invokes the DescribeSecurityGroupReferences operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSecurityGroupReferencesRequest object being passed to this operation.
         - completion: The DescribeSecurityGroupReferencesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSecurityGroupReferencesResult
           object will be validated before being returned to caller.
     */
    func describeSecurityGroupReferencesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeSecurityGroupReferencesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSecurityGroupReferencesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeSecurityGroupReferences operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSecurityGroupReferencesRequest object being passed to this operation.
     - Returns: The DescribeSecurityGroupReferencesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSecurityGroupReferencesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeSecurityGroupReferencesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeSecurityGroupReferencesResult

    /**
     Invokes the DescribeSecurityGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSecurityGroupsRequest object being passed to this operation.
         - completion: The DescribeSecurityGroupsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSecurityGroupsResult
           object will be validated before being returned to caller.
     */
    func describeSecurityGroupsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeSecurityGroupsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSecurityGroupsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeSecurityGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSecurityGroupsRequest object being passed to this operation.
     - Returns: The DescribeSecurityGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSecurityGroupsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeSecurityGroupsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeSecurityGroupsResult

    /**
     Invokes the DescribeSnapshotAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSnapshotAttributeRequest object being passed to this operation.
         - completion: The DescribeSnapshotAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSnapshotAttributeResult
           object will be validated before being returned to caller.
     */
    func describeSnapshotAttributeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeSnapshotAttributeRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSnapshotAttributeResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeSnapshotAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSnapshotAttributeRequest object being passed to this operation.
     - Returns: The DescribeSnapshotAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSnapshotAttributeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeSnapshotAttributeRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeSnapshotAttributeResult

    /**
     Invokes the DescribeSnapshots operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSnapshotsRequest object being passed to this operation.
         - completion: The DescribeSnapshotsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSnapshotsResult
           object will be validated before being returned to caller.
     */
    func describeSnapshotsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeSnapshotsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSnapshotsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeSnapshots operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSnapshotsRequest object being passed to this operation.
     - Returns: The DescribeSnapshotsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSnapshotsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeSnapshotsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeSnapshotsResult

    /**
     Invokes the DescribeSpotDatafeedSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSpotDatafeedSubscriptionRequest object being passed to this operation.
         - completion: The DescribeSpotDatafeedSubscriptionResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSpotDatafeedSubscriptionResult
           object will be validated before being returned to caller.
     */
    func describeSpotDatafeedSubscriptionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeSpotDatafeedSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSpotDatafeedSubscriptionRequest object being passed to this operation.
     - Returns: The DescribeSpotDatafeedSubscriptionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotDatafeedSubscriptionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionResult

    /**
     Invokes the DescribeSpotFleetInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSpotFleetInstancesRequest object being passed to this operation.
         - completion: The DescribeSpotFleetInstancesResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeSpotFleetInstancesResponse
           object will be validated before being returned to caller.
     */
    func describeSpotFleetInstancesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeSpotFleetInstancesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSpotFleetInstancesResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeSpotFleetInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSpotFleetInstancesRequest object being passed to this operation.
     - Returns: The DescribeSpotFleetInstancesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotFleetInstancesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeSpotFleetInstancesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeSpotFleetInstancesResponse

    /**
     Invokes the DescribeSpotFleetRequestHistory operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSpotFleetRequestHistoryRequest object being passed to this operation.
         - completion: The DescribeSpotFleetRequestHistoryResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeSpotFleetRequestHistoryResponse
           object will be validated before being returned to caller.
     */
    func describeSpotFleetRequestHistoryAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeSpotFleetRequestHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSpotFleetRequestHistoryRequest object being passed to this operation.
     - Returns: The DescribeSpotFleetRequestHistoryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotFleetRequestHistorySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryResponse

    /**
     Invokes the DescribeSpotFleetRequests operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSpotFleetRequestsRequest object being passed to this operation.
         - completion: The DescribeSpotFleetRequestsResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeSpotFleetRequestsResponse
           object will be validated before being returned to caller.
     */
    func describeSpotFleetRequestsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeSpotFleetRequestsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSpotFleetRequestsResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeSpotFleetRequests operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSpotFleetRequestsRequest object being passed to this operation.
     - Returns: The DescribeSpotFleetRequestsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotFleetRequestsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeSpotFleetRequestsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeSpotFleetRequestsResponse

    /**
     Invokes the DescribeSpotInstanceRequests operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSpotInstanceRequestsRequest object being passed to this operation.
         - completion: The DescribeSpotInstanceRequestsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSpotInstanceRequestsResult
           object will be validated before being returned to caller.
     */
    func describeSpotInstanceRequestsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeSpotInstanceRequestsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSpotInstanceRequestsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeSpotInstanceRequests operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSpotInstanceRequestsRequest object being passed to this operation.
     - Returns: The DescribeSpotInstanceRequestsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotInstanceRequestsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeSpotInstanceRequestsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeSpotInstanceRequestsResult

    /**
     Invokes the DescribeSpotPriceHistory operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSpotPriceHistoryRequest object being passed to this operation.
         - completion: The DescribeSpotPriceHistoryResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSpotPriceHistoryResult
           object will be validated before being returned to caller.
     */
    func describeSpotPriceHistoryAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeSpotPriceHistoryRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSpotPriceHistoryResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeSpotPriceHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSpotPriceHistoryRequest object being passed to this operation.
     - Returns: The DescribeSpotPriceHistoryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotPriceHistorySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeSpotPriceHistoryRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeSpotPriceHistoryResult

    /**
     Invokes the DescribeStaleSecurityGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStaleSecurityGroupsRequest object being passed to this operation.
         - completion: The DescribeStaleSecurityGroupsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeStaleSecurityGroupsResult
           object will be validated before being returned to caller.
     */
    func describeStaleSecurityGroupsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeStaleSecurityGroupsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeStaleSecurityGroupsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeStaleSecurityGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStaleSecurityGroupsRequest object being passed to this operation.
     - Returns: The DescribeStaleSecurityGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeStaleSecurityGroupsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeStaleSecurityGroupsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeStaleSecurityGroupsResult

    /**
     Invokes the DescribeSubnets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSubnetsRequest object being passed to this operation.
         - completion: The DescribeSubnetsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSubnetsResult
           object will be validated before being returned to caller.
     */
    func describeSubnetsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeSubnetsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSubnetsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeSubnets operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSubnetsRequest object being passed to this operation.
     - Returns: The DescribeSubnetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSubnetsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeSubnetsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeSubnetsResult

    /**
     Invokes the DescribeTags operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTagsRequest object being passed to this operation.
         - completion: The DescribeTagsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTagsResult
           object will be validated before being returned to caller.
     */
    func describeTagsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeTagsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTagsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeTags operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTagsRequest object being passed to this operation.
     - Returns: The DescribeTagsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTagsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeTagsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeTagsResult

    /**
     Invokes the DescribeTrafficMirrorFilters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTrafficMirrorFiltersRequest object being passed to this operation.
         - completion: The DescribeTrafficMirrorFiltersResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTrafficMirrorFiltersResult
           object will be validated before being returned to caller.
     */
    func describeTrafficMirrorFiltersAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeTrafficMirrorFiltersRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTrafficMirrorFiltersResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeTrafficMirrorFilters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTrafficMirrorFiltersRequest object being passed to this operation.
     - Returns: The DescribeTrafficMirrorFiltersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTrafficMirrorFiltersSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeTrafficMirrorFiltersRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeTrafficMirrorFiltersResult

    /**
     Invokes the DescribeTrafficMirrorSessions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTrafficMirrorSessionsRequest object being passed to this operation.
         - completion: The DescribeTrafficMirrorSessionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTrafficMirrorSessionsResult
           object will be validated before being returned to caller.
     */
    func describeTrafficMirrorSessionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeTrafficMirrorSessionsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTrafficMirrorSessionsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeTrafficMirrorSessions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTrafficMirrorSessionsRequest object being passed to this operation.
     - Returns: The DescribeTrafficMirrorSessionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTrafficMirrorSessionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeTrafficMirrorSessionsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeTrafficMirrorSessionsResult

    /**
     Invokes the DescribeTrafficMirrorTargets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTrafficMirrorTargetsRequest object being passed to this operation.
         - completion: The DescribeTrafficMirrorTargetsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTrafficMirrorTargetsResult
           object will be validated before being returned to caller.
     */
    func describeTrafficMirrorTargetsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeTrafficMirrorTargetsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTrafficMirrorTargetsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeTrafficMirrorTargets operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTrafficMirrorTargetsRequest object being passed to this operation.
     - Returns: The DescribeTrafficMirrorTargetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTrafficMirrorTargetsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeTrafficMirrorTargetsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeTrafficMirrorTargetsResult

    /**
     Invokes the DescribeTransitGatewayAttachments operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTransitGatewayAttachmentsRequest object being passed to this operation.
         - completion: The DescribeTransitGatewayAttachmentsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTransitGatewayAttachmentsResult
           object will be validated before being returned to caller.
     */
    func describeTransitGatewayAttachmentsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeTransitGatewayAttachments operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayAttachmentsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayAttachmentsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayAttachmentsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsResult

    /**
     Invokes the DescribeTransitGatewayMulticastDomains operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTransitGatewayMulticastDomainsRequest object being passed to this operation.
         - completion: The DescribeTransitGatewayMulticastDomainsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTransitGatewayMulticastDomainsResult
           object will be validated before being returned to caller.
     */
    func describeTransitGatewayMulticastDomainsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeTransitGatewayMulticastDomains operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayMulticastDomainsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayMulticastDomainsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayMulticastDomainsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsResult

    /**
     Invokes the DescribeTransitGatewayPeeringAttachments operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTransitGatewayPeeringAttachmentsRequest object being passed to this operation.
         - completion: The DescribeTransitGatewayPeeringAttachmentsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTransitGatewayPeeringAttachmentsResult
           object will be validated before being returned to caller.
     */
    func describeTransitGatewayPeeringAttachmentsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeTransitGatewayPeeringAttachments operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayPeeringAttachmentsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayPeeringAttachmentsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayPeeringAttachmentsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsResult

    /**
     Invokes the DescribeTransitGatewayRouteTables operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTransitGatewayRouteTablesRequest object being passed to this operation.
         - completion: The DescribeTransitGatewayRouteTablesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTransitGatewayRouteTablesResult
           object will be validated before being returned to caller.
     */
    func describeTransitGatewayRouteTablesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeTransitGatewayRouteTables operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayRouteTablesRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayRouteTablesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayRouteTablesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesResult

    /**
     Invokes the DescribeTransitGatewayVpcAttachments operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTransitGatewayVpcAttachmentsRequest object being passed to this operation.
         - completion: The DescribeTransitGatewayVpcAttachmentsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTransitGatewayVpcAttachmentsResult
           object will be validated before being returned to caller.
     */
    func describeTransitGatewayVpcAttachmentsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeTransitGatewayVpcAttachments operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayVpcAttachmentsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayVpcAttachmentsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayVpcAttachmentsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsResult

    /**
     Invokes the DescribeTransitGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTransitGatewaysRequest object being passed to this operation.
         - completion: The DescribeTransitGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTransitGatewaysResult
           object will be validated before being returned to caller.
     */
    func describeTransitGatewaysAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeTransitGatewaysRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewaysResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeTransitGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewaysRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewaysSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeTransitGatewaysRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeTransitGatewaysResult

    /**
     Invokes the DescribeVolumeAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVolumeAttributeRequest object being passed to this operation.
         - completion: The DescribeVolumeAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVolumeAttributeResult
           object will be validated before being returned to caller.
     */
    func describeVolumeAttributeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVolumeAttributeRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVolumeAttributeResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeVolumeAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVolumeAttributeRequest object being passed to this operation.
     - Returns: The DescribeVolumeAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVolumeAttributeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVolumeAttributeRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVolumeAttributeResult

    /**
     Invokes the DescribeVolumeStatus operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVolumeStatusRequest object being passed to this operation.
         - completion: The DescribeVolumeStatusResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVolumeStatusResult
           object will be validated before being returned to caller.
     */
    func describeVolumeStatusAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVolumeStatusRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVolumeStatusResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeVolumeStatus operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVolumeStatusRequest object being passed to this operation.
     - Returns: The DescribeVolumeStatusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVolumeStatusSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVolumeStatusRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVolumeStatusResult

    /**
     Invokes the DescribeVolumes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVolumesRequest object being passed to this operation.
         - completion: The DescribeVolumesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVolumesResult
           object will be validated before being returned to caller.
     */
    func describeVolumesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVolumesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVolumesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeVolumes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVolumesRequest object being passed to this operation.
     - Returns: The DescribeVolumesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVolumesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVolumesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVolumesResult

    /**
     Invokes the DescribeVolumesModifications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVolumesModificationsRequest object being passed to this operation.
         - completion: The DescribeVolumesModificationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVolumesModificationsResult
           object will be validated before being returned to caller.
     */
    func describeVolumesModificationsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVolumesModificationsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVolumesModificationsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeVolumesModifications operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVolumesModificationsRequest object being passed to this operation.
     - Returns: The DescribeVolumesModificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVolumesModificationsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVolumesModificationsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVolumesModificationsResult

    /**
     Invokes the DescribeVpcAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcAttributeRequest object being passed to this operation.
         - completion: The DescribeVpcAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcAttributeResult
           object will be validated before being returned to caller.
     */
    func describeVpcAttributeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVpcAttributeRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcAttributeResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeVpcAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcAttributeRequest object being passed to this operation.
     - Returns: The DescribeVpcAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcAttributeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVpcAttributeRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVpcAttributeResult

    /**
     Invokes the DescribeVpcClassicLink operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcClassicLinkRequest object being passed to this operation.
         - completion: The DescribeVpcClassicLinkResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcClassicLinkResult
           object will be validated before being returned to caller.
     */
    func describeVpcClassicLinkAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVpcClassicLinkRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcClassicLinkResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeVpcClassicLink operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcClassicLinkRequest object being passed to this operation.
     - Returns: The DescribeVpcClassicLinkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcClassicLinkSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVpcClassicLinkRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVpcClassicLinkResult

    /**
     Invokes the DescribeVpcClassicLinkDnsSupport operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcClassicLinkDnsSupportRequest object being passed to this operation.
         - completion: The DescribeVpcClassicLinkDnsSupportResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcClassicLinkDnsSupportResult
           object will be validated before being returned to caller.
     */
    func describeVpcClassicLinkDnsSupportAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeVpcClassicLinkDnsSupport operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcClassicLinkDnsSupportRequest object being passed to this operation.
     - Returns: The DescribeVpcClassicLinkDnsSupportResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcClassicLinkDnsSupportSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportResult

    /**
     Invokes the DescribeVpcEndpointConnectionNotifications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcEndpointConnectionNotificationsRequest object being passed to this operation.
         - completion: The DescribeVpcEndpointConnectionNotificationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcEndpointConnectionNotificationsResult
           object will be validated before being returned to caller.
     */
    func describeVpcEndpointConnectionNotificationsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeVpcEndpointConnectionNotifications operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointConnectionNotificationsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointConnectionNotificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointConnectionNotificationsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsResult

    /**
     Invokes the DescribeVpcEndpointConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcEndpointConnectionsRequest object being passed to this operation.
         - completion: The DescribeVpcEndpointConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcEndpointConnectionsResult
           object will be validated before being returned to caller.
     */
    func describeVpcEndpointConnectionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcEndpointConnectionsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeVpcEndpointConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointConnectionsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointConnectionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVpcEndpointConnectionsResult

    /**
     Invokes the DescribeVpcEndpointServiceConfigurations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcEndpointServiceConfigurationsRequest object being passed to this operation.
         - completion: The DescribeVpcEndpointServiceConfigurationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcEndpointServiceConfigurationsResult
           object will be validated before being returned to caller.
     */
    func describeVpcEndpointServiceConfigurationsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeVpcEndpointServiceConfigurations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointServiceConfigurationsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointServiceConfigurationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointServiceConfigurationsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsResult

    /**
     Invokes the DescribeVpcEndpointServicePermissions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcEndpointServicePermissionsRequest object being passed to this operation.
         - completion: The DescribeVpcEndpointServicePermissionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcEndpointServicePermissionsResult
           object will be validated before being returned to caller.
     */
    func describeVpcEndpointServicePermissionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeVpcEndpointServicePermissions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointServicePermissionsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointServicePermissionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointServicePermissionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsResult

    /**
     Invokes the DescribeVpcEndpointServices operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcEndpointServicesRequest object being passed to this operation.
         - completion: The DescribeVpcEndpointServicesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcEndpointServicesResult
           object will be validated before being returned to caller.
     */
    func describeVpcEndpointServicesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVpcEndpointServicesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcEndpointServicesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeVpcEndpointServices operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointServicesRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointServicesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointServicesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVpcEndpointServicesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVpcEndpointServicesResult

    /**
     Invokes the DescribeVpcEndpoints operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcEndpointsRequest object being passed to this operation.
         - completion: The DescribeVpcEndpointsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcEndpointsResult
           object will be validated before being returned to caller.
     */
    func describeVpcEndpointsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVpcEndpointsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcEndpointsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeVpcEndpoints operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVpcEndpointsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVpcEndpointsResult

    /**
     Invokes the DescribeVpcPeeringConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcPeeringConnectionsRequest object being passed to this operation.
         - completion: The DescribeVpcPeeringConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcPeeringConnectionsResult
           object will be validated before being returned to caller.
     */
    func describeVpcPeeringConnectionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVpcPeeringConnectionsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcPeeringConnectionsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeVpcPeeringConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcPeeringConnectionsRequest object being passed to this operation.
     - Returns: The DescribeVpcPeeringConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcPeeringConnectionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVpcPeeringConnectionsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVpcPeeringConnectionsResult

    /**
     Invokes the DescribeVpcs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcsRequest object being passed to this operation.
         - completion: The DescribeVpcsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcsResult
           object will be validated before being returned to caller.
     */
    func describeVpcsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVpcsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeVpcs operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcsRequest object being passed to this operation.
     - Returns: The DescribeVpcsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVpcsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVpcsResult

    /**
     Invokes the DescribeVpnConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpnConnectionsRequest object being passed to this operation.
         - completion: The DescribeVpnConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpnConnectionsResult
           object will be validated before being returned to caller.
     */
    func describeVpnConnectionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVpnConnectionsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpnConnectionsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeVpnConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpnConnectionsRequest object being passed to this operation.
     - Returns: The DescribeVpnConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpnConnectionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVpnConnectionsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVpnConnectionsResult

    /**
     Invokes the DescribeVpnGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpnGatewaysRequest object being passed to this operation.
         - completion: The DescribeVpnGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpnGatewaysResult
           object will be validated before being returned to caller.
     */
    func describeVpnGatewaysAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVpnGatewaysRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpnGatewaysResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeVpnGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpnGatewaysRequest object being passed to this operation.
     - Returns: The DescribeVpnGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpnGatewaysSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DescribeVpnGatewaysRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DescribeVpnGatewaysResult

    /**
     Invokes the DetachClassicLinkVpc operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachClassicLinkVpcRequest object being passed to this operation.
         - completion: The DetachClassicLinkVpcResult object or an error will be passed to this 
           callback when the operation is complete. The DetachClassicLinkVpcResult
           object will be validated before being returned to caller.
     */
    func detachClassicLinkVpcAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DetachClassicLinkVpcRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DetachClassicLinkVpcResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DetachClassicLinkVpc operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachClassicLinkVpcRequest object being passed to this operation.
     - Returns: The DetachClassicLinkVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func detachClassicLinkVpcSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DetachClassicLinkVpcRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DetachClassicLinkVpcResult

    /**
     Invokes the DetachInternetGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachInternetGatewayRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func detachInternetGatewayAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DetachInternetGatewayRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DetachInternetGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachInternetGatewayRequest object being passed to this operation.
     */
    func detachInternetGatewaySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DetachInternetGatewayRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DetachNetworkInterface operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachNetworkInterfaceRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func detachNetworkInterfaceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DetachNetworkInterfaceRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DetachNetworkInterface operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachNetworkInterfaceRequest object being passed to this operation.
     */
    func detachNetworkInterfaceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DetachNetworkInterfaceRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DetachVolume operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachVolumeRequest object being passed to this operation.
         - completion: The VolumeAttachment object or an error will be passed to this 
           callback when the operation is complete. The VolumeAttachment
           object will be validated before being returned to caller.
     */
    func detachVolumeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DetachVolumeRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.VolumeAttachment, HTTPClientError>) -> ()) throws

    /**
     Invokes the DetachVolume operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachVolumeRequest object being passed to this operation.
     - Returns: The VolumeAttachment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func detachVolumeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DetachVolumeRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.VolumeAttachment

    /**
     Invokes the DetachVpnGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachVpnGatewayRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func detachVpnGatewayAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DetachVpnGatewayRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DetachVpnGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachVpnGatewayRequest object being passed to this operation.
     */
    func detachVpnGatewaySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DetachVpnGatewayRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DisableEbsEncryptionByDefault operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableEbsEncryptionByDefaultRequest object being passed to this operation.
         - completion: The DisableEbsEncryptionByDefaultResult object or an error will be passed to this 
           callback when the operation is complete. The DisableEbsEncryptionByDefaultResult
           object will be validated before being returned to caller.
     */
    func disableEbsEncryptionByDefaultAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DisableEbsEncryptionByDefaultRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DisableEbsEncryptionByDefaultResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DisableEbsEncryptionByDefault operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableEbsEncryptionByDefaultRequest object being passed to this operation.
     - Returns: The DisableEbsEncryptionByDefaultResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableEbsEncryptionByDefaultSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DisableEbsEncryptionByDefaultRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DisableEbsEncryptionByDefaultResult

    /**
     Invokes the DisableFastSnapshotRestores operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableFastSnapshotRestoresRequest object being passed to this operation.
         - completion: The DisableFastSnapshotRestoresResult object or an error will be passed to this 
           callback when the operation is complete. The DisableFastSnapshotRestoresResult
           object will be validated before being returned to caller.
     */
    func disableFastSnapshotRestoresAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DisableFastSnapshotRestoresRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DisableFastSnapshotRestoresResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DisableFastSnapshotRestores operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableFastSnapshotRestoresRequest object being passed to this operation.
     - Returns: The DisableFastSnapshotRestoresResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableFastSnapshotRestoresSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DisableFastSnapshotRestoresRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DisableFastSnapshotRestoresResult

    /**
     Invokes the DisableTransitGatewayRouteTablePropagation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableTransitGatewayRouteTablePropagationRequest object being passed to this operation.
         - completion: The DisableTransitGatewayRouteTablePropagationResult object or an error will be passed to this 
           callback when the operation is complete. The DisableTransitGatewayRouteTablePropagationResult
           object will be validated before being returned to caller.
     */
    func disableTransitGatewayRouteTablePropagationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DisableTransitGatewayRouteTablePropagation operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableTransitGatewayRouteTablePropagationRequest object being passed to this operation.
     - Returns: The DisableTransitGatewayRouteTablePropagationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableTransitGatewayRouteTablePropagationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationResult

    /**
     Invokes the DisableVgwRoutePropagation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableVgwRoutePropagationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func disableVgwRoutePropagationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DisableVgwRoutePropagationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DisableVgwRoutePropagation operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableVgwRoutePropagationRequest object being passed to this operation.
     */
    func disableVgwRoutePropagationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DisableVgwRoutePropagationRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DisableVpcClassicLink operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableVpcClassicLinkRequest object being passed to this operation.
         - completion: The DisableVpcClassicLinkResult object or an error will be passed to this 
           callback when the operation is complete. The DisableVpcClassicLinkResult
           object will be validated before being returned to caller.
     */
    func disableVpcClassicLinkAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DisableVpcClassicLinkRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DisableVpcClassicLinkResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DisableVpcClassicLink operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableVpcClassicLinkRequest object being passed to this operation.
     - Returns: The DisableVpcClassicLinkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableVpcClassicLinkSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DisableVpcClassicLinkRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DisableVpcClassicLinkResult

    /**
     Invokes the DisableVpcClassicLinkDnsSupport operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableVpcClassicLinkDnsSupportRequest object being passed to this operation.
         - completion: The DisableVpcClassicLinkDnsSupportResult object or an error will be passed to this 
           callback when the operation is complete. The DisableVpcClassicLinkDnsSupportResult
           object will be validated before being returned to caller.
     */
    func disableVpcClassicLinkDnsSupportAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DisableVpcClassicLinkDnsSupport operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableVpcClassicLinkDnsSupportRequest object being passed to this operation.
     - Returns: The DisableVpcClassicLinkDnsSupportResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableVpcClassicLinkDnsSupportSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportResult

    /**
     Invokes the DisassociateAddress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateAddressRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func disassociateAddressAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DisassociateAddressRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DisassociateAddress operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateAddressRequest object being passed to this operation.
     */
    func disassociateAddressSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DisassociateAddressRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DisassociateClientVpnTargetNetwork operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateClientVpnTargetNetworkRequest object being passed to this operation.
         - completion: The DisassociateClientVpnTargetNetworkResult object or an error will be passed to this 
           callback when the operation is complete. The DisassociateClientVpnTargetNetworkResult
           object will be validated before being returned to caller.
     */
    func disassociateClientVpnTargetNetworkAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DisassociateClientVpnTargetNetwork operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateClientVpnTargetNetworkRequest object being passed to this operation.
     - Returns: The DisassociateClientVpnTargetNetworkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateClientVpnTargetNetworkSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkResult

    /**
     Invokes the DisassociateIamInstanceProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateIamInstanceProfileRequest object being passed to this operation.
         - completion: The DisassociateIamInstanceProfileResult object or an error will be passed to this 
           callback when the operation is complete. The DisassociateIamInstanceProfileResult
           object will be validated before being returned to caller.
     */
    func disassociateIamInstanceProfileAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DisassociateIamInstanceProfileRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DisassociateIamInstanceProfileResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DisassociateIamInstanceProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateIamInstanceProfileRequest object being passed to this operation.
     - Returns: The DisassociateIamInstanceProfileResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateIamInstanceProfileSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DisassociateIamInstanceProfileRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DisassociateIamInstanceProfileResult

    /**
     Invokes the DisassociateRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateRouteTableRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func disassociateRouteTableAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DisassociateRouteTableRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DisassociateRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateRouteTableRequest object being passed to this operation.
     */
    func disassociateRouteTableSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DisassociateRouteTableRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DisassociateSubnetCidrBlock operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateSubnetCidrBlockRequest object being passed to this operation.
         - completion: The DisassociateSubnetCidrBlockResult object or an error will be passed to this 
           callback when the operation is complete. The DisassociateSubnetCidrBlockResult
           object will be validated before being returned to caller.
     */
    func disassociateSubnetCidrBlockAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DisassociateSubnetCidrBlockRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DisassociateSubnetCidrBlockResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DisassociateSubnetCidrBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateSubnetCidrBlockRequest object being passed to this operation.
     - Returns: The DisassociateSubnetCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateSubnetCidrBlockSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DisassociateSubnetCidrBlockRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DisassociateSubnetCidrBlockResult

    /**
     Invokes the DisassociateTransitGatewayMulticastDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateTransitGatewayMulticastDomainRequest object being passed to this operation.
         - completion: The DisassociateTransitGatewayMulticastDomainResult object or an error will be passed to this 
           callback when the operation is complete. The DisassociateTransitGatewayMulticastDomainResult
           object will be validated before being returned to caller.
     */
    func disassociateTransitGatewayMulticastDomainAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DisassociateTransitGatewayMulticastDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateTransitGatewayMulticastDomainRequest object being passed to this operation.
     - Returns: The DisassociateTransitGatewayMulticastDomainResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateTransitGatewayMulticastDomainSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainResult

    /**
     Invokes the DisassociateTransitGatewayRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateTransitGatewayRouteTableRequest object being passed to this operation.
         - completion: The DisassociateTransitGatewayRouteTableResult object or an error will be passed to this 
           callback when the operation is complete. The DisassociateTransitGatewayRouteTableResult
           object will be validated before being returned to caller.
     */
    func disassociateTransitGatewayRouteTableAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DisassociateTransitGatewayRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: The DisassociateTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateTransitGatewayRouteTableSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableResult

    /**
     Invokes the DisassociateVpcCidrBlock operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateVpcCidrBlockRequest object being passed to this operation.
         - completion: The DisassociateVpcCidrBlockResult object or an error will be passed to this 
           callback when the operation is complete. The DisassociateVpcCidrBlockResult
           object will be validated before being returned to caller.
     */
    func disassociateVpcCidrBlockAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DisassociateVpcCidrBlockRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.DisassociateVpcCidrBlockResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the DisassociateVpcCidrBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateVpcCidrBlockRequest object being passed to this operation.
     - Returns: The DisassociateVpcCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateVpcCidrBlockSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.DisassociateVpcCidrBlockRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.DisassociateVpcCidrBlockResult

    /**
     Invokes the EnableEbsEncryptionByDefault operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableEbsEncryptionByDefaultRequest object being passed to this operation.
         - completion: The EnableEbsEncryptionByDefaultResult object or an error will be passed to this 
           callback when the operation is complete. The EnableEbsEncryptionByDefaultResult
           object will be validated before being returned to caller.
     */
    func enableEbsEncryptionByDefaultAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.EnableEbsEncryptionByDefaultRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.EnableEbsEncryptionByDefaultResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the EnableEbsEncryptionByDefault operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableEbsEncryptionByDefaultRequest object being passed to this operation.
     - Returns: The EnableEbsEncryptionByDefaultResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableEbsEncryptionByDefaultSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.EnableEbsEncryptionByDefaultRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.EnableEbsEncryptionByDefaultResult

    /**
     Invokes the EnableFastSnapshotRestores operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableFastSnapshotRestoresRequest object being passed to this operation.
         - completion: The EnableFastSnapshotRestoresResult object or an error will be passed to this 
           callback when the operation is complete. The EnableFastSnapshotRestoresResult
           object will be validated before being returned to caller.
     */
    func enableFastSnapshotRestoresAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.EnableFastSnapshotRestoresRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.EnableFastSnapshotRestoresResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the EnableFastSnapshotRestores operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableFastSnapshotRestoresRequest object being passed to this operation.
     - Returns: The EnableFastSnapshotRestoresResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableFastSnapshotRestoresSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.EnableFastSnapshotRestoresRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.EnableFastSnapshotRestoresResult

    /**
     Invokes the EnableTransitGatewayRouteTablePropagation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableTransitGatewayRouteTablePropagationRequest object being passed to this operation.
         - completion: The EnableTransitGatewayRouteTablePropagationResult object or an error will be passed to this 
           callback when the operation is complete. The EnableTransitGatewayRouteTablePropagationResult
           object will be validated before being returned to caller.
     */
    func enableTransitGatewayRouteTablePropagationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the EnableTransitGatewayRouteTablePropagation operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableTransitGatewayRouteTablePropagationRequest object being passed to this operation.
     - Returns: The EnableTransitGatewayRouteTablePropagationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableTransitGatewayRouteTablePropagationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationResult

    /**
     Invokes the EnableVgwRoutePropagation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableVgwRoutePropagationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func enableVgwRoutePropagationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.EnableVgwRoutePropagationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the EnableVgwRoutePropagation operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableVgwRoutePropagationRequest object being passed to this operation.
     */
    func enableVgwRoutePropagationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.EnableVgwRoutePropagationRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the EnableVolumeIO operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableVolumeIORequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func enableVolumeIOAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.EnableVolumeIORequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the EnableVolumeIO operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableVolumeIORequest object being passed to this operation.
     */
    func enableVolumeIOSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.EnableVolumeIORequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the EnableVpcClassicLink operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableVpcClassicLinkRequest object being passed to this operation.
         - completion: The EnableVpcClassicLinkResult object or an error will be passed to this 
           callback when the operation is complete. The EnableVpcClassicLinkResult
           object will be validated before being returned to caller.
     */
    func enableVpcClassicLinkAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.EnableVpcClassicLinkRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.EnableVpcClassicLinkResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the EnableVpcClassicLink operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableVpcClassicLinkRequest object being passed to this operation.
     - Returns: The EnableVpcClassicLinkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableVpcClassicLinkSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.EnableVpcClassicLinkRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.EnableVpcClassicLinkResult

    /**
     Invokes the EnableVpcClassicLinkDnsSupport operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableVpcClassicLinkDnsSupportRequest object being passed to this operation.
         - completion: The EnableVpcClassicLinkDnsSupportResult object or an error will be passed to this 
           callback when the operation is complete. The EnableVpcClassicLinkDnsSupportResult
           object will be validated before being returned to caller.
     */
    func enableVpcClassicLinkDnsSupportAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the EnableVpcClassicLinkDnsSupport operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableVpcClassicLinkDnsSupportRequest object being passed to this operation.
     - Returns: The EnableVpcClassicLinkDnsSupportResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableVpcClassicLinkDnsSupportSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportResult

    /**
     Invokes the ExportClientVpnClientCertificateRevocationList operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ExportClientVpnClientCertificateRevocationListRequest object being passed to this operation.
         - completion: The ExportClientVpnClientCertificateRevocationListResult object or an error will be passed to this 
           callback when the operation is complete. The ExportClientVpnClientCertificateRevocationListResult
           object will be validated before being returned to caller.
     */
    func exportClientVpnClientCertificateRevocationListAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ExportClientVpnClientCertificateRevocationList operation waiting for the response before returning.

     - Parameters:
         - input: The validated ExportClientVpnClientCertificateRevocationListRequest object being passed to this operation.
     - Returns: The ExportClientVpnClientCertificateRevocationListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func exportClientVpnClientCertificateRevocationListSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListResult

    /**
     Invokes the ExportClientVpnClientConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ExportClientVpnClientConfigurationRequest object being passed to this operation.
         - completion: The ExportClientVpnClientConfigurationResult object or an error will be passed to this 
           callback when the operation is complete. The ExportClientVpnClientConfigurationResult
           object will be validated before being returned to caller.
     */
    func exportClientVpnClientConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ExportClientVpnClientConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ExportClientVpnClientConfigurationResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ExportClientVpnClientConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated ExportClientVpnClientConfigurationRequest object being passed to this operation.
     - Returns: The ExportClientVpnClientConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func exportClientVpnClientConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ExportClientVpnClientConfigurationRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ExportClientVpnClientConfigurationResult

    /**
     Invokes the ExportImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ExportImageRequest object being passed to this operation.
         - completion: The ExportImageResult object or an error will be passed to this 
           callback when the operation is complete. The ExportImageResult
           object will be validated before being returned to caller.
     */
    func exportImageAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ExportImageRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ExportImageResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ExportImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated ExportImageRequest object being passed to this operation.
     - Returns: The ExportImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func exportImageSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ExportImageRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ExportImageResult

    /**
     Invokes the ExportTransitGatewayRoutes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ExportTransitGatewayRoutesRequest object being passed to this operation.
         - completion: The ExportTransitGatewayRoutesResult object or an error will be passed to this 
           callback when the operation is complete. The ExportTransitGatewayRoutesResult
           object will be validated before being returned to caller.
     */
    func exportTransitGatewayRoutesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ExportTransitGatewayRoutesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ExportTransitGatewayRoutesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ExportTransitGatewayRoutes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ExportTransitGatewayRoutesRequest object being passed to this operation.
     - Returns: The ExportTransitGatewayRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func exportTransitGatewayRoutesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ExportTransitGatewayRoutesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ExportTransitGatewayRoutesResult

    /**
     Invokes the GetAssociatedIpv6PoolCidrs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetAssociatedIpv6PoolCidrsRequest object being passed to this operation.
         - completion: The GetAssociatedIpv6PoolCidrsResult object or an error will be passed to this 
           callback when the operation is complete. The GetAssociatedIpv6PoolCidrsResult
           object will be validated before being returned to caller.
     */
    func getAssociatedIpv6PoolCidrsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetAssociatedIpv6PoolCidrs operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetAssociatedIpv6PoolCidrsRequest object being passed to this operation.
     - Returns: The GetAssociatedIpv6PoolCidrsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getAssociatedIpv6PoolCidrsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsResult

    /**
     Invokes the GetCapacityReservationUsage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetCapacityReservationUsageRequest object being passed to this operation.
         - completion: The GetCapacityReservationUsageResult object or an error will be passed to this 
           callback when the operation is complete. The GetCapacityReservationUsageResult
           object will be validated before being returned to caller.
     */
    func getCapacityReservationUsageAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.GetCapacityReservationUsageRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.GetCapacityReservationUsageResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetCapacityReservationUsage operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetCapacityReservationUsageRequest object being passed to this operation.
     - Returns: The GetCapacityReservationUsageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getCapacityReservationUsageSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.GetCapacityReservationUsageRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.GetCapacityReservationUsageResult

    /**
     Invokes the GetCoipPoolUsage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetCoipPoolUsageRequest object being passed to this operation.
         - completion: The GetCoipPoolUsageResult object or an error will be passed to this 
           callback when the operation is complete. The GetCoipPoolUsageResult
           object will be validated before being returned to caller.
     */
    func getCoipPoolUsageAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.GetCoipPoolUsageRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.GetCoipPoolUsageResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetCoipPoolUsage operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetCoipPoolUsageRequest object being passed to this operation.
     - Returns: The GetCoipPoolUsageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getCoipPoolUsageSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.GetCoipPoolUsageRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.GetCoipPoolUsageResult

    /**
     Invokes the GetConsoleOutput operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetConsoleOutputRequest object being passed to this operation.
         - completion: The GetConsoleOutputResult object or an error will be passed to this 
           callback when the operation is complete. The GetConsoleOutputResult
           object will be validated before being returned to caller.
     */
    func getConsoleOutputAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.GetConsoleOutputRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.GetConsoleOutputResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetConsoleOutput operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetConsoleOutputRequest object being passed to this operation.
     - Returns: The GetConsoleOutputResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getConsoleOutputSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.GetConsoleOutputRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.GetConsoleOutputResult

    /**
     Invokes the GetConsoleScreenshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetConsoleScreenshotRequest object being passed to this operation.
         - completion: The GetConsoleScreenshotResult object or an error will be passed to this 
           callback when the operation is complete. The GetConsoleScreenshotResult
           object will be validated before being returned to caller.
     */
    func getConsoleScreenshotAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.GetConsoleScreenshotRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.GetConsoleScreenshotResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetConsoleScreenshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetConsoleScreenshotRequest object being passed to this operation.
     - Returns: The GetConsoleScreenshotResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getConsoleScreenshotSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.GetConsoleScreenshotRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.GetConsoleScreenshotResult

    /**
     Invokes the GetDefaultCreditSpecification operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetDefaultCreditSpecificationRequest object being passed to this operation.
         - completion: The GetDefaultCreditSpecificationResult object or an error will be passed to this 
           callback when the operation is complete. The GetDefaultCreditSpecificationResult
           object will be validated before being returned to caller.
     */
    func getDefaultCreditSpecificationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.GetDefaultCreditSpecificationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.GetDefaultCreditSpecificationResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetDefaultCreditSpecification operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetDefaultCreditSpecificationRequest object being passed to this operation.
     - Returns: The GetDefaultCreditSpecificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getDefaultCreditSpecificationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.GetDefaultCreditSpecificationRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.GetDefaultCreditSpecificationResult

    /**
     Invokes the GetEbsDefaultKmsKeyId operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetEbsDefaultKmsKeyIdRequest object being passed to this operation.
         - completion: The GetEbsDefaultKmsKeyIdResult object or an error will be passed to this 
           callback when the operation is complete. The GetEbsDefaultKmsKeyIdResult
           object will be validated before being returned to caller.
     */
    func getEbsDefaultKmsKeyIdAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetEbsDefaultKmsKeyId operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetEbsDefaultKmsKeyIdRequest object being passed to this operation.
     - Returns: The GetEbsDefaultKmsKeyIdResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getEbsDefaultKmsKeyIdSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdResult

    /**
     Invokes the GetEbsEncryptionByDefault operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetEbsEncryptionByDefaultRequest object being passed to this operation.
         - completion: The GetEbsEncryptionByDefaultResult object or an error will be passed to this 
           callback when the operation is complete. The GetEbsEncryptionByDefaultResult
           object will be validated before being returned to caller.
     */
    func getEbsEncryptionByDefaultAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.GetEbsEncryptionByDefaultRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.GetEbsEncryptionByDefaultResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetEbsEncryptionByDefault operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetEbsEncryptionByDefaultRequest object being passed to this operation.
     - Returns: The GetEbsEncryptionByDefaultResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getEbsEncryptionByDefaultSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.GetEbsEncryptionByDefaultRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.GetEbsEncryptionByDefaultResult

    /**
     Invokes the GetHostReservationPurchasePreview operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetHostReservationPurchasePreviewRequest object being passed to this operation.
         - completion: The GetHostReservationPurchasePreviewResult object or an error will be passed to this 
           callback when the operation is complete. The GetHostReservationPurchasePreviewResult
           object will be validated before being returned to caller.
     */
    func getHostReservationPurchasePreviewAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.GetHostReservationPurchasePreviewRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.GetHostReservationPurchasePreviewResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetHostReservationPurchasePreview operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetHostReservationPurchasePreviewRequest object being passed to this operation.
     - Returns: The GetHostReservationPurchasePreviewResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getHostReservationPurchasePreviewSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.GetHostReservationPurchasePreviewRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.GetHostReservationPurchasePreviewResult

    /**
     Invokes the GetLaunchTemplateData operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetLaunchTemplateDataRequest object being passed to this operation.
         - completion: The GetLaunchTemplateDataResult object or an error will be passed to this 
           callback when the operation is complete. The GetLaunchTemplateDataResult
           object will be validated before being returned to caller.
     */
    func getLaunchTemplateDataAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.GetLaunchTemplateDataRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.GetLaunchTemplateDataResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetLaunchTemplateData operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetLaunchTemplateDataRequest object being passed to this operation.
     - Returns: The GetLaunchTemplateDataResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getLaunchTemplateDataSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.GetLaunchTemplateDataRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.GetLaunchTemplateDataResult

    /**
     Invokes the GetPasswordData operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetPasswordDataRequest object being passed to this operation.
         - completion: The GetPasswordDataResult object or an error will be passed to this 
           callback when the operation is complete. The GetPasswordDataResult
           object will be validated before being returned to caller.
     */
    func getPasswordDataAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.GetPasswordDataRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.GetPasswordDataResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetPasswordData operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetPasswordDataRequest object being passed to this operation.
     - Returns: The GetPasswordDataResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getPasswordDataSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.GetPasswordDataRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.GetPasswordDataResult

    /**
     Invokes the GetReservedInstancesExchangeQuote operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetReservedInstancesExchangeQuoteRequest object being passed to this operation.
         - completion: The GetReservedInstancesExchangeQuoteResult object or an error will be passed to this 
           callback when the operation is complete. The GetReservedInstancesExchangeQuoteResult
           object will be validated before being returned to caller.
     */
    func getReservedInstancesExchangeQuoteAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetReservedInstancesExchangeQuote operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetReservedInstancesExchangeQuoteRequest object being passed to this operation.
     - Returns: The GetReservedInstancesExchangeQuoteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getReservedInstancesExchangeQuoteSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteResult

    /**
     Invokes the GetTransitGatewayAttachmentPropagations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetTransitGatewayAttachmentPropagationsRequest object being passed to this operation.
         - completion: The GetTransitGatewayAttachmentPropagationsResult object or an error will be passed to this 
           callback when the operation is complete. The GetTransitGatewayAttachmentPropagationsResult
           object will be validated before being returned to caller.
     */
    func getTransitGatewayAttachmentPropagationsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetTransitGatewayAttachmentPropagations operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetTransitGatewayAttachmentPropagationsRequest object being passed to this operation.
     - Returns: The GetTransitGatewayAttachmentPropagationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getTransitGatewayAttachmentPropagationsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsResult

    /**
     Invokes the GetTransitGatewayMulticastDomainAssociations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetTransitGatewayMulticastDomainAssociationsRequest object being passed to this operation.
         - completion: The GetTransitGatewayMulticastDomainAssociationsResult object or an error will be passed to this 
           callback when the operation is complete. The GetTransitGatewayMulticastDomainAssociationsResult
           object will be validated before being returned to caller.
     */
    func getTransitGatewayMulticastDomainAssociationsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetTransitGatewayMulticastDomainAssociations operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetTransitGatewayMulticastDomainAssociationsRequest object being passed to this operation.
     - Returns: The GetTransitGatewayMulticastDomainAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getTransitGatewayMulticastDomainAssociationsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsResult

    /**
     Invokes the GetTransitGatewayRouteTableAssociations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetTransitGatewayRouteTableAssociationsRequest object being passed to this operation.
         - completion: The GetTransitGatewayRouteTableAssociationsResult object or an error will be passed to this 
           callback when the operation is complete. The GetTransitGatewayRouteTableAssociationsResult
           object will be validated before being returned to caller.
     */
    func getTransitGatewayRouteTableAssociationsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetTransitGatewayRouteTableAssociations operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetTransitGatewayRouteTableAssociationsRequest object being passed to this operation.
     - Returns: The GetTransitGatewayRouteTableAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getTransitGatewayRouteTableAssociationsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsResult

    /**
     Invokes the GetTransitGatewayRouteTablePropagations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetTransitGatewayRouteTablePropagationsRequest object being passed to this operation.
         - completion: The GetTransitGatewayRouteTablePropagationsResult object or an error will be passed to this 
           callback when the operation is complete. The GetTransitGatewayRouteTablePropagationsResult
           object will be validated before being returned to caller.
     */
    func getTransitGatewayRouteTablePropagationsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetTransitGatewayRouteTablePropagations operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetTransitGatewayRouteTablePropagationsRequest object being passed to this operation.
     - Returns: The GetTransitGatewayRouteTablePropagationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getTransitGatewayRouteTablePropagationsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsResult

    /**
     Invokes the ImportClientVpnClientCertificateRevocationList operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportClientVpnClientCertificateRevocationListRequest object being passed to this operation.
         - completion: The ImportClientVpnClientCertificateRevocationListResult object or an error will be passed to this 
           callback when the operation is complete. The ImportClientVpnClientCertificateRevocationListResult
           object will be validated before being returned to caller.
     */
    func importClientVpnClientCertificateRevocationListAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ImportClientVpnClientCertificateRevocationList operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportClientVpnClientCertificateRevocationListRequest object being passed to this operation.
     - Returns: The ImportClientVpnClientCertificateRevocationListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importClientVpnClientCertificateRevocationListSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListResult

    /**
     Invokes the ImportImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportImageRequest object being passed to this operation.
         - completion: The ImportImageResult object or an error will be passed to this 
           callback when the operation is complete. The ImportImageResult
           object will be validated before being returned to caller.
     */
    func importImageAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ImportImageRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ImportImageResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ImportImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportImageRequest object being passed to this operation.
     - Returns: The ImportImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importImageSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ImportImageRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ImportImageResult

    /**
     Invokes the ImportInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportInstanceRequest object being passed to this operation.
         - completion: The ImportInstanceResult object or an error will be passed to this 
           callback when the operation is complete. The ImportInstanceResult
           object will be validated before being returned to caller.
     */
    func importInstanceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ImportInstanceRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ImportInstanceResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ImportInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportInstanceRequest object being passed to this operation.
     - Returns: The ImportInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importInstanceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ImportInstanceRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ImportInstanceResult

    /**
     Invokes the ImportKeyPair operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportKeyPairRequest object being passed to this operation.
         - completion: The ImportKeyPairResult object or an error will be passed to this 
           callback when the operation is complete. The ImportKeyPairResult
           object will be validated before being returned to caller.
     */
    func importKeyPairAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ImportKeyPairRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ImportKeyPairResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ImportKeyPair operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportKeyPairRequest object being passed to this operation.
     - Returns: The ImportKeyPairResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importKeyPairSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ImportKeyPairRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ImportKeyPairResult

    /**
     Invokes the ImportSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportSnapshotRequest object being passed to this operation.
         - completion: The ImportSnapshotResult object or an error will be passed to this 
           callback when the operation is complete. The ImportSnapshotResult
           object will be validated before being returned to caller.
     */
    func importSnapshotAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ImportSnapshotRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ImportSnapshotResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ImportSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportSnapshotRequest object being passed to this operation.
     - Returns: The ImportSnapshotResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importSnapshotSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ImportSnapshotRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ImportSnapshotResult

    /**
     Invokes the ImportVolume operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportVolumeRequest object being passed to this operation.
         - completion: The ImportVolumeResult object or an error will be passed to this 
           callback when the operation is complete. The ImportVolumeResult
           object will be validated before being returned to caller.
     */
    func importVolumeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ImportVolumeRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ImportVolumeResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ImportVolume operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportVolumeRequest object being passed to this operation.
     - Returns: The ImportVolumeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importVolumeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ImportVolumeRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ImportVolumeResult

    /**
     Invokes the ModifyCapacityReservation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyCapacityReservationRequest object being passed to this operation.
         - completion: The ModifyCapacityReservationResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyCapacityReservationResult
           object will be validated before being returned to caller.
     */
    func modifyCapacityReservationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyCapacityReservationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyCapacityReservationResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyCapacityReservation operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyCapacityReservationRequest object being passed to this operation.
     - Returns: The ModifyCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyCapacityReservationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyCapacityReservationRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyCapacityReservationResult

    /**
     Invokes the ModifyClientVpnEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyClientVpnEndpointRequest object being passed to this operation.
         - completion: The ModifyClientVpnEndpointResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyClientVpnEndpointResult
           object will be validated before being returned to caller.
     */
    func modifyClientVpnEndpointAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyClientVpnEndpointRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyClientVpnEndpointResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyClientVpnEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyClientVpnEndpointRequest object being passed to this operation.
     - Returns: The ModifyClientVpnEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyClientVpnEndpointSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyClientVpnEndpointRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyClientVpnEndpointResult

    /**
     Invokes the ModifyDefaultCreditSpecification operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDefaultCreditSpecificationRequest object being passed to this operation.
         - completion: The ModifyDefaultCreditSpecificationResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyDefaultCreditSpecificationResult
           object will be validated before being returned to caller.
     */
    func modifyDefaultCreditSpecificationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyDefaultCreditSpecificationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyDefaultCreditSpecificationResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyDefaultCreditSpecification operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDefaultCreditSpecificationRequest object being passed to this operation.
     - Returns: The ModifyDefaultCreditSpecificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyDefaultCreditSpecificationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyDefaultCreditSpecificationRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyDefaultCreditSpecificationResult

    /**
     Invokes the ModifyEbsDefaultKmsKeyId operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyEbsDefaultKmsKeyIdRequest object being passed to this operation.
         - completion: The ModifyEbsDefaultKmsKeyIdResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyEbsDefaultKmsKeyIdResult
           object will be validated before being returned to caller.
     */
    func modifyEbsDefaultKmsKeyIdAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyEbsDefaultKmsKeyId operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyEbsDefaultKmsKeyIdRequest object being passed to this operation.
     - Returns: The ModifyEbsDefaultKmsKeyIdResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyEbsDefaultKmsKeyIdSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdResult

    /**
     Invokes the ModifyFleet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyFleetRequest object being passed to this operation.
         - completion: The ModifyFleetResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyFleetResult
           object will be validated before being returned to caller.
     */
    func modifyFleetAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyFleetRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyFleetResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyFleet operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyFleetRequest object being passed to this operation.
     - Returns: The ModifyFleetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyFleetSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyFleetRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyFleetResult

    /**
     Invokes the ModifyFpgaImageAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyFpgaImageAttributeRequest object being passed to this operation.
         - completion: The ModifyFpgaImageAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyFpgaImageAttributeResult
           object will be validated before being returned to caller.
     */
    func modifyFpgaImageAttributeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyFpgaImageAttributeRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyFpgaImageAttributeResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyFpgaImageAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyFpgaImageAttributeRequest object being passed to this operation.
     - Returns: The ModifyFpgaImageAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyFpgaImageAttributeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyFpgaImageAttributeRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyFpgaImageAttributeResult

    /**
     Invokes the ModifyHosts operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyHostsRequest object being passed to this operation.
         - completion: The ModifyHostsResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyHostsResult
           object will be validated before being returned to caller.
     */
    func modifyHostsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyHostsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyHostsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyHosts operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyHostsRequest object being passed to this operation.
     - Returns: The ModifyHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyHostsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyHostsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyHostsResult

    /**
     Invokes the ModifyIdFormat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyIdFormatRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func modifyIdFormatAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyIdFormatRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ModifyIdFormat operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyIdFormatRequest object being passed to this operation.
     */
    func modifyIdFormatSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyIdFormatRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the ModifyIdentityIdFormat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyIdentityIdFormatRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func modifyIdentityIdFormatAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyIdentityIdFormatRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ModifyIdentityIdFormat operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyIdentityIdFormatRequest object being passed to this operation.
     */
    func modifyIdentityIdFormatSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyIdentityIdFormatRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the ModifyImageAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyImageAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func modifyImageAttributeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyImageAttributeRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ModifyImageAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyImageAttributeRequest object being passed to this operation.
     */
    func modifyImageAttributeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyImageAttributeRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the ModifyInstanceAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyInstanceAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func modifyInstanceAttributeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyInstanceAttributeRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ModifyInstanceAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyInstanceAttributeRequest object being passed to this operation.
     */
    func modifyInstanceAttributeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyInstanceAttributeRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the ModifyInstanceCapacityReservationAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyInstanceCapacityReservationAttributesRequest object being passed to this operation.
         - completion: The ModifyInstanceCapacityReservationAttributesResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyInstanceCapacityReservationAttributesResult
           object will be validated before being returned to caller.
     */
    func modifyInstanceCapacityReservationAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyInstanceCapacityReservationAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyInstanceCapacityReservationAttributesRequest object being passed to this operation.
     - Returns: The ModifyInstanceCapacityReservationAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstanceCapacityReservationAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesResult

    /**
     Invokes the ModifyInstanceCreditSpecification operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyInstanceCreditSpecificationRequest object being passed to this operation.
         - completion: The ModifyInstanceCreditSpecificationResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyInstanceCreditSpecificationResult
           object will be validated before being returned to caller.
     */
    func modifyInstanceCreditSpecificationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyInstanceCreditSpecificationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyInstanceCreditSpecificationResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyInstanceCreditSpecification operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyInstanceCreditSpecificationRequest object being passed to this operation.
     - Returns: The ModifyInstanceCreditSpecificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstanceCreditSpecificationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyInstanceCreditSpecificationRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyInstanceCreditSpecificationResult

    /**
     Invokes the ModifyInstanceEventStartTime operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyInstanceEventStartTimeRequest object being passed to this operation.
         - completion: The ModifyInstanceEventStartTimeResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyInstanceEventStartTimeResult
           object will be validated before being returned to caller.
     */
    func modifyInstanceEventStartTimeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyInstanceEventStartTimeRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyInstanceEventStartTimeResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyInstanceEventStartTime operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyInstanceEventStartTimeRequest object being passed to this operation.
     - Returns: The ModifyInstanceEventStartTimeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstanceEventStartTimeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyInstanceEventStartTimeRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyInstanceEventStartTimeResult

    /**
     Invokes the ModifyInstanceMetadataOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyInstanceMetadataOptionsRequest object being passed to this operation.
         - completion: The ModifyInstanceMetadataOptionsResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyInstanceMetadataOptionsResult
           object will be validated before being returned to caller.
     */
    func modifyInstanceMetadataOptionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyInstanceMetadataOptionsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyInstanceMetadataOptionsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyInstanceMetadataOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyInstanceMetadataOptionsRequest object being passed to this operation.
     - Returns: The ModifyInstanceMetadataOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstanceMetadataOptionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyInstanceMetadataOptionsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyInstanceMetadataOptionsResult

    /**
     Invokes the ModifyInstancePlacement operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyInstancePlacementRequest object being passed to this operation.
         - completion: The ModifyInstancePlacementResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyInstancePlacementResult
           object will be validated before being returned to caller.
     */
    func modifyInstancePlacementAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyInstancePlacementRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyInstancePlacementResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyInstancePlacement operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyInstancePlacementRequest object being passed to this operation.
     - Returns: The ModifyInstancePlacementResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstancePlacementSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyInstancePlacementRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyInstancePlacementResult

    /**
     Invokes the ModifyLaunchTemplate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyLaunchTemplateRequest object being passed to this operation.
         - completion: The ModifyLaunchTemplateResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyLaunchTemplateResult
           object will be validated before being returned to caller.
     */
    func modifyLaunchTemplateAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyLaunchTemplateRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyLaunchTemplateResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyLaunchTemplate operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyLaunchTemplateRequest object being passed to this operation.
     - Returns: The ModifyLaunchTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyLaunchTemplateSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyLaunchTemplateRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyLaunchTemplateResult

    /**
     Invokes the ModifyNetworkInterfaceAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyNetworkInterfaceAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func modifyNetworkInterfaceAttributeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyNetworkInterfaceAttributeRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ModifyNetworkInterfaceAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyNetworkInterfaceAttributeRequest object being passed to this operation.
     */
    func modifyNetworkInterfaceAttributeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyNetworkInterfaceAttributeRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the ModifyReservedInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyReservedInstancesRequest object being passed to this operation.
         - completion: The ModifyReservedInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyReservedInstancesResult
           object will be validated before being returned to caller.
     */
    func modifyReservedInstancesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyReservedInstancesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyReservedInstancesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyReservedInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyReservedInstancesRequest object being passed to this operation.
     - Returns: The ModifyReservedInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyReservedInstancesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyReservedInstancesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyReservedInstancesResult

    /**
     Invokes the ModifySnapshotAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifySnapshotAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func modifySnapshotAttributeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifySnapshotAttributeRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ModifySnapshotAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifySnapshotAttributeRequest object being passed to this operation.
     */
    func modifySnapshotAttributeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifySnapshotAttributeRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the ModifySpotFleetRequest operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifySpotFleetRequestRequest object being passed to this operation.
         - completion: The ModifySpotFleetRequestResponse object or an error will be passed to this 
           callback when the operation is complete. The ModifySpotFleetRequestResponse
           object will be validated before being returned to caller.
     */
    func modifySpotFleetRequestAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifySpotFleetRequestRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ModifySpotFleetRequestResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifySpotFleetRequest operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifySpotFleetRequestRequest object being passed to this operation.
     - Returns: The ModifySpotFleetRequestResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifySpotFleetRequestSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifySpotFleetRequestRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifySpotFleetRequestResponse

    /**
     Invokes the ModifySubnetAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifySubnetAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func modifySubnetAttributeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifySubnetAttributeRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ModifySubnetAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifySubnetAttributeRequest object being passed to this operation.
     */
    func modifySubnetAttributeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifySubnetAttributeRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the ModifyTrafficMirrorFilterNetworkServices operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyTrafficMirrorFilterNetworkServicesRequest object being passed to this operation.
         - completion: The ModifyTrafficMirrorFilterNetworkServicesResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyTrafficMirrorFilterNetworkServicesResult
           object will be validated before being returned to caller.
     */
    func modifyTrafficMirrorFilterNetworkServicesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyTrafficMirrorFilterNetworkServices operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyTrafficMirrorFilterNetworkServicesRequest object being passed to this operation.
     - Returns: The ModifyTrafficMirrorFilterNetworkServicesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyTrafficMirrorFilterNetworkServicesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesResult

    /**
     Invokes the ModifyTrafficMirrorFilterRule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyTrafficMirrorFilterRuleRequest object being passed to this operation.
         - completion: The ModifyTrafficMirrorFilterRuleResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyTrafficMirrorFilterRuleResult
           object will be validated before being returned to caller.
     */
    func modifyTrafficMirrorFilterRuleAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyTrafficMirrorFilterRule operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyTrafficMirrorFilterRuleRequest object being passed to this operation.
     - Returns: The ModifyTrafficMirrorFilterRuleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyTrafficMirrorFilterRuleSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleResult

    /**
     Invokes the ModifyTrafficMirrorSession operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyTrafficMirrorSessionRequest object being passed to this operation.
         - completion: The ModifyTrafficMirrorSessionResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyTrafficMirrorSessionResult
           object will be validated before being returned to caller.
     */
    func modifyTrafficMirrorSessionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyTrafficMirrorSessionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyTrafficMirrorSessionResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyTrafficMirrorSession operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyTrafficMirrorSessionRequest object being passed to this operation.
     - Returns: The ModifyTrafficMirrorSessionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyTrafficMirrorSessionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyTrafficMirrorSessionRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyTrafficMirrorSessionResult

    /**
     Invokes the ModifyTransitGatewayVpcAttachment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyTransitGatewayVpcAttachmentRequest object being passed to this operation.
         - completion: The ModifyTransitGatewayVpcAttachmentResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyTransitGatewayVpcAttachmentResult
           object will be validated before being returned to caller.
     */
    func modifyTransitGatewayVpcAttachmentAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyTransitGatewayVpcAttachment operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The ModifyTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyTransitGatewayVpcAttachmentSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentResult

    /**
     Invokes the ModifyVolume operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVolumeRequest object being passed to this operation.
         - completion: The ModifyVolumeResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVolumeResult
           object will be validated before being returned to caller.
     */
    func modifyVolumeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyVolumeRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyVolumeResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyVolume operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVolumeRequest object being passed to this operation.
     - Returns: The ModifyVolumeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVolumeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyVolumeRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyVolumeResult

    /**
     Invokes the ModifyVolumeAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVolumeAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func modifyVolumeAttributeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyVolumeAttributeRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ModifyVolumeAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVolumeAttributeRequest object being passed to this operation.
     */
    func modifyVolumeAttributeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyVolumeAttributeRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the ModifyVpcAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func modifyVpcAttributeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyVpcAttributeRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ModifyVpcAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcAttributeRequest object being passed to this operation.
     */
    func modifyVpcAttributeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyVpcAttributeRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the ModifyVpcEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcEndpointRequest object being passed to this operation.
         - completion: The ModifyVpcEndpointResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpcEndpointResult
           object will be validated before being returned to caller.
     */
    func modifyVpcEndpointAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyVpcEndpointRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpcEndpointResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyVpcEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcEndpointRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcEndpointSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyVpcEndpointRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyVpcEndpointResult

    /**
     Invokes the ModifyVpcEndpointConnectionNotification operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcEndpointConnectionNotificationRequest object being passed to this operation.
         - completion: The ModifyVpcEndpointConnectionNotificationResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpcEndpointConnectionNotificationResult
           object will be validated before being returned to caller.
     */
    func modifyVpcEndpointConnectionNotificationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyVpcEndpointConnectionNotification operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcEndpointConnectionNotificationRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointConnectionNotificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcEndpointConnectionNotificationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationResult

    /**
     Invokes the ModifyVpcEndpointServiceConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcEndpointServiceConfigurationRequest object being passed to this operation.
         - completion: The ModifyVpcEndpointServiceConfigurationResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpcEndpointServiceConfigurationResult
           object will be validated before being returned to caller.
     */
    func modifyVpcEndpointServiceConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyVpcEndpointServiceConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcEndpointServiceConfigurationRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointServiceConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcEndpointServiceConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationResult

    /**
     Invokes the ModifyVpcEndpointServicePermissions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcEndpointServicePermissionsRequest object being passed to this operation.
         - completion: The ModifyVpcEndpointServicePermissionsResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpcEndpointServicePermissionsResult
           object will be validated before being returned to caller.
     */
    func modifyVpcEndpointServicePermissionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyVpcEndpointServicePermissions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcEndpointServicePermissionsRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointServicePermissionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcEndpointServicePermissionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsResult

    /**
     Invokes the ModifyVpcPeeringConnectionOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcPeeringConnectionOptionsRequest object being passed to this operation.
         - completion: The ModifyVpcPeeringConnectionOptionsResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpcPeeringConnectionOptionsResult
           object will be validated before being returned to caller.
     */
    func modifyVpcPeeringConnectionOptionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyVpcPeeringConnectionOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcPeeringConnectionOptionsRequest object being passed to this operation.
     - Returns: The ModifyVpcPeeringConnectionOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcPeeringConnectionOptionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsResult

    /**
     Invokes the ModifyVpcTenancy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcTenancyRequest object being passed to this operation.
         - completion: The ModifyVpcTenancyResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpcTenancyResult
           object will be validated before being returned to caller.
     */
    func modifyVpcTenancyAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyVpcTenancyRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpcTenancyResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyVpcTenancy operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcTenancyRequest object being passed to this operation.
     - Returns: The ModifyVpcTenancyResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcTenancySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyVpcTenancyRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyVpcTenancyResult

    /**
     Invokes the ModifyVpnConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpnConnectionRequest object being passed to this operation.
         - completion: The ModifyVpnConnectionResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpnConnectionResult
           object will be validated before being returned to caller.
     */
    func modifyVpnConnectionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyVpnConnectionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpnConnectionResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyVpnConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpnConnectionRequest object being passed to this operation.
     - Returns: The ModifyVpnConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpnConnectionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyVpnConnectionRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyVpnConnectionResult

    /**
     Invokes the ModifyVpnTunnelCertificate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpnTunnelCertificateRequest object being passed to this operation.
         - completion: The ModifyVpnTunnelCertificateResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpnTunnelCertificateResult
           object will be validated before being returned to caller.
     */
    func modifyVpnTunnelCertificateAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyVpnTunnelCertificateRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpnTunnelCertificateResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyVpnTunnelCertificate operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpnTunnelCertificateRequest object being passed to this operation.
     - Returns: The ModifyVpnTunnelCertificateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpnTunnelCertificateSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyVpnTunnelCertificateRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyVpnTunnelCertificateResult

    /**
     Invokes the ModifyVpnTunnelOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpnTunnelOptionsRequest object being passed to this operation.
         - completion: The ModifyVpnTunnelOptionsResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpnTunnelOptionsResult
           object will be validated before being returned to caller.
     */
    func modifyVpnTunnelOptionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyVpnTunnelOptionsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpnTunnelOptionsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyVpnTunnelOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpnTunnelOptionsRequest object being passed to this operation.
     - Returns: The ModifyVpnTunnelOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpnTunnelOptionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ModifyVpnTunnelOptionsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ModifyVpnTunnelOptionsResult

    /**
     Invokes the MonitorInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated MonitorInstancesRequest object being passed to this operation.
         - completion: The MonitorInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The MonitorInstancesResult
           object will be validated before being returned to caller.
     */
    func monitorInstancesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.MonitorInstancesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.MonitorInstancesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the MonitorInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated MonitorInstancesRequest object being passed to this operation.
     - Returns: The MonitorInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func monitorInstancesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.MonitorInstancesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.MonitorInstancesResult

    /**
     Invokes the MoveAddressToVpc operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated MoveAddressToVpcRequest object being passed to this operation.
         - completion: The MoveAddressToVpcResult object or an error will be passed to this 
           callback when the operation is complete. The MoveAddressToVpcResult
           object will be validated before being returned to caller.
     */
    func moveAddressToVpcAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.MoveAddressToVpcRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.MoveAddressToVpcResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the MoveAddressToVpc operation waiting for the response before returning.

     - Parameters:
         - input: The validated MoveAddressToVpcRequest object being passed to this operation.
     - Returns: The MoveAddressToVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func moveAddressToVpcSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.MoveAddressToVpcRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.MoveAddressToVpcResult

    /**
     Invokes the ProvisionByoipCidr operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ProvisionByoipCidrRequest object being passed to this operation.
         - completion: The ProvisionByoipCidrResult object or an error will be passed to this 
           callback when the operation is complete. The ProvisionByoipCidrResult
           object will be validated before being returned to caller.
     */
    func provisionByoipCidrAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ProvisionByoipCidrRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ProvisionByoipCidrResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ProvisionByoipCidr operation waiting for the response before returning.

     - Parameters:
         - input: The validated ProvisionByoipCidrRequest object being passed to this operation.
     - Returns: The ProvisionByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func provisionByoipCidrSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ProvisionByoipCidrRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ProvisionByoipCidrResult

    /**
     Invokes the PurchaseHostReservation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PurchaseHostReservationRequest object being passed to this operation.
         - completion: The PurchaseHostReservationResult object or an error will be passed to this 
           callback when the operation is complete. The PurchaseHostReservationResult
           object will be validated before being returned to caller.
     */
    func purchaseHostReservationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.PurchaseHostReservationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.PurchaseHostReservationResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the PurchaseHostReservation operation waiting for the response before returning.

     - Parameters:
         - input: The validated PurchaseHostReservationRequest object being passed to this operation.
     - Returns: The PurchaseHostReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func purchaseHostReservationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.PurchaseHostReservationRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.PurchaseHostReservationResult

    /**
     Invokes the PurchaseReservedInstancesOffering operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PurchaseReservedInstancesOfferingRequest object being passed to this operation.
         - completion: The PurchaseReservedInstancesOfferingResult object or an error will be passed to this 
           callback when the operation is complete. The PurchaseReservedInstancesOfferingResult
           object will be validated before being returned to caller.
     */
    func purchaseReservedInstancesOfferingAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.PurchaseReservedInstancesOfferingRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.PurchaseReservedInstancesOfferingResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the PurchaseReservedInstancesOffering operation waiting for the response before returning.

     - Parameters:
         - input: The validated PurchaseReservedInstancesOfferingRequest object being passed to this operation.
     - Returns: The PurchaseReservedInstancesOfferingResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func purchaseReservedInstancesOfferingSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.PurchaseReservedInstancesOfferingRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.PurchaseReservedInstancesOfferingResult

    /**
     Invokes the PurchaseScheduledInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PurchaseScheduledInstancesRequest object being passed to this operation.
         - completion: The PurchaseScheduledInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The PurchaseScheduledInstancesResult
           object will be validated before being returned to caller.
     */
    func purchaseScheduledInstancesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.PurchaseScheduledInstancesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.PurchaseScheduledInstancesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the PurchaseScheduledInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated PurchaseScheduledInstancesRequest object being passed to this operation.
     - Returns: The PurchaseScheduledInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func purchaseScheduledInstancesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.PurchaseScheduledInstancesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.PurchaseScheduledInstancesResult

    /**
     Invokes the RebootInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RebootInstancesRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func rebootInstancesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.RebootInstancesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RebootInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated RebootInstancesRequest object being passed to this operation.
     */
    func rebootInstancesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.RebootInstancesRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the RegisterImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterImageRequest object being passed to this operation.
         - completion: The RegisterImageResult object or an error will be passed to this 
           callback when the operation is complete. The RegisterImageResult
           object will be validated before being returned to caller.
     */
    func registerImageAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.RegisterImageRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.RegisterImageResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the RegisterImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterImageRequest object being passed to this operation.
     - Returns: The RegisterImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func registerImageSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.RegisterImageRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.RegisterImageResult

    /**
     Invokes the RegisterTransitGatewayMulticastGroupMembers operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterTransitGatewayMulticastGroupMembersRequest object being passed to this operation.
         - completion: The RegisterTransitGatewayMulticastGroupMembersResult object or an error will be passed to this 
           callback when the operation is complete. The RegisterTransitGatewayMulticastGroupMembersResult
           object will be validated before being returned to caller.
     */
    func registerTransitGatewayMulticastGroupMembersAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the RegisterTransitGatewayMulticastGroupMembers operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterTransitGatewayMulticastGroupMembersRequest object being passed to this operation.
     - Returns: The RegisterTransitGatewayMulticastGroupMembersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func registerTransitGatewayMulticastGroupMembersSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersResult

    /**
     Invokes the RegisterTransitGatewayMulticastGroupSources operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterTransitGatewayMulticastGroupSourcesRequest object being passed to this operation.
         - completion: The RegisterTransitGatewayMulticastGroupSourcesResult object or an error will be passed to this 
           callback when the operation is complete. The RegisterTransitGatewayMulticastGroupSourcesResult
           object will be validated before being returned to caller.
     */
    func registerTransitGatewayMulticastGroupSourcesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the RegisterTransitGatewayMulticastGroupSources operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterTransitGatewayMulticastGroupSourcesRequest object being passed to this operation.
     - Returns: The RegisterTransitGatewayMulticastGroupSourcesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func registerTransitGatewayMulticastGroupSourcesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesResult

    /**
     Invokes the RejectTransitGatewayPeeringAttachment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RejectTransitGatewayPeeringAttachmentRequest object being passed to this operation.
         - completion: The RejectTransitGatewayPeeringAttachmentResult object or an error will be passed to this 
           callback when the operation is complete. The RejectTransitGatewayPeeringAttachmentResult
           object will be validated before being returned to caller.
     */
    func rejectTransitGatewayPeeringAttachmentAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the RejectTransitGatewayPeeringAttachment operation waiting for the response before returning.

     - Parameters:
         - input: The validated RejectTransitGatewayPeeringAttachmentRequest object being passed to this operation.
     - Returns: The RejectTransitGatewayPeeringAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func rejectTransitGatewayPeeringAttachmentSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentResult

    /**
     Invokes the RejectTransitGatewayVpcAttachment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RejectTransitGatewayVpcAttachmentRequest object being passed to this operation.
         - completion: The RejectTransitGatewayVpcAttachmentResult object or an error will be passed to this 
           callback when the operation is complete. The RejectTransitGatewayVpcAttachmentResult
           object will be validated before being returned to caller.
     */
    func rejectTransitGatewayVpcAttachmentAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the RejectTransitGatewayVpcAttachment operation waiting for the response before returning.

     - Parameters:
         - input: The validated RejectTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The RejectTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func rejectTransitGatewayVpcAttachmentSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentResult

    /**
     Invokes the RejectVpcEndpointConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RejectVpcEndpointConnectionsRequest object being passed to this operation.
         - completion: The RejectVpcEndpointConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The RejectVpcEndpointConnectionsResult
           object will be validated before being returned to caller.
     */
    func rejectVpcEndpointConnectionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.RejectVpcEndpointConnectionsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.RejectVpcEndpointConnectionsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the RejectVpcEndpointConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated RejectVpcEndpointConnectionsRequest object being passed to this operation.
     - Returns: The RejectVpcEndpointConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func rejectVpcEndpointConnectionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.RejectVpcEndpointConnectionsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.RejectVpcEndpointConnectionsResult

    /**
     Invokes the RejectVpcPeeringConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RejectVpcPeeringConnectionRequest object being passed to this operation.
         - completion: The RejectVpcPeeringConnectionResult object or an error will be passed to this 
           callback when the operation is complete. The RejectVpcPeeringConnectionResult
           object will be validated before being returned to caller.
     */
    func rejectVpcPeeringConnectionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.RejectVpcPeeringConnectionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.RejectVpcPeeringConnectionResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the RejectVpcPeeringConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated RejectVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: The RejectVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func rejectVpcPeeringConnectionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.RejectVpcPeeringConnectionRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.RejectVpcPeeringConnectionResult

    /**
     Invokes the ReleaseAddress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReleaseAddressRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func releaseAddressAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ReleaseAddressRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ReleaseAddress operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReleaseAddressRequest object being passed to this operation.
     */
    func releaseAddressSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ReleaseAddressRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the ReleaseHosts operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReleaseHostsRequest object being passed to this operation.
         - completion: The ReleaseHostsResult object or an error will be passed to this 
           callback when the operation is complete. The ReleaseHostsResult
           object will be validated before being returned to caller.
     */
    func releaseHostsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ReleaseHostsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ReleaseHostsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ReleaseHosts operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReleaseHostsRequest object being passed to this operation.
     - Returns: The ReleaseHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func releaseHostsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ReleaseHostsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ReleaseHostsResult

    /**
     Invokes the ReplaceIamInstanceProfileAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReplaceIamInstanceProfileAssociationRequest object being passed to this operation.
         - completion: The ReplaceIamInstanceProfileAssociationResult object or an error will be passed to this 
           callback when the operation is complete. The ReplaceIamInstanceProfileAssociationResult
           object will be validated before being returned to caller.
     */
    func replaceIamInstanceProfileAssociationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ReplaceIamInstanceProfileAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReplaceIamInstanceProfileAssociationRequest object being passed to this operation.
     - Returns: The ReplaceIamInstanceProfileAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func replaceIamInstanceProfileAssociationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationResult

    /**
     Invokes the ReplaceNetworkAclAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReplaceNetworkAclAssociationRequest object being passed to this operation.
         - completion: The ReplaceNetworkAclAssociationResult object or an error will be passed to this 
           callback when the operation is complete. The ReplaceNetworkAclAssociationResult
           object will be validated before being returned to caller.
     */
    func replaceNetworkAclAssociationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ReplaceNetworkAclAssociationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ReplaceNetworkAclAssociationResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ReplaceNetworkAclAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReplaceNetworkAclAssociationRequest object being passed to this operation.
     - Returns: The ReplaceNetworkAclAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func replaceNetworkAclAssociationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ReplaceNetworkAclAssociationRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ReplaceNetworkAclAssociationResult

    /**
     Invokes the ReplaceNetworkAclEntry operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReplaceNetworkAclEntryRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func replaceNetworkAclEntryAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ReplaceNetworkAclEntryRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ReplaceNetworkAclEntry operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReplaceNetworkAclEntryRequest object being passed to this operation.
     */
    func replaceNetworkAclEntrySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ReplaceNetworkAclEntryRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the ReplaceRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReplaceRouteRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func replaceRouteAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ReplaceRouteRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ReplaceRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReplaceRouteRequest object being passed to this operation.
     */
    func replaceRouteSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ReplaceRouteRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the ReplaceRouteTableAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReplaceRouteTableAssociationRequest object being passed to this operation.
         - completion: The ReplaceRouteTableAssociationResult object or an error will be passed to this 
           callback when the operation is complete. The ReplaceRouteTableAssociationResult
           object will be validated before being returned to caller.
     */
    func replaceRouteTableAssociationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ReplaceRouteTableAssociationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ReplaceRouteTableAssociationResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ReplaceRouteTableAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReplaceRouteTableAssociationRequest object being passed to this operation.
     - Returns: The ReplaceRouteTableAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func replaceRouteTableAssociationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ReplaceRouteTableAssociationRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ReplaceRouteTableAssociationResult

    /**
     Invokes the ReplaceTransitGatewayRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReplaceTransitGatewayRouteRequest object being passed to this operation.
         - completion: The ReplaceTransitGatewayRouteResult object or an error will be passed to this 
           callback when the operation is complete. The ReplaceTransitGatewayRouteResult
           object will be validated before being returned to caller.
     */
    func replaceTransitGatewayRouteAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ReplaceTransitGatewayRouteRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ReplaceTransitGatewayRouteResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ReplaceTransitGatewayRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReplaceTransitGatewayRouteRequest object being passed to this operation.
     - Returns: The ReplaceTransitGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func replaceTransitGatewayRouteSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ReplaceTransitGatewayRouteRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ReplaceTransitGatewayRouteResult

    /**
     Invokes the ReportInstanceStatus operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReportInstanceStatusRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func reportInstanceStatusAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ReportInstanceStatusRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ReportInstanceStatus operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReportInstanceStatusRequest object being passed to this operation.
     */
    func reportInstanceStatusSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ReportInstanceStatusRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the RequestSpotFleet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RequestSpotFleetRequest object being passed to this operation.
         - completion: The RequestSpotFleetResponse object or an error will be passed to this 
           callback when the operation is complete. The RequestSpotFleetResponse
           object will be validated before being returned to caller.
     */
    func requestSpotFleetAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.RequestSpotFleetRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.RequestSpotFleetResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the RequestSpotFleet operation waiting for the response before returning.

     - Parameters:
         - input: The validated RequestSpotFleetRequest object being passed to this operation.
     - Returns: The RequestSpotFleetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func requestSpotFleetSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.RequestSpotFleetRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.RequestSpotFleetResponse

    /**
     Invokes the RequestSpotInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RequestSpotInstancesRequest object being passed to this operation.
         - completion: The RequestSpotInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The RequestSpotInstancesResult
           object will be validated before being returned to caller.
     */
    func requestSpotInstancesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.RequestSpotInstancesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.RequestSpotInstancesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the RequestSpotInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated RequestSpotInstancesRequest object being passed to this operation.
     - Returns: The RequestSpotInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func requestSpotInstancesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.RequestSpotInstancesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.RequestSpotInstancesResult

    /**
     Invokes the ResetEbsDefaultKmsKeyId operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetEbsDefaultKmsKeyIdRequest object being passed to this operation.
         - completion: The ResetEbsDefaultKmsKeyIdResult object or an error will be passed to this 
           callback when the operation is complete. The ResetEbsDefaultKmsKeyIdResult
           object will be validated before being returned to caller.
     */
    func resetEbsDefaultKmsKeyIdAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ResetEbsDefaultKmsKeyId operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetEbsDefaultKmsKeyIdRequest object being passed to this operation.
     - Returns: The ResetEbsDefaultKmsKeyIdResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func resetEbsDefaultKmsKeyIdSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdResult

    /**
     Invokes the ResetFpgaImageAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetFpgaImageAttributeRequest object being passed to this operation.
         - completion: The ResetFpgaImageAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The ResetFpgaImageAttributeResult
           object will be validated before being returned to caller.
     */
    func resetFpgaImageAttributeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ResetFpgaImageAttributeRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.ResetFpgaImageAttributeResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the ResetFpgaImageAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetFpgaImageAttributeRequest object being passed to this operation.
     - Returns: The ResetFpgaImageAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func resetFpgaImageAttributeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ResetFpgaImageAttributeRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.ResetFpgaImageAttributeResult

    /**
     Invokes the ResetImageAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetImageAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func resetImageAttributeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ResetImageAttributeRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ResetImageAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetImageAttributeRequest object being passed to this operation.
     */
    func resetImageAttributeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ResetImageAttributeRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the ResetInstanceAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetInstanceAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func resetInstanceAttributeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ResetInstanceAttributeRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ResetInstanceAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetInstanceAttributeRequest object being passed to this operation.
     */
    func resetInstanceAttributeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ResetInstanceAttributeRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the ResetNetworkInterfaceAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetNetworkInterfaceAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func resetNetworkInterfaceAttributeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ResetNetworkInterfaceAttributeRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ResetNetworkInterfaceAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetNetworkInterfaceAttributeRequest object being passed to this operation.
     */
    func resetNetworkInterfaceAttributeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ResetNetworkInterfaceAttributeRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the ResetSnapshotAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetSnapshotAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func resetSnapshotAttributeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ResetSnapshotAttributeRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ResetSnapshotAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetSnapshotAttributeRequest object being passed to this operation.
     */
    func resetSnapshotAttributeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.ResetSnapshotAttributeRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the RestoreAddressToClassic operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreAddressToClassicRequest object being passed to this operation.
         - completion: The RestoreAddressToClassicResult object or an error will be passed to this 
           callback when the operation is complete. The RestoreAddressToClassicResult
           object will be validated before being returned to caller.
     */
    func restoreAddressToClassicAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.RestoreAddressToClassicRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.RestoreAddressToClassicResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the RestoreAddressToClassic operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreAddressToClassicRequest object being passed to this operation.
     - Returns: The RestoreAddressToClassicResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func restoreAddressToClassicSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.RestoreAddressToClassicRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.RestoreAddressToClassicResult

    /**
     Invokes the RevokeClientVpnIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RevokeClientVpnIngressRequest object being passed to this operation.
         - completion: The RevokeClientVpnIngressResult object or an error will be passed to this 
           callback when the operation is complete. The RevokeClientVpnIngressResult
           object will be validated before being returned to caller.
     */
    func revokeClientVpnIngressAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.RevokeClientVpnIngressRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.RevokeClientVpnIngressResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the RevokeClientVpnIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated RevokeClientVpnIngressRequest object being passed to this operation.
     - Returns: The RevokeClientVpnIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func revokeClientVpnIngressSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.RevokeClientVpnIngressRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.RevokeClientVpnIngressResult

    /**
     Invokes the RevokeSecurityGroupEgress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RevokeSecurityGroupEgressRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func revokeSecurityGroupEgressAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.RevokeSecurityGroupEgressRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RevokeSecurityGroupEgress operation waiting for the response before returning.

     - Parameters:
         - input: The validated RevokeSecurityGroupEgressRequest object being passed to this operation.
     */
    func revokeSecurityGroupEgressSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.RevokeSecurityGroupEgressRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the RevokeSecurityGroupIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RevokeSecurityGroupIngressRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func revokeSecurityGroupIngressAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.RevokeSecurityGroupIngressRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RevokeSecurityGroupIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated RevokeSecurityGroupIngressRequest object being passed to this operation.
     */
    func revokeSecurityGroupIngressSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.RevokeSecurityGroupIngressRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the RunInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RunInstancesRequest object being passed to this operation.
         - completion: The Reservation object or an error will be passed to this 
           callback when the operation is complete. The Reservation
           object will be validated before being returned to caller.
     */
    func runInstancesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.RunInstancesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.Reservation, HTTPClientError>) -> ()) throws

    /**
     Invokes the RunInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated RunInstancesRequest object being passed to this operation.
     - Returns: The Reservation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func runInstancesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.RunInstancesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.Reservation

    /**
     Invokes the RunScheduledInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RunScheduledInstancesRequest object being passed to this operation.
         - completion: The RunScheduledInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The RunScheduledInstancesResult
           object will be validated before being returned to caller.
     */
    func runScheduledInstancesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.RunScheduledInstancesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.RunScheduledInstancesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the RunScheduledInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated RunScheduledInstancesRequest object being passed to this operation.
     - Returns: The RunScheduledInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func runScheduledInstancesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.RunScheduledInstancesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.RunScheduledInstancesResult

    /**
     Invokes the SearchLocalGatewayRoutes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SearchLocalGatewayRoutesRequest object being passed to this operation.
         - completion: The SearchLocalGatewayRoutesResult object or an error will be passed to this 
           callback when the operation is complete. The SearchLocalGatewayRoutesResult
           object will be validated before being returned to caller.
     */
    func searchLocalGatewayRoutesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.SearchLocalGatewayRoutesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.SearchLocalGatewayRoutesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the SearchLocalGatewayRoutes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SearchLocalGatewayRoutesRequest object being passed to this operation.
     - Returns: The SearchLocalGatewayRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func searchLocalGatewayRoutesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.SearchLocalGatewayRoutesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.SearchLocalGatewayRoutesResult

    /**
     Invokes the SearchTransitGatewayMulticastGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SearchTransitGatewayMulticastGroupsRequest object being passed to this operation.
         - completion: The SearchTransitGatewayMulticastGroupsResult object or an error will be passed to this 
           callback when the operation is complete. The SearchTransitGatewayMulticastGroupsResult
           object will be validated before being returned to caller.
     */
    func searchTransitGatewayMulticastGroupsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the SearchTransitGatewayMulticastGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated SearchTransitGatewayMulticastGroupsRequest object being passed to this operation.
     - Returns: The SearchTransitGatewayMulticastGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func searchTransitGatewayMulticastGroupsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsResult

    /**
     Invokes the SearchTransitGatewayRoutes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SearchTransitGatewayRoutesRequest object being passed to this operation.
         - completion: The SearchTransitGatewayRoutesResult object or an error will be passed to this 
           callback when the operation is complete. The SearchTransitGatewayRoutesResult
           object will be validated before being returned to caller.
     */
    func searchTransitGatewayRoutesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.SearchTransitGatewayRoutesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.SearchTransitGatewayRoutesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the SearchTransitGatewayRoutes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SearchTransitGatewayRoutesRequest object being passed to this operation.
     - Returns: The SearchTransitGatewayRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func searchTransitGatewayRoutesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.SearchTransitGatewayRoutesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.SearchTransitGatewayRoutesResult

    /**
     Invokes the SendDiagnosticInterrupt operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SendDiagnosticInterruptRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func sendDiagnosticInterruptAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.SendDiagnosticInterruptRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the SendDiagnosticInterrupt operation waiting for the response before returning.

     - Parameters:
         - input: The validated SendDiagnosticInterruptRequest object being passed to this operation.
     */
    func sendDiagnosticInterruptSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.SendDiagnosticInterruptRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the StartInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartInstancesRequest object being passed to this operation.
         - completion: The StartInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The StartInstancesResult
           object will be validated before being returned to caller.
     */
    func startInstancesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.StartInstancesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.StartInstancesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the StartInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartInstancesRequest object being passed to this operation.
     - Returns: The StartInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func startInstancesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.StartInstancesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.StartInstancesResult

    /**
     Invokes the StartVpcEndpointServicePrivateDnsVerification operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartVpcEndpointServicePrivateDnsVerificationRequest object being passed to this operation.
         - completion: The StartVpcEndpointServicePrivateDnsVerificationResult object or an error will be passed to this 
           callback when the operation is complete. The StartVpcEndpointServicePrivateDnsVerificationResult
           object will be validated before being returned to caller.
     */
    func startVpcEndpointServicePrivateDnsVerificationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the StartVpcEndpointServicePrivateDnsVerification operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartVpcEndpointServicePrivateDnsVerificationRequest object being passed to this operation.
     - Returns: The StartVpcEndpointServicePrivateDnsVerificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func startVpcEndpointServicePrivateDnsVerificationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationResult

    /**
     Invokes the StopInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopInstancesRequest object being passed to this operation.
         - completion: The StopInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The StopInstancesResult
           object will be validated before being returned to caller.
     */
    func stopInstancesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.StopInstancesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.StopInstancesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the StopInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopInstancesRequest object being passed to this operation.
     - Returns: The StopInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func stopInstancesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.StopInstancesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.StopInstancesResult

    /**
     Invokes the TerminateClientVpnConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TerminateClientVpnConnectionsRequest object being passed to this operation.
         - completion: The TerminateClientVpnConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The TerminateClientVpnConnectionsResult
           object will be validated before being returned to caller.
     */
    func terminateClientVpnConnectionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.TerminateClientVpnConnectionsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.TerminateClientVpnConnectionsResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the TerminateClientVpnConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated TerminateClientVpnConnectionsRequest object being passed to this operation.
     - Returns: The TerminateClientVpnConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func terminateClientVpnConnectionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.TerminateClientVpnConnectionsRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.TerminateClientVpnConnectionsResult

    /**
     Invokes the TerminateInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TerminateInstancesRequest object being passed to this operation.
         - completion: The TerminateInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The TerminateInstancesResult
           object will be validated before being returned to caller.
     */
    func terminateInstancesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.TerminateInstancesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.TerminateInstancesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the TerminateInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated TerminateInstancesRequest object being passed to this operation.
     - Returns: The TerminateInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func terminateInstancesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.TerminateInstancesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.TerminateInstancesResult

    /**
     Invokes the UnassignIpv6Addresses operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UnassignIpv6AddressesRequest object being passed to this operation.
         - completion: The UnassignIpv6AddressesResult object or an error will be passed to this 
           callback when the operation is complete. The UnassignIpv6AddressesResult
           object will be validated before being returned to caller.
     */
    func unassignIpv6AddressesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.UnassignIpv6AddressesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.UnassignIpv6AddressesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the UnassignIpv6Addresses operation waiting for the response before returning.

     - Parameters:
         - input: The validated UnassignIpv6AddressesRequest object being passed to this operation.
     - Returns: The UnassignIpv6AddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func unassignIpv6AddressesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.UnassignIpv6AddressesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.UnassignIpv6AddressesResult

    /**
     Invokes the UnassignPrivateIpAddresses operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UnassignPrivateIpAddressesRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func unassignPrivateIpAddressesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.UnassignPrivateIpAddressesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the UnassignPrivateIpAddresses operation waiting for the response before returning.

     - Parameters:
         - input: The validated UnassignPrivateIpAddressesRequest object being passed to this operation.
     */
    func unassignPrivateIpAddressesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.UnassignPrivateIpAddressesRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the UnmonitorInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UnmonitorInstancesRequest object being passed to this operation.
         - completion: The UnmonitorInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The UnmonitorInstancesResult
           object will be validated before being returned to caller.
     */
    func unmonitorInstancesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.UnmonitorInstancesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.UnmonitorInstancesResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the UnmonitorInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated UnmonitorInstancesRequest object being passed to this operation.
     - Returns: The UnmonitorInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func unmonitorInstancesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.UnmonitorInstancesRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.UnmonitorInstancesResult

    /**
     Invokes the UpdateSecurityGroupRuleDescriptionsEgress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateSecurityGroupRuleDescriptionsEgressRequest object being passed to this operation.
         - completion: The UpdateSecurityGroupRuleDescriptionsEgressResult object or an error will be passed to this 
           callback when the operation is complete. The UpdateSecurityGroupRuleDescriptionsEgressResult
           object will be validated before being returned to caller.
     */
    func updateSecurityGroupRuleDescriptionsEgressAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the UpdateSecurityGroupRuleDescriptionsEgress operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateSecurityGroupRuleDescriptionsEgressRequest object being passed to this operation.
     - Returns: The UpdateSecurityGroupRuleDescriptionsEgressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func updateSecurityGroupRuleDescriptionsEgressSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressResult

    /**
     Invokes the UpdateSecurityGroupRuleDescriptionsIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateSecurityGroupRuleDescriptionsIngressRequest object being passed to this operation.
         - completion: The UpdateSecurityGroupRuleDescriptionsIngressResult object or an error will be passed to this 
           callback when the operation is complete. The UpdateSecurityGroupRuleDescriptionsIngressResult
           object will be validated before being returned to caller.
     */
    func updateSecurityGroupRuleDescriptionsIngressAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the UpdateSecurityGroupRuleDescriptionsIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateSecurityGroupRuleDescriptionsIngressRequest object being passed to this operation.
     - Returns: The UpdateSecurityGroupRuleDescriptionsIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func updateSecurityGroupRuleDescriptionsIngressSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressResult

    /**
     Invokes the WithdrawByoipCidr operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated WithdrawByoipCidrRequest object being passed to this operation.
         - completion: The WithdrawByoipCidrResult object or an error will be passed to this 
           callback when the operation is complete. The WithdrawByoipCidrResult
           object will be validated before being returned to caller.
     */
    func withdrawByoipCidrAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.WithdrawByoipCidrRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticComputeCloudModel.WithdrawByoipCidrResult, HTTPClientError>) -> ()) throws

    /**
     Invokes the WithdrawByoipCidr operation waiting for the response before returning.

     - Parameters:
         - input: The validated WithdrawByoipCidrRequest object being passed to this operation.
     - Returns: The WithdrawByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func withdrawByoipCidrSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticComputeCloudModel.WithdrawByoipCidrRequest,
            reporting: InvocationReportingType) throws -> ElasticComputeCloudModel.WithdrawByoipCidrResult
}
