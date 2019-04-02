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
// ElasticComputeCloudOperationsClientOutput.swift
// ElasticComputeCloudClient
//

import Foundation
import SmokeHTTPClient
import ElasticComputeCloudModel

/**
 Type to handle the output from the AcceptReservedInstancesExchangeQuote operation in a HTTP client.
 */
extension AcceptReservedInstancesExchangeQuoteResult: HTTPResponseOutputProtocol {
    public typealias BodyType = AcceptReservedInstancesExchangeQuoteResult
    public typealias HeadersType = AcceptReservedInstancesExchangeQuoteResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AcceptReservedInstancesExchangeQuoteResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the AcceptTransitGatewayVpcAttachment operation in a HTTP client.
 */
extension AcceptTransitGatewayVpcAttachmentResult: HTTPResponseOutputProtocol {
    public typealias BodyType = AcceptTransitGatewayVpcAttachmentResult
    public typealias HeadersType = AcceptTransitGatewayVpcAttachmentResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AcceptTransitGatewayVpcAttachmentResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the AcceptVpcEndpointConnections operation in a HTTP client.
 */
extension AcceptVpcEndpointConnectionsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = AcceptVpcEndpointConnectionsResult
    public typealias HeadersType = AcceptVpcEndpointConnectionsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AcceptVpcEndpointConnectionsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the AcceptVpcPeeringConnection operation in a HTTP client.
 */
extension AcceptVpcPeeringConnectionResult: HTTPResponseOutputProtocol {
    public typealias BodyType = AcceptVpcPeeringConnectionResult
    public typealias HeadersType = AcceptVpcPeeringConnectionResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AcceptVpcPeeringConnectionResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the AdvertiseByoipCidr operation in a HTTP client.
 */
extension AdvertiseByoipCidrResult: HTTPResponseOutputProtocol {
    public typealias BodyType = AdvertiseByoipCidrResult
    public typealias HeadersType = AdvertiseByoipCidrResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AdvertiseByoipCidrResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the AllocateAddress operation in a HTTP client.
 */
extension AllocateAddressResult: HTTPResponseOutputProtocol {
    public typealias BodyType = AllocateAddressResult
    public typealias HeadersType = AllocateAddressResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AllocateAddressResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the AllocateHosts operation in a HTTP client.
 */
extension AllocateHostsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = AllocateHostsResult
    public typealias HeadersType = AllocateHostsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AllocateHostsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ApplySecurityGroupsToClientVpnTargetNetwork operation in a HTTP client.
 */
extension ApplySecurityGroupsToClientVpnTargetNetworkResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ApplySecurityGroupsToClientVpnTargetNetworkResult
    public typealias HeadersType = ApplySecurityGroupsToClientVpnTargetNetworkResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ApplySecurityGroupsToClientVpnTargetNetworkResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the AssignIpv6Addresses operation in a HTTP client.
 */
extension AssignIpv6AddressesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = AssignIpv6AddressesResult
    public typealias HeadersType = AssignIpv6AddressesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AssignIpv6AddressesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the AssociateAddress operation in a HTTP client.
 */
extension AssociateAddressResult: HTTPResponseOutputProtocol {
    public typealias BodyType = AssociateAddressResult
    public typealias HeadersType = AssociateAddressResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AssociateAddressResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the AssociateClientVpnTargetNetwork operation in a HTTP client.
 */
extension AssociateClientVpnTargetNetworkResult: HTTPResponseOutputProtocol {
    public typealias BodyType = AssociateClientVpnTargetNetworkResult
    public typealias HeadersType = AssociateClientVpnTargetNetworkResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AssociateClientVpnTargetNetworkResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the AssociateIamInstanceProfile operation in a HTTP client.
 */
extension AssociateIamInstanceProfileResult: HTTPResponseOutputProtocol {
    public typealias BodyType = AssociateIamInstanceProfileResult
    public typealias HeadersType = AssociateIamInstanceProfileResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AssociateIamInstanceProfileResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the AssociateRouteTable operation in a HTTP client.
 */
extension AssociateRouteTableResult: HTTPResponseOutputProtocol {
    public typealias BodyType = AssociateRouteTableResult
    public typealias HeadersType = AssociateRouteTableResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AssociateRouteTableResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the AssociateSubnetCidrBlock operation in a HTTP client.
 */
extension AssociateSubnetCidrBlockResult: HTTPResponseOutputProtocol {
    public typealias BodyType = AssociateSubnetCidrBlockResult
    public typealias HeadersType = AssociateSubnetCidrBlockResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AssociateSubnetCidrBlockResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the AssociateTransitGatewayRouteTable operation in a HTTP client.
 */
extension AssociateTransitGatewayRouteTableResult: HTTPResponseOutputProtocol {
    public typealias BodyType = AssociateTransitGatewayRouteTableResult
    public typealias HeadersType = AssociateTransitGatewayRouteTableResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AssociateTransitGatewayRouteTableResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the AssociateVpcCidrBlock operation in a HTTP client.
 */
extension AssociateVpcCidrBlockResult: HTTPResponseOutputProtocol {
    public typealias BodyType = AssociateVpcCidrBlockResult
    public typealias HeadersType = AssociateVpcCidrBlockResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AssociateVpcCidrBlockResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the AttachClassicLinkVpc operation in a HTTP client.
 */
extension AttachClassicLinkVpcResult: HTTPResponseOutputProtocol {
    public typealias BodyType = AttachClassicLinkVpcResult
    public typealias HeadersType = AttachClassicLinkVpcResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AttachClassicLinkVpcResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the AttachNetworkInterface operation in a HTTP client.
 */
extension AttachNetworkInterfaceResult: HTTPResponseOutputProtocol {
    public typealias BodyType = AttachNetworkInterfaceResult
    public typealias HeadersType = AttachNetworkInterfaceResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AttachNetworkInterfaceResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the AttachVolume operation in a HTTP client.
 */
extension VolumeAttachment: HTTPResponseOutputProtocol {
    public typealias BodyType = VolumeAttachment
    public typealias HeadersType = VolumeAttachment

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> VolumeAttachment {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the AttachVpnGateway operation in a HTTP client.
 */
extension AttachVpnGatewayResult: HTTPResponseOutputProtocol {
    public typealias BodyType = AttachVpnGatewayResult
    public typealias HeadersType = AttachVpnGatewayResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AttachVpnGatewayResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the AuthorizeClientVpnIngress operation in a HTTP client.
 */
extension AuthorizeClientVpnIngressResult: HTTPResponseOutputProtocol {
    public typealias BodyType = AuthorizeClientVpnIngressResult
    public typealias HeadersType = AuthorizeClientVpnIngressResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AuthorizeClientVpnIngressResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the BundleInstance operation in a HTTP client.
 */
extension BundleInstanceResult: HTTPResponseOutputProtocol {
    public typealias BodyType = BundleInstanceResult
    public typealias HeadersType = BundleInstanceResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> BundleInstanceResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CancelBundleTask operation in a HTTP client.
 */
extension CancelBundleTaskResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CancelBundleTaskResult
    public typealias HeadersType = CancelBundleTaskResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CancelBundleTaskResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CancelCapacityReservation operation in a HTTP client.
 */
extension CancelCapacityReservationResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CancelCapacityReservationResult
    public typealias HeadersType = CancelCapacityReservationResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CancelCapacityReservationResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CancelImportTask operation in a HTTP client.
 */
extension CancelImportTaskResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CancelImportTaskResult
    public typealias HeadersType = CancelImportTaskResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CancelImportTaskResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CancelReservedInstancesListing operation in a HTTP client.
 */
extension CancelReservedInstancesListingResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CancelReservedInstancesListingResult
    public typealias HeadersType = CancelReservedInstancesListingResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CancelReservedInstancesListingResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CancelSpotFleetRequests operation in a HTTP client.
 */
extension CancelSpotFleetRequestsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = CancelSpotFleetRequestsResponse
    public typealias HeadersType = CancelSpotFleetRequestsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CancelSpotFleetRequestsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CancelSpotInstanceRequests operation in a HTTP client.
 */
extension CancelSpotInstanceRequestsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CancelSpotInstanceRequestsResult
    public typealias HeadersType = CancelSpotInstanceRequestsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CancelSpotInstanceRequestsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ConfirmProductInstance operation in a HTTP client.
 */
extension ConfirmProductInstanceResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ConfirmProductInstanceResult
    public typealias HeadersType = ConfirmProductInstanceResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ConfirmProductInstanceResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CopyFpgaImage operation in a HTTP client.
 */
extension CopyFpgaImageResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CopyFpgaImageResult
    public typealias HeadersType = CopyFpgaImageResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CopyFpgaImageResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CopyImage operation in a HTTP client.
 */
extension CopyImageResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CopyImageResult
    public typealias HeadersType = CopyImageResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CopyImageResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CopySnapshot operation in a HTTP client.
 */
extension CopySnapshotResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CopySnapshotResult
    public typealias HeadersType = CopySnapshotResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CopySnapshotResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateCapacityReservation operation in a HTTP client.
 */
extension CreateCapacityReservationResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateCapacityReservationResult
    public typealias HeadersType = CreateCapacityReservationResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateCapacityReservationResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateClientVpnEndpoint operation in a HTTP client.
 */
extension CreateClientVpnEndpointResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateClientVpnEndpointResult
    public typealias HeadersType = CreateClientVpnEndpointResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateClientVpnEndpointResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateClientVpnRoute operation in a HTTP client.
 */
extension CreateClientVpnRouteResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateClientVpnRouteResult
    public typealias HeadersType = CreateClientVpnRouteResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateClientVpnRouteResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateCustomerGateway operation in a HTTP client.
 */
extension CreateCustomerGatewayResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateCustomerGatewayResult
    public typealias HeadersType = CreateCustomerGatewayResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateCustomerGatewayResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateDefaultSubnet operation in a HTTP client.
 */
extension CreateDefaultSubnetResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateDefaultSubnetResult
    public typealias HeadersType = CreateDefaultSubnetResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateDefaultSubnetResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateDefaultVpc operation in a HTTP client.
 */
extension CreateDefaultVpcResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateDefaultVpcResult
    public typealias HeadersType = CreateDefaultVpcResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateDefaultVpcResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateDhcpOptions operation in a HTTP client.
 */
extension CreateDhcpOptionsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateDhcpOptionsResult
    public typealias HeadersType = CreateDhcpOptionsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateDhcpOptionsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateEgressOnlyInternetGateway operation in a HTTP client.
 */
extension CreateEgressOnlyInternetGatewayResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateEgressOnlyInternetGatewayResult
    public typealias HeadersType = CreateEgressOnlyInternetGatewayResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateEgressOnlyInternetGatewayResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateFleet operation in a HTTP client.
 */
extension CreateFleetResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateFleetResult
    public typealias HeadersType = CreateFleetResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateFleetResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateFlowLogs operation in a HTTP client.
 */
extension CreateFlowLogsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateFlowLogsResult
    public typealias HeadersType = CreateFlowLogsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateFlowLogsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateFpgaImage operation in a HTTP client.
 */
extension CreateFpgaImageResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateFpgaImageResult
    public typealias HeadersType = CreateFpgaImageResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateFpgaImageResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateImage operation in a HTTP client.
 */
extension CreateImageResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateImageResult
    public typealias HeadersType = CreateImageResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateImageResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateInstanceExportTask operation in a HTTP client.
 */
extension CreateInstanceExportTaskResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateInstanceExportTaskResult
    public typealias HeadersType = CreateInstanceExportTaskResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateInstanceExportTaskResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateInternetGateway operation in a HTTP client.
 */
extension CreateInternetGatewayResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateInternetGatewayResult
    public typealias HeadersType = CreateInternetGatewayResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateInternetGatewayResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateKeyPair operation in a HTTP client.
 */
extension KeyPair: HTTPResponseOutputProtocol {
    public typealias BodyType = KeyPair
    public typealias HeadersType = KeyPair

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> KeyPair {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateLaunchTemplate operation in a HTTP client.
 */
extension CreateLaunchTemplateResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateLaunchTemplateResult
    public typealias HeadersType = CreateLaunchTemplateResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateLaunchTemplateResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateLaunchTemplateVersion operation in a HTTP client.
 */
extension CreateLaunchTemplateVersionResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateLaunchTemplateVersionResult
    public typealias HeadersType = CreateLaunchTemplateVersionResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateLaunchTemplateVersionResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateNatGateway operation in a HTTP client.
 */
extension CreateNatGatewayResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateNatGatewayResult
    public typealias HeadersType = CreateNatGatewayResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateNatGatewayResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateNetworkAcl operation in a HTTP client.
 */
extension CreateNetworkAclResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateNetworkAclResult
    public typealias HeadersType = CreateNetworkAclResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateNetworkAclResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateNetworkInterface operation in a HTTP client.
 */
extension CreateNetworkInterfaceResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateNetworkInterfaceResult
    public typealias HeadersType = CreateNetworkInterfaceResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateNetworkInterfaceResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateNetworkInterfacePermission operation in a HTTP client.
 */
extension CreateNetworkInterfacePermissionResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateNetworkInterfacePermissionResult
    public typealias HeadersType = CreateNetworkInterfacePermissionResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateNetworkInterfacePermissionResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateReservedInstancesListing operation in a HTTP client.
 */
extension CreateReservedInstancesListingResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateReservedInstancesListingResult
    public typealias HeadersType = CreateReservedInstancesListingResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateReservedInstancesListingResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateRoute operation in a HTTP client.
 */
extension CreateRouteResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateRouteResult
    public typealias HeadersType = CreateRouteResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateRouteResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateRouteTable operation in a HTTP client.
 */
extension CreateRouteTableResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateRouteTableResult
    public typealias HeadersType = CreateRouteTableResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateRouteTableResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateSecurityGroup operation in a HTTP client.
 */
extension CreateSecurityGroupResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateSecurityGroupResult
    public typealias HeadersType = CreateSecurityGroupResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateSecurityGroupResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateSnapshot operation in a HTTP client.
 */
extension Snapshot: HTTPResponseOutputProtocol {
    public typealias BodyType = Snapshot
    public typealias HeadersType = Snapshot

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> Snapshot {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateSpotDatafeedSubscription operation in a HTTP client.
 */
extension CreateSpotDatafeedSubscriptionResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateSpotDatafeedSubscriptionResult
    public typealias HeadersType = CreateSpotDatafeedSubscriptionResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateSpotDatafeedSubscriptionResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateSubnet operation in a HTTP client.
 */
extension CreateSubnetResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateSubnetResult
    public typealias HeadersType = CreateSubnetResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateSubnetResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateTransitGateway operation in a HTTP client.
 */
extension CreateTransitGatewayResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateTransitGatewayResult
    public typealias HeadersType = CreateTransitGatewayResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateTransitGatewayResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateTransitGatewayRoute operation in a HTTP client.
 */
extension CreateTransitGatewayRouteResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateTransitGatewayRouteResult
    public typealias HeadersType = CreateTransitGatewayRouteResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateTransitGatewayRouteResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateTransitGatewayRouteTable operation in a HTTP client.
 */
extension CreateTransitGatewayRouteTableResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateTransitGatewayRouteTableResult
    public typealias HeadersType = CreateTransitGatewayRouteTableResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateTransitGatewayRouteTableResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateTransitGatewayVpcAttachment operation in a HTTP client.
 */
extension CreateTransitGatewayVpcAttachmentResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateTransitGatewayVpcAttachmentResult
    public typealias HeadersType = CreateTransitGatewayVpcAttachmentResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateTransitGatewayVpcAttachmentResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateVolume operation in a HTTP client.
 */
extension Volume: HTTPResponseOutputProtocol {
    public typealias BodyType = Volume
    public typealias HeadersType = Volume

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> Volume {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateVpc operation in a HTTP client.
 */
extension CreateVpcResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateVpcResult
    public typealias HeadersType = CreateVpcResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateVpcResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateVpcEndpoint operation in a HTTP client.
 */
extension CreateVpcEndpointResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateVpcEndpointResult
    public typealias HeadersType = CreateVpcEndpointResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateVpcEndpointResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateVpcEndpointConnectionNotification operation in a HTTP client.
 */
extension CreateVpcEndpointConnectionNotificationResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateVpcEndpointConnectionNotificationResult
    public typealias HeadersType = CreateVpcEndpointConnectionNotificationResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateVpcEndpointConnectionNotificationResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateVpcEndpointServiceConfiguration operation in a HTTP client.
 */
extension CreateVpcEndpointServiceConfigurationResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateVpcEndpointServiceConfigurationResult
    public typealias HeadersType = CreateVpcEndpointServiceConfigurationResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateVpcEndpointServiceConfigurationResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateVpcPeeringConnection operation in a HTTP client.
 */
extension CreateVpcPeeringConnectionResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateVpcPeeringConnectionResult
    public typealias HeadersType = CreateVpcPeeringConnectionResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateVpcPeeringConnectionResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateVpnConnection operation in a HTTP client.
 */
extension CreateVpnConnectionResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateVpnConnectionResult
    public typealias HeadersType = CreateVpnConnectionResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateVpnConnectionResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateVpnGateway operation in a HTTP client.
 */
extension CreateVpnGatewayResult: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateVpnGatewayResult
    public typealias HeadersType = CreateVpnGatewayResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateVpnGatewayResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteClientVpnEndpoint operation in a HTTP client.
 */
extension DeleteClientVpnEndpointResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteClientVpnEndpointResult
    public typealias HeadersType = DeleteClientVpnEndpointResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteClientVpnEndpointResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteClientVpnRoute operation in a HTTP client.
 */
extension DeleteClientVpnRouteResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteClientVpnRouteResult
    public typealias HeadersType = DeleteClientVpnRouteResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteClientVpnRouteResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteEgressOnlyInternetGateway operation in a HTTP client.
 */
extension DeleteEgressOnlyInternetGatewayResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteEgressOnlyInternetGatewayResult
    public typealias HeadersType = DeleteEgressOnlyInternetGatewayResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteEgressOnlyInternetGatewayResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteFleets operation in a HTTP client.
 */
extension DeleteFleetsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteFleetsResult
    public typealias HeadersType = DeleteFleetsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteFleetsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteFlowLogs operation in a HTTP client.
 */
extension DeleteFlowLogsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteFlowLogsResult
    public typealias HeadersType = DeleteFlowLogsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteFlowLogsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteFpgaImage operation in a HTTP client.
 */
extension DeleteFpgaImageResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteFpgaImageResult
    public typealias HeadersType = DeleteFpgaImageResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteFpgaImageResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteLaunchTemplate operation in a HTTP client.
 */
extension DeleteLaunchTemplateResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteLaunchTemplateResult
    public typealias HeadersType = DeleteLaunchTemplateResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteLaunchTemplateResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteLaunchTemplateVersions operation in a HTTP client.
 */
extension DeleteLaunchTemplateVersionsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteLaunchTemplateVersionsResult
    public typealias HeadersType = DeleteLaunchTemplateVersionsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteLaunchTemplateVersionsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteNatGateway operation in a HTTP client.
 */
extension DeleteNatGatewayResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteNatGatewayResult
    public typealias HeadersType = DeleteNatGatewayResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteNatGatewayResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteNetworkInterfacePermission operation in a HTTP client.
 */
extension DeleteNetworkInterfacePermissionResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteNetworkInterfacePermissionResult
    public typealias HeadersType = DeleteNetworkInterfacePermissionResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteNetworkInterfacePermissionResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteTransitGateway operation in a HTTP client.
 */
extension DeleteTransitGatewayResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteTransitGatewayResult
    public typealias HeadersType = DeleteTransitGatewayResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteTransitGatewayResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteTransitGatewayRoute operation in a HTTP client.
 */
extension DeleteTransitGatewayRouteResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteTransitGatewayRouteResult
    public typealias HeadersType = DeleteTransitGatewayRouteResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteTransitGatewayRouteResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteTransitGatewayRouteTable operation in a HTTP client.
 */
extension DeleteTransitGatewayRouteTableResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteTransitGatewayRouteTableResult
    public typealias HeadersType = DeleteTransitGatewayRouteTableResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteTransitGatewayRouteTableResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteTransitGatewayVpcAttachment operation in a HTTP client.
 */
extension DeleteTransitGatewayVpcAttachmentResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteTransitGatewayVpcAttachmentResult
    public typealias HeadersType = DeleteTransitGatewayVpcAttachmentResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteTransitGatewayVpcAttachmentResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteVpcEndpointConnectionNotifications operation in a HTTP client.
 */
extension DeleteVpcEndpointConnectionNotificationsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteVpcEndpointConnectionNotificationsResult
    public typealias HeadersType = DeleteVpcEndpointConnectionNotificationsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteVpcEndpointConnectionNotificationsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteVpcEndpointServiceConfigurations operation in a HTTP client.
 */
extension DeleteVpcEndpointServiceConfigurationsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteVpcEndpointServiceConfigurationsResult
    public typealias HeadersType = DeleteVpcEndpointServiceConfigurationsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteVpcEndpointServiceConfigurationsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteVpcEndpoints operation in a HTTP client.
 */
extension DeleteVpcEndpointsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteVpcEndpointsResult
    public typealias HeadersType = DeleteVpcEndpointsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteVpcEndpointsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteVpcPeeringConnection operation in a HTTP client.
 */
extension DeleteVpcPeeringConnectionResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteVpcPeeringConnectionResult
    public typealias HeadersType = DeleteVpcPeeringConnectionResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteVpcPeeringConnectionResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeprovisionByoipCidr operation in a HTTP client.
 */
extension DeprovisionByoipCidrResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DeprovisionByoipCidrResult
    public typealias HeadersType = DeprovisionByoipCidrResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeprovisionByoipCidrResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeAccountAttributes operation in a HTTP client.
 */
extension DescribeAccountAttributesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeAccountAttributesResult
    public typealias HeadersType = DescribeAccountAttributesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeAccountAttributesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeAddresses operation in a HTTP client.
 */
extension DescribeAddressesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeAddressesResult
    public typealias HeadersType = DescribeAddressesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeAddressesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeAggregateIdFormat operation in a HTTP client.
 */
extension DescribeAggregateIdFormatResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeAggregateIdFormatResult
    public typealias HeadersType = DescribeAggregateIdFormatResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeAggregateIdFormatResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeAvailabilityZones operation in a HTTP client.
 */
extension DescribeAvailabilityZonesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeAvailabilityZonesResult
    public typealias HeadersType = DescribeAvailabilityZonesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeAvailabilityZonesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeBundleTasks operation in a HTTP client.
 */
extension DescribeBundleTasksResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeBundleTasksResult
    public typealias HeadersType = DescribeBundleTasksResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeBundleTasksResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeByoipCidrs operation in a HTTP client.
 */
extension DescribeByoipCidrsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeByoipCidrsResult
    public typealias HeadersType = DescribeByoipCidrsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeByoipCidrsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeCapacityReservations operation in a HTTP client.
 */
extension DescribeCapacityReservationsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeCapacityReservationsResult
    public typealias HeadersType = DescribeCapacityReservationsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeCapacityReservationsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeClassicLinkInstances operation in a HTTP client.
 */
extension DescribeClassicLinkInstancesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeClassicLinkInstancesResult
    public typealias HeadersType = DescribeClassicLinkInstancesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeClassicLinkInstancesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeClientVpnAuthorizationRules operation in a HTTP client.
 */
extension DescribeClientVpnAuthorizationRulesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeClientVpnAuthorizationRulesResult
    public typealias HeadersType = DescribeClientVpnAuthorizationRulesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeClientVpnAuthorizationRulesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeClientVpnConnections operation in a HTTP client.
 */
extension DescribeClientVpnConnectionsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeClientVpnConnectionsResult
    public typealias HeadersType = DescribeClientVpnConnectionsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeClientVpnConnectionsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeClientVpnEndpoints operation in a HTTP client.
 */
extension DescribeClientVpnEndpointsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeClientVpnEndpointsResult
    public typealias HeadersType = DescribeClientVpnEndpointsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeClientVpnEndpointsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeClientVpnRoutes operation in a HTTP client.
 */
extension DescribeClientVpnRoutesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeClientVpnRoutesResult
    public typealias HeadersType = DescribeClientVpnRoutesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeClientVpnRoutesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeClientVpnTargetNetworks operation in a HTTP client.
 */
extension DescribeClientVpnTargetNetworksResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeClientVpnTargetNetworksResult
    public typealias HeadersType = DescribeClientVpnTargetNetworksResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeClientVpnTargetNetworksResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeConversionTasks operation in a HTTP client.
 */
extension DescribeConversionTasksResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeConversionTasksResult
    public typealias HeadersType = DescribeConversionTasksResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeConversionTasksResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeCustomerGateways operation in a HTTP client.
 */
extension DescribeCustomerGatewaysResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeCustomerGatewaysResult
    public typealias HeadersType = DescribeCustomerGatewaysResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeCustomerGatewaysResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeDhcpOptions operation in a HTTP client.
 */
extension DescribeDhcpOptionsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeDhcpOptionsResult
    public typealias HeadersType = DescribeDhcpOptionsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeDhcpOptionsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeEgressOnlyInternetGateways operation in a HTTP client.
 */
extension DescribeEgressOnlyInternetGatewaysResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeEgressOnlyInternetGatewaysResult
    public typealias HeadersType = DescribeEgressOnlyInternetGatewaysResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeEgressOnlyInternetGatewaysResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeElasticGpus operation in a HTTP client.
 */
extension DescribeElasticGpusResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeElasticGpusResult
    public typealias HeadersType = DescribeElasticGpusResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeElasticGpusResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeExportTasks operation in a HTTP client.
 */
extension DescribeExportTasksResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeExportTasksResult
    public typealias HeadersType = DescribeExportTasksResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeExportTasksResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeFleetHistory operation in a HTTP client.
 */
extension DescribeFleetHistoryResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeFleetHistoryResult
    public typealias HeadersType = DescribeFleetHistoryResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeFleetHistoryResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeFleetInstances operation in a HTTP client.
 */
extension DescribeFleetInstancesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeFleetInstancesResult
    public typealias HeadersType = DescribeFleetInstancesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeFleetInstancesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeFleets operation in a HTTP client.
 */
extension DescribeFleetsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeFleetsResult
    public typealias HeadersType = DescribeFleetsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeFleetsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeFlowLogs operation in a HTTP client.
 */
extension DescribeFlowLogsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeFlowLogsResult
    public typealias HeadersType = DescribeFlowLogsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeFlowLogsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeFpgaImageAttribute operation in a HTTP client.
 */
extension DescribeFpgaImageAttributeResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeFpgaImageAttributeResult
    public typealias HeadersType = DescribeFpgaImageAttributeResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeFpgaImageAttributeResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeFpgaImages operation in a HTTP client.
 */
extension DescribeFpgaImagesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeFpgaImagesResult
    public typealias HeadersType = DescribeFpgaImagesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeFpgaImagesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeHostReservationOfferings operation in a HTTP client.
 */
extension DescribeHostReservationOfferingsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeHostReservationOfferingsResult
    public typealias HeadersType = DescribeHostReservationOfferingsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeHostReservationOfferingsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeHostReservations operation in a HTTP client.
 */
extension DescribeHostReservationsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeHostReservationsResult
    public typealias HeadersType = DescribeHostReservationsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeHostReservationsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeHosts operation in a HTTP client.
 */
extension DescribeHostsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeHostsResult
    public typealias HeadersType = DescribeHostsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeHostsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeIamInstanceProfileAssociations operation in a HTTP client.
 */
extension DescribeIamInstanceProfileAssociationsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeIamInstanceProfileAssociationsResult
    public typealias HeadersType = DescribeIamInstanceProfileAssociationsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeIamInstanceProfileAssociationsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeIdFormat operation in a HTTP client.
 */
extension DescribeIdFormatResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeIdFormatResult
    public typealias HeadersType = DescribeIdFormatResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeIdFormatResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeIdentityIdFormat operation in a HTTP client.
 */
extension DescribeIdentityIdFormatResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeIdentityIdFormatResult
    public typealias HeadersType = DescribeIdentityIdFormatResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeIdentityIdFormatResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeImageAttribute operation in a HTTP client.
 */
extension ImageAttribute: HTTPResponseOutputProtocol {
    public typealias BodyType = ImageAttribute
    public typealias HeadersType = ImageAttribute

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ImageAttribute {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeImages operation in a HTTP client.
 */
extension DescribeImagesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeImagesResult
    public typealias HeadersType = DescribeImagesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeImagesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeImportImageTasks operation in a HTTP client.
 */
extension DescribeImportImageTasksResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeImportImageTasksResult
    public typealias HeadersType = DescribeImportImageTasksResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeImportImageTasksResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeImportSnapshotTasks operation in a HTTP client.
 */
extension DescribeImportSnapshotTasksResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeImportSnapshotTasksResult
    public typealias HeadersType = DescribeImportSnapshotTasksResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeImportSnapshotTasksResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeInstanceAttribute operation in a HTTP client.
 */
extension InstanceAttribute: HTTPResponseOutputProtocol {
    public typealias BodyType = InstanceAttribute
    public typealias HeadersType = InstanceAttribute

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> InstanceAttribute {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeInstanceCreditSpecifications operation in a HTTP client.
 */
extension DescribeInstanceCreditSpecificationsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeInstanceCreditSpecificationsResult
    public typealias HeadersType = DescribeInstanceCreditSpecificationsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeInstanceCreditSpecificationsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeInstanceStatus operation in a HTTP client.
 */
extension DescribeInstanceStatusResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeInstanceStatusResult
    public typealias HeadersType = DescribeInstanceStatusResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeInstanceStatusResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeInstances operation in a HTTP client.
 */
extension DescribeInstancesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeInstancesResult
    public typealias HeadersType = DescribeInstancesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeInstancesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeInternetGateways operation in a HTTP client.
 */
extension DescribeInternetGatewaysResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeInternetGatewaysResult
    public typealias HeadersType = DescribeInternetGatewaysResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeInternetGatewaysResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeKeyPairs operation in a HTTP client.
 */
extension DescribeKeyPairsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeKeyPairsResult
    public typealias HeadersType = DescribeKeyPairsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeKeyPairsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeLaunchTemplateVersions operation in a HTTP client.
 */
extension DescribeLaunchTemplateVersionsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeLaunchTemplateVersionsResult
    public typealias HeadersType = DescribeLaunchTemplateVersionsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeLaunchTemplateVersionsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeLaunchTemplates operation in a HTTP client.
 */
extension DescribeLaunchTemplatesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeLaunchTemplatesResult
    public typealias HeadersType = DescribeLaunchTemplatesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeLaunchTemplatesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeMovingAddresses operation in a HTTP client.
 */
extension DescribeMovingAddressesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeMovingAddressesResult
    public typealias HeadersType = DescribeMovingAddressesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeMovingAddressesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeNatGateways operation in a HTTP client.
 */
extension DescribeNatGatewaysResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeNatGatewaysResult
    public typealias HeadersType = DescribeNatGatewaysResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeNatGatewaysResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeNetworkAcls operation in a HTTP client.
 */
extension DescribeNetworkAclsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeNetworkAclsResult
    public typealias HeadersType = DescribeNetworkAclsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeNetworkAclsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeNetworkInterfaceAttribute operation in a HTTP client.
 */
extension DescribeNetworkInterfaceAttributeResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeNetworkInterfaceAttributeResult
    public typealias HeadersType = DescribeNetworkInterfaceAttributeResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeNetworkInterfaceAttributeResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeNetworkInterfacePermissions operation in a HTTP client.
 */
extension DescribeNetworkInterfacePermissionsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeNetworkInterfacePermissionsResult
    public typealias HeadersType = DescribeNetworkInterfacePermissionsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeNetworkInterfacePermissionsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeNetworkInterfaces operation in a HTTP client.
 */
extension DescribeNetworkInterfacesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeNetworkInterfacesResult
    public typealias HeadersType = DescribeNetworkInterfacesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeNetworkInterfacesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribePlacementGroups operation in a HTTP client.
 */
extension DescribePlacementGroupsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribePlacementGroupsResult
    public typealias HeadersType = DescribePlacementGroupsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribePlacementGroupsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribePrefixLists operation in a HTTP client.
 */
extension DescribePrefixListsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribePrefixListsResult
    public typealias HeadersType = DescribePrefixListsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribePrefixListsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribePrincipalIdFormat operation in a HTTP client.
 */
extension DescribePrincipalIdFormatResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribePrincipalIdFormatResult
    public typealias HeadersType = DescribePrincipalIdFormatResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribePrincipalIdFormatResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribePublicIpv4Pools operation in a HTTP client.
 */
extension DescribePublicIpv4PoolsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribePublicIpv4PoolsResult
    public typealias HeadersType = DescribePublicIpv4PoolsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribePublicIpv4PoolsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeRegions operation in a HTTP client.
 */
extension DescribeRegionsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeRegionsResult
    public typealias HeadersType = DescribeRegionsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeRegionsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeReservedInstances operation in a HTTP client.
 */
extension DescribeReservedInstancesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeReservedInstancesResult
    public typealias HeadersType = DescribeReservedInstancesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeReservedInstancesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeReservedInstancesListings operation in a HTTP client.
 */
extension DescribeReservedInstancesListingsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeReservedInstancesListingsResult
    public typealias HeadersType = DescribeReservedInstancesListingsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeReservedInstancesListingsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeReservedInstancesModifications operation in a HTTP client.
 */
extension DescribeReservedInstancesModificationsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeReservedInstancesModificationsResult
    public typealias HeadersType = DescribeReservedInstancesModificationsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeReservedInstancesModificationsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeReservedInstancesOfferings operation in a HTTP client.
 */
extension DescribeReservedInstancesOfferingsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeReservedInstancesOfferingsResult
    public typealias HeadersType = DescribeReservedInstancesOfferingsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeReservedInstancesOfferingsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeRouteTables operation in a HTTP client.
 */
extension DescribeRouteTablesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeRouteTablesResult
    public typealias HeadersType = DescribeRouteTablesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeRouteTablesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeScheduledInstanceAvailability operation in a HTTP client.
 */
extension DescribeScheduledInstanceAvailabilityResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeScheduledInstanceAvailabilityResult
    public typealias HeadersType = DescribeScheduledInstanceAvailabilityResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeScheduledInstanceAvailabilityResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeScheduledInstances operation in a HTTP client.
 */
extension DescribeScheduledInstancesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeScheduledInstancesResult
    public typealias HeadersType = DescribeScheduledInstancesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeScheduledInstancesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeSecurityGroupReferences operation in a HTTP client.
 */
extension DescribeSecurityGroupReferencesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeSecurityGroupReferencesResult
    public typealias HeadersType = DescribeSecurityGroupReferencesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeSecurityGroupReferencesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeSecurityGroups operation in a HTTP client.
 */
extension DescribeSecurityGroupsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeSecurityGroupsResult
    public typealias HeadersType = DescribeSecurityGroupsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeSecurityGroupsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeSnapshotAttribute operation in a HTTP client.
 */
extension DescribeSnapshotAttributeResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeSnapshotAttributeResult
    public typealias HeadersType = DescribeSnapshotAttributeResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeSnapshotAttributeResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeSnapshots operation in a HTTP client.
 */
extension DescribeSnapshotsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeSnapshotsResult
    public typealias HeadersType = DescribeSnapshotsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeSnapshotsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeSpotDatafeedSubscription operation in a HTTP client.
 */
extension DescribeSpotDatafeedSubscriptionResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeSpotDatafeedSubscriptionResult
    public typealias HeadersType = DescribeSpotDatafeedSubscriptionResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeSpotDatafeedSubscriptionResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeSpotFleetInstances operation in a HTTP client.
 */
extension DescribeSpotFleetInstancesResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeSpotFleetInstancesResponse
    public typealias HeadersType = DescribeSpotFleetInstancesResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeSpotFleetInstancesResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeSpotFleetRequestHistory operation in a HTTP client.
 */
extension DescribeSpotFleetRequestHistoryResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeSpotFleetRequestHistoryResponse
    public typealias HeadersType = DescribeSpotFleetRequestHistoryResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeSpotFleetRequestHistoryResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeSpotFleetRequests operation in a HTTP client.
 */
extension DescribeSpotFleetRequestsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeSpotFleetRequestsResponse
    public typealias HeadersType = DescribeSpotFleetRequestsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeSpotFleetRequestsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeSpotInstanceRequests operation in a HTTP client.
 */
extension DescribeSpotInstanceRequestsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeSpotInstanceRequestsResult
    public typealias HeadersType = DescribeSpotInstanceRequestsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeSpotInstanceRequestsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeSpotPriceHistory operation in a HTTP client.
 */
extension DescribeSpotPriceHistoryResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeSpotPriceHistoryResult
    public typealias HeadersType = DescribeSpotPriceHistoryResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeSpotPriceHistoryResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeStaleSecurityGroups operation in a HTTP client.
 */
extension DescribeStaleSecurityGroupsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeStaleSecurityGroupsResult
    public typealias HeadersType = DescribeStaleSecurityGroupsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeStaleSecurityGroupsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeSubnets operation in a HTTP client.
 */
extension DescribeSubnetsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeSubnetsResult
    public typealias HeadersType = DescribeSubnetsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeSubnetsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeTags operation in a HTTP client.
 */
extension DescribeTagsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeTagsResult
    public typealias HeadersType = DescribeTagsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeTagsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeTransitGatewayAttachments operation in a HTTP client.
 */
extension DescribeTransitGatewayAttachmentsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeTransitGatewayAttachmentsResult
    public typealias HeadersType = DescribeTransitGatewayAttachmentsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeTransitGatewayAttachmentsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeTransitGatewayRouteTables operation in a HTTP client.
 */
extension DescribeTransitGatewayRouteTablesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeTransitGatewayRouteTablesResult
    public typealias HeadersType = DescribeTransitGatewayRouteTablesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeTransitGatewayRouteTablesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeTransitGatewayVpcAttachments operation in a HTTP client.
 */
extension DescribeTransitGatewayVpcAttachmentsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeTransitGatewayVpcAttachmentsResult
    public typealias HeadersType = DescribeTransitGatewayVpcAttachmentsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeTransitGatewayVpcAttachmentsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeTransitGateways operation in a HTTP client.
 */
extension DescribeTransitGatewaysResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeTransitGatewaysResult
    public typealias HeadersType = DescribeTransitGatewaysResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeTransitGatewaysResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeVolumeAttribute operation in a HTTP client.
 */
extension DescribeVolumeAttributeResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeVolumeAttributeResult
    public typealias HeadersType = DescribeVolumeAttributeResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeVolumeAttributeResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeVolumeStatus operation in a HTTP client.
 */
extension DescribeVolumeStatusResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeVolumeStatusResult
    public typealias HeadersType = DescribeVolumeStatusResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeVolumeStatusResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeVolumes operation in a HTTP client.
 */
extension DescribeVolumesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeVolumesResult
    public typealias HeadersType = DescribeVolumesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeVolumesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeVolumesModifications operation in a HTTP client.
 */
extension DescribeVolumesModificationsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeVolumesModificationsResult
    public typealias HeadersType = DescribeVolumesModificationsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeVolumesModificationsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeVpcAttribute operation in a HTTP client.
 */
extension DescribeVpcAttributeResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeVpcAttributeResult
    public typealias HeadersType = DescribeVpcAttributeResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeVpcAttributeResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeVpcClassicLink operation in a HTTP client.
 */
extension DescribeVpcClassicLinkResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeVpcClassicLinkResult
    public typealias HeadersType = DescribeVpcClassicLinkResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeVpcClassicLinkResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeVpcClassicLinkDnsSupport operation in a HTTP client.
 */
extension DescribeVpcClassicLinkDnsSupportResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeVpcClassicLinkDnsSupportResult
    public typealias HeadersType = DescribeVpcClassicLinkDnsSupportResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeVpcClassicLinkDnsSupportResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeVpcEndpointConnectionNotifications operation in a HTTP client.
 */
extension DescribeVpcEndpointConnectionNotificationsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeVpcEndpointConnectionNotificationsResult
    public typealias HeadersType = DescribeVpcEndpointConnectionNotificationsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeVpcEndpointConnectionNotificationsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeVpcEndpointConnections operation in a HTTP client.
 */
extension DescribeVpcEndpointConnectionsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeVpcEndpointConnectionsResult
    public typealias HeadersType = DescribeVpcEndpointConnectionsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeVpcEndpointConnectionsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeVpcEndpointServiceConfigurations operation in a HTTP client.
 */
extension DescribeVpcEndpointServiceConfigurationsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeVpcEndpointServiceConfigurationsResult
    public typealias HeadersType = DescribeVpcEndpointServiceConfigurationsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeVpcEndpointServiceConfigurationsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeVpcEndpointServicePermissions operation in a HTTP client.
 */
extension DescribeVpcEndpointServicePermissionsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeVpcEndpointServicePermissionsResult
    public typealias HeadersType = DescribeVpcEndpointServicePermissionsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeVpcEndpointServicePermissionsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeVpcEndpointServices operation in a HTTP client.
 */
extension DescribeVpcEndpointServicesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeVpcEndpointServicesResult
    public typealias HeadersType = DescribeVpcEndpointServicesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeVpcEndpointServicesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeVpcEndpoints operation in a HTTP client.
 */
extension DescribeVpcEndpointsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeVpcEndpointsResult
    public typealias HeadersType = DescribeVpcEndpointsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeVpcEndpointsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeVpcPeeringConnections operation in a HTTP client.
 */
extension DescribeVpcPeeringConnectionsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeVpcPeeringConnectionsResult
    public typealias HeadersType = DescribeVpcPeeringConnectionsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeVpcPeeringConnectionsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeVpcs operation in a HTTP client.
 */
extension DescribeVpcsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeVpcsResult
    public typealias HeadersType = DescribeVpcsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeVpcsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeVpnConnections operation in a HTTP client.
 */
extension DescribeVpnConnectionsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeVpnConnectionsResult
    public typealias HeadersType = DescribeVpnConnectionsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeVpnConnectionsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeVpnGateways operation in a HTTP client.
 */
extension DescribeVpnGatewaysResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeVpnGatewaysResult
    public typealias HeadersType = DescribeVpnGatewaysResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeVpnGatewaysResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DetachClassicLinkVpc operation in a HTTP client.
 */
extension DetachClassicLinkVpcResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DetachClassicLinkVpcResult
    public typealias HeadersType = DetachClassicLinkVpcResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DetachClassicLinkVpcResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DisableTransitGatewayRouteTablePropagation operation in a HTTP client.
 */
extension DisableTransitGatewayRouteTablePropagationResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DisableTransitGatewayRouteTablePropagationResult
    public typealias HeadersType = DisableTransitGatewayRouteTablePropagationResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DisableTransitGatewayRouteTablePropagationResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DisableVpcClassicLink operation in a HTTP client.
 */
extension DisableVpcClassicLinkResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DisableVpcClassicLinkResult
    public typealias HeadersType = DisableVpcClassicLinkResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DisableVpcClassicLinkResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DisableVpcClassicLinkDnsSupport operation in a HTTP client.
 */
extension DisableVpcClassicLinkDnsSupportResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DisableVpcClassicLinkDnsSupportResult
    public typealias HeadersType = DisableVpcClassicLinkDnsSupportResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DisableVpcClassicLinkDnsSupportResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DisassociateClientVpnTargetNetwork operation in a HTTP client.
 */
extension DisassociateClientVpnTargetNetworkResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DisassociateClientVpnTargetNetworkResult
    public typealias HeadersType = DisassociateClientVpnTargetNetworkResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DisassociateClientVpnTargetNetworkResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DisassociateIamInstanceProfile operation in a HTTP client.
 */
extension DisassociateIamInstanceProfileResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DisassociateIamInstanceProfileResult
    public typealias HeadersType = DisassociateIamInstanceProfileResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DisassociateIamInstanceProfileResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DisassociateSubnetCidrBlock operation in a HTTP client.
 */
extension DisassociateSubnetCidrBlockResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DisassociateSubnetCidrBlockResult
    public typealias HeadersType = DisassociateSubnetCidrBlockResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DisassociateSubnetCidrBlockResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DisassociateTransitGatewayRouteTable operation in a HTTP client.
 */
extension DisassociateTransitGatewayRouteTableResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DisassociateTransitGatewayRouteTableResult
    public typealias HeadersType = DisassociateTransitGatewayRouteTableResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DisassociateTransitGatewayRouteTableResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DisassociateVpcCidrBlock operation in a HTTP client.
 */
extension DisassociateVpcCidrBlockResult: HTTPResponseOutputProtocol {
    public typealias BodyType = DisassociateVpcCidrBlockResult
    public typealias HeadersType = DisassociateVpcCidrBlockResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DisassociateVpcCidrBlockResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the EnableTransitGatewayRouteTablePropagation operation in a HTTP client.
 */
extension EnableTransitGatewayRouteTablePropagationResult: HTTPResponseOutputProtocol {
    public typealias BodyType = EnableTransitGatewayRouteTablePropagationResult
    public typealias HeadersType = EnableTransitGatewayRouteTablePropagationResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> EnableTransitGatewayRouteTablePropagationResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the EnableVpcClassicLink operation in a HTTP client.
 */
extension EnableVpcClassicLinkResult: HTTPResponseOutputProtocol {
    public typealias BodyType = EnableVpcClassicLinkResult
    public typealias HeadersType = EnableVpcClassicLinkResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> EnableVpcClassicLinkResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the EnableVpcClassicLinkDnsSupport operation in a HTTP client.
 */
extension EnableVpcClassicLinkDnsSupportResult: HTTPResponseOutputProtocol {
    public typealias BodyType = EnableVpcClassicLinkDnsSupportResult
    public typealias HeadersType = EnableVpcClassicLinkDnsSupportResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> EnableVpcClassicLinkDnsSupportResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ExportClientVpnClientCertificateRevocationList operation in a HTTP client.
 */
extension ExportClientVpnClientCertificateRevocationListResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ExportClientVpnClientCertificateRevocationListResult
    public typealias HeadersType = ExportClientVpnClientCertificateRevocationListResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ExportClientVpnClientCertificateRevocationListResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ExportClientVpnClientConfiguration operation in a HTTP client.
 */
extension ExportClientVpnClientConfigurationResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ExportClientVpnClientConfigurationResult
    public typealias HeadersType = ExportClientVpnClientConfigurationResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ExportClientVpnClientConfigurationResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ExportTransitGatewayRoutes operation in a HTTP client.
 */
extension ExportTransitGatewayRoutesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ExportTransitGatewayRoutesResult
    public typealias HeadersType = ExportTransitGatewayRoutesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ExportTransitGatewayRoutesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetConsoleOutput operation in a HTTP client.
 */
extension GetConsoleOutputResult: HTTPResponseOutputProtocol {
    public typealias BodyType = GetConsoleOutputResult
    public typealias HeadersType = GetConsoleOutputResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetConsoleOutputResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetConsoleScreenshot operation in a HTTP client.
 */
extension GetConsoleScreenshotResult: HTTPResponseOutputProtocol {
    public typealias BodyType = GetConsoleScreenshotResult
    public typealias HeadersType = GetConsoleScreenshotResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetConsoleScreenshotResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetHostReservationPurchasePreview operation in a HTTP client.
 */
extension GetHostReservationPurchasePreviewResult: HTTPResponseOutputProtocol {
    public typealias BodyType = GetHostReservationPurchasePreviewResult
    public typealias HeadersType = GetHostReservationPurchasePreviewResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetHostReservationPurchasePreviewResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetLaunchTemplateData operation in a HTTP client.
 */
extension GetLaunchTemplateDataResult: HTTPResponseOutputProtocol {
    public typealias BodyType = GetLaunchTemplateDataResult
    public typealias HeadersType = GetLaunchTemplateDataResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetLaunchTemplateDataResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetPasswordData operation in a HTTP client.
 */
extension GetPasswordDataResult: HTTPResponseOutputProtocol {
    public typealias BodyType = GetPasswordDataResult
    public typealias HeadersType = GetPasswordDataResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetPasswordDataResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetReservedInstancesExchangeQuote operation in a HTTP client.
 */
extension GetReservedInstancesExchangeQuoteResult: HTTPResponseOutputProtocol {
    public typealias BodyType = GetReservedInstancesExchangeQuoteResult
    public typealias HeadersType = GetReservedInstancesExchangeQuoteResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetReservedInstancesExchangeQuoteResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetTransitGatewayAttachmentPropagations operation in a HTTP client.
 */
extension GetTransitGatewayAttachmentPropagationsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = GetTransitGatewayAttachmentPropagationsResult
    public typealias HeadersType = GetTransitGatewayAttachmentPropagationsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetTransitGatewayAttachmentPropagationsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetTransitGatewayRouteTableAssociations operation in a HTTP client.
 */
extension GetTransitGatewayRouteTableAssociationsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = GetTransitGatewayRouteTableAssociationsResult
    public typealias HeadersType = GetTransitGatewayRouteTableAssociationsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetTransitGatewayRouteTableAssociationsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetTransitGatewayRouteTablePropagations operation in a HTTP client.
 */
extension GetTransitGatewayRouteTablePropagationsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = GetTransitGatewayRouteTablePropagationsResult
    public typealias HeadersType = GetTransitGatewayRouteTablePropagationsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetTransitGatewayRouteTablePropagationsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ImportClientVpnClientCertificateRevocationList operation in a HTTP client.
 */
extension ImportClientVpnClientCertificateRevocationListResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ImportClientVpnClientCertificateRevocationListResult
    public typealias HeadersType = ImportClientVpnClientCertificateRevocationListResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ImportClientVpnClientCertificateRevocationListResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ImportImage operation in a HTTP client.
 */
extension ImportImageResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ImportImageResult
    public typealias HeadersType = ImportImageResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ImportImageResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ImportInstance operation in a HTTP client.
 */
extension ImportInstanceResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ImportInstanceResult
    public typealias HeadersType = ImportInstanceResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ImportInstanceResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ImportKeyPair operation in a HTTP client.
 */
extension ImportKeyPairResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ImportKeyPairResult
    public typealias HeadersType = ImportKeyPairResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ImportKeyPairResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ImportSnapshot operation in a HTTP client.
 */
extension ImportSnapshotResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ImportSnapshotResult
    public typealias HeadersType = ImportSnapshotResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ImportSnapshotResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ImportVolume operation in a HTTP client.
 */
extension ImportVolumeResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ImportVolumeResult
    public typealias HeadersType = ImportVolumeResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ImportVolumeResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifyCapacityReservation operation in a HTTP client.
 */
extension ModifyCapacityReservationResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ModifyCapacityReservationResult
    public typealias HeadersType = ModifyCapacityReservationResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ModifyCapacityReservationResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifyClientVpnEndpoint operation in a HTTP client.
 */
extension ModifyClientVpnEndpointResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ModifyClientVpnEndpointResult
    public typealias HeadersType = ModifyClientVpnEndpointResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ModifyClientVpnEndpointResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifyFleet operation in a HTTP client.
 */
extension ModifyFleetResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ModifyFleetResult
    public typealias HeadersType = ModifyFleetResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ModifyFleetResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifyFpgaImageAttribute operation in a HTTP client.
 */
extension ModifyFpgaImageAttributeResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ModifyFpgaImageAttributeResult
    public typealias HeadersType = ModifyFpgaImageAttributeResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ModifyFpgaImageAttributeResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifyHosts operation in a HTTP client.
 */
extension ModifyHostsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ModifyHostsResult
    public typealias HeadersType = ModifyHostsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ModifyHostsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifyInstanceCapacityReservationAttributes operation in a HTTP client.
 */
extension ModifyInstanceCapacityReservationAttributesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ModifyInstanceCapacityReservationAttributesResult
    public typealias HeadersType = ModifyInstanceCapacityReservationAttributesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ModifyInstanceCapacityReservationAttributesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifyInstanceCreditSpecification operation in a HTTP client.
 */
extension ModifyInstanceCreditSpecificationResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ModifyInstanceCreditSpecificationResult
    public typealias HeadersType = ModifyInstanceCreditSpecificationResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ModifyInstanceCreditSpecificationResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifyInstanceEventStartTime operation in a HTTP client.
 */
extension ModifyInstanceEventStartTimeResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ModifyInstanceEventStartTimeResult
    public typealias HeadersType = ModifyInstanceEventStartTimeResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ModifyInstanceEventStartTimeResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifyInstancePlacement operation in a HTTP client.
 */
extension ModifyInstancePlacementResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ModifyInstancePlacementResult
    public typealias HeadersType = ModifyInstancePlacementResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ModifyInstancePlacementResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifyLaunchTemplate operation in a HTTP client.
 */
extension ModifyLaunchTemplateResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ModifyLaunchTemplateResult
    public typealias HeadersType = ModifyLaunchTemplateResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ModifyLaunchTemplateResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifyReservedInstances operation in a HTTP client.
 */
extension ModifyReservedInstancesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ModifyReservedInstancesResult
    public typealias HeadersType = ModifyReservedInstancesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ModifyReservedInstancesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifySpotFleetRequest operation in a HTTP client.
 */
extension ModifySpotFleetRequestResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ModifySpotFleetRequestResponse
    public typealias HeadersType = ModifySpotFleetRequestResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ModifySpotFleetRequestResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifyTransitGatewayVpcAttachment operation in a HTTP client.
 */
extension ModifyTransitGatewayVpcAttachmentResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ModifyTransitGatewayVpcAttachmentResult
    public typealias HeadersType = ModifyTransitGatewayVpcAttachmentResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ModifyTransitGatewayVpcAttachmentResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifyVolume operation in a HTTP client.
 */
extension ModifyVolumeResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ModifyVolumeResult
    public typealias HeadersType = ModifyVolumeResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ModifyVolumeResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifyVpcEndpoint operation in a HTTP client.
 */
extension ModifyVpcEndpointResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ModifyVpcEndpointResult
    public typealias HeadersType = ModifyVpcEndpointResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ModifyVpcEndpointResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifyVpcEndpointConnectionNotification operation in a HTTP client.
 */
extension ModifyVpcEndpointConnectionNotificationResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ModifyVpcEndpointConnectionNotificationResult
    public typealias HeadersType = ModifyVpcEndpointConnectionNotificationResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ModifyVpcEndpointConnectionNotificationResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifyVpcEndpointServiceConfiguration operation in a HTTP client.
 */
extension ModifyVpcEndpointServiceConfigurationResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ModifyVpcEndpointServiceConfigurationResult
    public typealias HeadersType = ModifyVpcEndpointServiceConfigurationResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ModifyVpcEndpointServiceConfigurationResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifyVpcEndpointServicePermissions operation in a HTTP client.
 */
extension ModifyVpcEndpointServicePermissionsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ModifyVpcEndpointServicePermissionsResult
    public typealias HeadersType = ModifyVpcEndpointServicePermissionsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ModifyVpcEndpointServicePermissionsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifyVpcPeeringConnectionOptions operation in a HTTP client.
 */
extension ModifyVpcPeeringConnectionOptionsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ModifyVpcPeeringConnectionOptionsResult
    public typealias HeadersType = ModifyVpcPeeringConnectionOptionsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ModifyVpcPeeringConnectionOptionsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifyVpcTenancy operation in a HTTP client.
 */
extension ModifyVpcTenancyResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ModifyVpcTenancyResult
    public typealias HeadersType = ModifyVpcTenancyResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ModifyVpcTenancyResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the MonitorInstances operation in a HTTP client.
 */
extension MonitorInstancesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = MonitorInstancesResult
    public typealias HeadersType = MonitorInstancesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> MonitorInstancesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the MoveAddressToVpc operation in a HTTP client.
 */
extension MoveAddressToVpcResult: HTTPResponseOutputProtocol {
    public typealias BodyType = MoveAddressToVpcResult
    public typealias HeadersType = MoveAddressToVpcResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> MoveAddressToVpcResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ProvisionByoipCidr operation in a HTTP client.
 */
extension ProvisionByoipCidrResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ProvisionByoipCidrResult
    public typealias HeadersType = ProvisionByoipCidrResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ProvisionByoipCidrResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the PurchaseHostReservation operation in a HTTP client.
 */
extension PurchaseHostReservationResult: HTTPResponseOutputProtocol {
    public typealias BodyType = PurchaseHostReservationResult
    public typealias HeadersType = PurchaseHostReservationResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PurchaseHostReservationResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the PurchaseReservedInstancesOffering operation in a HTTP client.
 */
extension PurchaseReservedInstancesOfferingResult: HTTPResponseOutputProtocol {
    public typealias BodyType = PurchaseReservedInstancesOfferingResult
    public typealias HeadersType = PurchaseReservedInstancesOfferingResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PurchaseReservedInstancesOfferingResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the PurchaseScheduledInstances operation in a HTTP client.
 */
extension PurchaseScheduledInstancesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = PurchaseScheduledInstancesResult
    public typealias HeadersType = PurchaseScheduledInstancesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PurchaseScheduledInstancesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RegisterImage operation in a HTTP client.
 */
extension RegisterImageResult: HTTPResponseOutputProtocol {
    public typealias BodyType = RegisterImageResult
    public typealias HeadersType = RegisterImageResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RegisterImageResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RejectTransitGatewayVpcAttachment operation in a HTTP client.
 */
extension RejectTransitGatewayVpcAttachmentResult: HTTPResponseOutputProtocol {
    public typealias BodyType = RejectTransitGatewayVpcAttachmentResult
    public typealias HeadersType = RejectTransitGatewayVpcAttachmentResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RejectTransitGatewayVpcAttachmentResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RejectVpcEndpointConnections operation in a HTTP client.
 */
extension RejectVpcEndpointConnectionsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = RejectVpcEndpointConnectionsResult
    public typealias HeadersType = RejectVpcEndpointConnectionsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RejectVpcEndpointConnectionsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RejectVpcPeeringConnection operation in a HTTP client.
 */
extension RejectVpcPeeringConnectionResult: HTTPResponseOutputProtocol {
    public typealias BodyType = RejectVpcPeeringConnectionResult
    public typealias HeadersType = RejectVpcPeeringConnectionResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RejectVpcPeeringConnectionResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ReleaseHosts operation in a HTTP client.
 */
extension ReleaseHostsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ReleaseHostsResult
    public typealias HeadersType = ReleaseHostsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ReleaseHostsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ReplaceIamInstanceProfileAssociation operation in a HTTP client.
 */
extension ReplaceIamInstanceProfileAssociationResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ReplaceIamInstanceProfileAssociationResult
    public typealias HeadersType = ReplaceIamInstanceProfileAssociationResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ReplaceIamInstanceProfileAssociationResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ReplaceNetworkAclAssociation operation in a HTTP client.
 */
extension ReplaceNetworkAclAssociationResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ReplaceNetworkAclAssociationResult
    public typealias HeadersType = ReplaceNetworkAclAssociationResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ReplaceNetworkAclAssociationResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ReplaceRouteTableAssociation operation in a HTTP client.
 */
extension ReplaceRouteTableAssociationResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ReplaceRouteTableAssociationResult
    public typealias HeadersType = ReplaceRouteTableAssociationResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ReplaceRouteTableAssociationResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ReplaceTransitGatewayRoute operation in a HTTP client.
 */
extension ReplaceTransitGatewayRouteResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ReplaceTransitGatewayRouteResult
    public typealias HeadersType = ReplaceTransitGatewayRouteResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ReplaceTransitGatewayRouteResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RequestSpotFleet operation in a HTTP client.
 */
extension RequestSpotFleetResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = RequestSpotFleetResponse
    public typealias HeadersType = RequestSpotFleetResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RequestSpotFleetResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RequestSpotInstances operation in a HTTP client.
 */
extension RequestSpotInstancesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = RequestSpotInstancesResult
    public typealias HeadersType = RequestSpotInstancesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RequestSpotInstancesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ResetFpgaImageAttribute operation in a HTTP client.
 */
extension ResetFpgaImageAttributeResult: HTTPResponseOutputProtocol {
    public typealias BodyType = ResetFpgaImageAttributeResult
    public typealias HeadersType = ResetFpgaImageAttributeResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ResetFpgaImageAttributeResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RestoreAddressToClassic operation in a HTTP client.
 */
extension RestoreAddressToClassicResult: HTTPResponseOutputProtocol {
    public typealias BodyType = RestoreAddressToClassicResult
    public typealias HeadersType = RestoreAddressToClassicResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RestoreAddressToClassicResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RevokeClientVpnIngress operation in a HTTP client.
 */
extension RevokeClientVpnIngressResult: HTTPResponseOutputProtocol {
    public typealias BodyType = RevokeClientVpnIngressResult
    public typealias HeadersType = RevokeClientVpnIngressResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RevokeClientVpnIngressResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RunInstances operation in a HTTP client.
 */
extension Reservation: HTTPResponseOutputProtocol {
    public typealias BodyType = Reservation
    public typealias HeadersType = Reservation

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> Reservation {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RunScheduledInstances operation in a HTTP client.
 */
extension RunScheduledInstancesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = RunScheduledInstancesResult
    public typealias HeadersType = RunScheduledInstancesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RunScheduledInstancesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the SearchTransitGatewayRoutes operation in a HTTP client.
 */
extension SearchTransitGatewayRoutesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = SearchTransitGatewayRoutesResult
    public typealias HeadersType = SearchTransitGatewayRoutesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> SearchTransitGatewayRoutesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the StartInstances operation in a HTTP client.
 */
extension StartInstancesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = StartInstancesResult
    public typealias HeadersType = StartInstancesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> StartInstancesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the StopInstances operation in a HTTP client.
 */
extension StopInstancesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = StopInstancesResult
    public typealias HeadersType = StopInstancesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> StopInstancesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the TerminateClientVpnConnections operation in a HTTP client.
 */
extension TerminateClientVpnConnectionsResult: HTTPResponseOutputProtocol {
    public typealias BodyType = TerminateClientVpnConnectionsResult
    public typealias HeadersType = TerminateClientVpnConnectionsResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> TerminateClientVpnConnectionsResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the TerminateInstances operation in a HTTP client.
 */
extension TerminateInstancesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = TerminateInstancesResult
    public typealias HeadersType = TerminateInstancesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> TerminateInstancesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UnassignIpv6Addresses operation in a HTTP client.
 */
extension UnassignIpv6AddressesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = UnassignIpv6AddressesResult
    public typealias HeadersType = UnassignIpv6AddressesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UnassignIpv6AddressesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UnmonitorInstances operation in a HTTP client.
 */
extension UnmonitorInstancesResult: HTTPResponseOutputProtocol {
    public typealias BodyType = UnmonitorInstancesResult
    public typealias HeadersType = UnmonitorInstancesResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UnmonitorInstancesResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateSecurityGroupRuleDescriptionsEgress operation in a HTTP client.
 */
extension UpdateSecurityGroupRuleDescriptionsEgressResult: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateSecurityGroupRuleDescriptionsEgressResult
    public typealias HeadersType = UpdateSecurityGroupRuleDescriptionsEgressResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateSecurityGroupRuleDescriptionsEgressResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateSecurityGroupRuleDescriptionsIngress operation in a HTTP client.
 */
extension UpdateSecurityGroupRuleDescriptionsIngressResult: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateSecurityGroupRuleDescriptionsIngressResult
    public typealias HeadersType = UpdateSecurityGroupRuleDescriptionsIngressResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateSecurityGroupRuleDescriptionsIngressResult {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the WithdrawByoipCidr operation in a HTTP client.
 */
extension WithdrawByoipCidrResult: HTTPResponseOutputProtocol {
    public typealias BodyType = WithdrawByoipCidrResult
    public typealias HeadersType = WithdrawByoipCidrResult

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> WithdrawByoipCidrResult {
        return try bodyDecodableProvider()
    }
}
