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
// ElasticComputeCloudClientProtocol+async.swift
// ElasticComputeCloudClient
//

import Foundation
import ElasticComputeCloudModel

#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)

/**
 Async extensions for the ElasticComputeCloudClientProtocol type.
 */
public extension ElasticComputeCloudClientProtocol {

    /**
     Invokes the AcceptAddressTransfer operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AcceptAddressTransferRequest object being passed to this operation.
     - Returns: The AcceptAddressTransferResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptAddressTransfer(input: ElasticComputeCloudModel.AcceptAddressTransferRequest) async throws
     -> ElasticComputeCloudModel.AcceptAddressTransferResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try acceptAddressTransferAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AcceptReservedInstancesExchangeQuote operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AcceptReservedInstancesExchangeQuoteRequest object being passed to this operation.
     - Returns: The AcceptReservedInstancesExchangeQuoteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptReservedInstancesExchangeQuote(input: ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteRequest) async throws
     -> ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try acceptReservedInstancesExchangeQuoteAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AcceptTransitGatewayMulticastDomainAssociations operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AcceptTransitGatewayMulticastDomainAssociationsRequest object being passed to this operation.
     - Returns: The AcceptTransitGatewayMulticastDomainAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptTransitGatewayMulticastDomainAssociations(input: ElasticComputeCloudModel.AcceptTransitGatewayMulticastDomainAssociationsRequest) async throws
     -> ElasticComputeCloudModel.AcceptTransitGatewayMulticastDomainAssociationsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try acceptTransitGatewayMulticastDomainAssociationsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AcceptTransitGatewayPeeringAttachment operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AcceptTransitGatewayPeeringAttachmentRequest object being passed to this operation.
     - Returns: The AcceptTransitGatewayPeeringAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptTransitGatewayPeeringAttachment(input: ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentRequest) async throws
     -> ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try acceptTransitGatewayPeeringAttachmentAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AcceptTransitGatewayVpcAttachment operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AcceptTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The AcceptTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptTransitGatewayVpcAttachment(input: ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentRequest) async throws
     -> ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try acceptTransitGatewayVpcAttachmentAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AcceptVpcEndpointConnections operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AcceptVpcEndpointConnectionsRequest object being passed to this operation.
     - Returns: The AcceptVpcEndpointConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptVpcEndpointConnections(input: ElasticComputeCloudModel.AcceptVpcEndpointConnectionsRequest) async throws
     -> ElasticComputeCloudModel.AcceptVpcEndpointConnectionsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try acceptVpcEndpointConnectionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AcceptVpcPeeringConnection operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AcceptVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: The AcceptVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptVpcPeeringConnection(input: ElasticComputeCloudModel.AcceptVpcPeeringConnectionRequest) async throws
     -> ElasticComputeCloudModel.AcceptVpcPeeringConnectionResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try acceptVpcPeeringConnectionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AdvertiseByoipCidr operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AdvertiseByoipCidrRequest object being passed to this operation.
     - Returns: The AdvertiseByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func advertiseByoipCidr(input: ElasticComputeCloudModel.AdvertiseByoipCidrRequest) async throws
     -> ElasticComputeCloudModel.AdvertiseByoipCidrResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try advertiseByoipCidrAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AllocateAddress operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AllocateAddressRequest object being passed to this operation.
     - Returns: The AllocateAddressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func allocateAddress(input: ElasticComputeCloudModel.AllocateAddressRequest) async throws
     -> ElasticComputeCloudModel.AllocateAddressResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try allocateAddressAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AllocateHosts operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AllocateHostsRequest object being passed to this operation.
     - Returns: The AllocateHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func allocateHosts(input: ElasticComputeCloudModel.AllocateHostsRequest) async throws
     -> ElasticComputeCloudModel.AllocateHostsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try allocateHostsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AllocateIpamPoolCidr operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AllocateIpamPoolCidrRequest object being passed to this operation.
     - Returns: The AllocateIpamPoolCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func allocateIpamPoolCidr(input: ElasticComputeCloudModel.AllocateIpamPoolCidrRequest) async throws
     -> ElasticComputeCloudModel.AllocateIpamPoolCidrResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try allocateIpamPoolCidrAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ApplySecurityGroupsToClientVpnTargetNetwork operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ApplySecurityGroupsToClientVpnTargetNetworkRequest object being passed to this operation.
     - Returns: The ApplySecurityGroupsToClientVpnTargetNetworkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func applySecurityGroupsToClientVpnTargetNetwork(input: ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkRequest) async throws
     -> ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try applySecurityGroupsToClientVpnTargetNetworkAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AssignIpv6Addresses operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AssignIpv6AddressesRequest object being passed to this operation.
     - Returns: The AssignIpv6AddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func assignIpv6Addresses(input: ElasticComputeCloudModel.AssignIpv6AddressesRequest) async throws
     -> ElasticComputeCloudModel.AssignIpv6AddressesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try assignIpv6AddressesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AssignPrivateIpAddresses operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AssignPrivateIpAddressesRequest object being passed to this operation.
     - Returns: The AssignPrivateIpAddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func assignPrivateIpAddresses(input: ElasticComputeCloudModel.AssignPrivateIpAddressesRequest) async throws
     -> ElasticComputeCloudModel.AssignPrivateIpAddressesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try assignPrivateIpAddressesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AssignPrivateNatGatewayAddress operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AssignPrivateNatGatewayAddressRequest object being passed to this operation.
     - Returns: The AssignPrivateNatGatewayAddressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func assignPrivateNatGatewayAddress(input: ElasticComputeCloudModel.AssignPrivateNatGatewayAddressRequest) async throws
     -> ElasticComputeCloudModel.AssignPrivateNatGatewayAddressResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try assignPrivateNatGatewayAddressAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AssociateAddress operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AssociateAddressRequest object being passed to this operation.
     - Returns: The AssociateAddressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateAddress(input: ElasticComputeCloudModel.AssociateAddressRequest) async throws
     -> ElasticComputeCloudModel.AssociateAddressResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try associateAddressAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AssociateClientVpnTargetNetwork operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AssociateClientVpnTargetNetworkRequest object being passed to this operation.
     - Returns: The AssociateClientVpnTargetNetworkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateClientVpnTargetNetwork(input: ElasticComputeCloudModel.AssociateClientVpnTargetNetworkRequest) async throws
     -> ElasticComputeCloudModel.AssociateClientVpnTargetNetworkResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try associateClientVpnTargetNetworkAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AssociateDhcpOptions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AssociateDhcpOptionsRequest object being passed to this operation.
     */
    func associateDhcpOptions(input: ElasticComputeCloudModel.AssociateDhcpOptionsRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try associateDhcpOptionsAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AssociateEnclaveCertificateIamRole operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AssociateEnclaveCertificateIamRoleRequest object being passed to this operation.
     - Returns: The AssociateEnclaveCertificateIamRoleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateEnclaveCertificateIamRole(input: ElasticComputeCloudModel.AssociateEnclaveCertificateIamRoleRequest) async throws
     -> ElasticComputeCloudModel.AssociateEnclaveCertificateIamRoleResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try associateEnclaveCertificateIamRoleAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AssociateIamInstanceProfile operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AssociateIamInstanceProfileRequest object being passed to this operation.
     - Returns: The AssociateIamInstanceProfileResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateIamInstanceProfile(input: ElasticComputeCloudModel.AssociateIamInstanceProfileRequest) async throws
     -> ElasticComputeCloudModel.AssociateIamInstanceProfileResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try associateIamInstanceProfileAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AssociateInstanceEventWindow operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AssociateInstanceEventWindowRequest object being passed to this operation.
     - Returns: The AssociateInstanceEventWindowResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateInstanceEventWindow(input: ElasticComputeCloudModel.AssociateInstanceEventWindowRequest) async throws
     -> ElasticComputeCloudModel.AssociateInstanceEventWindowResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try associateInstanceEventWindowAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AssociateIpamResourceDiscovery operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AssociateIpamResourceDiscoveryRequest object being passed to this operation.
     - Returns: The AssociateIpamResourceDiscoveryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateIpamResourceDiscovery(input: ElasticComputeCloudModel.AssociateIpamResourceDiscoveryRequest) async throws
     -> ElasticComputeCloudModel.AssociateIpamResourceDiscoveryResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try associateIpamResourceDiscoveryAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AssociateNatGatewayAddress operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AssociateNatGatewayAddressRequest object being passed to this operation.
     - Returns: The AssociateNatGatewayAddressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateNatGatewayAddress(input: ElasticComputeCloudModel.AssociateNatGatewayAddressRequest) async throws
     -> ElasticComputeCloudModel.AssociateNatGatewayAddressResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try associateNatGatewayAddressAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AssociateRouteTable operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AssociateRouteTableRequest object being passed to this operation.
     - Returns: The AssociateRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateRouteTable(input: ElasticComputeCloudModel.AssociateRouteTableRequest) async throws
     -> ElasticComputeCloudModel.AssociateRouteTableResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try associateRouteTableAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AssociateSubnetCidrBlock operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AssociateSubnetCidrBlockRequest object being passed to this operation.
     - Returns: The AssociateSubnetCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateSubnetCidrBlock(input: ElasticComputeCloudModel.AssociateSubnetCidrBlockRequest) async throws
     -> ElasticComputeCloudModel.AssociateSubnetCidrBlockResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try associateSubnetCidrBlockAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AssociateTransitGatewayMulticastDomain operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AssociateTransitGatewayMulticastDomainRequest object being passed to this operation.
     - Returns: The AssociateTransitGatewayMulticastDomainResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateTransitGatewayMulticastDomain(input: ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainRequest) async throws
     -> ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try associateTransitGatewayMulticastDomainAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AssociateTransitGatewayPolicyTable operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AssociateTransitGatewayPolicyTableRequest object being passed to this operation.
     - Returns: The AssociateTransitGatewayPolicyTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateTransitGatewayPolicyTable(input: ElasticComputeCloudModel.AssociateTransitGatewayPolicyTableRequest) async throws
     -> ElasticComputeCloudModel.AssociateTransitGatewayPolicyTableResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try associateTransitGatewayPolicyTableAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AssociateTransitGatewayRouteTable operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AssociateTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: The AssociateTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateTransitGatewayRouteTable(input: ElasticComputeCloudModel.AssociateTransitGatewayRouteTableRequest) async throws
     -> ElasticComputeCloudModel.AssociateTransitGatewayRouteTableResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try associateTransitGatewayRouteTableAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AssociateTrunkInterface operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AssociateTrunkInterfaceRequest object being passed to this operation.
     - Returns: The AssociateTrunkInterfaceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateTrunkInterface(input: ElasticComputeCloudModel.AssociateTrunkInterfaceRequest) async throws
     -> ElasticComputeCloudModel.AssociateTrunkInterfaceResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try associateTrunkInterfaceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AssociateVpcCidrBlock operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AssociateVpcCidrBlockRequest object being passed to this operation.
     - Returns: The AssociateVpcCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateVpcCidrBlock(input: ElasticComputeCloudModel.AssociateVpcCidrBlockRequest) async throws
     -> ElasticComputeCloudModel.AssociateVpcCidrBlockResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try associateVpcCidrBlockAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AttachClassicLinkVpc operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AttachClassicLinkVpcRequest object being passed to this operation.
     - Returns: The AttachClassicLinkVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func attachClassicLinkVpc(input: ElasticComputeCloudModel.AttachClassicLinkVpcRequest) async throws
     -> ElasticComputeCloudModel.AttachClassicLinkVpcResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try attachClassicLinkVpcAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AttachInternetGateway operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AttachInternetGatewayRequest object being passed to this operation.
     */
    func attachInternetGateway(input: ElasticComputeCloudModel.AttachInternetGatewayRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try attachInternetGatewayAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AttachNetworkInterface operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AttachNetworkInterfaceRequest object being passed to this operation.
     - Returns: The AttachNetworkInterfaceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func attachNetworkInterface(input: ElasticComputeCloudModel.AttachNetworkInterfaceRequest) async throws
     -> ElasticComputeCloudModel.AttachNetworkInterfaceResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try attachNetworkInterfaceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AttachVerifiedAccessTrustProvider operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AttachVerifiedAccessTrustProviderRequest object being passed to this operation.
     - Returns: The AttachVerifiedAccessTrustProviderResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func attachVerifiedAccessTrustProvider(input: ElasticComputeCloudModel.AttachVerifiedAccessTrustProviderRequest) async throws
     -> ElasticComputeCloudModel.AttachVerifiedAccessTrustProviderResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try attachVerifiedAccessTrustProviderAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AttachVolume operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AttachVolumeRequest object being passed to this operation.
     - Returns: The VolumeAttachment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func attachVolume(input: ElasticComputeCloudModel.AttachVolumeRequest) async throws
     -> ElasticComputeCloudModel.VolumeAttachment {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try attachVolumeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AttachVpnGateway operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AttachVpnGatewayRequest object being passed to this operation.
     - Returns: The AttachVpnGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func attachVpnGateway(input: ElasticComputeCloudModel.AttachVpnGatewayRequest) async throws
     -> ElasticComputeCloudModel.AttachVpnGatewayResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try attachVpnGatewayAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AuthorizeClientVpnIngress operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AuthorizeClientVpnIngressRequest object being passed to this operation.
     - Returns: The AuthorizeClientVpnIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func authorizeClientVpnIngress(input: ElasticComputeCloudModel.AuthorizeClientVpnIngressRequest) async throws
     -> ElasticComputeCloudModel.AuthorizeClientVpnIngressResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try authorizeClientVpnIngressAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AuthorizeSecurityGroupEgress operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AuthorizeSecurityGroupEgressRequest object being passed to this operation.
     - Returns: The AuthorizeSecurityGroupEgressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func authorizeSecurityGroupEgress(input: ElasticComputeCloudModel.AuthorizeSecurityGroupEgressRequest) async throws
     -> ElasticComputeCloudModel.AuthorizeSecurityGroupEgressResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try authorizeSecurityGroupEgressAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AuthorizeSecurityGroupIngress operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AuthorizeSecurityGroupIngressRequest object being passed to this operation.
     - Returns: The AuthorizeSecurityGroupIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func authorizeSecurityGroupIngress(input: ElasticComputeCloudModel.AuthorizeSecurityGroupIngressRequest) async throws
     -> ElasticComputeCloudModel.AuthorizeSecurityGroupIngressResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try authorizeSecurityGroupIngressAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the BundleInstance operation and asynchronously returning the response.

     - Parameters:
         - input: The validated BundleInstanceRequest object being passed to this operation.
     - Returns: The BundleInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func bundleInstance(input: ElasticComputeCloudModel.BundleInstanceRequest) async throws
     -> ElasticComputeCloudModel.BundleInstanceResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try bundleInstanceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CancelBundleTask operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CancelBundleTaskRequest object being passed to this operation.
     - Returns: The CancelBundleTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelBundleTask(input: ElasticComputeCloudModel.CancelBundleTaskRequest) async throws
     -> ElasticComputeCloudModel.CancelBundleTaskResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try cancelBundleTaskAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CancelCapacityReservation operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CancelCapacityReservationRequest object being passed to this operation.
     - Returns: The CancelCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelCapacityReservation(input: ElasticComputeCloudModel.CancelCapacityReservationRequest) async throws
     -> ElasticComputeCloudModel.CancelCapacityReservationResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try cancelCapacityReservationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CancelCapacityReservationFleets operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CancelCapacityReservationFleetsRequest object being passed to this operation.
     - Returns: The CancelCapacityReservationFleetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelCapacityReservationFleets(input: ElasticComputeCloudModel.CancelCapacityReservationFleetsRequest) async throws
     -> ElasticComputeCloudModel.CancelCapacityReservationFleetsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try cancelCapacityReservationFleetsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CancelConversionTask operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CancelConversionRequest object being passed to this operation.
     */
    func cancelConversionTask(input: ElasticComputeCloudModel.CancelConversionRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try cancelConversionTaskAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CancelExportTask operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CancelExportTaskRequest object being passed to this operation.
     */
    func cancelExportTask(input: ElasticComputeCloudModel.CancelExportTaskRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try cancelExportTaskAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CancelImageLaunchPermission operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CancelImageLaunchPermissionRequest object being passed to this operation.
     - Returns: The CancelImageLaunchPermissionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelImageLaunchPermission(input: ElasticComputeCloudModel.CancelImageLaunchPermissionRequest) async throws
     -> ElasticComputeCloudModel.CancelImageLaunchPermissionResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try cancelImageLaunchPermissionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CancelImportTask operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CancelImportTaskRequest object being passed to this operation.
     - Returns: The CancelImportTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelImportTask(input: ElasticComputeCloudModel.CancelImportTaskRequest) async throws
     -> ElasticComputeCloudModel.CancelImportTaskResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try cancelImportTaskAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CancelReservedInstancesListing operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CancelReservedInstancesListingRequest object being passed to this operation.
     - Returns: The CancelReservedInstancesListingResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelReservedInstancesListing(input: ElasticComputeCloudModel.CancelReservedInstancesListingRequest) async throws
     -> ElasticComputeCloudModel.CancelReservedInstancesListingResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try cancelReservedInstancesListingAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CancelSpotFleetRequests operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CancelSpotFleetRequestsRequest object being passed to this operation.
     - Returns: The CancelSpotFleetRequestsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelSpotFleetRequests(input: ElasticComputeCloudModel.CancelSpotFleetRequestsRequest) async throws
     -> ElasticComputeCloudModel.CancelSpotFleetRequestsResponse {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try cancelSpotFleetRequestsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CancelSpotInstanceRequests operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CancelSpotInstanceRequestsRequest object being passed to this operation.
     - Returns: The CancelSpotInstanceRequestsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelSpotInstanceRequests(input: ElasticComputeCloudModel.CancelSpotInstanceRequestsRequest) async throws
     -> ElasticComputeCloudModel.CancelSpotInstanceRequestsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try cancelSpotInstanceRequestsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ConfirmProductInstance operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ConfirmProductInstanceRequest object being passed to this operation.
     - Returns: The ConfirmProductInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func confirmProductInstance(input: ElasticComputeCloudModel.ConfirmProductInstanceRequest) async throws
     -> ElasticComputeCloudModel.ConfirmProductInstanceResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try confirmProductInstanceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CopyFpgaImage operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CopyFpgaImageRequest object being passed to this operation.
     - Returns: The CopyFpgaImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func copyFpgaImage(input: ElasticComputeCloudModel.CopyFpgaImageRequest) async throws
     -> ElasticComputeCloudModel.CopyFpgaImageResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try copyFpgaImageAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CopyImage operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CopyImageRequest object being passed to this operation.
     - Returns: The CopyImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func copyImage(input: ElasticComputeCloudModel.CopyImageRequest) async throws
     -> ElasticComputeCloudModel.CopyImageResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try copyImageAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CopySnapshot operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CopySnapshotRequest object being passed to this operation.
     - Returns: The CopySnapshotResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func copySnapshot(input: ElasticComputeCloudModel.CopySnapshotRequest) async throws
     -> ElasticComputeCloudModel.CopySnapshotResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try copySnapshotAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateCapacityReservation operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateCapacityReservationRequest object being passed to this operation.
     - Returns: The CreateCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createCapacityReservation(input: ElasticComputeCloudModel.CreateCapacityReservationRequest) async throws
     -> ElasticComputeCloudModel.CreateCapacityReservationResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createCapacityReservationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateCapacityReservationFleet operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateCapacityReservationFleetRequest object being passed to this operation.
     - Returns: The CreateCapacityReservationFleetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createCapacityReservationFleet(input: ElasticComputeCloudModel.CreateCapacityReservationFleetRequest) async throws
     -> ElasticComputeCloudModel.CreateCapacityReservationFleetResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createCapacityReservationFleetAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateCarrierGateway operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateCarrierGatewayRequest object being passed to this operation.
     - Returns: The CreateCarrierGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createCarrierGateway(input: ElasticComputeCloudModel.CreateCarrierGatewayRequest) async throws
     -> ElasticComputeCloudModel.CreateCarrierGatewayResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createCarrierGatewayAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateClientVpnEndpoint operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateClientVpnEndpointRequest object being passed to this operation.
     - Returns: The CreateClientVpnEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createClientVpnEndpoint(input: ElasticComputeCloudModel.CreateClientVpnEndpointRequest) async throws
     -> ElasticComputeCloudModel.CreateClientVpnEndpointResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createClientVpnEndpointAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateClientVpnRoute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateClientVpnRouteRequest object being passed to this operation.
     - Returns: The CreateClientVpnRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createClientVpnRoute(input: ElasticComputeCloudModel.CreateClientVpnRouteRequest) async throws
     -> ElasticComputeCloudModel.CreateClientVpnRouteResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createClientVpnRouteAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateCoipCidr operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateCoipCidrRequest object being passed to this operation.
     - Returns: The CreateCoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createCoipCidr(input: ElasticComputeCloudModel.CreateCoipCidrRequest) async throws
     -> ElasticComputeCloudModel.CreateCoipCidrResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createCoipCidrAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateCoipPool operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateCoipPoolRequest object being passed to this operation.
     - Returns: The CreateCoipPoolResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createCoipPool(input: ElasticComputeCloudModel.CreateCoipPoolRequest) async throws
     -> ElasticComputeCloudModel.CreateCoipPoolResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createCoipPoolAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateCustomerGateway operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateCustomerGatewayRequest object being passed to this operation.
     - Returns: The CreateCustomerGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createCustomerGateway(input: ElasticComputeCloudModel.CreateCustomerGatewayRequest) async throws
     -> ElasticComputeCloudModel.CreateCustomerGatewayResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createCustomerGatewayAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateDefaultSubnet operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateDefaultSubnetRequest object being passed to this operation.
     - Returns: The CreateDefaultSubnetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createDefaultSubnet(input: ElasticComputeCloudModel.CreateDefaultSubnetRequest) async throws
     -> ElasticComputeCloudModel.CreateDefaultSubnetResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createDefaultSubnetAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateDefaultVpc operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateDefaultVpcRequest object being passed to this operation.
     - Returns: The CreateDefaultVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createDefaultVpc(input: ElasticComputeCloudModel.CreateDefaultVpcRequest) async throws
     -> ElasticComputeCloudModel.CreateDefaultVpcResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createDefaultVpcAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateDhcpOptions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateDhcpOptionsRequest object being passed to this operation.
     - Returns: The CreateDhcpOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createDhcpOptions(input: ElasticComputeCloudModel.CreateDhcpOptionsRequest) async throws
     -> ElasticComputeCloudModel.CreateDhcpOptionsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createDhcpOptionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateEgressOnlyInternetGateway operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateEgressOnlyInternetGatewayRequest object being passed to this operation.
     - Returns: The CreateEgressOnlyInternetGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createEgressOnlyInternetGateway(input: ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayRequest) async throws
     -> ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createEgressOnlyInternetGatewayAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateFleet operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateFleetRequest object being passed to this operation.
     - Returns: The CreateFleetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createFleet(input: ElasticComputeCloudModel.CreateFleetRequest) async throws
     -> ElasticComputeCloudModel.CreateFleetResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createFleetAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateFlowLogs operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateFlowLogsRequest object being passed to this operation.
     - Returns: The CreateFlowLogsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createFlowLogs(input: ElasticComputeCloudModel.CreateFlowLogsRequest) async throws
     -> ElasticComputeCloudModel.CreateFlowLogsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createFlowLogsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateFpgaImage operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateFpgaImageRequest object being passed to this operation.
     - Returns: The CreateFpgaImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createFpgaImage(input: ElasticComputeCloudModel.CreateFpgaImageRequest) async throws
     -> ElasticComputeCloudModel.CreateFpgaImageResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createFpgaImageAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateImage operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateImageRequest object being passed to this operation.
     - Returns: The CreateImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createImage(input: ElasticComputeCloudModel.CreateImageRequest) async throws
     -> ElasticComputeCloudModel.CreateImageResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createImageAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateInstanceConnectEndpoint operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateInstanceConnectEndpointRequest object being passed to this operation.
     - Returns: The CreateInstanceConnectEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createInstanceConnectEndpoint(input: ElasticComputeCloudModel.CreateInstanceConnectEndpointRequest) async throws
     -> ElasticComputeCloudModel.CreateInstanceConnectEndpointResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createInstanceConnectEndpointAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateInstanceEventWindow operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateInstanceEventWindowRequest object being passed to this operation.
     - Returns: The CreateInstanceEventWindowResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createInstanceEventWindow(input: ElasticComputeCloudModel.CreateInstanceEventWindowRequest) async throws
     -> ElasticComputeCloudModel.CreateInstanceEventWindowResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createInstanceEventWindowAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateInstanceExportTask operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateInstanceExportTaskRequest object being passed to this operation.
     - Returns: The CreateInstanceExportTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createInstanceExportTask(input: ElasticComputeCloudModel.CreateInstanceExportTaskRequest) async throws
     -> ElasticComputeCloudModel.CreateInstanceExportTaskResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createInstanceExportTaskAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateInternetGateway operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateInternetGatewayRequest object being passed to this operation.
     - Returns: The CreateInternetGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createInternetGateway(input: ElasticComputeCloudModel.CreateInternetGatewayRequest) async throws
     -> ElasticComputeCloudModel.CreateInternetGatewayResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createInternetGatewayAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateIpam operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateIpamRequest object being passed to this operation.
     - Returns: The CreateIpamResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createIpam(input: ElasticComputeCloudModel.CreateIpamRequest) async throws
     -> ElasticComputeCloudModel.CreateIpamResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createIpamAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateIpamPool operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateIpamPoolRequest object being passed to this operation.
     - Returns: The CreateIpamPoolResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createIpamPool(input: ElasticComputeCloudModel.CreateIpamPoolRequest) async throws
     -> ElasticComputeCloudModel.CreateIpamPoolResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createIpamPoolAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateIpamResourceDiscovery operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateIpamResourceDiscoveryRequest object being passed to this operation.
     - Returns: The CreateIpamResourceDiscoveryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createIpamResourceDiscovery(input: ElasticComputeCloudModel.CreateIpamResourceDiscoveryRequest) async throws
     -> ElasticComputeCloudModel.CreateIpamResourceDiscoveryResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createIpamResourceDiscoveryAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateIpamScope operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateIpamScopeRequest object being passed to this operation.
     - Returns: The CreateIpamScopeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createIpamScope(input: ElasticComputeCloudModel.CreateIpamScopeRequest) async throws
     -> ElasticComputeCloudModel.CreateIpamScopeResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createIpamScopeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateKeyPair operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateKeyPairRequest object being passed to this operation.
     - Returns: The KeyPair object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createKeyPair(input: ElasticComputeCloudModel.CreateKeyPairRequest) async throws
     -> ElasticComputeCloudModel.KeyPair {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createKeyPairAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateLaunchTemplate operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateLaunchTemplateRequest object being passed to this operation.
     - Returns: The CreateLaunchTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createLaunchTemplate(input: ElasticComputeCloudModel.CreateLaunchTemplateRequest) async throws
     -> ElasticComputeCloudModel.CreateLaunchTemplateResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createLaunchTemplateAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateLaunchTemplateVersion operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateLaunchTemplateVersionRequest object being passed to this operation.
     - Returns: The CreateLaunchTemplateVersionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createLaunchTemplateVersion(input: ElasticComputeCloudModel.CreateLaunchTemplateVersionRequest) async throws
     -> ElasticComputeCloudModel.CreateLaunchTemplateVersionResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createLaunchTemplateVersionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateLocalGatewayRoute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateLocalGatewayRouteRequest object being passed to this operation.
     - Returns: The CreateLocalGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createLocalGatewayRoute(input: ElasticComputeCloudModel.CreateLocalGatewayRouteRequest) async throws
     -> ElasticComputeCloudModel.CreateLocalGatewayRouteResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createLocalGatewayRouteAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateLocalGatewayRouteTable operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateLocalGatewayRouteTableRequest object being passed to this operation.
     - Returns: The CreateLocalGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createLocalGatewayRouteTable(input: ElasticComputeCloudModel.CreateLocalGatewayRouteTableRequest) async throws
     -> ElasticComputeCloudModel.CreateLocalGatewayRouteTableResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createLocalGatewayRouteTableAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociation operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest object being passed to this operation.
     - Returns: The CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createLocalGatewayRouteTableVirtualInterfaceGroupAssociation(input: ElasticComputeCloudModel.CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest) async throws
     -> ElasticComputeCloudModel.CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createLocalGatewayRouteTableVirtualInterfaceGroupAssociationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateLocalGatewayRouteTableVpcAssociation operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateLocalGatewayRouteTableVpcAssociationRequest object being passed to this operation.
     - Returns: The CreateLocalGatewayRouteTableVpcAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createLocalGatewayRouteTableVpcAssociation(input: ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationRequest) async throws
     -> ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createLocalGatewayRouteTableVpcAssociationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateManagedPrefixList operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateManagedPrefixListRequest object being passed to this operation.
     - Returns: The CreateManagedPrefixListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createManagedPrefixList(input: ElasticComputeCloudModel.CreateManagedPrefixListRequest) async throws
     -> ElasticComputeCloudModel.CreateManagedPrefixListResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createManagedPrefixListAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateNatGateway operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateNatGatewayRequest object being passed to this operation.
     - Returns: The CreateNatGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createNatGateway(input: ElasticComputeCloudModel.CreateNatGatewayRequest) async throws
     -> ElasticComputeCloudModel.CreateNatGatewayResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createNatGatewayAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateNetworkAcl operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateNetworkAclRequest object being passed to this operation.
     - Returns: The CreateNetworkAclResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createNetworkAcl(input: ElasticComputeCloudModel.CreateNetworkAclRequest) async throws
     -> ElasticComputeCloudModel.CreateNetworkAclResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createNetworkAclAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateNetworkAclEntry operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateNetworkAclEntryRequest object being passed to this operation.
     */
    func createNetworkAclEntry(input: ElasticComputeCloudModel.CreateNetworkAclEntryRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createNetworkAclEntryAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateNetworkInsightsAccessScope operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateNetworkInsightsAccessScopeRequest object being passed to this operation.
     - Returns: The CreateNetworkInsightsAccessScopeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createNetworkInsightsAccessScope(input: ElasticComputeCloudModel.CreateNetworkInsightsAccessScopeRequest) async throws
     -> ElasticComputeCloudModel.CreateNetworkInsightsAccessScopeResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createNetworkInsightsAccessScopeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateNetworkInsightsPath operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateNetworkInsightsPathRequest object being passed to this operation.
     - Returns: The CreateNetworkInsightsPathResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createNetworkInsightsPath(input: ElasticComputeCloudModel.CreateNetworkInsightsPathRequest) async throws
     -> ElasticComputeCloudModel.CreateNetworkInsightsPathResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createNetworkInsightsPathAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateNetworkInterface operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateNetworkInterfaceRequest object being passed to this operation.
     - Returns: The CreateNetworkInterfaceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createNetworkInterface(input: ElasticComputeCloudModel.CreateNetworkInterfaceRequest) async throws
     -> ElasticComputeCloudModel.CreateNetworkInterfaceResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createNetworkInterfaceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateNetworkInterfacePermission operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateNetworkInterfacePermissionRequest object being passed to this operation.
     - Returns: The CreateNetworkInterfacePermissionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createNetworkInterfacePermission(input: ElasticComputeCloudModel.CreateNetworkInterfacePermissionRequest) async throws
     -> ElasticComputeCloudModel.CreateNetworkInterfacePermissionResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createNetworkInterfacePermissionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreatePlacementGroup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreatePlacementGroupRequest object being passed to this operation.
     - Returns: The CreatePlacementGroupResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createPlacementGroup(input: ElasticComputeCloudModel.CreatePlacementGroupRequest) async throws
     -> ElasticComputeCloudModel.CreatePlacementGroupResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createPlacementGroupAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreatePublicIpv4Pool operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreatePublicIpv4PoolRequest object being passed to this operation.
     - Returns: The CreatePublicIpv4PoolResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createPublicIpv4Pool(input: ElasticComputeCloudModel.CreatePublicIpv4PoolRequest) async throws
     -> ElasticComputeCloudModel.CreatePublicIpv4PoolResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createPublicIpv4PoolAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateReplaceRootVolumeTask operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateReplaceRootVolumeTaskRequest object being passed to this operation.
     - Returns: The CreateReplaceRootVolumeTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createReplaceRootVolumeTask(input: ElasticComputeCloudModel.CreateReplaceRootVolumeTaskRequest) async throws
     -> ElasticComputeCloudModel.CreateReplaceRootVolumeTaskResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createReplaceRootVolumeTaskAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateReservedInstancesListing operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateReservedInstancesListingRequest object being passed to this operation.
     - Returns: The CreateReservedInstancesListingResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createReservedInstancesListing(input: ElasticComputeCloudModel.CreateReservedInstancesListingRequest) async throws
     -> ElasticComputeCloudModel.CreateReservedInstancesListingResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createReservedInstancesListingAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateRestoreImageTask operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateRestoreImageTaskRequest object being passed to this operation.
     - Returns: The CreateRestoreImageTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createRestoreImageTask(input: ElasticComputeCloudModel.CreateRestoreImageTaskRequest) async throws
     -> ElasticComputeCloudModel.CreateRestoreImageTaskResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createRestoreImageTaskAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateRoute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateRouteRequest object being passed to this operation.
     - Returns: The CreateRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createRoute(input: ElasticComputeCloudModel.CreateRouteRequest) async throws
     -> ElasticComputeCloudModel.CreateRouteResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createRouteAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateRouteTable operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateRouteTableRequest object being passed to this operation.
     - Returns: The CreateRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createRouteTable(input: ElasticComputeCloudModel.CreateRouteTableRequest) async throws
     -> ElasticComputeCloudModel.CreateRouteTableResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createRouteTableAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateSecurityGroup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateSecurityGroupRequest object being passed to this operation.
     - Returns: The CreateSecurityGroupResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createSecurityGroup(input: ElasticComputeCloudModel.CreateSecurityGroupRequest) async throws
     -> ElasticComputeCloudModel.CreateSecurityGroupResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createSecurityGroupAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateSnapshot operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateSnapshotRequest object being passed to this operation.
     - Returns: The Snapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createSnapshot(input: ElasticComputeCloudModel.CreateSnapshotRequest) async throws
     -> ElasticComputeCloudModel.Snapshot {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createSnapshotAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateSnapshots operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateSnapshotsRequest object being passed to this operation.
     - Returns: The CreateSnapshotsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createSnapshots(input: ElasticComputeCloudModel.CreateSnapshotsRequest) async throws
     -> ElasticComputeCloudModel.CreateSnapshotsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createSnapshotsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateSpotDatafeedSubscription operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateSpotDatafeedSubscriptionRequest object being passed to this operation.
     - Returns: The CreateSpotDatafeedSubscriptionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createSpotDatafeedSubscription(input: ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionRequest) async throws
     -> ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createSpotDatafeedSubscriptionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateStoreImageTask operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateStoreImageTaskRequest object being passed to this operation.
     - Returns: The CreateStoreImageTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createStoreImageTask(input: ElasticComputeCloudModel.CreateStoreImageTaskRequest) async throws
     -> ElasticComputeCloudModel.CreateStoreImageTaskResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createStoreImageTaskAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateSubnet operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateSubnetRequest object being passed to this operation.
     - Returns: The CreateSubnetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createSubnet(input: ElasticComputeCloudModel.CreateSubnetRequest) async throws
     -> ElasticComputeCloudModel.CreateSubnetResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createSubnetAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateSubnetCidrReservation operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateSubnetCidrReservationRequest object being passed to this operation.
     - Returns: The CreateSubnetCidrReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createSubnetCidrReservation(input: ElasticComputeCloudModel.CreateSubnetCidrReservationRequest) async throws
     -> ElasticComputeCloudModel.CreateSubnetCidrReservationResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createSubnetCidrReservationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateTags operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateTagsRequest object being passed to this operation.
     */
    func createTags(input: ElasticComputeCloudModel.CreateTagsRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createTagsAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateTrafficMirrorFilter operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateTrafficMirrorFilterRequest object being passed to this operation.
     - Returns: The CreateTrafficMirrorFilterResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTrafficMirrorFilter(input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRequest) async throws
     -> ElasticComputeCloudModel.CreateTrafficMirrorFilterResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createTrafficMirrorFilterAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateTrafficMirrorFilterRule operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateTrafficMirrorFilterRuleRequest object being passed to this operation.
     - Returns: The CreateTrafficMirrorFilterRuleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTrafficMirrorFilterRule(input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleRequest) async throws
     -> ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createTrafficMirrorFilterRuleAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateTrafficMirrorSession operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateTrafficMirrorSessionRequest object being passed to this operation.
     - Returns: The CreateTrafficMirrorSessionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTrafficMirrorSession(input: ElasticComputeCloudModel.CreateTrafficMirrorSessionRequest) async throws
     -> ElasticComputeCloudModel.CreateTrafficMirrorSessionResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createTrafficMirrorSessionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateTrafficMirrorTarget operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateTrafficMirrorTargetRequest object being passed to this operation.
     - Returns: The CreateTrafficMirrorTargetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTrafficMirrorTarget(input: ElasticComputeCloudModel.CreateTrafficMirrorTargetRequest) async throws
     -> ElasticComputeCloudModel.CreateTrafficMirrorTargetResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createTrafficMirrorTargetAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateTransitGateway operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateTransitGatewayRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGateway(input: ElasticComputeCloudModel.CreateTransitGatewayRequest) async throws
     -> ElasticComputeCloudModel.CreateTransitGatewayResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createTransitGatewayAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateTransitGatewayConnect operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateTransitGatewayConnectRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayConnectResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayConnect(input: ElasticComputeCloudModel.CreateTransitGatewayConnectRequest) async throws
     -> ElasticComputeCloudModel.CreateTransitGatewayConnectResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createTransitGatewayConnectAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateTransitGatewayConnectPeer operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateTransitGatewayConnectPeerRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayConnectPeerResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayConnectPeer(input: ElasticComputeCloudModel.CreateTransitGatewayConnectPeerRequest) async throws
     -> ElasticComputeCloudModel.CreateTransitGatewayConnectPeerResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createTransitGatewayConnectPeerAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateTransitGatewayMulticastDomain operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateTransitGatewayMulticastDomainRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayMulticastDomainResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayMulticastDomain(input: ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainRequest) async throws
     -> ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createTransitGatewayMulticastDomainAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateTransitGatewayPeeringAttachment operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateTransitGatewayPeeringAttachmentRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayPeeringAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayPeeringAttachment(input: ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentRequest) async throws
     -> ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createTransitGatewayPeeringAttachmentAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateTransitGatewayPolicyTable operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateTransitGatewayPolicyTableRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayPolicyTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayPolicyTable(input: ElasticComputeCloudModel.CreateTransitGatewayPolicyTableRequest) async throws
     -> ElasticComputeCloudModel.CreateTransitGatewayPolicyTableResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createTransitGatewayPolicyTableAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateTransitGatewayPrefixListReference operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateTransitGatewayPrefixListReferenceRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayPrefixListReferenceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayPrefixListReference(input: ElasticComputeCloudModel.CreateTransitGatewayPrefixListReferenceRequest) async throws
     -> ElasticComputeCloudModel.CreateTransitGatewayPrefixListReferenceResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createTransitGatewayPrefixListReferenceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateTransitGatewayRoute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateTransitGatewayRouteRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayRoute(input: ElasticComputeCloudModel.CreateTransitGatewayRouteRequest) async throws
     -> ElasticComputeCloudModel.CreateTransitGatewayRouteResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createTransitGatewayRouteAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateTransitGatewayRouteTable operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayRouteTable(input: ElasticComputeCloudModel.CreateTransitGatewayRouteTableRequest) async throws
     -> ElasticComputeCloudModel.CreateTransitGatewayRouteTableResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createTransitGatewayRouteTableAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateTransitGatewayRouteTableAnnouncement operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateTransitGatewayRouteTableAnnouncementRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayRouteTableAnnouncementResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayRouteTableAnnouncement(input: ElasticComputeCloudModel.CreateTransitGatewayRouteTableAnnouncementRequest) async throws
     -> ElasticComputeCloudModel.CreateTransitGatewayRouteTableAnnouncementResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createTransitGatewayRouteTableAnnouncementAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateTransitGatewayVpcAttachment operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayVpcAttachment(input: ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentRequest) async throws
     -> ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createTransitGatewayVpcAttachmentAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateVerifiedAccessEndpoint operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateVerifiedAccessEndpointRequest object being passed to this operation.
     - Returns: The CreateVerifiedAccessEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVerifiedAccessEndpoint(input: ElasticComputeCloudModel.CreateVerifiedAccessEndpointRequest) async throws
     -> ElasticComputeCloudModel.CreateVerifiedAccessEndpointResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createVerifiedAccessEndpointAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateVerifiedAccessGroup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateVerifiedAccessGroupRequest object being passed to this operation.
     - Returns: The CreateVerifiedAccessGroupResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVerifiedAccessGroup(input: ElasticComputeCloudModel.CreateVerifiedAccessGroupRequest) async throws
     -> ElasticComputeCloudModel.CreateVerifiedAccessGroupResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createVerifiedAccessGroupAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateVerifiedAccessInstance operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateVerifiedAccessInstanceRequest object being passed to this operation.
     - Returns: The CreateVerifiedAccessInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVerifiedAccessInstance(input: ElasticComputeCloudModel.CreateVerifiedAccessInstanceRequest) async throws
     -> ElasticComputeCloudModel.CreateVerifiedAccessInstanceResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createVerifiedAccessInstanceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateVerifiedAccessTrustProvider operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateVerifiedAccessTrustProviderRequest object being passed to this operation.
     - Returns: The CreateVerifiedAccessTrustProviderResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVerifiedAccessTrustProvider(input: ElasticComputeCloudModel.CreateVerifiedAccessTrustProviderRequest) async throws
     -> ElasticComputeCloudModel.CreateVerifiedAccessTrustProviderResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createVerifiedAccessTrustProviderAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateVolume operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateVolumeRequest object being passed to this operation.
     - Returns: The Volume object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVolume(input: ElasticComputeCloudModel.CreateVolumeRequest) async throws
     -> ElasticComputeCloudModel.Volume {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createVolumeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateVpc operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateVpcRequest object being passed to this operation.
     - Returns: The CreateVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpc(input: ElasticComputeCloudModel.CreateVpcRequest) async throws
     -> ElasticComputeCloudModel.CreateVpcResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createVpcAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateVpcEndpoint operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateVpcEndpointRequest object being passed to this operation.
     - Returns: The CreateVpcEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpcEndpoint(input: ElasticComputeCloudModel.CreateVpcEndpointRequest) async throws
     -> ElasticComputeCloudModel.CreateVpcEndpointResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createVpcEndpointAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateVpcEndpointConnectionNotification operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateVpcEndpointConnectionNotificationRequest object being passed to this operation.
     - Returns: The CreateVpcEndpointConnectionNotificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpcEndpointConnectionNotification(input: ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationRequest) async throws
     -> ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createVpcEndpointConnectionNotificationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateVpcEndpointServiceConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateVpcEndpointServiceConfigurationRequest object being passed to this operation.
     - Returns: The CreateVpcEndpointServiceConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpcEndpointServiceConfiguration(input: ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationRequest) async throws
     -> ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createVpcEndpointServiceConfigurationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateVpcPeeringConnection operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: The CreateVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpcPeeringConnection(input: ElasticComputeCloudModel.CreateVpcPeeringConnectionRequest) async throws
     -> ElasticComputeCloudModel.CreateVpcPeeringConnectionResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createVpcPeeringConnectionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateVpnConnection operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateVpnConnectionRequest object being passed to this operation.
     - Returns: The CreateVpnConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpnConnection(input: ElasticComputeCloudModel.CreateVpnConnectionRequest) async throws
     -> ElasticComputeCloudModel.CreateVpnConnectionResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createVpnConnectionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateVpnConnectionRoute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateVpnConnectionRouteRequest object being passed to this operation.
     */
    func createVpnConnectionRoute(input: ElasticComputeCloudModel.CreateVpnConnectionRouteRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createVpnConnectionRouteAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateVpnGateway operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateVpnGatewayRequest object being passed to this operation.
     - Returns: The CreateVpnGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpnGateway(input: ElasticComputeCloudModel.CreateVpnGatewayRequest) async throws
     -> ElasticComputeCloudModel.CreateVpnGatewayResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createVpnGatewayAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteCarrierGateway operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteCarrierGatewayRequest object being passed to this operation.
     - Returns: The DeleteCarrierGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteCarrierGateway(input: ElasticComputeCloudModel.DeleteCarrierGatewayRequest) async throws
     -> ElasticComputeCloudModel.DeleteCarrierGatewayResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteCarrierGatewayAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteClientVpnEndpoint operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteClientVpnEndpointRequest object being passed to this operation.
     - Returns: The DeleteClientVpnEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteClientVpnEndpoint(input: ElasticComputeCloudModel.DeleteClientVpnEndpointRequest) async throws
     -> ElasticComputeCloudModel.DeleteClientVpnEndpointResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteClientVpnEndpointAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteClientVpnRoute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteClientVpnRouteRequest object being passed to this operation.
     - Returns: The DeleteClientVpnRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteClientVpnRoute(input: ElasticComputeCloudModel.DeleteClientVpnRouteRequest) async throws
     -> ElasticComputeCloudModel.DeleteClientVpnRouteResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteClientVpnRouteAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteCoipCidr operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteCoipCidrRequest object being passed to this operation.
     - Returns: The DeleteCoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteCoipCidr(input: ElasticComputeCloudModel.DeleteCoipCidrRequest) async throws
     -> ElasticComputeCloudModel.DeleteCoipCidrResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteCoipCidrAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteCoipPool operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteCoipPoolRequest object being passed to this operation.
     - Returns: The DeleteCoipPoolResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteCoipPool(input: ElasticComputeCloudModel.DeleteCoipPoolRequest) async throws
     -> ElasticComputeCloudModel.DeleteCoipPoolResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteCoipPoolAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteCustomerGateway operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteCustomerGatewayRequest object being passed to this operation.
     */
    func deleteCustomerGateway(input: ElasticComputeCloudModel.DeleteCustomerGatewayRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteCustomerGatewayAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteDhcpOptions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteDhcpOptionsRequest object being passed to this operation.
     */
    func deleteDhcpOptions(input: ElasticComputeCloudModel.DeleteDhcpOptionsRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteDhcpOptionsAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteEgressOnlyInternetGateway operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteEgressOnlyInternetGatewayRequest object being passed to this operation.
     - Returns: The DeleteEgressOnlyInternetGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteEgressOnlyInternetGateway(input: ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayRequest) async throws
     -> ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteEgressOnlyInternetGatewayAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteFleets operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteFleetsRequest object being passed to this operation.
     - Returns: The DeleteFleetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteFleets(input: ElasticComputeCloudModel.DeleteFleetsRequest) async throws
     -> ElasticComputeCloudModel.DeleteFleetsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteFleetsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteFlowLogs operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteFlowLogsRequest object being passed to this operation.
     - Returns: The DeleteFlowLogsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteFlowLogs(input: ElasticComputeCloudModel.DeleteFlowLogsRequest) async throws
     -> ElasticComputeCloudModel.DeleteFlowLogsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteFlowLogsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteFpgaImage operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteFpgaImageRequest object being passed to this operation.
     - Returns: The DeleteFpgaImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteFpgaImage(input: ElasticComputeCloudModel.DeleteFpgaImageRequest) async throws
     -> ElasticComputeCloudModel.DeleteFpgaImageResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteFpgaImageAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteInstanceConnectEndpoint operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteInstanceConnectEndpointRequest object being passed to this operation.
     - Returns: The DeleteInstanceConnectEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteInstanceConnectEndpoint(input: ElasticComputeCloudModel.DeleteInstanceConnectEndpointRequest) async throws
     -> ElasticComputeCloudModel.DeleteInstanceConnectEndpointResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteInstanceConnectEndpointAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteInstanceEventWindow operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteInstanceEventWindowRequest object being passed to this operation.
     - Returns: The DeleteInstanceEventWindowResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteInstanceEventWindow(input: ElasticComputeCloudModel.DeleteInstanceEventWindowRequest) async throws
     -> ElasticComputeCloudModel.DeleteInstanceEventWindowResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteInstanceEventWindowAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteInternetGateway operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteInternetGatewayRequest object being passed to this operation.
     */
    func deleteInternetGateway(input: ElasticComputeCloudModel.DeleteInternetGatewayRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteInternetGatewayAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteIpam operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteIpamRequest object being passed to this operation.
     - Returns: The DeleteIpamResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteIpam(input: ElasticComputeCloudModel.DeleteIpamRequest) async throws
     -> ElasticComputeCloudModel.DeleteIpamResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteIpamAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteIpamPool operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteIpamPoolRequest object being passed to this operation.
     - Returns: The DeleteIpamPoolResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteIpamPool(input: ElasticComputeCloudModel.DeleteIpamPoolRequest) async throws
     -> ElasticComputeCloudModel.DeleteIpamPoolResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteIpamPoolAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteIpamResourceDiscovery operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteIpamResourceDiscoveryRequest object being passed to this operation.
     - Returns: The DeleteIpamResourceDiscoveryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteIpamResourceDiscovery(input: ElasticComputeCloudModel.DeleteIpamResourceDiscoveryRequest) async throws
     -> ElasticComputeCloudModel.DeleteIpamResourceDiscoveryResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteIpamResourceDiscoveryAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteIpamScope operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteIpamScopeRequest object being passed to this operation.
     - Returns: The DeleteIpamScopeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteIpamScope(input: ElasticComputeCloudModel.DeleteIpamScopeRequest) async throws
     -> ElasticComputeCloudModel.DeleteIpamScopeResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteIpamScopeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteKeyPair operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteKeyPairRequest object being passed to this operation.
     - Returns: The DeleteKeyPairResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteKeyPair(input: ElasticComputeCloudModel.DeleteKeyPairRequest) async throws
     -> ElasticComputeCloudModel.DeleteKeyPairResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteKeyPairAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteLaunchTemplate operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteLaunchTemplateRequest object being passed to this operation.
     - Returns: The DeleteLaunchTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteLaunchTemplate(input: ElasticComputeCloudModel.DeleteLaunchTemplateRequest) async throws
     -> ElasticComputeCloudModel.DeleteLaunchTemplateResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteLaunchTemplateAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteLaunchTemplateVersions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteLaunchTemplateVersionsRequest object being passed to this operation.
     - Returns: The DeleteLaunchTemplateVersionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteLaunchTemplateVersions(input: ElasticComputeCloudModel.DeleteLaunchTemplateVersionsRequest) async throws
     -> ElasticComputeCloudModel.DeleteLaunchTemplateVersionsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteLaunchTemplateVersionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteLocalGatewayRoute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteLocalGatewayRouteRequest object being passed to this operation.
     - Returns: The DeleteLocalGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteLocalGatewayRoute(input: ElasticComputeCloudModel.DeleteLocalGatewayRouteRequest) async throws
     -> ElasticComputeCloudModel.DeleteLocalGatewayRouteResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteLocalGatewayRouteAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteLocalGatewayRouteTable operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteLocalGatewayRouteTableRequest object being passed to this operation.
     - Returns: The DeleteLocalGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteLocalGatewayRouteTable(input: ElasticComputeCloudModel.DeleteLocalGatewayRouteTableRequest) async throws
     -> ElasticComputeCloudModel.DeleteLocalGatewayRouteTableResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteLocalGatewayRouteTableAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociation operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest object being passed to this operation.
     - Returns: The DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteLocalGatewayRouteTableVirtualInterfaceGroupAssociation(input: ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest) async throws
     -> ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteLocalGatewayRouteTableVpcAssociation operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteLocalGatewayRouteTableVpcAssociationRequest object being passed to this operation.
     - Returns: The DeleteLocalGatewayRouteTableVpcAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteLocalGatewayRouteTableVpcAssociation(input: ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationRequest) async throws
     -> ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteLocalGatewayRouteTableVpcAssociationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteManagedPrefixList operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteManagedPrefixListRequest object being passed to this operation.
     - Returns: The DeleteManagedPrefixListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteManagedPrefixList(input: ElasticComputeCloudModel.DeleteManagedPrefixListRequest) async throws
     -> ElasticComputeCloudModel.DeleteManagedPrefixListResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteManagedPrefixListAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteNatGateway operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteNatGatewayRequest object being passed to this operation.
     - Returns: The DeleteNatGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteNatGateway(input: ElasticComputeCloudModel.DeleteNatGatewayRequest) async throws
     -> ElasticComputeCloudModel.DeleteNatGatewayResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteNatGatewayAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteNetworkAcl operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteNetworkAclRequest object being passed to this operation.
     */
    func deleteNetworkAcl(input: ElasticComputeCloudModel.DeleteNetworkAclRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteNetworkAclAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteNetworkAclEntry operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteNetworkAclEntryRequest object being passed to this operation.
     */
    func deleteNetworkAclEntry(input: ElasticComputeCloudModel.DeleteNetworkAclEntryRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteNetworkAclEntryAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteNetworkInsightsAccessScope operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteNetworkInsightsAccessScopeRequest object being passed to this operation.
     - Returns: The DeleteNetworkInsightsAccessScopeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteNetworkInsightsAccessScope(input: ElasticComputeCloudModel.DeleteNetworkInsightsAccessScopeRequest) async throws
     -> ElasticComputeCloudModel.DeleteNetworkInsightsAccessScopeResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteNetworkInsightsAccessScopeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteNetworkInsightsAccessScopeAnalysis operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteNetworkInsightsAccessScopeAnalysisRequest object being passed to this operation.
     - Returns: The DeleteNetworkInsightsAccessScopeAnalysisResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteNetworkInsightsAccessScopeAnalysis(input: ElasticComputeCloudModel.DeleteNetworkInsightsAccessScopeAnalysisRequest) async throws
     -> ElasticComputeCloudModel.DeleteNetworkInsightsAccessScopeAnalysisResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteNetworkInsightsAccessScopeAnalysisAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteNetworkInsightsAnalysis operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteNetworkInsightsAnalysisRequest object being passed to this operation.
     - Returns: The DeleteNetworkInsightsAnalysisResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteNetworkInsightsAnalysis(input: ElasticComputeCloudModel.DeleteNetworkInsightsAnalysisRequest) async throws
     -> ElasticComputeCloudModel.DeleteNetworkInsightsAnalysisResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteNetworkInsightsAnalysisAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteNetworkInsightsPath operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteNetworkInsightsPathRequest object being passed to this operation.
     - Returns: The DeleteNetworkInsightsPathResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteNetworkInsightsPath(input: ElasticComputeCloudModel.DeleteNetworkInsightsPathRequest) async throws
     -> ElasticComputeCloudModel.DeleteNetworkInsightsPathResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteNetworkInsightsPathAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteNetworkInterface operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteNetworkInterfaceRequest object being passed to this operation.
     */
    func deleteNetworkInterface(input: ElasticComputeCloudModel.DeleteNetworkInterfaceRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteNetworkInterfaceAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteNetworkInterfacePermission operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteNetworkInterfacePermissionRequest object being passed to this operation.
     - Returns: The DeleteNetworkInterfacePermissionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteNetworkInterfacePermission(input: ElasticComputeCloudModel.DeleteNetworkInterfacePermissionRequest) async throws
     -> ElasticComputeCloudModel.DeleteNetworkInterfacePermissionResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteNetworkInterfacePermissionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeletePlacementGroup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeletePlacementGroupRequest object being passed to this operation.
     */
    func deletePlacementGroup(input: ElasticComputeCloudModel.DeletePlacementGroupRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deletePlacementGroupAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeletePublicIpv4Pool operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeletePublicIpv4PoolRequest object being passed to this operation.
     - Returns: The DeletePublicIpv4PoolResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deletePublicIpv4Pool(input: ElasticComputeCloudModel.DeletePublicIpv4PoolRequest) async throws
     -> ElasticComputeCloudModel.DeletePublicIpv4PoolResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deletePublicIpv4PoolAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteQueuedReservedInstances operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteQueuedReservedInstancesRequest object being passed to this operation.
     - Returns: The DeleteQueuedReservedInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteQueuedReservedInstances(input: ElasticComputeCloudModel.DeleteQueuedReservedInstancesRequest) async throws
     -> ElasticComputeCloudModel.DeleteQueuedReservedInstancesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteQueuedReservedInstancesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteRoute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteRouteRequest object being passed to this operation.
     */
    func deleteRoute(input: ElasticComputeCloudModel.DeleteRouteRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteRouteAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteRouteTable operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteRouteTableRequest object being passed to this operation.
     */
    func deleteRouteTable(input: ElasticComputeCloudModel.DeleteRouteTableRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteRouteTableAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteSecurityGroup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteSecurityGroupRequest object being passed to this operation.
     */
    func deleteSecurityGroup(input: ElasticComputeCloudModel.DeleteSecurityGroupRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteSecurityGroupAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteSnapshot operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteSnapshotRequest object being passed to this operation.
     */
    func deleteSnapshot(input: ElasticComputeCloudModel.DeleteSnapshotRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteSnapshotAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteSpotDatafeedSubscription operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteSpotDatafeedSubscriptionRequest object being passed to this operation.
     */
    func deleteSpotDatafeedSubscription(input: ElasticComputeCloudModel.DeleteSpotDatafeedSubscriptionRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteSpotDatafeedSubscriptionAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteSubnet operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteSubnetRequest object being passed to this operation.
     */
    func deleteSubnet(input: ElasticComputeCloudModel.DeleteSubnetRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteSubnetAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteSubnetCidrReservation operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteSubnetCidrReservationRequest object being passed to this operation.
     - Returns: The DeleteSubnetCidrReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteSubnetCidrReservation(input: ElasticComputeCloudModel.DeleteSubnetCidrReservationRequest) async throws
     -> ElasticComputeCloudModel.DeleteSubnetCidrReservationResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteSubnetCidrReservationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteTags operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteTagsRequest object being passed to this operation.
     */
    func deleteTags(input: ElasticComputeCloudModel.DeleteTagsRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteTagsAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteTrafficMirrorFilter operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteTrafficMirrorFilterRequest object being passed to this operation.
     - Returns: The DeleteTrafficMirrorFilterResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTrafficMirrorFilter(input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRequest) async throws
     -> ElasticComputeCloudModel.DeleteTrafficMirrorFilterResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteTrafficMirrorFilterAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteTrafficMirrorFilterRule operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteTrafficMirrorFilterRuleRequest object being passed to this operation.
     - Returns: The DeleteTrafficMirrorFilterRuleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTrafficMirrorFilterRule(input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleRequest) async throws
     -> ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteTrafficMirrorFilterRuleAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteTrafficMirrorSession operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteTrafficMirrorSessionRequest object being passed to this operation.
     - Returns: The DeleteTrafficMirrorSessionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTrafficMirrorSession(input: ElasticComputeCloudModel.DeleteTrafficMirrorSessionRequest) async throws
     -> ElasticComputeCloudModel.DeleteTrafficMirrorSessionResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteTrafficMirrorSessionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteTrafficMirrorTarget operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteTrafficMirrorTargetRequest object being passed to this operation.
     - Returns: The DeleteTrafficMirrorTargetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTrafficMirrorTarget(input: ElasticComputeCloudModel.DeleteTrafficMirrorTargetRequest) async throws
     -> ElasticComputeCloudModel.DeleteTrafficMirrorTargetResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteTrafficMirrorTargetAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteTransitGateway operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteTransitGatewayRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGateway(input: ElasticComputeCloudModel.DeleteTransitGatewayRequest) async throws
     -> ElasticComputeCloudModel.DeleteTransitGatewayResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteTransitGatewayAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteTransitGatewayConnect operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteTransitGatewayConnectRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayConnectResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayConnect(input: ElasticComputeCloudModel.DeleteTransitGatewayConnectRequest) async throws
     -> ElasticComputeCloudModel.DeleteTransitGatewayConnectResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteTransitGatewayConnectAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteTransitGatewayConnectPeer operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteTransitGatewayConnectPeerRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayConnectPeerResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayConnectPeer(input: ElasticComputeCloudModel.DeleteTransitGatewayConnectPeerRequest) async throws
     -> ElasticComputeCloudModel.DeleteTransitGatewayConnectPeerResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteTransitGatewayConnectPeerAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteTransitGatewayMulticastDomain operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteTransitGatewayMulticastDomainRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayMulticastDomainResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayMulticastDomain(input: ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainRequest) async throws
     -> ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteTransitGatewayMulticastDomainAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteTransitGatewayPeeringAttachment operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteTransitGatewayPeeringAttachmentRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayPeeringAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayPeeringAttachment(input: ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentRequest) async throws
     -> ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteTransitGatewayPeeringAttachmentAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteTransitGatewayPolicyTable operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteTransitGatewayPolicyTableRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayPolicyTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayPolicyTable(input: ElasticComputeCloudModel.DeleteTransitGatewayPolicyTableRequest) async throws
     -> ElasticComputeCloudModel.DeleteTransitGatewayPolicyTableResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteTransitGatewayPolicyTableAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteTransitGatewayPrefixListReference operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteTransitGatewayPrefixListReferenceRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayPrefixListReferenceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayPrefixListReference(input: ElasticComputeCloudModel.DeleteTransitGatewayPrefixListReferenceRequest) async throws
     -> ElasticComputeCloudModel.DeleteTransitGatewayPrefixListReferenceResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteTransitGatewayPrefixListReferenceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteTransitGatewayRoute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteTransitGatewayRouteRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayRoute(input: ElasticComputeCloudModel.DeleteTransitGatewayRouteRequest) async throws
     -> ElasticComputeCloudModel.DeleteTransitGatewayRouteResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteTransitGatewayRouteAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteTransitGatewayRouteTable operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayRouteTable(input: ElasticComputeCloudModel.DeleteTransitGatewayRouteTableRequest) async throws
     -> ElasticComputeCloudModel.DeleteTransitGatewayRouteTableResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteTransitGatewayRouteTableAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteTransitGatewayRouteTableAnnouncement operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteTransitGatewayRouteTableAnnouncementRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayRouteTableAnnouncementResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayRouteTableAnnouncement(input: ElasticComputeCloudModel.DeleteTransitGatewayRouteTableAnnouncementRequest) async throws
     -> ElasticComputeCloudModel.DeleteTransitGatewayRouteTableAnnouncementResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteTransitGatewayRouteTableAnnouncementAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteTransitGatewayVpcAttachment operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayVpcAttachment(input: ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentRequest) async throws
     -> ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteTransitGatewayVpcAttachmentAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteVerifiedAccessEndpoint operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteVerifiedAccessEndpointRequest object being passed to this operation.
     - Returns: The DeleteVerifiedAccessEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteVerifiedAccessEndpoint(input: ElasticComputeCloudModel.DeleteVerifiedAccessEndpointRequest) async throws
     -> ElasticComputeCloudModel.DeleteVerifiedAccessEndpointResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteVerifiedAccessEndpointAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteVerifiedAccessGroup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteVerifiedAccessGroupRequest object being passed to this operation.
     - Returns: The DeleteVerifiedAccessGroupResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteVerifiedAccessGroup(input: ElasticComputeCloudModel.DeleteVerifiedAccessGroupRequest) async throws
     -> ElasticComputeCloudModel.DeleteVerifiedAccessGroupResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteVerifiedAccessGroupAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteVerifiedAccessInstance operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteVerifiedAccessInstanceRequest object being passed to this operation.
     - Returns: The DeleteVerifiedAccessInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteVerifiedAccessInstance(input: ElasticComputeCloudModel.DeleteVerifiedAccessInstanceRequest) async throws
     -> ElasticComputeCloudModel.DeleteVerifiedAccessInstanceResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteVerifiedAccessInstanceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteVerifiedAccessTrustProvider operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteVerifiedAccessTrustProviderRequest object being passed to this operation.
     - Returns: The DeleteVerifiedAccessTrustProviderResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteVerifiedAccessTrustProvider(input: ElasticComputeCloudModel.DeleteVerifiedAccessTrustProviderRequest) async throws
     -> ElasticComputeCloudModel.DeleteVerifiedAccessTrustProviderResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteVerifiedAccessTrustProviderAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteVolume operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteVolumeRequest object being passed to this operation.
     */
    func deleteVolume(input: ElasticComputeCloudModel.DeleteVolumeRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteVolumeAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteVpc operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteVpcRequest object being passed to this operation.
     */
    func deleteVpc(input: ElasticComputeCloudModel.DeleteVpcRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteVpcAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteVpcEndpointConnectionNotifications operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteVpcEndpointConnectionNotificationsRequest object being passed to this operation.
     - Returns: The DeleteVpcEndpointConnectionNotificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteVpcEndpointConnectionNotifications(input: ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsRequest) async throws
     -> ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteVpcEndpointConnectionNotificationsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteVpcEndpointServiceConfigurations operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteVpcEndpointServiceConfigurationsRequest object being passed to this operation.
     - Returns: The DeleteVpcEndpointServiceConfigurationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteVpcEndpointServiceConfigurations(input: ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsRequest) async throws
     -> ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteVpcEndpointServiceConfigurationsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteVpcEndpoints operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteVpcEndpointsRequest object being passed to this operation.
     - Returns: The DeleteVpcEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteVpcEndpoints(input: ElasticComputeCloudModel.DeleteVpcEndpointsRequest) async throws
     -> ElasticComputeCloudModel.DeleteVpcEndpointsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteVpcEndpointsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteVpcPeeringConnection operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: The DeleteVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteVpcPeeringConnection(input: ElasticComputeCloudModel.DeleteVpcPeeringConnectionRequest) async throws
     -> ElasticComputeCloudModel.DeleteVpcPeeringConnectionResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteVpcPeeringConnectionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteVpnConnection operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteVpnConnectionRequest object being passed to this operation.
     */
    func deleteVpnConnection(input: ElasticComputeCloudModel.DeleteVpnConnectionRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteVpnConnectionAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteVpnConnectionRoute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteVpnConnectionRouteRequest object being passed to this operation.
     */
    func deleteVpnConnectionRoute(input: ElasticComputeCloudModel.DeleteVpnConnectionRouteRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteVpnConnectionRouteAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteVpnGateway operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteVpnGatewayRequest object being passed to this operation.
     */
    func deleteVpnGateway(input: ElasticComputeCloudModel.DeleteVpnGatewayRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteVpnGatewayAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeprovisionByoipCidr operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeprovisionByoipCidrRequest object being passed to this operation.
     - Returns: The DeprovisionByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deprovisionByoipCidr(input: ElasticComputeCloudModel.DeprovisionByoipCidrRequest) async throws
     -> ElasticComputeCloudModel.DeprovisionByoipCidrResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deprovisionByoipCidrAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeprovisionIpamPoolCidr operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeprovisionIpamPoolCidrRequest object being passed to this operation.
     - Returns: The DeprovisionIpamPoolCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deprovisionIpamPoolCidr(input: ElasticComputeCloudModel.DeprovisionIpamPoolCidrRequest) async throws
     -> ElasticComputeCloudModel.DeprovisionIpamPoolCidrResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deprovisionIpamPoolCidrAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeprovisionPublicIpv4PoolCidr operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeprovisionPublicIpv4PoolCidrRequest object being passed to this operation.
     - Returns: The DeprovisionPublicIpv4PoolCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deprovisionPublicIpv4PoolCidr(input: ElasticComputeCloudModel.DeprovisionPublicIpv4PoolCidrRequest) async throws
     -> ElasticComputeCloudModel.DeprovisionPublicIpv4PoolCidrResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deprovisionPublicIpv4PoolCidrAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeregisterImage operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeregisterImageRequest object being passed to this operation.
     */
    func deregisterImage(input: ElasticComputeCloudModel.DeregisterImageRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deregisterImageAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeregisterInstanceEventNotificationAttributes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeregisterInstanceEventNotificationAttributesRequest object being passed to this operation.
     - Returns: The DeregisterInstanceEventNotificationAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deregisterInstanceEventNotificationAttributes(input: ElasticComputeCloudModel.DeregisterInstanceEventNotificationAttributesRequest) async throws
     -> ElasticComputeCloudModel.DeregisterInstanceEventNotificationAttributesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deregisterInstanceEventNotificationAttributesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeregisterTransitGatewayMulticastGroupMembers operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeregisterTransitGatewayMulticastGroupMembersRequest object being passed to this operation.
     - Returns: The DeregisterTransitGatewayMulticastGroupMembersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deregisterTransitGatewayMulticastGroupMembers(input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersRequest) async throws
     -> ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deregisterTransitGatewayMulticastGroupMembersAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeregisterTransitGatewayMulticastGroupSources operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeregisterTransitGatewayMulticastGroupSourcesRequest object being passed to this operation.
     - Returns: The DeregisterTransitGatewayMulticastGroupSourcesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deregisterTransitGatewayMulticastGroupSources(input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesRequest) async throws
     -> ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deregisterTransitGatewayMulticastGroupSourcesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeAccountAttributes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeAccountAttributesRequest object being passed to this operation.
     - Returns: The DescribeAccountAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAccountAttributes(input: ElasticComputeCloudModel.DescribeAccountAttributesRequest) async throws
     -> ElasticComputeCloudModel.DescribeAccountAttributesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeAccountAttributesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeAddressTransfers operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeAddressTransfersRequest object being passed to this operation.
     - Returns: The DescribeAddressTransfersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAddressTransfers(input: ElasticComputeCloudModel.DescribeAddressTransfersRequest) async throws
     -> ElasticComputeCloudModel.DescribeAddressTransfersResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeAddressTransfersAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeAddresses operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeAddressesRequest object being passed to this operation.
     - Returns: The DescribeAddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAddresses(input: ElasticComputeCloudModel.DescribeAddressesRequest) async throws
     -> ElasticComputeCloudModel.DescribeAddressesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeAddressesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeAddressesAttribute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeAddressesAttributeRequest object being passed to this operation.
     - Returns: The DescribeAddressesAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAddressesAttribute(input: ElasticComputeCloudModel.DescribeAddressesAttributeRequest) async throws
     -> ElasticComputeCloudModel.DescribeAddressesAttributeResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeAddressesAttributeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeAggregateIdFormat operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeAggregateIdFormatRequest object being passed to this operation.
     - Returns: The DescribeAggregateIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAggregateIdFormat(input: ElasticComputeCloudModel.DescribeAggregateIdFormatRequest) async throws
     -> ElasticComputeCloudModel.DescribeAggregateIdFormatResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeAggregateIdFormatAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeAvailabilityZones operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeAvailabilityZonesRequest object being passed to this operation.
     - Returns: The DescribeAvailabilityZonesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAvailabilityZones(input: ElasticComputeCloudModel.DescribeAvailabilityZonesRequest) async throws
     -> ElasticComputeCloudModel.DescribeAvailabilityZonesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeAvailabilityZonesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeAwsNetworkPerformanceMetricSubscriptions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeAwsNetworkPerformanceMetricSubscriptionsRequest object being passed to this operation.
     - Returns: The DescribeAwsNetworkPerformanceMetricSubscriptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAwsNetworkPerformanceMetricSubscriptions(input: ElasticComputeCloudModel.DescribeAwsNetworkPerformanceMetricSubscriptionsRequest) async throws
     -> ElasticComputeCloudModel.DescribeAwsNetworkPerformanceMetricSubscriptionsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeAwsNetworkPerformanceMetricSubscriptionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeBundleTasks operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeBundleTasksRequest object being passed to this operation.
     - Returns: The DescribeBundleTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeBundleTasks(input: ElasticComputeCloudModel.DescribeBundleTasksRequest) async throws
     -> ElasticComputeCloudModel.DescribeBundleTasksResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeBundleTasksAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeByoipCidrs operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeByoipCidrsRequest object being passed to this operation.
     - Returns: The DescribeByoipCidrsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeByoipCidrs(input: ElasticComputeCloudModel.DescribeByoipCidrsRequest) async throws
     -> ElasticComputeCloudModel.DescribeByoipCidrsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeByoipCidrsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeCapacityReservationFleets operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeCapacityReservationFleetsRequest object being passed to this operation.
     - Returns: The DescribeCapacityReservationFleetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeCapacityReservationFleets(input: ElasticComputeCloudModel.DescribeCapacityReservationFleetsRequest) async throws
     -> ElasticComputeCloudModel.DescribeCapacityReservationFleetsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeCapacityReservationFleetsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeCapacityReservations operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeCapacityReservationsRequest object being passed to this operation.
     - Returns: The DescribeCapacityReservationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeCapacityReservations(input: ElasticComputeCloudModel.DescribeCapacityReservationsRequest) async throws
     -> ElasticComputeCloudModel.DescribeCapacityReservationsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeCapacityReservationsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeCarrierGateways operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeCarrierGatewaysRequest object being passed to this operation.
     - Returns: The DescribeCarrierGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeCarrierGateways(input: ElasticComputeCloudModel.DescribeCarrierGatewaysRequest) async throws
     -> ElasticComputeCloudModel.DescribeCarrierGatewaysResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeCarrierGatewaysAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeClassicLinkInstances operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeClassicLinkInstancesRequest object being passed to this operation.
     - Returns: The DescribeClassicLinkInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClassicLinkInstances(input: ElasticComputeCloudModel.DescribeClassicLinkInstancesRequest) async throws
     -> ElasticComputeCloudModel.DescribeClassicLinkInstancesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeClassicLinkInstancesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeClientVpnAuthorizationRules operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeClientVpnAuthorizationRulesRequest object being passed to this operation.
     - Returns: The DescribeClientVpnAuthorizationRulesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClientVpnAuthorizationRules(input: ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesRequest) async throws
     -> ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeClientVpnAuthorizationRulesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeClientVpnConnections operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeClientVpnConnectionsRequest object being passed to this operation.
     - Returns: The DescribeClientVpnConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClientVpnConnections(input: ElasticComputeCloudModel.DescribeClientVpnConnectionsRequest) async throws
     -> ElasticComputeCloudModel.DescribeClientVpnConnectionsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeClientVpnConnectionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeClientVpnEndpoints operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeClientVpnEndpointsRequest object being passed to this operation.
     - Returns: The DescribeClientVpnEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClientVpnEndpoints(input: ElasticComputeCloudModel.DescribeClientVpnEndpointsRequest) async throws
     -> ElasticComputeCloudModel.DescribeClientVpnEndpointsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeClientVpnEndpointsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeClientVpnRoutes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeClientVpnRoutesRequest object being passed to this operation.
     - Returns: The DescribeClientVpnRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClientVpnRoutes(input: ElasticComputeCloudModel.DescribeClientVpnRoutesRequest) async throws
     -> ElasticComputeCloudModel.DescribeClientVpnRoutesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeClientVpnRoutesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeClientVpnTargetNetworks operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeClientVpnTargetNetworksRequest object being passed to this operation.
     - Returns: The DescribeClientVpnTargetNetworksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClientVpnTargetNetworks(input: ElasticComputeCloudModel.DescribeClientVpnTargetNetworksRequest) async throws
     -> ElasticComputeCloudModel.DescribeClientVpnTargetNetworksResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeClientVpnTargetNetworksAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeCoipPools operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeCoipPoolsRequest object being passed to this operation.
     - Returns: The DescribeCoipPoolsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeCoipPools(input: ElasticComputeCloudModel.DescribeCoipPoolsRequest) async throws
     -> ElasticComputeCloudModel.DescribeCoipPoolsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeCoipPoolsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeConversionTasks operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeConversionTasksRequest object being passed to this operation.
     - Returns: The DescribeConversionTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeConversionTasks(input: ElasticComputeCloudModel.DescribeConversionTasksRequest) async throws
     -> ElasticComputeCloudModel.DescribeConversionTasksResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeConversionTasksAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeCustomerGateways operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeCustomerGatewaysRequest object being passed to this operation.
     - Returns: The DescribeCustomerGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeCustomerGateways(input: ElasticComputeCloudModel.DescribeCustomerGatewaysRequest) async throws
     -> ElasticComputeCloudModel.DescribeCustomerGatewaysResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeCustomerGatewaysAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeDhcpOptions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeDhcpOptionsRequest object being passed to this operation.
     - Returns: The DescribeDhcpOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeDhcpOptions(input: ElasticComputeCloudModel.DescribeDhcpOptionsRequest) async throws
     -> ElasticComputeCloudModel.DescribeDhcpOptionsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeDhcpOptionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeEgressOnlyInternetGateways operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeEgressOnlyInternetGatewaysRequest object being passed to this operation.
     - Returns: The DescribeEgressOnlyInternetGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEgressOnlyInternetGateways(input: ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysRequest) async throws
     -> ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeEgressOnlyInternetGatewaysAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeElasticGpus operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeElasticGpusRequest object being passed to this operation.
     - Returns: The DescribeElasticGpusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeElasticGpus(input: ElasticComputeCloudModel.DescribeElasticGpusRequest) async throws
     -> ElasticComputeCloudModel.DescribeElasticGpusResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeElasticGpusAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeExportImageTasks operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeExportImageTasksRequest object being passed to this operation.
     - Returns: The DescribeExportImageTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeExportImageTasks(input: ElasticComputeCloudModel.DescribeExportImageTasksRequest) async throws
     -> ElasticComputeCloudModel.DescribeExportImageTasksResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeExportImageTasksAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeExportTasks operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeExportTasksRequest object being passed to this operation.
     - Returns: The DescribeExportTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeExportTasks(input: ElasticComputeCloudModel.DescribeExportTasksRequest) async throws
     -> ElasticComputeCloudModel.DescribeExportTasksResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeExportTasksAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeFastLaunchImages operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeFastLaunchImagesRequest object being passed to this operation.
     - Returns: The DescribeFastLaunchImagesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFastLaunchImages(input: ElasticComputeCloudModel.DescribeFastLaunchImagesRequest) async throws
     -> ElasticComputeCloudModel.DescribeFastLaunchImagesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeFastLaunchImagesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeFastSnapshotRestores operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeFastSnapshotRestoresRequest object being passed to this operation.
     - Returns: The DescribeFastSnapshotRestoresResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFastSnapshotRestores(input: ElasticComputeCloudModel.DescribeFastSnapshotRestoresRequest) async throws
     -> ElasticComputeCloudModel.DescribeFastSnapshotRestoresResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeFastSnapshotRestoresAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeFleetHistory operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeFleetHistoryRequest object being passed to this operation.
     - Returns: The DescribeFleetHistoryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFleetHistory(input: ElasticComputeCloudModel.DescribeFleetHistoryRequest) async throws
     -> ElasticComputeCloudModel.DescribeFleetHistoryResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeFleetHistoryAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeFleetInstances operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeFleetInstancesRequest object being passed to this operation.
     - Returns: The DescribeFleetInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFleetInstances(input: ElasticComputeCloudModel.DescribeFleetInstancesRequest) async throws
     -> ElasticComputeCloudModel.DescribeFleetInstancesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeFleetInstancesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeFleets operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeFleetsRequest object being passed to this operation.
     - Returns: The DescribeFleetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFleets(input: ElasticComputeCloudModel.DescribeFleetsRequest) async throws
     -> ElasticComputeCloudModel.DescribeFleetsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeFleetsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeFlowLogs operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeFlowLogsRequest object being passed to this operation.
     - Returns: The DescribeFlowLogsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFlowLogs(input: ElasticComputeCloudModel.DescribeFlowLogsRequest) async throws
     -> ElasticComputeCloudModel.DescribeFlowLogsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeFlowLogsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeFpgaImageAttribute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeFpgaImageAttributeRequest object being passed to this operation.
     - Returns: The DescribeFpgaImageAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFpgaImageAttribute(input: ElasticComputeCloudModel.DescribeFpgaImageAttributeRequest) async throws
     -> ElasticComputeCloudModel.DescribeFpgaImageAttributeResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeFpgaImageAttributeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeFpgaImages operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeFpgaImagesRequest object being passed to this operation.
     - Returns: The DescribeFpgaImagesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFpgaImages(input: ElasticComputeCloudModel.DescribeFpgaImagesRequest) async throws
     -> ElasticComputeCloudModel.DescribeFpgaImagesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeFpgaImagesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeHostReservationOfferings operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeHostReservationOfferingsRequest object being passed to this operation.
     - Returns: The DescribeHostReservationOfferingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeHostReservationOfferings(input: ElasticComputeCloudModel.DescribeHostReservationOfferingsRequest) async throws
     -> ElasticComputeCloudModel.DescribeHostReservationOfferingsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeHostReservationOfferingsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeHostReservations operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeHostReservationsRequest object being passed to this operation.
     - Returns: The DescribeHostReservationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeHostReservations(input: ElasticComputeCloudModel.DescribeHostReservationsRequest) async throws
     -> ElasticComputeCloudModel.DescribeHostReservationsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeHostReservationsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeHosts operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeHostsRequest object being passed to this operation.
     - Returns: The DescribeHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeHosts(input: ElasticComputeCloudModel.DescribeHostsRequest) async throws
     -> ElasticComputeCloudModel.DescribeHostsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeHostsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeIamInstanceProfileAssociations operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeIamInstanceProfileAssociationsRequest object being passed to this operation.
     - Returns: The DescribeIamInstanceProfileAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIamInstanceProfileAssociations(input: ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsRequest) async throws
     -> ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeIamInstanceProfileAssociationsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeIdFormat operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeIdFormatRequest object being passed to this operation.
     - Returns: The DescribeIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIdFormat(input: ElasticComputeCloudModel.DescribeIdFormatRequest) async throws
     -> ElasticComputeCloudModel.DescribeIdFormatResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeIdFormatAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeIdentityIdFormat operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeIdentityIdFormatRequest object being passed to this operation.
     - Returns: The DescribeIdentityIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIdentityIdFormat(input: ElasticComputeCloudModel.DescribeIdentityIdFormatRequest) async throws
     -> ElasticComputeCloudModel.DescribeIdentityIdFormatResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeIdentityIdFormatAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeImageAttribute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeImageAttributeRequest object being passed to this operation.
     - Returns: The ImageAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeImageAttribute(input: ElasticComputeCloudModel.DescribeImageAttributeRequest) async throws
     -> ElasticComputeCloudModel.ImageAttribute {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeImageAttributeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeImages operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeImagesRequest object being passed to this operation.
     - Returns: The DescribeImagesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeImages(input: ElasticComputeCloudModel.DescribeImagesRequest) async throws
     -> ElasticComputeCloudModel.DescribeImagesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeImagesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeImportImageTasks operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeImportImageTasksRequest object being passed to this operation.
     - Returns: The DescribeImportImageTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeImportImageTasks(input: ElasticComputeCloudModel.DescribeImportImageTasksRequest) async throws
     -> ElasticComputeCloudModel.DescribeImportImageTasksResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeImportImageTasksAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeImportSnapshotTasks operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeImportSnapshotTasksRequest object being passed to this operation.
     - Returns: The DescribeImportSnapshotTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeImportSnapshotTasks(input: ElasticComputeCloudModel.DescribeImportSnapshotTasksRequest) async throws
     -> ElasticComputeCloudModel.DescribeImportSnapshotTasksResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeImportSnapshotTasksAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeInstanceAttribute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeInstanceAttributeRequest object being passed to this operation.
     - Returns: The InstanceAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceAttribute(input: ElasticComputeCloudModel.DescribeInstanceAttributeRequest) async throws
     -> ElasticComputeCloudModel.InstanceAttribute {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeInstanceAttributeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeInstanceConnectEndpoints operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeInstanceConnectEndpointsRequest object being passed to this operation.
     - Returns: The DescribeInstanceConnectEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceConnectEndpoints(input: ElasticComputeCloudModel.DescribeInstanceConnectEndpointsRequest) async throws
     -> ElasticComputeCloudModel.DescribeInstanceConnectEndpointsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeInstanceConnectEndpointsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeInstanceCreditSpecifications operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeInstanceCreditSpecificationsRequest object being passed to this operation.
     - Returns: The DescribeInstanceCreditSpecificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceCreditSpecifications(input: ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsRequest) async throws
     -> ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeInstanceCreditSpecificationsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeInstanceEventNotificationAttributes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeInstanceEventNotificationAttributesRequest object being passed to this operation.
     - Returns: The DescribeInstanceEventNotificationAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceEventNotificationAttributes(input: ElasticComputeCloudModel.DescribeInstanceEventNotificationAttributesRequest) async throws
     -> ElasticComputeCloudModel.DescribeInstanceEventNotificationAttributesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeInstanceEventNotificationAttributesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeInstanceEventWindows operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeInstanceEventWindowsRequest object being passed to this operation.
     - Returns: The DescribeInstanceEventWindowsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceEventWindows(input: ElasticComputeCloudModel.DescribeInstanceEventWindowsRequest) async throws
     -> ElasticComputeCloudModel.DescribeInstanceEventWindowsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeInstanceEventWindowsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeInstanceStatus operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeInstanceStatusRequest object being passed to this operation.
     - Returns: The DescribeInstanceStatusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceStatus(input: ElasticComputeCloudModel.DescribeInstanceStatusRequest) async throws
     -> ElasticComputeCloudModel.DescribeInstanceStatusResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeInstanceStatusAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeInstanceTypeOfferings operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeInstanceTypeOfferingsRequest object being passed to this operation.
     - Returns: The DescribeInstanceTypeOfferingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceTypeOfferings(input: ElasticComputeCloudModel.DescribeInstanceTypeOfferingsRequest) async throws
     -> ElasticComputeCloudModel.DescribeInstanceTypeOfferingsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeInstanceTypeOfferingsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeInstanceTypes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeInstanceTypesRequest object being passed to this operation.
     - Returns: The DescribeInstanceTypesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceTypes(input: ElasticComputeCloudModel.DescribeInstanceTypesRequest) async throws
     -> ElasticComputeCloudModel.DescribeInstanceTypesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeInstanceTypesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeInstances operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeInstancesRequest object being passed to this operation.
     - Returns: The DescribeInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstances(input: ElasticComputeCloudModel.DescribeInstancesRequest) async throws
     -> ElasticComputeCloudModel.DescribeInstancesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeInstancesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeInternetGateways operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeInternetGatewaysRequest object being passed to this operation.
     - Returns: The DescribeInternetGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInternetGateways(input: ElasticComputeCloudModel.DescribeInternetGatewaysRequest) async throws
     -> ElasticComputeCloudModel.DescribeInternetGatewaysResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeInternetGatewaysAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeIpamPools operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeIpamPoolsRequest object being passed to this operation.
     - Returns: The DescribeIpamPoolsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIpamPools(input: ElasticComputeCloudModel.DescribeIpamPoolsRequest) async throws
     -> ElasticComputeCloudModel.DescribeIpamPoolsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeIpamPoolsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeIpamResourceDiscoveries operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeIpamResourceDiscoveriesRequest object being passed to this operation.
     - Returns: The DescribeIpamResourceDiscoveriesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIpamResourceDiscoveries(input: ElasticComputeCloudModel.DescribeIpamResourceDiscoveriesRequest) async throws
     -> ElasticComputeCloudModel.DescribeIpamResourceDiscoveriesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeIpamResourceDiscoveriesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeIpamResourceDiscoveryAssociations operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeIpamResourceDiscoveryAssociationsRequest object being passed to this operation.
     - Returns: The DescribeIpamResourceDiscoveryAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIpamResourceDiscoveryAssociations(input: ElasticComputeCloudModel.DescribeIpamResourceDiscoveryAssociationsRequest) async throws
     -> ElasticComputeCloudModel.DescribeIpamResourceDiscoveryAssociationsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeIpamResourceDiscoveryAssociationsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeIpamScopes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeIpamScopesRequest object being passed to this operation.
     - Returns: The DescribeIpamScopesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIpamScopes(input: ElasticComputeCloudModel.DescribeIpamScopesRequest) async throws
     -> ElasticComputeCloudModel.DescribeIpamScopesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeIpamScopesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeIpams operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeIpamsRequest object being passed to this operation.
     - Returns: The DescribeIpamsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIpams(input: ElasticComputeCloudModel.DescribeIpamsRequest) async throws
     -> ElasticComputeCloudModel.DescribeIpamsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeIpamsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeIpv6Pools operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeIpv6PoolsRequest object being passed to this operation.
     - Returns: The DescribeIpv6PoolsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIpv6Pools(input: ElasticComputeCloudModel.DescribeIpv6PoolsRequest) async throws
     -> ElasticComputeCloudModel.DescribeIpv6PoolsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeIpv6PoolsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeKeyPairs operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeKeyPairsRequest object being passed to this operation.
     - Returns: The DescribeKeyPairsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeKeyPairs(input: ElasticComputeCloudModel.DescribeKeyPairsRequest) async throws
     -> ElasticComputeCloudModel.DescribeKeyPairsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeKeyPairsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeLaunchTemplateVersions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeLaunchTemplateVersionsRequest object being passed to this operation.
     - Returns: The DescribeLaunchTemplateVersionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLaunchTemplateVersions(input: ElasticComputeCloudModel.DescribeLaunchTemplateVersionsRequest) async throws
     -> ElasticComputeCloudModel.DescribeLaunchTemplateVersionsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeLaunchTemplateVersionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeLaunchTemplates operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeLaunchTemplatesRequest object being passed to this operation.
     - Returns: The DescribeLaunchTemplatesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLaunchTemplates(input: ElasticComputeCloudModel.DescribeLaunchTemplatesRequest) async throws
     -> ElasticComputeCloudModel.DescribeLaunchTemplatesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeLaunchTemplatesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLocalGatewayRouteTableVirtualInterfaceGroupAssociations(input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest) async throws
     -> ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeLocalGatewayRouteTableVpcAssociations operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTableVpcAssociationsRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewayRouteTableVpcAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLocalGatewayRouteTableVpcAssociations(input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsRequest) async throws
     -> ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeLocalGatewayRouteTableVpcAssociationsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeLocalGatewayRouteTables operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTablesRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewayRouteTablesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLocalGatewayRouteTables(input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesRequest) async throws
     -> ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeLocalGatewayRouteTablesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeLocalGatewayVirtualInterfaceGroups operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeLocalGatewayVirtualInterfaceGroupsRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewayVirtualInterfaceGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLocalGatewayVirtualInterfaceGroups(input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsRequest) async throws
     -> ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeLocalGatewayVirtualInterfaceGroupsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeLocalGatewayVirtualInterfaces operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeLocalGatewayVirtualInterfacesRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewayVirtualInterfacesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLocalGatewayVirtualInterfaces(input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesRequest) async throws
     -> ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeLocalGatewayVirtualInterfacesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeLocalGateways operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeLocalGatewaysRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLocalGateways(input: ElasticComputeCloudModel.DescribeLocalGatewaysRequest) async throws
     -> ElasticComputeCloudModel.DescribeLocalGatewaysResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeLocalGatewaysAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeManagedPrefixLists operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeManagedPrefixListsRequest object being passed to this operation.
     - Returns: The DescribeManagedPrefixListsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeManagedPrefixLists(input: ElasticComputeCloudModel.DescribeManagedPrefixListsRequest) async throws
     -> ElasticComputeCloudModel.DescribeManagedPrefixListsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeManagedPrefixListsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeMovingAddresses operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeMovingAddressesRequest object being passed to this operation.
     - Returns: The DescribeMovingAddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeMovingAddresses(input: ElasticComputeCloudModel.DescribeMovingAddressesRequest) async throws
     -> ElasticComputeCloudModel.DescribeMovingAddressesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeMovingAddressesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeNatGateways operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeNatGatewaysRequest object being passed to this operation.
     - Returns: The DescribeNatGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNatGateways(input: ElasticComputeCloudModel.DescribeNatGatewaysRequest) async throws
     -> ElasticComputeCloudModel.DescribeNatGatewaysResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeNatGatewaysAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeNetworkAcls operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeNetworkAclsRequest object being passed to this operation.
     - Returns: The DescribeNetworkAclsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkAcls(input: ElasticComputeCloudModel.DescribeNetworkAclsRequest) async throws
     -> ElasticComputeCloudModel.DescribeNetworkAclsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeNetworkAclsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeNetworkInsightsAccessScopeAnalyses operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeNetworkInsightsAccessScopeAnalysesRequest object being passed to this operation.
     - Returns: The DescribeNetworkInsightsAccessScopeAnalysesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkInsightsAccessScopeAnalyses(input: ElasticComputeCloudModel.DescribeNetworkInsightsAccessScopeAnalysesRequest) async throws
     -> ElasticComputeCloudModel.DescribeNetworkInsightsAccessScopeAnalysesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeNetworkInsightsAccessScopeAnalysesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeNetworkInsightsAccessScopes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeNetworkInsightsAccessScopesRequest object being passed to this operation.
     - Returns: The DescribeNetworkInsightsAccessScopesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkInsightsAccessScopes(input: ElasticComputeCloudModel.DescribeNetworkInsightsAccessScopesRequest) async throws
     -> ElasticComputeCloudModel.DescribeNetworkInsightsAccessScopesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeNetworkInsightsAccessScopesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeNetworkInsightsAnalyses operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeNetworkInsightsAnalysesRequest object being passed to this operation.
     - Returns: The DescribeNetworkInsightsAnalysesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkInsightsAnalyses(input: ElasticComputeCloudModel.DescribeNetworkInsightsAnalysesRequest) async throws
     -> ElasticComputeCloudModel.DescribeNetworkInsightsAnalysesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeNetworkInsightsAnalysesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeNetworkInsightsPaths operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeNetworkInsightsPathsRequest object being passed to this operation.
     - Returns: The DescribeNetworkInsightsPathsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkInsightsPaths(input: ElasticComputeCloudModel.DescribeNetworkInsightsPathsRequest) async throws
     -> ElasticComputeCloudModel.DescribeNetworkInsightsPathsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeNetworkInsightsPathsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeNetworkInterfaceAttribute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeNetworkInterfaceAttributeRequest object being passed to this operation.
     - Returns: The DescribeNetworkInterfaceAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkInterfaceAttribute(input: ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeRequest) async throws
     -> ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeNetworkInterfaceAttributeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeNetworkInterfacePermissions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeNetworkInterfacePermissionsRequest object being passed to this operation.
     - Returns: The DescribeNetworkInterfacePermissionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkInterfacePermissions(input: ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsRequest) async throws
     -> ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeNetworkInterfacePermissionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeNetworkInterfaces operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeNetworkInterfacesRequest object being passed to this operation.
     - Returns: The DescribeNetworkInterfacesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkInterfaces(input: ElasticComputeCloudModel.DescribeNetworkInterfacesRequest) async throws
     -> ElasticComputeCloudModel.DescribeNetworkInterfacesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeNetworkInterfacesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribePlacementGroups operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribePlacementGroupsRequest object being passed to this operation.
     - Returns: The DescribePlacementGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describePlacementGroups(input: ElasticComputeCloudModel.DescribePlacementGroupsRequest) async throws
     -> ElasticComputeCloudModel.DescribePlacementGroupsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describePlacementGroupsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribePrefixLists operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribePrefixListsRequest object being passed to this operation.
     - Returns: The DescribePrefixListsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describePrefixLists(input: ElasticComputeCloudModel.DescribePrefixListsRequest) async throws
     -> ElasticComputeCloudModel.DescribePrefixListsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describePrefixListsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribePrincipalIdFormat operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribePrincipalIdFormatRequest object being passed to this operation.
     - Returns: The DescribePrincipalIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describePrincipalIdFormat(input: ElasticComputeCloudModel.DescribePrincipalIdFormatRequest) async throws
     -> ElasticComputeCloudModel.DescribePrincipalIdFormatResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describePrincipalIdFormatAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribePublicIpv4Pools operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribePublicIpv4PoolsRequest object being passed to this operation.
     - Returns: The DescribePublicIpv4PoolsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describePublicIpv4Pools(input: ElasticComputeCloudModel.DescribePublicIpv4PoolsRequest) async throws
     -> ElasticComputeCloudModel.DescribePublicIpv4PoolsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describePublicIpv4PoolsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeRegions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeRegionsRequest object being passed to this operation.
     - Returns: The DescribeRegionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeRegions(input: ElasticComputeCloudModel.DescribeRegionsRequest) async throws
     -> ElasticComputeCloudModel.DescribeRegionsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeRegionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeReplaceRootVolumeTasks operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeReplaceRootVolumeTasksRequest object being passed to this operation.
     - Returns: The DescribeReplaceRootVolumeTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeReplaceRootVolumeTasks(input: ElasticComputeCloudModel.DescribeReplaceRootVolumeTasksRequest) async throws
     -> ElasticComputeCloudModel.DescribeReplaceRootVolumeTasksResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeReplaceRootVolumeTasksAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeReservedInstances operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeReservedInstancesRequest object being passed to this operation.
     - Returns: The DescribeReservedInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeReservedInstances(input: ElasticComputeCloudModel.DescribeReservedInstancesRequest) async throws
     -> ElasticComputeCloudModel.DescribeReservedInstancesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeReservedInstancesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeReservedInstancesListings operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeReservedInstancesListingsRequest object being passed to this operation.
     - Returns: The DescribeReservedInstancesListingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeReservedInstancesListings(input: ElasticComputeCloudModel.DescribeReservedInstancesListingsRequest) async throws
     -> ElasticComputeCloudModel.DescribeReservedInstancesListingsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeReservedInstancesListingsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeReservedInstancesModifications operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeReservedInstancesModificationsRequest object being passed to this operation.
     - Returns: The DescribeReservedInstancesModificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeReservedInstancesModifications(input: ElasticComputeCloudModel.DescribeReservedInstancesModificationsRequest) async throws
     -> ElasticComputeCloudModel.DescribeReservedInstancesModificationsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeReservedInstancesModificationsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeReservedInstancesOfferings operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeReservedInstancesOfferingsRequest object being passed to this operation.
     - Returns: The DescribeReservedInstancesOfferingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeReservedInstancesOfferings(input: ElasticComputeCloudModel.DescribeReservedInstancesOfferingsRequest) async throws
     -> ElasticComputeCloudModel.DescribeReservedInstancesOfferingsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeReservedInstancesOfferingsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeRouteTables operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeRouteTablesRequest object being passed to this operation.
     - Returns: The DescribeRouteTablesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeRouteTables(input: ElasticComputeCloudModel.DescribeRouteTablesRequest) async throws
     -> ElasticComputeCloudModel.DescribeRouteTablesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeRouteTablesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeScheduledInstanceAvailability operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeScheduledInstanceAvailabilityRequest object being passed to this operation.
     - Returns: The DescribeScheduledInstanceAvailabilityResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeScheduledInstanceAvailability(input: ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityRequest) async throws
     -> ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeScheduledInstanceAvailabilityAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeScheduledInstances operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeScheduledInstancesRequest object being passed to this operation.
     - Returns: The DescribeScheduledInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeScheduledInstances(input: ElasticComputeCloudModel.DescribeScheduledInstancesRequest) async throws
     -> ElasticComputeCloudModel.DescribeScheduledInstancesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeScheduledInstancesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeSecurityGroupReferences operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeSecurityGroupReferencesRequest object being passed to this operation.
     - Returns: The DescribeSecurityGroupReferencesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSecurityGroupReferences(input: ElasticComputeCloudModel.DescribeSecurityGroupReferencesRequest) async throws
     -> ElasticComputeCloudModel.DescribeSecurityGroupReferencesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeSecurityGroupReferencesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeSecurityGroupRules operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeSecurityGroupRulesRequest object being passed to this operation.
     - Returns: The DescribeSecurityGroupRulesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSecurityGroupRules(input: ElasticComputeCloudModel.DescribeSecurityGroupRulesRequest) async throws
     -> ElasticComputeCloudModel.DescribeSecurityGroupRulesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeSecurityGroupRulesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeSecurityGroups operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeSecurityGroupsRequest object being passed to this operation.
     - Returns: The DescribeSecurityGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSecurityGroups(input: ElasticComputeCloudModel.DescribeSecurityGroupsRequest) async throws
     -> ElasticComputeCloudModel.DescribeSecurityGroupsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeSecurityGroupsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeSnapshotAttribute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeSnapshotAttributeRequest object being passed to this operation.
     - Returns: The DescribeSnapshotAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSnapshotAttribute(input: ElasticComputeCloudModel.DescribeSnapshotAttributeRequest) async throws
     -> ElasticComputeCloudModel.DescribeSnapshotAttributeResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeSnapshotAttributeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeSnapshotTierStatus operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeSnapshotTierStatusRequest object being passed to this operation.
     - Returns: The DescribeSnapshotTierStatusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSnapshotTierStatus(input: ElasticComputeCloudModel.DescribeSnapshotTierStatusRequest) async throws
     -> ElasticComputeCloudModel.DescribeSnapshotTierStatusResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeSnapshotTierStatusAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeSnapshots operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeSnapshotsRequest object being passed to this operation.
     - Returns: The DescribeSnapshotsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSnapshots(input: ElasticComputeCloudModel.DescribeSnapshotsRequest) async throws
     -> ElasticComputeCloudModel.DescribeSnapshotsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeSnapshotsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeSpotDatafeedSubscription operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeSpotDatafeedSubscriptionRequest object being passed to this operation.
     - Returns: The DescribeSpotDatafeedSubscriptionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotDatafeedSubscription(input: ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionRequest) async throws
     -> ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeSpotDatafeedSubscriptionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeSpotFleetInstances operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeSpotFleetInstancesRequest object being passed to this operation.
     - Returns: The DescribeSpotFleetInstancesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotFleetInstances(input: ElasticComputeCloudModel.DescribeSpotFleetInstancesRequest) async throws
     -> ElasticComputeCloudModel.DescribeSpotFleetInstancesResponse {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeSpotFleetInstancesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeSpotFleetRequestHistory operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeSpotFleetRequestHistoryRequest object being passed to this operation.
     - Returns: The DescribeSpotFleetRequestHistoryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotFleetRequestHistory(input: ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryRequest) async throws
     -> ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryResponse {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeSpotFleetRequestHistoryAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeSpotFleetRequests operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeSpotFleetRequestsRequest object being passed to this operation.
     - Returns: The DescribeSpotFleetRequestsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotFleetRequests(input: ElasticComputeCloudModel.DescribeSpotFleetRequestsRequest) async throws
     -> ElasticComputeCloudModel.DescribeSpotFleetRequestsResponse {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeSpotFleetRequestsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeSpotInstanceRequests operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeSpotInstanceRequestsRequest object being passed to this operation.
     - Returns: The DescribeSpotInstanceRequestsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotInstanceRequests(input: ElasticComputeCloudModel.DescribeSpotInstanceRequestsRequest) async throws
     -> ElasticComputeCloudModel.DescribeSpotInstanceRequestsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeSpotInstanceRequestsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeSpotPriceHistory operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeSpotPriceHistoryRequest object being passed to this operation.
     - Returns: The DescribeSpotPriceHistoryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotPriceHistory(input: ElasticComputeCloudModel.DescribeSpotPriceHistoryRequest) async throws
     -> ElasticComputeCloudModel.DescribeSpotPriceHistoryResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeSpotPriceHistoryAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeStaleSecurityGroups operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeStaleSecurityGroupsRequest object being passed to this operation.
     - Returns: The DescribeStaleSecurityGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeStaleSecurityGroups(input: ElasticComputeCloudModel.DescribeStaleSecurityGroupsRequest) async throws
     -> ElasticComputeCloudModel.DescribeStaleSecurityGroupsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeStaleSecurityGroupsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeStoreImageTasks operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeStoreImageTasksRequest object being passed to this operation.
     - Returns: The DescribeStoreImageTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeStoreImageTasks(input: ElasticComputeCloudModel.DescribeStoreImageTasksRequest) async throws
     -> ElasticComputeCloudModel.DescribeStoreImageTasksResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeStoreImageTasksAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeSubnets operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeSubnetsRequest object being passed to this operation.
     - Returns: The DescribeSubnetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSubnets(input: ElasticComputeCloudModel.DescribeSubnetsRequest) async throws
     -> ElasticComputeCloudModel.DescribeSubnetsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeSubnetsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeTags operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeTagsRequest object being passed to this operation.
     - Returns: The DescribeTagsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTags(input: ElasticComputeCloudModel.DescribeTagsRequest) async throws
     -> ElasticComputeCloudModel.DescribeTagsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeTagsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeTrafficMirrorFilters operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeTrafficMirrorFiltersRequest object being passed to this operation.
     - Returns: The DescribeTrafficMirrorFiltersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTrafficMirrorFilters(input: ElasticComputeCloudModel.DescribeTrafficMirrorFiltersRequest) async throws
     -> ElasticComputeCloudModel.DescribeTrafficMirrorFiltersResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeTrafficMirrorFiltersAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeTrafficMirrorSessions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeTrafficMirrorSessionsRequest object being passed to this operation.
     - Returns: The DescribeTrafficMirrorSessionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTrafficMirrorSessions(input: ElasticComputeCloudModel.DescribeTrafficMirrorSessionsRequest) async throws
     -> ElasticComputeCloudModel.DescribeTrafficMirrorSessionsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeTrafficMirrorSessionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeTrafficMirrorTargets operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeTrafficMirrorTargetsRequest object being passed to this operation.
     - Returns: The DescribeTrafficMirrorTargetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTrafficMirrorTargets(input: ElasticComputeCloudModel.DescribeTrafficMirrorTargetsRequest) async throws
     -> ElasticComputeCloudModel.DescribeTrafficMirrorTargetsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeTrafficMirrorTargetsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeTransitGatewayAttachments operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeTransitGatewayAttachmentsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayAttachmentsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayAttachments(input: ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsRequest) async throws
     -> ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeTransitGatewayAttachmentsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeTransitGatewayConnectPeers operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeTransitGatewayConnectPeersRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayConnectPeersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayConnectPeers(input: ElasticComputeCloudModel.DescribeTransitGatewayConnectPeersRequest) async throws
     -> ElasticComputeCloudModel.DescribeTransitGatewayConnectPeersResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeTransitGatewayConnectPeersAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeTransitGatewayConnects operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeTransitGatewayConnectsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayConnectsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayConnects(input: ElasticComputeCloudModel.DescribeTransitGatewayConnectsRequest) async throws
     -> ElasticComputeCloudModel.DescribeTransitGatewayConnectsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeTransitGatewayConnectsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeTransitGatewayMulticastDomains operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeTransitGatewayMulticastDomainsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayMulticastDomainsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayMulticastDomains(input: ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsRequest) async throws
     -> ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeTransitGatewayMulticastDomainsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeTransitGatewayPeeringAttachments operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeTransitGatewayPeeringAttachmentsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayPeeringAttachmentsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayPeeringAttachments(input: ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsRequest) async throws
     -> ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeTransitGatewayPeeringAttachmentsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeTransitGatewayPolicyTables operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeTransitGatewayPolicyTablesRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayPolicyTablesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayPolicyTables(input: ElasticComputeCloudModel.DescribeTransitGatewayPolicyTablesRequest) async throws
     -> ElasticComputeCloudModel.DescribeTransitGatewayPolicyTablesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeTransitGatewayPolicyTablesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeTransitGatewayRouteTableAnnouncements operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeTransitGatewayRouteTableAnnouncementsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayRouteTableAnnouncementsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayRouteTableAnnouncements(input: ElasticComputeCloudModel.DescribeTransitGatewayRouteTableAnnouncementsRequest) async throws
     -> ElasticComputeCloudModel.DescribeTransitGatewayRouteTableAnnouncementsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeTransitGatewayRouteTableAnnouncementsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeTransitGatewayRouteTables operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeTransitGatewayRouteTablesRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayRouteTablesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayRouteTables(input: ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesRequest) async throws
     -> ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeTransitGatewayRouteTablesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeTransitGatewayVpcAttachments operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeTransitGatewayVpcAttachmentsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayVpcAttachmentsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayVpcAttachments(input: ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsRequest) async throws
     -> ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeTransitGatewayVpcAttachmentsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeTransitGateways operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeTransitGatewaysRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGateways(input: ElasticComputeCloudModel.DescribeTransitGatewaysRequest) async throws
     -> ElasticComputeCloudModel.DescribeTransitGatewaysResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeTransitGatewaysAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeTrunkInterfaceAssociations operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeTrunkInterfaceAssociationsRequest object being passed to this operation.
     - Returns: The DescribeTrunkInterfaceAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTrunkInterfaceAssociations(input: ElasticComputeCloudModel.DescribeTrunkInterfaceAssociationsRequest) async throws
     -> ElasticComputeCloudModel.DescribeTrunkInterfaceAssociationsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeTrunkInterfaceAssociationsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeVerifiedAccessEndpoints operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeVerifiedAccessEndpointsRequest object being passed to this operation.
     - Returns: The DescribeVerifiedAccessEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVerifiedAccessEndpoints(input: ElasticComputeCloudModel.DescribeVerifiedAccessEndpointsRequest) async throws
     -> ElasticComputeCloudModel.DescribeVerifiedAccessEndpointsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeVerifiedAccessEndpointsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeVerifiedAccessGroups operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeVerifiedAccessGroupsRequest object being passed to this operation.
     - Returns: The DescribeVerifiedAccessGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVerifiedAccessGroups(input: ElasticComputeCloudModel.DescribeVerifiedAccessGroupsRequest) async throws
     -> ElasticComputeCloudModel.DescribeVerifiedAccessGroupsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeVerifiedAccessGroupsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeVerifiedAccessInstanceLoggingConfigurations operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeVerifiedAccessInstanceLoggingConfigurationsRequest object being passed to this operation.
     - Returns: The DescribeVerifiedAccessInstanceLoggingConfigurationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVerifiedAccessInstanceLoggingConfigurations(input: ElasticComputeCloudModel.DescribeVerifiedAccessInstanceLoggingConfigurationsRequest) async throws
     -> ElasticComputeCloudModel.DescribeVerifiedAccessInstanceLoggingConfigurationsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeVerifiedAccessInstanceLoggingConfigurationsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeVerifiedAccessInstances operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeVerifiedAccessInstancesRequest object being passed to this operation.
     - Returns: The DescribeVerifiedAccessInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVerifiedAccessInstances(input: ElasticComputeCloudModel.DescribeVerifiedAccessInstancesRequest) async throws
     -> ElasticComputeCloudModel.DescribeVerifiedAccessInstancesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeVerifiedAccessInstancesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeVerifiedAccessTrustProviders operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeVerifiedAccessTrustProvidersRequest object being passed to this operation.
     - Returns: The DescribeVerifiedAccessTrustProvidersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVerifiedAccessTrustProviders(input: ElasticComputeCloudModel.DescribeVerifiedAccessTrustProvidersRequest) async throws
     -> ElasticComputeCloudModel.DescribeVerifiedAccessTrustProvidersResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeVerifiedAccessTrustProvidersAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeVolumeAttribute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeVolumeAttributeRequest object being passed to this operation.
     - Returns: The DescribeVolumeAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVolumeAttribute(input: ElasticComputeCloudModel.DescribeVolumeAttributeRequest) async throws
     -> ElasticComputeCloudModel.DescribeVolumeAttributeResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeVolumeAttributeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeVolumeStatus operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeVolumeStatusRequest object being passed to this operation.
     - Returns: The DescribeVolumeStatusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVolumeStatus(input: ElasticComputeCloudModel.DescribeVolumeStatusRequest) async throws
     -> ElasticComputeCloudModel.DescribeVolumeStatusResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeVolumeStatusAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeVolumes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeVolumesRequest object being passed to this operation.
     - Returns: The DescribeVolumesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVolumes(input: ElasticComputeCloudModel.DescribeVolumesRequest) async throws
     -> ElasticComputeCloudModel.DescribeVolumesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeVolumesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeVolumesModifications operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeVolumesModificationsRequest object being passed to this operation.
     - Returns: The DescribeVolumesModificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVolumesModifications(input: ElasticComputeCloudModel.DescribeVolumesModificationsRequest) async throws
     -> ElasticComputeCloudModel.DescribeVolumesModificationsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeVolumesModificationsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeVpcAttribute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeVpcAttributeRequest object being passed to this operation.
     - Returns: The DescribeVpcAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcAttribute(input: ElasticComputeCloudModel.DescribeVpcAttributeRequest) async throws
     -> ElasticComputeCloudModel.DescribeVpcAttributeResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeVpcAttributeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeVpcClassicLink operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeVpcClassicLinkRequest object being passed to this operation.
     - Returns: The DescribeVpcClassicLinkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcClassicLink(input: ElasticComputeCloudModel.DescribeVpcClassicLinkRequest) async throws
     -> ElasticComputeCloudModel.DescribeVpcClassicLinkResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeVpcClassicLinkAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeVpcClassicLinkDnsSupport operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeVpcClassicLinkDnsSupportRequest object being passed to this operation.
     - Returns: The DescribeVpcClassicLinkDnsSupportResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcClassicLinkDnsSupport(input: ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportRequest) async throws
     -> ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeVpcClassicLinkDnsSupportAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeVpcEndpointConnectionNotifications operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeVpcEndpointConnectionNotificationsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointConnectionNotificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointConnectionNotifications(input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsRequest) async throws
     -> ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeVpcEndpointConnectionNotificationsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeVpcEndpointConnections operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeVpcEndpointConnectionsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointConnections(input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionsRequest) async throws
     -> ElasticComputeCloudModel.DescribeVpcEndpointConnectionsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeVpcEndpointConnectionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeVpcEndpointServiceConfigurations operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeVpcEndpointServiceConfigurationsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointServiceConfigurationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointServiceConfigurations(input: ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsRequest) async throws
     -> ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeVpcEndpointServiceConfigurationsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeVpcEndpointServicePermissions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeVpcEndpointServicePermissionsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointServicePermissionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointServicePermissions(input: ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsRequest) async throws
     -> ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeVpcEndpointServicePermissionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeVpcEndpointServices operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeVpcEndpointServicesRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointServicesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointServices(input: ElasticComputeCloudModel.DescribeVpcEndpointServicesRequest) async throws
     -> ElasticComputeCloudModel.DescribeVpcEndpointServicesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeVpcEndpointServicesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeVpcEndpoints operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeVpcEndpointsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpoints(input: ElasticComputeCloudModel.DescribeVpcEndpointsRequest) async throws
     -> ElasticComputeCloudModel.DescribeVpcEndpointsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeVpcEndpointsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeVpcPeeringConnections operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeVpcPeeringConnectionsRequest object being passed to this operation.
     - Returns: The DescribeVpcPeeringConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcPeeringConnections(input: ElasticComputeCloudModel.DescribeVpcPeeringConnectionsRequest) async throws
     -> ElasticComputeCloudModel.DescribeVpcPeeringConnectionsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeVpcPeeringConnectionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeVpcs operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeVpcsRequest object being passed to this operation.
     - Returns: The DescribeVpcsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcs(input: ElasticComputeCloudModel.DescribeVpcsRequest) async throws
     -> ElasticComputeCloudModel.DescribeVpcsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeVpcsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeVpnConnections operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeVpnConnectionsRequest object being passed to this operation.
     - Returns: The DescribeVpnConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpnConnections(input: ElasticComputeCloudModel.DescribeVpnConnectionsRequest) async throws
     -> ElasticComputeCloudModel.DescribeVpnConnectionsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeVpnConnectionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeVpnGateways operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeVpnGatewaysRequest object being passed to this operation.
     - Returns: The DescribeVpnGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpnGateways(input: ElasticComputeCloudModel.DescribeVpnGatewaysRequest) async throws
     -> ElasticComputeCloudModel.DescribeVpnGatewaysResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeVpnGatewaysAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DetachClassicLinkVpc operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DetachClassicLinkVpcRequest object being passed to this operation.
     - Returns: The DetachClassicLinkVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func detachClassicLinkVpc(input: ElasticComputeCloudModel.DetachClassicLinkVpcRequest) async throws
     -> ElasticComputeCloudModel.DetachClassicLinkVpcResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try detachClassicLinkVpcAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DetachInternetGateway operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DetachInternetGatewayRequest object being passed to this operation.
     */
    func detachInternetGateway(input: ElasticComputeCloudModel.DetachInternetGatewayRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try detachInternetGatewayAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DetachNetworkInterface operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DetachNetworkInterfaceRequest object being passed to this operation.
     */
    func detachNetworkInterface(input: ElasticComputeCloudModel.DetachNetworkInterfaceRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try detachNetworkInterfaceAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DetachVerifiedAccessTrustProvider operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DetachVerifiedAccessTrustProviderRequest object being passed to this operation.
     - Returns: The DetachVerifiedAccessTrustProviderResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func detachVerifiedAccessTrustProvider(input: ElasticComputeCloudModel.DetachVerifiedAccessTrustProviderRequest) async throws
     -> ElasticComputeCloudModel.DetachVerifiedAccessTrustProviderResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try detachVerifiedAccessTrustProviderAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DetachVolume operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DetachVolumeRequest object being passed to this operation.
     - Returns: The VolumeAttachment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func detachVolume(input: ElasticComputeCloudModel.DetachVolumeRequest) async throws
     -> ElasticComputeCloudModel.VolumeAttachment {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try detachVolumeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DetachVpnGateway operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DetachVpnGatewayRequest object being passed to this operation.
     */
    func detachVpnGateway(input: ElasticComputeCloudModel.DetachVpnGatewayRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try detachVpnGatewayAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DisableAddressTransfer operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DisableAddressTransferRequest object being passed to this operation.
     - Returns: The DisableAddressTransferResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableAddressTransfer(input: ElasticComputeCloudModel.DisableAddressTransferRequest) async throws
     -> ElasticComputeCloudModel.DisableAddressTransferResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try disableAddressTransferAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DisableAwsNetworkPerformanceMetricSubscription operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DisableAwsNetworkPerformanceMetricSubscriptionRequest object being passed to this operation.
     - Returns: The DisableAwsNetworkPerformanceMetricSubscriptionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableAwsNetworkPerformanceMetricSubscription(input: ElasticComputeCloudModel.DisableAwsNetworkPerformanceMetricSubscriptionRequest) async throws
     -> ElasticComputeCloudModel.DisableAwsNetworkPerformanceMetricSubscriptionResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try disableAwsNetworkPerformanceMetricSubscriptionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DisableEbsEncryptionByDefault operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DisableEbsEncryptionByDefaultRequest object being passed to this operation.
     - Returns: The DisableEbsEncryptionByDefaultResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableEbsEncryptionByDefault(input: ElasticComputeCloudModel.DisableEbsEncryptionByDefaultRequest) async throws
     -> ElasticComputeCloudModel.DisableEbsEncryptionByDefaultResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try disableEbsEncryptionByDefaultAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DisableFastLaunch operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DisableFastLaunchRequest object being passed to this operation.
     - Returns: The DisableFastLaunchResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableFastLaunch(input: ElasticComputeCloudModel.DisableFastLaunchRequest) async throws
     -> ElasticComputeCloudModel.DisableFastLaunchResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try disableFastLaunchAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DisableFastSnapshotRestores operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DisableFastSnapshotRestoresRequest object being passed to this operation.
     - Returns: The DisableFastSnapshotRestoresResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableFastSnapshotRestores(input: ElasticComputeCloudModel.DisableFastSnapshotRestoresRequest) async throws
     -> ElasticComputeCloudModel.DisableFastSnapshotRestoresResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try disableFastSnapshotRestoresAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DisableImage operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DisableImageRequest object being passed to this operation.
     - Returns: The DisableImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableImage(input: ElasticComputeCloudModel.DisableImageRequest) async throws
     -> ElasticComputeCloudModel.DisableImageResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try disableImageAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DisableImageBlockPublicAccess operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DisableImageBlockPublicAccessRequest object being passed to this operation.
     - Returns: The DisableImageBlockPublicAccessResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableImageBlockPublicAccess(input: ElasticComputeCloudModel.DisableImageBlockPublicAccessRequest) async throws
     -> ElasticComputeCloudModel.DisableImageBlockPublicAccessResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try disableImageBlockPublicAccessAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DisableImageDeprecation operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DisableImageDeprecationRequest object being passed to this operation.
     - Returns: The DisableImageDeprecationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableImageDeprecation(input: ElasticComputeCloudModel.DisableImageDeprecationRequest) async throws
     -> ElasticComputeCloudModel.DisableImageDeprecationResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try disableImageDeprecationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DisableIpamOrganizationAdminAccount operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DisableIpamOrganizationAdminAccountRequest object being passed to this operation.
     - Returns: The DisableIpamOrganizationAdminAccountResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableIpamOrganizationAdminAccount(input: ElasticComputeCloudModel.DisableIpamOrganizationAdminAccountRequest) async throws
     -> ElasticComputeCloudModel.DisableIpamOrganizationAdminAccountResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try disableIpamOrganizationAdminAccountAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DisableSerialConsoleAccess operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DisableSerialConsoleAccessRequest object being passed to this operation.
     - Returns: The DisableSerialConsoleAccessResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableSerialConsoleAccess(input: ElasticComputeCloudModel.DisableSerialConsoleAccessRequest) async throws
     -> ElasticComputeCloudModel.DisableSerialConsoleAccessResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try disableSerialConsoleAccessAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DisableTransitGatewayRouteTablePropagation operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DisableTransitGatewayRouteTablePropagationRequest object being passed to this operation.
     - Returns: The DisableTransitGatewayRouteTablePropagationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableTransitGatewayRouteTablePropagation(input: ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationRequest) async throws
     -> ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try disableTransitGatewayRouteTablePropagationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DisableVgwRoutePropagation operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DisableVgwRoutePropagationRequest object being passed to this operation.
     */
    func disableVgwRoutePropagation(input: ElasticComputeCloudModel.DisableVgwRoutePropagationRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try disableVgwRoutePropagationAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DisableVpcClassicLink operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DisableVpcClassicLinkRequest object being passed to this operation.
     - Returns: The DisableVpcClassicLinkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableVpcClassicLink(input: ElasticComputeCloudModel.DisableVpcClassicLinkRequest) async throws
     -> ElasticComputeCloudModel.DisableVpcClassicLinkResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try disableVpcClassicLinkAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DisableVpcClassicLinkDnsSupport operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DisableVpcClassicLinkDnsSupportRequest object being passed to this operation.
     - Returns: The DisableVpcClassicLinkDnsSupportResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableVpcClassicLinkDnsSupport(input: ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportRequest) async throws
     -> ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try disableVpcClassicLinkDnsSupportAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DisassociateAddress operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DisassociateAddressRequest object being passed to this operation.
     */
    func disassociateAddress(input: ElasticComputeCloudModel.DisassociateAddressRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try disassociateAddressAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DisassociateClientVpnTargetNetwork operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DisassociateClientVpnTargetNetworkRequest object being passed to this operation.
     - Returns: The DisassociateClientVpnTargetNetworkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateClientVpnTargetNetwork(input: ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkRequest) async throws
     -> ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try disassociateClientVpnTargetNetworkAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DisassociateEnclaveCertificateIamRole operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DisassociateEnclaveCertificateIamRoleRequest object being passed to this operation.
     - Returns: The DisassociateEnclaveCertificateIamRoleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateEnclaveCertificateIamRole(input: ElasticComputeCloudModel.DisassociateEnclaveCertificateIamRoleRequest) async throws
     -> ElasticComputeCloudModel.DisassociateEnclaveCertificateIamRoleResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try disassociateEnclaveCertificateIamRoleAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DisassociateIamInstanceProfile operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DisassociateIamInstanceProfileRequest object being passed to this operation.
     - Returns: The DisassociateIamInstanceProfileResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateIamInstanceProfile(input: ElasticComputeCloudModel.DisassociateIamInstanceProfileRequest) async throws
     -> ElasticComputeCloudModel.DisassociateIamInstanceProfileResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try disassociateIamInstanceProfileAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DisassociateInstanceEventWindow operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DisassociateInstanceEventWindowRequest object being passed to this operation.
     - Returns: The DisassociateInstanceEventWindowResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateInstanceEventWindow(input: ElasticComputeCloudModel.DisassociateInstanceEventWindowRequest) async throws
     -> ElasticComputeCloudModel.DisassociateInstanceEventWindowResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try disassociateInstanceEventWindowAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DisassociateIpamResourceDiscovery operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DisassociateIpamResourceDiscoveryRequest object being passed to this operation.
     - Returns: The DisassociateIpamResourceDiscoveryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateIpamResourceDiscovery(input: ElasticComputeCloudModel.DisassociateIpamResourceDiscoveryRequest) async throws
     -> ElasticComputeCloudModel.DisassociateIpamResourceDiscoveryResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try disassociateIpamResourceDiscoveryAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DisassociateNatGatewayAddress operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DisassociateNatGatewayAddressRequest object being passed to this operation.
     - Returns: The DisassociateNatGatewayAddressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateNatGatewayAddress(input: ElasticComputeCloudModel.DisassociateNatGatewayAddressRequest) async throws
     -> ElasticComputeCloudModel.DisassociateNatGatewayAddressResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try disassociateNatGatewayAddressAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DisassociateRouteTable operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DisassociateRouteTableRequest object being passed to this operation.
     */
    func disassociateRouteTable(input: ElasticComputeCloudModel.DisassociateRouteTableRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try disassociateRouteTableAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DisassociateSubnetCidrBlock operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DisassociateSubnetCidrBlockRequest object being passed to this operation.
     - Returns: The DisassociateSubnetCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateSubnetCidrBlock(input: ElasticComputeCloudModel.DisassociateSubnetCidrBlockRequest) async throws
     -> ElasticComputeCloudModel.DisassociateSubnetCidrBlockResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try disassociateSubnetCidrBlockAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DisassociateTransitGatewayMulticastDomain operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DisassociateTransitGatewayMulticastDomainRequest object being passed to this operation.
     - Returns: The DisassociateTransitGatewayMulticastDomainResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateTransitGatewayMulticastDomain(input: ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainRequest) async throws
     -> ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try disassociateTransitGatewayMulticastDomainAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DisassociateTransitGatewayPolicyTable operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DisassociateTransitGatewayPolicyTableRequest object being passed to this operation.
     - Returns: The DisassociateTransitGatewayPolicyTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateTransitGatewayPolicyTable(input: ElasticComputeCloudModel.DisassociateTransitGatewayPolicyTableRequest) async throws
     -> ElasticComputeCloudModel.DisassociateTransitGatewayPolicyTableResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try disassociateTransitGatewayPolicyTableAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DisassociateTransitGatewayRouteTable operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DisassociateTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: The DisassociateTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateTransitGatewayRouteTable(input: ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableRequest) async throws
     -> ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try disassociateTransitGatewayRouteTableAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DisassociateTrunkInterface operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DisassociateTrunkInterfaceRequest object being passed to this operation.
     - Returns: The DisassociateTrunkInterfaceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateTrunkInterface(input: ElasticComputeCloudModel.DisassociateTrunkInterfaceRequest) async throws
     -> ElasticComputeCloudModel.DisassociateTrunkInterfaceResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try disassociateTrunkInterfaceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DisassociateVpcCidrBlock operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DisassociateVpcCidrBlockRequest object being passed to this operation.
     - Returns: The DisassociateVpcCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateVpcCidrBlock(input: ElasticComputeCloudModel.DisassociateVpcCidrBlockRequest) async throws
     -> ElasticComputeCloudModel.DisassociateVpcCidrBlockResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try disassociateVpcCidrBlockAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the EnableAddressTransfer operation and asynchronously returning the response.

     - Parameters:
         - input: The validated EnableAddressTransferRequest object being passed to this operation.
     - Returns: The EnableAddressTransferResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableAddressTransfer(input: ElasticComputeCloudModel.EnableAddressTransferRequest) async throws
     -> ElasticComputeCloudModel.EnableAddressTransferResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try enableAddressTransferAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the EnableAwsNetworkPerformanceMetricSubscription operation and asynchronously returning the response.

     - Parameters:
         - input: The validated EnableAwsNetworkPerformanceMetricSubscriptionRequest object being passed to this operation.
     - Returns: The EnableAwsNetworkPerformanceMetricSubscriptionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableAwsNetworkPerformanceMetricSubscription(input: ElasticComputeCloudModel.EnableAwsNetworkPerformanceMetricSubscriptionRequest) async throws
     -> ElasticComputeCloudModel.EnableAwsNetworkPerformanceMetricSubscriptionResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try enableAwsNetworkPerformanceMetricSubscriptionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the EnableEbsEncryptionByDefault operation and asynchronously returning the response.

     - Parameters:
         - input: The validated EnableEbsEncryptionByDefaultRequest object being passed to this operation.
     - Returns: The EnableEbsEncryptionByDefaultResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableEbsEncryptionByDefault(input: ElasticComputeCloudModel.EnableEbsEncryptionByDefaultRequest) async throws
     -> ElasticComputeCloudModel.EnableEbsEncryptionByDefaultResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try enableEbsEncryptionByDefaultAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the EnableFastLaunch operation and asynchronously returning the response.

     - Parameters:
         - input: The validated EnableFastLaunchRequest object being passed to this operation.
     - Returns: The EnableFastLaunchResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableFastLaunch(input: ElasticComputeCloudModel.EnableFastLaunchRequest) async throws
     -> ElasticComputeCloudModel.EnableFastLaunchResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try enableFastLaunchAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the EnableFastSnapshotRestores operation and asynchronously returning the response.

     - Parameters:
         - input: The validated EnableFastSnapshotRestoresRequest object being passed to this operation.
     - Returns: The EnableFastSnapshotRestoresResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableFastSnapshotRestores(input: ElasticComputeCloudModel.EnableFastSnapshotRestoresRequest) async throws
     -> ElasticComputeCloudModel.EnableFastSnapshotRestoresResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try enableFastSnapshotRestoresAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the EnableImage operation and asynchronously returning the response.

     - Parameters:
         - input: The validated EnableImageRequest object being passed to this operation.
     - Returns: The EnableImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableImage(input: ElasticComputeCloudModel.EnableImageRequest) async throws
     -> ElasticComputeCloudModel.EnableImageResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try enableImageAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the EnableImageBlockPublicAccess operation and asynchronously returning the response.

     - Parameters:
         - input: The validated EnableImageBlockPublicAccessRequest object being passed to this operation.
     - Returns: The EnableImageBlockPublicAccessResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableImageBlockPublicAccess(input: ElasticComputeCloudModel.EnableImageBlockPublicAccessRequest) async throws
     -> ElasticComputeCloudModel.EnableImageBlockPublicAccessResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try enableImageBlockPublicAccessAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the EnableImageDeprecation operation and asynchronously returning the response.

     - Parameters:
         - input: The validated EnableImageDeprecationRequest object being passed to this operation.
     - Returns: The EnableImageDeprecationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableImageDeprecation(input: ElasticComputeCloudModel.EnableImageDeprecationRequest) async throws
     -> ElasticComputeCloudModel.EnableImageDeprecationResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try enableImageDeprecationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the EnableIpamOrganizationAdminAccount operation and asynchronously returning the response.

     - Parameters:
         - input: The validated EnableIpamOrganizationAdminAccountRequest object being passed to this operation.
     - Returns: The EnableIpamOrganizationAdminAccountResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableIpamOrganizationAdminAccount(input: ElasticComputeCloudModel.EnableIpamOrganizationAdminAccountRequest) async throws
     -> ElasticComputeCloudModel.EnableIpamOrganizationAdminAccountResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try enableIpamOrganizationAdminAccountAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the EnableReachabilityAnalyzerOrganizationSharing operation and asynchronously returning the response.

     - Parameters:
         - input: The validated EnableReachabilityAnalyzerOrganizationSharingRequest object being passed to this operation.
     - Returns: The EnableReachabilityAnalyzerOrganizationSharingResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableReachabilityAnalyzerOrganizationSharing(input: ElasticComputeCloudModel.EnableReachabilityAnalyzerOrganizationSharingRequest) async throws
     -> ElasticComputeCloudModel.EnableReachabilityAnalyzerOrganizationSharingResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try enableReachabilityAnalyzerOrganizationSharingAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the EnableSerialConsoleAccess operation and asynchronously returning the response.

     - Parameters:
         - input: The validated EnableSerialConsoleAccessRequest object being passed to this operation.
     - Returns: The EnableSerialConsoleAccessResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableSerialConsoleAccess(input: ElasticComputeCloudModel.EnableSerialConsoleAccessRequest) async throws
     -> ElasticComputeCloudModel.EnableSerialConsoleAccessResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try enableSerialConsoleAccessAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the EnableTransitGatewayRouteTablePropagation operation and asynchronously returning the response.

     - Parameters:
         - input: The validated EnableTransitGatewayRouteTablePropagationRequest object being passed to this operation.
     - Returns: The EnableTransitGatewayRouteTablePropagationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableTransitGatewayRouteTablePropagation(input: ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationRequest) async throws
     -> ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try enableTransitGatewayRouteTablePropagationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the EnableVgwRoutePropagation operation and asynchronously returning the response.

     - Parameters:
         - input: The validated EnableVgwRoutePropagationRequest object being passed to this operation.
     */
    func enableVgwRoutePropagation(input: ElasticComputeCloudModel.EnableVgwRoutePropagationRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try enableVgwRoutePropagationAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the EnableVolumeIO operation and asynchronously returning the response.

     - Parameters:
         - input: The validated EnableVolumeIORequest object being passed to this operation.
     */
    func enableVolumeIO(input: ElasticComputeCloudModel.EnableVolumeIORequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try enableVolumeIOAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the EnableVpcClassicLink operation and asynchronously returning the response.

     - Parameters:
         - input: The validated EnableVpcClassicLinkRequest object being passed to this operation.
     - Returns: The EnableVpcClassicLinkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableVpcClassicLink(input: ElasticComputeCloudModel.EnableVpcClassicLinkRequest) async throws
     -> ElasticComputeCloudModel.EnableVpcClassicLinkResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try enableVpcClassicLinkAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the EnableVpcClassicLinkDnsSupport operation and asynchronously returning the response.

     - Parameters:
         - input: The validated EnableVpcClassicLinkDnsSupportRequest object being passed to this operation.
     - Returns: The EnableVpcClassicLinkDnsSupportResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableVpcClassicLinkDnsSupport(input: ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportRequest) async throws
     -> ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try enableVpcClassicLinkDnsSupportAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ExportClientVpnClientCertificateRevocationList operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ExportClientVpnClientCertificateRevocationListRequest object being passed to this operation.
     - Returns: The ExportClientVpnClientCertificateRevocationListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func exportClientVpnClientCertificateRevocationList(input: ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListRequest) async throws
     -> ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try exportClientVpnClientCertificateRevocationListAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ExportClientVpnClientConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ExportClientVpnClientConfigurationRequest object being passed to this operation.
     - Returns: The ExportClientVpnClientConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func exportClientVpnClientConfiguration(input: ElasticComputeCloudModel.ExportClientVpnClientConfigurationRequest) async throws
     -> ElasticComputeCloudModel.ExportClientVpnClientConfigurationResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try exportClientVpnClientConfigurationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ExportImage operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ExportImageRequest object being passed to this operation.
     - Returns: The ExportImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func exportImage(input: ElasticComputeCloudModel.ExportImageRequest) async throws
     -> ElasticComputeCloudModel.ExportImageResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try exportImageAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ExportTransitGatewayRoutes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ExportTransitGatewayRoutesRequest object being passed to this operation.
     - Returns: The ExportTransitGatewayRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func exportTransitGatewayRoutes(input: ElasticComputeCloudModel.ExportTransitGatewayRoutesRequest) async throws
     -> ElasticComputeCloudModel.ExportTransitGatewayRoutesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try exportTransitGatewayRoutesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetAssociatedEnclaveCertificateIamRoles operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetAssociatedEnclaveCertificateIamRolesRequest object being passed to this operation.
     - Returns: The GetAssociatedEnclaveCertificateIamRolesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getAssociatedEnclaveCertificateIamRoles(input: ElasticComputeCloudModel.GetAssociatedEnclaveCertificateIamRolesRequest) async throws
     -> ElasticComputeCloudModel.GetAssociatedEnclaveCertificateIamRolesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getAssociatedEnclaveCertificateIamRolesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetAssociatedIpv6PoolCidrs operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetAssociatedIpv6PoolCidrsRequest object being passed to this operation.
     - Returns: The GetAssociatedIpv6PoolCidrsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getAssociatedIpv6PoolCidrs(input: ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsRequest) async throws
     -> ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getAssociatedIpv6PoolCidrsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetAwsNetworkPerformanceData operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetAwsNetworkPerformanceDataRequest object being passed to this operation.
     - Returns: The GetAwsNetworkPerformanceDataResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getAwsNetworkPerformanceData(input: ElasticComputeCloudModel.GetAwsNetworkPerformanceDataRequest) async throws
     -> ElasticComputeCloudModel.GetAwsNetworkPerformanceDataResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getAwsNetworkPerformanceDataAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetCapacityReservationUsage operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetCapacityReservationUsageRequest object being passed to this operation.
     - Returns: The GetCapacityReservationUsageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getCapacityReservationUsage(input: ElasticComputeCloudModel.GetCapacityReservationUsageRequest) async throws
     -> ElasticComputeCloudModel.GetCapacityReservationUsageResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getCapacityReservationUsageAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetCoipPoolUsage operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetCoipPoolUsageRequest object being passed to this operation.
     - Returns: The GetCoipPoolUsageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getCoipPoolUsage(input: ElasticComputeCloudModel.GetCoipPoolUsageRequest) async throws
     -> ElasticComputeCloudModel.GetCoipPoolUsageResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getCoipPoolUsageAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetConsoleOutput operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetConsoleOutputRequest object being passed to this operation.
     - Returns: The GetConsoleOutputResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getConsoleOutput(input: ElasticComputeCloudModel.GetConsoleOutputRequest) async throws
     -> ElasticComputeCloudModel.GetConsoleOutputResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getConsoleOutputAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetConsoleScreenshot operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetConsoleScreenshotRequest object being passed to this operation.
     - Returns: The GetConsoleScreenshotResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getConsoleScreenshot(input: ElasticComputeCloudModel.GetConsoleScreenshotRequest) async throws
     -> ElasticComputeCloudModel.GetConsoleScreenshotResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getConsoleScreenshotAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetDefaultCreditSpecification operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetDefaultCreditSpecificationRequest object being passed to this operation.
     - Returns: The GetDefaultCreditSpecificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getDefaultCreditSpecification(input: ElasticComputeCloudModel.GetDefaultCreditSpecificationRequest) async throws
     -> ElasticComputeCloudModel.GetDefaultCreditSpecificationResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getDefaultCreditSpecificationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetEbsDefaultKmsKeyId operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetEbsDefaultKmsKeyIdRequest object being passed to this operation.
     - Returns: The GetEbsDefaultKmsKeyIdResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getEbsDefaultKmsKeyId(input: ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdRequest) async throws
     -> ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getEbsDefaultKmsKeyIdAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetEbsEncryptionByDefault operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetEbsEncryptionByDefaultRequest object being passed to this operation.
     - Returns: The GetEbsEncryptionByDefaultResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getEbsEncryptionByDefault(input: ElasticComputeCloudModel.GetEbsEncryptionByDefaultRequest) async throws
     -> ElasticComputeCloudModel.GetEbsEncryptionByDefaultResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getEbsEncryptionByDefaultAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetFlowLogsIntegrationTemplate operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetFlowLogsIntegrationTemplateRequest object being passed to this operation.
     - Returns: The GetFlowLogsIntegrationTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getFlowLogsIntegrationTemplate(input: ElasticComputeCloudModel.GetFlowLogsIntegrationTemplateRequest) async throws
     -> ElasticComputeCloudModel.GetFlowLogsIntegrationTemplateResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getFlowLogsIntegrationTemplateAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetGroupsForCapacityReservation operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetGroupsForCapacityReservationRequest object being passed to this operation.
     - Returns: The GetGroupsForCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getGroupsForCapacityReservation(input: ElasticComputeCloudModel.GetGroupsForCapacityReservationRequest) async throws
     -> ElasticComputeCloudModel.GetGroupsForCapacityReservationResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getGroupsForCapacityReservationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetHostReservationPurchasePreview operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetHostReservationPurchasePreviewRequest object being passed to this operation.
     - Returns: The GetHostReservationPurchasePreviewResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getHostReservationPurchasePreview(input: ElasticComputeCloudModel.GetHostReservationPurchasePreviewRequest) async throws
     -> ElasticComputeCloudModel.GetHostReservationPurchasePreviewResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getHostReservationPurchasePreviewAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetImageBlockPublicAccessState operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetImageBlockPublicAccessStateRequest object being passed to this operation.
     - Returns: The GetImageBlockPublicAccessStateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getImageBlockPublicAccessState(input: ElasticComputeCloudModel.GetImageBlockPublicAccessStateRequest) async throws
     -> ElasticComputeCloudModel.GetImageBlockPublicAccessStateResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getImageBlockPublicAccessStateAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetInstanceTypesFromInstanceRequirements operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetInstanceTypesFromInstanceRequirementsRequest object being passed to this operation.
     - Returns: The GetInstanceTypesFromInstanceRequirementsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getInstanceTypesFromInstanceRequirements(input: ElasticComputeCloudModel.GetInstanceTypesFromInstanceRequirementsRequest) async throws
     -> ElasticComputeCloudModel.GetInstanceTypesFromInstanceRequirementsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getInstanceTypesFromInstanceRequirementsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetInstanceUefiData operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetInstanceUefiDataRequest object being passed to this operation.
     - Returns: The GetInstanceUefiDataResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getInstanceUefiData(input: ElasticComputeCloudModel.GetInstanceUefiDataRequest) async throws
     -> ElasticComputeCloudModel.GetInstanceUefiDataResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getInstanceUefiDataAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetIpamAddressHistory operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetIpamAddressHistoryRequest object being passed to this operation.
     - Returns: The GetIpamAddressHistoryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getIpamAddressHistory(input: ElasticComputeCloudModel.GetIpamAddressHistoryRequest) async throws
     -> ElasticComputeCloudModel.GetIpamAddressHistoryResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getIpamAddressHistoryAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetIpamDiscoveredAccounts operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetIpamDiscoveredAccountsRequest object being passed to this operation.
     - Returns: The GetIpamDiscoveredAccountsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getIpamDiscoveredAccounts(input: ElasticComputeCloudModel.GetIpamDiscoveredAccountsRequest) async throws
     -> ElasticComputeCloudModel.GetIpamDiscoveredAccountsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getIpamDiscoveredAccountsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetIpamDiscoveredResourceCidrs operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetIpamDiscoveredResourceCidrsRequest object being passed to this operation.
     - Returns: The GetIpamDiscoveredResourceCidrsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getIpamDiscoveredResourceCidrs(input: ElasticComputeCloudModel.GetIpamDiscoveredResourceCidrsRequest) async throws
     -> ElasticComputeCloudModel.GetIpamDiscoveredResourceCidrsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getIpamDiscoveredResourceCidrsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetIpamPoolAllocations operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetIpamPoolAllocationsRequest object being passed to this operation.
     - Returns: The GetIpamPoolAllocationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getIpamPoolAllocations(input: ElasticComputeCloudModel.GetIpamPoolAllocationsRequest) async throws
     -> ElasticComputeCloudModel.GetIpamPoolAllocationsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getIpamPoolAllocationsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetIpamPoolCidrs operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetIpamPoolCidrsRequest object being passed to this operation.
     - Returns: The GetIpamPoolCidrsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getIpamPoolCidrs(input: ElasticComputeCloudModel.GetIpamPoolCidrsRequest) async throws
     -> ElasticComputeCloudModel.GetIpamPoolCidrsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getIpamPoolCidrsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetIpamResourceCidrs operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetIpamResourceCidrsRequest object being passed to this operation.
     - Returns: The GetIpamResourceCidrsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getIpamResourceCidrs(input: ElasticComputeCloudModel.GetIpamResourceCidrsRequest) async throws
     -> ElasticComputeCloudModel.GetIpamResourceCidrsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getIpamResourceCidrsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetLaunchTemplateData operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetLaunchTemplateDataRequest object being passed to this operation.
     - Returns: The GetLaunchTemplateDataResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getLaunchTemplateData(input: ElasticComputeCloudModel.GetLaunchTemplateDataRequest) async throws
     -> ElasticComputeCloudModel.GetLaunchTemplateDataResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getLaunchTemplateDataAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetManagedPrefixListAssociations operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetManagedPrefixListAssociationsRequest object being passed to this operation.
     - Returns: The GetManagedPrefixListAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getManagedPrefixListAssociations(input: ElasticComputeCloudModel.GetManagedPrefixListAssociationsRequest) async throws
     -> ElasticComputeCloudModel.GetManagedPrefixListAssociationsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getManagedPrefixListAssociationsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetManagedPrefixListEntries operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetManagedPrefixListEntriesRequest object being passed to this operation.
     - Returns: The GetManagedPrefixListEntriesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getManagedPrefixListEntries(input: ElasticComputeCloudModel.GetManagedPrefixListEntriesRequest) async throws
     -> ElasticComputeCloudModel.GetManagedPrefixListEntriesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getManagedPrefixListEntriesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetNetworkInsightsAccessScopeAnalysisFindings operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetNetworkInsightsAccessScopeAnalysisFindingsRequest object being passed to this operation.
     - Returns: The GetNetworkInsightsAccessScopeAnalysisFindingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getNetworkInsightsAccessScopeAnalysisFindings(input: ElasticComputeCloudModel.GetNetworkInsightsAccessScopeAnalysisFindingsRequest) async throws
     -> ElasticComputeCloudModel.GetNetworkInsightsAccessScopeAnalysisFindingsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getNetworkInsightsAccessScopeAnalysisFindingsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetNetworkInsightsAccessScopeContent operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetNetworkInsightsAccessScopeContentRequest object being passed to this operation.
     - Returns: The GetNetworkInsightsAccessScopeContentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getNetworkInsightsAccessScopeContent(input: ElasticComputeCloudModel.GetNetworkInsightsAccessScopeContentRequest) async throws
     -> ElasticComputeCloudModel.GetNetworkInsightsAccessScopeContentResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getNetworkInsightsAccessScopeContentAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetPasswordData operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetPasswordDataRequest object being passed to this operation.
     - Returns: The GetPasswordDataResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getPasswordData(input: ElasticComputeCloudModel.GetPasswordDataRequest) async throws
     -> ElasticComputeCloudModel.GetPasswordDataResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getPasswordDataAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetReservedInstancesExchangeQuote operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetReservedInstancesExchangeQuoteRequest object being passed to this operation.
     - Returns: The GetReservedInstancesExchangeQuoteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getReservedInstancesExchangeQuote(input: ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteRequest) async throws
     -> ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getReservedInstancesExchangeQuoteAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetSecurityGroupsForVpc operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetSecurityGroupsForVpcRequest object being passed to this operation.
     - Returns: The GetSecurityGroupsForVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getSecurityGroupsForVpc(input: ElasticComputeCloudModel.GetSecurityGroupsForVpcRequest) async throws
     -> ElasticComputeCloudModel.GetSecurityGroupsForVpcResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getSecurityGroupsForVpcAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetSerialConsoleAccessStatus operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetSerialConsoleAccessStatusRequest object being passed to this operation.
     - Returns: The GetSerialConsoleAccessStatusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getSerialConsoleAccessStatus(input: ElasticComputeCloudModel.GetSerialConsoleAccessStatusRequest) async throws
     -> ElasticComputeCloudModel.GetSerialConsoleAccessStatusResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getSerialConsoleAccessStatusAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetSpotPlacementScores operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetSpotPlacementScoresRequest object being passed to this operation.
     - Returns: The GetSpotPlacementScoresResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getSpotPlacementScores(input: ElasticComputeCloudModel.GetSpotPlacementScoresRequest) async throws
     -> ElasticComputeCloudModel.GetSpotPlacementScoresResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getSpotPlacementScoresAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetSubnetCidrReservations operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetSubnetCidrReservationsRequest object being passed to this operation.
     - Returns: The GetSubnetCidrReservationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getSubnetCidrReservations(input: ElasticComputeCloudModel.GetSubnetCidrReservationsRequest) async throws
     -> ElasticComputeCloudModel.GetSubnetCidrReservationsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getSubnetCidrReservationsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetTransitGatewayAttachmentPropagations operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetTransitGatewayAttachmentPropagationsRequest object being passed to this operation.
     - Returns: The GetTransitGatewayAttachmentPropagationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getTransitGatewayAttachmentPropagations(input: ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsRequest) async throws
     -> ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getTransitGatewayAttachmentPropagationsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetTransitGatewayMulticastDomainAssociations operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetTransitGatewayMulticastDomainAssociationsRequest object being passed to this operation.
     - Returns: The GetTransitGatewayMulticastDomainAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getTransitGatewayMulticastDomainAssociations(input: ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsRequest) async throws
     -> ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getTransitGatewayMulticastDomainAssociationsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetTransitGatewayPolicyTableAssociations operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetTransitGatewayPolicyTableAssociationsRequest object being passed to this operation.
     - Returns: The GetTransitGatewayPolicyTableAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getTransitGatewayPolicyTableAssociations(input: ElasticComputeCloudModel.GetTransitGatewayPolicyTableAssociationsRequest) async throws
     -> ElasticComputeCloudModel.GetTransitGatewayPolicyTableAssociationsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getTransitGatewayPolicyTableAssociationsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetTransitGatewayPolicyTableEntries operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetTransitGatewayPolicyTableEntriesRequest object being passed to this operation.
     - Returns: The GetTransitGatewayPolicyTableEntriesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getTransitGatewayPolicyTableEntries(input: ElasticComputeCloudModel.GetTransitGatewayPolicyTableEntriesRequest) async throws
     -> ElasticComputeCloudModel.GetTransitGatewayPolicyTableEntriesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getTransitGatewayPolicyTableEntriesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetTransitGatewayPrefixListReferences operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetTransitGatewayPrefixListReferencesRequest object being passed to this operation.
     - Returns: The GetTransitGatewayPrefixListReferencesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getTransitGatewayPrefixListReferences(input: ElasticComputeCloudModel.GetTransitGatewayPrefixListReferencesRequest) async throws
     -> ElasticComputeCloudModel.GetTransitGatewayPrefixListReferencesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getTransitGatewayPrefixListReferencesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetTransitGatewayRouteTableAssociations operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetTransitGatewayRouteTableAssociationsRequest object being passed to this operation.
     - Returns: The GetTransitGatewayRouteTableAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getTransitGatewayRouteTableAssociations(input: ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsRequest) async throws
     -> ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getTransitGatewayRouteTableAssociationsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetTransitGatewayRouteTablePropagations operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetTransitGatewayRouteTablePropagationsRequest object being passed to this operation.
     - Returns: The GetTransitGatewayRouteTablePropagationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getTransitGatewayRouteTablePropagations(input: ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsRequest) async throws
     -> ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getTransitGatewayRouteTablePropagationsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetVerifiedAccessEndpointPolicy operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetVerifiedAccessEndpointPolicyRequest object being passed to this operation.
     - Returns: The GetVerifiedAccessEndpointPolicyResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getVerifiedAccessEndpointPolicy(input: ElasticComputeCloudModel.GetVerifiedAccessEndpointPolicyRequest) async throws
     -> ElasticComputeCloudModel.GetVerifiedAccessEndpointPolicyResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getVerifiedAccessEndpointPolicyAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetVerifiedAccessGroupPolicy operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetVerifiedAccessGroupPolicyRequest object being passed to this operation.
     - Returns: The GetVerifiedAccessGroupPolicyResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getVerifiedAccessGroupPolicy(input: ElasticComputeCloudModel.GetVerifiedAccessGroupPolicyRequest) async throws
     -> ElasticComputeCloudModel.GetVerifiedAccessGroupPolicyResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getVerifiedAccessGroupPolicyAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetVpnConnectionDeviceSampleConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetVpnConnectionDeviceSampleConfigurationRequest object being passed to this operation.
     - Returns: The GetVpnConnectionDeviceSampleConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getVpnConnectionDeviceSampleConfiguration(input: ElasticComputeCloudModel.GetVpnConnectionDeviceSampleConfigurationRequest) async throws
     -> ElasticComputeCloudModel.GetVpnConnectionDeviceSampleConfigurationResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getVpnConnectionDeviceSampleConfigurationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetVpnConnectionDeviceTypes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetVpnConnectionDeviceTypesRequest object being passed to this operation.
     - Returns: The GetVpnConnectionDeviceTypesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getVpnConnectionDeviceTypes(input: ElasticComputeCloudModel.GetVpnConnectionDeviceTypesRequest) async throws
     -> ElasticComputeCloudModel.GetVpnConnectionDeviceTypesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getVpnConnectionDeviceTypesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetVpnTunnelReplacementStatus operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetVpnTunnelReplacementStatusRequest object being passed to this operation.
     - Returns: The GetVpnTunnelReplacementStatusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getVpnTunnelReplacementStatus(input: ElasticComputeCloudModel.GetVpnTunnelReplacementStatusRequest) async throws
     -> ElasticComputeCloudModel.GetVpnTunnelReplacementStatusResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getVpnTunnelReplacementStatusAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ImportClientVpnClientCertificateRevocationList operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ImportClientVpnClientCertificateRevocationListRequest object being passed to this operation.
     - Returns: The ImportClientVpnClientCertificateRevocationListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importClientVpnClientCertificateRevocationList(input: ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListRequest) async throws
     -> ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try importClientVpnClientCertificateRevocationListAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ImportImage operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ImportImageRequest object being passed to this operation.
     - Returns: The ImportImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importImage(input: ElasticComputeCloudModel.ImportImageRequest) async throws
     -> ElasticComputeCloudModel.ImportImageResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try importImageAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ImportInstance operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ImportInstanceRequest object being passed to this operation.
     - Returns: The ImportInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importInstance(input: ElasticComputeCloudModel.ImportInstanceRequest) async throws
     -> ElasticComputeCloudModel.ImportInstanceResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try importInstanceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ImportKeyPair operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ImportKeyPairRequest object being passed to this operation.
     - Returns: The ImportKeyPairResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importKeyPair(input: ElasticComputeCloudModel.ImportKeyPairRequest) async throws
     -> ElasticComputeCloudModel.ImportKeyPairResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try importKeyPairAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ImportSnapshot operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ImportSnapshotRequest object being passed to this operation.
     - Returns: The ImportSnapshotResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importSnapshot(input: ElasticComputeCloudModel.ImportSnapshotRequest) async throws
     -> ElasticComputeCloudModel.ImportSnapshotResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try importSnapshotAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ImportVolume operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ImportVolumeRequest object being passed to this operation.
     - Returns: The ImportVolumeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importVolume(input: ElasticComputeCloudModel.ImportVolumeRequest) async throws
     -> ElasticComputeCloudModel.ImportVolumeResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try importVolumeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListImagesInRecycleBin operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListImagesInRecycleBinRequest object being passed to this operation.
     - Returns: The ListImagesInRecycleBinResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listImagesInRecycleBin(input: ElasticComputeCloudModel.ListImagesInRecycleBinRequest) async throws
     -> ElasticComputeCloudModel.ListImagesInRecycleBinResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listImagesInRecycleBinAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListSnapshotsInRecycleBin operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListSnapshotsInRecycleBinRequest object being passed to this operation.
     - Returns: The ListSnapshotsInRecycleBinResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listSnapshotsInRecycleBin(input: ElasticComputeCloudModel.ListSnapshotsInRecycleBinRequest) async throws
     -> ElasticComputeCloudModel.ListSnapshotsInRecycleBinResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listSnapshotsInRecycleBinAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyAddressAttribute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyAddressAttributeRequest object being passed to this operation.
     - Returns: The ModifyAddressAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyAddressAttribute(input: ElasticComputeCloudModel.ModifyAddressAttributeRequest) async throws
     -> ElasticComputeCloudModel.ModifyAddressAttributeResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyAddressAttributeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyAvailabilityZoneGroup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyAvailabilityZoneGroupRequest object being passed to this operation.
     - Returns: The ModifyAvailabilityZoneGroupResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyAvailabilityZoneGroup(input: ElasticComputeCloudModel.ModifyAvailabilityZoneGroupRequest) async throws
     -> ElasticComputeCloudModel.ModifyAvailabilityZoneGroupResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyAvailabilityZoneGroupAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyCapacityReservation operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyCapacityReservationRequest object being passed to this operation.
     - Returns: The ModifyCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyCapacityReservation(input: ElasticComputeCloudModel.ModifyCapacityReservationRequest) async throws
     -> ElasticComputeCloudModel.ModifyCapacityReservationResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyCapacityReservationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyCapacityReservationFleet operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyCapacityReservationFleetRequest object being passed to this operation.
     - Returns: The ModifyCapacityReservationFleetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyCapacityReservationFleet(input: ElasticComputeCloudModel.ModifyCapacityReservationFleetRequest) async throws
     -> ElasticComputeCloudModel.ModifyCapacityReservationFleetResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyCapacityReservationFleetAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyClientVpnEndpoint operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyClientVpnEndpointRequest object being passed to this operation.
     - Returns: The ModifyClientVpnEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyClientVpnEndpoint(input: ElasticComputeCloudModel.ModifyClientVpnEndpointRequest) async throws
     -> ElasticComputeCloudModel.ModifyClientVpnEndpointResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyClientVpnEndpointAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyDefaultCreditSpecification operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyDefaultCreditSpecificationRequest object being passed to this operation.
     - Returns: The ModifyDefaultCreditSpecificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyDefaultCreditSpecification(input: ElasticComputeCloudModel.ModifyDefaultCreditSpecificationRequest) async throws
     -> ElasticComputeCloudModel.ModifyDefaultCreditSpecificationResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyDefaultCreditSpecificationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyEbsDefaultKmsKeyId operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyEbsDefaultKmsKeyIdRequest object being passed to this operation.
     - Returns: The ModifyEbsDefaultKmsKeyIdResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyEbsDefaultKmsKeyId(input: ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdRequest) async throws
     -> ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyEbsDefaultKmsKeyIdAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyFleet operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyFleetRequest object being passed to this operation.
     - Returns: The ModifyFleetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyFleet(input: ElasticComputeCloudModel.ModifyFleetRequest) async throws
     -> ElasticComputeCloudModel.ModifyFleetResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyFleetAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyFpgaImageAttribute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyFpgaImageAttributeRequest object being passed to this operation.
     - Returns: The ModifyFpgaImageAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyFpgaImageAttribute(input: ElasticComputeCloudModel.ModifyFpgaImageAttributeRequest) async throws
     -> ElasticComputeCloudModel.ModifyFpgaImageAttributeResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyFpgaImageAttributeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyHosts operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyHostsRequest object being passed to this operation.
     - Returns: The ModifyHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyHosts(input: ElasticComputeCloudModel.ModifyHostsRequest) async throws
     -> ElasticComputeCloudModel.ModifyHostsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyHostsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyIdFormat operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyIdFormatRequest object being passed to this operation.
     */
    func modifyIdFormat(input: ElasticComputeCloudModel.ModifyIdFormatRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyIdFormatAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyIdentityIdFormat operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyIdentityIdFormatRequest object being passed to this operation.
     */
    func modifyIdentityIdFormat(input: ElasticComputeCloudModel.ModifyIdentityIdFormatRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyIdentityIdFormatAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyImageAttribute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyImageAttributeRequest object being passed to this operation.
     */
    func modifyImageAttribute(input: ElasticComputeCloudModel.ModifyImageAttributeRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyImageAttributeAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyInstanceAttribute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyInstanceAttributeRequest object being passed to this operation.
     */
    func modifyInstanceAttribute(input: ElasticComputeCloudModel.ModifyInstanceAttributeRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyInstanceAttributeAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyInstanceCapacityReservationAttributes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyInstanceCapacityReservationAttributesRequest object being passed to this operation.
     - Returns: The ModifyInstanceCapacityReservationAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstanceCapacityReservationAttributes(input: ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesRequest) async throws
     -> ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyInstanceCapacityReservationAttributesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyInstanceCreditSpecification operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyInstanceCreditSpecificationRequest object being passed to this operation.
     - Returns: The ModifyInstanceCreditSpecificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstanceCreditSpecification(input: ElasticComputeCloudModel.ModifyInstanceCreditSpecificationRequest) async throws
     -> ElasticComputeCloudModel.ModifyInstanceCreditSpecificationResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyInstanceCreditSpecificationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyInstanceEventStartTime operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyInstanceEventStartTimeRequest object being passed to this operation.
     - Returns: The ModifyInstanceEventStartTimeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstanceEventStartTime(input: ElasticComputeCloudModel.ModifyInstanceEventStartTimeRequest) async throws
     -> ElasticComputeCloudModel.ModifyInstanceEventStartTimeResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyInstanceEventStartTimeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyInstanceEventWindow operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyInstanceEventWindowRequest object being passed to this operation.
     - Returns: The ModifyInstanceEventWindowResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstanceEventWindow(input: ElasticComputeCloudModel.ModifyInstanceEventWindowRequest) async throws
     -> ElasticComputeCloudModel.ModifyInstanceEventWindowResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyInstanceEventWindowAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyInstanceMaintenanceOptions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyInstanceMaintenanceOptionsRequest object being passed to this operation.
     - Returns: The ModifyInstanceMaintenanceOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstanceMaintenanceOptions(input: ElasticComputeCloudModel.ModifyInstanceMaintenanceOptionsRequest) async throws
     -> ElasticComputeCloudModel.ModifyInstanceMaintenanceOptionsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyInstanceMaintenanceOptionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyInstanceMetadataOptions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyInstanceMetadataOptionsRequest object being passed to this operation.
     - Returns: The ModifyInstanceMetadataOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstanceMetadataOptions(input: ElasticComputeCloudModel.ModifyInstanceMetadataOptionsRequest) async throws
     -> ElasticComputeCloudModel.ModifyInstanceMetadataOptionsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyInstanceMetadataOptionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyInstancePlacement operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyInstancePlacementRequest object being passed to this operation.
     - Returns: The ModifyInstancePlacementResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstancePlacement(input: ElasticComputeCloudModel.ModifyInstancePlacementRequest) async throws
     -> ElasticComputeCloudModel.ModifyInstancePlacementResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyInstancePlacementAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyIpam operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyIpamRequest object being passed to this operation.
     - Returns: The ModifyIpamResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyIpam(input: ElasticComputeCloudModel.ModifyIpamRequest) async throws
     -> ElasticComputeCloudModel.ModifyIpamResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyIpamAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyIpamPool operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyIpamPoolRequest object being passed to this operation.
     - Returns: The ModifyIpamPoolResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyIpamPool(input: ElasticComputeCloudModel.ModifyIpamPoolRequest) async throws
     -> ElasticComputeCloudModel.ModifyIpamPoolResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyIpamPoolAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyIpamResourceCidr operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyIpamResourceCidrRequest object being passed to this operation.
     - Returns: The ModifyIpamResourceCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyIpamResourceCidr(input: ElasticComputeCloudModel.ModifyIpamResourceCidrRequest) async throws
     -> ElasticComputeCloudModel.ModifyIpamResourceCidrResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyIpamResourceCidrAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyIpamResourceDiscovery operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyIpamResourceDiscoveryRequest object being passed to this operation.
     - Returns: The ModifyIpamResourceDiscoveryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyIpamResourceDiscovery(input: ElasticComputeCloudModel.ModifyIpamResourceDiscoveryRequest) async throws
     -> ElasticComputeCloudModel.ModifyIpamResourceDiscoveryResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyIpamResourceDiscoveryAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyIpamScope operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyIpamScopeRequest object being passed to this operation.
     - Returns: The ModifyIpamScopeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyIpamScope(input: ElasticComputeCloudModel.ModifyIpamScopeRequest) async throws
     -> ElasticComputeCloudModel.ModifyIpamScopeResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyIpamScopeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyLaunchTemplate operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyLaunchTemplateRequest object being passed to this operation.
     - Returns: The ModifyLaunchTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyLaunchTemplate(input: ElasticComputeCloudModel.ModifyLaunchTemplateRequest) async throws
     -> ElasticComputeCloudModel.ModifyLaunchTemplateResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyLaunchTemplateAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyLocalGatewayRoute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyLocalGatewayRouteRequest object being passed to this operation.
     - Returns: The ModifyLocalGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyLocalGatewayRoute(input: ElasticComputeCloudModel.ModifyLocalGatewayRouteRequest) async throws
     -> ElasticComputeCloudModel.ModifyLocalGatewayRouteResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyLocalGatewayRouteAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyManagedPrefixList operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyManagedPrefixListRequest object being passed to this operation.
     - Returns: The ModifyManagedPrefixListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyManagedPrefixList(input: ElasticComputeCloudModel.ModifyManagedPrefixListRequest) async throws
     -> ElasticComputeCloudModel.ModifyManagedPrefixListResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyManagedPrefixListAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyNetworkInterfaceAttribute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyNetworkInterfaceAttributeRequest object being passed to this operation.
     */
    func modifyNetworkInterfaceAttribute(input: ElasticComputeCloudModel.ModifyNetworkInterfaceAttributeRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyNetworkInterfaceAttributeAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyPrivateDnsNameOptions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyPrivateDnsNameOptionsRequest object being passed to this operation.
     - Returns: The ModifyPrivateDnsNameOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyPrivateDnsNameOptions(input: ElasticComputeCloudModel.ModifyPrivateDnsNameOptionsRequest) async throws
     -> ElasticComputeCloudModel.ModifyPrivateDnsNameOptionsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyPrivateDnsNameOptionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyReservedInstances operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyReservedInstancesRequest object being passed to this operation.
     - Returns: The ModifyReservedInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyReservedInstances(input: ElasticComputeCloudModel.ModifyReservedInstancesRequest) async throws
     -> ElasticComputeCloudModel.ModifyReservedInstancesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyReservedInstancesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifySecurityGroupRules operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifySecurityGroupRulesRequest object being passed to this operation.
     - Returns: The ModifySecurityGroupRulesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifySecurityGroupRules(input: ElasticComputeCloudModel.ModifySecurityGroupRulesRequest) async throws
     -> ElasticComputeCloudModel.ModifySecurityGroupRulesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifySecurityGroupRulesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifySnapshotAttribute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifySnapshotAttributeRequest object being passed to this operation.
     */
    func modifySnapshotAttribute(input: ElasticComputeCloudModel.ModifySnapshotAttributeRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifySnapshotAttributeAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifySnapshotTier operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifySnapshotTierRequest object being passed to this operation.
     - Returns: The ModifySnapshotTierResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifySnapshotTier(input: ElasticComputeCloudModel.ModifySnapshotTierRequest) async throws
     -> ElasticComputeCloudModel.ModifySnapshotTierResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifySnapshotTierAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifySpotFleetRequest operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifySpotFleetRequestRequest object being passed to this operation.
     - Returns: The ModifySpotFleetRequestResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifySpotFleetRequest(input: ElasticComputeCloudModel.ModifySpotFleetRequestRequest) async throws
     -> ElasticComputeCloudModel.ModifySpotFleetRequestResponse {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifySpotFleetRequestAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifySubnetAttribute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifySubnetAttributeRequest object being passed to this operation.
     */
    func modifySubnetAttribute(input: ElasticComputeCloudModel.ModifySubnetAttributeRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifySubnetAttributeAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyTrafficMirrorFilterNetworkServices operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyTrafficMirrorFilterNetworkServicesRequest object being passed to this operation.
     - Returns: The ModifyTrafficMirrorFilterNetworkServicesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyTrafficMirrorFilterNetworkServices(input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesRequest) async throws
     -> ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyTrafficMirrorFilterNetworkServicesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyTrafficMirrorFilterRule operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyTrafficMirrorFilterRuleRequest object being passed to this operation.
     - Returns: The ModifyTrafficMirrorFilterRuleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyTrafficMirrorFilterRule(input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleRequest) async throws
     -> ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyTrafficMirrorFilterRuleAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyTrafficMirrorSession operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyTrafficMirrorSessionRequest object being passed to this operation.
     - Returns: The ModifyTrafficMirrorSessionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyTrafficMirrorSession(input: ElasticComputeCloudModel.ModifyTrafficMirrorSessionRequest) async throws
     -> ElasticComputeCloudModel.ModifyTrafficMirrorSessionResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyTrafficMirrorSessionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyTransitGateway operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyTransitGatewayRequest object being passed to this operation.
     - Returns: The ModifyTransitGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyTransitGateway(input: ElasticComputeCloudModel.ModifyTransitGatewayRequest) async throws
     -> ElasticComputeCloudModel.ModifyTransitGatewayResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyTransitGatewayAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyTransitGatewayPrefixListReference operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyTransitGatewayPrefixListReferenceRequest object being passed to this operation.
     - Returns: The ModifyTransitGatewayPrefixListReferenceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyTransitGatewayPrefixListReference(input: ElasticComputeCloudModel.ModifyTransitGatewayPrefixListReferenceRequest) async throws
     -> ElasticComputeCloudModel.ModifyTransitGatewayPrefixListReferenceResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyTransitGatewayPrefixListReferenceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyTransitGatewayVpcAttachment operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The ModifyTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyTransitGatewayVpcAttachment(input: ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentRequest) async throws
     -> ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyTransitGatewayVpcAttachmentAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyVerifiedAccessEndpoint operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyVerifiedAccessEndpointRequest object being passed to this operation.
     - Returns: The ModifyVerifiedAccessEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVerifiedAccessEndpoint(input: ElasticComputeCloudModel.ModifyVerifiedAccessEndpointRequest) async throws
     -> ElasticComputeCloudModel.ModifyVerifiedAccessEndpointResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyVerifiedAccessEndpointAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyVerifiedAccessEndpointPolicy operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyVerifiedAccessEndpointPolicyRequest object being passed to this operation.
     - Returns: The ModifyVerifiedAccessEndpointPolicyResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVerifiedAccessEndpointPolicy(input: ElasticComputeCloudModel.ModifyVerifiedAccessEndpointPolicyRequest) async throws
     -> ElasticComputeCloudModel.ModifyVerifiedAccessEndpointPolicyResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyVerifiedAccessEndpointPolicyAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyVerifiedAccessGroup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyVerifiedAccessGroupRequest object being passed to this operation.
     - Returns: The ModifyVerifiedAccessGroupResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVerifiedAccessGroup(input: ElasticComputeCloudModel.ModifyVerifiedAccessGroupRequest) async throws
     -> ElasticComputeCloudModel.ModifyVerifiedAccessGroupResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyVerifiedAccessGroupAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyVerifiedAccessGroupPolicy operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyVerifiedAccessGroupPolicyRequest object being passed to this operation.
     - Returns: The ModifyVerifiedAccessGroupPolicyResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVerifiedAccessGroupPolicy(input: ElasticComputeCloudModel.ModifyVerifiedAccessGroupPolicyRequest) async throws
     -> ElasticComputeCloudModel.ModifyVerifiedAccessGroupPolicyResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyVerifiedAccessGroupPolicyAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyVerifiedAccessInstance operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyVerifiedAccessInstanceRequest object being passed to this operation.
     - Returns: The ModifyVerifiedAccessInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVerifiedAccessInstance(input: ElasticComputeCloudModel.ModifyVerifiedAccessInstanceRequest) async throws
     -> ElasticComputeCloudModel.ModifyVerifiedAccessInstanceResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyVerifiedAccessInstanceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyVerifiedAccessInstanceLoggingConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyVerifiedAccessInstanceLoggingConfigurationRequest object being passed to this operation.
     - Returns: The ModifyVerifiedAccessInstanceLoggingConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVerifiedAccessInstanceLoggingConfiguration(input: ElasticComputeCloudModel.ModifyVerifiedAccessInstanceLoggingConfigurationRequest) async throws
     -> ElasticComputeCloudModel.ModifyVerifiedAccessInstanceLoggingConfigurationResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyVerifiedAccessInstanceLoggingConfigurationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyVerifiedAccessTrustProvider operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyVerifiedAccessTrustProviderRequest object being passed to this operation.
     - Returns: The ModifyVerifiedAccessTrustProviderResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVerifiedAccessTrustProvider(input: ElasticComputeCloudModel.ModifyVerifiedAccessTrustProviderRequest) async throws
     -> ElasticComputeCloudModel.ModifyVerifiedAccessTrustProviderResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyVerifiedAccessTrustProviderAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyVolume operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyVolumeRequest object being passed to this operation.
     - Returns: The ModifyVolumeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVolume(input: ElasticComputeCloudModel.ModifyVolumeRequest) async throws
     -> ElasticComputeCloudModel.ModifyVolumeResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyVolumeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyVolumeAttribute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyVolumeAttributeRequest object being passed to this operation.
     */
    func modifyVolumeAttribute(input: ElasticComputeCloudModel.ModifyVolumeAttributeRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyVolumeAttributeAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyVpcAttribute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyVpcAttributeRequest object being passed to this operation.
     */
    func modifyVpcAttribute(input: ElasticComputeCloudModel.ModifyVpcAttributeRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyVpcAttributeAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyVpcEndpoint operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyVpcEndpointRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcEndpoint(input: ElasticComputeCloudModel.ModifyVpcEndpointRequest) async throws
     -> ElasticComputeCloudModel.ModifyVpcEndpointResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyVpcEndpointAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyVpcEndpointConnectionNotification operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyVpcEndpointConnectionNotificationRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointConnectionNotificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcEndpointConnectionNotification(input: ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationRequest) async throws
     -> ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyVpcEndpointConnectionNotificationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyVpcEndpointServiceConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyVpcEndpointServiceConfigurationRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointServiceConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcEndpointServiceConfiguration(input: ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationRequest) async throws
     -> ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyVpcEndpointServiceConfigurationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyVpcEndpointServicePayerResponsibility operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyVpcEndpointServicePayerResponsibilityRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointServicePayerResponsibilityResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcEndpointServicePayerResponsibility(input: ElasticComputeCloudModel.ModifyVpcEndpointServicePayerResponsibilityRequest) async throws
     -> ElasticComputeCloudModel.ModifyVpcEndpointServicePayerResponsibilityResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyVpcEndpointServicePayerResponsibilityAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyVpcEndpointServicePermissions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyVpcEndpointServicePermissionsRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointServicePermissionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcEndpointServicePermissions(input: ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsRequest) async throws
     -> ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyVpcEndpointServicePermissionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyVpcPeeringConnectionOptions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyVpcPeeringConnectionOptionsRequest object being passed to this operation.
     - Returns: The ModifyVpcPeeringConnectionOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcPeeringConnectionOptions(input: ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsRequest) async throws
     -> ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyVpcPeeringConnectionOptionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyVpcTenancy operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyVpcTenancyRequest object being passed to this operation.
     - Returns: The ModifyVpcTenancyResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcTenancy(input: ElasticComputeCloudModel.ModifyVpcTenancyRequest) async throws
     -> ElasticComputeCloudModel.ModifyVpcTenancyResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyVpcTenancyAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyVpnConnection operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyVpnConnectionRequest object being passed to this operation.
     - Returns: The ModifyVpnConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpnConnection(input: ElasticComputeCloudModel.ModifyVpnConnectionRequest) async throws
     -> ElasticComputeCloudModel.ModifyVpnConnectionResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyVpnConnectionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyVpnConnectionOptions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyVpnConnectionOptionsRequest object being passed to this operation.
     - Returns: The ModifyVpnConnectionOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpnConnectionOptions(input: ElasticComputeCloudModel.ModifyVpnConnectionOptionsRequest) async throws
     -> ElasticComputeCloudModel.ModifyVpnConnectionOptionsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyVpnConnectionOptionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyVpnTunnelCertificate operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyVpnTunnelCertificateRequest object being passed to this operation.
     - Returns: The ModifyVpnTunnelCertificateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpnTunnelCertificate(input: ElasticComputeCloudModel.ModifyVpnTunnelCertificateRequest) async throws
     -> ElasticComputeCloudModel.ModifyVpnTunnelCertificateResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyVpnTunnelCertificateAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyVpnTunnelOptions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyVpnTunnelOptionsRequest object being passed to this operation.
     - Returns: The ModifyVpnTunnelOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpnTunnelOptions(input: ElasticComputeCloudModel.ModifyVpnTunnelOptionsRequest) async throws
     -> ElasticComputeCloudModel.ModifyVpnTunnelOptionsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try modifyVpnTunnelOptionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the MonitorInstances operation and asynchronously returning the response.

     - Parameters:
         - input: The validated MonitorInstancesRequest object being passed to this operation.
     - Returns: The MonitorInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func monitorInstances(input: ElasticComputeCloudModel.MonitorInstancesRequest) async throws
     -> ElasticComputeCloudModel.MonitorInstancesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try monitorInstancesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the MoveAddressToVpc operation and asynchronously returning the response.

     - Parameters:
         - input: The validated MoveAddressToVpcRequest object being passed to this operation.
     - Returns: The MoveAddressToVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func moveAddressToVpc(input: ElasticComputeCloudModel.MoveAddressToVpcRequest) async throws
     -> ElasticComputeCloudModel.MoveAddressToVpcResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try moveAddressToVpcAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the MoveByoipCidrToIpam operation and asynchronously returning the response.

     - Parameters:
         - input: The validated MoveByoipCidrToIpamRequest object being passed to this operation.
     - Returns: The MoveByoipCidrToIpamResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func moveByoipCidrToIpam(input: ElasticComputeCloudModel.MoveByoipCidrToIpamRequest) async throws
     -> ElasticComputeCloudModel.MoveByoipCidrToIpamResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try moveByoipCidrToIpamAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ProvisionByoipCidr operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ProvisionByoipCidrRequest object being passed to this operation.
     - Returns: The ProvisionByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func provisionByoipCidr(input: ElasticComputeCloudModel.ProvisionByoipCidrRequest) async throws
     -> ElasticComputeCloudModel.ProvisionByoipCidrResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try provisionByoipCidrAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ProvisionIpamPoolCidr operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ProvisionIpamPoolCidrRequest object being passed to this operation.
     - Returns: The ProvisionIpamPoolCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func provisionIpamPoolCidr(input: ElasticComputeCloudModel.ProvisionIpamPoolCidrRequest) async throws
     -> ElasticComputeCloudModel.ProvisionIpamPoolCidrResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try provisionIpamPoolCidrAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ProvisionPublicIpv4PoolCidr operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ProvisionPublicIpv4PoolCidrRequest object being passed to this operation.
     - Returns: The ProvisionPublicIpv4PoolCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func provisionPublicIpv4PoolCidr(input: ElasticComputeCloudModel.ProvisionPublicIpv4PoolCidrRequest) async throws
     -> ElasticComputeCloudModel.ProvisionPublicIpv4PoolCidrResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try provisionPublicIpv4PoolCidrAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PurchaseHostReservation operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PurchaseHostReservationRequest object being passed to this operation.
     - Returns: The PurchaseHostReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func purchaseHostReservation(input: ElasticComputeCloudModel.PurchaseHostReservationRequest) async throws
     -> ElasticComputeCloudModel.PurchaseHostReservationResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try purchaseHostReservationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PurchaseReservedInstancesOffering operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PurchaseReservedInstancesOfferingRequest object being passed to this operation.
     - Returns: The PurchaseReservedInstancesOfferingResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func purchaseReservedInstancesOffering(input: ElasticComputeCloudModel.PurchaseReservedInstancesOfferingRequest) async throws
     -> ElasticComputeCloudModel.PurchaseReservedInstancesOfferingResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try purchaseReservedInstancesOfferingAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PurchaseScheduledInstances operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PurchaseScheduledInstancesRequest object being passed to this operation.
     - Returns: The PurchaseScheduledInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func purchaseScheduledInstances(input: ElasticComputeCloudModel.PurchaseScheduledInstancesRequest) async throws
     -> ElasticComputeCloudModel.PurchaseScheduledInstancesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try purchaseScheduledInstancesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RebootInstances operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RebootInstancesRequest object being passed to this operation.
     */
    func rebootInstances(input: ElasticComputeCloudModel.RebootInstancesRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try rebootInstancesAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RegisterImage operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RegisterImageRequest object being passed to this operation.
     - Returns: The RegisterImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func registerImage(input: ElasticComputeCloudModel.RegisterImageRequest) async throws
     -> ElasticComputeCloudModel.RegisterImageResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try registerImageAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RegisterInstanceEventNotificationAttributes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RegisterInstanceEventNotificationAttributesRequest object being passed to this operation.
     - Returns: The RegisterInstanceEventNotificationAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func registerInstanceEventNotificationAttributes(input: ElasticComputeCloudModel.RegisterInstanceEventNotificationAttributesRequest) async throws
     -> ElasticComputeCloudModel.RegisterInstanceEventNotificationAttributesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try registerInstanceEventNotificationAttributesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RegisterTransitGatewayMulticastGroupMembers operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RegisterTransitGatewayMulticastGroupMembersRequest object being passed to this operation.
     - Returns: The RegisterTransitGatewayMulticastGroupMembersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func registerTransitGatewayMulticastGroupMembers(input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersRequest) async throws
     -> ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try registerTransitGatewayMulticastGroupMembersAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RegisterTransitGatewayMulticastGroupSources operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RegisterTransitGatewayMulticastGroupSourcesRequest object being passed to this operation.
     - Returns: The RegisterTransitGatewayMulticastGroupSourcesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func registerTransitGatewayMulticastGroupSources(input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesRequest) async throws
     -> ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try registerTransitGatewayMulticastGroupSourcesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RejectTransitGatewayMulticastDomainAssociations operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RejectTransitGatewayMulticastDomainAssociationsRequest object being passed to this operation.
     - Returns: The RejectTransitGatewayMulticastDomainAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func rejectTransitGatewayMulticastDomainAssociations(input: ElasticComputeCloudModel.RejectTransitGatewayMulticastDomainAssociationsRequest) async throws
     -> ElasticComputeCloudModel.RejectTransitGatewayMulticastDomainAssociationsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try rejectTransitGatewayMulticastDomainAssociationsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RejectTransitGatewayPeeringAttachment operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RejectTransitGatewayPeeringAttachmentRequest object being passed to this operation.
     - Returns: The RejectTransitGatewayPeeringAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func rejectTransitGatewayPeeringAttachment(input: ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentRequest) async throws
     -> ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try rejectTransitGatewayPeeringAttachmentAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RejectTransitGatewayVpcAttachment operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RejectTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The RejectTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func rejectTransitGatewayVpcAttachment(input: ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentRequest) async throws
     -> ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try rejectTransitGatewayVpcAttachmentAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RejectVpcEndpointConnections operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RejectVpcEndpointConnectionsRequest object being passed to this operation.
     - Returns: The RejectVpcEndpointConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func rejectVpcEndpointConnections(input: ElasticComputeCloudModel.RejectVpcEndpointConnectionsRequest) async throws
     -> ElasticComputeCloudModel.RejectVpcEndpointConnectionsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try rejectVpcEndpointConnectionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RejectVpcPeeringConnection operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RejectVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: The RejectVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func rejectVpcPeeringConnection(input: ElasticComputeCloudModel.RejectVpcPeeringConnectionRequest) async throws
     -> ElasticComputeCloudModel.RejectVpcPeeringConnectionResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try rejectVpcPeeringConnectionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ReleaseAddress operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ReleaseAddressRequest object being passed to this operation.
     */
    func releaseAddress(input: ElasticComputeCloudModel.ReleaseAddressRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try releaseAddressAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ReleaseHosts operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ReleaseHostsRequest object being passed to this operation.
     - Returns: The ReleaseHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func releaseHosts(input: ElasticComputeCloudModel.ReleaseHostsRequest) async throws
     -> ElasticComputeCloudModel.ReleaseHostsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try releaseHostsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ReleaseIpamPoolAllocation operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ReleaseIpamPoolAllocationRequest object being passed to this operation.
     - Returns: The ReleaseIpamPoolAllocationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func releaseIpamPoolAllocation(input: ElasticComputeCloudModel.ReleaseIpamPoolAllocationRequest) async throws
     -> ElasticComputeCloudModel.ReleaseIpamPoolAllocationResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try releaseIpamPoolAllocationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ReplaceIamInstanceProfileAssociation operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ReplaceIamInstanceProfileAssociationRequest object being passed to this operation.
     - Returns: The ReplaceIamInstanceProfileAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func replaceIamInstanceProfileAssociation(input: ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationRequest) async throws
     -> ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try replaceIamInstanceProfileAssociationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ReplaceNetworkAclAssociation operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ReplaceNetworkAclAssociationRequest object being passed to this operation.
     - Returns: The ReplaceNetworkAclAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func replaceNetworkAclAssociation(input: ElasticComputeCloudModel.ReplaceNetworkAclAssociationRequest) async throws
     -> ElasticComputeCloudModel.ReplaceNetworkAclAssociationResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try replaceNetworkAclAssociationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ReplaceNetworkAclEntry operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ReplaceNetworkAclEntryRequest object being passed to this operation.
     */
    func replaceNetworkAclEntry(input: ElasticComputeCloudModel.ReplaceNetworkAclEntryRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try replaceNetworkAclEntryAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ReplaceRoute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ReplaceRouteRequest object being passed to this operation.
     */
    func replaceRoute(input: ElasticComputeCloudModel.ReplaceRouteRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try replaceRouteAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ReplaceRouteTableAssociation operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ReplaceRouteTableAssociationRequest object being passed to this operation.
     - Returns: The ReplaceRouteTableAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func replaceRouteTableAssociation(input: ElasticComputeCloudModel.ReplaceRouteTableAssociationRequest) async throws
     -> ElasticComputeCloudModel.ReplaceRouteTableAssociationResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try replaceRouteTableAssociationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ReplaceTransitGatewayRoute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ReplaceTransitGatewayRouteRequest object being passed to this operation.
     - Returns: The ReplaceTransitGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func replaceTransitGatewayRoute(input: ElasticComputeCloudModel.ReplaceTransitGatewayRouteRequest) async throws
     -> ElasticComputeCloudModel.ReplaceTransitGatewayRouteResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try replaceTransitGatewayRouteAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ReplaceVpnTunnel operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ReplaceVpnTunnelRequest object being passed to this operation.
     - Returns: The ReplaceVpnTunnelResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func replaceVpnTunnel(input: ElasticComputeCloudModel.ReplaceVpnTunnelRequest) async throws
     -> ElasticComputeCloudModel.ReplaceVpnTunnelResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try replaceVpnTunnelAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ReportInstanceStatus operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ReportInstanceStatusRequest object being passed to this operation.
     */
    func reportInstanceStatus(input: ElasticComputeCloudModel.ReportInstanceStatusRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try reportInstanceStatusAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RequestSpotFleet operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RequestSpotFleetRequest object being passed to this operation.
     - Returns: The RequestSpotFleetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func requestSpotFleet(input: ElasticComputeCloudModel.RequestSpotFleetRequest) async throws
     -> ElasticComputeCloudModel.RequestSpotFleetResponse {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try requestSpotFleetAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RequestSpotInstances operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RequestSpotInstancesRequest object being passed to this operation.
     - Returns: The RequestSpotInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func requestSpotInstances(input: ElasticComputeCloudModel.RequestSpotInstancesRequest) async throws
     -> ElasticComputeCloudModel.RequestSpotInstancesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try requestSpotInstancesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ResetAddressAttribute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ResetAddressAttributeRequest object being passed to this operation.
     - Returns: The ResetAddressAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func resetAddressAttribute(input: ElasticComputeCloudModel.ResetAddressAttributeRequest) async throws
     -> ElasticComputeCloudModel.ResetAddressAttributeResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try resetAddressAttributeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ResetEbsDefaultKmsKeyId operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ResetEbsDefaultKmsKeyIdRequest object being passed to this operation.
     - Returns: The ResetEbsDefaultKmsKeyIdResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func resetEbsDefaultKmsKeyId(input: ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdRequest) async throws
     -> ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try resetEbsDefaultKmsKeyIdAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ResetFpgaImageAttribute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ResetFpgaImageAttributeRequest object being passed to this operation.
     - Returns: The ResetFpgaImageAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func resetFpgaImageAttribute(input: ElasticComputeCloudModel.ResetFpgaImageAttributeRequest) async throws
     -> ElasticComputeCloudModel.ResetFpgaImageAttributeResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try resetFpgaImageAttributeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ResetImageAttribute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ResetImageAttributeRequest object being passed to this operation.
     */
    func resetImageAttribute(input: ElasticComputeCloudModel.ResetImageAttributeRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try resetImageAttributeAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ResetInstanceAttribute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ResetInstanceAttributeRequest object being passed to this operation.
     */
    func resetInstanceAttribute(input: ElasticComputeCloudModel.ResetInstanceAttributeRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try resetInstanceAttributeAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ResetNetworkInterfaceAttribute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ResetNetworkInterfaceAttributeRequest object being passed to this operation.
     */
    func resetNetworkInterfaceAttribute(input: ElasticComputeCloudModel.ResetNetworkInterfaceAttributeRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try resetNetworkInterfaceAttributeAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ResetSnapshotAttribute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ResetSnapshotAttributeRequest object being passed to this operation.
     */
    func resetSnapshotAttribute(input: ElasticComputeCloudModel.ResetSnapshotAttributeRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try resetSnapshotAttributeAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RestoreAddressToClassic operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RestoreAddressToClassicRequest object being passed to this operation.
     - Returns: The RestoreAddressToClassicResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func restoreAddressToClassic(input: ElasticComputeCloudModel.RestoreAddressToClassicRequest) async throws
     -> ElasticComputeCloudModel.RestoreAddressToClassicResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try restoreAddressToClassicAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RestoreImageFromRecycleBin operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RestoreImageFromRecycleBinRequest object being passed to this operation.
     - Returns: The RestoreImageFromRecycleBinResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func restoreImageFromRecycleBin(input: ElasticComputeCloudModel.RestoreImageFromRecycleBinRequest) async throws
     -> ElasticComputeCloudModel.RestoreImageFromRecycleBinResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try restoreImageFromRecycleBinAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RestoreManagedPrefixListVersion operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RestoreManagedPrefixListVersionRequest object being passed to this operation.
     - Returns: The RestoreManagedPrefixListVersionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func restoreManagedPrefixListVersion(input: ElasticComputeCloudModel.RestoreManagedPrefixListVersionRequest) async throws
     -> ElasticComputeCloudModel.RestoreManagedPrefixListVersionResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try restoreManagedPrefixListVersionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RestoreSnapshotFromRecycleBin operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RestoreSnapshotFromRecycleBinRequest object being passed to this operation.
     - Returns: The RestoreSnapshotFromRecycleBinResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func restoreSnapshotFromRecycleBin(input: ElasticComputeCloudModel.RestoreSnapshotFromRecycleBinRequest) async throws
     -> ElasticComputeCloudModel.RestoreSnapshotFromRecycleBinResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try restoreSnapshotFromRecycleBinAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RestoreSnapshotTier operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RestoreSnapshotTierRequest object being passed to this operation.
     - Returns: The RestoreSnapshotTierResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func restoreSnapshotTier(input: ElasticComputeCloudModel.RestoreSnapshotTierRequest) async throws
     -> ElasticComputeCloudModel.RestoreSnapshotTierResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try restoreSnapshotTierAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RevokeClientVpnIngress operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RevokeClientVpnIngressRequest object being passed to this operation.
     - Returns: The RevokeClientVpnIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func revokeClientVpnIngress(input: ElasticComputeCloudModel.RevokeClientVpnIngressRequest) async throws
     -> ElasticComputeCloudModel.RevokeClientVpnIngressResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try revokeClientVpnIngressAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RevokeSecurityGroupEgress operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RevokeSecurityGroupEgressRequest object being passed to this operation.
     - Returns: The RevokeSecurityGroupEgressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func revokeSecurityGroupEgress(input: ElasticComputeCloudModel.RevokeSecurityGroupEgressRequest) async throws
     -> ElasticComputeCloudModel.RevokeSecurityGroupEgressResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try revokeSecurityGroupEgressAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RevokeSecurityGroupIngress operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RevokeSecurityGroupIngressRequest object being passed to this operation.
     - Returns: The RevokeSecurityGroupIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func revokeSecurityGroupIngress(input: ElasticComputeCloudModel.RevokeSecurityGroupIngressRequest) async throws
     -> ElasticComputeCloudModel.RevokeSecurityGroupIngressResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try revokeSecurityGroupIngressAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RunInstances operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RunInstancesRequest object being passed to this operation.
     - Returns: The Reservation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func runInstances(input: ElasticComputeCloudModel.RunInstancesRequest) async throws
     -> ElasticComputeCloudModel.Reservation {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try runInstancesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RunScheduledInstances operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RunScheduledInstancesRequest object being passed to this operation.
     - Returns: The RunScheduledInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func runScheduledInstances(input: ElasticComputeCloudModel.RunScheduledInstancesRequest) async throws
     -> ElasticComputeCloudModel.RunScheduledInstancesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try runScheduledInstancesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the SearchLocalGatewayRoutes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated SearchLocalGatewayRoutesRequest object being passed to this operation.
     - Returns: The SearchLocalGatewayRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func searchLocalGatewayRoutes(input: ElasticComputeCloudModel.SearchLocalGatewayRoutesRequest) async throws
     -> ElasticComputeCloudModel.SearchLocalGatewayRoutesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try searchLocalGatewayRoutesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the SearchTransitGatewayMulticastGroups operation and asynchronously returning the response.

     - Parameters:
         - input: The validated SearchTransitGatewayMulticastGroupsRequest object being passed to this operation.
     - Returns: The SearchTransitGatewayMulticastGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func searchTransitGatewayMulticastGroups(input: ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsRequest) async throws
     -> ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try searchTransitGatewayMulticastGroupsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the SearchTransitGatewayRoutes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated SearchTransitGatewayRoutesRequest object being passed to this operation.
     - Returns: The SearchTransitGatewayRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func searchTransitGatewayRoutes(input: ElasticComputeCloudModel.SearchTransitGatewayRoutesRequest) async throws
     -> ElasticComputeCloudModel.SearchTransitGatewayRoutesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try searchTransitGatewayRoutesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the SendDiagnosticInterrupt operation and asynchronously returning the response.

     - Parameters:
         - input: The validated SendDiagnosticInterruptRequest object being passed to this operation.
     */
    func sendDiagnosticInterrupt(input: ElasticComputeCloudModel.SendDiagnosticInterruptRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try sendDiagnosticInterruptAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the StartInstances operation and asynchronously returning the response.

     - Parameters:
         - input: The validated StartInstancesRequest object being passed to this operation.
     - Returns: The StartInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func startInstances(input: ElasticComputeCloudModel.StartInstancesRequest) async throws
     -> ElasticComputeCloudModel.StartInstancesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try startInstancesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the StartNetworkInsightsAccessScopeAnalysis operation and asynchronously returning the response.

     - Parameters:
         - input: The validated StartNetworkInsightsAccessScopeAnalysisRequest object being passed to this operation.
     - Returns: The StartNetworkInsightsAccessScopeAnalysisResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func startNetworkInsightsAccessScopeAnalysis(input: ElasticComputeCloudModel.StartNetworkInsightsAccessScopeAnalysisRequest) async throws
     -> ElasticComputeCloudModel.StartNetworkInsightsAccessScopeAnalysisResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try startNetworkInsightsAccessScopeAnalysisAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the StartNetworkInsightsAnalysis operation and asynchronously returning the response.

     - Parameters:
         - input: The validated StartNetworkInsightsAnalysisRequest object being passed to this operation.
     - Returns: The StartNetworkInsightsAnalysisResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func startNetworkInsightsAnalysis(input: ElasticComputeCloudModel.StartNetworkInsightsAnalysisRequest) async throws
     -> ElasticComputeCloudModel.StartNetworkInsightsAnalysisResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try startNetworkInsightsAnalysisAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the StartVpcEndpointServicePrivateDnsVerification operation and asynchronously returning the response.

     - Parameters:
         - input: The validated StartVpcEndpointServicePrivateDnsVerificationRequest object being passed to this operation.
     - Returns: The StartVpcEndpointServicePrivateDnsVerificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func startVpcEndpointServicePrivateDnsVerification(input: ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationRequest) async throws
     -> ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try startVpcEndpointServicePrivateDnsVerificationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the StopInstances operation and asynchronously returning the response.

     - Parameters:
         - input: The validated StopInstancesRequest object being passed to this operation.
     - Returns: The StopInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func stopInstances(input: ElasticComputeCloudModel.StopInstancesRequest) async throws
     -> ElasticComputeCloudModel.StopInstancesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try stopInstancesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the TerminateClientVpnConnections operation and asynchronously returning the response.

     - Parameters:
         - input: The validated TerminateClientVpnConnectionsRequest object being passed to this operation.
     - Returns: The TerminateClientVpnConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func terminateClientVpnConnections(input: ElasticComputeCloudModel.TerminateClientVpnConnectionsRequest) async throws
     -> ElasticComputeCloudModel.TerminateClientVpnConnectionsResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try terminateClientVpnConnectionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the TerminateInstances operation and asynchronously returning the response.

     - Parameters:
         - input: The validated TerminateInstancesRequest object being passed to this operation.
     - Returns: The TerminateInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func terminateInstances(input: ElasticComputeCloudModel.TerminateInstancesRequest) async throws
     -> ElasticComputeCloudModel.TerminateInstancesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try terminateInstancesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UnassignIpv6Addresses operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UnassignIpv6AddressesRequest object being passed to this operation.
     - Returns: The UnassignIpv6AddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func unassignIpv6Addresses(input: ElasticComputeCloudModel.UnassignIpv6AddressesRequest) async throws
     -> ElasticComputeCloudModel.UnassignIpv6AddressesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try unassignIpv6AddressesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UnassignPrivateIpAddresses operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UnassignPrivateIpAddressesRequest object being passed to this operation.
     */
    func unassignPrivateIpAddresses(input: ElasticComputeCloudModel.UnassignPrivateIpAddressesRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try unassignPrivateIpAddressesAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UnassignPrivateNatGatewayAddress operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UnassignPrivateNatGatewayAddressRequest object being passed to this operation.
     - Returns: The UnassignPrivateNatGatewayAddressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func unassignPrivateNatGatewayAddress(input: ElasticComputeCloudModel.UnassignPrivateNatGatewayAddressRequest) async throws
     -> ElasticComputeCloudModel.UnassignPrivateNatGatewayAddressResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try unassignPrivateNatGatewayAddressAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UnmonitorInstances operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UnmonitorInstancesRequest object being passed to this operation.
     - Returns: The UnmonitorInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func unmonitorInstances(input: ElasticComputeCloudModel.UnmonitorInstancesRequest) async throws
     -> ElasticComputeCloudModel.UnmonitorInstancesResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try unmonitorInstancesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UpdateSecurityGroupRuleDescriptionsEgress operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UpdateSecurityGroupRuleDescriptionsEgressRequest object being passed to this operation.
     - Returns: The UpdateSecurityGroupRuleDescriptionsEgressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func updateSecurityGroupRuleDescriptionsEgress(input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressRequest) async throws
     -> ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try updateSecurityGroupRuleDescriptionsEgressAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UpdateSecurityGroupRuleDescriptionsIngress operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UpdateSecurityGroupRuleDescriptionsIngressRequest object being passed to this operation.
     - Returns: The UpdateSecurityGroupRuleDescriptionsIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func updateSecurityGroupRuleDescriptionsIngress(input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressRequest) async throws
     -> ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try updateSecurityGroupRuleDescriptionsIngressAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the WithdrawByoipCidr operation and asynchronously returning the response.

     - Parameters:
         - input: The validated WithdrawByoipCidrRequest object being passed to this operation.
     - Returns: The WithdrawByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func withdrawByoipCidr(input: ElasticComputeCloudModel.WithdrawByoipCidrRequest) async throws
     -> ElasticComputeCloudModel.WithdrawByoipCidrResult {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try withdrawByoipCidrAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }
}

#endif
