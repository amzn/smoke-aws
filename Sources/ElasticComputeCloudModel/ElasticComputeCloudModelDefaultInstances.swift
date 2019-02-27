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
// ElasticComputeCloudModelDefaultInstances.swift
// ElasticComputeCloudModel
//

import Foundation

public extension AcceptReservedInstancesExchangeQuoteRequest {
    /**
     Default instance of the AcceptReservedInstancesExchangeQuoteRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteRequest = {
        let defaultInstance = ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteRequest(
            dryRun: nil,
            reservedInstanceIds: [],
            targetConfigurations: nil)

        return defaultInstance
    }()
}

public extension AcceptReservedInstancesExchangeQuoteResult {
    /**
     Default instance of the AcceptReservedInstancesExchangeQuoteResult structure.
     */
    public static let __default: ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteResult = {
        let defaultInstance = ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteResult(
            exchangeId: nil)

        return defaultInstance
    }()
}

public extension AcceptTransitGatewayVpcAttachmentRequest {
    /**
     Default instance of the AcceptTransitGatewayVpcAttachmentRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentRequest = {
        let defaultInstance = ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentRequest(
            dryRun: nil,
            transitGatewayAttachmentId: "value")

        return defaultInstance
    }()
}

public extension AcceptTransitGatewayVpcAttachmentResult {
    /**
     Default instance of the AcceptTransitGatewayVpcAttachmentResult structure.
     */
    public static let __default: ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentResult = {
        let defaultInstance = ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentResult(
            transitGatewayVpcAttachment: nil)

        return defaultInstance
    }()
}

public extension AcceptVpcEndpointConnectionsRequest {
    /**
     Default instance of the AcceptVpcEndpointConnectionsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.AcceptVpcEndpointConnectionsRequest = {
        let defaultInstance = ElasticComputeCloudModel.AcceptVpcEndpointConnectionsRequest(
            dryRun: nil,
            serviceId: "value",
            vpcEndpointIds: [])

        return defaultInstance
    }()
}

public extension AcceptVpcEndpointConnectionsResult {
    /**
     Default instance of the AcceptVpcEndpointConnectionsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.AcceptVpcEndpointConnectionsResult = {
        let defaultInstance = ElasticComputeCloudModel.AcceptVpcEndpointConnectionsResult(
            unsuccessful: nil)

        return defaultInstance
    }()
}

public extension AcceptVpcPeeringConnectionRequest {
    /**
     Default instance of the AcceptVpcPeeringConnectionRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.AcceptVpcPeeringConnectionRequest = {
        let defaultInstance = ElasticComputeCloudModel.AcceptVpcPeeringConnectionRequest(
            dryRun: nil,
            vpcPeeringConnectionId: nil)

        return defaultInstance
    }()
}

public extension AcceptVpcPeeringConnectionResult {
    /**
     Default instance of the AcceptVpcPeeringConnectionResult structure.
     */
    public static let __default: ElasticComputeCloudModel.AcceptVpcPeeringConnectionResult = {
        let defaultInstance = ElasticComputeCloudModel.AcceptVpcPeeringConnectionResult(
            vpcPeeringConnection: nil)

        return defaultInstance
    }()
}

public extension AccountAttribute {
    /**
     Default instance of the AccountAttribute structure.
     */
    public static let __default: ElasticComputeCloudModel.AccountAttribute = {
        let defaultInstance = ElasticComputeCloudModel.AccountAttribute(
            attributeName: nil,
            attributeValues: nil)

        return defaultInstance
    }()
}

public extension AccountAttributeValue {
    /**
     Default instance of the AccountAttributeValue structure.
     */
    public static let __default: ElasticComputeCloudModel.AccountAttributeValue = {
        let defaultInstance = ElasticComputeCloudModel.AccountAttributeValue(
            attributeValue: nil)

        return defaultInstance
    }()
}

public extension ActiveInstance {
    /**
     Default instance of the ActiveInstance structure.
     */
    public static let __default: ElasticComputeCloudModel.ActiveInstance = {
        let defaultInstance = ElasticComputeCloudModel.ActiveInstance(
            instanceHealth: nil,
            instanceId: nil,
            instanceType: nil,
            spotInstanceRequestId: nil)

        return defaultInstance
    }()
}

public extension Address {
    /**
     Default instance of the Address structure.
     */
    public static let __default: ElasticComputeCloudModel.Address = {
        let defaultInstance = ElasticComputeCloudModel.Address(
            allocationId: nil,
            associationId: nil,
            domain: nil,
            instanceId: nil,
            networkInterfaceId: nil,
            networkInterfaceOwnerId: nil,
            privateIpAddress: nil,
            publicIp: nil,
            publicIpv4Pool: nil,
            tags: nil)

        return defaultInstance
    }()
}

public extension AdvertiseByoipCidrRequest {
    /**
     Default instance of the AdvertiseByoipCidrRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.AdvertiseByoipCidrRequest = {
        let defaultInstance = ElasticComputeCloudModel.AdvertiseByoipCidrRequest(
            cidr: "value",
            dryRun: nil)

        return defaultInstance
    }()
}

public extension AdvertiseByoipCidrResult {
    /**
     Default instance of the AdvertiseByoipCidrResult structure.
     */
    public static let __default: ElasticComputeCloudModel.AdvertiseByoipCidrResult = {
        let defaultInstance = ElasticComputeCloudModel.AdvertiseByoipCidrResult(
            byoipCidr: nil)

        return defaultInstance
    }()
}

public extension AllocateAddressRequest {
    /**
     Default instance of the AllocateAddressRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.AllocateAddressRequest = {
        let defaultInstance = ElasticComputeCloudModel.AllocateAddressRequest(
            address: nil,
            domain: nil,
            dryRun: nil,
            publicIpv4Pool: nil)

        return defaultInstance
    }()
}

public extension AllocateAddressResult {
    /**
     Default instance of the AllocateAddressResult structure.
     */
    public static let __default: ElasticComputeCloudModel.AllocateAddressResult = {
        let defaultInstance = ElasticComputeCloudModel.AllocateAddressResult(
            allocationId: nil,
            domain: nil,
            publicIp: nil,
            publicIpv4Pool: nil)

        return defaultInstance
    }()
}

public extension AllocateHostsRequest {
    /**
     Default instance of the AllocateHostsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.AllocateHostsRequest = {
        let defaultInstance = ElasticComputeCloudModel.AllocateHostsRequest(
            autoPlacement: nil,
            availabilityZone: "value",
            clientToken: nil,
            instanceType: "value",
            quantity: 0,
            tagSpecifications: nil)

        return defaultInstance
    }()
}

public extension AllocateHostsResult {
    /**
     Default instance of the AllocateHostsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.AllocateHostsResult = {
        let defaultInstance = ElasticComputeCloudModel.AllocateHostsResult(
            hostIds: nil)

        return defaultInstance
    }()
}

public extension AllowedPrincipal {
    /**
     Default instance of the AllowedPrincipal structure.
     */
    public static let __default: ElasticComputeCloudModel.AllowedPrincipal = {
        let defaultInstance = ElasticComputeCloudModel.AllowedPrincipal(
            principal: nil,
            principalType: nil)

        return defaultInstance
    }()
}

public extension ApplySecurityGroupsToClientVpnTargetNetworkRequest {
    /**
     Default instance of the ApplySecurityGroupsToClientVpnTargetNetworkRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkRequest = {
        let defaultInstance = ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkRequest(
            clientVpnEndpointId: "value",
            dryRun: nil,
            securityGroupIds: [],
            vpcId: "value")

        return defaultInstance
    }()
}

public extension ApplySecurityGroupsToClientVpnTargetNetworkResult {
    /**
     Default instance of the ApplySecurityGroupsToClientVpnTargetNetworkResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkResult = {
        let defaultInstance = ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkResult(
            securityGroupIds: nil)

        return defaultInstance
    }()
}

public extension AssignIpv6AddressesRequest {
    /**
     Default instance of the AssignIpv6AddressesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.AssignIpv6AddressesRequest = {
        let defaultInstance = ElasticComputeCloudModel.AssignIpv6AddressesRequest(
            ipv6AddressCount: nil,
            ipv6Addresses: nil,
            networkInterfaceId: "value")

        return defaultInstance
    }()
}

public extension AssignIpv6AddressesResult {
    /**
     Default instance of the AssignIpv6AddressesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.AssignIpv6AddressesResult = {
        let defaultInstance = ElasticComputeCloudModel.AssignIpv6AddressesResult(
            assignedIpv6Addresses: nil,
            networkInterfaceId: nil)

        return defaultInstance
    }()
}

public extension AssignPrivateIpAddressesRequest {
    /**
     Default instance of the AssignPrivateIpAddressesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.AssignPrivateIpAddressesRequest = {
        let defaultInstance = ElasticComputeCloudModel.AssignPrivateIpAddressesRequest(
            allowReassignment: nil,
            networkInterfaceId: "value",
            privateIpAddresses: nil,
            secondaryPrivateIpAddressCount: nil)

        return defaultInstance
    }()
}

public extension AssociateAddressRequest {
    /**
     Default instance of the AssociateAddressRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.AssociateAddressRequest = {
        let defaultInstance = ElasticComputeCloudModel.AssociateAddressRequest(
            allocationId: nil,
            allowReassociation: nil,
            dryRun: nil,
            instanceId: nil,
            networkInterfaceId: nil,
            privateIpAddress: nil,
            publicIp: nil)

        return defaultInstance
    }()
}

public extension AssociateAddressResult {
    /**
     Default instance of the AssociateAddressResult structure.
     */
    public static let __default: ElasticComputeCloudModel.AssociateAddressResult = {
        let defaultInstance = ElasticComputeCloudModel.AssociateAddressResult(
            associationId: nil)

        return defaultInstance
    }()
}

public extension AssociateClientVpnTargetNetworkRequest {
    /**
     Default instance of the AssociateClientVpnTargetNetworkRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.AssociateClientVpnTargetNetworkRequest = {
        let defaultInstance = ElasticComputeCloudModel.AssociateClientVpnTargetNetworkRequest(
            clientVpnEndpointId: "value",
            dryRun: nil,
            subnetId: "value")

        return defaultInstance
    }()
}

public extension AssociateClientVpnTargetNetworkResult {
    /**
     Default instance of the AssociateClientVpnTargetNetworkResult structure.
     */
    public static let __default: ElasticComputeCloudModel.AssociateClientVpnTargetNetworkResult = {
        let defaultInstance = ElasticComputeCloudModel.AssociateClientVpnTargetNetworkResult(
            associationId: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension AssociateDhcpOptionsRequest {
    /**
     Default instance of the AssociateDhcpOptionsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.AssociateDhcpOptionsRequest = {
        let defaultInstance = ElasticComputeCloudModel.AssociateDhcpOptionsRequest(
            dhcpOptionsId: "value",
            dryRun: nil,
            vpcId: "value")

        return defaultInstance
    }()
}

public extension AssociateIamInstanceProfileRequest {
    /**
     Default instance of the AssociateIamInstanceProfileRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.AssociateIamInstanceProfileRequest = {
        let defaultInstance = ElasticComputeCloudModel.AssociateIamInstanceProfileRequest(
            iamInstanceProfile: IamInstanceProfileSpecification.__default,
            instanceId: "value")

        return defaultInstance
    }()
}

public extension AssociateIamInstanceProfileResult {
    /**
     Default instance of the AssociateIamInstanceProfileResult structure.
     */
    public static let __default: ElasticComputeCloudModel.AssociateIamInstanceProfileResult = {
        let defaultInstance = ElasticComputeCloudModel.AssociateIamInstanceProfileResult(
            iamInstanceProfileAssociation: nil)

        return defaultInstance
    }()
}

public extension AssociateRouteTableRequest {
    /**
     Default instance of the AssociateRouteTableRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.AssociateRouteTableRequest = {
        let defaultInstance = ElasticComputeCloudModel.AssociateRouteTableRequest(
            dryRun: nil,
            routeTableId: "value",
            subnetId: "value")

        return defaultInstance
    }()
}

public extension AssociateRouteTableResult {
    /**
     Default instance of the AssociateRouteTableResult structure.
     */
    public static let __default: ElasticComputeCloudModel.AssociateRouteTableResult = {
        let defaultInstance = ElasticComputeCloudModel.AssociateRouteTableResult(
            associationId: nil)

        return defaultInstance
    }()
}

public extension AssociateSubnetCidrBlockRequest {
    /**
     Default instance of the AssociateSubnetCidrBlockRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.AssociateSubnetCidrBlockRequest = {
        let defaultInstance = ElasticComputeCloudModel.AssociateSubnetCidrBlockRequest(
            ipv6CidrBlock: "value",
            subnetId: "value")

        return defaultInstance
    }()
}

public extension AssociateSubnetCidrBlockResult {
    /**
     Default instance of the AssociateSubnetCidrBlockResult structure.
     */
    public static let __default: ElasticComputeCloudModel.AssociateSubnetCidrBlockResult = {
        let defaultInstance = ElasticComputeCloudModel.AssociateSubnetCidrBlockResult(
            ipv6CidrBlockAssociation: nil,
            subnetId: nil)

        return defaultInstance
    }()
}

public extension AssociateTransitGatewayRouteTableRequest {
    /**
     Default instance of the AssociateTransitGatewayRouteTableRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.AssociateTransitGatewayRouteTableRequest = {
        let defaultInstance = ElasticComputeCloudModel.AssociateTransitGatewayRouteTableRequest(
            dryRun: nil,
            transitGatewayAttachmentId: "value",
            transitGatewayRouteTableId: "value")

        return defaultInstance
    }()
}

public extension AssociateTransitGatewayRouteTableResult {
    /**
     Default instance of the AssociateTransitGatewayRouteTableResult structure.
     */
    public static let __default: ElasticComputeCloudModel.AssociateTransitGatewayRouteTableResult = {
        let defaultInstance = ElasticComputeCloudModel.AssociateTransitGatewayRouteTableResult(
            association: nil)

        return defaultInstance
    }()
}

public extension AssociateVpcCidrBlockRequest {
    /**
     Default instance of the AssociateVpcCidrBlockRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.AssociateVpcCidrBlockRequest = {
        let defaultInstance = ElasticComputeCloudModel.AssociateVpcCidrBlockRequest(
            amazonProvidedIpv6CidrBlock: nil,
            cidrBlock: nil,
            vpcId: "value")

        return defaultInstance
    }()
}

public extension AssociateVpcCidrBlockResult {
    /**
     Default instance of the AssociateVpcCidrBlockResult structure.
     */
    public static let __default: ElasticComputeCloudModel.AssociateVpcCidrBlockResult = {
        let defaultInstance = ElasticComputeCloudModel.AssociateVpcCidrBlockResult(
            cidrBlockAssociation: nil,
            ipv6CidrBlockAssociation: nil,
            vpcId: nil)

        return defaultInstance
    }()
}

public extension AssociatedTargetNetwork {
    /**
     Default instance of the AssociatedTargetNetwork structure.
     */
    public static let __default: ElasticComputeCloudModel.AssociatedTargetNetwork = {
        let defaultInstance = ElasticComputeCloudModel.AssociatedTargetNetwork(
            networkId: nil,
            networkType: nil)

        return defaultInstance
    }()
}

public extension AssociationStatus {
    /**
     Default instance of the AssociationStatus structure.
     */
    public static let __default: ElasticComputeCloudModel.AssociationStatus = {
        let defaultInstance = ElasticComputeCloudModel.AssociationStatus(
            code: nil,
            message: nil)

        return defaultInstance
    }()
}

public extension AttachClassicLinkVpcRequest {
    /**
     Default instance of the AttachClassicLinkVpcRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.AttachClassicLinkVpcRequest = {
        let defaultInstance = ElasticComputeCloudModel.AttachClassicLinkVpcRequest(
            dryRun: nil,
            groups: [],
            instanceId: "value",
            vpcId: "value")

        return defaultInstance
    }()
}

public extension AttachClassicLinkVpcResult {
    /**
     Default instance of the AttachClassicLinkVpcResult structure.
     */
    public static let __default: ElasticComputeCloudModel.AttachClassicLinkVpcResult = {
        let defaultInstance = ElasticComputeCloudModel.AttachClassicLinkVpcResult(
            return: nil)

        return defaultInstance
    }()
}

public extension AttachInternetGatewayRequest {
    /**
     Default instance of the AttachInternetGatewayRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.AttachInternetGatewayRequest = {
        let defaultInstance = ElasticComputeCloudModel.AttachInternetGatewayRequest(
            dryRun: nil,
            internetGatewayId: "value",
            vpcId: "value")

        return defaultInstance
    }()
}

public extension AttachNetworkInterfaceRequest {
    /**
     Default instance of the AttachNetworkInterfaceRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.AttachNetworkInterfaceRequest = {
        let defaultInstance = ElasticComputeCloudModel.AttachNetworkInterfaceRequest(
            deviceIndex: 0,
            dryRun: nil,
            instanceId: "value",
            networkInterfaceId: "value")

        return defaultInstance
    }()
}

public extension AttachNetworkInterfaceResult {
    /**
     Default instance of the AttachNetworkInterfaceResult structure.
     */
    public static let __default: ElasticComputeCloudModel.AttachNetworkInterfaceResult = {
        let defaultInstance = ElasticComputeCloudModel.AttachNetworkInterfaceResult(
            attachmentId: nil)

        return defaultInstance
    }()
}

public extension AttachVolumeRequest {
    /**
     Default instance of the AttachVolumeRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.AttachVolumeRequest = {
        let defaultInstance = ElasticComputeCloudModel.AttachVolumeRequest(
            device: "value",
            dryRun: nil,
            instanceId: "value",
            volumeId: "value")

        return defaultInstance
    }()
}

public extension AttachVpnGatewayRequest {
    /**
     Default instance of the AttachVpnGatewayRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.AttachVpnGatewayRequest = {
        let defaultInstance = ElasticComputeCloudModel.AttachVpnGatewayRequest(
            dryRun: nil,
            vpcId: "value",
            vpnGatewayId: "value")

        return defaultInstance
    }()
}

public extension AttachVpnGatewayResult {
    /**
     Default instance of the AttachVpnGatewayResult structure.
     */
    public static let __default: ElasticComputeCloudModel.AttachVpnGatewayResult = {
        let defaultInstance = ElasticComputeCloudModel.AttachVpnGatewayResult(
            vpcAttachment: nil)

        return defaultInstance
    }()
}

public extension AttributeBooleanValue {
    /**
     Default instance of the AttributeBooleanValue structure.
     */
    public static let __default: ElasticComputeCloudModel.AttributeBooleanValue = {
        let defaultInstance = ElasticComputeCloudModel.AttributeBooleanValue(
            value: nil)

        return defaultInstance
    }()
}

public extension AttributeValue {
    /**
     Default instance of the AttributeValue structure.
     */
    public static let __default: ElasticComputeCloudModel.AttributeValue = {
        let defaultInstance = ElasticComputeCloudModel.AttributeValue(
            value: nil)

        return defaultInstance
    }()
}

public extension AuthorizationRule {
    /**
     Default instance of the AuthorizationRule structure.
     */
    public static let __default: ElasticComputeCloudModel.AuthorizationRule = {
        let defaultInstance = ElasticComputeCloudModel.AuthorizationRule(
            accessAll: nil,
            clientVpnEndpointId: nil,
            description: nil,
            destinationCidr: nil,
            groupId: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension AuthorizeClientVpnIngressRequest {
    /**
     Default instance of the AuthorizeClientVpnIngressRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.AuthorizeClientVpnIngressRequest = {
        let defaultInstance = ElasticComputeCloudModel.AuthorizeClientVpnIngressRequest(
            accessGroupId: nil,
            authorizeAllGroups: nil,
            clientVpnEndpointId: "value",
            description: nil,
            dryRun: nil,
            targetNetworkCidr: "value")

        return defaultInstance
    }()
}

public extension AuthorizeClientVpnIngressResult {
    /**
     Default instance of the AuthorizeClientVpnIngressResult structure.
     */
    public static let __default: ElasticComputeCloudModel.AuthorizeClientVpnIngressResult = {
        let defaultInstance = ElasticComputeCloudModel.AuthorizeClientVpnIngressResult(
            status: nil)

        return defaultInstance
    }()
}

public extension AuthorizeSecurityGroupEgressRequest {
    /**
     Default instance of the AuthorizeSecurityGroupEgressRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.AuthorizeSecurityGroupEgressRequest = {
        let defaultInstance = ElasticComputeCloudModel.AuthorizeSecurityGroupEgressRequest(
            cidrIp: nil,
            dryRun: nil,
            fromPort: nil,
            groupId: "value",
            ipPermissions: nil,
            ipProtocol: nil,
            sourceSecurityGroupName: nil,
            sourceSecurityGroupOwnerId: nil,
            toPort: nil)

        return defaultInstance
    }()
}

public extension AuthorizeSecurityGroupIngressRequest {
    /**
     Default instance of the AuthorizeSecurityGroupIngressRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.AuthorizeSecurityGroupIngressRequest = {
        let defaultInstance = ElasticComputeCloudModel.AuthorizeSecurityGroupIngressRequest(
            cidrIp: nil,
            dryRun: nil,
            fromPort: nil,
            groupId: nil,
            groupName: nil,
            ipPermissions: nil,
            ipProtocol: nil,
            sourceSecurityGroupName: nil,
            sourceSecurityGroupOwnerId: nil,
            toPort: nil)

        return defaultInstance
    }()
}

public extension AvailabilityZone {
    /**
     Default instance of the AvailabilityZone structure.
     */
    public static let __default: ElasticComputeCloudModel.AvailabilityZone = {
        let defaultInstance = ElasticComputeCloudModel.AvailabilityZone(
            messages: nil,
            regionName: nil,
            state: nil,
            zoneId: nil,
            zoneName: nil)

        return defaultInstance
    }()
}

public extension AvailabilityZoneMessage {
    /**
     Default instance of the AvailabilityZoneMessage structure.
     */
    public static let __default: ElasticComputeCloudModel.AvailabilityZoneMessage = {
        let defaultInstance = ElasticComputeCloudModel.AvailabilityZoneMessage(
            message: nil)

        return defaultInstance
    }()
}

public extension AvailableCapacity {
    /**
     Default instance of the AvailableCapacity structure.
     */
    public static let __default: ElasticComputeCloudModel.AvailableCapacity = {
        let defaultInstance = ElasticComputeCloudModel.AvailableCapacity(
            availableInstanceCapacity: nil,
            availableVCpus: nil)

        return defaultInstance
    }()
}

public extension BlobAttributeValue {
    /**
     Default instance of the BlobAttributeValue structure.
     */
    public static let __default: ElasticComputeCloudModel.BlobAttributeValue = {
        let defaultInstance = ElasticComputeCloudModel.BlobAttributeValue(
            value: nil)

        return defaultInstance
    }()
}

public extension BlockDeviceMapping {
    /**
     Default instance of the BlockDeviceMapping structure.
     */
    public static let __default: ElasticComputeCloudModel.BlockDeviceMapping = {
        let defaultInstance = ElasticComputeCloudModel.BlockDeviceMapping(
            deviceName: nil,
            ebs: nil,
            noDevice: nil,
            virtualName: nil)

        return defaultInstance
    }()
}

public extension BundleInstanceRequest {
    /**
     Default instance of the BundleInstanceRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.BundleInstanceRequest = {
        let defaultInstance = ElasticComputeCloudModel.BundleInstanceRequest(
            dryRun: nil,
            instanceId: "value",
            storage: Storage.__default)

        return defaultInstance
    }()
}

public extension BundleInstanceResult {
    /**
     Default instance of the BundleInstanceResult structure.
     */
    public static let __default: ElasticComputeCloudModel.BundleInstanceResult = {
        let defaultInstance = ElasticComputeCloudModel.BundleInstanceResult(
            bundleTask: nil)

        return defaultInstance
    }()
}

public extension BundleTask {
    /**
     Default instance of the BundleTask structure.
     */
    public static let __default: ElasticComputeCloudModel.BundleTask = {
        let defaultInstance = ElasticComputeCloudModel.BundleTask(
            bundleId: nil,
            bundleTaskError: nil,
            instanceId: nil,
            progress: nil,
            startTime: nil,
            state: nil,
            storage: nil,
            updateTime: nil)

        return defaultInstance
    }()
}

public extension BundleTaskError {
    /**
     Default instance of the BundleTaskError structure.
     */
    public static let __default: ElasticComputeCloudModel.BundleTaskError = {
        let defaultInstance = ElasticComputeCloudModel.BundleTaskError(
            code: nil,
            message: nil)

        return defaultInstance
    }()
}

public extension ByoipCidr {
    /**
     Default instance of the ByoipCidr structure.
     */
    public static let __default: ElasticComputeCloudModel.ByoipCidr = {
        let defaultInstance = ElasticComputeCloudModel.ByoipCidr(
            cidr: nil,
            description: nil,
            state: nil,
            statusMessage: nil)

        return defaultInstance
    }()
}

public extension CancelBundleTaskRequest {
    /**
     Default instance of the CancelBundleTaskRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CancelBundleTaskRequest = {
        let defaultInstance = ElasticComputeCloudModel.CancelBundleTaskRequest(
            bundleId: "value",
            dryRun: nil)

        return defaultInstance
    }()
}

public extension CancelBundleTaskResult {
    /**
     Default instance of the CancelBundleTaskResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CancelBundleTaskResult = {
        let defaultInstance = ElasticComputeCloudModel.CancelBundleTaskResult(
            bundleTask: nil)

        return defaultInstance
    }()
}

public extension CancelCapacityReservationRequest {
    /**
     Default instance of the CancelCapacityReservationRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CancelCapacityReservationRequest = {
        let defaultInstance = ElasticComputeCloudModel.CancelCapacityReservationRequest(
            capacityReservationId: "value",
            dryRun: nil)

        return defaultInstance
    }()
}

public extension CancelCapacityReservationResult {
    /**
     Default instance of the CancelCapacityReservationResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CancelCapacityReservationResult = {
        let defaultInstance = ElasticComputeCloudModel.CancelCapacityReservationResult(
            return: nil)

        return defaultInstance
    }()
}

public extension CancelConversionRequest {
    /**
     Default instance of the CancelConversionRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CancelConversionRequest = {
        let defaultInstance = ElasticComputeCloudModel.CancelConversionRequest(
            conversionTaskId: "value",
            dryRun: nil,
            reasonMessage: nil)

        return defaultInstance
    }()
}

public extension CancelExportTaskRequest {
    /**
     Default instance of the CancelExportTaskRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CancelExportTaskRequest = {
        let defaultInstance = ElasticComputeCloudModel.CancelExportTaskRequest(
            exportTaskId: "value")

        return defaultInstance
    }()
}

public extension CancelImportTaskRequest {
    /**
     Default instance of the CancelImportTaskRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CancelImportTaskRequest = {
        let defaultInstance = ElasticComputeCloudModel.CancelImportTaskRequest(
            cancelReason: nil,
            dryRun: nil,
            importTaskId: nil)

        return defaultInstance
    }()
}

public extension CancelImportTaskResult {
    /**
     Default instance of the CancelImportTaskResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CancelImportTaskResult = {
        let defaultInstance = ElasticComputeCloudModel.CancelImportTaskResult(
            importTaskId: nil,
            previousState: nil,
            state: nil)

        return defaultInstance
    }()
}

public extension CancelReservedInstancesListingRequest {
    /**
     Default instance of the CancelReservedInstancesListingRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CancelReservedInstancesListingRequest = {
        let defaultInstance = ElasticComputeCloudModel.CancelReservedInstancesListingRequest(
            reservedInstancesListingId: "value")

        return defaultInstance
    }()
}

public extension CancelReservedInstancesListingResult {
    /**
     Default instance of the CancelReservedInstancesListingResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CancelReservedInstancesListingResult = {
        let defaultInstance = ElasticComputeCloudModel.CancelReservedInstancesListingResult(
            reservedInstancesListings: nil)

        return defaultInstance
    }()
}

public extension CancelSpotFleetRequestsError {
    /**
     Default instance of the CancelSpotFleetRequestsError structure.
     */
    public static let __default: ElasticComputeCloudModel.CancelSpotFleetRequestsError = {
        let defaultInstance = ElasticComputeCloudModel.CancelSpotFleetRequestsError(
            code: nil,
            message: nil)

        return defaultInstance
    }()
}

public extension CancelSpotFleetRequestsErrorItem {
    /**
     Default instance of the CancelSpotFleetRequestsErrorItem structure.
     */
    public static let __default: ElasticComputeCloudModel.CancelSpotFleetRequestsErrorItem = {
        let defaultInstance = ElasticComputeCloudModel.CancelSpotFleetRequestsErrorItem(
            error: nil,
            spotFleetRequestId: nil)

        return defaultInstance
    }()
}

public extension CancelSpotFleetRequestsRequest {
    /**
     Default instance of the CancelSpotFleetRequestsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CancelSpotFleetRequestsRequest = {
        let defaultInstance = ElasticComputeCloudModel.CancelSpotFleetRequestsRequest(
            dryRun: nil,
            spotFleetRequestIds: [],
            terminateInstances: false)

        return defaultInstance
    }()
}

public extension CancelSpotFleetRequestsResponse {
    /**
     Default instance of the CancelSpotFleetRequestsResponse structure.
     */
    public static let __default: ElasticComputeCloudModel.CancelSpotFleetRequestsResponse = {
        let defaultInstance = ElasticComputeCloudModel.CancelSpotFleetRequestsResponse(
            successfulFleetRequests: nil,
            unsuccessfulFleetRequests: nil)

        return defaultInstance
    }()
}

public extension CancelSpotFleetRequestsSuccessItem {
    /**
     Default instance of the CancelSpotFleetRequestsSuccessItem structure.
     */
    public static let __default: ElasticComputeCloudModel.CancelSpotFleetRequestsSuccessItem = {
        let defaultInstance = ElasticComputeCloudModel.CancelSpotFleetRequestsSuccessItem(
            currentSpotFleetRequestState: nil,
            previousSpotFleetRequestState: nil,
            spotFleetRequestId: nil)

        return defaultInstance
    }()
}

public extension CancelSpotInstanceRequestsRequest {
    /**
     Default instance of the CancelSpotInstanceRequestsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CancelSpotInstanceRequestsRequest = {
        let defaultInstance = ElasticComputeCloudModel.CancelSpotInstanceRequestsRequest(
            dryRun: nil,
            spotInstanceRequestIds: [])

        return defaultInstance
    }()
}

public extension CancelSpotInstanceRequestsResult {
    /**
     Default instance of the CancelSpotInstanceRequestsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CancelSpotInstanceRequestsResult = {
        let defaultInstance = ElasticComputeCloudModel.CancelSpotInstanceRequestsResult(
            cancelledSpotInstanceRequests: nil)

        return defaultInstance
    }()
}

public extension CancelledSpotInstanceRequest {
    /**
     Default instance of the CancelledSpotInstanceRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CancelledSpotInstanceRequest = {
        let defaultInstance = ElasticComputeCloudModel.CancelledSpotInstanceRequest(
            spotInstanceRequestId: nil,
            state: nil)

        return defaultInstance
    }()
}

public extension CapacityReservation {
    /**
     Default instance of the CapacityReservation structure.
     */
    public static let __default: ElasticComputeCloudModel.CapacityReservation = {
        let defaultInstance = ElasticComputeCloudModel.CapacityReservation(
            availabilityZone: nil,
            availableInstanceCount: nil,
            capacityReservationId: nil,
            createDate: nil,
            ebsOptimized: nil,
            endDate: nil,
            endDateType: nil,
            ephemeralStorage: nil,
            instanceMatchCriteria: nil,
            instancePlatform: nil,
            instanceType: nil,
            state: nil,
            tags: nil,
            tenancy: nil,
            totalInstanceCount: nil)

        return defaultInstance
    }()
}

public extension CapacityReservationSpecification {
    /**
     Default instance of the CapacityReservationSpecification structure.
     */
    public static let __default: ElasticComputeCloudModel.CapacityReservationSpecification = {
        let defaultInstance = ElasticComputeCloudModel.CapacityReservationSpecification(
            capacityReservationPreference: nil,
            capacityReservationTarget: nil)

        return defaultInstance
    }()
}

public extension CapacityReservationSpecificationResponse {
    /**
     Default instance of the CapacityReservationSpecificationResponse structure.
     */
    public static let __default: ElasticComputeCloudModel.CapacityReservationSpecificationResponse = {
        let defaultInstance = ElasticComputeCloudModel.CapacityReservationSpecificationResponse(
            capacityReservationPreference: nil,
            capacityReservationTarget: nil)

        return defaultInstance
    }()
}

public extension CapacityReservationTarget {
    /**
     Default instance of the CapacityReservationTarget structure.
     */
    public static let __default: ElasticComputeCloudModel.CapacityReservationTarget = {
        let defaultInstance = ElasticComputeCloudModel.CapacityReservationTarget(
            capacityReservationId: nil)

        return defaultInstance
    }()
}

public extension CapacityReservationTargetResponse {
    /**
     Default instance of the CapacityReservationTargetResponse structure.
     */
    public static let __default: ElasticComputeCloudModel.CapacityReservationTargetResponse = {
        let defaultInstance = ElasticComputeCloudModel.CapacityReservationTargetResponse(
            capacityReservationId: nil)

        return defaultInstance
    }()
}

public extension CertificateAuthentication {
    /**
     Default instance of the CertificateAuthentication structure.
     */
    public static let __default: ElasticComputeCloudModel.CertificateAuthentication = {
        let defaultInstance = ElasticComputeCloudModel.CertificateAuthentication(
            clientRootCertificateChain: nil)

        return defaultInstance
    }()
}

public extension CertificateAuthenticationRequest {
    /**
     Default instance of the CertificateAuthenticationRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CertificateAuthenticationRequest = {
        let defaultInstance = ElasticComputeCloudModel.CertificateAuthenticationRequest(
            clientRootCertificateChainArn: nil)

        return defaultInstance
    }()
}

public extension CidrAuthorizationContext {
    /**
     Default instance of the CidrAuthorizationContext structure.
     */
    public static let __default: ElasticComputeCloudModel.CidrAuthorizationContext = {
        let defaultInstance = ElasticComputeCloudModel.CidrAuthorizationContext(
            message: "value",
            signature: "value")

        return defaultInstance
    }()
}

public extension CidrBlock {
    /**
     Default instance of the CidrBlock structure.
     */
    public static let __default: ElasticComputeCloudModel.CidrBlock = {
        let defaultInstance = ElasticComputeCloudModel.CidrBlock(
            cidrBlock: nil)

        return defaultInstance
    }()
}

public extension ClassicLinkDnsSupport {
    /**
     Default instance of the ClassicLinkDnsSupport structure.
     */
    public static let __default: ElasticComputeCloudModel.ClassicLinkDnsSupport = {
        let defaultInstance = ElasticComputeCloudModel.ClassicLinkDnsSupport(
            classicLinkDnsSupported: nil,
            vpcId: nil)

        return defaultInstance
    }()
}

public extension ClassicLinkInstance {
    /**
     Default instance of the ClassicLinkInstance structure.
     */
    public static let __default: ElasticComputeCloudModel.ClassicLinkInstance = {
        let defaultInstance = ElasticComputeCloudModel.ClassicLinkInstance(
            groups: nil,
            instanceId: nil,
            tags: nil,
            vpcId: nil)

        return defaultInstance
    }()
}

public extension ClassicLoadBalancer {
    /**
     Default instance of the ClassicLoadBalancer structure.
     */
    public static let __default: ElasticComputeCloudModel.ClassicLoadBalancer = {
        let defaultInstance = ElasticComputeCloudModel.ClassicLoadBalancer(
            name: nil)

        return defaultInstance
    }()
}

public extension ClassicLoadBalancersConfig {
    /**
     Default instance of the ClassicLoadBalancersConfig structure.
     */
    public static let __default: ElasticComputeCloudModel.ClassicLoadBalancersConfig = {
        let defaultInstance = ElasticComputeCloudModel.ClassicLoadBalancersConfig(
            classicLoadBalancers: nil)

        return defaultInstance
    }()
}

public extension ClientCertificateRevocationListStatus {
    /**
     Default instance of the ClientCertificateRevocationListStatus structure.
     */
    public static let __default: ElasticComputeCloudModel.ClientCertificateRevocationListStatus = {
        let defaultInstance = ElasticComputeCloudModel.ClientCertificateRevocationListStatus(
            code: nil,
            message: nil)

        return defaultInstance
    }()
}

public extension ClientData {
    /**
     Default instance of the ClientData structure.
     */
    public static let __default: ElasticComputeCloudModel.ClientData = {
        let defaultInstance = ElasticComputeCloudModel.ClientData(
            comment: nil,
            uploadEnd: nil,
            uploadSize: nil,
            uploadStart: nil)

        return defaultInstance
    }()
}

public extension ClientVpnAuthentication {
    /**
     Default instance of the ClientVpnAuthentication structure.
     */
    public static let __default: ElasticComputeCloudModel.ClientVpnAuthentication = {
        let defaultInstance = ElasticComputeCloudModel.ClientVpnAuthentication(
            activeDirectory: nil,
            mutualAuthentication: nil,
            type: nil)

        return defaultInstance
    }()
}

public extension ClientVpnAuthenticationRequest {
    /**
     Default instance of the ClientVpnAuthenticationRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ClientVpnAuthenticationRequest = {
        let defaultInstance = ElasticComputeCloudModel.ClientVpnAuthenticationRequest(
            activeDirectory: nil,
            mutualAuthentication: nil,
            type: nil)

        return defaultInstance
    }()
}

public extension ClientVpnAuthorizationRuleStatus {
    /**
     Default instance of the ClientVpnAuthorizationRuleStatus structure.
     */
    public static let __default: ElasticComputeCloudModel.ClientVpnAuthorizationRuleStatus = {
        let defaultInstance = ElasticComputeCloudModel.ClientVpnAuthorizationRuleStatus(
            code: nil,
            message: nil)

        return defaultInstance
    }()
}

public extension ClientVpnConnection {
    /**
     Default instance of the ClientVpnConnection structure.
     */
    public static let __default: ElasticComputeCloudModel.ClientVpnConnection = {
        let defaultInstance = ElasticComputeCloudModel.ClientVpnConnection(
            clientIp: nil,
            clientVpnEndpointId: nil,
            commonName: nil,
            connectionEndTime: nil,
            connectionEstablishedTime: nil,
            connectionId: nil,
            egressBytes: nil,
            egressPackets: nil,
            ingressBytes: nil,
            ingressPackets: nil,
            status: nil,
            timestamp: nil,
            username: nil)

        return defaultInstance
    }()
}

public extension ClientVpnConnectionStatus {
    /**
     Default instance of the ClientVpnConnectionStatus structure.
     */
    public static let __default: ElasticComputeCloudModel.ClientVpnConnectionStatus = {
        let defaultInstance = ElasticComputeCloudModel.ClientVpnConnectionStatus(
            code: nil,
            message: nil)

        return defaultInstance
    }()
}

public extension ClientVpnEndpoint {
    /**
     Default instance of the ClientVpnEndpoint structure.
     */
    public static let __default: ElasticComputeCloudModel.ClientVpnEndpoint = {
        let defaultInstance = ElasticComputeCloudModel.ClientVpnEndpoint(
            authenticationOptions: nil,
            clientCidrBlock: nil,
            clientVpnEndpointId: nil,
            connectionLogOptions: nil,
            creationTime: nil,
            deletionTime: nil,
            description: nil,
            dnsName: nil,
            dnsServers: nil,
            serverCertificateArn: nil,
            splitTunnel: nil,
            status: nil,
            tags: nil,
            transportProtocol: nil,
            vpnProtocol: nil)

        return defaultInstance
    }()
}

public extension ClientVpnEndpointStatus {
    /**
     Default instance of the ClientVpnEndpointStatus structure.
     */
    public static let __default: ElasticComputeCloudModel.ClientVpnEndpointStatus = {
        let defaultInstance = ElasticComputeCloudModel.ClientVpnEndpointStatus(
            code: nil,
            message: nil)

        return defaultInstance
    }()
}

public extension ClientVpnRoute {
    /**
     Default instance of the ClientVpnRoute structure.
     */
    public static let __default: ElasticComputeCloudModel.ClientVpnRoute = {
        let defaultInstance = ElasticComputeCloudModel.ClientVpnRoute(
            clientVpnEndpointId: nil,
            description: nil,
            destinationCidr: nil,
            origin: nil,
            status: nil,
            targetSubnet: nil,
            type: nil)

        return defaultInstance
    }()
}

public extension ClientVpnRouteStatus {
    /**
     Default instance of the ClientVpnRouteStatus structure.
     */
    public static let __default: ElasticComputeCloudModel.ClientVpnRouteStatus = {
        let defaultInstance = ElasticComputeCloudModel.ClientVpnRouteStatus(
            code: nil,
            message: nil)

        return defaultInstance
    }()
}

public extension ConfirmProductInstanceRequest {
    /**
     Default instance of the ConfirmProductInstanceRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ConfirmProductInstanceRequest = {
        let defaultInstance = ElasticComputeCloudModel.ConfirmProductInstanceRequest(
            dryRun: nil,
            instanceId: "value",
            productCode: "value")

        return defaultInstance
    }()
}

public extension ConfirmProductInstanceResult {
    /**
     Default instance of the ConfirmProductInstanceResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ConfirmProductInstanceResult = {
        let defaultInstance = ElasticComputeCloudModel.ConfirmProductInstanceResult(
            ownerId: nil,
            return: nil)

        return defaultInstance
    }()
}

public extension ConnectionLogOptions {
    /**
     Default instance of the ConnectionLogOptions structure.
     */
    public static let __default: ElasticComputeCloudModel.ConnectionLogOptions = {
        let defaultInstance = ElasticComputeCloudModel.ConnectionLogOptions(
            cloudwatchLogGroup: nil,
            cloudwatchLogStream: nil,
            enabled: nil)

        return defaultInstance
    }()
}

public extension ConnectionLogResponseOptions {
    /**
     Default instance of the ConnectionLogResponseOptions structure.
     */
    public static let __default: ElasticComputeCloudModel.ConnectionLogResponseOptions = {
        let defaultInstance = ElasticComputeCloudModel.ConnectionLogResponseOptions(
            cloudwatchLogGroup: nil,
            cloudwatchLogStream: nil,
            enabled: nil)

        return defaultInstance
    }()
}

public extension ConnectionNotification {
    /**
     Default instance of the ConnectionNotification structure.
     */
    public static let __default: ElasticComputeCloudModel.ConnectionNotification = {
        let defaultInstance = ElasticComputeCloudModel.ConnectionNotification(
            connectionEvents: nil,
            connectionNotificationArn: nil,
            connectionNotificationId: nil,
            connectionNotificationState: nil,
            connectionNotificationType: nil,
            serviceId: nil,
            vpcEndpointId: nil)

        return defaultInstance
    }()
}

public extension ConversionTask {
    /**
     Default instance of the ConversionTask structure.
     */
    public static let __default: ElasticComputeCloudModel.ConversionTask = {
        let defaultInstance = ElasticComputeCloudModel.ConversionTask(
            conversionTaskId: nil,
            expirationTime: nil,
            importInstance: nil,
            importVolume: nil,
            state: nil,
            statusMessage: nil,
            tags: nil)

        return defaultInstance
    }()
}

public extension CopyFpgaImageRequest {
    /**
     Default instance of the CopyFpgaImageRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CopyFpgaImageRequest = {
        let defaultInstance = ElasticComputeCloudModel.CopyFpgaImageRequest(
            clientToken: nil,
            description: nil,
            dryRun: nil,
            name: nil,
            sourceFpgaImageId: "value",
            sourceRegion: "value")

        return defaultInstance
    }()
}

public extension CopyFpgaImageResult {
    /**
     Default instance of the CopyFpgaImageResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CopyFpgaImageResult = {
        let defaultInstance = ElasticComputeCloudModel.CopyFpgaImageResult(
            fpgaImageId: nil)

        return defaultInstance
    }()
}

public extension CopyImageRequest {
    /**
     Default instance of the CopyImageRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CopyImageRequest = {
        let defaultInstance = ElasticComputeCloudModel.CopyImageRequest(
            clientToken: nil,
            description: nil,
            dryRun: nil,
            encrypted: nil,
            kmsKeyId: nil,
            name: "value",
            sourceImageId: "value",
            sourceRegion: "value")

        return defaultInstance
    }()
}

public extension CopyImageResult {
    /**
     Default instance of the CopyImageResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CopyImageResult = {
        let defaultInstance = ElasticComputeCloudModel.CopyImageResult(
            imageId: nil)

        return defaultInstance
    }()
}

public extension CopySnapshotRequest {
    /**
     Default instance of the CopySnapshotRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CopySnapshotRequest = {
        let defaultInstance = ElasticComputeCloudModel.CopySnapshotRequest(
            description: nil,
            destinationRegion: nil,
            dryRun: nil,
            encrypted: nil,
            kmsKeyId: nil,
            presignedUrl: nil,
            sourceRegion: "value",
            sourceSnapshotId: "value")

        return defaultInstance
    }()
}

public extension CopySnapshotResult {
    /**
     Default instance of the CopySnapshotResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CopySnapshotResult = {
        let defaultInstance = ElasticComputeCloudModel.CopySnapshotResult(
            snapshotId: nil)

        return defaultInstance
    }()
}

public extension CpuOptions {
    /**
     Default instance of the CpuOptions structure.
     */
    public static let __default: ElasticComputeCloudModel.CpuOptions = {
        let defaultInstance = ElasticComputeCloudModel.CpuOptions(
            coreCount: nil,
            threadsPerCore: nil)

        return defaultInstance
    }()
}

public extension CpuOptionsRequest {
    /**
     Default instance of the CpuOptionsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CpuOptionsRequest = {
        let defaultInstance = ElasticComputeCloudModel.CpuOptionsRequest(
            coreCount: nil,
            threadsPerCore: nil)

        return defaultInstance
    }()
}

public extension CreateCapacityReservationRequest {
    /**
     Default instance of the CreateCapacityReservationRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateCapacityReservationRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateCapacityReservationRequest(
            availabilityZone: "value",
            clientToken: nil,
            dryRun: nil,
            ebsOptimized: nil,
            endDate: nil,
            endDateType: nil,
            ephemeralStorage: nil,
            instanceCount: 0,
            instanceMatchCriteria: nil,
            instancePlatform: .__default,
            instanceType: "value",
            tagSpecifications: nil,
            tenancy: nil)

        return defaultInstance
    }()
}

public extension CreateCapacityReservationResult {
    /**
     Default instance of the CreateCapacityReservationResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateCapacityReservationResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateCapacityReservationResult(
            capacityReservation: nil)

        return defaultInstance
    }()
}

public extension CreateClientVpnEndpointRequest {
    /**
     Default instance of the CreateClientVpnEndpointRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateClientVpnEndpointRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateClientVpnEndpointRequest(
            authenticationOptions: [],
            clientCidrBlock: "value",
            clientToken: nil,
            connectionLogOptions: ConnectionLogOptions.__default,
            description: nil,
            dnsServers: nil,
            dryRun: nil,
            serverCertificateArn: "value",
            tagSpecifications: nil,
            transportProtocol: nil)

        return defaultInstance
    }()
}

public extension CreateClientVpnEndpointResult {
    /**
     Default instance of the CreateClientVpnEndpointResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateClientVpnEndpointResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateClientVpnEndpointResult(
            clientVpnEndpointId: nil,
            dnsName: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension CreateClientVpnRouteRequest {
    /**
     Default instance of the CreateClientVpnRouteRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateClientVpnRouteRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateClientVpnRouteRequest(
            clientVpnEndpointId: "value",
            description: nil,
            destinationCidrBlock: "value",
            dryRun: nil,
            targetVpcSubnetId: "value")

        return defaultInstance
    }()
}

public extension CreateClientVpnRouteResult {
    /**
     Default instance of the CreateClientVpnRouteResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateClientVpnRouteResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateClientVpnRouteResult(
            status: nil)

        return defaultInstance
    }()
}

public extension CreateCustomerGatewayRequest {
    /**
     Default instance of the CreateCustomerGatewayRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateCustomerGatewayRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateCustomerGatewayRequest(
            bgpAsn: 0,
            dryRun: nil,
            publicIp: "value",
            type: .__default)

        return defaultInstance
    }()
}

public extension CreateCustomerGatewayResult {
    /**
     Default instance of the CreateCustomerGatewayResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateCustomerGatewayResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateCustomerGatewayResult(
            customerGateway: nil)

        return defaultInstance
    }()
}

public extension CreateDefaultSubnetRequest {
    /**
     Default instance of the CreateDefaultSubnetRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateDefaultSubnetRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateDefaultSubnetRequest(
            availabilityZone: "value",
            dryRun: nil)

        return defaultInstance
    }()
}

public extension CreateDefaultSubnetResult {
    /**
     Default instance of the CreateDefaultSubnetResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateDefaultSubnetResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateDefaultSubnetResult(
            subnet: nil)

        return defaultInstance
    }()
}

public extension CreateDefaultVpcRequest {
    /**
     Default instance of the CreateDefaultVpcRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateDefaultVpcRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateDefaultVpcRequest(
            dryRun: nil)

        return defaultInstance
    }()
}

public extension CreateDefaultVpcResult {
    /**
     Default instance of the CreateDefaultVpcResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateDefaultVpcResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateDefaultVpcResult(
            vpc: nil)

        return defaultInstance
    }()
}

public extension CreateDhcpOptionsRequest {
    /**
     Default instance of the CreateDhcpOptionsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateDhcpOptionsRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateDhcpOptionsRequest(
            dhcpConfigurations: [],
            dryRun: nil)

        return defaultInstance
    }()
}

public extension CreateDhcpOptionsResult {
    /**
     Default instance of the CreateDhcpOptionsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateDhcpOptionsResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateDhcpOptionsResult(
            dhcpOptions: nil)

        return defaultInstance
    }()
}

public extension CreateEgressOnlyInternetGatewayRequest {
    /**
     Default instance of the CreateEgressOnlyInternetGatewayRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayRequest(
            clientToken: nil,
            dryRun: nil,
            vpcId: "value")

        return defaultInstance
    }()
}

public extension CreateEgressOnlyInternetGatewayResult {
    /**
     Default instance of the CreateEgressOnlyInternetGatewayResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayResult(
            clientToken: nil,
            egressOnlyInternetGateway: nil)

        return defaultInstance
    }()
}

public extension CreateFleetError {
    /**
     Default instance of the CreateFleetError structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateFleetError = {
        let defaultInstance = ElasticComputeCloudModel.CreateFleetError(
            errorCode: nil,
            errorMessage: nil,
            launchTemplateAndOverrides: nil,
            lifecycle: nil)

        return defaultInstance
    }()
}

public extension CreateFleetInstance {
    /**
     Default instance of the CreateFleetInstance structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateFleetInstance = {
        let defaultInstance = ElasticComputeCloudModel.CreateFleetInstance(
            instanceIds: nil,
            instanceType: nil,
            launchTemplateAndOverrides: nil,
            lifecycle: nil,
            platform: nil)

        return defaultInstance
    }()
}

public extension CreateFleetRequest {
    /**
     Default instance of the CreateFleetRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateFleetRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateFleetRequest(
            clientToken: nil,
            dryRun: nil,
            excessCapacityTerminationPolicy: nil,
            launchTemplateConfigs: [],
            onDemandOptions: nil,
            replaceUnhealthyInstances: nil,
            spotOptions: nil,
            tagSpecifications: nil,
            targetCapacitySpecification: TargetCapacitySpecificationRequest.__default,
            terminateInstancesWithExpiration: nil,
            type: nil,
            validFrom: nil,
            validUntil: nil)

        return defaultInstance
    }()
}

public extension CreateFleetResult {
    /**
     Default instance of the CreateFleetResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateFleetResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateFleetResult(
            errors: nil,
            fleetId: nil,
            instances: nil)

        return defaultInstance
    }()
}

public extension CreateFlowLogsRequest {
    /**
     Default instance of the CreateFlowLogsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateFlowLogsRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateFlowLogsRequest(
            clientToken: nil,
            deliverLogsPermissionArn: nil,
            dryRun: nil,
            logDestination: nil,
            logDestinationType: nil,
            logGroupName: nil,
            resourceIds: [],
            resourceType: .__default,
            trafficType: .__default)

        return defaultInstance
    }()
}

public extension CreateFlowLogsResult {
    /**
     Default instance of the CreateFlowLogsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateFlowLogsResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateFlowLogsResult(
            clientToken: nil,
            flowLogIds: nil,
            unsuccessful: nil)

        return defaultInstance
    }()
}

public extension CreateFpgaImageRequest {
    /**
     Default instance of the CreateFpgaImageRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateFpgaImageRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateFpgaImageRequest(
            clientToken: nil,
            description: nil,
            dryRun: nil,
            inputStorageLocation: StorageLocation.__default,
            logsStorageLocation: nil,
            name: nil)

        return defaultInstance
    }()
}

public extension CreateFpgaImageResult {
    /**
     Default instance of the CreateFpgaImageResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateFpgaImageResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateFpgaImageResult(
            fpgaImageGlobalId: nil,
            fpgaImageId: nil)

        return defaultInstance
    }()
}

public extension CreateImageRequest {
    /**
     Default instance of the CreateImageRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateImageRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateImageRequest(
            blockDeviceMappings: nil,
            description: nil,
            dryRun: nil,
            instanceId: "value",
            name: "value",
            noReboot: nil)

        return defaultInstance
    }()
}

public extension CreateImageResult {
    /**
     Default instance of the CreateImageResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateImageResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateImageResult(
            imageId: nil)

        return defaultInstance
    }()
}

public extension CreateInstanceExportTaskRequest {
    /**
     Default instance of the CreateInstanceExportTaskRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateInstanceExportTaskRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateInstanceExportTaskRequest(
            description: nil,
            exportToS3Task: nil,
            instanceId: "value",
            targetEnvironment: nil)

        return defaultInstance
    }()
}

public extension CreateInstanceExportTaskResult {
    /**
     Default instance of the CreateInstanceExportTaskResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateInstanceExportTaskResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateInstanceExportTaskResult(
            exportTask: nil)

        return defaultInstance
    }()
}

public extension CreateInternetGatewayRequest {
    /**
     Default instance of the CreateInternetGatewayRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateInternetGatewayRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateInternetGatewayRequest(
            dryRun: nil)

        return defaultInstance
    }()
}

public extension CreateInternetGatewayResult {
    /**
     Default instance of the CreateInternetGatewayResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateInternetGatewayResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateInternetGatewayResult(
            internetGateway: nil)

        return defaultInstance
    }()
}

public extension CreateKeyPairRequest {
    /**
     Default instance of the CreateKeyPairRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateKeyPairRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateKeyPairRequest(
            dryRun: nil,
            keyName: "value")

        return defaultInstance
    }()
}

public extension CreateLaunchTemplateRequest {
    /**
     Default instance of the CreateLaunchTemplateRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateLaunchTemplateRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateLaunchTemplateRequest(
            clientToken: nil,
            dryRun: nil,
            launchTemplateData: RequestLaunchTemplateData.__default,
            launchTemplateName: "012",
            versionDescription: nil)

        return defaultInstance
    }()
}

public extension CreateLaunchTemplateResult {
    /**
     Default instance of the CreateLaunchTemplateResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateLaunchTemplateResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateLaunchTemplateResult(
            launchTemplate: nil)

        return defaultInstance
    }()
}

public extension CreateLaunchTemplateVersionRequest {
    /**
     Default instance of the CreateLaunchTemplateVersionRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateLaunchTemplateVersionRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateLaunchTemplateVersionRequest(
            clientToken: nil,
            dryRun: nil,
            launchTemplateData: RequestLaunchTemplateData.__default,
            launchTemplateId: nil,
            launchTemplateName: nil,
            sourceVersion: nil,
            versionDescription: nil)

        return defaultInstance
    }()
}

public extension CreateLaunchTemplateVersionResult {
    /**
     Default instance of the CreateLaunchTemplateVersionResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateLaunchTemplateVersionResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateLaunchTemplateVersionResult(
            launchTemplateVersion: nil)

        return defaultInstance
    }()
}

public extension CreateNatGatewayRequest {
    /**
     Default instance of the CreateNatGatewayRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateNatGatewayRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateNatGatewayRequest(
            allocationId: "value",
            clientToken: nil,
            subnetId: "value")

        return defaultInstance
    }()
}

public extension CreateNatGatewayResult {
    /**
     Default instance of the CreateNatGatewayResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateNatGatewayResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateNatGatewayResult(
            clientToken: nil,
            natGateway: nil)

        return defaultInstance
    }()
}

public extension CreateNetworkAclEntryRequest {
    /**
     Default instance of the CreateNetworkAclEntryRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateNetworkAclEntryRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateNetworkAclEntryRequest(
            cidrBlock: nil,
            dryRun: nil,
            egress: false,
            icmpTypeCode: nil,
            ipv6CidrBlock: nil,
            networkAclId: "value",
            portRange: nil,
            protocol: "value",
            ruleAction: .__default,
            ruleNumber: 0)

        return defaultInstance
    }()
}

public extension CreateNetworkAclRequest {
    /**
     Default instance of the CreateNetworkAclRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateNetworkAclRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateNetworkAclRequest(
            dryRun: nil,
            vpcId: "value")

        return defaultInstance
    }()
}

public extension CreateNetworkAclResult {
    /**
     Default instance of the CreateNetworkAclResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateNetworkAclResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateNetworkAclResult(
            networkAcl: nil)

        return defaultInstance
    }()
}

public extension CreateNetworkInterfacePermissionRequest {
    /**
     Default instance of the CreateNetworkInterfacePermissionRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateNetworkInterfacePermissionRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateNetworkInterfacePermissionRequest(
            awsAccountId: nil,
            awsService: nil,
            dryRun: nil,
            networkInterfaceId: "value",
            permission: .__default)

        return defaultInstance
    }()
}

public extension CreateNetworkInterfacePermissionResult {
    /**
     Default instance of the CreateNetworkInterfacePermissionResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateNetworkInterfacePermissionResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateNetworkInterfacePermissionResult(
            interfacePermission: nil)

        return defaultInstance
    }()
}

public extension CreateNetworkInterfaceRequest {
    /**
     Default instance of the CreateNetworkInterfaceRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateNetworkInterfaceRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateNetworkInterfaceRequest(
            description: nil,
            dryRun: nil,
            groups: nil,
            ipv6AddressCount: nil,
            ipv6Addresses: nil,
            privateIpAddress: nil,
            privateIpAddresses: nil,
            secondaryPrivateIpAddressCount: nil,
            subnetId: "value")

        return defaultInstance
    }()
}

public extension CreateNetworkInterfaceResult {
    /**
     Default instance of the CreateNetworkInterfaceResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateNetworkInterfaceResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateNetworkInterfaceResult(
            networkInterface: nil)

        return defaultInstance
    }()
}

public extension CreatePlacementGroupRequest {
    /**
     Default instance of the CreatePlacementGroupRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreatePlacementGroupRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreatePlacementGroupRequest(
            dryRun: nil,
            groupName: nil,
            partitionCount: nil,
            strategy: nil)

        return defaultInstance
    }()
}

public extension CreateReservedInstancesListingRequest {
    /**
     Default instance of the CreateReservedInstancesListingRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateReservedInstancesListingRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateReservedInstancesListingRequest(
            clientToken: "value",
            instanceCount: 0,
            priceSchedules: [],
            reservedInstancesId: "value")

        return defaultInstance
    }()
}

public extension CreateReservedInstancesListingResult {
    /**
     Default instance of the CreateReservedInstancesListingResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateReservedInstancesListingResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateReservedInstancesListingResult(
            reservedInstancesListings: nil)

        return defaultInstance
    }()
}

public extension CreateRouteRequest {
    /**
     Default instance of the CreateRouteRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateRouteRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateRouteRequest(
            destinationCidrBlock: nil,
            destinationIpv6CidrBlock: nil,
            dryRun: nil,
            egressOnlyInternetGatewayId: nil,
            gatewayId: nil,
            instanceId: nil,
            natGatewayId: nil,
            networkInterfaceId: nil,
            routeTableId: "value",
            transitGatewayId: nil,
            vpcPeeringConnectionId: nil)

        return defaultInstance
    }()
}

public extension CreateRouteResult {
    /**
     Default instance of the CreateRouteResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateRouteResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateRouteResult(
            return: nil)

        return defaultInstance
    }()
}

public extension CreateRouteTableRequest {
    /**
     Default instance of the CreateRouteTableRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateRouteTableRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateRouteTableRequest(
            dryRun: nil,
            vpcId: "value")

        return defaultInstance
    }()
}

public extension CreateRouteTableResult {
    /**
     Default instance of the CreateRouteTableResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateRouteTableResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateRouteTableResult(
            routeTable: nil)

        return defaultInstance
    }()
}

public extension CreateSecurityGroupRequest {
    /**
     Default instance of the CreateSecurityGroupRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateSecurityGroupRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateSecurityGroupRequest(
            description: "value",
            dryRun: nil,
            groupName: "value",
            vpcId: nil)

        return defaultInstance
    }()
}

public extension CreateSecurityGroupResult {
    /**
     Default instance of the CreateSecurityGroupResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateSecurityGroupResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateSecurityGroupResult(
            groupId: nil)

        return defaultInstance
    }()
}

public extension CreateSnapshotRequest {
    /**
     Default instance of the CreateSnapshotRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateSnapshotRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateSnapshotRequest(
            description: nil,
            dryRun: nil,
            tagSpecifications: nil,
            volumeId: "value")

        return defaultInstance
    }()
}

public extension CreateSpotDatafeedSubscriptionRequest {
    /**
     Default instance of the CreateSpotDatafeedSubscriptionRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionRequest(
            bucket: "value",
            dryRun: nil,
            prefix: nil)

        return defaultInstance
    }()
}

public extension CreateSpotDatafeedSubscriptionResult {
    /**
     Default instance of the CreateSpotDatafeedSubscriptionResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionResult(
            spotDatafeedSubscription: nil)

        return defaultInstance
    }()
}

public extension CreateSubnetRequest {
    /**
     Default instance of the CreateSubnetRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateSubnetRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateSubnetRequest(
            availabilityZone: nil,
            availabilityZoneId: nil,
            cidrBlock: "value",
            dryRun: nil,
            ipv6CidrBlock: nil,
            vpcId: "value")

        return defaultInstance
    }()
}

public extension CreateSubnetResult {
    /**
     Default instance of the CreateSubnetResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateSubnetResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateSubnetResult(
            subnet: nil)

        return defaultInstance
    }()
}

public extension CreateTagsRequest {
    /**
     Default instance of the CreateTagsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateTagsRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateTagsRequest(
            dryRun: nil,
            resources: [],
            tags: [])

        return defaultInstance
    }()
}

public extension CreateTransitGatewayRequest {
    /**
     Default instance of the CreateTransitGatewayRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateTransitGatewayRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateTransitGatewayRequest(
            description: nil,
            dryRun: nil,
            options: nil,
            tagSpecifications: nil)

        return defaultInstance
    }()
}

public extension CreateTransitGatewayResult {
    /**
     Default instance of the CreateTransitGatewayResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateTransitGatewayResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateTransitGatewayResult(
            transitGateway: nil)

        return defaultInstance
    }()
}

public extension CreateTransitGatewayRouteRequest {
    /**
     Default instance of the CreateTransitGatewayRouteRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateTransitGatewayRouteRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateTransitGatewayRouteRequest(
            blackhole: nil,
            destinationCidrBlock: "value",
            dryRun: nil,
            transitGatewayAttachmentId: nil,
            transitGatewayRouteTableId: "value")

        return defaultInstance
    }()
}

public extension CreateTransitGatewayRouteResult {
    /**
     Default instance of the CreateTransitGatewayRouteResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateTransitGatewayRouteResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateTransitGatewayRouteResult(
            route: nil)

        return defaultInstance
    }()
}

public extension CreateTransitGatewayRouteTableRequest {
    /**
     Default instance of the CreateTransitGatewayRouteTableRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateTransitGatewayRouteTableRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateTransitGatewayRouteTableRequest(
            dryRun: nil,
            tagSpecifications: nil,
            transitGatewayId: "value")

        return defaultInstance
    }()
}

public extension CreateTransitGatewayRouteTableResult {
    /**
     Default instance of the CreateTransitGatewayRouteTableResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateTransitGatewayRouteTableResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateTransitGatewayRouteTableResult(
            transitGatewayRouteTable: nil)

        return defaultInstance
    }()
}

public extension CreateTransitGatewayVpcAttachmentRequest {
    /**
     Default instance of the CreateTransitGatewayVpcAttachmentRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentRequest(
            dryRun: nil,
            options: nil,
            subnetIds: [],
            tagSpecifications: nil,
            transitGatewayId: "value",
            vpcId: "value")

        return defaultInstance
    }()
}

public extension CreateTransitGatewayVpcAttachmentRequestOptions {
    /**
     Default instance of the CreateTransitGatewayVpcAttachmentRequestOptions structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentRequestOptions = {
        let defaultInstance = ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentRequestOptions(
            dnsSupport: nil,
            ipv6Support: nil)

        return defaultInstance
    }()
}

public extension CreateTransitGatewayVpcAttachmentResult {
    /**
     Default instance of the CreateTransitGatewayVpcAttachmentResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentResult(
            transitGatewayVpcAttachment: nil)

        return defaultInstance
    }()
}

public extension CreateVolumePermission {
    /**
     Default instance of the CreateVolumePermission structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateVolumePermission = {
        let defaultInstance = ElasticComputeCloudModel.CreateVolumePermission(
            group: nil,
            userId: nil)

        return defaultInstance
    }()
}

public extension CreateVolumePermissionModifications {
    /**
     Default instance of the CreateVolumePermissionModifications structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateVolumePermissionModifications = {
        let defaultInstance = ElasticComputeCloudModel.CreateVolumePermissionModifications(
            add: nil,
            remove: nil)

        return defaultInstance
    }()
}

public extension CreateVolumeRequest {
    /**
     Default instance of the CreateVolumeRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateVolumeRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateVolumeRequest(
            availabilityZone: "value",
            dryRun: nil,
            encrypted: nil,
            iops: nil,
            kmsKeyId: nil,
            size: nil,
            snapshotId: nil,
            tagSpecifications: nil,
            volumeType: nil)

        return defaultInstance
    }()
}

public extension CreateVpcEndpointConnectionNotificationRequest {
    /**
     Default instance of the CreateVpcEndpointConnectionNotificationRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationRequest(
            clientToken: nil,
            connectionEvents: [],
            connectionNotificationArn: "value",
            dryRun: nil,
            serviceId: nil,
            vpcEndpointId: nil)

        return defaultInstance
    }()
}

public extension CreateVpcEndpointConnectionNotificationResult {
    /**
     Default instance of the CreateVpcEndpointConnectionNotificationResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationResult(
            clientToken: nil,
            connectionNotification: nil)

        return defaultInstance
    }()
}

public extension CreateVpcEndpointRequest {
    /**
     Default instance of the CreateVpcEndpointRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateVpcEndpointRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateVpcEndpointRequest(
            clientToken: nil,
            dryRun: nil,
            policyDocument: nil,
            privateDnsEnabled: nil,
            routeTableIds: nil,
            securityGroupIds: nil,
            serviceName: "value",
            subnetIds: nil,
            vpcEndpointType: nil,
            vpcId: "value")

        return defaultInstance
    }()
}

public extension CreateVpcEndpointResult {
    /**
     Default instance of the CreateVpcEndpointResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateVpcEndpointResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateVpcEndpointResult(
            clientToken: nil,
            vpcEndpoint: nil)

        return defaultInstance
    }()
}

public extension CreateVpcEndpointServiceConfigurationRequest {
    /**
     Default instance of the CreateVpcEndpointServiceConfigurationRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationRequest(
            acceptanceRequired: nil,
            clientToken: nil,
            dryRun: nil,
            networkLoadBalancerArns: [])

        return defaultInstance
    }()
}

public extension CreateVpcEndpointServiceConfigurationResult {
    /**
     Default instance of the CreateVpcEndpointServiceConfigurationResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationResult(
            clientToken: nil,
            serviceConfiguration: nil)

        return defaultInstance
    }()
}

public extension CreateVpcPeeringConnectionRequest {
    /**
     Default instance of the CreateVpcPeeringConnectionRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateVpcPeeringConnectionRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateVpcPeeringConnectionRequest(
            dryRun: nil,
            peerOwnerId: nil,
            peerRegion: nil,
            peerVpcId: nil,
            vpcId: nil)

        return defaultInstance
    }()
}

public extension CreateVpcPeeringConnectionResult {
    /**
     Default instance of the CreateVpcPeeringConnectionResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateVpcPeeringConnectionResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateVpcPeeringConnectionResult(
            vpcPeeringConnection: nil)

        return defaultInstance
    }()
}

public extension CreateVpcRequest {
    /**
     Default instance of the CreateVpcRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateVpcRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateVpcRequest(
            amazonProvidedIpv6CidrBlock: nil,
            cidrBlock: "value",
            dryRun: nil,
            instanceTenancy: nil)

        return defaultInstance
    }()
}

public extension CreateVpcResult {
    /**
     Default instance of the CreateVpcResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateVpcResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateVpcResult(
            vpc: nil)

        return defaultInstance
    }()
}

public extension CreateVpnConnectionRequest {
    /**
     Default instance of the CreateVpnConnectionRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateVpnConnectionRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateVpnConnectionRequest(
            customerGatewayId: "value",
            dryRun: nil,
            options: nil,
            transitGatewayId: nil,
            type: "value",
            vpnGatewayId: nil)

        return defaultInstance
    }()
}

public extension CreateVpnConnectionResult {
    /**
     Default instance of the CreateVpnConnectionResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateVpnConnectionResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateVpnConnectionResult(
            vpnConnection: nil)

        return defaultInstance
    }()
}

public extension CreateVpnConnectionRouteRequest {
    /**
     Default instance of the CreateVpnConnectionRouteRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateVpnConnectionRouteRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateVpnConnectionRouteRequest(
            destinationCidrBlock: "value",
            vpnConnectionId: "value")

        return defaultInstance
    }()
}

public extension CreateVpnGatewayRequest {
    /**
     Default instance of the CreateVpnGatewayRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateVpnGatewayRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreateVpnGatewayRequest(
            amazonSideAsn: nil,
            availabilityZone: nil,
            dryRun: nil,
            type: .__default)

        return defaultInstance
    }()
}

public extension CreateVpnGatewayResult {
    /**
     Default instance of the CreateVpnGatewayResult structure.
     */
    public static let __default: ElasticComputeCloudModel.CreateVpnGatewayResult = {
        let defaultInstance = ElasticComputeCloudModel.CreateVpnGatewayResult(
            vpnGateway: nil)

        return defaultInstance
    }()
}

public extension CreditSpecification {
    /**
     Default instance of the CreditSpecification structure.
     */
    public static let __default: ElasticComputeCloudModel.CreditSpecification = {
        let defaultInstance = ElasticComputeCloudModel.CreditSpecification(
            cpuCredits: nil)

        return defaultInstance
    }()
}

public extension CreditSpecificationRequest {
    /**
     Default instance of the CreditSpecificationRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.CreditSpecificationRequest = {
        let defaultInstance = ElasticComputeCloudModel.CreditSpecificationRequest(
            cpuCredits: "value")

        return defaultInstance
    }()
}

public extension CustomerGateway {
    /**
     Default instance of the CustomerGateway structure.
     */
    public static let __default: ElasticComputeCloudModel.CustomerGateway = {
        let defaultInstance = ElasticComputeCloudModel.CustomerGateway(
            bgpAsn: nil,
            customerGatewayId: nil,
            ipAddress: nil,
            state: nil,
            tags: nil,
            type: nil)

        return defaultInstance
    }()
}

public extension DeleteClientVpnEndpointRequest {
    /**
     Default instance of the DeleteClientVpnEndpointRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteClientVpnEndpointRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteClientVpnEndpointRequest(
            clientVpnEndpointId: "value",
            dryRun: nil)

        return defaultInstance
    }()
}

public extension DeleteClientVpnEndpointResult {
    /**
     Default instance of the DeleteClientVpnEndpointResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteClientVpnEndpointResult = {
        let defaultInstance = ElasticComputeCloudModel.DeleteClientVpnEndpointResult(
            status: nil)

        return defaultInstance
    }()
}

public extension DeleteClientVpnRouteRequest {
    /**
     Default instance of the DeleteClientVpnRouteRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteClientVpnRouteRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteClientVpnRouteRequest(
            clientVpnEndpointId: "value",
            destinationCidrBlock: "value",
            dryRun: nil,
            targetVpcSubnetId: nil)

        return defaultInstance
    }()
}

public extension DeleteClientVpnRouteResult {
    /**
     Default instance of the DeleteClientVpnRouteResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteClientVpnRouteResult = {
        let defaultInstance = ElasticComputeCloudModel.DeleteClientVpnRouteResult(
            status: nil)

        return defaultInstance
    }()
}

public extension DeleteCustomerGatewayRequest {
    /**
     Default instance of the DeleteCustomerGatewayRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteCustomerGatewayRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteCustomerGatewayRequest(
            customerGatewayId: "value",
            dryRun: nil)

        return defaultInstance
    }()
}

public extension DeleteDhcpOptionsRequest {
    /**
     Default instance of the DeleteDhcpOptionsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteDhcpOptionsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteDhcpOptionsRequest(
            dhcpOptionsId: "value",
            dryRun: nil)

        return defaultInstance
    }()
}

public extension DeleteEgressOnlyInternetGatewayRequest {
    /**
     Default instance of the DeleteEgressOnlyInternetGatewayRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayRequest(
            dryRun: nil,
            egressOnlyInternetGatewayId: "value")

        return defaultInstance
    }()
}

public extension DeleteEgressOnlyInternetGatewayResult {
    /**
     Default instance of the DeleteEgressOnlyInternetGatewayResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayResult = {
        let defaultInstance = ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayResult(
            returnCode: nil)

        return defaultInstance
    }()
}

public extension DeleteFleetError {
    /**
     Default instance of the DeleteFleetError structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteFleetError = {
        let defaultInstance = ElasticComputeCloudModel.DeleteFleetError(
            code: nil,
            message: nil)

        return defaultInstance
    }()
}

public extension DeleteFleetErrorItem {
    /**
     Default instance of the DeleteFleetErrorItem structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteFleetErrorItem = {
        let defaultInstance = ElasticComputeCloudModel.DeleteFleetErrorItem(
            error: nil,
            fleetId: nil)

        return defaultInstance
    }()
}

public extension DeleteFleetSuccessItem {
    /**
     Default instance of the DeleteFleetSuccessItem structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteFleetSuccessItem = {
        let defaultInstance = ElasticComputeCloudModel.DeleteFleetSuccessItem(
            currentFleetState: nil,
            fleetId: nil,
            previousFleetState: nil)

        return defaultInstance
    }()
}

public extension DeleteFleetsRequest {
    /**
     Default instance of the DeleteFleetsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteFleetsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteFleetsRequest(
            dryRun: nil,
            fleetIds: [],
            terminateInstances: false)

        return defaultInstance
    }()
}

public extension DeleteFleetsResult {
    /**
     Default instance of the DeleteFleetsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteFleetsResult = {
        let defaultInstance = ElasticComputeCloudModel.DeleteFleetsResult(
            successfulFleetDeletions: nil,
            unsuccessfulFleetDeletions: nil)

        return defaultInstance
    }()
}

public extension DeleteFlowLogsRequest {
    /**
     Default instance of the DeleteFlowLogsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteFlowLogsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteFlowLogsRequest(
            dryRun: nil,
            flowLogIds: [])

        return defaultInstance
    }()
}

public extension DeleteFlowLogsResult {
    /**
     Default instance of the DeleteFlowLogsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteFlowLogsResult = {
        let defaultInstance = ElasticComputeCloudModel.DeleteFlowLogsResult(
            unsuccessful: nil)

        return defaultInstance
    }()
}

public extension DeleteFpgaImageRequest {
    /**
     Default instance of the DeleteFpgaImageRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteFpgaImageRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteFpgaImageRequest(
            dryRun: nil,
            fpgaImageId: "value")

        return defaultInstance
    }()
}

public extension DeleteFpgaImageResult {
    /**
     Default instance of the DeleteFpgaImageResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteFpgaImageResult = {
        let defaultInstance = ElasticComputeCloudModel.DeleteFpgaImageResult(
            return: nil)

        return defaultInstance
    }()
}

public extension DeleteInternetGatewayRequest {
    /**
     Default instance of the DeleteInternetGatewayRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteInternetGatewayRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteInternetGatewayRequest(
            dryRun: nil,
            internetGatewayId: "value")

        return defaultInstance
    }()
}

public extension DeleteKeyPairRequest {
    /**
     Default instance of the DeleteKeyPairRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteKeyPairRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteKeyPairRequest(
            dryRun: nil,
            keyName: "value")

        return defaultInstance
    }()
}

public extension DeleteLaunchTemplateRequest {
    /**
     Default instance of the DeleteLaunchTemplateRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteLaunchTemplateRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteLaunchTemplateRequest(
            dryRun: nil,
            launchTemplateId: nil,
            launchTemplateName: nil)

        return defaultInstance
    }()
}

public extension DeleteLaunchTemplateResult {
    /**
     Default instance of the DeleteLaunchTemplateResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteLaunchTemplateResult = {
        let defaultInstance = ElasticComputeCloudModel.DeleteLaunchTemplateResult(
            launchTemplate: nil)

        return defaultInstance
    }()
}

public extension DeleteLaunchTemplateVersionsRequest {
    /**
     Default instance of the DeleteLaunchTemplateVersionsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteLaunchTemplateVersionsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteLaunchTemplateVersionsRequest(
            dryRun: nil,
            launchTemplateId: nil,
            launchTemplateName: nil,
            versions: [])

        return defaultInstance
    }()
}

public extension DeleteLaunchTemplateVersionsResponseErrorItem {
    /**
     Default instance of the DeleteLaunchTemplateVersionsResponseErrorItem structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteLaunchTemplateVersionsResponseErrorItem = {
        let defaultInstance = ElasticComputeCloudModel.DeleteLaunchTemplateVersionsResponseErrorItem(
            launchTemplateId: nil,
            launchTemplateName: nil,
            responseError: nil,
            versionNumber: nil)

        return defaultInstance
    }()
}

public extension DeleteLaunchTemplateVersionsResponseSuccessItem {
    /**
     Default instance of the DeleteLaunchTemplateVersionsResponseSuccessItem structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteLaunchTemplateVersionsResponseSuccessItem = {
        let defaultInstance = ElasticComputeCloudModel.DeleteLaunchTemplateVersionsResponseSuccessItem(
            launchTemplateId: nil,
            launchTemplateName: nil,
            versionNumber: nil)

        return defaultInstance
    }()
}

public extension DeleteLaunchTemplateVersionsResult {
    /**
     Default instance of the DeleteLaunchTemplateVersionsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteLaunchTemplateVersionsResult = {
        let defaultInstance = ElasticComputeCloudModel.DeleteLaunchTemplateVersionsResult(
            successfullyDeletedLaunchTemplateVersions: nil,
            unsuccessfullyDeletedLaunchTemplateVersions: nil)

        return defaultInstance
    }()
}

public extension DeleteNatGatewayRequest {
    /**
     Default instance of the DeleteNatGatewayRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteNatGatewayRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteNatGatewayRequest(
            natGatewayId: "value")

        return defaultInstance
    }()
}

public extension DeleteNatGatewayResult {
    /**
     Default instance of the DeleteNatGatewayResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteNatGatewayResult = {
        let defaultInstance = ElasticComputeCloudModel.DeleteNatGatewayResult(
            natGatewayId: nil)

        return defaultInstance
    }()
}

public extension DeleteNetworkAclEntryRequest {
    /**
     Default instance of the DeleteNetworkAclEntryRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteNetworkAclEntryRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteNetworkAclEntryRequest(
            dryRun: nil,
            egress: false,
            networkAclId: "value",
            ruleNumber: 0)

        return defaultInstance
    }()
}

public extension DeleteNetworkAclRequest {
    /**
     Default instance of the DeleteNetworkAclRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteNetworkAclRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteNetworkAclRequest(
            dryRun: nil,
            networkAclId: "value")

        return defaultInstance
    }()
}

public extension DeleteNetworkInterfacePermissionRequest {
    /**
     Default instance of the DeleteNetworkInterfacePermissionRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteNetworkInterfacePermissionRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteNetworkInterfacePermissionRequest(
            dryRun: nil,
            force: nil,
            networkInterfacePermissionId: "value")

        return defaultInstance
    }()
}

public extension DeleteNetworkInterfacePermissionResult {
    /**
     Default instance of the DeleteNetworkInterfacePermissionResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteNetworkInterfacePermissionResult = {
        let defaultInstance = ElasticComputeCloudModel.DeleteNetworkInterfacePermissionResult(
            return: nil)

        return defaultInstance
    }()
}

public extension DeleteNetworkInterfaceRequest {
    /**
     Default instance of the DeleteNetworkInterfaceRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteNetworkInterfaceRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteNetworkInterfaceRequest(
            dryRun: nil,
            networkInterfaceId: "value")

        return defaultInstance
    }()
}

public extension DeletePlacementGroupRequest {
    /**
     Default instance of the DeletePlacementGroupRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeletePlacementGroupRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeletePlacementGroupRequest(
            dryRun: nil,
            groupName: "value")

        return defaultInstance
    }()
}

public extension DeleteRouteRequest {
    /**
     Default instance of the DeleteRouteRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteRouteRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteRouteRequest(
            destinationCidrBlock: nil,
            destinationIpv6CidrBlock: nil,
            dryRun: nil,
            routeTableId: "value")

        return defaultInstance
    }()
}

public extension DeleteRouteTableRequest {
    /**
     Default instance of the DeleteRouteTableRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteRouteTableRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteRouteTableRequest(
            dryRun: nil,
            routeTableId: "value")

        return defaultInstance
    }()
}

public extension DeleteSecurityGroupRequest {
    /**
     Default instance of the DeleteSecurityGroupRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteSecurityGroupRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteSecurityGroupRequest(
            dryRun: nil,
            groupId: nil,
            groupName: nil)

        return defaultInstance
    }()
}

public extension DeleteSnapshotRequest {
    /**
     Default instance of the DeleteSnapshotRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteSnapshotRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteSnapshotRequest(
            dryRun: nil,
            snapshotId: "value")

        return defaultInstance
    }()
}

public extension DeleteSpotDatafeedSubscriptionRequest {
    /**
     Default instance of the DeleteSpotDatafeedSubscriptionRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteSpotDatafeedSubscriptionRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteSpotDatafeedSubscriptionRequest(
            dryRun: nil)

        return defaultInstance
    }()
}

public extension DeleteSubnetRequest {
    /**
     Default instance of the DeleteSubnetRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteSubnetRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteSubnetRequest(
            dryRun: nil,
            subnetId: "value")

        return defaultInstance
    }()
}

public extension DeleteTagsRequest {
    /**
     Default instance of the DeleteTagsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteTagsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteTagsRequest(
            dryRun: nil,
            resources: [],
            tags: nil)

        return defaultInstance
    }()
}

public extension DeleteTransitGatewayRequest {
    /**
     Default instance of the DeleteTransitGatewayRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteTransitGatewayRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteTransitGatewayRequest(
            dryRun: nil,
            transitGatewayId: "value")

        return defaultInstance
    }()
}

public extension DeleteTransitGatewayResult {
    /**
     Default instance of the DeleteTransitGatewayResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteTransitGatewayResult = {
        let defaultInstance = ElasticComputeCloudModel.DeleteTransitGatewayResult(
            transitGateway: nil)

        return defaultInstance
    }()
}

public extension DeleteTransitGatewayRouteRequest {
    /**
     Default instance of the DeleteTransitGatewayRouteRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteTransitGatewayRouteRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteTransitGatewayRouteRequest(
            destinationCidrBlock: "value",
            dryRun: nil,
            transitGatewayRouteTableId: "value")

        return defaultInstance
    }()
}

public extension DeleteTransitGatewayRouteResult {
    /**
     Default instance of the DeleteTransitGatewayRouteResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteTransitGatewayRouteResult = {
        let defaultInstance = ElasticComputeCloudModel.DeleteTransitGatewayRouteResult(
            route: nil)

        return defaultInstance
    }()
}

public extension DeleteTransitGatewayRouteTableRequest {
    /**
     Default instance of the DeleteTransitGatewayRouteTableRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteTransitGatewayRouteTableRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteTransitGatewayRouteTableRequest(
            dryRun: nil,
            transitGatewayRouteTableId: "value")

        return defaultInstance
    }()
}

public extension DeleteTransitGatewayRouteTableResult {
    /**
     Default instance of the DeleteTransitGatewayRouteTableResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteTransitGatewayRouteTableResult = {
        let defaultInstance = ElasticComputeCloudModel.DeleteTransitGatewayRouteTableResult(
            transitGatewayRouteTable: nil)

        return defaultInstance
    }()
}

public extension DeleteTransitGatewayVpcAttachmentRequest {
    /**
     Default instance of the DeleteTransitGatewayVpcAttachmentRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentRequest(
            dryRun: nil,
            transitGatewayAttachmentId: "value")

        return defaultInstance
    }()
}

public extension DeleteTransitGatewayVpcAttachmentResult {
    /**
     Default instance of the DeleteTransitGatewayVpcAttachmentResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentResult = {
        let defaultInstance = ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentResult(
            transitGatewayVpcAttachment: nil)

        return defaultInstance
    }()
}

public extension DeleteVolumeRequest {
    /**
     Default instance of the DeleteVolumeRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteVolumeRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteVolumeRequest(
            dryRun: nil,
            volumeId: "value")

        return defaultInstance
    }()
}

public extension DeleteVpcEndpointConnectionNotificationsRequest {
    /**
     Default instance of the DeleteVpcEndpointConnectionNotificationsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsRequest(
            connectionNotificationIds: [],
            dryRun: nil)

        return defaultInstance
    }()
}

public extension DeleteVpcEndpointConnectionNotificationsResult {
    /**
     Default instance of the DeleteVpcEndpointConnectionNotificationsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsResult = {
        let defaultInstance = ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsResult(
            unsuccessful: nil)

        return defaultInstance
    }()
}

public extension DeleteVpcEndpointServiceConfigurationsRequest {
    /**
     Default instance of the DeleteVpcEndpointServiceConfigurationsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsRequest(
            dryRun: nil,
            serviceIds: [])

        return defaultInstance
    }()
}

public extension DeleteVpcEndpointServiceConfigurationsResult {
    /**
     Default instance of the DeleteVpcEndpointServiceConfigurationsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsResult = {
        let defaultInstance = ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsResult(
            unsuccessful: nil)

        return defaultInstance
    }()
}

public extension DeleteVpcEndpointsRequest {
    /**
     Default instance of the DeleteVpcEndpointsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteVpcEndpointsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteVpcEndpointsRequest(
            dryRun: nil,
            vpcEndpointIds: [])

        return defaultInstance
    }()
}

public extension DeleteVpcEndpointsResult {
    /**
     Default instance of the DeleteVpcEndpointsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteVpcEndpointsResult = {
        let defaultInstance = ElasticComputeCloudModel.DeleteVpcEndpointsResult(
            unsuccessful: nil)

        return defaultInstance
    }()
}

public extension DeleteVpcPeeringConnectionRequest {
    /**
     Default instance of the DeleteVpcPeeringConnectionRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteVpcPeeringConnectionRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteVpcPeeringConnectionRequest(
            dryRun: nil,
            vpcPeeringConnectionId: "value")

        return defaultInstance
    }()
}

public extension DeleteVpcPeeringConnectionResult {
    /**
     Default instance of the DeleteVpcPeeringConnectionResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteVpcPeeringConnectionResult = {
        let defaultInstance = ElasticComputeCloudModel.DeleteVpcPeeringConnectionResult(
            return: nil)

        return defaultInstance
    }()
}

public extension DeleteVpcRequest {
    /**
     Default instance of the DeleteVpcRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteVpcRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteVpcRequest(
            dryRun: nil,
            vpcId: "value")

        return defaultInstance
    }()
}

public extension DeleteVpnConnectionRequest {
    /**
     Default instance of the DeleteVpnConnectionRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteVpnConnectionRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteVpnConnectionRequest(
            dryRun: nil,
            vpnConnectionId: "value")

        return defaultInstance
    }()
}

public extension DeleteVpnConnectionRouteRequest {
    /**
     Default instance of the DeleteVpnConnectionRouteRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteVpnConnectionRouteRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteVpnConnectionRouteRequest(
            destinationCidrBlock: "value",
            vpnConnectionId: "value")

        return defaultInstance
    }()
}

public extension DeleteVpnGatewayRequest {
    /**
     Default instance of the DeleteVpnGatewayRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeleteVpnGatewayRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeleteVpnGatewayRequest(
            dryRun: nil,
            vpnGatewayId: "value")

        return defaultInstance
    }()
}

public extension DeprovisionByoipCidrRequest {
    /**
     Default instance of the DeprovisionByoipCidrRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeprovisionByoipCidrRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeprovisionByoipCidrRequest(
            cidr: "value",
            dryRun: nil)

        return defaultInstance
    }()
}

public extension DeprovisionByoipCidrResult {
    /**
     Default instance of the DeprovisionByoipCidrResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DeprovisionByoipCidrResult = {
        let defaultInstance = ElasticComputeCloudModel.DeprovisionByoipCidrResult(
            byoipCidr: nil)

        return defaultInstance
    }()
}

public extension DeregisterImageRequest {
    /**
     Default instance of the DeregisterImageRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DeregisterImageRequest = {
        let defaultInstance = ElasticComputeCloudModel.DeregisterImageRequest(
            dryRun: nil,
            imageId: "value")

        return defaultInstance
    }()
}

public extension DescribeAccountAttributesRequest {
    /**
     Default instance of the DescribeAccountAttributesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeAccountAttributesRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeAccountAttributesRequest(
            attributeNames: nil,
            dryRun: nil)

        return defaultInstance
    }()
}

public extension DescribeAccountAttributesResult {
    /**
     Default instance of the DescribeAccountAttributesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeAccountAttributesResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeAccountAttributesResult(
            accountAttributes: nil)

        return defaultInstance
    }()
}

public extension DescribeAddressesRequest {
    /**
     Default instance of the DescribeAddressesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeAddressesRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeAddressesRequest(
            allocationIds: nil,
            dryRun: nil,
            filters: nil,
            publicIps: nil)

        return defaultInstance
    }()
}

public extension DescribeAddressesResult {
    /**
     Default instance of the DescribeAddressesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeAddressesResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeAddressesResult(
            addresses: nil)

        return defaultInstance
    }()
}

public extension DescribeAggregateIdFormatRequest {
    /**
     Default instance of the DescribeAggregateIdFormatRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeAggregateIdFormatRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeAggregateIdFormatRequest(
            dryRun: nil)

        return defaultInstance
    }()
}

public extension DescribeAggregateIdFormatResult {
    /**
     Default instance of the DescribeAggregateIdFormatResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeAggregateIdFormatResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeAggregateIdFormatResult(
            statuses: nil,
            useLongIdsAggregated: nil)

        return defaultInstance
    }()
}

public extension DescribeAvailabilityZonesRequest {
    /**
     Default instance of the DescribeAvailabilityZonesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeAvailabilityZonesRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeAvailabilityZonesRequest(
            dryRun: nil,
            filters: nil,
            zoneIds: nil,
            zoneNames: nil)

        return defaultInstance
    }()
}

public extension DescribeAvailabilityZonesResult {
    /**
     Default instance of the DescribeAvailabilityZonesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeAvailabilityZonesResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeAvailabilityZonesResult(
            availabilityZones: nil)

        return defaultInstance
    }()
}

public extension DescribeBundleTasksRequest {
    /**
     Default instance of the DescribeBundleTasksRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeBundleTasksRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeBundleTasksRequest(
            bundleIds: nil,
            dryRun: nil,
            filters: nil)

        return defaultInstance
    }()
}

public extension DescribeBundleTasksResult {
    /**
     Default instance of the DescribeBundleTasksResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeBundleTasksResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeBundleTasksResult(
            bundleTasks: nil)

        return defaultInstance
    }()
}

public extension DescribeByoipCidrsRequest {
    /**
     Default instance of the DescribeByoipCidrsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeByoipCidrsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeByoipCidrsRequest(
            dryRun: nil,
            maxResults: 0,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeByoipCidrsResult {
    /**
     Default instance of the DescribeByoipCidrsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeByoipCidrsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeByoipCidrsResult(
            byoipCidrs: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeCapacityReservationsRequest {
    /**
     Default instance of the DescribeCapacityReservationsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeCapacityReservationsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeCapacityReservationsRequest(
            capacityReservationIds: nil,
            dryRun: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeCapacityReservationsResult {
    /**
     Default instance of the DescribeCapacityReservationsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeCapacityReservationsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeCapacityReservationsResult(
            capacityReservations: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeClassicLinkInstancesRequest {
    /**
     Default instance of the DescribeClassicLinkInstancesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeClassicLinkInstancesRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeClassicLinkInstancesRequest(
            dryRun: nil,
            filters: nil,
            instanceIds: nil,
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeClassicLinkInstancesResult {
    /**
     Default instance of the DescribeClassicLinkInstancesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeClassicLinkInstancesResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeClassicLinkInstancesResult(
            instances: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeClientVpnAuthorizationRulesRequest {
    /**
     Default instance of the DescribeClientVpnAuthorizationRulesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesRequest(
            clientVpnEndpointId: "value",
            dryRun: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeClientVpnAuthorizationRulesResult {
    /**
     Default instance of the DescribeClientVpnAuthorizationRulesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesResult(
            authorizationRules: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeClientVpnConnectionsRequest {
    /**
     Default instance of the DescribeClientVpnConnectionsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeClientVpnConnectionsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeClientVpnConnectionsRequest(
            clientVpnEndpointId: "value",
            dryRun: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeClientVpnConnectionsResult {
    /**
     Default instance of the DescribeClientVpnConnectionsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeClientVpnConnectionsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeClientVpnConnectionsResult(
            connections: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeClientVpnEndpointsRequest {
    /**
     Default instance of the DescribeClientVpnEndpointsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeClientVpnEndpointsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeClientVpnEndpointsRequest(
            clientVpnEndpointIds: nil,
            dryRun: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeClientVpnEndpointsResult {
    /**
     Default instance of the DescribeClientVpnEndpointsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeClientVpnEndpointsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeClientVpnEndpointsResult(
            clientVpnEndpoints: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeClientVpnRoutesRequest {
    /**
     Default instance of the DescribeClientVpnRoutesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeClientVpnRoutesRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeClientVpnRoutesRequest(
            clientVpnEndpointId: "value",
            dryRun: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeClientVpnRoutesResult {
    /**
     Default instance of the DescribeClientVpnRoutesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeClientVpnRoutesResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeClientVpnRoutesResult(
            nextToken: nil,
            routes: nil)

        return defaultInstance
    }()
}

public extension DescribeClientVpnTargetNetworksRequest {
    /**
     Default instance of the DescribeClientVpnTargetNetworksRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeClientVpnTargetNetworksRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeClientVpnTargetNetworksRequest(
            associationIds: nil,
            clientVpnEndpointId: "value",
            dryRun: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeClientVpnTargetNetworksResult {
    /**
     Default instance of the DescribeClientVpnTargetNetworksResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeClientVpnTargetNetworksResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeClientVpnTargetNetworksResult(
            clientVpnTargetNetworks: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeConversionTasksRequest {
    /**
     Default instance of the DescribeConversionTasksRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeConversionTasksRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeConversionTasksRequest(
            conversionTaskIds: nil,
            dryRun: nil)

        return defaultInstance
    }()
}

public extension DescribeConversionTasksResult {
    /**
     Default instance of the DescribeConversionTasksResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeConversionTasksResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeConversionTasksResult(
            conversionTasks: nil)

        return defaultInstance
    }()
}

public extension DescribeCustomerGatewaysRequest {
    /**
     Default instance of the DescribeCustomerGatewaysRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeCustomerGatewaysRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeCustomerGatewaysRequest(
            customerGatewayIds: nil,
            dryRun: nil,
            filters: nil)

        return defaultInstance
    }()
}

public extension DescribeCustomerGatewaysResult {
    /**
     Default instance of the DescribeCustomerGatewaysResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeCustomerGatewaysResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeCustomerGatewaysResult(
            customerGateways: nil)

        return defaultInstance
    }()
}

public extension DescribeDhcpOptionsRequest {
    /**
     Default instance of the DescribeDhcpOptionsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeDhcpOptionsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeDhcpOptionsRequest(
            dhcpOptionsIds: nil,
            dryRun: nil,
            filters: nil)

        return defaultInstance
    }()
}

public extension DescribeDhcpOptionsResult {
    /**
     Default instance of the DescribeDhcpOptionsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeDhcpOptionsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeDhcpOptionsResult(
            dhcpOptions: nil)

        return defaultInstance
    }()
}

public extension DescribeEgressOnlyInternetGatewaysRequest {
    /**
     Default instance of the DescribeEgressOnlyInternetGatewaysRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysRequest(
            dryRun: nil,
            egressOnlyInternetGatewayIds: nil,
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeEgressOnlyInternetGatewaysResult {
    /**
     Default instance of the DescribeEgressOnlyInternetGatewaysResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysResult(
            egressOnlyInternetGateways: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeElasticGpusRequest {
    /**
     Default instance of the DescribeElasticGpusRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeElasticGpusRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeElasticGpusRequest(
            dryRun: nil,
            elasticGpuIds: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeElasticGpusResult {
    /**
     Default instance of the DescribeElasticGpusResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeElasticGpusResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeElasticGpusResult(
            elasticGpuSet: nil,
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeExportTasksRequest {
    /**
     Default instance of the DescribeExportTasksRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeExportTasksRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeExportTasksRequest(
            exportTaskIds: nil)

        return defaultInstance
    }()
}

public extension DescribeExportTasksResult {
    /**
     Default instance of the DescribeExportTasksResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeExportTasksResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeExportTasksResult(
            exportTasks: nil)

        return defaultInstance
    }()
}

public extension DescribeFleetError {
    /**
     Default instance of the DescribeFleetError structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeFleetError = {
        let defaultInstance = ElasticComputeCloudModel.DescribeFleetError(
            errorCode: nil,
            errorMessage: nil,
            launchTemplateAndOverrides: nil,
            lifecycle: nil)

        return defaultInstance
    }()
}

public extension DescribeFleetHistoryRequest {
    /**
     Default instance of the DescribeFleetHistoryRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeFleetHistoryRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeFleetHistoryRequest(
            dryRun: nil,
            eventType: nil,
            fleetId: "value",
            maxResults: nil,
            nextToken: nil,
            startTime: "2013-02-18T17:00:00Z")

        return defaultInstance
    }()
}

public extension DescribeFleetHistoryResult {
    /**
     Default instance of the DescribeFleetHistoryResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeFleetHistoryResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeFleetHistoryResult(
            fleetId: nil,
            historyRecords: nil,
            lastEvaluatedTime: nil,
            nextToken: nil,
            startTime: nil)

        return defaultInstance
    }()
}

public extension DescribeFleetInstancesRequest {
    /**
     Default instance of the DescribeFleetInstancesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeFleetInstancesRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeFleetInstancesRequest(
            dryRun: nil,
            filters: nil,
            fleetId: "value",
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeFleetInstancesResult {
    /**
     Default instance of the DescribeFleetInstancesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeFleetInstancesResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeFleetInstancesResult(
            activeInstances: nil,
            fleetId: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeFleetsInstances {
    /**
     Default instance of the DescribeFleetsInstances structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeFleetsInstances = {
        let defaultInstance = ElasticComputeCloudModel.DescribeFleetsInstances(
            instanceIds: nil,
            instanceType: nil,
            launchTemplateAndOverrides: nil,
            lifecycle: nil,
            platform: nil)

        return defaultInstance
    }()
}

public extension DescribeFleetsRequest {
    /**
     Default instance of the DescribeFleetsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeFleetsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeFleetsRequest(
            dryRun: nil,
            filters: nil,
            fleetIds: nil,
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeFleetsResult {
    /**
     Default instance of the DescribeFleetsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeFleetsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeFleetsResult(
            fleets: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeFlowLogsRequest {
    /**
     Default instance of the DescribeFlowLogsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeFlowLogsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeFlowLogsRequest(
            dryRun: nil,
            filter: nil,
            flowLogIds: nil,
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeFlowLogsResult {
    /**
     Default instance of the DescribeFlowLogsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeFlowLogsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeFlowLogsResult(
            flowLogs: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeFpgaImageAttributeRequest {
    /**
     Default instance of the DescribeFpgaImageAttributeRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeFpgaImageAttributeRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeFpgaImageAttributeRequest(
            attribute: .__default,
            dryRun: nil,
            fpgaImageId: "value")

        return defaultInstance
    }()
}

public extension DescribeFpgaImageAttributeResult {
    /**
     Default instance of the DescribeFpgaImageAttributeResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeFpgaImageAttributeResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeFpgaImageAttributeResult(
            fpgaImageAttribute: nil)

        return defaultInstance
    }()
}

public extension DescribeFpgaImagesRequest {
    /**
     Default instance of the DescribeFpgaImagesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeFpgaImagesRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeFpgaImagesRequest(
            dryRun: nil,
            filters: nil,
            fpgaImageIds: nil,
            maxResults: nil,
            nextToken: nil,
            owners: nil)

        return defaultInstance
    }()
}

public extension DescribeFpgaImagesResult {
    /**
     Default instance of the DescribeFpgaImagesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeFpgaImagesResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeFpgaImagesResult(
            fpgaImages: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeHostReservationOfferingsRequest {
    /**
     Default instance of the DescribeHostReservationOfferingsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeHostReservationOfferingsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeHostReservationOfferingsRequest(
            filter: nil,
            maxDuration: nil,
            maxResults: nil,
            minDuration: nil,
            nextToken: nil,
            offeringId: nil)

        return defaultInstance
    }()
}

public extension DescribeHostReservationOfferingsResult {
    /**
     Default instance of the DescribeHostReservationOfferingsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeHostReservationOfferingsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeHostReservationOfferingsResult(
            nextToken: nil,
            offeringSet: nil)

        return defaultInstance
    }()
}

public extension DescribeHostReservationsRequest {
    /**
     Default instance of the DescribeHostReservationsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeHostReservationsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeHostReservationsRequest(
            filter: nil,
            hostReservationIdSet: nil,
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeHostReservationsResult {
    /**
     Default instance of the DescribeHostReservationsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeHostReservationsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeHostReservationsResult(
            hostReservationSet: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeHostsRequest {
    /**
     Default instance of the DescribeHostsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeHostsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeHostsRequest(
            filter: nil,
            hostIds: nil,
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeHostsResult {
    /**
     Default instance of the DescribeHostsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeHostsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeHostsResult(
            hosts: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeIamInstanceProfileAssociationsRequest {
    /**
     Default instance of the DescribeIamInstanceProfileAssociationsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsRequest(
            associationIds: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeIamInstanceProfileAssociationsResult {
    /**
     Default instance of the DescribeIamInstanceProfileAssociationsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsResult(
            iamInstanceProfileAssociations: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeIdFormatRequest {
    /**
     Default instance of the DescribeIdFormatRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeIdFormatRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeIdFormatRequest(
            resource: nil)

        return defaultInstance
    }()
}

public extension DescribeIdFormatResult {
    /**
     Default instance of the DescribeIdFormatResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeIdFormatResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeIdFormatResult(
            statuses: nil)

        return defaultInstance
    }()
}

public extension DescribeIdentityIdFormatRequest {
    /**
     Default instance of the DescribeIdentityIdFormatRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeIdentityIdFormatRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeIdentityIdFormatRequest(
            principalArn: "value",
            resource: nil)

        return defaultInstance
    }()
}

public extension DescribeIdentityIdFormatResult {
    /**
     Default instance of the DescribeIdentityIdFormatResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeIdentityIdFormatResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeIdentityIdFormatResult(
            statuses: nil)

        return defaultInstance
    }()
}

public extension DescribeImageAttributeRequest {
    /**
     Default instance of the DescribeImageAttributeRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeImageAttributeRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeImageAttributeRequest(
            attribute: .__default,
            dryRun: nil,
            imageId: "value")

        return defaultInstance
    }()
}

public extension DescribeImagesRequest {
    /**
     Default instance of the DescribeImagesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeImagesRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeImagesRequest(
            dryRun: nil,
            executableUsers: nil,
            filters: nil,
            imageIds: nil,
            owners: nil)

        return defaultInstance
    }()
}

public extension DescribeImagesResult {
    /**
     Default instance of the DescribeImagesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeImagesResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeImagesResult(
            images: nil)

        return defaultInstance
    }()
}

public extension DescribeImportImageTasksRequest {
    /**
     Default instance of the DescribeImportImageTasksRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeImportImageTasksRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeImportImageTasksRequest(
            dryRun: nil,
            filters: nil,
            importTaskIds: nil,
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeImportImageTasksResult {
    /**
     Default instance of the DescribeImportImageTasksResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeImportImageTasksResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeImportImageTasksResult(
            importImageTasks: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeImportSnapshotTasksRequest {
    /**
     Default instance of the DescribeImportSnapshotTasksRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeImportSnapshotTasksRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeImportSnapshotTasksRequest(
            dryRun: nil,
            filters: nil,
            importTaskIds: nil,
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeImportSnapshotTasksResult {
    /**
     Default instance of the DescribeImportSnapshotTasksResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeImportSnapshotTasksResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeImportSnapshotTasksResult(
            importSnapshotTasks: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeInstanceAttributeRequest {
    /**
     Default instance of the DescribeInstanceAttributeRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeInstanceAttributeRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeInstanceAttributeRequest(
            attribute: .__default,
            dryRun: nil,
            instanceId: "value")

        return defaultInstance
    }()
}

public extension DescribeInstanceCreditSpecificationsRequest {
    /**
     Default instance of the DescribeInstanceCreditSpecificationsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsRequest(
            dryRun: nil,
            filters: nil,
            instanceIds: nil,
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeInstanceCreditSpecificationsResult {
    /**
     Default instance of the DescribeInstanceCreditSpecificationsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsResult(
            instanceCreditSpecifications: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeInstanceStatusRequest {
    /**
     Default instance of the DescribeInstanceStatusRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeInstanceStatusRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeInstanceStatusRequest(
            dryRun: nil,
            filters: nil,
            includeAllInstances: nil,
            instanceIds: nil,
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeInstanceStatusResult {
    /**
     Default instance of the DescribeInstanceStatusResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeInstanceStatusResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeInstanceStatusResult(
            instanceStatuses: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeInstancesRequest {
    /**
     Default instance of the DescribeInstancesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeInstancesRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeInstancesRequest(
            dryRun: nil,
            filters: nil,
            instanceIds: nil,
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeInstancesResult {
    /**
     Default instance of the DescribeInstancesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeInstancesResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeInstancesResult(
            nextToken: nil,
            reservations: nil)

        return defaultInstance
    }()
}

public extension DescribeInternetGatewaysRequest {
    /**
     Default instance of the DescribeInternetGatewaysRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeInternetGatewaysRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeInternetGatewaysRequest(
            dryRun: nil,
            filters: nil,
            internetGatewayIds: nil)

        return defaultInstance
    }()
}

public extension DescribeInternetGatewaysResult {
    /**
     Default instance of the DescribeInternetGatewaysResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeInternetGatewaysResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeInternetGatewaysResult(
            internetGateways: nil)

        return defaultInstance
    }()
}

public extension DescribeKeyPairsRequest {
    /**
     Default instance of the DescribeKeyPairsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeKeyPairsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeKeyPairsRequest(
            dryRun: nil,
            filters: nil,
            keyNames: nil)

        return defaultInstance
    }()
}

public extension DescribeKeyPairsResult {
    /**
     Default instance of the DescribeKeyPairsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeKeyPairsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeKeyPairsResult(
            keyPairs: nil)

        return defaultInstance
    }()
}

public extension DescribeLaunchTemplateVersionsRequest {
    /**
     Default instance of the DescribeLaunchTemplateVersionsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeLaunchTemplateVersionsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeLaunchTemplateVersionsRequest(
            dryRun: nil,
            filters: nil,
            launchTemplateId: nil,
            launchTemplateName: nil,
            maxResults: nil,
            maxVersion: nil,
            minVersion: nil,
            nextToken: nil,
            versions: nil)

        return defaultInstance
    }()
}

public extension DescribeLaunchTemplateVersionsResult {
    /**
     Default instance of the DescribeLaunchTemplateVersionsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeLaunchTemplateVersionsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeLaunchTemplateVersionsResult(
            launchTemplateVersions: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeLaunchTemplatesRequest {
    /**
     Default instance of the DescribeLaunchTemplatesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeLaunchTemplatesRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeLaunchTemplatesRequest(
            dryRun: nil,
            filters: nil,
            launchTemplateIds: nil,
            launchTemplateNames: nil,
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeLaunchTemplatesResult {
    /**
     Default instance of the DescribeLaunchTemplatesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeLaunchTemplatesResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeLaunchTemplatesResult(
            launchTemplates: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeMovingAddressesRequest {
    /**
     Default instance of the DescribeMovingAddressesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeMovingAddressesRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeMovingAddressesRequest(
            dryRun: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil,
            publicIps: nil)

        return defaultInstance
    }()
}

public extension DescribeMovingAddressesResult {
    /**
     Default instance of the DescribeMovingAddressesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeMovingAddressesResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeMovingAddressesResult(
            movingAddressStatuses: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeNatGatewaysRequest {
    /**
     Default instance of the DescribeNatGatewaysRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeNatGatewaysRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeNatGatewaysRequest(
            filter: nil,
            maxResults: nil,
            natGatewayIds: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeNatGatewaysResult {
    /**
     Default instance of the DescribeNatGatewaysResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeNatGatewaysResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeNatGatewaysResult(
            natGateways: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeNetworkAclsRequest {
    /**
     Default instance of the DescribeNetworkAclsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeNetworkAclsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeNetworkAclsRequest(
            dryRun: nil,
            filters: nil,
            networkAclIds: nil)

        return defaultInstance
    }()
}

public extension DescribeNetworkAclsResult {
    /**
     Default instance of the DescribeNetworkAclsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeNetworkAclsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeNetworkAclsResult(
            networkAcls: nil)

        return defaultInstance
    }()
}

public extension DescribeNetworkInterfaceAttributeRequest {
    /**
     Default instance of the DescribeNetworkInterfaceAttributeRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeRequest(
            attribute: nil,
            dryRun: nil,
            networkInterfaceId: "value")

        return defaultInstance
    }()
}

public extension DescribeNetworkInterfaceAttributeResult {
    /**
     Default instance of the DescribeNetworkInterfaceAttributeResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeResult(
            attachment: nil,
            description: nil,
            groups: nil,
            networkInterfaceId: nil,
            sourceDestCheck: nil)

        return defaultInstance
    }()
}

public extension DescribeNetworkInterfacePermissionsRequest {
    /**
     Default instance of the DescribeNetworkInterfacePermissionsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsRequest(
            filters: nil,
            maxResults: nil,
            networkInterfacePermissionIds: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeNetworkInterfacePermissionsResult {
    /**
     Default instance of the DescribeNetworkInterfacePermissionsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsResult(
            networkInterfacePermissions: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeNetworkInterfacesRequest {
    /**
     Default instance of the DescribeNetworkInterfacesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeNetworkInterfacesRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeNetworkInterfacesRequest(
            dryRun: nil,
            filters: nil,
            maxResults: nil,
            networkInterfaceIds: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeNetworkInterfacesResult {
    /**
     Default instance of the DescribeNetworkInterfacesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeNetworkInterfacesResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeNetworkInterfacesResult(
            networkInterfaces: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribePlacementGroupsRequest {
    /**
     Default instance of the DescribePlacementGroupsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribePlacementGroupsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribePlacementGroupsRequest(
            dryRun: nil,
            filters: nil,
            groupNames: nil)

        return defaultInstance
    }()
}

public extension DescribePlacementGroupsResult {
    /**
     Default instance of the DescribePlacementGroupsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribePlacementGroupsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribePlacementGroupsResult(
            placementGroups: nil)

        return defaultInstance
    }()
}

public extension DescribePrefixListsRequest {
    /**
     Default instance of the DescribePrefixListsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribePrefixListsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribePrefixListsRequest(
            dryRun: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil,
            prefixListIds: nil)

        return defaultInstance
    }()
}

public extension DescribePrefixListsResult {
    /**
     Default instance of the DescribePrefixListsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribePrefixListsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribePrefixListsResult(
            nextToken: nil,
            prefixLists: nil)

        return defaultInstance
    }()
}

public extension DescribePrincipalIdFormatRequest {
    /**
     Default instance of the DescribePrincipalIdFormatRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribePrincipalIdFormatRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribePrincipalIdFormatRequest(
            dryRun: nil,
            maxResults: nil,
            nextToken: nil,
            resources: nil)

        return defaultInstance
    }()
}

public extension DescribePrincipalIdFormatResult {
    /**
     Default instance of the DescribePrincipalIdFormatResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribePrincipalIdFormatResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribePrincipalIdFormatResult(
            nextToken: nil,
            principals: nil)

        return defaultInstance
    }()
}

public extension DescribePublicIpv4PoolsRequest {
    /**
     Default instance of the DescribePublicIpv4PoolsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribePublicIpv4PoolsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribePublicIpv4PoolsRequest(
            maxResults: nil,
            nextToken: nil,
            poolIds: nil)

        return defaultInstance
    }()
}

public extension DescribePublicIpv4PoolsResult {
    /**
     Default instance of the DescribePublicIpv4PoolsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribePublicIpv4PoolsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribePublicIpv4PoolsResult(
            nextToken: nil,
            publicIpv4Pools: nil)

        return defaultInstance
    }()
}

public extension DescribeRegionsRequest {
    /**
     Default instance of the DescribeRegionsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeRegionsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeRegionsRequest(
            dryRun: nil,
            filters: nil,
            regionNames: nil)

        return defaultInstance
    }()
}

public extension DescribeRegionsResult {
    /**
     Default instance of the DescribeRegionsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeRegionsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeRegionsResult(
            regions: nil)

        return defaultInstance
    }()
}

public extension DescribeReservedInstancesListingsRequest {
    /**
     Default instance of the DescribeReservedInstancesListingsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeReservedInstancesListingsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeReservedInstancesListingsRequest(
            filters: nil,
            reservedInstancesId: nil,
            reservedInstancesListingId: nil)

        return defaultInstance
    }()
}

public extension DescribeReservedInstancesListingsResult {
    /**
     Default instance of the DescribeReservedInstancesListingsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeReservedInstancesListingsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeReservedInstancesListingsResult(
            reservedInstancesListings: nil)

        return defaultInstance
    }()
}

public extension DescribeReservedInstancesModificationsRequest {
    /**
     Default instance of the DescribeReservedInstancesModificationsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeReservedInstancesModificationsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeReservedInstancesModificationsRequest(
            filters: nil,
            nextToken: nil,
            reservedInstancesModificationIds: nil)

        return defaultInstance
    }()
}

public extension DescribeReservedInstancesModificationsResult {
    /**
     Default instance of the DescribeReservedInstancesModificationsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeReservedInstancesModificationsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeReservedInstancesModificationsResult(
            nextToken: nil,
            reservedInstancesModifications: nil)

        return defaultInstance
    }()
}

public extension DescribeReservedInstancesOfferingsRequest {
    /**
     Default instance of the DescribeReservedInstancesOfferingsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeReservedInstancesOfferingsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeReservedInstancesOfferingsRequest(
            availabilityZone: nil,
            dryRun: nil,
            filters: nil,
            includeMarketplace: nil,
            instanceTenancy: nil,
            instanceType: nil,
            maxDuration: nil,
            maxInstanceCount: nil,
            maxResults: nil,
            minDuration: nil,
            nextToken: nil,
            offeringClass: nil,
            offeringType: nil,
            productDescription: nil,
            reservedInstancesOfferingIds: nil)

        return defaultInstance
    }()
}

public extension DescribeReservedInstancesOfferingsResult {
    /**
     Default instance of the DescribeReservedInstancesOfferingsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeReservedInstancesOfferingsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeReservedInstancesOfferingsResult(
            nextToken: nil,
            reservedInstancesOfferings: nil)

        return defaultInstance
    }()
}

public extension DescribeReservedInstancesRequest {
    /**
     Default instance of the DescribeReservedInstancesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeReservedInstancesRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeReservedInstancesRequest(
            dryRun: nil,
            filters: nil,
            offeringClass: nil,
            offeringType: nil,
            reservedInstancesIds: nil)

        return defaultInstance
    }()
}

public extension DescribeReservedInstancesResult {
    /**
     Default instance of the DescribeReservedInstancesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeReservedInstancesResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeReservedInstancesResult(
            reservedInstances: nil)

        return defaultInstance
    }()
}

public extension DescribeRouteTablesRequest {
    /**
     Default instance of the DescribeRouteTablesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeRouteTablesRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeRouteTablesRequest(
            dryRun: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil,
            routeTableIds: nil)

        return defaultInstance
    }()
}

public extension DescribeRouteTablesResult {
    /**
     Default instance of the DescribeRouteTablesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeRouteTablesResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeRouteTablesResult(
            nextToken: nil,
            routeTables: nil)

        return defaultInstance
    }()
}

public extension DescribeScheduledInstanceAvailabilityRequest {
    /**
     Default instance of the DescribeScheduledInstanceAvailabilityRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityRequest(
            dryRun: nil,
            filters: nil,
            firstSlotStartTimeRange: SlotDateTimeRangeRequest.__default,
            maxResults: nil,
            maxSlotDurationInHours: nil,
            minSlotDurationInHours: nil,
            nextToken: nil,
            recurrence: ScheduledInstanceRecurrenceRequest.__default)

        return defaultInstance
    }()
}

public extension DescribeScheduledInstanceAvailabilityResult {
    /**
     Default instance of the DescribeScheduledInstanceAvailabilityResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityResult(
            nextToken: nil,
            scheduledInstanceAvailabilitySet: nil)

        return defaultInstance
    }()
}

public extension DescribeScheduledInstancesRequest {
    /**
     Default instance of the DescribeScheduledInstancesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeScheduledInstancesRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeScheduledInstancesRequest(
            dryRun: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil,
            scheduledInstanceIds: nil,
            slotStartTimeRange: nil)

        return defaultInstance
    }()
}

public extension DescribeScheduledInstancesResult {
    /**
     Default instance of the DescribeScheduledInstancesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeScheduledInstancesResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeScheduledInstancesResult(
            nextToken: nil,
            scheduledInstanceSet: nil)

        return defaultInstance
    }()
}

public extension DescribeSecurityGroupReferencesRequest {
    /**
     Default instance of the DescribeSecurityGroupReferencesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeSecurityGroupReferencesRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeSecurityGroupReferencesRequest(
            dryRun: nil,
            groupId: [])

        return defaultInstance
    }()
}

public extension DescribeSecurityGroupReferencesResult {
    /**
     Default instance of the DescribeSecurityGroupReferencesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeSecurityGroupReferencesResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeSecurityGroupReferencesResult(
            securityGroupReferenceSet: nil)

        return defaultInstance
    }()
}

public extension DescribeSecurityGroupsRequest {
    /**
     Default instance of the DescribeSecurityGroupsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeSecurityGroupsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeSecurityGroupsRequest(
            dryRun: nil,
            filters: nil,
            groupIds: nil,
            groupNames: nil,
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeSecurityGroupsResult {
    /**
     Default instance of the DescribeSecurityGroupsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeSecurityGroupsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeSecurityGroupsResult(
            nextToken: nil,
            securityGroups: nil)

        return defaultInstance
    }()
}

public extension DescribeSnapshotAttributeRequest {
    /**
     Default instance of the DescribeSnapshotAttributeRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeSnapshotAttributeRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeSnapshotAttributeRequest(
            attribute: .__default,
            dryRun: nil,
            snapshotId: "value")

        return defaultInstance
    }()
}

public extension DescribeSnapshotAttributeResult {
    /**
     Default instance of the DescribeSnapshotAttributeResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeSnapshotAttributeResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeSnapshotAttributeResult(
            createVolumePermissions: nil,
            productCodes: nil,
            snapshotId: nil)

        return defaultInstance
    }()
}

public extension DescribeSnapshotsRequest {
    /**
     Default instance of the DescribeSnapshotsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeSnapshotsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeSnapshotsRequest(
            dryRun: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil,
            ownerIds: nil,
            restorableByUserIds: nil,
            snapshotIds: nil)

        return defaultInstance
    }()
}

public extension DescribeSnapshotsResult {
    /**
     Default instance of the DescribeSnapshotsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeSnapshotsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeSnapshotsResult(
            nextToken: nil,
            snapshots: nil)

        return defaultInstance
    }()
}

public extension DescribeSpotDatafeedSubscriptionRequest {
    /**
     Default instance of the DescribeSpotDatafeedSubscriptionRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionRequest(
            dryRun: nil)

        return defaultInstance
    }()
}

public extension DescribeSpotDatafeedSubscriptionResult {
    /**
     Default instance of the DescribeSpotDatafeedSubscriptionResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionResult(
            spotDatafeedSubscription: nil)

        return defaultInstance
    }()
}

public extension DescribeSpotFleetInstancesRequest {
    /**
     Default instance of the DescribeSpotFleetInstancesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeSpotFleetInstancesRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeSpotFleetInstancesRequest(
            dryRun: nil,
            maxResults: nil,
            nextToken: nil,
            spotFleetRequestId: "value")

        return defaultInstance
    }()
}

public extension DescribeSpotFleetInstancesResponse {
    /**
     Default instance of the DescribeSpotFleetInstancesResponse structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeSpotFleetInstancesResponse = {
        let defaultInstance = ElasticComputeCloudModel.DescribeSpotFleetInstancesResponse(
            activeInstances: nil,
            nextToken: nil,
            spotFleetRequestId: nil)

        return defaultInstance
    }()
}

public extension DescribeSpotFleetRequestHistoryRequest {
    /**
     Default instance of the DescribeSpotFleetRequestHistoryRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryRequest(
            dryRun: nil,
            eventType: nil,
            maxResults: nil,
            nextToken: nil,
            spotFleetRequestId: "value",
            startTime: "2013-02-18T17:00:00Z")

        return defaultInstance
    }()
}

public extension DescribeSpotFleetRequestHistoryResponse {
    /**
     Default instance of the DescribeSpotFleetRequestHistoryResponse structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryResponse = {
        let defaultInstance = ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryResponse(
            historyRecords: nil,
            lastEvaluatedTime: nil,
            nextToken: nil,
            spotFleetRequestId: nil,
            startTime: nil)

        return defaultInstance
    }()
}

public extension DescribeSpotFleetRequestsRequest {
    /**
     Default instance of the DescribeSpotFleetRequestsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeSpotFleetRequestsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeSpotFleetRequestsRequest(
            dryRun: nil,
            maxResults: nil,
            nextToken: nil,
            spotFleetRequestIds: nil)

        return defaultInstance
    }()
}

public extension DescribeSpotFleetRequestsResponse {
    /**
     Default instance of the DescribeSpotFleetRequestsResponse structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeSpotFleetRequestsResponse = {
        let defaultInstance = ElasticComputeCloudModel.DescribeSpotFleetRequestsResponse(
            nextToken: nil,
            spotFleetRequestConfigs: nil)

        return defaultInstance
    }()
}

public extension DescribeSpotInstanceRequestsRequest {
    /**
     Default instance of the DescribeSpotInstanceRequestsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeSpotInstanceRequestsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeSpotInstanceRequestsRequest(
            dryRun: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil,
            spotInstanceRequestIds: nil)

        return defaultInstance
    }()
}

public extension DescribeSpotInstanceRequestsResult {
    /**
     Default instance of the DescribeSpotInstanceRequestsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeSpotInstanceRequestsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeSpotInstanceRequestsResult(
            nextToken: nil,
            spotInstanceRequests: nil)

        return defaultInstance
    }()
}

public extension DescribeSpotPriceHistoryRequest {
    /**
     Default instance of the DescribeSpotPriceHistoryRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeSpotPriceHistoryRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeSpotPriceHistoryRequest(
            availabilityZone: nil,
            dryRun: nil,
            endTime: nil,
            filters: nil,
            instanceTypes: nil,
            maxResults: nil,
            nextToken: nil,
            productDescriptions: nil,
            startTime: nil)

        return defaultInstance
    }()
}

public extension DescribeSpotPriceHistoryResult {
    /**
     Default instance of the DescribeSpotPriceHistoryResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeSpotPriceHistoryResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeSpotPriceHistoryResult(
            nextToken: nil,
            spotPriceHistory: nil)

        return defaultInstance
    }()
}

public extension DescribeStaleSecurityGroupsRequest {
    /**
     Default instance of the DescribeStaleSecurityGroupsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeStaleSecurityGroupsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeStaleSecurityGroupsRequest(
            dryRun: nil,
            maxResults: nil,
            nextToken: nil,
            vpcId: "value")

        return defaultInstance
    }()
}

public extension DescribeStaleSecurityGroupsResult {
    /**
     Default instance of the DescribeStaleSecurityGroupsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeStaleSecurityGroupsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeStaleSecurityGroupsResult(
            nextToken: nil,
            staleSecurityGroupSet: nil)

        return defaultInstance
    }()
}

public extension DescribeSubnetsRequest {
    /**
     Default instance of the DescribeSubnetsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeSubnetsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeSubnetsRequest(
            dryRun: nil,
            filters: nil,
            subnetIds: nil)

        return defaultInstance
    }()
}

public extension DescribeSubnetsResult {
    /**
     Default instance of the DescribeSubnetsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeSubnetsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeSubnetsResult(
            subnets: nil)

        return defaultInstance
    }()
}

public extension DescribeTagsRequest {
    /**
     Default instance of the DescribeTagsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeTagsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeTagsRequest(
            dryRun: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeTagsResult {
    /**
     Default instance of the DescribeTagsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeTagsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeTagsResult(
            nextToken: nil,
            tags: nil)

        return defaultInstance
    }()
}

public extension DescribeTransitGatewayAttachmentsRequest {
    /**
     Default instance of the DescribeTransitGatewayAttachmentsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsRequest(
            dryRun: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil,
            transitGatewayAttachmentIds: nil)

        return defaultInstance
    }()
}

public extension DescribeTransitGatewayAttachmentsResult {
    /**
     Default instance of the DescribeTransitGatewayAttachmentsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsResult(
            nextToken: nil,
            transitGatewayAttachments: nil)

        return defaultInstance
    }()
}

public extension DescribeTransitGatewayRouteTablesRequest {
    /**
     Default instance of the DescribeTransitGatewayRouteTablesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesRequest(
            dryRun: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil,
            transitGatewayRouteTableIds: nil)

        return defaultInstance
    }()
}

public extension DescribeTransitGatewayRouteTablesResult {
    /**
     Default instance of the DescribeTransitGatewayRouteTablesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesResult(
            nextToken: nil,
            transitGatewayRouteTables: nil)

        return defaultInstance
    }()
}

public extension DescribeTransitGatewayVpcAttachmentsRequest {
    /**
     Default instance of the DescribeTransitGatewayVpcAttachmentsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsRequest(
            dryRun: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil,
            transitGatewayAttachmentIds: nil)

        return defaultInstance
    }()
}

public extension DescribeTransitGatewayVpcAttachmentsResult {
    /**
     Default instance of the DescribeTransitGatewayVpcAttachmentsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsResult(
            nextToken: nil,
            transitGatewayVpcAttachments: nil)

        return defaultInstance
    }()
}

public extension DescribeTransitGatewaysRequest {
    /**
     Default instance of the DescribeTransitGatewaysRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeTransitGatewaysRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeTransitGatewaysRequest(
            dryRun: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil,
            transitGatewayIds: nil)

        return defaultInstance
    }()
}

public extension DescribeTransitGatewaysResult {
    /**
     Default instance of the DescribeTransitGatewaysResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeTransitGatewaysResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeTransitGatewaysResult(
            nextToken: nil,
            transitGateways: nil)

        return defaultInstance
    }()
}

public extension DescribeVolumeAttributeRequest {
    /**
     Default instance of the DescribeVolumeAttributeRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVolumeAttributeRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVolumeAttributeRequest(
            attribute: .__default,
            dryRun: nil,
            volumeId: "value")

        return defaultInstance
    }()
}

public extension DescribeVolumeAttributeResult {
    /**
     Default instance of the DescribeVolumeAttributeResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVolumeAttributeResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVolumeAttributeResult(
            autoEnableIO: nil,
            productCodes: nil,
            volumeId: nil)

        return defaultInstance
    }()
}

public extension DescribeVolumeStatusRequest {
    /**
     Default instance of the DescribeVolumeStatusRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVolumeStatusRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVolumeStatusRequest(
            dryRun: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil,
            volumeIds: nil)

        return defaultInstance
    }()
}

public extension DescribeVolumeStatusResult {
    /**
     Default instance of the DescribeVolumeStatusResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVolumeStatusResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVolumeStatusResult(
            nextToken: nil,
            volumeStatuses: nil)

        return defaultInstance
    }()
}

public extension DescribeVolumesModificationsRequest {
    /**
     Default instance of the DescribeVolumesModificationsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVolumesModificationsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVolumesModificationsRequest(
            dryRun: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil,
            volumeIds: nil)

        return defaultInstance
    }()
}

public extension DescribeVolumesModificationsResult {
    /**
     Default instance of the DescribeVolumesModificationsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVolumesModificationsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVolumesModificationsResult(
            nextToken: nil,
            volumesModifications: nil)

        return defaultInstance
    }()
}

public extension DescribeVolumesRequest {
    /**
     Default instance of the DescribeVolumesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVolumesRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVolumesRequest(
            dryRun: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil,
            volumeIds: nil)

        return defaultInstance
    }()
}

public extension DescribeVolumesResult {
    /**
     Default instance of the DescribeVolumesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVolumesResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVolumesResult(
            nextToken: nil,
            volumes: nil)

        return defaultInstance
    }()
}

public extension DescribeVpcAttributeRequest {
    /**
     Default instance of the DescribeVpcAttributeRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVpcAttributeRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVpcAttributeRequest(
            attribute: .__default,
            dryRun: nil,
            vpcId: "value")

        return defaultInstance
    }()
}

public extension DescribeVpcAttributeResult {
    /**
     Default instance of the DescribeVpcAttributeResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVpcAttributeResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVpcAttributeResult(
            enableDnsHostnames: nil,
            enableDnsSupport: nil,
            vpcId: nil)

        return defaultInstance
    }()
}

public extension DescribeVpcClassicLinkDnsSupportRequest {
    /**
     Default instance of the DescribeVpcClassicLinkDnsSupportRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportRequest(
            maxResults: nil,
            nextToken: nil,
            vpcIds: nil)

        return defaultInstance
    }()
}

public extension DescribeVpcClassicLinkDnsSupportResult {
    /**
     Default instance of the DescribeVpcClassicLinkDnsSupportResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportResult(
            nextToken: nil,
            vpcs: nil)

        return defaultInstance
    }()
}

public extension DescribeVpcClassicLinkRequest {
    /**
     Default instance of the DescribeVpcClassicLinkRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVpcClassicLinkRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVpcClassicLinkRequest(
            dryRun: nil,
            filters: nil,
            vpcIds: nil)

        return defaultInstance
    }()
}

public extension DescribeVpcClassicLinkResult {
    /**
     Default instance of the DescribeVpcClassicLinkResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVpcClassicLinkResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVpcClassicLinkResult(
            vpcs: nil)

        return defaultInstance
    }()
}

public extension DescribeVpcEndpointConnectionNotificationsRequest {
    /**
     Default instance of the DescribeVpcEndpointConnectionNotificationsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsRequest(
            connectionNotificationId: nil,
            dryRun: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeVpcEndpointConnectionNotificationsResult {
    /**
     Default instance of the DescribeVpcEndpointConnectionNotificationsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsResult(
            connectionNotificationSet: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeVpcEndpointConnectionsRequest {
    /**
     Default instance of the DescribeVpcEndpointConnectionsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVpcEndpointConnectionsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVpcEndpointConnectionsRequest(
            dryRun: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeVpcEndpointConnectionsResult {
    /**
     Default instance of the DescribeVpcEndpointConnectionsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVpcEndpointConnectionsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVpcEndpointConnectionsResult(
            nextToken: nil,
            vpcEndpointConnections: nil)

        return defaultInstance
    }()
}

public extension DescribeVpcEndpointServiceConfigurationsRequest {
    /**
     Default instance of the DescribeVpcEndpointServiceConfigurationsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsRequest(
            dryRun: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil,
            serviceIds: nil)

        return defaultInstance
    }()
}

public extension DescribeVpcEndpointServiceConfigurationsResult {
    /**
     Default instance of the DescribeVpcEndpointServiceConfigurationsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsResult(
            nextToken: nil,
            serviceConfigurations: nil)

        return defaultInstance
    }()
}

public extension DescribeVpcEndpointServicePermissionsRequest {
    /**
     Default instance of the DescribeVpcEndpointServicePermissionsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsRequest(
            dryRun: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil,
            serviceId: "value")

        return defaultInstance
    }()
}

public extension DescribeVpcEndpointServicePermissionsResult {
    /**
     Default instance of the DescribeVpcEndpointServicePermissionsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsResult(
            allowedPrincipals: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeVpcEndpointServicesRequest {
    /**
     Default instance of the DescribeVpcEndpointServicesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVpcEndpointServicesRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVpcEndpointServicesRequest(
            dryRun: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil,
            serviceNames: nil)

        return defaultInstance
    }()
}

public extension DescribeVpcEndpointServicesResult {
    /**
     Default instance of the DescribeVpcEndpointServicesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVpcEndpointServicesResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVpcEndpointServicesResult(
            nextToken: nil,
            serviceDetails: nil,
            serviceNames: nil)

        return defaultInstance
    }()
}

public extension DescribeVpcEndpointsRequest {
    /**
     Default instance of the DescribeVpcEndpointsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVpcEndpointsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVpcEndpointsRequest(
            dryRun: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil,
            vpcEndpointIds: nil)

        return defaultInstance
    }()
}

public extension DescribeVpcEndpointsResult {
    /**
     Default instance of the DescribeVpcEndpointsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVpcEndpointsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVpcEndpointsResult(
            nextToken: nil,
            vpcEndpoints: nil)

        return defaultInstance
    }()
}

public extension DescribeVpcPeeringConnectionsRequest {
    /**
     Default instance of the DescribeVpcPeeringConnectionsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVpcPeeringConnectionsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVpcPeeringConnectionsRequest(
            dryRun: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil,
            vpcPeeringConnectionIds: nil)

        return defaultInstance
    }()
}

public extension DescribeVpcPeeringConnectionsResult {
    /**
     Default instance of the DescribeVpcPeeringConnectionsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVpcPeeringConnectionsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVpcPeeringConnectionsResult(
            nextToken: nil,
            vpcPeeringConnections: nil)

        return defaultInstance
    }()
}

public extension DescribeVpcsRequest {
    /**
     Default instance of the DescribeVpcsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVpcsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVpcsRequest(
            dryRun: nil,
            filters: nil,
            vpcIds: nil)

        return defaultInstance
    }()
}

public extension DescribeVpcsResult {
    /**
     Default instance of the DescribeVpcsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVpcsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVpcsResult(
            vpcs: nil)

        return defaultInstance
    }()
}

public extension DescribeVpnConnectionsRequest {
    /**
     Default instance of the DescribeVpnConnectionsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVpnConnectionsRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVpnConnectionsRequest(
            dryRun: nil,
            filters: nil,
            vpnConnectionIds: nil)

        return defaultInstance
    }()
}

public extension DescribeVpnConnectionsResult {
    /**
     Default instance of the DescribeVpnConnectionsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVpnConnectionsResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVpnConnectionsResult(
            vpnConnections: nil)

        return defaultInstance
    }()
}

public extension DescribeVpnGatewaysRequest {
    /**
     Default instance of the DescribeVpnGatewaysRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVpnGatewaysRequest = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVpnGatewaysRequest(
            dryRun: nil,
            filters: nil,
            vpnGatewayIds: nil)

        return defaultInstance
    }()
}

public extension DescribeVpnGatewaysResult {
    /**
     Default instance of the DescribeVpnGatewaysResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DescribeVpnGatewaysResult = {
        let defaultInstance = ElasticComputeCloudModel.DescribeVpnGatewaysResult(
            vpnGateways: nil)

        return defaultInstance
    }()
}

public extension DetachClassicLinkVpcRequest {
    /**
     Default instance of the DetachClassicLinkVpcRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DetachClassicLinkVpcRequest = {
        let defaultInstance = ElasticComputeCloudModel.DetachClassicLinkVpcRequest(
            dryRun: nil,
            instanceId: "value",
            vpcId: "value")

        return defaultInstance
    }()
}

public extension DetachClassicLinkVpcResult {
    /**
     Default instance of the DetachClassicLinkVpcResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DetachClassicLinkVpcResult = {
        let defaultInstance = ElasticComputeCloudModel.DetachClassicLinkVpcResult(
            return: nil)

        return defaultInstance
    }()
}

public extension DetachInternetGatewayRequest {
    /**
     Default instance of the DetachInternetGatewayRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DetachInternetGatewayRequest = {
        let defaultInstance = ElasticComputeCloudModel.DetachInternetGatewayRequest(
            dryRun: nil,
            internetGatewayId: "value",
            vpcId: "value")

        return defaultInstance
    }()
}

public extension DetachNetworkInterfaceRequest {
    /**
     Default instance of the DetachNetworkInterfaceRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DetachNetworkInterfaceRequest = {
        let defaultInstance = ElasticComputeCloudModel.DetachNetworkInterfaceRequest(
            attachmentId: "value",
            dryRun: nil,
            force: nil)

        return defaultInstance
    }()
}

public extension DetachVolumeRequest {
    /**
     Default instance of the DetachVolumeRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DetachVolumeRequest = {
        let defaultInstance = ElasticComputeCloudModel.DetachVolumeRequest(
            device: nil,
            dryRun: nil,
            force: nil,
            instanceId: nil,
            volumeId: "value")

        return defaultInstance
    }()
}

public extension DetachVpnGatewayRequest {
    /**
     Default instance of the DetachVpnGatewayRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DetachVpnGatewayRequest = {
        let defaultInstance = ElasticComputeCloudModel.DetachVpnGatewayRequest(
            dryRun: nil,
            vpcId: "value",
            vpnGatewayId: "value")

        return defaultInstance
    }()
}

public extension DhcpConfiguration {
    /**
     Default instance of the DhcpConfiguration structure.
     */
    public static let __default: ElasticComputeCloudModel.DhcpConfiguration = {
        let defaultInstance = ElasticComputeCloudModel.DhcpConfiguration(
            key: nil,
            values: nil)

        return defaultInstance
    }()
}

public extension DhcpOptions {
    /**
     Default instance of the DhcpOptions structure.
     */
    public static let __default: ElasticComputeCloudModel.DhcpOptions = {
        let defaultInstance = ElasticComputeCloudModel.DhcpOptions(
            dhcpConfigurations: nil,
            dhcpOptionsId: nil,
            ownerId: nil,
            tags: nil)

        return defaultInstance
    }()
}

public extension DirectoryServiceAuthentication {
    /**
     Default instance of the DirectoryServiceAuthentication structure.
     */
    public static let __default: ElasticComputeCloudModel.DirectoryServiceAuthentication = {
        let defaultInstance = ElasticComputeCloudModel.DirectoryServiceAuthentication(
            directoryId: nil)

        return defaultInstance
    }()
}

public extension DirectoryServiceAuthenticationRequest {
    /**
     Default instance of the DirectoryServiceAuthenticationRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DirectoryServiceAuthenticationRequest = {
        let defaultInstance = ElasticComputeCloudModel.DirectoryServiceAuthenticationRequest(
            directoryId: nil)

        return defaultInstance
    }()
}

public extension DisableTransitGatewayRouteTablePropagationRequest {
    /**
     Default instance of the DisableTransitGatewayRouteTablePropagationRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationRequest = {
        let defaultInstance = ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationRequest(
            dryRun: nil,
            transitGatewayAttachmentId: "value",
            transitGatewayRouteTableId: "value")

        return defaultInstance
    }()
}

public extension DisableTransitGatewayRouteTablePropagationResult {
    /**
     Default instance of the DisableTransitGatewayRouteTablePropagationResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationResult = {
        let defaultInstance = ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationResult(
            propagation: nil)

        return defaultInstance
    }()
}

public extension DisableVgwRoutePropagationRequest {
    /**
     Default instance of the DisableVgwRoutePropagationRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DisableVgwRoutePropagationRequest = {
        let defaultInstance = ElasticComputeCloudModel.DisableVgwRoutePropagationRequest(
            gatewayId: "value",
            routeTableId: "value")

        return defaultInstance
    }()
}

public extension DisableVpcClassicLinkDnsSupportRequest {
    /**
     Default instance of the DisableVpcClassicLinkDnsSupportRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportRequest = {
        let defaultInstance = ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportRequest(
            vpcId: nil)

        return defaultInstance
    }()
}

public extension DisableVpcClassicLinkDnsSupportResult {
    /**
     Default instance of the DisableVpcClassicLinkDnsSupportResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportResult = {
        let defaultInstance = ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportResult(
            return: nil)

        return defaultInstance
    }()
}

public extension DisableVpcClassicLinkRequest {
    /**
     Default instance of the DisableVpcClassicLinkRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DisableVpcClassicLinkRequest = {
        let defaultInstance = ElasticComputeCloudModel.DisableVpcClassicLinkRequest(
            dryRun: nil,
            vpcId: "value")

        return defaultInstance
    }()
}

public extension DisableVpcClassicLinkResult {
    /**
     Default instance of the DisableVpcClassicLinkResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DisableVpcClassicLinkResult = {
        let defaultInstance = ElasticComputeCloudModel.DisableVpcClassicLinkResult(
            return: nil)

        return defaultInstance
    }()
}

public extension DisassociateAddressRequest {
    /**
     Default instance of the DisassociateAddressRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DisassociateAddressRequest = {
        let defaultInstance = ElasticComputeCloudModel.DisassociateAddressRequest(
            associationId: nil,
            dryRun: nil,
            publicIp: nil)

        return defaultInstance
    }()
}

public extension DisassociateClientVpnTargetNetworkRequest {
    /**
     Default instance of the DisassociateClientVpnTargetNetworkRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkRequest = {
        let defaultInstance = ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkRequest(
            associationId: "value",
            clientVpnEndpointId: "value",
            dryRun: nil)

        return defaultInstance
    }()
}

public extension DisassociateClientVpnTargetNetworkResult {
    /**
     Default instance of the DisassociateClientVpnTargetNetworkResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkResult = {
        let defaultInstance = ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkResult(
            associationId: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension DisassociateIamInstanceProfileRequest {
    /**
     Default instance of the DisassociateIamInstanceProfileRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DisassociateIamInstanceProfileRequest = {
        let defaultInstance = ElasticComputeCloudModel.DisassociateIamInstanceProfileRequest(
            associationId: "value")

        return defaultInstance
    }()
}

public extension DisassociateIamInstanceProfileResult {
    /**
     Default instance of the DisassociateIamInstanceProfileResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DisassociateIamInstanceProfileResult = {
        let defaultInstance = ElasticComputeCloudModel.DisassociateIamInstanceProfileResult(
            iamInstanceProfileAssociation: nil)

        return defaultInstance
    }()
}

public extension DisassociateRouteTableRequest {
    /**
     Default instance of the DisassociateRouteTableRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DisassociateRouteTableRequest = {
        let defaultInstance = ElasticComputeCloudModel.DisassociateRouteTableRequest(
            associationId: "value",
            dryRun: nil)

        return defaultInstance
    }()
}

public extension DisassociateSubnetCidrBlockRequest {
    /**
     Default instance of the DisassociateSubnetCidrBlockRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DisassociateSubnetCidrBlockRequest = {
        let defaultInstance = ElasticComputeCloudModel.DisassociateSubnetCidrBlockRequest(
            associationId: "value")

        return defaultInstance
    }()
}

public extension DisassociateSubnetCidrBlockResult {
    /**
     Default instance of the DisassociateSubnetCidrBlockResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DisassociateSubnetCidrBlockResult = {
        let defaultInstance = ElasticComputeCloudModel.DisassociateSubnetCidrBlockResult(
            ipv6CidrBlockAssociation: nil,
            subnetId: nil)

        return defaultInstance
    }()
}

public extension DisassociateTransitGatewayRouteTableRequest {
    /**
     Default instance of the DisassociateTransitGatewayRouteTableRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableRequest = {
        let defaultInstance = ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableRequest(
            dryRun: nil,
            transitGatewayAttachmentId: "value",
            transitGatewayRouteTableId: "value")

        return defaultInstance
    }()
}

public extension DisassociateTransitGatewayRouteTableResult {
    /**
     Default instance of the DisassociateTransitGatewayRouteTableResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableResult = {
        let defaultInstance = ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableResult(
            association: nil)

        return defaultInstance
    }()
}

public extension DisassociateVpcCidrBlockRequest {
    /**
     Default instance of the DisassociateVpcCidrBlockRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.DisassociateVpcCidrBlockRequest = {
        let defaultInstance = ElasticComputeCloudModel.DisassociateVpcCidrBlockRequest(
            associationId: "value")

        return defaultInstance
    }()
}

public extension DisassociateVpcCidrBlockResult {
    /**
     Default instance of the DisassociateVpcCidrBlockResult structure.
     */
    public static let __default: ElasticComputeCloudModel.DisassociateVpcCidrBlockResult = {
        let defaultInstance = ElasticComputeCloudModel.DisassociateVpcCidrBlockResult(
            cidrBlockAssociation: nil,
            ipv6CidrBlockAssociation: nil,
            vpcId: nil)

        return defaultInstance
    }()
}

public extension DiskImage {
    /**
     Default instance of the DiskImage structure.
     */
    public static let __default: ElasticComputeCloudModel.DiskImage = {
        let defaultInstance = ElasticComputeCloudModel.DiskImage(
            description: nil,
            image: nil,
            volume: nil)

        return defaultInstance
    }()
}

public extension DiskImageDescription {
    /**
     Default instance of the DiskImageDescription structure.
     */
    public static let __default: ElasticComputeCloudModel.DiskImageDescription = {
        let defaultInstance = ElasticComputeCloudModel.DiskImageDescription(
            checksum: nil,
            format: nil,
            importManifestUrl: nil,
            size: nil)

        return defaultInstance
    }()
}

public extension DiskImageDetail {
    /**
     Default instance of the DiskImageDetail structure.
     */
    public static let __default: ElasticComputeCloudModel.DiskImageDetail = {
        let defaultInstance = ElasticComputeCloudModel.DiskImageDetail(
            bytes: 0,
            format: .__default,
            importManifestUrl: "value")

        return defaultInstance
    }()
}

public extension DiskImageVolumeDescription {
    /**
     Default instance of the DiskImageVolumeDescription structure.
     */
    public static let __default: ElasticComputeCloudModel.DiskImageVolumeDescription = {
        let defaultInstance = ElasticComputeCloudModel.DiskImageVolumeDescription(
            id: nil,
            size: nil)

        return defaultInstance
    }()
}

public extension DnsEntry {
    /**
     Default instance of the DnsEntry structure.
     */
    public static let __default: ElasticComputeCloudModel.DnsEntry = {
        let defaultInstance = ElasticComputeCloudModel.DnsEntry(
            dnsName: nil,
            hostedZoneId: nil)

        return defaultInstance
    }()
}

public extension DnsServersOptionsModifyStructure {
    /**
     Default instance of the DnsServersOptionsModifyStructure structure.
     */
    public static let __default: ElasticComputeCloudModel.DnsServersOptionsModifyStructure = {
        let defaultInstance = ElasticComputeCloudModel.DnsServersOptionsModifyStructure(
            customDnsServers: nil,
            enabled: nil)

        return defaultInstance
    }()
}

public extension EbsBlockDevice {
    /**
     Default instance of the EbsBlockDevice structure.
     */
    public static let __default: ElasticComputeCloudModel.EbsBlockDevice = {
        let defaultInstance = ElasticComputeCloudModel.EbsBlockDevice(
            deleteOnTermination: nil,
            encrypted: nil,
            iops: nil,
            kmsKeyId: nil,
            snapshotId: nil,
            volumeSize: nil,
            volumeType: nil)

        return defaultInstance
    }()
}

public extension EbsInstanceBlockDevice {
    /**
     Default instance of the EbsInstanceBlockDevice structure.
     */
    public static let __default: ElasticComputeCloudModel.EbsInstanceBlockDevice = {
        let defaultInstance = ElasticComputeCloudModel.EbsInstanceBlockDevice(
            attachTime: nil,
            deleteOnTermination: nil,
            status: nil,
            volumeId: nil)

        return defaultInstance
    }()
}

public extension EbsInstanceBlockDeviceSpecification {
    /**
     Default instance of the EbsInstanceBlockDeviceSpecification structure.
     */
    public static let __default: ElasticComputeCloudModel.EbsInstanceBlockDeviceSpecification = {
        let defaultInstance = ElasticComputeCloudModel.EbsInstanceBlockDeviceSpecification(
            deleteOnTermination: nil,
            volumeId: nil)

        return defaultInstance
    }()
}

public extension EgressOnlyInternetGateway {
    /**
     Default instance of the EgressOnlyInternetGateway structure.
     */
    public static let __default: ElasticComputeCloudModel.EgressOnlyInternetGateway = {
        let defaultInstance = ElasticComputeCloudModel.EgressOnlyInternetGateway(
            attachments: nil,
            egressOnlyInternetGatewayId: nil)

        return defaultInstance
    }()
}

public extension ElasticGpuAssociation {
    /**
     Default instance of the ElasticGpuAssociation structure.
     */
    public static let __default: ElasticComputeCloudModel.ElasticGpuAssociation = {
        let defaultInstance = ElasticComputeCloudModel.ElasticGpuAssociation(
            elasticGpuAssociationId: nil,
            elasticGpuAssociationState: nil,
            elasticGpuAssociationTime: nil,
            elasticGpuId: nil)

        return defaultInstance
    }()
}

public extension ElasticGpuHealth {
    /**
     Default instance of the ElasticGpuHealth structure.
     */
    public static let __default: ElasticComputeCloudModel.ElasticGpuHealth = {
        let defaultInstance = ElasticComputeCloudModel.ElasticGpuHealth(
            status: nil)

        return defaultInstance
    }()
}

public extension ElasticGpuSpecification {
    /**
     Default instance of the ElasticGpuSpecification structure.
     */
    public static let __default: ElasticComputeCloudModel.ElasticGpuSpecification = {
        let defaultInstance = ElasticComputeCloudModel.ElasticGpuSpecification(
            type: "value")

        return defaultInstance
    }()
}

public extension ElasticGpuSpecificationResponse {
    /**
     Default instance of the ElasticGpuSpecificationResponse structure.
     */
    public static let __default: ElasticComputeCloudModel.ElasticGpuSpecificationResponse = {
        let defaultInstance = ElasticComputeCloudModel.ElasticGpuSpecificationResponse(
            type: nil)

        return defaultInstance
    }()
}

public extension ElasticGpus {
    /**
     Default instance of the ElasticGpus structure.
     */
    public static let __default: ElasticComputeCloudModel.ElasticGpus = {
        let defaultInstance = ElasticComputeCloudModel.ElasticGpus(
            availabilityZone: nil,
            elasticGpuHealth: nil,
            elasticGpuId: nil,
            elasticGpuState: nil,
            elasticGpuType: nil,
            instanceId: nil)

        return defaultInstance
    }()
}

public extension ElasticInferenceAccelerator {
    /**
     Default instance of the ElasticInferenceAccelerator structure.
     */
    public static let __default: ElasticComputeCloudModel.ElasticInferenceAccelerator = {
        let defaultInstance = ElasticComputeCloudModel.ElasticInferenceAccelerator(
            type: "value")

        return defaultInstance
    }()
}

public extension ElasticInferenceAcceleratorAssociation {
    /**
     Default instance of the ElasticInferenceAcceleratorAssociation structure.
     */
    public static let __default: ElasticComputeCloudModel.ElasticInferenceAcceleratorAssociation = {
        let defaultInstance = ElasticComputeCloudModel.ElasticInferenceAcceleratorAssociation(
            elasticInferenceAcceleratorArn: nil,
            elasticInferenceAcceleratorAssociationId: nil,
            elasticInferenceAcceleratorAssociationState: nil,
            elasticInferenceAcceleratorAssociationTime: nil)

        return defaultInstance
    }()
}

public extension EnableTransitGatewayRouteTablePropagationRequest {
    /**
     Default instance of the EnableTransitGatewayRouteTablePropagationRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationRequest = {
        let defaultInstance = ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationRequest(
            dryRun: nil,
            transitGatewayAttachmentId: "value",
            transitGatewayRouteTableId: "value")

        return defaultInstance
    }()
}

public extension EnableTransitGatewayRouteTablePropagationResult {
    /**
     Default instance of the EnableTransitGatewayRouteTablePropagationResult structure.
     */
    public static let __default: ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationResult = {
        let defaultInstance = ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationResult(
            propagation: nil)

        return defaultInstance
    }()
}

public extension EnableVgwRoutePropagationRequest {
    /**
     Default instance of the EnableVgwRoutePropagationRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.EnableVgwRoutePropagationRequest = {
        let defaultInstance = ElasticComputeCloudModel.EnableVgwRoutePropagationRequest(
            gatewayId: "value",
            routeTableId: "value")

        return defaultInstance
    }()
}

public extension EnableVolumeIORequest {
    /**
     Default instance of the EnableVolumeIORequest structure.
     */
    public static let __default: ElasticComputeCloudModel.EnableVolumeIORequest = {
        let defaultInstance = ElasticComputeCloudModel.EnableVolumeIORequest(
            dryRun: nil,
            volumeId: "value")

        return defaultInstance
    }()
}

public extension EnableVpcClassicLinkDnsSupportRequest {
    /**
     Default instance of the EnableVpcClassicLinkDnsSupportRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportRequest = {
        let defaultInstance = ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportRequest(
            vpcId: nil)

        return defaultInstance
    }()
}

public extension EnableVpcClassicLinkDnsSupportResult {
    /**
     Default instance of the EnableVpcClassicLinkDnsSupportResult structure.
     */
    public static let __default: ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportResult = {
        let defaultInstance = ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportResult(
            return: nil)

        return defaultInstance
    }()
}

public extension EnableVpcClassicLinkRequest {
    /**
     Default instance of the EnableVpcClassicLinkRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.EnableVpcClassicLinkRequest = {
        let defaultInstance = ElasticComputeCloudModel.EnableVpcClassicLinkRequest(
            dryRun: nil,
            vpcId: "value")

        return defaultInstance
    }()
}

public extension EnableVpcClassicLinkResult {
    /**
     Default instance of the EnableVpcClassicLinkResult structure.
     */
    public static let __default: ElasticComputeCloudModel.EnableVpcClassicLinkResult = {
        let defaultInstance = ElasticComputeCloudModel.EnableVpcClassicLinkResult(
            return: nil)

        return defaultInstance
    }()
}

public extension EventInformation {
    /**
     Default instance of the EventInformation structure.
     */
    public static let __default: ElasticComputeCloudModel.EventInformation = {
        let defaultInstance = ElasticComputeCloudModel.EventInformation(
            eventDescription: nil,
            eventSubType: nil,
            instanceId: nil)

        return defaultInstance
    }()
}

public extension ExportClientVpnClientCertificateRevocationListRequest {
    /**
     Default instance of the ExportClientVpnClientCertificateRevocationListRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListRequest = {
        let defaultInstance = ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListRequest(
            clientVpnEndpointId: "value",
            dryRun: nil)

        return defaultInstance
    }()
}

public extension ExportClientVpnClientCertificateRevocationListResult {
    /**
     Default instance of the ExportClientVpnClientCertificateRevocationListResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListResult = {
        let defaultInstance = ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListResult(
            certificateRevocationList: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension ExportClientVpnClientConfigurationRequest {
    /**
     Default instance of the ExportClientVpnClientConfigurationRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ExportClientVpnClientConfigurationRequest = {
        let defaultInstance = ElasticComputeCloudModel.ExportClientVpnClientConfigurationRequest(
            clientVpnEndpointId: "value",
            dryRun: nil)

        return defaultInstance
    }()
}

public extension ExportClientVpnClientConfigurationResult {
    /**
     Default instance of the ExportClientVpnClientConfigurationResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ExportClientVpnClientConfigurationResult = {
        let defaultInstance = ElasticComputeCloudModel.ExportClientVpnClientConfigurationResult(
            clientConfiguration: nil)

        return defaultInstance
    }()
}

public extension ExportTask {
    /**
     Default instance of the ExportTask structure.
     */
    public static let __default: ElasticComputeCloudModel.ExportTask = {
        let defaultInstance = ElasticComputeCloudModel.ExportTask(
            description: nil,
            exportTaskId: nil,
            exportToS3Task: nil,
            instanceExportDetails: nil,
            state: nil,
            statusMessage: nil)

        return defaultInstance
    }()
}

public extension ExportToS3Task {
    /**
     Default instance of the ExportToS3Task structure.
     */
    public static let __default: ElasticComputeCloudModel.ExportToS3Task = {
        let defaultInstance = ElasticComputeCloudModel.ExportToS3Task(
            containerFormat: nil,
            diskImageFormat: nil,
            s3Bucket: nil,
            s3Key: nil)

        return defaultInstance
    }()
}

public extension ExportToS3TaskSpecification {
    /**
     Default instance of the ExportToS3TaskSpecification structure.
     */
    public static let __default: ElasticComputeCloudModel.ExportToS3TaskSpecification = {
        let defaultInstance = ElasticComputeCloudModel.ExportToS3TaskSpecification(
            containerFormat: nil,
            diskImageFormat: nil,
            s3Bucket: nil,
            s3Prefix: nil)

        return defaultInstance
    }()
}

public extension ExportTransitGatewayRoutesRequest {
    /**
     Default instance of the ExportTransitGatewayRoutesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ExportTransitGatewayRoutesRequest = {
        let defaultInstance = ElasticComputeCloudModel.ExportTransitGatewayRoutesRequest(
            dryRun: nil,
            filters: nil,
            s3Bucket: "value",
            transitGatewayRouteTableId: "value")

        return defaultInstance
    }()
}

public extension ExportTransitGatewayRoutesResult {
    /**
     Default instance of the ExportTransitGatewayRoutesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ExportTransitGatewayRoutesResult = {
        let defaultInstance = ElasticComputeCloudModel.ExportTransitGatewayRoutesResult(
            s3Location: nil)

        return defaultInstance
    }()
}

public extension Filter {
    /**
     Default instance of the Filter structure.
     */
    public static let __default: ElasticComputeCloudModel.Filter = {
        let defaultInstance = ElasticComputeCloudModel.Filter(
            name: nil,
            values: nil)

        return defaultInstance
    }()
}

public extension FleetData {
    /**
     Default instance of the FleetData structure.
     */
    public static let __default: ElasticComputeCloudModel.FleetData = {
        let defaultInstance = ElasticComputeCloudModel.FleetData(
            activityStatus: nil,
            clientToken: nil,
            createTime: nil,
            errors: nil,
            excessCapacityTerminationPolicy: nil,
            fleetId: nil,
            fleetState: nil,
            fulfilledCapacity: nil,
            fulfilledOnDemandCapacity: nil,
            instances: nil,
            launchTemplateConfigs: nil,
            onDemandOptions: nil,
            replaceUnhealthyInstances: nil,
            spotOptions: nil,
            tags: nil,
            targetCapacitySpecification: nil,
            terminateInstancesWithExpiration: nil,
            type: nil,
            validFrom: nil,
            validUntil: nil)

        return defaultInstance
    }()
}

public extension FleetLaunchTemplateConfig {
    /**
     Default instance of the FleetLaunchTemplateConfig structure.
     */
    public static let __default: ElasticComputeCloudModel.FleetLaunchTemplateConfig = {
        let defaultInstance = ElasticComputeCloudModel.FleetLaunchTemplateConfig(
            launchTemplateSpecification: nil,
            overrides: nil)

        return defaultInstance
    }()
}

public extension FleetLaunchTemplateConfigRequest {
    /**
     Default instance of the FleetLaunchTemplateConfigRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.FleetLaunchTemplateConfigRequest = {
        let defaultInstance = ElasticComputeCloudModel.FleetLaunchTemplateConfigRequest(
            launchTemplateSpecification: nil,
            overrides: nil)

        return defaultInstance
    }()
}

public extension FleetLaunchTemplateOverrides {
    /**
     Default instance of the FleetLaunchTemplateOverrides structure.
     */
    public static let __default: ElasticComputeCloudModel.FleetLaunchTemplateOverrides = {
        let defaultInstance = ElasticComputeCloudModel.FleetLaunchTemplateOverrides(
            availabilityZone: nil,
            instanceType: nil,
            maxPrice: nil,
            placement: nil,
            priority: nil,
            subnetId: nil,
            weightedCapacity: nil)

        return defaultInstance
    }()
}

public extension FleetLaunchTemplateOverridesRequest {
    /**
     Default instance of the FleetLaunchTemplateOverridesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.FleetLaunchTemplateOverridesRequest = {
        let defaultInstance = ElasticComputeCloudModel.FleetLaunchTemplateOverridesRequest(
            availabilityZone: nil,
            instanceType: nil,
            maxPrice: nil,
            placement: nil,
            priority: nil,
            subnetId: nil,
            weightedCapacity: nil)

        return defaultInstance
    }()
}

public extension FleetLaunchTemplateSpecification {
    /**
     Default instance of the FleetLaunchTemplateSpecification structure.
     */
    public static let __default: ElasticComputeCloudModel.FleetLaunchTemplateSpecification = {
        let defaultInstance = ElasticComputeCloudModel.FleetLaunchTemplateSpecification(
            launchTemplateId: nil,
            launchTemplateName: nil,
            version: nil)

        return defaultInstance
    }()
}

public extension FleetLaunchTemplateSpecificationRequest {
    /**
     Default instance of the FleetLaunchTemplateSpecificationRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.FleetLaunchTemplateSpecificationRequest = {
        let defaultInstance = ElasticComputeCloudModel.FleetLaunchTemplateSpecificationRequest(
            launchTemplateId: nil,
            launchTemplateName: nil,
            version: nil)

        return defaultInstance
    }()
}

public extension FlowLog {
    /**
     Default instance of the FlowLog structure.
     */
    public static let __default: ElasticComputeCloudModel.FlowLog = {
        let defaultInstance = ElasticComputeCloudModel.FlowLog(
            creationTime: nil,
            deliverLogsErrorMessage: nil,
            deliverLogsPermissionArn: nil,
            deliverLogsStatus: nil,
            flowLogId: nil,
            flowLogStatus: nil,
            logDestination: nil,
            logDestinationType: nil,
            logGroupName: nil,
            resourceId: nil,
            trafficType: nil)

        return defaultInstance
    }()
}

public extension FpgaImage {
    /**
     Default instance of the FpgaImage structure.
     */
    public static let __default: ElasticComputeCloudModel.FpgaImage = {
        let defaultInstance = ElasticComputeCloudModel.FpgaImage(
            createTime: nil,
            description: nil,
            fpgaImageGlobalId: nil,
            fpgaImageId: nil,
            name: nil,
            ownerAlias: nil,
            ownerId: nil,
            pciId: nil,
            productCodes: nil,
            public: nil,
            shellVersion: nil,
            state: nil,
            tags: nil,
            updateTime: nil)

        return defaultInstance
    }()
}

public extension FpgaImageAttribute {
    /**
     Default instance of the FpgaImageAttribute structure.
     */
    public static let __default: ElasticComputeCloudModel.FpgaImageAttribute = {
        let defaultInstance = ElasticComputeCloudModel.FpgaImageAttribute(
            description: nil,
            fpgaImageId: nil,
            loadPermissions: nil,
            name: nil,
            productCodes: nil)

        return defaultInstance
    }()
}

public extension FpgaImageState {
    /**
     Default instance of the FpgaImageState structure.
     */
    public static let __default: ElasticComputeCloudModel.FpgaImageState = {
        let defaultInstance = ElasticComputeCloudModel.FpgaImageState(
            code: nil,
            message: nil)

        return defaultInstance
    }()
}

public extension GetConsoleOutputRequest {
    /**
     Default instance of the GetConsoleOutputRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.GetConsoleOutputRequest = {
        let defaultInstance = ElasticComputeCloudModel.GetConsoleOutputRequest(
            dryRun: nil,
            instanceId: "value",
            latest: nil)

        return defaultInstance
    }()
}

public extension GetConsoleOutputResult {
    /**
     Default instance of the GetConsoleOutputResult structure.
     */
    public static let __default: ElasticComputeCloudModel.GetConsoleOutputResult = {
        let defaultInstance = ElasticComputeCloudModel.GetConsoleOutputResult(
            instanceId: nil,
            output: nil,
            timestamp: nil)

        return defaultInstance
    }()
}

public extension GetConsoleScreenshotRequest {
    /**
     Default instance of the GetConsoleScreenshotRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.GetConsoleScreenshotRequest = {
        let defaultInstance = ElasticComputeCloudModel.GetConsoleScreenshotRequest(
            dryRun: nil,
            instanceId: "value",
            wakeUp: nil)

        return defaultInstance
    }()
}

public extension GetConsoleScreenshotResult {
    /**
     Default instance of the GetConsoleScreenshotResult structure.
     */
    public static let __default: ElasticComputeCloudModel.GetConsoleScreenshotResult = {
        let defaultInstance = ElasticComputeCloudModel.GetConsoleScreenshotResult(
            imageData: nil,
            instanceId: nil)

        return defaultInstance
    }()
}

public extension GetHostReservationPurchasePreviewRequest {
    /**
     Default instance of the GetHostReservationPurchasePreviewRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.GetHostReservationPurchasePreviewRequest = {
        let defaultInstance = ElasticComputeCloudModel.GetHostReservationPurchasePreviewRequest(
            hostIdSet: [],
            offeringId: "value")

        return defaultInstance
    }()
}

public extension GetHostReservationPurchasePreviewResult {
    /**
     Default instance of the GetHostReservationPurchasePreviewResult structure.
     */
    public static let __default: ElasticComputeCloudModel.GetHostReservationPurchasePreviewResult = {
        let defaultInstance = ElasticComputeCloudModel.GetHostReservationPurchasePreviewResult(
            currencyCode: nil,
            purchase: nil,
            totalHourlyPrice: nil,
            totalUpfrontPrice: nil)

        return defaultInstance
    }()
}

public extension GetLaunchTemplateDataRequest {
    /**
     Default instance of the GetLaunchTemplateDataRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.GetLaunchTemplateDataRequest = {
        let defaultInstance = ElasticComputeCloudModel.GetLaunchTemplateDataRequest(
            dryRun: nil,
            instanceId: "value")

        return defaultInstance
    }()
}

public extension GetLaunchTemplateDataResult {
    /**
     Default instance of the GetLaunchTemplateDataResult structure.
     */
    public static let __default: ElasticComputeCloudModel.GetLaunchTemplateDataResult = {
        let defaultInstance = ElasticComputeCloudModel.GetLaunchTemplateDataResult(
            launchTemplateData: nil)

        return defaultInstance
    }()
}

public extension GetPasswordDataRequest {
    /**
     Default instance of the GetPasswordDataRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.GetPasswordDataRequest = {
        let defaultInstance = ElasticComputeCloudModel.GetPasswordDataRequest(
            dryRun: nil,
            instanceId: "value")

        return defaultInstance
    }()
}

public extension GetPasswordDataResult {
    /**
     Default instance of the GetPasswordDataResult structure.
     */
    public static let __default: ElasticComputeCloudModel.GetPasswordDataResult = {
        let defaultInstance = ElasticComputeCloudModel.GetPasswordDataResult(
            instanceId: nil,
            passwordData: nil,
            timestamp: nil)

        return defaultInstance
    }()
}

public extension GetReservedInstancesExchangeQuoteRequest {
    /**
     Default instance of the GetReservedInstancesExchangeQuoteRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteRequest = {
        let defaultInstance = ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteRequest(
            dryRun: nil,
            reservedInstanceIds: [],
            targetConfigurations: nil)

        return defaultInstance
    }()
}

public extension GetReservedInstancesExchangeQuoteResult {
    /**
     Default instance of the GetReservedInstancesExchangeQuoteResult structure.
     */
    public static let __default: ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteResult = {
        let defaultInstance = ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteResult(
            currencyCode: nil,
            isValidExchange: nil,
            outputReservedInstancesWillExpireAt: nil,
            paymentDue: nil,
            reservedInstanceValueRollup: nil,
            reservedInstanceValueSet: nil,
            targetConfigurationValueRollup: nil,
            targetConfigurationValueSet: nil,
            validationFailureReason: nil)

        return defaultInstance
    }()
}

public extension GetTransitGatewayAttachmentPropagationsRequest {
    /**
     Default instance of the GetTransitGatewayAttachmentPropagationsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsRequest = {
        let defaultInstance = ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsRequest(
            dryRun: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil,
            transitGatewayAttachmentId: "value")

        return defaultInstance
    }()
}

public extension GetTransitGatewayAttachmentPropagationsResult {
    /**
     Default instance of the GetTransitGatewayAttachmentPropagationsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsResult = {
        let defaultInstance = ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsResult(
            nextToken: nil,
            transitGatewayAttachmentPropagations: nil)

        return defaultInstance
    }()
}

public extension GetTransitGatewayRouteTableAssociationsRequest {
    /**
     Default instance of the GetTransitGatewayRouteTableAssociationsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsRequest = {
        let defaultInstance = ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsRequest(
            dryRun: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil,
            transitGatewayRouteTableId: "value")

        return defaultInstance
    }()
}

public extension GetTransitGatewayRouteTableAssociationsResult {
    /**
     Default instance of the GetTransitGatewayRouteTableAssociationsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsResult = {
        let defaultInstance = ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsResult(
            associations: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension GetTransitGatewayRouteTablePropagationsRequest {
    /**
     Default instance of the GetTransitGatewayRouteTablePropagationsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsRequest = {
        let defaultInstance = ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsRequest(
            dryRun: nil,
            filters: nil,
            maxResults: nil,
            nextToken: nil,
            transitGatewayRouteTableId: "value")

        return defaultInstance
    }()
}

public extension GetTransitGatewayRouteTablePropagationsResult {
    /**
     Default instance of the GetTransitGatewayRouteTablePropagationsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsResult = {
        let defaultInstance = ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsResult(
            nextToken: nil,
            transitGatewayRouteTablePropagations: nil)

        return defaultInstance
    }()
}

public extension GroupIdentifier {
    /**
     Default instance of the GroupIdentifier structure.
     */
    public static let __default: ElasticComputeCloudModel.GroupIdentifier = {
        let defaultInstance = ElasticComputeCloudModel.GroupIdentifier(
            groupId: nil,
            groupName: nil)

        return defaultInstance
    }()
}

public extension HibernationOptions {
    /**
     Default instance of the HibernationOptions structure.
     */
    public static let __default: ElasticComputeCloudModel.HibernationOptions = {
        let defaultInstance = ElasticComputeCloudModel.HibernationOptions(
            configured: nil)

        return defaultInstance
    }()
}

public extension HibernationOptionsRequest {
    /**
     Default instance of the HibernationOptionsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.HibernationOptionsRequest = {
        let defaultInstance = ElasticComputeCloudModel.HibernationOptionsRequest(
            configured: nil)

        return defaultInstance
    }()
}

public extension HistoryRecord {
    /**
     Default instance of the HistoryRecord structure.
     */
    public static let __default: ElasticComputeCloudModel.HistoryRecord = {
        let defaultInstance = ElasticComputeCloudModel.HistoryRecord(
            eventInformation: nil,
            eventType: nil,
            timestamp: nil)

        return defaultInstance
    }()
}

public extension HistoryRecordEntry {
    /**
     Default instance of the HistoryRecordEntry structure.
     */
    public static let __default: ElasticComputeCloudModel.HistoryRecordEntry = {
        let defaultInstance = ElasticComputeCloudModel.HistoryRecordEntry(
            eventInformation: nil,
            eventType: nil,
            timestamp: nil)

        return defaultInstance
    }()
}

public extension Host {
    /**
     Default instance of the Host structure.
     */
    public static let __default: ElasticComputeCloudModel.Host = {
        let defaultInstance = ElasticComputeCloudModel.Host(
            allocationTime: nil,
            autoPlacement: nil,
            availabilityZone: nil,
            availableCapacity: nil,
            clientToken: nil,
            hostId: nil,
            hostProperties: nil,
            hostReservationId: nil,
            instances: nil,
            releaseTime: nil,
            state: nil,
            tags: nil)

        return defaultInstance
    }()
}

public extension HostInstance {
    /**
     Default instance of the HostInstance structure.
     */
    public static let __default: ElasticComputeCloudModel.HostInstance = {
        let defaultInstance = ElasticComputeCloudModel.HostInstance(
            instanceId: nil,
            instanceType: nil)

        return defaultInstance
    }()
}

public extension HostOffering {
    /**
     Default instance of the HostOffering structure.
     */
    public static let __default: ElasticComputeCloudModel.HostOffering = {
        let defaultInstance = ElasticComputeCloudModel.HostOffering(
            currencyCode: nil,
            duration: nil,
            hourlyPrice: nil,
            instanceFamily: nil,
            offeringId: nil,
            paymentOption: nil,
            upfrontPrice: nil)

        return defaultInstance
    }()
}

public extension HostProperties {
    /**
     Default instance of the HostProperties structure.
     */
    public static let __default: ElasticComputeCloudModel.HostProperties = {
        let defaultInstance = ElasticComputeCloudModel.HostProperties(
            cores: nil,
            instanceType: nil,
            sockets: nil,
            totalVCpus: nil)

        return defaultInstance
    }()
}

public extension HostReservation {
    /**
     Default instance of the HostReservation structure.
     */
    public static let __default: ElasticComputeCloudModel.HostReservation = {
        let defaultInstance = ElasticComputeCloudModel.HostReservation(
            count: nil,
            currencyCode: nil,
            duration: nil,
            end: nil,
            hostIdSet: nil,
            hostReservationId: nil,
            hourlyPrice: nil,
            instanceFamily: nil,
            offeringId: nil,
            paymentOption: nil,
            start: nil,
            state: nil,
            upfrontPrice: nil)

        return defaultInstance
    }()
}

public extension IamInstanceProfile {
    /**
     Default instance of the IamInstanceProfile structure.
     */
    public static let __default: ElasticComputeCloudModel.IamInstanceProfile = {
        let defaultInstance = ElasticComputeCloudModel.IamInstanceProfile(
            arn: nil,
            id: nil)

        return defaultInstance
    }()
}

public extension IamInstanceProfileAssociation {
    /**
     Default instance of the IamInstanceProfileAssociation structure.
     */
    public static let __default: ElasticComputeCloudModel.IamInstanceProfileAssociation = {
        let defaultInstance = ElasticComputeCloudModel.IamInstanceProfileAssociation(
            associationId: nil,
            iamInstanceProfile: nil,
            instanceId: nil,
            state: nil,
            timestamp: nil)

        return defaultInstance
    }()
}

public extension IamInstanceProfileSpecification {
    /**
     Default instance of the IamInstanceProfileSpecification structure.
     */
    public static let __default: ElasticComputeCloudModel.IamInstanceProfileSpecification = {
        let defaultInstance = ElasticComputeCloudModel.IamInstanceProfileSpecification(
            arn: nil,
            name: nil)

        return defaultInstance
    }()
}

public extension IcmpTypeCode {
    /**
     Default instance of the IcmpTypeCode structure.
     */
    public static let __default: ElasticComputeCloudModel.IcmpTypeCode = {
        let defaultInstance = ElasticComputeCloudModel.IcmpTypeCode(
            code: nil,
            type: nil)

        return defaultInstance
    }()
}

public extension IdFormat {
    /**
     Default instance of the IdFormat structure.
     */
    public static let __default: ElasticComputeCloudModel.IdFormat = {
        let defaultInstance = ElasticComputeCloudModel.IdFormat(
            deadline: nil,
            resource: nil,
            useLongIds: nil)

        return defaultInstance
    }()
}

public extension Image {
    /**
     Default instance of the Image structure.
     */
    public static let __default: ElasticComputeCloudModel.Image = {
        let defaultInstance = ElasticComputeCloudModel.Image(
            architecture: nil,
            blockDeviceMappings: nil,
            creationDate: nil,
            description: nil,
            enaSupport: nil,
            hypervisor: nil,
            imageId: nil,
            imageLocation: nil,
            imageOwnerAlias: nil,
            imageType: nil,
            kernelId: nil,
            name: nil,
            ownerId: nil,
            platform: nil,
            productCodes: nil,
            public: nil,
            ramdiskId: nil,
            rootDeviceName: nil,
            rootDeviceType: nil,
            sriovNetSupport: nil,
            state: nil,
            stateReason: nil,
            tags: nil,
            virtualizationType: nil)

        return defaultInstance
    }()
}

public extension ImageAttribute {
    /**
     Default instance of the ImageAttribute structure.
     */
    public static let __default: ElasticComputeCloudModel.ImageAttribute = {
        let defaultInstance = ElasticComputeCloudModel.ImageAttribute(
            blockDeviceMappings: nil,
            description: nil,
            imageId: nil,
            kernelId: nil,
            launchPermissions: nil,
            productCodes: nil,
            ramdiskId: nil,
            sriovNetSupport: nil)

        return defaultInstance
    }()
}

public extension ImageDiskContainer {
    /**
     Default instance of the ImageDiskContainer structure.
     */
    public static let __default: ElasticComputeCloudModel.ImageDiskContainer = {
        let defaultInstance = ElasticComputeCloudModel.ImageDiskContainer(
            description: nil,
            deviceName: nil,
            format: nil,
            snapshotId: nil,
            url: nil,
            userBucket: nil)

        return defaultInstance
    }()
}

public extension ImportClientVpnClientCertificateRevocationListRequest {
    /**
     Default instance of the ImportClientVpnClientCertificateRevocationListRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListRequest = {
        let defaultInstance = ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListRequest(
            certificateRevocationList: "value",
            clientVpnEndpointId: "value",
            dryRun: nil)

        return defaultInstance
    }()
}

public extension ImportClientVpnClientCertificateRevocationListResult {
    /**
     Default instance of the ImportClientVpnClientCertificateRevocationListResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListResult = {
        let defaultInstance = ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListResult(
            return: nil)

        return defaultInstance
    }()
}

public extension ImportImageRequest {
    /**
     Default instance of the ImportImageRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ImportImageRequest = {
        let defaultInstance = ElasticComputeCloudModel.ImportImageRequest(
            architecture: nil,
            clientData: nil,
            clientToken: nil,
            description: nil,
            diskContainers: nil,
            dryRun: nil,
            encrypted: nil,
            hypervisor: nil,
            kmsKeyId: nil,
            licenseType: nil,
            platform: nil,
            roleName: nil)

        return defaultInstance
    }()
}

public extension ImportImageResult {
    /**
     Default instance of the ImportImageResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ImportImageResult = {
        let defaultInstance = ElasticComputeCloudModel.ImportImageResult(
            architecture: nil,
            description: nil,
            encrypted: nil,
            hypervisor: nil,
            imageId: nil,
            importTaskId: nil,
            kmsKeyId: nil,
            licenseType: nil,
            platform: nil,
            progress: nil,
            snapshotDetails: nil,
            status: nil,
            statusMessage: nil)

        return defaultInstance
    }()
}

public extension ImportImageTask {
    /**
     Default instance of the ImportImageTask structure.
     */
    public static let __default: ElasticComputeCloudModel.ImportImageTask = {
        let defaultInstance = ElasticComputeCloudModel.ImportImageTask(
            architecture: nil,
            description: nil,
            encrypted: nil,
            hypervisor: nil,
            imageId: nil,
            importTaskId: nil,
            kmsKeyId: nil,
            licenseType: nil,
            platform: nil,
            progress: nil,
            snapshotDetails: nil,
            status: nil,
            statusMessage: nil)

        return defaultInstance
    }()
}

public extension ImportInstanceLaunchSpecification {
    /**
     Default instance of the ImportInstanceLaunchSpecification structure.
     */
    public static let __default: ElasticComputeCloudModel.ImportInstanceLaunchSpecification = {
        let defaultInstance = ElasticComputeCloudModel.ImportInstanceLaunchSpecification(
            additionalInfo: nil,
            architecture: nil,
            groupIds: nil,
            groupNames: nil,
            instanceInitiatedShutdownBehavior: nil,
            instanceType: nil,
            monitoring: nil,
            placement: nil,
            privateIpAddress: nil,
            subnetId: nil,
            userData: nil)

        return defaultInstance
    }()
}

public extension ImportInstanceRequest {
    /**
     Default instance of the ImportInstanceRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ImportInstanceRequest = {
        let defaultInstance = ElasticComputeCloudModel.ImportInstanceRequest(
            description: nil,
            diskImages: nil,
            dryRun: nil,
            launchSpecification: nil,
            platform: .__default)

        return defaultInstance
    }()
}

public extension ImportInstanceResult {
    /**
     Default instance of the ImportInstanceResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ImportInstanceResult = {
        let defaultInstance = ElasticComputeCloudModel.ImportInstanceResult(
            conversionTask: nil)

        return defaultInstance
    }()
}

public extension ImportInstanceTaskDetails {
    /**
     Default instance of the ImportInstanceTaskDetails structure.
     */
    public static let __default: ElasticComputeCloudModel.ImportInstanceTaskDetails = {
        let defaultInstance = ElasticComputeCloudModel.ImportInstanceTaskDetails(
            description: nil,
            instanceId: nil,
            platform: nil,
            volumes: nil)

        return defaultInstance
    }()
}

public extension ImportInstanceVolumeDetailItem {
    /**
     Default instance of the ImportInstanceVolumeDetailItem structure.
     */
    public static let __default: ElasticComputeCloudModel.ImportInstanceVolumeDetailItem = {
        let defaultInstance = ElasticComputeCloudModel.ImportInstanceVolumeDetailItem(
            availabilityZone: nil,
            bytesConverted: nil,
            description: nil,
            image: nil,
            status: nil,
            statusMessage: nil,
            volume: nil)

        return defaultInstance
    }()
}

public extension ImportKeyPairRequest {
    /**
     Default instance of the ImportKeyPairRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ImportKeyPairRequest = {
        let defaultInstance = ElasticComputeCloudModel.ImportKeyPairRequest(
            dryRun: nil,
            keyName: "value",
            publicKeyMaterial: Data())

        return defaultInstance
    }()
}

public extension ImportKeyPairResult {
    /**
     Default instance of the ImportKeyPairResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ImportKeyPairResult = {
        let defaultInstance = ElasticComputeCloudModel.ImportKeyPairResult(
            keyFingerprint: nil,
            keyName: nil)

        return defaultInstance
    }()
}

public extension ImportSnapshotRequest {
    /**
     Default instance of the ImportSnapshotRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ImportSnapshotRequest = {
        let defaultInstance = ElasticComputeCloudModel.ImportSnapshotRequest(
            clientData: nil,
            clientToken: nil,
            description: nil,
            diskContainer: nil,
            dryRun: nil,
            encrypted: nil,
            kmsKeyId: nil,
            roleName: nil)

        return defaultInstance
    }()
}

public extension ImportSnapshotResult {
    /**
     Default instance of the ImportSnapshotResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ImportSnapshotResult = {
        let defaultInstance = ElasticComputeCloudModel.ImportSnapshotResult(
            description: nil,
            importTaskId: nil,
            snapshotTaskDetail: nil)

        return defaultInstance
    }()
}

public extension ImportSnapshotTask {
    /**
     Default instance of the ImportSnapshotTask structure.
     */
    public static let __default: ElasticComputeCloudModel.ImportSnapshotTask = {
        let defaultInstance = ElasticComputeCloudModel.ImportSnapshotTask(
            description: nil,
            importTaskId: nil,
            snapshotTaskDetail: nil)

        return defaultInstance
    }()
}

public extension ImportVolumeRequest {
    /**
     Default instance of the ImportVolumeRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ImportVolumeRequest = {
        let defaultInstance = ElasticComputeCloudModel.ImportVolumeRequest(
            availabilityZone: "value",
            description: nil,
            dryRun: nil,
            image: DiskImageDetail.__default,
            volume: VolumeDetail.__default)

        return defaultInstance
    }()
}

public extension ImportVolumeResult {
    /**
     Default instance of the ImportVolumeResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ImportVolumeResult = {
        let defaultInstance = ElasticComputeCloudModel.ImportVolumeResult(
            conversionTask: nil)

        return defaultInstance
    }()
}

public extension ImportVolumeTaskDetails {
    /**
     Default instance of the ImportVolumeTaskDetails structure.
     */
    public static let __default: ElasticComputeCloudModel.ImportVolumeTaskDetails = {
        let defaultInstance = ElasticComputeCloudModel.ImportVolumeTaskDetails(
            availabilityZone: nil,
            bytesConverted: nil,
            description: nil,
            image: nil,
            volume: nil)

        return defaultInstance
    }()
}

public extension Instance {
    /**
     Default instance of the Instance structure.
     */
    public static let __default: ElasticComputeCloudModel.Instance = {
        let defaultInstance = ElasticComputeCloudModel.Instance(
            amiLaunchIndex: nil,
            architecture: nil,
            blockDeviceMappings: nil,
            capacityReservationId: nil,
            capacityReservationSpecification: nil,
            clientToken: nil,
            cpuOptions: nil,
            ebsOptimized: nil,
            elasticGpuAssociations: nil,
            elasticInferenceAcceleratorAssociations: nil,
            enaSupport: nil,
            hibernationOptions: nil,
            hypervisor: nil,
            iamInstanceProfile: nil,
            imageId: nil,
            instanceId: nil,
            instanceLifecycle: nil,
            instanceType: nil,
            kernelId: nil,
            keyName: nil,
            launchTime: nil,
            licenses: nil,
            monitoring: nil,
            networkInterfaces: nil,
            placement: nil,
            platform: nil,
            privateDnsName: nil,
            privateIpAddress: nil,
            productCodes: nil,
            publicDnsName: nil,
            publicIpAddress: nil,
            ramdiskId: nil,
            rootDeviceName: nil,
            rootDeviceType: nil,
            securityGroups: nil,
            sourceDestCheck: nil,
            spotInstanceRequestId: nil,
            sriovNetSupport: nil,
            state: nil,
            stateReason: nil,
            stateTransitionReason: nil,
            subnetId: nil,
            tags: nil,
            virtualizationType: nil,
            vpcId: nil)

        return defaultInstance
    }()
}

public extension InstanceAttribute {
    /**
     Default instance of the InstanceAttribute structure.
     */
    public static let __default: ElasticComputeCloudModel.InstanceAttribute = {
        let defaultInstance = ElasticComputeCloudModel.InstanceAttribute(
            blockDeviceMappings: nil,
            disableApiTermination: nil,
            ebsOptimized: nil,
            enaSupport: nil,
            groups: nil,
            instanceId: nil,
            instanceInitiatedShutdownBehavior: nil,
            instanceType: nil,
            kernelId: nil,
            productCodes: nil,
            ramdiskId: nil,
            rootDeviceName: nil,
            sourceDestCheck: nil,
            sriovNetSupport: nil,
            userData: nil)

        return defaultInstance
    }()
}

public extension InstanceBlockDeviceMapping {
    /**
     Default instance of the InstanceBlockDeviceMapping structure.
     */
    public static let __default: ElasticComputeCloudModel.InstanceBlockDeviceMapping = {
        let defaultInstance = ElasticComputeCloudModel.InstanceBlockDeviceMapping(
            deviceName: nil,
            ebs: nil)

        return defaultInstance
    }()
}

public extension InstanceBlockDeviceMappingSpecification {
    /**
     Default instance of the InstanceBlockDeviceMappingSpecification structure.
     */
    public static let __default: ElasticComputeCloudModel.InstanceBlockDeviceMappingSpecification = {
        let defaultInstance = ElasticComputeCloudModel.InstanceBlockDeviceMappingSpecification(
            deviceName: nil,
            ebs: nil,
            noDevice: nil,
            virtualName: nil)

        return defaultInstance
    }()
}

public extension InstanceCapacity {
    /**
     Default instance of the InstanceCapacity structure.
     */
    public static let __default: ElasticComputeCloudModel.InstanceCapacity = {
        let defaultInstance = ElasticComputeCloudModel.InstanceCapacity(
            availableCapacity: nil,
            instanceType: nil,
            totalCapacity: nil)

        return defaultInstance
    }()
}

public extension InstanceCount {
    /**
     Default instance of the InstanceCount structure.
     */
    public static let __default: ElasticComputeCloudModel.InstanceCount = {
        let defaultInstance = ElasticComputeCloudModel.InstanceCount(
            instanceCount: nil,
            state: nil)

        return defaultInstance
    }()
}

public extension InstanceCreditSpecification {
    /**
     Default instance of the InstanceCreditSpecification structure.
     */
    public static let __default: ElasticComputeCloudModel.InstanceCreditSpecification = {
        let defaultInstance = ElasticComputeCloudModel.InstanceCreditSpecification(
            cpuCredits: nil,
            instanceId: nil)

        return defaultInstance
    }()
}

public extension InstanceCreditSpecificationRequest {
    /**
     Default instance of the InstanceCreditSpecificationRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.InstanceCreditSpecificationRequest = {
        let defaultInstance = ElasticComputeCloudModel.InstanceCreditSpecificationRequest(
            cpuCredits: nil,
            instanceId: nil)

        return defaultInstance
    }()
}

public extension InstanceExportDetails {
    /**
     Default instance of the InstanceExportDetails structure.
     */
    public static let __default: ElasticComputeCloudModel.InstanceExportDetails = {
        let defaultInstance = ElasticComputeCloudModel.InstanceExportDetails(
            instanceId: nil,
            targetEnvironment: nil)

        return defaultInstance
    }()
}

public extension InstanceIpv6Address {
    /**
     Default instance of the InstanceIpv6Address structure.
     */
    public static let __default: ElasticComputeCloudModel.InstanceIpv6Address = {
        let defaultInstance = ElasticComputeCloudModel.InstanceIpv6Address(
            ipv6Address: nil)

        return defaultInstance
    }()
}

public extension InstanceIpv6AddressRequest {
    /**
     Default instance of the InstanceIpv6AddressRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.InstanceIpv6AddressRequest = {
        let defaultInstance = ElasticComputeCloudModel.InstanceIpv6AddressRequest(
            ipv6Address: nil)

        return defaultInstance
    }()
}

public extension InstanceMarketOptionsRequest {
    /**
     Default instance of the InstanceMarketOptionsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.InstanceMarketOptionsRequest = {
        let defaultInstance = ElasticComputeCloudModel.InstanceMarketOptionsRequest(
            marketType: nil,
            spotOptions: nil)

        return defaultInstance
    }()
}

public extension InstanceMonitoring {
    /**
     Default instance of the InstanceMonitoring structure.
     */
    public static let __default: ElasticComputeCloudModel.InstanceMonitoring = {
        let defaultInstance = ElasticComputeCloudModel.InstanceMonitoring(
            instanceId: nil,
            monitoring: nil)

        return defaultInstance
    }()
}

public extension InstanceNetworkInterface {
    /**
     Default instance of the InstanceNetworkInterface structure.
     */
    public static let __default: ElasticComputeCloudModel.InstanceNetworkInterface = {
        let defaultInstance = ElasticComputeCloudModel.InstanceNetworkInterface(
            association: nil,
            attachment: nil,
            description: nil,
            groups: nil,
            ipv6Addresses: nil,
            macAddress: nil,
            networkInterfaceId: nil,
            ownerId: nil,
            privateDnsName: nil,
            privateIpAddress: nil,
            privateIpAddresses: nil,
            sourceDestCheck: nil,
            status: nil,
            subnetId: nil,
            vpcId: nil)

        return defaultInstance
    }()
}

public extension InstanceNetworkInterfaceAssociation {
    /**
     Default instance of the InstanceNetworkInterfaceAssociation structure.
     */
    public static let __default: ElasticComputeCloudModel.InstanceNetworkInterfaceAssociation = {
        let defaultInstance = ElasticComputeCloudModel.InstanceNetworkInterfaceAssociation(
            ipOwnerId: nil,
            publicDnsName: nil,
            publicIp: nil)

        return defaultInstance
    }()
}

public extension InstanceNetworkInterfaceAttachment {
    /**
     Default instance of the InstanceNetworkInterfaceAttachment structure.
     */
    public static let __default: ElasticComputeCloudModel.InstanceNetworkInterfaceAttachment = {
        let defaultInstance = ElasticComputeCloudModel.InstanceNetworkInterfaceAttachment(
            attachTime: nil,
            attachmentId: nil,
            deleteOnTermination: nil,
            deviceIndex: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension InstanceNetworkInterfaceSpecification {
    /**
     Default instance of the InstanceNetworkInterfaceSpecification structure.
     */
    public static let __default: ElasticComputeCloudModel.InstanceNetworkInterfaceSpecification = {
        let defaultInstance = ElasticComputeCloudModel.InstanceNetworkInterfaceSpecification(
            associatePublicIpAddress: nil,
            deleteOnTermination: nil,
            description: nil,
            deviceIndex: nil,
            groups: nil,
            ipv6AddressCount: nil,
            ipv6Addresses: nil,
            networkInterfaceId: nil,
            privateIpAddress: nil,
            privateIpAddresses: nil,
            secondaryPrivateIpAddressCount: nil,
            subnetId: nil)

        return defaultInstance
    }()
}

public extension InstancePrivateIpAddress {
    /**
     Default instance of the InstancePrivateIpAddress structure.
     */
    public static let __default: ElasticComputeCloudModel.InstancePrivateIpAddress = {
        let defaultInstance = ElasticComputeCloudModel.InstancePrivateIpAddress(
            association: nil,
            primary: nil,
            privateDnsName: nil,
            privateIpAddress: nil)

        return defaultInstance
    }()
}

public extension InstanceState {
    /**
     Default instance of the InstanceState structure.
     */
    public static let __default: ElasticComputeCloudModel.InstanceState = {
        let defaultInstance = ElasticComputeCloudModel.InstanceState(
            code: nil,
            name: nil)

        return defaultInstance
    }()
}

public extension InstanceStateChange {
    /**
     Default instance of the InstanceStateChange structure.
     */
    public static let __default: ElasticComputeCloudModel.InstanceStateChange = {
        let defaultInstance = ElasticComputeCloudModel.InstanceStateChange(
            currentState: nil,
            instanceId: nil,
            previousState: nil)

        return defaultInstance
    }()
}

public extension InstanceStatus {
    /**
     Default instance of the InstanceStatus structure.
     */
    public static let __default: ElasticComputeCloudModel.InstanceStatus = {
        let defaultInstance = ElasticComputeCloudModel.InstanceStatus(
            availabilityZone: nil,
            events: nil,
            instanceId: nil,
            instanceState: nil,
            instanceStatus: nil,
            systemStatus: nil)

        return defaultInstance
    }()
}

public extension InstanceStatusDetails {
    /**
     Default instance of the InstanceStatusDetails structure.
     */
    public static let __default: ElasticComputeCloudModel.InstanceStatusDetails = {
        let defaultInstance = ElasticComputeCloudModel.InstanceStatusDetails(
            impairedSince: nil,
            name: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension InstanceStatusEvent {
    /**
     Default instance of the InstanceStatusEvent structure.
     */
    public static let __default: ElasticComputeCloudModel.InstanceStatusEvent = {
        let defaultInstance = ElasticComputeCloudModel.InstanceStatusEvent(
            code: nil,
            description: nil,
            notAfter: nil,
            notBefore: nil)

        return defaultInstance
    }()
}

public extension InstanceStatusSummary {
    /**
     Default instance of the InstanceStatusSummary structure.
     */
    public static let __default: ElasticComputeCloudModel.InstanceStatusSummary = {
        let defaultInstance = ElasticComputeCloudModel.InstanceStatusSummary(
            details: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension InternetGateway {
    /**
     Default instance of the InternetGateway structure.
     */
    public static let __default: ElasticComputeCloudModel.InternetGateway = {
        let defaultInstance = ElasticComputeCloudModel.InternetGateway(
            attachments: nil,
            internetGatewayId: nil,
            ownerId: nil,
            tags: nil)

        return defaultInstance
    }()
}

public extension InternetGatewayAttachment {
    /**
     Default instance of the InternetGatewayAttachment structure.
     */
    public static let __default: ElasticComputeCloudModel.InternetGatewayAttachment = {
        let defaultInstance = ElasticComputeCloudModel.InternetGatewayAttachment(
            state: nil,
            vpcId: nil)

        return defaultInstance
    }()
}

public extension IpPermission {
    /**
     Default instance of the IpPermission structure.
     */
    public static let __default: ElasticComputeCloudModel.IpPermission = {
        let defaultInstance = ElasticComputeCloudModel.IpPermission(
            fromPort: nil,
            ipProtocol: nil,
            ipRanges: nil,
            ipv6Ranges: nil,
            prefixListIds: nil,
            toPort: nil,
            userIdGroupPairs: nil)

        return defaultInstance
    }()
}

public extension IpRange {
    /**
     Default instance of the IpRange structure.
     */
    public static let __default: ElasticComputeCloudModel.IpRange = {
        let defaultInstance = ElasticComputeCloudModel.IpRange(
            cidrIp: nil,
            description: nil)

        return defaultInstance
    }()
}

public extension Ipv6CidrBlock {
    /**
     Default instance of the Ipv6CidrBlock structure.
     */
    public static let __default: ElasticComputeCloudModel.Ipv6CidrBlock = {
        let defaultInstance = ElasticComputeCloudModel.Ipv6CidrBlock(
            ipv6CidrBlock: nil)

        return defaultInstance
    }()
}

public extension Ipv6Range {
    /**
     Default instance of the Ipv6Range structure.
     */
    public static let __default: ElasticComputeCloudModel.Ipv6Range = {
        let defaultInstance = ElasticComputeCloudModel.Ipv6Range(
            cidrIpv6: nil,
            description: nil)

        return defaultInstance
    }()
}

public extension KeyPair {
    /**
     Default instance of the KeyPair structure.
     */
    public static let __default: ElasticComputeCloudModel.KeyPair = {
        let defaultInstance = ElasticComputeCloudModel.KeyPair(
            keyFingerprint: nil,
            keyMaterial: nil,
            keyName: nil)

        return defaultInstance
    }()
}

public extension KeyPairInfo {
    /**
     Default instance of the KeyPairInfo structure.
     */
    public static let __default: ElasticComputeCloudModel.KeyPairInfo = {
        let defaultInstance = ElasticComputeCloudModel.KeyPairInfo(
            keyFingerprint: nil,
            keyName: nil)

        return defaultInstance
    }()
}

public extension LaunchPermission {
    /**
     Default instance of the LaunchPermission structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchPermission = {
        let defaultInstance = ElasticComputeCloudModel.LaunchPermission(
            group: nil,
            userId: nil)

        return defaultInstance
    }()
}

public extension LaunchPermissionModifications {
    /**
     Default instance of the LaunchPermissionModifications structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchPermissionModifications = {
        let defaultInstance = ElasticComputeCloudModel.LaunchPermissionModifications(
            add: nil,
            remove: nil)

        return defaultInstance
    }()
}

public extension LaunchSpecification {
    /**
     Default instance of the LaunchSpecification structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchSpecification = {
        let defaultInstance = ElasticComputeCloudModel.LaunchSpecification(
            addressingType: nil,
            blockDeviceMappings: nil,
            ebsOptimized: nil,
            iamInstanceProfile: nil,
            imageId: nil,
            instanceType: nil,
            kernelId: nil,
            keyName: nil,
            monitoring: nil,
            networkInterfaces: nil,
            placement: nil,
            ramdiskId: nil,
            securityGroups: nil,
            subnetId: nil,
            userData: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplate {
    /**
     Default instance of the LaunchTemplate structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplate = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplate(
            createTime: nil,
            createdBy: nil,
            defaultVersionNumber: nil,
            latestVersionNumber: nil,
            launchTemplateId: nil,
            launchTemplateName: nil,
            tags: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplateAndOverridesResponse {
    /**
     Default instance of the LaunchTemplateAndOverridesResponse structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplateAndOverridesResponse = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplateAndOverridesResponse(
            launchTemplateSpecification: nil,
            overrides: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplateBlockDeviceMapping {
    /**
     Default instance of the LaunchTemplateBlockDeviceMapping structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplateBlockDeviceMapping = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplateBlockDeviceMapping(
            deviceName: nil,
            ebs: nil,
            noDevice: nil,
            virtualName: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplateBlockDeviceMappingRequest {
    /**
     Default instance of the LaunchTemplateBlockDeviceMappingRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplateBlockDeviceMappingRequest = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplateBlockDeviceMappingRequest(
            deviceName: nil,
            ebs: nil,
            noDevice: nil,
            virtualName: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplateCapacityReservationSpecificationRequest {
    /**
     Default instance of the LaunchTemplateCapacityReservationSpecificationRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplateCapacityReservationSpecificationRequest = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplateCapacityReservationSpecificationRequest(
            capacityReservationPreference: nil,
            capacityReservationTarget: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplateCapacityReservationSpecificationResponse {
    /**
     Default instance of the LaunchTemplateCapacityReservationSpecificationResponse structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplateCapacityReservationSpecificationResponse = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplateCapacityReservationSpecificationResponse(
            capacityReservationPreference: nil,
            capacityReservationTarget: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplateConfig {
    /**
     Default instance of the LaunchTemplateConfig structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplateConfig = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplateConfig(
            launchTemplateSpecification: nil,
            overrides: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplateCpuOptions {
    /**
     Default instance of the LaunchTemplateCpuOptions structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplateCpuOptions = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplateCpuOptions(
            coreCount: nil,
            threadsPerCore: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplateCpuOptionsRequest {
    /**
     Default instance of the LaunchTemplateCpuOptionsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplateCpuOptionsRequest = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplateCpuOptionsRequest(
            coreCount: nil,
            threadsPerCore: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplateEbsBlockDevice {
    /**
     Default instance of the LaunchTemplateEbsBlockDevice structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplateEbsBlockDevice = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplateEbsBlockDevice(
            deleteOnTermination: nil,
            encrypted: nil,
            iops: nil,
            kmsKeyId: nil,
            snapshotId: nil,
            volumeSize: nil,
            volumeType: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplateEbsBlockDeviceRequest {
    /**
     Default instance of the LaunchTemplateEbsBlockDeviceRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplateEbsBlockDeviceRequest = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplateEbsBlockDeviceRequest(
            deleteOnTermination: nil,
            encrypted: nil,
            iops: nil,
            kmsKeyId: nil,
            snapshotId: nil,
            volumeSize: nil,
            volumeType: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplateElasticInferenceAccelerator {
    /**
     Default instance of the LaunchTemplateElasticInferenceAccelerator structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplateElasticInferenceAccelerator = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplateElasticInferenceAccelerator(
            type: "value")

        return defaultInstance
    }()
}

public extension LaunchTemplateElasticInferenceAcceleratorResponse {
    /**
     Default instance of the LaunchTemplateElasticInferenceAcceleratorResponse structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplateElasticInferenceAcceleratorResponse = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplateElasticInferenceAcceleratorResponse(
            type: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplateHibernationOptions {
    /**
     Default instance of the LaunchTemplateHibernationOptions structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplateHibernationOptions = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplateHibernationOptions(
            configured: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplateHibernationOptionsRequest {
    /**
     Default instance of the LaunchTemplateHibernationOptionsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplateHibernationOptionsRequest = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplateHibernationOptionsRequest(
            configured: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplateIamInstanceProfileSpecification {
    /**
     Default instance of the LaunchTemplateIamInstanceProfileSpecification structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplateIamInstanceProfileSpecification = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplateIamInstanceProfileSpecification(
            arn: nil,
            name: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplateIamInstanceProfileSpecificationRequest {
    /**
     Default instance of the LaunchTemplateIamInstanceProfileSpecificationRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplateIamInstanceProfileSpecificationRequest = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplateIamInstanceProfileSpecificationRequest(
            arn: nil,
            name: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplateInstanceMarketOptions {
    /**
     Default instance of the LaunchTemplateInstanceMarketOptions structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplateInstanceMarketOptions = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplateInstanceMarketOptions(
            marketType: nil,
            spotOptions: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplateInstanceMarketOptionsRequest {
    /**
     Default instance of the LaunchTemplateInstanceMarketOptionsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplateInstanceMarketOptionsRequest = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplateInstanceMarketOptionsRequest(
            marketType: nil,
            spotOptions: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplateInstanceNetworkInterfaceSpecification {
    /**
     Default instance of the LaunchTemplateInstanceNetworkInterfaceSpecification structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplateInstanceNetworkInterfaceSpecification = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplateInstanceNetworkInterfaceSpecification(
            associatePublicIpAddress: nil,
            deleteOnTermination: nil,
            description: nil,
            deviceIndex: nil,
            groups: nil,
            ipv6AddressCount: nil,
            ipv6Addresses: nil,
            networkInterfaceId: nil,
            privateIpAddress: nil,
            privateIpAddresses: nil,
            secondaryPrivateIpAddressCount: nil,
            subnetId: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplateInstanceNetworkInterfaceSpecificationRequest {
    /**
     Default instance of the LaunchTemplateInstanceNetworkInterfaceSpecificationRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplateInstanceNetworkInterfaceSpecificationRequest = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplateInstanceNetworkInterfaceSpecificationRequest(
            associatePublicIpAddress: nil,
            deleteOnTermination: nil,
            description: nil,
            deviceIndex: nil,
            groups: nil,
            ipv6AddressCount: nil,
            ipv6Addresses: nil,
            networkInterfaceId: nil,
            privateIpAddress: nil,
            privateIpAddresses: nil,
            secondaryPrivateIpAddressCount: nil,
            subnetId: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplateLicenseConfiguration {
    /**
     Default instance of the LaunchTemplateLicenseConfiguration structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplateLicenseConfiguration = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplateLicenseConfiguration(
            licenseConfigurationArn: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplateLicenseConfigurationRequest {
    /**
     Default instance of the LaunchTemplateLicenseConfigurationRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplateLicenseConfigurationRequest = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplateLicenseConfigurationRequest(
            licenseConfigurationArn: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplateOverrides {
    /**
     Default instance of the LaunchTemplateOverrides structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplateOverrides = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplateOverrides(
            availabilityZone: nil,
            instanceType: nil,
            priority: nil,
            spotPrice: nil,
            subnetId: nil,
            weightedCapacity: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplatePlacement {
    /**
     Default instance of the LaunchTemplatePlacement structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplatePlacement = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplatePlacement(
            affinity: nil,
            availabilityZone: nil,
            groupName: nil,
            hostId: nil,
            spreadDomain: nil,
            tenancy: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplatePlacementRequest {
    /**
     Default instance of the LaunchTemplatePlacementRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplatePlacementRequest = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplatePlacementRequest(
            affinity: nil,
            availabilityZone: nil,
            groupName: nil,
            hostId: nil,
            spreadDomain: nil,
            tenancy: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplateSpecification {
    /**
     Default instance of the LaunchTemplateSpecification structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplateSpecification = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplateSpecification(
            launchTemplateId: nil,
            launchTemplateName: nil,
            version: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplateSpotMarketOptions {
    /**
     Default instance of the LaunchTemplateSpotMarketOptions structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplateSpotMarketOptions = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplateSpotMarketOptions(
            blockDurationMinutes: nil,
            instanceInterruptionBehavior: nil,
            maxPrice: nil,
            spotInstanceType: nil,
            validUntil: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplateSpotMarketOptionsRequest {
    /**
     Default instance of the LaunchTemplateSpotMarketOptionsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplateSpotMarketOptionsRequest = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplateSpotMarketOptionsRequest(
            blockDurationMinutes: nil,
            instanceInterruptionBehavior: nil,
            maxPrice: nil,
            spotInstanceType: nil,
            validUntil: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplateTagSpecification {
    /**
     Default instance of the LaunchTemplateTagSpecification structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplateTagSpecification = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplateTagSpecification(
            resourceType: nil,
            tags: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplateTagSpecificationRequest {
    /**
     Default instance of the LaunchTemplateTagSpecificationRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplateTagSpecificationRequest = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplateTagSpecificationRequest(
            resourceType: nil,
            tags: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplateVersion {
    /**
     Default instance of the LaunchTemplateVersion structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplateVersion = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplateVersion(
            createTime: nil,
            createdBy: nil,
            defaultVersion: nil,
            launchTemplateData: nil,
            launchTemplateId: nil,
            launchTemplateName: nil,
            versionDescription: nil,
            versionNumber: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplatesMonitoring {
    /**
     Default instance of the LaunchTemplatesMonitoring structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplatesMonitoring = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplatesMonitoring(
            enabled: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplatesMonitoringRequest {
    /**
     Default instance of the LaunchTemplatesMonitoringRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.LaunchTemplatesMonitoringRequest = {
        let defaultInstance = ElasticComputeCloudModel.LaunchTemplatesMonitoringRequest(
            enabled: nil)

        return defaultInstance
    }()
}

public extension LicenseConfiguration {
    /**
     Default instance of the LicenseConfiguration structure.
     */
    public static let __default: ElasticComputeCloudModel.LicenseConfiguration = {
        let defaultInstance = ElasticComputeCloudModel.LicenseConfiguration(
            licenseConfigurationArn: nil)

        return defaultInstance
    }()
}

public extension LicenseConfigurationRequest {
    /**
     Default instance of the LicenseConfigurationRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.LicenseConfigurationRequest = {
        let defaultInstance = ElasticComputeCloudModel.LicenseConfigurationRequest(
            licenseConfigurationArn: nil)

        return defaultInstance
    }()
}

public extension LoadBalancersConfig {
    /**
     Default instance of the LoadBalancersConfig structure.
     */
    public static let __default: ElasticComputeCloudModel.LoadBalancersConfig = {
        let defaultInstance = ElasticComputeCloudModel.LoadBalancersConfig(
            classicLoadBalancersConfig: nil,
            targetGroupsConfig: nil)

        return defaultInstance
    }()
}

public extension LoadPermission {
    /**
     Default instance of the LoadPermission structure.
     */
    public static let __default: ElasticComputeCloudModel.LoadPermission = {
        let defaultInstance = ElasticComputeCloudModel.LoadPermission(
            group: nil,
            userId: nil)

        return defaultInstance
    }()
}

public extension LoadPermissionModifications {
    /**
     Default instance of the LoadPermissionModifications structure.
     */
    public static let __default: ElasticComputeCloudModel.LoadPermissionModifications = {
        let defaultInstance = ElasticComputeCloudModel.LoadPermissionModifications(
            add: nil,
            remove: nil)

        return defaultInstance
    }()
}

public extension LoadPermissionRequest {
    /**
     Default instance of the LoadPermissionRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.LoadPermissionRequest = {
        let defaultInstance = ElasticComputeCloudModel.LoadPermissionRequest(
            group: nil,
            userId: nil)

        return defaultInstance
    }()
}

public extension ModifyCapacityReservationRequest {
    /**
     Default instance of the ModifyCapacityReservationRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyCapacityReservationRequest = {
        let defaultInstance = ElasticComputeCloudModel.ModifyCapacityReservationRequest(
            capacityReservationId: "value",
            dryRun: nil,
            endDate: nil,
            endDateType: nil,
            instanceCount: nil)

        return defaultInstance
    }()
}

public extension ModifyCapacityReservationResult {
    /**
     Default instance of the ModifyCapacityReservationResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyCapacityReservationResult = {
        let defaultInstance = ElasticComputeCloudModel.ModifyCapacityReservationResult(
            return: nil)

        return defaultInstance
    }()
}

public extension ModifyClientVpnEndpointRequest {
    /**
     Default instance of the ModifyClientVpnEndpointRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyClientVpnEndpointRequest = {
        let defaultInstance = ElasticComputeCloudModel.ModifyClientVpnEndpointRequest(
            clientVpnEndpointId: "value",
            connectionLogOptions: nil,
            description: nil,
            dnsServers: nil,
            dryRun: nil,
            serverCertificateArn: nil)

        return defaultInstance
    }()
}

public extension ModifyClientVpnEndpointResult {
    /**
     Default instance of the ModifyClientVpnEndpointResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyClientVpnEndpointResult = {
        let defaultInstance = ElasticComputeCloudModel.ModifyClientVpnEndpointResult(
            return: nil)

        return defaultInstance
    }()
}

public extension ModifyFleetRequest {
    /**
     Default instance of the ModifyFleetRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyFleetRequest = {
        let defaultInstance = ElasticComputeCloudModel.ModifyFleetRequest(
            dryRun: nil,
            excessCapacityTerminationPolicy: nil,
            fleetId: "value",
            targetCapacitySpecification: TargetCapacitySpecificationRequest.__default)

        return defaultInstance
    }()
}

public extension ModifyFleetResult {
    /**
     Default instance of the ModifyFleetResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyFleetResult = {
        let defaultInstance = ElasticComputeCloudModel.ModifyFleetResult(
            return: nil)

        return defaultInstance
    }()
}

public extension ModifyFpgaImageAttributeRequest {
    /**
     Default instance of the ModifyFpgaImageAttributeRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyFpgaImageAttributeRequest = {
        let defaultInstance = ElasticComputeCloudModel.ModifyFpgaImageAttributeRequest(
            attribute: nil,
            description: nil,
            dryRun: nil,
            fpgaImageId: "value",
            loadPermission: nil,
            name: nil,
            operationType: nil,
            productCodes: nil,
            userGroups: nil,
            userIds: nil)

        return defaultInstance
    }()
}

public extension ModifyFpgaImageAttributeResult {
    /**
     Default instance of the ModifyFpgaImageAttributeResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyFpgaImageAttributeResult = {
        let defaultInstance = ElasticComputeCloudModel.ModifyFpgaImageAttributeResult(
            fpgaImageAttribute: nil)

        return defaultInstance
    }()
}

public extension ModifyHostsRequest {
    /**
     Default instance of the ModifyHostsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyHostsRequest = {
        let defaultInstance = ElasticComputeCloudModel.ModifyHostsRequest(
            autoPlacement: .__default,
            hostIds: [])

        return defaultInstance
    }()
}

public extension ModifyHostsResult {
    /**
     Default instance of the ModifyHostsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyHostsResult = {
        let defaultInstance = ElasticComputeCloudModel.ModifyHostsResult(
            successful: nil,
            unsuccessful: nil)

        return defaultInstance
    }()
}

public extension ModifyIdFormatRequest {
    /**
     Default instance of the ModifyIdFormatRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyIdFormatRequest = {
        let defaultInstance = ElasticComputeCloudModel.ModifyIdFormatRequest(
            resource: "value",
            useLongIds: false)

        return defaultInstance
    }()
}

public extension ModifyIdentityIdFormatRequest {
    /**
     Default instance of the ModifyIdentityIdFormatRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyIdentityIdFormatRequest = {
        let defaultInstance = ElasticComputeCloudModel.ModifyIdentityIdFormatRequest(
            principalArn: "value",
            resource: "value",
            useLongIds: false)

        return defaultInstance
    }()
}

public extension ModifyImageAttributeRequest {
    /**
     Default instance of the ModifyImageAttributeRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyImageAttributeRequest = {
        let defaultInstance = ElasticComputeCloudModel.ModifyImageAttributeRequest(
            attribute: nil,
            description: nil,
            dryRun: nil,
            imageId: "value",
            launchPermission: nil,
            operationType: nil,
            productCodes: nil,
            userGroups: nil,
            userIds: nil,
            value: nil)

        return defaultInstance
    }()
}

public extension ModifyInstanceAttributeRequest {
    /**
     Default instance of the ModifyInstanceAttributeRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyInstanceAttributeRequest = {
        let defaultInstance = ElasticComputeCloudModel.ModifyInstanceAttributeRequest(
            attribute: nil,
            blockDeviceMappings: nil,
            disableApiTermination: nil,
            dryRun: nil,
            ebsOptimized: nil,
            enaSupport: nil,
            groups: nil,
            instanceId: "value",
            instanceInitiatedShutdownBehavior: nil,
            instanceType: nil,
            kernel: nil,
            ramdisk: nil,
            sourceDestCheck: nil,
            sriovNetSupport: nil,
            userData: nil,
            value: nil)

        return defaultInstance
    }()
}

public extension ModifyInstanceCapacityReservationAttributesRequest {
    /**
     Default instance of the ModifyInstanceCapacityReservationAttributesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesRequest = {
        let defaultInstance = ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesRequest(
            capacityReservationSpecification: CapacityReservationSpecification.__default,
            dryRun: nil,
            instanceId: "value")

        return defaultInstance
    }()
}

public extension ModifyInstanceCapacityReservationAttributesResult {
    /**
     Default instance of the ModifyInstanceCapacityReservationAttributesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesResult = {
        let defaultInstance = ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesResult(
            return: nil)

        return defaultInstance
    }()
}

public extension ModifyInstanceCreditSpecificationRequest {
    /**
     Default instance of the ModifyInstanceCreditSpecificationRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyInstanceCreditSpecificationRequest = {
        let defaultInstance = ElasticComputeCloudModel.ModifyInstanceCreditSpecificationRequest(
            clientToken: nil,
            dryRun: nil,
            instanceCreditSpecifications: [])

        return defaultInstance
    }()
}

public extension ModifyInstanceCreditSpecificationResult {
    /**
     Default instance of the ModifyInstanceCreditSpecificationResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyInstanceCreditSpecificationResult = {
        let defaultInstance = ElasticComputeCloudModel.ModifyInstanceCreditSpecificationResult(
            successfulInstanceCreditSpecifications: nil,
            unsuccessfulInstanceCreditSpecifications: nil)

        return defaultInstance
    }()
}

public extension ModifyInstancePlacementRequest {
    /**
     Default instance of the ModifyInstancePlacementRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyInstancePlacementRequest = {
        let defaultInstance = ElasticComputeCloudModel.ModifyInstancePlacementRequest(
            affinity: nil,
            groupName: nil,
            hostId: nil,
            instanceId: "value",
            partitionNumber: nil,
            tenancy: nil)

        return defaultInstance
    }()
}

public extension ModifyInstancePlacementResult {
    /**
     Default instance of the ModifyInstancePlacementResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyInstancePlacementResult = {
        let defaultInstance = ElasticComputeCloudModel.ModifyInstancePlacementResult(
            return: nil)

        return defaultInstance
    }()
}

public extension ModifyLaunchTemplateRequest {
    /**
     Default instance of the ModifyLaunchTemplateRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyLaunchTemplateRequest = {
        let defaultInstance = ElasticComputeCloudModel.ModifyLaunchTemplateRequest(
            clientToken: nil,
            defaultVersion: nil,
            dryRun: nil,
            launchTemplateId: nil,
            launchTemplateName: nil)

        return defaultInstance
    }()
}

public extension ModifyLaunchTemplateResult {
    /**
     Default instance of the ModifyLaunchTemplateResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyLaunchTemplateResult = {
        let defaultInstance = ElasticComputeCloudModel.ModifyLaunchTemplateResult(
            launchTemplate: nil)

        return defaultInstance
    }()
}

public extension ModifyNetworkInterfaceAttributeRequest {
    /**
     Default instance of the ModifyNetworkInterfaceAttributeRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyNetworkInterfaceAttributeRequest = {
        let defaultInstance = ElasticComputeCloudModel.ModifyNetworkInterfaceAttributeRequest(
            attachment: nil,
            description: nil,
            dryRun: nil,
            groups: nil,
            networkInterfaceId: "value",
            sourceDestCheck: nil)

        return defaultInstance
    }()
}

public extension ModifyReservedInstancesRequest {
    /**
     Default instance of the ModifyReservedInstancesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyReservedInstancesRequest = {
        let defaultInstance = ElasticComputeCloudModel.ModifyReservedInstancesRequest(
            clientToken: nil,
            reservedInstancesIds: [],
            targetConfigurations: [])

        return defaultInstance
    }()
}

public extension ModifyReservedInstancesResult {
    /**
     Default instance of the ModifyReservedInstancesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyReservedInstancesResult = {
        let defaultInstance = ElasticComputeCloudModel.ModifyReservedInstancesResult(
            reservedInstancesModificationId: nil)

        return defaultInstance
    }()
}

public extension ModifySnapshotAttributeRequest {
    /**
     Default instance of the ModifySnapshotAttributeRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifySnapshotAttributeRequest = {
        let defaultInstance = ElasticComputeCloudModel.ModifySnapshotAttributeRequest(
            attribute: nil,
            createVolumePermission: nil,
            dryRun: nil,
            groupNames: nil,
            operationType: nil,
            snapshotId: "value",
            userIds: nil)

        return defaultInstance
    }()
}

public extension ModifySpotFleetRequestRequest {
    /**
     Default instance of the ModifySpotFleetRequestRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifySpotFleetRequestRequest = {
        let defaultInstance = ElasticComputeCloudModel.ModifySpotFleetRequestRequest(
            excessCapacityTerminationPolicy: nil,
            spotFleetRequestId: "value",
            targetCapacity: nil)

        return defaultInstance
    }()
}

public extension ModifySpotFleetRequestResponse {
    /**
     Default instance of the ModifySpotFleetRequestResponse structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifySpotFleetRequestResponse = {
        let defaultInstance = ElasticComputeCloudModel.ModifySpotFleetRequestResponse(
            return: nil)

        return defaultInstance
    }()
}

public extension ModifySubnetAttributeRequest {
    /**
     Default instance of the ModifySubnetAttributeRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifySubnetAttributeRequest = {
        let defaultInstance = ElasticComputeCloudModel.ModifySubnetAttributeRequest(
            assignIpv6AddressOnCreation: nil,
            mapPublicIpOnLaunch: nil,
            subnetId: "value")

        return defaultInstance
    }()
}

public extension ModifyTransitGatewayVpcAttachmentRequest {
    /**
     Default instance of the ModifyTransitGatewayVpcAttachmentRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentRequest = {
        let defaultInstance = ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentRequest(
            addSubnetIds: nil,
            dryRun: nil,
            options: nil,
            removeSubnetIds: nil,
            transitGatewayAttachmentId: "value")

        return defaultInstance
    }()
}

public extension ModifyTransitGatewayVpcAttachmentRequestOptions {
    /**
     Default instance of the ModifyTransitGatewayVpcAttachmentRequestOptions structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentRequestOptions = {
        let defaultInstance = ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentRequestOptions(
            dnsSupport: nil,
            ipv6Support: nil)

        return defaultInstance
    }()
}

public extension ModifyTransitGatewayVpcAttachmentResult {
    /**
     Default instance of the ModifyTransitGatewayVpcAttachmentResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentResult = {
        let defaultInstance = ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentResult(
            transitGatewayVpcAttachment: nil)

        return defaultInstance
    }()
}

public extension ModifyVolumeAttributeRequest {
    /**
     Default instance of the ModifyVolumeAttributeRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyVolumeAttributeRequest = {
        let defaultInstance = ElasticComputeCloudModel.ModifyVolumeAttributeRequest(
            autoEnableIO: nil,
            dryRun: nil,
            volumeId: "value")

        return defaultInstance
    }()
}

public extension ModifyVolumeRequest {
    /**
     Default instance of the ModifyVolumeRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyVolumeRequest = {
        let defaultInstance = ElasticComputeCloudModel.ModifyVolumeRequest(
            dryRun: nil,
            iops: nil,
            size: nil,
            volumeId: "value",
            volumeType: nil)

        return defaultInstance
    }()
}

public extension ModifyVolumeResult {
    /**
     Default instance of the ModifyVolumeResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyVolumeResult = {
        let defaultInstance = ElasticComputeCloudModel.ModifyVolumeResult(
            volumeModification: nil)

        return defaultInstance
    }()
}

public extension ModifyVpcAttributeRequest {
    /**
     Default instance of the ModifyVpcAttributeRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyVpcAttributeRequest = {
        let defaultInstance = ElasticComputeCloudModel.ModifyVpcAttributeRequest(
            enableDnsHostnames: nil,
            enableDnsSupport: nil,
            vpcId: "value")

        return defaultInstance
    }()
}

public extension ModifyVpcEndpointConnectionNotificationRequest {
    /**
     Default instance of the ModifyVpcEndpointConnectionNotificationRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationRequest = {
        let defaultInstance = ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationRequest(
            connectionEvents: nil,
            connectionNotificationArn: nil,
            connectionNotificationId: "value",
            dryRun: nil)

        return defaultInstance
    }()
}

public extension ModifyVpcEndpointConnectionNotificationResult {
    /**
     Default instance of the ModifyVpcEndpointConnectionNotificationResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationResult = {
        let defaultInstance = ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationResult(
            returnValue: nil)

        return defaultInstance
    }()
}

public extension ModifyVpcEndpointRequest {
    /**
     Default instance of the ModifyVpcEndpointRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyVpcEndpointRequest = {
        let defaultInstance = ElasticComputeCloudModel.ModifyVpcEndpointRequest(
            addRouteTableIds: nil,
            addSecurityGroupIds: nil,
            addSubnetIds: nil,
            dryRun: nil,
            policyDocument: nil,
            privateDnsEnabled: nil,
            removeRouteTableIds: nil,
            removeSecurityGroupIds: nil,
            removeSubnetIds: nil,
            resetPolicy: nil,
            vpcEndpointId: "value")

        return defaultInstance
    }()
}

public extension ModifyVpcEndpointResult {
    /**
     Default instance of the ModifyVpcEndpointResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyVpcEndpointResult = {
        let defaultInstance = ElasticComputeCloudModel.ModifyVpcEndpointResult(
            return: nil)

        return defaultInstance
    }()
}

public extension ModifyVpcEndpointServiceConfigurationRequest {
    /**
     Default instance of the ModifyVpcEndpointServiceConfigurationRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationRequest = {
        let defaultInstance = ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationRequest(
            acceptanceRequired: nil,
            addNetworkLoadBalancerArns: nil,
            dryRun: nil,
            removeNetworkLoadBalancerArns: nil,
            serviceId: "value")

        return defaultInstance
    }()
}

public extension ModifyVpcEndpointServiceConfigurationResult {
    /**
     Default instance of the ModifyVpcEndpointServiceConfigurationResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationResult = {
        let defaultInstance = ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationResult(
            return: nil)

        return defaultInstance
    }()
}

public extension ModifyVpcEndpointServicePermissionsRequest {
    /**
     Default instance of the ModifyVpcEndpointServicePermissionsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsRequest = {
        let defaultInstance = ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsRequest(
            addAllowedPrincipals: nil,
            dryRun: nil,
            removeAllowedPrincipals: nil,
            serviceId: "value")

        return defaultInstance
    }()
}

public extension ModifyVpcEndpointServicePermissionsResult {
    /**
     Default instance of the ModifyVpcEndpointServicePermissionsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsResult = {
        let defaultInstance = ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsResult(
            returnValue: nil)

        return defaultInstance
    }()
}

public extension ModifyVpcPeeringConnectionOptionsRequest {
    /**
     Default instance of the ModifyVpcPeeringConnectionOptionsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsRequest = {
        let defaultInstance = ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsRequest(
            accepterPeeringConnectionOptions: nil,
            dryRun: nil,
            requesterPeeringConnectionOptions: nil,
            vpcPeeringConnectionId: "value")

        return defaultInstance
    }()
}

public extension ModifyVpcPeeringConnectionOptionsResult {
    /**
     Default instance of the ModifyVpcPeeringConnectionOptionsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsResult = {
        let defaultInstance = ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsResult(
            accepterPeeringConnectionOptions: nil,
            requesterPeeringConnectionOptions: nil)

        return defaultInstance
    }()
}

public extension ModifyVpcTenancyRequest {
    /**
     Default instance of the ModifyVpcTenancyRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyVpcTenancyRequest = {
        let defaultInstance = ElasticComputeCloudModel.ModifyVpcTenancyRequest(
            dryRun: nil,
            instanceTenancy: .__default,
            vpcId: "value")

        return defaultInstance
    }()
}

public extension ModifyVpcTenancyResult {
    /**
     Default instance of the ModifyVpcTenancyResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ModifyVpcTenancyResult = {
        let defaultInstance = ElasticComputeCloudModel.ModifyVpcTenancyResult(
            returnValue: nil)

        return defaultInstance
    }()
}

public extension MonitorInstancesRequest {
    /**
     Default instance of the MonitorInstancesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.MonitorInstancesRequest = {
        let defaultInstance = ElasticComputeCloudModel.MonitorInstancesRequest(
            dryRun: nil,
            instanceIds: [])

        return defaultInstance
    }()
}

public extension MonitorInstancesResult {
    /**
     Default instance of the MonitorInstancesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.MonitorInstancesResult = {
        let defaultInstance = ElasticComputeCloudModel.MonitorInstancesResult(
            instanceMonitorings: nil)

        return defaultInstance
    }()
}

public extension Monitoring {
    /**
     Default instance of the Monitoring structure.
     */
    public static let __default: ElasticComputeCloudModel.Monitoring = {
        let defaultInstance = ElasticComputeCloudModel.Monitoring(
            state: nil)

        return defaultInstance
    }()
}

public extension MoveAddressToVpcRequest {
    /**
     Default instance of the MoveAddressToVpcRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.MoveAddressToVpcRequest = {
        let defaultInstance = ElasticComputeCloudModel.MoveAddressToVpcRequest(
            dryRun: nil,
            publicIp: "value")

        return defaultInstance
    }()
}

public extension MoveAddressToVpcResult {
    /**
     Default instance of the MoveAddressToVpcResult structure.
     */
    public static let __default: ElasticComputeCloudModel.MoveAddressToVpcResult = {
        let defaultInstance = ElasticComputeCloudModel.MoveAddressToVpcResult(
            allocationId: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension MovingAddressStatus {
    /**
     Default instance of the MovingAddressStatus structure.
     */
    public static let __default: ElasticComputeCloudModel.MovingAddressStatus = {
        let defaultInstance = ElasticComputeCloudModel.MovingAddressStatus(
            moveStatus: nil,
            publicIp: nil)

        return defaultInstance
    }()
}

public extension NatGateway {
    /**
     Default instance of the NatGateway structure.
     */
    public static let __default: ElasticComputeCloudModel.NatGateway = {
        let defaultInstance = ElasticComputeCloudModel.NatGateway(
            createTime: nil,
            deleteTime: nil,
            failureCode: nil,
            failureMessage: nil,
            natGatewayAddresses: nil,
            natGatewayId: nil,
            provisionedBandwidth: nil,
            state: nil,
            subnetId: nil,
            tags: nil,
            vpcId: nil)

        return defaultInstance
    }()
}

public extension NatGatewayAddress {
    /**
     Default instance of the NatGatewayAddress structure.
     */
    public static let __default: ElasticComputeCloudModel.NatGatewayAddress = {
        let defaultInstance = ElasticComputeCloudModel.NatGatewayAddress(
            allocationId: nil,
            networkInterfaceId: nil,
            privateIp: nil,
            publicIp: nil)

        return defaultInstance
    }()
}

public extension NetworkAcl {
    /**
     Default instance of the NetworkAcl structure.
     */
    public static let __default: ElasticComputeCloudModel.NetworkAcl = {
        let defaultInstance = ElasticComputeCloudModel.NetworkAcl(
            associations: nil,
            entries: nil,
            isDefault: nil,
            networkAclId: nil,
            ownerId: nil,
            tags: nil,
            vpcId: nil)

        return defaultInstance
    }()
}

public extension NetworkAclAssociation {
    /**
     Default instance of the NetworkAclAssociation structure.
     */
    public static let __default: ElasticComputeCloudModel.NetworkAclAssociation = {
        let defaultInstance = ElasticComputeCloudModel.NetworkAclAssociation(
            networkAclAssociationId: nil,
            networkAclId: nil,
            subnetId: nil)

        return defaultInstance
    }()
}

public extension NetworkAclEntry {
    /**
     Default instance of the NetworkAclEntry structure.
     */
    public static let __default: ElasticComputeCloudModel.NetworkAclEntry = {
        let defaultInstance = ElasticComputeCloudModel.NetworkAclEntry(
            cidrBlock: nil,
            egress: nil,
            icmpTypeCode: nil,
            ipv6CidrBlock: nil,
            portRange: nil,
            protocol: nil,
            ruleAction: nil,
            ruleNumber: nil)

        return defaultInstance
    }()
}

public extension NetworkInterface {
    /**
     Default instance of the NetworkInterface structure.
     */
    public static let __default: ElasticComputeCloudModel.NetworkInterface = {
        let defaultInstance = ElasticComputeCloudModel.NetworkInterface(
            association: nil,
            attachment: nil,
            availabilityZone: nil,
            description: nil,
            groups: nil,
            interfaceType: nil,
            ipv6Addresses: nil,
            macAddress: nil,
            networkInterfaceId: nil,
            ownerId: nil,
            privateDnsName: nil,
            privateIpAddress: nil,
            privateIpAddresses: nil,
            requesterId: nil,
            requesterManaged: nil,
            sourceDestCheck: nil,
            status: nil,
            subnetId: nil,
            tagSet: nil,
            vpcId: nil)

        return defaultInstance
    }()
}

public extension NetworkInterfaceAssociation {
    /**
     Default instance of the NetworkInterfaceAssociation structure.
     */
    public static let __default: ElasticComputeCloudModel.NetworkInterfaceAssociation = {
        let defaultInstance = ElasticComputeCloudModel.NetworkInterfaceAssociation(
            allocationId: nil,
            associationId: nil,
            ipOwnerId: nil,
            publicDnsName: nil,
            publicIp: nil)

        return defaultInstance
    }()
}

public extension NetworkInterfaceAttachment {
    /**
     Default instance of the NetworkInterfaceAttachment structure.
     */
    public static let __default: ElasticComputeCloudModel.NetworkInterfaceAttachment = {
        let defaultInstance = ElasticComputeCloudModel.NetworkInterfaceAttachment(
            attachTime: nil,
            attachmentId: nil,
            deleteOnTermination: nil,
            deviceIndex: nil,
            instanceId: nil,
            instanceOwnerId: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension NetworkInterfaceAttachmentChanges {
    /**
     Default instance of the NetworkInterfaceAttachmentChanges structure.
     */
    public static let __default: ElasticComputeCloudModel.NetworkInterfaceAttachmentChanges = {
        let defaultInstance = ElasticComputeCloudModel.NetworkInterfaceAttachmentChanges(
            attachmentId: nil,
            deleteOnTermination: nil)

        return defaultInstance
    }()
}

public extension NetworkInterfaceIpv6Address {
    /**
     Default instance of the NetworkInterfaceIpv6Address structure.
     */
    public static let __default: ElasticComputeCloudModel.NetworkInterfaceIpv6Address = {
        let defaultInstance = ElasticComputeCloudModel.NetworkInterfaceIpv6Address(
            ipv6Address: nil)

        return defaultInstance
    }()
}

public extension NetworkInterfacePermission {
    /**
     Default instance of the NetworkInterfacePermission structure.
     */
    public static let __default: ElasticComputeCloudModel.NetworkInterfacePermission = {
        let defaultInstance = ElasticComputeCloudModel.NetworkInterfacePermission(
            awsAccountId: nil,
            awsService: nil,
            networkInterfaceId: nil,
            networkInterfacePermissionId: nil,
            permission: nil,
            permissionState: nil)

        return defaultInstance
    }()
}

public extension NetworkInterfacePermissionState {
    /**
     Default instance of the NetworkInterfacePermissionState structure.
     */
    public static let __default: ElasticComputeCloudModel.NetworkInterfacePermissionState = {
        let defaultInstance = ElasticComputeCloudModel.NetworkInterfacePermissionState(
            state: nil,
            statusMessage: nil)

        return defaultInstance
    }()
}

public extension NetworkInterfacePrivateIpAddress {
    /**
     Default instance of the NetworkInterfacePrivateIpAddress structure.
     */
    public static let __default: ElasticComputeCloudModel.NetworkInterfacePrivateIpAddress = {
        let defaultInstance = ElasticComputeCloudModel.NetworkInterfacePrivateIpAddress(
            association: nil,
            primary: nil,
            privateDnsName: nil,
            privateIpAddress: nil)

        return defaultInstance
    }()
}

public extension NewDhcpConfiguration {
    /**
     Default instance of the NewDhcpConfiguration structure.
     */
    public static let __default: ElasticComputeCloudModel.NewDhcpConfiguration = {
        let defaultInstance = ElasticComputeCloudModel.NewDhcpConfiguration(
            key: nil,
            values: nil)

        return defaultInstance
    }()
}

public extension OnDemandOptions {
    /**
     Default instance of the OnDemandOptions structure.
     */
    public static let __default: ElasticComputeCloudModel.OnDemandOptions = {
        let defaultInstance = ElasticComputeCloudModel.OnDemandOptions(
            allocationStrategy: nil,
            minTargetCapacity: nil,
            singleAvailabilityZone: nil,
            singleInstanceType: nil)

        return defaultInstance
    }()
}

public extension OnDemandOptionsRequest {
    /**
     Default instance of the OnDemandOptionsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.OnDemandOptionsRequest = {
        let defaultInstance = ElasticComputeCloudModel.OnDemandOptionsRequest(
            allocationStrategy: nil,
            minTargetCapacity: nil,
            singleAvailabilityZone: nil,
            singleInstanceType: nil)

        return defaultInstance
    }()
}

public extension PciId {
    /**
     Default instance of the PciId structure.
     */
    public static let __default: ElasticComputeCloudModel.PciId = {
        let defaultInstance = ElasticComputeCloudModel.PciId(
            deviceId: nil,
            subsystemId: nil,
            subsystemVendorId: nil,
            vendorId: nil)

        return defaultInstance
    }()
}

public extension PeeringConnectionOptions {
    /**
     Default instance of the PeeringConnectionOptions structure.
     */
    public static let __default: ElasticComputeCloudModel.PeeringConnectionOptions = {
        let defaultInstance = ElasticComputeCloudModel.PeeringConnectionOptions(
            allowDnsResolutionFromRemoteVpc: nil,
            allowEgressFromLocalClassicLinkToRemoteVpc: nil,
            allowEgressFromLocalVpcToRemoteClassicLink: nil)

        return defaultInstance
    }()
}

public extension PeeringConnectionOptionsRequest {
    /**
     Default instance of the PeeringConnectionOptionsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.PeeringConnectionOptionsRequest = {
        let defaultInstance = ElasticComputeCloudModel.PeeringConnectionOptionsRequest(
            allowDnsResolutionFromRemoteVpc: nil,
            allowEgressFromLocalClassicLinkToRemoteVpc: nil,
            allowEgressFromLocalVpcToRemoteClassicLink: nil)

        return defaultInstance
    }()
}

public extension Placement {
    /**
     Default instance of the Placement structure.
     */
    public static let __default: ElasticComputeCloudModel.Placement = {
        let defaultInstance = ElasticComputeCloudModel.Placement(
            affinity: nil,
            availabilityZone: nil,
            groupName: nil,
            hostId: nil,
            partitionNumber: nil,
            spreadDomain: nil,
            tenancy: nil)

        return defaultInstance
    }()
}

public extension PlacementGroup {
    /**
     Default instance of the PlacementGroup structure.
     */
    public static let __default: ElasticComputeCloudModel.PlacementGroup = {
        let defaultInstance = ElasticComputeCloudModel.PlacementGroup(
            groupName: nil,
            partitionCount: nil,
            state: nil,
            strategy: nil)

        return defaultInstance
    }()
}

public extension PlacementResponse {
    /**
     Default instance of the PlacementResponse structure.
     */
    public static let __default: ElasticComputeCloudModel.PlacementResponse = {
        let defaultInstance = ElasticComputeCloudModel.PlacementResponse(
            groupName: nil)

        return defaultInstance
    }()
}

public extension PortRange {
    /**
     Default instance of the PortRange structure.
     */
    public static let __default: ElasticComputeCloudModel.PortRange = {
        let defaultInstance = ElasticComputeCloudModel.PortRange(
            from: nil,
            to: nil)

        return defaultInstance
    }()
}

public extension PrefixList {
    /**
     Default instance of the PrefixList structure.
     */
    public static let __default: ElasticComputeCloudModel.PrefixList = {
        let defaultInstance = ElasticComputeCloudModel.PrefixList(
            cidrs: nil,
            prefixListId: nil,
            prefixListName: nil)

        return defaultInstance
    }()
}

public extension PrefixListId {
    /**
     Default instance of the PrefixListId structure.
     */
    public static let __default: ElasticComputeCloudModel.PrefixListId = {
        let defaultInstance = ElasticComputeCloudModel.PrefixListId(
            description: nil,
            prefixListId: nil)

        return defaultInstance
    }()
}

public extension PriceSchedule {
    /**
     Default instance of the PriceSchedule structure.
     */
    public static let __default: ElasticComputeCloudModel.PriceSchedule = {
        let defaultInstance = ElasticComputeCloudModel.PriceSchedule(
            active: nil,
            currencyCode: nil,
            price: nil,
            term: nil)

        return defaultInstance
    }()
}

public extension PriceScheduleSpecification {
    /**
     Default instance of the PriceScheduleSpecification structure.
     */
    public static let __default: ElasticComputeCloudModel.PriceScheduleSpecification = {
        let defaultInstance = ElasticComputeCloudModel.PriceScheduleSpecification(
            currencyCode: nil,
            price: nil,
            term: nil)

        return defaultInstance
    }()
}

public extension PricingDetail {
    /**
     Default instance of the PricingDetail structure.
     */
    public static let __default: ElasticComputeCloudModel.PricingDetail = {
        let defaultInstance = ElasticComputeCloudModel.PricingDetail(
            count: nil,
            price: nil)

        return defaultInstance
    }()
}

public extension PrincipalIdFormat {
    /**
     Default instance of the PrincipalIdFormat structure.
     */
    public static let __default: ElasticComputeCloudModel.PrincipalIdFormat = {
        let defaultInstance = ElasticComputeCloudModel.PrincipalIdFormat(
            arn: nil,
            statuses: nil)

        return defaultInstance
    }()
}

public extension PrivateIpAddressSpecification {
    /**
     Default instance of the PrivateIpAddressSpecification structure.
     */
    public static let __default: ElasticComputeCloudModel.PrivateIpAddressSpecification = {
        let defaultInstance = ElasticComputeCloudModel.PrivateIpAddressSpecification(
            primary: nil,
            privateIpAddress: nil)

        return defaultInstance
    }()
}

public extension ProductCode {
    /**
     Default instance of the ProductCode structure.
     */
    public static let __default: ElasticComputeCloudModel.ProductCode = {
        let defaultInstance = ElasticComputeCloudModel.ProductCode(
            productCodeId: nil,
            productCodeType: nil)

        return defaultInstance
    }()
}

public extension PropagatingVgw {
    /**
     Default instance of the PropagatingVgw structure.
     */
    public static let __default: ElasticComputeCloudModel.PropagatingVgw = {
        let defaultInstance = ElasticComputeCloudModel.PropagatingVgw(
            gatewayId: nil)

        return defaultInstance
    }()
}

public extension ProvisionByoipCidrRequest {
    /**
     Default instance of the ProvisionByoipCidrRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ProvisionByoipCidrRequest = {
        let defaultInstance = ElasticComputeCloudModel.ProvisionByoipCidrRequest(
            cidr: "value",
            cidrAuthorizationContext: nil,
            description: nil,
            dryRun: nil)

        return defaultInstance
    }()
}

public extension ProvisionByoipCidrResult {
    /**
     Default instance of the ProvisionByoipCidrResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ProvisionByoipCidrResult = {
        let defaultInstance = ElasticComputeCloudModel.ProvisionByoipCidrResult(
            byoipCidr: nil)

        return defaultInstance
    }()
}

public extension ProvisionedBandwidth {
    /**
     Default instance of the ProvisionedBandwidth structure.
     */
    public static let __default: ElasticComputeCloudModel.ProvisionedBandwidth = {
        let defaultInstance = ElasticComputeCloudModel.ProvisionedBandwidth(
            provisionTime: nil,
            provisioned: nil,
            requestTime: nil,
            requested: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension PublicIpv4Pool {
    /**
     Default instance of the PublicIpv4Pool structure.
     */
    public static let __default: ElasticComputeCloudModel.PublicIpv4Pool = {
        let defaultInstance = ElasticComputeCloudModel.PublicIpv4Pool(
            description: nil,
            poolAddressRanges: nil,
            poolId: nil,
            totalAddressCount: nil,
            totalAvailableAddressCount: nil)

        return defaultInstance
    }()
}

public extension PublicIpv4PoolRange {
    /**
     Default instance of the PublicIpv4PoolRange structure.
     */
    public static let __default: ElasticComputeCloudModel.PublicIpv4PoolRange = {
        let defaultInstance = ElasticComputeCloudModel.PublicIpv4PoolRange(
            addressCount: nil,
            availableAddressCount: nil,
            firstAddress: nil,
            lastAddress: nil)

        return defaultInstance
    }()
}

public extension Purchase {
    /**
     Default instance of the Purchase structure.
     */
    public static let __default: ElasticComputeCloudModel.Purchase = {
        let defaultInstance = ElasticComputeCloudModel.Purchase(
            currencyCode: nil,
            duration: nil,
            hostIdSet: nil,
            hostReservationId: nil,
            hourlyPrice: nil,
            instanceFamily: nil,
            paymentOption: nil,
            upfrontPrice: nil)

        return defaultInstance
    }()
}

public extension PurchaseHostReservationRequest {
    /**
     Default instance of the PurchaseHostReservationRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.PurchaseHostReservationRequest = {
        let defaultInstance = ElasticComputeCloudModel.PurchaseHostReservationRequest(
            clientToken: nil,
            currencyCode: nil,
            hostIdSet: [],
            limitPrice: nil,
            offeringId: "value")

        return defaultInstance
    }()
}

public extension PurchaseHostReservationResult {
    /**
     Default instance of the PurchaseHostReservationResult structure.
     */
    public static let __default: ElasticComputeCloudModel.PurchaseHostReservationResult = {
        let defaultInstance = ElasticComputeCloudModel.PurchaseHostReservationResult(
            clientToken: nil,
            currencyCode: nil,
            purchase: nil,
            totalHourlyPrice: nil,
            totalUpfrontPrice: nil)

        return defaultInstance
    }()
}

public extension PurchaseRequest {
    /**
     Default instance of the PurchaseRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.PurchaseRequest = {
        let defaultInstance = ElasticComputeCloudModel.PurchaseRequest(
            instanceCount: 0,
            purchaseToken: "value")

        return defaultInstance
    }()
}

public extension PurchaseReservedInstancesOfferingRequest {
    /**
     Default instance of the PurchaseReservedInstancesOfferingRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.PurchaseReservedInstancesOfferingRequest = {
        let defaultInstance = ElasticComputeCloudModel.PurchaseReservedInstancesOfferingRequest(
            dryRun: nil,
            instanceCount: 0,
            limitPrice: nil,
            reservedInstancesOfferingId: "value")

        return defaultInstance
    }()
}

public extension PurchaseReservedInstancesOfferingResult {
    /**
     Default instance of the PurchaseReservedInstancesOfferingResult structure.
     */
    public static let __default: ElasticComputeCloudModel.PurchaseReservedInstancesOfferingResult = {
        let defaultInstance = ElasticComputeCloudModel.PurchaseReservedInstancesOfferingResult(
            reservedInstancesId: nil)

        return defaultInstance
    }()
}

public extension PurchaseScheduledInstancesRequest {
    /**
     Default instance of the PurchaseScheduledInstancesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.PurchaseScheduledInstancesRequest = {
        let defaultInstance = ElasticComputeCloudModel.PurchaseScheduledInstancesRequest(
            clientToken: nil,
            dryRun: nil,
            purchaseRequests: [PurchaseRequest.__default])

        return defaultInstance
    }()
}

public extension PurchaseScheduledInstancesResult {
    /**
     Default instance of the PurchaseScheduledInstancesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.PurchaseScheduledInstancesResult = {
        let defaultInstance = ElasticComputeCloudModel.PurchaseScheduledInstancesResult(
            scheduledInstanceSet: nil)

        return defaultInstance
    }()
}

public extension RebootInstancesRequest {
    /**
     Default instance of the RebootInstancesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.RebootInstancesRequest = {
        let defaultInstance = ElasticComputeCloudModel.RebootInstancesRequest(
            dryRun: nil,
            instanceIds: [])

        return defaultInstance
    }()
}

public extension RecurringCharge {
    /**
     Default instance of the RecurringCharge structure.
     */
    public static let __default: ElasticComputeCloudModel.RecurringCharge = {
        let defaultInstance = ElasticComputeCloudModel.RecurringCharge(
            amount: nil,
            frequency: nil)

        return defaultInstance
    }()
}

public extension Region {
    /**
     Default instance of the Region structure.
     */
    public static let __default: ElasticComputeCloudModel.Region = {
        let defaultInstance = ElasticComputeCloudModel.Region(
            endpoint: nil,
            regionName: nil)

        return defaultInstance
    }()
}

public extension RegisterImageRequest {
    /**
     Default instance of the RegisterImageRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.RegisterImageRequest = {
        let defaultInstance = ElasticComputeCloudModel.RegisterImageRequest(
            architecture: nil,
            billingProducts: nil,
            blockDeviceMappings: nil,
            description: nil,
            dryRun: nil,
            enaSupport: nil,
            imageLocation: nil,
            kernelId: nil,
            name: "value",
            ramdiskId: nil,
            rootDeviceName: nil,
            sriovNetSupport: nil,
            virtualizationType: nil)

        return defaultInstance
    }()
}

public extension RegisterImageResult {
    /**
     Default instance of the RegisterImageResult structure.
     */
    public static let __default: ElasticComputeCloudModel.RegisterImageResult = {
        let defaultInstance = ElasticComputeCloudModel.RegisterImageResult(
            imageId: nil)

        return defaultInstance
    }()
}

public extension RejectTransitGatewayVpcAttachmentRequest {
    /**
     Default instance of the RejectTransitGatewayVpcAttachmentRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentRequest = {
        let defaultInstance = ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentRequest(
            dryRun: nil,
            transitGatewayAttachmentId: "value")

        return defaultInstance
    }()
}

public extension RejectTransitGatewayVpcAttachmentResult {
    /**
     Default instance of the RejectTransitGatewayVpcAttachmentResult structure.
     */
    public static let __default: ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentResult = {
        let defaultInstance = ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentResult(
            transitGatewayVpcAttachment: nil)

        return defaultInstance
    }()
}

public extension RejectVpcEndpointConnectionsRequest {
    /**
     Default instance of the RejectVpcEndpointConnectionsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.RejectVpcEndpointConnectionsRequest = {
        let defaultInstance = ElasticComputeCloudModel.RejectVpcEndpointConnectionsRequest(
            dryRun: nil,
            serviceId: "value",
            vpcEndpointIds: [])

        return defaultInstance
    }()
}

public extension RejectVpcEndpointConnectionsResult {
    /**
     Default instance of the RejectVpcEndpointConnectionsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.RejectVpcEndpointConnectionsResult = {
        let defaultInstance = ElasticComputeCloudModel.RejectVpcEndpointConnectionsResult(
            unsuccessful: nil)

        return defaultInstance
    }()
}

public extension RejectVpcPeeringConnectionRequest {
    /**
     Default instance of the RejectVpcPeeringConnectionRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.RejectVpcPeeringConnectionRequest = {
        let defaultInstance = ElasticComputeCloudModel.RejectVpcPeeringConnectionRequest(
            dryRun: nil,
            vpcPeeringConnectionId: "value")

        return defaultInstance
    }()
}

public extension RejectVpcPeeringConnectionResult {
    /**
     Default instance of the RejectVpcPeeringConnectionResult structure.
     */
    public static let __default: ElasticComputeCloudModel.RejectVpcPeeringConnectionResult = {
        let defaultInstance = ElasticComputeCloudModel.RejectVpcPeeringConnectionResult(
            return: nil)

        return defaultInstance
    }()
}

public extension ReleaseAddressRequest {
    /**
     Default instance of the ReleaseAddressRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ReleaseAddressRequest = {
        let defaultInstance = ElasticComputeCloudModel.ReleaseAddressRequest(
            allocationId: nil,
            dryRun: nil,
            publicIp: nil)

        return defaultInstance
    }()
}

public extension ReleaseHostsRequest {
    /**
     Default instance of the ReleaseHostsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ReleaseHostsRequest = {
        let defaultInstance = ElasticComputeCloudModel.ReleaseHostsRequest(
            hostIds: [])

        return defaultInstance
    }()
}

public extension ReleaseHostsResult {
    /**
     Default instance of the ReleaseHostsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ReleaseHostsResult = {
        let defaultInstance = ElasticComputeCloudModel.ReleaseHostsResult(
            successful: nil,
            unsuccessful: nil)

        return defaultInstance
    }()
}

public extension ReplaceIamInstanceProfileAssociationRequest {
    /**
     Default instance of the ReplaceIamInstanceProfileAssociationRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationRequest = {
        let defaultInstance = ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationRequest(
            associationId: "value",
            iamInstanceProfile: IamInstanceProfileSpecification.__default)

        return defaultInstance
    }()
}

public extension ReplaceIamInstanceProfileAssociationResult {
    /**
     Default instance of the ReplaceIamInstanceProfileAssociationResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationResult = {
        let defaultInstance = ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationResult(
            iamInstanceProfileAssociation: nil)

        return defaultInstance
    }()
}

public extension ReplaceNetworkAclAssociationRequest {
    /**
     Default instance of the ReplaceNetworkAclAssociationRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ReplaceNetworkAclAssociationRequest = {
        let defaultInstance = ElasticComputeCloudModel.ReplaceNetworkAclAssociationRequest(
            associationId: "value",
            dryRun: nil,
            networkAclId: "value")

        return defaultInstance
    }()
}

public extension ReplaceNetworkAclAssociationResult {
    /**
     Default instance of the ReplaceNetworkAclAssociationResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ReplaceNetworkAclAssociationResult = {
        let defaultInstance = ElasticComputeCloudModel.ReplaceNetworkAclAssociationResult(
            newAssociationId: nil)

        return defaultInstance
    }()
}

public extension ReplaceNetworkAclEntryRequest {
    /**
     Default instance of the ReplaceNetworkAclEntryRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ReplaceNetworkAclEntryRequest = {
        let defaultInstance = ElasticComputeCloudModel.ReplaceNetworkAclEntryRequest(
            cidrBlock: nil,
            dryRun: nil,
            egress: false,
            icmpTypeCode: nil,
            ipv6CidrBlock: nil,
            networkAclId: "value",
            portRange: nil,
            protocol: "value",
            ruleAction: .__default,
            ruleNumber: 0)

        return defaultInstance
    }()
}

public extension ReplaceRouteRequest {
    /**
     Default instance of the ReplaceRouteRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ReplaceRouteRequest = {
        let defaultInstance = ElasticComputeCloudModel.ReplaceRouteRequest(
            destinationCidrBlock: nil,
            destinationIpv6CidrBlock: nil,
            dryRun: nil,
            egressOnlyInternetGatewayId: nil,
            gatewayId: nil,
            instanceId: nil,
            natGatewayId: nil,
            networkInterfaceId: nil,
            routeTableId: "value",
            transitGatewayId: nil,
            vpcPeeringConnectionId: nil)

        return defaultInstance
    }()
}

public extension ReplaceRouteTableAssociationRequest {
    /**
     Default instance of the ReplaceRouteTableAssociationRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ReplaceRouteTableAssociationRequest = {
        let defaultInstance = ElasticComputeCloudModel.ReplaceRouteTableAssociationRequest(
            associationId: "value",
            dryRun: nil,
            routeTableId: "value")

        return defaultInstance
    }()
}

public extension ReplaceRouteTableAssociationResult {
    /**
     Default instance of the ReplaceRouteTableAssociationResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ReplaceRouteTableAssociationResult = {
        let defaultInstance = ElasticComputeCloudModel.ReplaceRouteTableAssociationResult(
            newAssociationId: nil)

        return defaultInstance
    }()
}

public extension ReplaceTransitGatewayRouteRequest {
    /**
     Default instance of the ReplaceTransitGatewayRouteRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ReplaceTransitGatewayRouteRequest = {
        let defaultInstance = ElasticComputeCloudModel.ReplaceTransitGatewayRouteRequest(
            blackhole: nil,
            destinationCidrBlock: "value",
            dryRun: nil,
            transitGatewayAttachmentId: nil,
            transitGatewayRouteTableId: "value")

        return defaultInstance
    }()
}

public extension ReplaceTransitGatewayRouteResult {
    /**
     Default instance of the ReplaceTransitGatewayRouteResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ReplaceTransitGatewayRouteResult = {
        let defaultInstance = ElasticComputeCloudModel.ReplaceTransitGatewayRouteResult(
            route: nil)

        return defaultInstance
    }()
}

public extension ReportInstanceStatusRequest {
    /**
     Default instance of the ReportInstanceStatusRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ReportInstanceStatusRequest = {
        let defaultInstance = ElasticComputeCloudModel.ReportInstanceStatusRequest(
            description: nil,
            dryRun: nil,
            endTime: nil,
            instances: [],
            reasonCodes: [],
            startTime: nil,
            status: .__default)

        return defaultInstance
    }()
}

public extension RequestLaunchTemplateData {
    /**
     Default instance of the RequestLaunchTemplateData structure.
     */
    public static let __default: ElasticComputeCloudModel.RequestLaunchTemplateData = {
        let defaultInstance = ElasticComputeCloudModel.RequestLaunchTemplateData(
            blockDeviceMappings: nil,
            capacityReservationSpecification: nil,
            cpuOptions: nil,
            creditSpecification: nil,
            disableApiTermination: nil,
            ebsOptimized: nil,
            elasticGpuSpecifications: nil,
            elasticInferenceAccelerators: nil,
            hibernationOptions: nil,
            iamInstanceProfile: nil,
            imageId: nil,
            instanceInitiatedShutdownBehavior: nil,
            instanceMarketOptions: nil,
            instanceType: nil,
            kernelId: nil,
            keyName: nil,
            licenseSpecifications: nil,
            monitoring: nil,
            networkInterfaces: nil,
            placement: nil,
            ramDiskId: nil,
            securityGroupIds: nil,
            securityGroups: nil,
            tagSpecifications: nil,
            userData: nil)

        return defaultInstance
    }()
}

public extension RequestSpotFleetRequest {
    /**
     Default instance of the RequestSpotFleetRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.RequestSpotFleetRequest = {
        let defaultInstance = ElasticComputeCloudModel.RequestSpotFleetRequest(
            dryRun: nil,
            spotFleetRequestConfig: SpotFleetRequestConfigData.__default)

        return defaultInstance
    }()
}

public extension RequestSpotFleetResponse {
    /**
     Default instance of the RequestSpotFleetResponse structure.
     */
    public static let __default: ElasticComputeCloudModel.RequestSpotFleetResponse = {
        let defaultInstance = ElasticComputeCloudModel.RequestSpotFleetResponse(
            spotFleetRequestId: nil)

        return defaultInstance
    }()
}

public extension RequestSpotInstancesRequest {
    /**
     Default instance of the RequestSpotInstancesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.RequestSpotInstancesRequest = {
        let defaultInstance = ElasticComputeCloudModel.RequestSpotInstancesRequest(
            availabilityZoneGroup: nil,
            blockDurationMinutes: nil,
            clientToken: nil,
            dryRun: nil,
            instanceCount: nil,
            instanceInterruptionBehavior: nil,
            launchGroup: nil,
            launchSpecification: nil,
            spotPrice: nil,
            type: nil,
            validFrom: nil,
            validUntil: nil)

        return defaultInstance
    }()
}

public extension RequestSpotInstancesResult {
    /**
     Default instance of the RequestSpotInstancesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.RequestSpotInstancesResult = {
        let defaultInstance = ElasticComputeCloudModel.RequestSpotInstancesResult(
            spotInstanceRequests: nil)

        return defaultInstance
    }()
}

public extension RequestSpotLaunchSpecification {
    /**
     Default instance of the RequestSpotLaunchSpecification structure.
     */
    public static let __default: ElasticComputeCloudModel.RequestSpotLaunchSpecification = {
        let defaultInstance = ElasticComputeCloudModel.RequestSpotLaunchSpecification(
            addressingType: nil,
            blockDeviceMappings: nil,
            ebsOptimized: nil,
            iamInstanceProfile: nil,
            imageId: nil,
            instanceType: nil,
            kernelId: nil,
            keyName: nil,
            monitoring: nil,
            networkInterfaces: nil,
            placement: nil,
            ramdiskId: nil,
            securityGroupIds: nil,
            securityGroups: nil,
            subnetId: nil,
            userData: nil)

        return defaultInstance
    }()
}

public extension Reservation {
    /**
     Default instance of the Reservation structure.
     */
    public static let __default: ElasticComputeCloudModel.Reservation = {
        let defaultInstance = ElasticComputeCloudModel.Reservation(
            groups: nil,
            instances: nil,
            ownerId: nil,
            requesterId: nil,
            reservationId: nil)

        return defaultInstance
    }()
}

public extension ReservationValue {
    /**
     Default instance of the ReservationValue structure.
     */
    public static let __default: ElasticComputeCloudModel.ReservationValue = {
        let defaultInstance = ElasticComputeCloudModel.ReservationValue(
            hourlyPrice: nil,
            remainingTotalValue: nil,
            remainingUpfrontValue: nil)

        return defaultInstance
    }()
}

public extension ReservedInstanceLimitPrice {
    /**
     Default instance of the ReservedInstanceLimitPrice structure.
     */
    public static let __default: ElasticComputeCloudModel.ReservedInstanceLimitPrice = {
        let defaultInstance = ElasticComputeCloudModel.ReservedInstanceLimitPrice(
            amount: nil,
            currencyCode: nil)

        return defaultInstance
    }()
}

public extension ReservedInstanceReservationValue {
    /**
     Default instance of the ReservedInstanceReservationValue structure.
     */
    public static let __default: ElasticComputeCloudModel.ReservedInstanceReservationValue = {
        let defaultInstance = ElasticComputeCloudModel.ReservedInstanceReservationValue(
            reservationValue: nil,
            reservedInstanceId: nil)

        return defaultInstance
    }()
}

public extension ReservedInstances {
    /**
     Default instance of the ReservedInstances structure.
     */
    public static let __default: ElasticComputeCloudModel.ReservedInstances = {
        let defaultInstance = ElasticComputeCloudModel.ReservedInstances(
            availabilityZone: nil,
            currencyCode: nil,
            duration: nil,
            end: nil,
            fixedPrice: nil,
            instanceCount: nil,
            instanceTenancy: nil,
            instanceType: nil,
            offeringClass: nil,
            offeringType: nil,
            productDescription: nil,
            recurringCharges: nil,
            reservedInstancesId: nil,
            scope: nil,
            start: nil,
            state: nil,
            tags: nil,
            usagePrice: nil)

        return defaultInstance
    }()
}

public extension ReservedInstancesConfiguration {
    /**
     Default instance of the ReservedInstancesConfiguration structure.
     */
    public static let __default: ElasticComputeCloudModel.ReservedInstancesConfiguration = {
        let defaultInstance = ElasticComputeCloudModel.ReservedInstancesConfiguration(
            availabilityZone: nil,
            instanceCount: nil,
            instanceType: nil,
            platform: nil,
            scope: nil)

        return defaultInstance
    }()
}

public extension ReservedInstancesId {
    /**
     Default instance of the ReservedInstancesId structure.
     */
    public static let __default: ElasticComputeCloudModel.ReservedInstancesId = {
        let defaultInstance = ElasticComputeCloudModel.ReservedInstancesId(
            reservedInstancesId: nil)

        return defaultInstance
    }()
}

public extension ReservedInstancesListing {
    /**
     Default instance of the ReservedInstancesListing structure.
     */
    public static let __default: ElasticComputeCloudModel.ReservedInstancesListing = {
        let defaultInstance = ElasticComputeCloudModel.ReservedInstancesListing(
            clientToken: nil,
            createDate: nil,
            instanceCounts: nil,
            priceSchedules: nil,
            reservedInstancesId: nil,
            reservedInstancesListingId: nil,
            status: nil,
            statusMessage: nil,
            tags: nil,
            updateDate: nil)

        return defaultInstance
    }()
}

public extension ReservedInstancesModification {
    /**
     Default instance of the ReservedInstancesModification structure.
     */
    public static let __default: ElasticComputeCloudModel.ReservedInstancesModification = {
        let defaultInstance = ElasticComputeCloudModel.ReservedInstancesModification(
            clientToken: nil,
            createDate: nil,
            effectiveDate: nil,
            modificationResults: nil,
            reservedInstancesIds: nil,
            reservedInstancesModificationId: nil,
            status: nil,
            statusMessage: nil,
            updateDate: nil)

        return defaultInstance
    }()
}

public extension ReservedInstancesModificationResult {
    /**
     Default instance of the ReservedInstancesModificationResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ReservedInstancesModificationResult = {
        let defaultInstance = ElasticComputeCloudModel.ReservedInstancesModificationResult(
            reservedInstancesId: nil,
            targetConfiguration: nil)

        return defaultInstance
    }()
}

public extension ReservedInstancesOffering {
    /**
     Default instance of the ReservedInstancesOffering structure.
     */
    public static let __default: ElasticComputeCloudModel.ReservedInstancesOffering = {
        let defaultInstance = ElasticComputeCloudModel.ReservedInstancesOffering(
            availabilityZone: nil,
            currencyCode: nil,
            duration: nil,
            fixedPrice: nil,
            instanceTenancy: nil,
            instanceType: nil,
            marketplace: nil,
            offeringClass: nil,
            offeringType: nil,
            pricingDetails: nil,
            productDescription: nil,
            recurringCharges: nil,
            reservedInstancesOfferingId: nil,
            scope: nil,
            usagePrice: nil)

        return defaultInstance
    }()
}

public extension ResetFpgaImageAttributeRequest {
    /**
     Default instance of the ResetFpgaImageAttributeRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ResetFpgaImageAttributeRequest = {
        let defaultInstance = ElasticComputeCloudModel.ResetFpgaImageAttributeRequest(
            attribute: nil,
            dryRun: nil,
            fpgaImageId: "value")

        return defaultInstance
    }()
}

public extension ResetFpgaImageAttributeResult {
    /**
     Default instance of the ResetFpgaImageAttributeResult structure.
     */
    public static let __default: ElasticComputeCloudModel.ResetFpgaImageAttributeResult = {
        let defaultInstance = ElasticComputeCloudModel.ResetFpgaImageAttributeResult(
            return: nil)

        return defaultInstance
    }()
}

public extension ResetImageAttributeRequest {
    /**
     Default instance of the ResetImageAttributeRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ResetImageAttributeRequest = {
        let defaultInstance = ElasticComputeCloudModel.ResetImageAttributeRequest(
            attribute: .__default,
            dryRun: nil,
            imageId: "value")

        return defaultInstance
    }()
}

public extension ResetInstanceAttributeRequest {
    /**
     Default instance of the ResetInstanceAttributeRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ResetInstanceAttributeRequest = {
        let defaultInstance = ElasticComputeCloudModel.ResetInstanceAttributeRequest(
            attribute: .__default,
            dryRun: nil,
            instanceId: "value")

        return defaultInstance
    }()
}

public extension ResetNetworkInterfaceAttributeRequest {
    /**
     Default instance of the ResetNetworkInterfaceAttributeRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ResetNetworkInterfaceAttributeRequest = {
        let defaultInstance = ElasticComputeCloudModel.ResetNetworkInterfaceAttributeRequest(
            dryRun: nil,
            networkInterfaceId: "value",
            sourceDestCheck: nil)

        return defaultInstance
    }()
}

public extension ResetSnapshotAttributeRequest {
    /**
     Default instance of the ResetSnapshotAttributeRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ResetSnapshotAttributeRequest = {
        let defaultInstance = ElasticComputeCloudModel.ResetSnapshotAttributeRequest(
            attribute: .__default,
            dryRun: nil,
            snapshotId: "value")

        return defaultInstance
    }()
}

public extension ResponseError {
    /**
     Default instance of the ResponseError structure.
     */
    public static let __default: ElasticComputeCloudModel.ResponseError = {
        let defaultInstance = ElasticComputeCloudModel.ResponseError(
            code: nil,
            message: nil)

        return defaultInstance
    }()
}

public extension ResponseLaunchTemplateData {
    /**
     Default instance of the ResponseLaunchTemplateData structure.
     */
    public static let __default: ElasticComputeCloudModel.ResponseLaunchTemplateData = {
        let defaultInstance = ElasticComputeCloudModel.ResponseLaunchTemplateData(
            blockDeviceMappings: nil,
            capacityReservationSpecification: nil,
            cpuOptions: nil,
            creditSpecification: nil,
            disableApiTermination: nil,
            ebsOptimized: nil,
            elasticGpuSpecifications: nil,
            elasticInferenceAccelerators: nil,
            hibernationOptions: nil,
            iamInstanceProfile: nil,
            imageId: nil,
            instanceInitiatedShutdownBehavior: nil,
            instanceMarketOptions: nil,
            instanceType: nil,
            kernelId: nil,
            keyName: nil,
            licenseSpecifications: nil,
            monitoring: nil,
            networkInterfaces: nil,
            placement: nil,
            ramDiskId: nil,
            securityGroupIds: nil,
            securityGroups: nil,
            tagSpecifications: nil,
            userData: nil)

        return defaultInstance
    }()
}

public extension RestoreAddressToClassicRequest {
    /**
     Default instance of the RestoreAddressToClassicRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.RestoreAddressToClassicRequest = {
        let defaultInstance = ElasticComputeCloudModel.RestoreAddressToClassicRequest(
            dryRun: nil,
            publicIp: "value")

        return defaultInstance
    }()
}

public extension RestoreAddressToClassicResult {
    /**
     Default instance of the RestoreAddressToClassicResult structure.
     */
    public static let __default: ElasticComputeCloudModel.RestoreAddressToClassicResult = {
        let defaultInstance = ElasticComputeCloudModel.RestoreAddressToClassicResult(
            publicIp: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension RevokeClientVpnIngressRequest {
    /**
     Default instance of the RevokeClientVpnIngressRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.RevokeClientVpnIngressRequest = {
        let defaultInstance = ElasticComputeCloudModel.RevokeClientVpnIngressRequest(
            accessGroupId: nil,
            clientVpnEndpointId: "value",
            dryRun: nil,
            revokeAllGroups: nil,
            targetNetworkCidr: "value")

        return defaultInstance
    }()
}

public extension RevokeClientVpnIngressResult {
    /**
     Default instance of the RevokeClientVpnIngressResult structure.
     */
    public static let __default: ElasticComputeCloudModel.RevokeClientVpnIngressResult = {
        let defaultInstance = ElasticComputeCloudModel.RevokeClientVpnIngressResult(
            status: nil)

        return defaultInstance
    }()
}

public extension RevokeSecurityGroupEgressRequest {
    /**
     Default instance of the RevokeSecurityGroupEgressRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.RevokeSecurityGroupEgressRequest = {
        let defaultInstance = ElasticComputeCloudModel.RevokeSecurityGroupEgressRequest(
            cidrIp: nil,
            dryRun: nil,
            fromPort: nil,
            groupId: "value",
            ipPermissions: nil,
            ipProtocol: nil,
            sourceSecurityGroupName: nil,
            sourceSecurityGroupOwnerId: nil,
            toPort: nil)

        return defaultInstance
    }()
}

public extension RevokeSecurityGroupIngressRequest {
    /**
     Default instance of the RevokeSecurityGroupIngressRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.RevokeSecurityGroupIngressRequest = {
        let defaultInstance = ElasticComputeCloudModel.RevokeSecurityGroupIngressRequest(
            cidrIp: nil,
            dryRun: nil,
            fromPort: nil,
            groupId: nil,
            groupName: nil,
            ipPermissions: nil,
            ipProtocol: nil,
            sourceSecurityGroupName: nil,
            sourceSecurityGroupOwnerId: nil,
            toPort: nil)

        return defaultInstance
    }()
}

public extension Route {
    /**
     Default instance of the Route structure.
     */
    public static let __default: ElasticComputeCloudModel.Route = {
        let defaultInstance = ElasticComputeCloudModel.Route(
            destinationCidrBlock: nil,
            destinationIpv6CidrBlock: nil,
            destinationPrefixListId: nil,
            egressOnlyInternetGatewayId: nil,
            gatewayId: nil,
            instanceId: nil,
            instanceOwnerId: nil,
            natGatewayId: nil,
            networkInterfaceId: nil,
            origin: nil,
            state: nil,
            transitGatewayId: nil,
            vpcPeeringConnectionId: nil)

        return defaultInstance
    }()
}

public extension RouteTable {
    /**
     Default instance of the RouteTable structure.
     */
    public static let __default: ElasticComputeCloudModel.RouteTable = {
        let defaultInstance = ElasticComputeCloudModel.RouteTable(
            associations: nil,
            ownerId: nil,
            propagatingVgws: nil,
            routeTableId: nil,
            routes: nil,
            tags: nil,
            vpcId: nil)

        return defaultInstance
    }()
}

public extension RouteTableAssociation {
    /**
     Default instance of the RouteTableAssociation structure.
     */
    public static let __default: ElasticComputeCloudModel.RouteTableAssociation = {
        let defaultInstance = ElasticComputeCloudModel.RouteTableAssociation(
            main: nil,
            routeTableAssociationId: nil,
            routeTableId: nil,
            subnetId: nil)

        return defaultInstance
    }()
}

public extension RunInstancesMonitoringEnabled {
    /**
     Default instance of the RunInstancesMonitoringEnabled structure.
     */
    public static let __default: ElasticComputeCloudModel.RunInstancesMonitoringEnabled = {
        let defaultInstance = ElasticComputeCloudModel.RunInstancesMonitoringEnabled(
            enabled: false)

        return defaultInstance
    }()
}

public extension RunInstancesRequest {
    /**
     Default instance of the RunInstancesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.RunInstancesRequest = {
        let defaultInstance = ElasticComputeCloudModel.RunInstancesRequest(
            additionalInfo: nil,
            blockDeviceMappings: nil,
            capacityReservationSpecification: nil,
            clientToken: nil,
            cpuOptions: nil,
            creditSpecification: nil,
            disableApiTermination: nil,
            dryRun: nil,
            ebsOptimized: nil,
            elasticGpuSpecification: nil,
            elasticInferenceAccelerators: nil,
            hibernationOptions: nil,
            iamInstanceProfile: nil,
            imageId: nil,
            instanceInitiatedShutdownBehavior: nil,
            instanceMarketOptions: nil,
            instanceType: nil,
            ipv6AddressCount: nil,
            ipv6Addresses: nil,
            kernelId: nil,
            keyName: nil,
            launchTemplate: nil,
            licenseSpecifications: nil,
            maxCount: 0,
            minCount: 0,
            monitoring: nil,
            networkInterfaces: nil,
            placement: nil,
            privateIpAddress: nil,
            ramdiskId: nil,
            securityGroupIds: nil,
            securityGroups: nil,
            subnetId: nil,
            tagSpecifications: nil,
            userData: nil)

        return defaultInstance
    }()
}

public extension RunScheduledInstancesRequest {
    /**
     Default instance of the RunScheduledInstancesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.RunScheduledInstancesRequest = {
        let defaultInstance = ElasticComputeCloudModel.RunScheduledInstancesRequest(
            clientToken: nil,
            dryRun: nil,
            instanceCount: nil,
            launchSpecification: ScheduledInstancesLaunchSpecification.__default,
            scheduledInstanceId: "value")

        return defaultInstance
    }()
}

public extension RunScheduledInstancesResult {
    /**
     Default instance of the RunScheduledInstancesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.RunScheduledInstancesResult = {
        let defaultInstance = ElasticComputeCloudModel.RunScheduledInstancesResult(
            instanceIdSet: nil)

        return defaultInstance
    }()
}

public extension S3Storage {
    /**
     Default instance of the S3Storage structure.
     */
    public static let __default: ElasticComputeCloudModel.S3Storage = {
        let defaultInstance = ElasticComputeCloudModel.S3Storage(
            aWSAccessKeyId: nil,
            bucket: nil,
            prefix: nil,
            uploadPolicy: nil,
            uploadPolicySignature: nil)

        return defaultInstance
    }()
}

public extension ScheduledInstance {
    /**
     Default instance of the ScheduledInstance structure.
     */
    public static let __default: ElasticComputeCloudModel.ScheduledInstance = {
        let defaultInstance = ElasticComputeCloudModel.ScheduledInstance(
            availabilityZone: nil,
            createDate: nil,
            hourlyPrice: nil,
            instanceCount: nil,
            instanceType: nil,
            networkPlatform: nil,
            nextSlotStartTime: nil,
            platform: nil,
            previousSlotEndTime: nil,
            recurrence: nil,
            scheduledInstanceId: nil,
            slotDurationInHours: nil,
            termEndDate: nil,
            termStartDate: nil,
            totalScheduledInstanceHours: nil)

        return defaultInstance
    }()
}

public extension ScheduledInstanceAvailability {
    /**
     Default instance of the ScheduledInstanceAvailability structure.
     */
    public static let __default: ElasticComputeCloudModel.ScheduledInstanceAvailability = {
        let defaultInstance = ElasticComputeCloudModel.ScheduledInstanceAvailability(
            availabilityZone: nil,
            availableInstanceCount: nil,
            firstSlotStartTime: nil,
            hourlyPrice: nil,
            instanceType: nil,
            maxTermDurationInDays: nil,
            minTermDurationInDays: nil,
            networkPlatform: nil,
            platform: nil,
            purchaseToken: nil,
            recurrence: nil,
            slotDurationInHours: nil,
            totalScheduledInstanceHours: nil)

        return defaultInstance
    }()
}

public extension ScheduledInstanceRecurrence {
    /**
     Default instance of the ScheduledInstanceRecurrence structure.
     */
    public static let __default: ElasticComputeCloudModel.ScheduledInstanceRecurrence = {
        let defaultInstance = ElasticComputeCloudModel.ScheduledInstanceRecurrence(
            frequency: nil,
            interval: nil,
            occurrenceDaySet: nil,
            occurrenceRelativeToEnd: nil,
            occurrenceUnit: nil)

        return defaultInstance
    }()
}

public extension ScheduledInstanceRecurrenceRequest {
    /**
     Default instance of the ScheduledInstanceRecurrenceRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.ScheduledInstanceRecurrenceRequest = {
        let defaultInstance = ElasticComputeCloudModel.ScheduledInstanceRecurrenceRequest(
            frequency: nil,
            interval: nil,
            occurrenceDays: nil,
            occurrenceRelativeToEnd: nil,
            occurrenceUnit: nil)

        return defaultInstance
    }()
}

public extension ScheduledInstancesBlockDeviceMapping {
    /**
     Default instance of the ScheduledInstancesBlockDeviceMapping structure.
     */
    public static let __default: ElasticComputeCloudModel.ScheduledInstancesBlockDeviceMapping = {
        let defaultInstance = ElasticComputeCloudModel.ScheduledInstancesBlockDeviceMapping(
            deviceName: nil,
            ebs: nil,
            noDevice: nil,
            virtualName: nil)

        return defaultInstance
    }()
}

public extension ScheduledInstancesEbs {
    /**
     Default instance of the ScheduledInstancesEbs structure.
     */
    public static let __default: ElasticComputeCloudModel.ScheduledInstancesEbs = {
        let defaultInstance = ElasticComputeCloudModel.ScheduledInstancesEbs(
            deleteOnTermination: nil,
            encrypted: nil,
            iops: nil,
            snapshotId: nil,
            volumeSize: nil,
            volumeType: nil)

        return defaultInstance
    }()
}

public extension ScheduledInstancesIamInstanceProfile {
    /**
     Default instance of the ScheduledInstancesIamInstanceProfile structure.
     */
    public static let __default: ElasticComputeCloudModel.ScheduledInstancesIamInstanceProfile = {
        let defaultInstance = ElasticComputeCloudModel.ScheduledInstancesIamInstanceProfile(
            arn: nil,
            name: nil)

        return defaultInstance
    }()
}

public extension ScheduledInstancesIpv6Address {
    /**
     Default instance of the ScheduledInstancesIpv6Address structure.
     */
    public static let __default: ElasticComputeCloudModel.ScheduledInstancesIpv6Address = {
        let defaultInstance = ElasticComputeCloudModel.ScheduledInstancesIpv6Address(
            ipv6Address: nil)

        return defaultInstance
    }()
}

public extension ScheduledInstancesLaunchSpecification {
    /**
     Default instance of the ScheduledInstancesLaunchSpecification structure.
     */
    public static let __default: ElasticComputeCloudModel.ScheduledInstancesLaunchSpecification = {
        let defaultInstance = ElasticComputeCloudModel.ScheduledInstancesLaunchSpecification(
            blockDeviceMappings: nil,
            ebsOptimized: nil,
            iamInstanceProfile: nil,
            imageId: "value",
            instanceType: nil,
            kernelId: nil,
            keyName: nil,
            monitoring: nil,
            networkInterfaces: nil,
            placement: nil,
            ramdiskId: nil,
            securityGroupIds: nil,
            subnetId: nil,
            userData: nil)

        return defaultInstance
    }()
}

public extension ScheduledInstancesMonitoring {
    /**
     Default instance of the ScheduledInstancesMonitoring structure.
     */
    public static let __default: ElasticComputeCloudModel.ScheduledInstancesMonitoring = {
        let defaultInstance = ElasticComputeCloudModel.ScheduledInstancesMonitoring(
            enabled: nil)

        return defaultInstance
    }()
}

public extension ScheduledInstancesNetworkInterface {
    /**
     Default instance of the ScheduledInstancesNetworkInterface structure.
     */
    public static let __default: ElasticComputeCloudModel.ScheduledInstancesNetworkInterface = {
        let defaultInstance = ElasticComputeCloudModel.ScheduledInstancesNetworkInterface(
            associatePublicIpAddress: nil,
            deleteOnTermination: nil,
            description: nil,
            deviceIndex: nil,
            groups: nil,
            ipv6AddressCount: nil,
            ipv6Addresses: nil,
            networkInterfaceId: nil,
            privateIpAddress: nil,
            privateIpAddressConfigs: nil,
            secondaryPrivateIpAddressCount: nil,
            subnetId: nil)

        return defaultInstance
    }()
}

public extension ScheduledInstancesPlacement {
    /**
     Default instance of the ScheduledInstancesPlacement structure.
     */
    public static let __default: ElasticComputeCloudModel.ScheduledInstancesPlacement = {
        let defaultInstance = ElasticComputeCloudModel.ScheduledInstancesPlacement(
            availabilityZone: nil,
            groupName: nil)

        return defaultInstance
    }()
}

public extension ScheduledInstancesPrivateIpAddressConfig {
    /**
     Default instance of the ScheduledInstancesPrivateIpAddressConfig structure.
     */
    public static let __default: ElasticComputeCloudModel.ScheduledInstancesPrivateIpAddressConfig = {
        let defaultInstance = ElasticComputeCloudModel.ScheduledInstancesPrivateIpAddressConfig(
            primary: nil,
            privateIpAddress: nil)

        return defaultInstance
    }()
}

public extension SearchTransitGatewayRoutesRequest {
    /**
     Default instance of the SearchTransitGatewayRoutesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.SearchTransitGatewayRoutesRequest = {
        let defaultInstance = ElasticComputeCloudModel.SearchTransitGatewayRoutesRequest(
            dryRun: nil,
            filters: [],
            maxResults: nil,
            transitGatewayRouteTableId: "value")

        return defaultInstance
    }()
}

public extension SearchTransitGatewayRoutesResult {
    /**
     Default instance of the SearchTransitGatewayRoutesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.SearchTransitGatewayRoutesResult = {
        let defaultInstance = ElasticComputeCloudModel.SearchTransitGatewayRoutesResult(
            additionalRoutesAvailable: nil,
            routes: nil)

        return defaultInstance
    }()
}

public extension SecurityGroup {
    /**
     Default instance of the SecurityGroup structure.
     */
    public static let __default: ElasticComputeCloudModel.SecurityGroup = {
        let defaultInstance = ElasticComputeCloudModel.SecurityGroup(
            description: nil,
            groupId: nil,
            groupName: nil,
            ipPermissions: nil,
            ipPermissionsEgress: nil,
            ownerId: nil,
            tags: nil,
            vpcId: nil)

        return defaultInstance
    }()
}

public extension SecurityGroupIdentifier {
    /**
     Default instance of the SecurityGroupIdentifier structure.
     */
    public static let __default: ElasticComputeCloudModel.SecurityGroupIdentifier = {
        let defaultInstance = ElasticComputeCloudModel.SecurityGroupIdentifier(
            groupId: nil,
            groupName: nil)

        return defaultInstance
    }()
}

public extension SecurityGroupReference {
    /**
     Default instance of the SecurityGroupReference structure.
     */
    public static let __default: ElasticComputeCloudModel.SecurityGroupReference = {
        let defaultInstance = ElasticComputeCloudModel.SecurityGroupReference(
            groupId: nil,
            referencingVpcId: nil,
            vpcPeeringConnectionId: nil)

        return defaultInstance
    }()
}

public extension ServiceConfiguration {
    /**
     Default instance of the ServiceConfiguration structure.
     */
    public static let __default: ElasticComputeCloudModel.ServiceConfiguration = {
        let defaultInstance = ElasticComputeCloudModel.ServiceConfiguration(
            acceptanceRequired: nil,
            availabilityZones: nil,
            baseEndpointDnsNames: nil,
            networkLoadBalancerArns: nil,
            privateDnsName: nil,
            serviceId: nil,
            serviceName: nil,
            serviceState: nil,
            serviceType: nil)

        return defaultInstance
    }()
}

public extension ServiceDetail {
    /**
     Default instance of the ServiceDetail structure.
     */
    public static let __default: ElasticComputeCloudModel.ServiceDetail = {
        let defaultInstance = ElasticComputeCloudModel.ServiceDetail(
            acceptanceRequired: nil,
            availabilityZones: nil,
            baseEndpointDnsNames: nil,
            owner: nil,
            privateDnsName: nil,
            serviceName: nil,
            serviceType: nil,
            vpcEndpointPolicySupported: nil)

        return defaultInstance
    }()
}

public extension ServiceTypeDetail {
    /**
     Default instance of the ServiceTypeDetail structure.
     */
    public static let __default: ElasticComputeCloudModel.ServiceTypeDetail = {
        let defaultInstance = ElasticComputeCloudModel.ServiceTypeDetail(
            serviceType: nil)

        return defaultInstance
    }()
}

public extension SlotDateTimeRangeRequest {
    /**
     Default instance of the SlotDateTimeRangeRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.SlotDateTimeRangeRequest = {
        let defaultInstance = ElasticComputeCloudModel.SlotDateTimeRangeRequest(
            earliestTime: "2013-02-18T17:00:00Z",
            latestTime: "2013-02-18T17:00:00Z")

        return defaultInstance
    }()
}

public extension SlotStartTimeRangeRequest {
    /**
     Default instance of the SlotStartTimeRangeRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.SlotStartTimeRangeRequest = {
        let defaultInstance = ElasticComputeCloudModel.SlotStartTimeRangeRequest(
            earliestTime: nil,
            latestTime: nil)

        return defaultInstance
    }()
}

public extension Snapshot {
    /**
     Default instance of the Snapshot structure.
     */
    public static let __default: ElasticComputeCloudModel.Snapshot = {
        let defaultInstance = ElasticComputeCloudModel.Snapshot(
            dataEncryptionKeyId: nil,
            description: nil,
            encrypted: nil,
            kmsKeyId: nil,
            ownerAlias: nil,
            ownerId: nil,
            progress: nil,
            snapshotId: nil,
            startTime: nil,
            state: nil,
            stateMessage: nil,
            tags: nil,
            volumeId: nil,
            volumeSize: nil)

        return defaultInstance
    }()
}

public extension SnapshotDetail {
    /**
     Default instance of the SnapshotDetail structure.
     */
    public static let __default: ElasticComputeCloudModel.SnapshotDetail = {
        let defaultInstance = ElasticComputeCloudModel.SnapshotDetail(
            description: nil,
            deviceName: nil,
            diskImageSize: nil,
            format: nil,
            progress: nil,
            snapshotId: nil,
            status: nil,
            statusMessage: nil,
            url: nil,
            userBucket: nil)

        return defaultInstance
    }()
}

public extension SnapshotDiskContainer {
    /**
     Default instance of the SnapshotDiskContainer structure.
     */
    public static let __default: ElasticComputeCloudModel.SnapshotDiskContainer = {
        let defaultInstance = ElasticComputeCloudModel.SnapshotDiskContainer(
            description: nil,
            format: nil,
            url: nil,
            userBucket: nil)

        return defaultInstance
    }()
}

public extension SnapshotTaskDetail {
    /**
     Default instance of the SnapshotTaskDetail structure.
     */
    public static let __default: ElasticComputeCloudModel.SnapshotTaskDetail = {
        let defaultInstance = ElasticComputeCloudModel.SnapshotTaskDetail(
            description: nil,
            diskImageSize: nil,
            encrypted: nil,
            format: nil,
            kmsKeyId: nil,
            progress: nil,
            snapshotId: nil,
            status: nil,
            statusMessage: nil,
            url: nil,
            userBucket: nil)

        return defaultInstance
    }()
}

public extension SpotDatafeedSubscription {
    /**
     Default instance of the SpotDatafeedSubscription structure.
     */
    public static let __default: ElasticComputeCloudModel.SpotDatafeedSubscription = {
        let defaultInstance = ElasticComputeCloudModel.SpotDatafeedSubscription(
            bucket: nil,
            fault: nil,
            ownerId: nil,
            prefix: nil,
            state: nil)

        return defaultInstance
    }()
}

public extension SpotFleetLaunchSpecification {
    /**
     Default instance of the SpotFleetLaunchSpecification structure.
     */
    public static let __default: ElasticComputeCloudModel.SpotFleetLaunchSpecification = {
        let defaultInstance = ElasticComputeCloudModel.SpotFleetLaunchSpecification(
            addressingType: nil,
            blockDeviceMappings: nil,
            ebsOptimized: nil,
            iamInstanceProfile: nil,
            imageId: nil,
            instanceType: nil,
            kernelId: nil,
            keyName: nil,
            monitoring: nil,
            networkInterfaces: nil,
            placement: nil,
            ramdiskId: nil,
            securityGroups: nil,
            spotPrice: nil,
            subnetId: nil,
            tagSpecifications: nil,
            userData: nil,
            weightedCapacity: nil)

        return defaultInstance
    }()
}

public extension SpotFleetMonitoring {
    /**
     Default instance of the SpotFleetMonitoring structure.
     */
    public static let __default: ElasticComputeCloudModel.SpotFleetMonitoring = {
        let defaultInstance = ElasticComputeCloudModel.SpotFleetMonitoring(
            enabled: nil)

        return defaultInstance
    }()
}

public extension SpotFleetRequestConfig {
    /**
     Default instance of the SpotFleetRequestConfig structure.
     */
    public static let __default: ElasticComputeCloudModel.SpotFleetRequestConfig = {
        let defaultInstance = ElasticComputeCloudModel.SpotFleetRequestConfig(
            activityStatus: nil,
            createTime: nil,
            spotFleetRequestConfig: nil,
            spotFleetRequestId: nil,
            spotFleetRequestState: nil)

        return defaultInstance
    }()
}

public extension SpotFleetRequestConfigData {
    /**
     Default instance of the SpotFleetRequestConfigData structure.
     */
    public static let __default: ElasticComputeCloudModel.SpotFleetRequestConfigData = {
        let defaultInstance = ElasticComputeCloudModel.SpotFleetRequestConfigData(
            allocationStrategy: nil,
            clientToken: nil,
            excessCapacityTerminationPolicy: nil,
            fulfilledCapacity: nil,
            iamFleetRole: "value",
            instanceInterruptionBehavior: nil,
            instancePoolsToUseCount: nil,
            launchSpecifications: nil,
            launchTemplateConfigs: nil,
            loadBalancersConfig: nil,
            onDemandAllocationStrategy: nil,
            onDemandFulfilledCapacity: nil,
            onDemandTargetCapacity: nil,
            replaceUnhealthyInstances: nil,
            spotPrice: nil,
            targetCapacity: 0,
            terminateInstancesWithExpiration: nil,
            type: nil,
            validFrom: nil,
            validUntil: nil)

        return defaultInstance
    }()
}

public extension SpotFleetTagSpecification {
    /**
     Default instance of the SpotFleetTagSpecification structure.
     */
    public static let __default: ElasticComputeCloudModel.SpotFleetTagSpecification = {
        let defaultInstance = ElasticComputeCloudModel.SpotFleetTagSpecification(
            resourceType: nil,
            tags: nil)

        return defaultInstance
    }()
}

public extension SpotInstanceRequest {
    /**
     Default instance of the SpotInstanceRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.SpotInstanceRequest = {
        let defaultInstance = ElasticComputeCloudModel.SpotInstanceRequest(
            actualBlockHourlyPrice: nil,
            availabilityZoneGroup: nil,
            blockDurationMinutes: nil,
            createTime: nil,
            fault: nil,
            instanceId: nil,
            instanceInterruptionBehavior: nil,
            launchGroup: nil,
            launchSpecification: nil,
            launchedAvailabilityZone: nil,
            productDescription: nil,
            spotInstanceRequestId: nil,
            spotPrice: nil,
            state: nil,
            status: nil,
            tags: nil,
            type: nil,
            validFrom: nil,
            validUntil: nil)

        return defaultInstance
    }()
}

public extension SpotInstanceStateFault {
    /**
     Default instance of the SpotInstanceStateFault structure.
     */
    public static let __default: ElasticComputeCloudModel.SpotInstanceStateFault = {
        let defaultInstance = ElasticComputeCloudModel.SpotInstanceStateFault(
            code: nil,
            message: nil)

        return defaultInstance
    }()
}

public extension SpotInstanceStatus {
    /**
     Default instance of the SpotInstanceStatus structure.
     */
    public static let __default: ElasticComputeCloudModel.SpotInstanceStatus = {
        let defaultInstance = ElasticComputeCloudModel.SpotInstanceStatus(
            code: nil,
            message: nil,
            updateTime: nil)

        return defaultInstance
    }()
}

public extension SpotMarketOptions {
    /**
     Default instance of the SpotMarketOptions structure.
     */
    public static let __default: ElasticComputeCloudModel.SpotMarketOptions = {
        let defaultInstance = ElasticComputeCloudModel.SpotMarketOptions(
            blockDurationMinutes: nil,
            instanceInterruptionBehavior: nil,
            maxPrice: nil,
            spotInstanceType: nil,
            validUntil: nil)

        return defaultInstance
    }()
}

public extension SpotOptions {
    /**
     Default instance of the SpotOptions structure.
     */
    public static let __default: ElasticComputeCloudModel.SpotOptions = {
        let defaultInstance = ElasticComputeCloudModel.SpotOptions(
            allocationStrategy: nil,
            instanceInterruptionBehavior: nil,
            instancePoolsToUseCount: nil,
            minTargetCapacity: nil,
            singleAvailabilityZone: nil,
            singleInstanceType: nil)

        return defaultInstance
    }()
}

public extension SpotOptionsRequest {
    /**
     Default instance of the SpotOptionsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.SpotOptionsRequest = {
        let defaultInstance = ElasticComputeCloudModel.SpotOptionsRequest(
            allocationStrategy: nil,
            instanceInterruptionBehavior: nil,
            instancePoolsToUseCount: nil,
            minTargetCapacity: nil,
            singleAvailabilityZone: nil,
            singleInstanceType: nil)

        return defaultInstance
    }()
}

public extension SpotPlacement {
    /**
     Default instance of the SpotPlacement structure.
     */
    public static let __default: ElasticComputeCloudModel.SpotPlacement = {
        let defaultInstance = ElasticComputeCloudModel.SpotPlacement(
            availabilityZone: nil,
            groupName: nil,
            tenancy: nil)

        return defaultInstance
    }()
}

public extension SpotPrice {
    /**
     Default instance of the SpotPrice structure.
     */
    public static let __default: ElasticComputeCloudModel.SpotPrice = {
        let defaultInstance = ElasticComputeCloudModel.SpotPrice(
            availabilityZone: nil,
            instanceType: nil,
            productDescription: nil,
            spotPrice: nil,
            timestamp: nil)

        return defaultInstance
    }()
}

public extension StaleIpPermission {
    /**
     Default instance of the StaleIpPermission structure.
     */
    public static let __default: ElasticComputeCloudModel.StaleIpPermission = {
        let defaultInstance = ElasticComputeCloudModel.StaleIpPermission(
            fromPort: nil,
            ipProtocol: nil,
            ipRanges: nil,
            prefixListIds: nil,
            toPort: nil,
            userIdGroupPairs: nil)

        return defaultInstance
    }()
}

public extension StaleSecurityGroup {
    /**
     Default instance of the StaleSecurityGroup structure.
     */
    public static let __default: ElasticComputeCloudModel.StaleSecurityGroup = {
        let defaultInstance = ElasticComputeCloudModel.StaleSecurityGroup(
            description: nil,
            groupId: nil,
            groupName: nil,
            staleIpPermissions: nil,
            staleIpPermissionsEgress: nil,
            vpcId: nil)

        return defaultInstance
    }()
}

public extension StartInstancesRequest {
    /**
     Default instance of the StartInstancesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.StartInstancesRequest = {
        let defaultInstance = ElasticComputeCloudModel.StartInstancesRequest(
            additionalInfo: nil,
            dryRun: nil,
            instanceIds: [])

        return defaultInstance
    }()
}

public extension StartInstancesResult {
    /**
     Default instance of the StartInstancesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.StartInstancesResult = {
        let defaultInstance = ElasticComputeCloudModel.StartInstancesResult(
            startingInstances: nil)

        return defaultInstance
    }()
}

public extension StateReason {
    /**
     Default instance of the StateReason structure.
     */
    public static let __default: ElasticComputeCloudModel.StateReason = {
        let defaultInstance = ElasticComputeCloudModel.StateReason(
            code: nil,
            message: nil)

        return defaultInstance
    }()
}

public extension StopInstancesRequest {
    /**
     Default instance of the StopInstancesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.StopInstancesRequest = {
        let defaultInstance = ElasticComputeCloudModel.StopInstancesRequest(
            dryRun: nil,
            force: nil,
            hibernate: nil,
            instanceIds: [])

        return defaultInstance
    }()
}

public extension StopInstancesResult {
    /**
     Default instance of the StopInstancesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.StopInstancesResult = {
        let defaultInstance = ElasticComputeCloudModel.StopInstancesResult(
            stoppingInstances: nil)

        return defaultInstance
    }()
}

public extension Storage {
    /**
     Default instance of the Storage structure.
     */
    public static let __default: ElasticComputeCloudModel.Storage = {
        let defaultInstance = ElasticComputeCloudModel.Storage(
            s3: nil)

        return defaultInstance
    }()
}

public extension StorageLocation {
    /**
     Default instance of the StorageLocation structure.
     */
    public static let __default: ElasticComputeCloudModel.StorageLocation = {
        let defaultInstance = ElasticComputeCloudModel.StorageLocation(
            bucket: nil,
            key: nil)

        return defaultInstance
    }()
}

public extension Subnet {
    /**
     Default instance of the Subnet structure.
     */
    public static let __default: ElasticComputeCloudModel.Subnet = {
        let defaultInstance = ElasticComputeCloudModel.Subnet(
            assignIpv6AddressOnCreation: nil,
            availabilityZone: nil,
            availabilityZoneId: nil,
            availableIpAddressCount: nil,
            cidrBlock: nil,
            defaultForAz: nil,
            ipv6CidrBlockAssociationSet: nil,
            mapPublicIpOnLaunch: nil,
            ownerId: nil,
            state: nil,
            subnetArn: nil,
            subnetId: nil,
            tags: nil,
            vpcId: nil)

        return defaultInstance
    }()
}

public extension SubnetCidrBlockState {
    /**
     Default instance of the SubnetCidrBlockState structure.
     */
    public static let __default: ElasticComputeCloudModel.SubnetCidrBlockState = {
        let defaultInstance = ElasticComputeCloudModel.SubnetCidrBlockState(
            state: nil,
            statusMessage: nil)

        return defaultInstance
    }()
}

public extension SubnetIpv6CidrBlockAssociation {
    /**
     Default instance of the SubnetIpv6CidrBlockAssociation structure.
     */
    public static let __default: ElasticComputeCloudModel.SubnetIpv6CidrBlockAssociation = {
        let defaultInstance = ElasticComputeCloudModel.SubnetIpv6CidrBlockAssociation(
            associationId: nil,
            ipv6CidrBlock: nil,
            ipv6CidrBlockState: nil)

        return defaultInstance
    }()
}

public extension SuccessfulInstanceCreditSpecificationItem {
    /**
     Default instance of the SuccessfulInstanceCreditSpecificationItem structure.
     */
    public static let __default: ElasticComputeCloudModel.SuccessfulInstanceCreditSpecificationItem = {
        let defaultInstance = ElasticComputeCloudModel.SuccessfulInstanceCreditSpecificationItem(
            instanceId: nil)

        return defaultInstance
    }()
}

public extension Tag {
    /**
     Default instance of the Tag structure.
     */
    public static let __default: ElasticComputeCloudModel.Tag = {
        let defaultInstance = ElasticComputeCloudModel.Tag(
            key: nil,
            value: nil)

        return defaultInstance
    }()
}

public extension TagDescription {
    /**
     Default instance of the TagDescription structure.
     */
    public static let __default: ElasticComputeCloudModel.TagDescription = {
        let defaultInstance = ElasticComputeCloudModel.TagDescription(
            key: nil,
            resourceId: nil,
            resourceType: nil,
            value: nil)

        return defaultInstance
    }()
}

public extension TagSpecification {
    /**
     Default instance of the TagSpecification structure.
     */
    public static let __default: ElasticComputeCloudModel.TagSpecification = {
        let defaultInstance = ElasticComputeCloudModel.TagSpecification(
            resourceType: nil,
            tags: nil)

        return defaultInstance
    }()
}

public extension TargetCapacitySpecification {
    /**
     Default instance of the TargetCapacitySpecification structure.
     */
    public static let __default: ElasticComputeCloudModel.TargetCapacitySpecification = {
        let defaultInstance = ElasticComputeCloudModel.TargetCapacitySpecification(
            defaultTargetCapacityType: nil,
            onDemandTargetCapacity: nil,
            spotTargetCapacity: nil,
            totalTargetCapacity: nil)

        return defaultInstance
    }()
}

public extension TargetCapacitySpecificationRequest {
    /**
     Default instance of the TargetCapacitySpecificationRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.TargetCapacitySpecificationRequest = {
        let defaultInstance = ElasticComputeCloudModel.TargetCapacitySpecificationRequest(
            defaultTargetCapacityType: nil,
            onDemandTargetCapacity: nil,
            spotTargetCapacity: nil,
            totalTargetCapacity: 0)

        return defaultInstance
    }()
}

public extension TargetConfiguration {
    /**
     Default instance of the TargetConfiguration structure.
     */
    public static let __default: ElasticComputeCloudModel.TargetConfiguration = {
        let defaultInstance = ElasticComputeCloudModel.TargetConfiguration(
            instanceCount: nil,
            offeringId: nil)

        return defaultInstance
    }()
}

public extension TargetConfigurationRequest {
    /**
     Default instance of the TargetConfigurationRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.TargetConfigurationRequest = {
        let defaultInstance = ElasticComputeCloudModel.TargetConfigurationRequest(
            instanceCount: nil,
            offeringId: "value")

        return defaultInstance
    }()
}

public extension TargetGroup {
    /**
     Default instance of the TargetGroup structure.
     */
    public static let __default: ElasticComputeCloudModel.TargetGroup = {
        let defaultInstance = ElasticComputeCloudModel.TargetGroup(
            arn: nil)

        return defaultInstance
    }()
}

public extension TargetGroupsConfig {
    /**
     Default instance of the TargetGroupsConfig structure.
     */
    public static let __default: ElasticComputeCloudModel.TargetGroupsConfig = {
        let defaultInstance = ElasticComputeCloudModel.TargetGroupsConfig(
            targetGroups: nil)

        return defaultInstance
    }()
}

public extension TargetNetwork {
    /**
     Default instance of the TargetNetwork structure.
     */
    public static let __default: ElasticComputeCloudModel.TargetNetwork = {
        let defaultInstance = ElasticComputeCloudModel.TargetNetwork(
            associationId: nil,
            clientVpnEndpointId: nil,
            securityGroups: nil,
            status: nil,
            targetNetworkId: nil,
            vpcId: nil)

        return defaultInstance
    }()
}

public extension TargetReservationValue {
    /**
     Default instance of the TargetReservationValue structure.
     */
    public static let __default: ElasticComputeCloudModel.TargetReservationValue = {
        let defaultInstance = ElasticComputeCloudModel.TargetReservationValue(
            reservationValue: nil,
            targetConfiguration: nil)

        return defaultInstance
    }()
}

public extension TerminateClientVpnConnectionsRequest {
    /**
     Default instance of the TerminateClientVpnConnectionsRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.TerminateClientVpnConnectionsRequest = {
        let defaultInstance = ElasticComputeCloudModel.TerminateClientVpnConnectionsRequest(
            clientVpnEndpointId: "value",
            connectionId: nil,
            dryRun: nil,
            username: nil)

        return defaultInstance
    }()
}

public extension TerminateClientVpnConnectionsResult {
    /**
     Default instance of the TerminateClientVpnConnectionsResult structure.
     */
    public static let __default: ElasticComputeCloudModel.TerminateClientVpnConnectionsResult = {
        let defaultInstance = ElasticComputeCloudModel.TerminateClientVpnConnectionsResult(
            clientVpnEndpointId: nil,
            connectionStatuses: nil,
            username: nil)

        return defaultInstance
    }()
}

public extension TerminateConnectionStatus {
    /**
     Default instance of the TerminateConnectionStatus structure.
     */
    public static let __default: ElasticComputeCloudModel.TerminateConnectionStatus = {
        let defaultInstance = ElasticComputeCloudModel.TerminateConnectionStatus(
            connectionId: nil,
            currentStatus: nil,
            previousStatus: nil)

        return defaultInstance
    }()
}

public extension TerminateInstancesRequest {
    /**
     Default instance of the TerminateInstancesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.TerminateInstancesRequest = {
        let defaultInstance = ElasticComputeCloudModel.TerminateInstancesRequest(
            dryRun: nil,
            instanceIds: [])

        return defaultInstance
    }()
}

public extension TerminateInstancesResult {
    /**
     Default instance of the TerminateInstancesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.TerminateInstancesResult = {
        let defaultInstance = ElasticComputeCloudModel.TerminateInstancesResult(
            terminatingInstances: nil)

        return defaultInstance
    }()
}

public extension TransitGateway {
    /**
     Default instance of the TransitGateway structure.
     */
    public static let __default: ElasticComputeCloudModel.TransitGateway = {
        let defaultInstance = ElasticComputeCloudModel.TransitGateway(
            creationTime: nil,
            description: nil,
            options: nil,
            ownerId: nil,
            state: nil,
            tags: nil,
            transitGatewayArn: nil,
            transitGatewayId: nil)

        return defaultInstance
    }()
}

public extension TransitGatewayAssociation {
    /**
     Default instance of the TransitGatewayAssociation structure.
     */
    public static let __default: ElasticComputeCloudModel.TransitGatewayAssociation = {
        let defaultInstance = ElasticComputeCloudModel.TransitGatewayAssociation(
            resourceId: nil,
            resourceType: nil,
            state: nil,
            transitGatewayAttachmentId: nil,
            transitGatewayRouteTableId: nil)

        return defaultInstance
    }()
}

public extension TransitGatewayAttachment {
    /**
     Default instance of the TransitGatewayAttachment structure.
     */
    public static let __default: ElasticComputeCloudModel.TransitGatewayAttachment = {
        let defaultInstance = ElasticComputeCloudModel.TransitGatewayAttachment(
            association: nil,
            creationTime: nil,
            resourceId: nil,
            resourceOwnerId: nil,
            resourceType: nil,
            state: nil,
            tags: nil,
            transitGatewayAttachmentId: nil,
            transitGatewayId: nil,
            transitGatewayOwnerId: nil)

        return defaultInstance
    }()
}

public extension TransitGatewayAttachmentAssociation {
    /**
     Default instance of the TransitGatewayAttachmentAssociation structure.
     */
    public static let __default: ElasticComputeCloudModel.TransitGatewayAttachmentAssociation = {
        let defaultInstance = ElasticComputeCloudModel.TransitGatewayAttachmentAssociation(
            state: nil,
            transitGatewayRouteTableId: nil)

        return defaultInstance
    }()
}

public extension TransitGatewayAttachmentPropagation {
    /**
     Default instance of the TransitGatewayAttachmentPropagation structure.
     */
    public static let __default: ElasticComputeCloudModel.TransitGatewayAttachmentPropagation = {
        let defaultInstance = ElasticComputeCloudModel.TransitGatewayAttachmentPropagation(
            state: nil,
            transitGatewayRouteTableId: nil)

        return defaultInstance
    }()
}

public extension TransitGatewayOptions {
    /**
     Default instance of the TransitGatewayOptions structure.
     */
    public static let __default: ElasticComputeCloudModel.TransitGatewayOptions = {
        let defaultInstance = ElasticComputeCloudModel.TransitGatewayOptions(
            amazonSideAsn: nil,
            associationDefaultRouteTableId: nil,
            autoAcceptSharedAttachments: nil,
            defaultRouteTableAssociation: nil,
            defaultRouteTablePropagation: nil,
            dnsSupport: nil,
            propagationDefaultRouteTableId: nil,
            vpnEcmpSupport: nil)

        return defaultInstance
    }()
}

public extension TransitGatewayPropagation {
    /**
     Default instance of the TransitGatewayPropagation structure.
     */
    public static let __default: ElasticComputeCloudModel.TransitGatewayPropagation = {
        let defaultInstance = ElasticComputeCloudModel.TransitGatewayPropagation(
            resourceId: nil,
            resourceType: nil,
            state: nil,
            transitGatewayAttachmentId: nil,
            transitGatewayRouteTableId: nil)

        return defaultInstance
    }()
}

public extension TransitGatewayRequestOptions {
    /**
     Default instance of the TransitGatewayRequestOptions structure.
     */
    public static let __default: ElasticComputeCloudModel.TransitGatewayRequestOptions = {
        let defaultInstance = ElasticComputeCloudModel.TransitGatewayRequestOptions(
            amazonSideAsn: nil,
            autoAcceptSharedAttachments: nil,
            defaultRouteTableAssociation: nil,
            defaultRouteTablePropagation: nil,
            dnsSupport: nil,
            vpnEcmpSupport: nil)

        return defaultInstance
    }()
}

public extension TransitGatewayRoute {
    /**
     Default instance of the TransitGatewayRoute structure.
     */
    public static let __default: ElasticComputeCloudModel.TransitGatewayRoute = {
        let defaultInstance = ElasticComputeCloudModel.TransitGatewayRoute(
            destinationCidrBlock: nil,
            state: nil,
            transitGatewayAttachments: nil,
            type: nil)

        return defaultInstance
    }()
}

public extension TransitGatewayRouteAttachment {
    /**
     Default instance of the TransitGatewayRouteAttachment structure.
     */
    public static let __default: ElasticComputeCloudModel.TransitGatewayRouteAttachment = {
        let defaultInstance = ElasticComputeCloudModel.TransitGatewayRouteAttachment(
            resourceId: nil,
            resourceType: nil,
            transitGatewayAttachmentId: nil)

        return defaultInstance
    }()
}

public extension TransitGatewayRouteTable {
    /**
     Default instance of the TransitGatewayRouteTable structure.
     */
    public static let __default: ElasticComputeCloudModel.TransitGatewayRouteTable = {
        let defaultInstance = ElasticComputeCloudModel.TransitGatewayRouteTable(
            creationTime: nil,
            defaultAssociationRouteTable: nil,
            defaultPropagationRouteTable: nil,
            state: nil,
            tags: nil,
            transitGatewayId: nil,
            transitGatewayRouteTableId: nil)

        return defaultInstance
    }()
}

public extension TransitGatewayRouteTableAssociation {
    /**
     Default instance of the TransitGatewayRouteTableAssociation structure.
     */
    public static let __default: ElasticComputeCloudModel.TransitGatewayRouteTableAssociation = {
        let defaultInstance = ElasticComputeCloudModel.TransitGatewayRouteTableAssociation(
            resourceId: nil,
            resourceType: nil,
            state: nil,
            transitGatewayAttachmentId: nil)

        return defaultInstance
    }()
}

public extension TransitGatewayRouteTablePropagation {
    /**
     Default instance of the TransitGatewayRouteTablePropagation structure.
     */
    public static let __default: ElasticComputeCloudModel.TransitGatewayRouteTablePropagation = {
        let defaultInstance = ElasticComputeCloudModel.TransitGatewayRouteTablePropagation(
            resourceId: nil,
            resourceType: nil,
            state: nil,
            transitGatewayAttachmentId: nil)

        return defaultInstance
    }()
}

public extension TransitGatewayVpcAttachment {
    /**
     Default instance of the TransitGatewayVpcAttachment structure.
     */
    public static let __default: ElasticComputeCloudModel.TransitGatewayVpcAttachment = {
        let defaultInstance = ElasticComputeCloudModel.TransitGatewayVpcAttachment(
            creationTime: nil,
            options: nil,
            state: nil,
            subnetIds: nil,
            tags: nil,
            transitGatewayAttachmentId: nil,
            transitGatewayId: nil,
            vpcId: nil,
            vpcOwnerId: nil)

        return defaultInstance
    }()
}

public extension TransitGatewayVpcAttachmentOptions {
    /**
     Default instance of the TransitGatewayVpcAttachmentOptions structure.
     */
    public static let __default: ElasticComputeCloudModel.TransitGatewayVpcAttachmentOptions = {
        let defaultInstance = ElasticComputeCloudModel.TransitGatewayVpcAttachmentOptions(
            dnsSupport: nil,
            ipv6Support: nil)

        return defaultInstance
    }()
}

public extension UnassignIpv6AddressesRequest {
    /**
     Default instance of the UnassignIpv6AddressesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.UnassignIpv6AddressesRequest = {
        let defaultInstance = ElasticComputeCloudModel.UnassignIpv6AddressesRequest(
            ipv6Addresses: [],
            networkInterfaceId: "value")

        return defaultInstance
    }()
}

public extension UnassignIpv6AddressesResult {
    /**
     Default instance of the UnassignIpv6AddressesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.UnassignIpv6AddressesResult = {
        let defaultInstance = ElasticComputeCloudModel.UnassignIpv6AddressesResult(
            networkInterfaceId: nil,
            unassignedIpv6Addresses: nil)

        return defaultInstance
    }()
}

public extension UnassignPrivateIpAddressesRequest {
    /**
     Default instance of the UnassignPrivateIpAddressesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.UnassignPrivateIpAddressesRequest = {
        let defaultInstance = ElasticComputeCloudModel.UnassignPrivateIpAddressesRequest(
            networkInterfaceId: "value",
            privateIpAddresses: [])

        return defaultInstance
    }()
}

public extension UnmonitorInstancesRequest {
    /**
     Default instance of the UnmonitorInstancesRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.UnmonitorInstancesRequest = {
        let defaultInstance = ElasticComputeCloudModel.UnmonitorInstancesRequest(
            dryRun: nil,
            instanceIds: [])

        return defaultInstance
    }()
}

public extension UnmonitorInstancesResult {
    /**
     Default instance of the UnmonitorInstancesResult structure.
     */
    public static let __default: ElasticComputeCloudModel.UnmonitorInstancesResult = {
        let defaultInstance = ElasticComputeCloudModel.UnmonitorInstancesResult(
            instanceMonitorings: nil)

        return defaultInstance
    }()
}

public extension UnsuccessfulInstanceCreditSpecificationItem {
    /**
     Default instance of the UnsuccessfulInstanceCreditSpecificationItem structure.
     */
    public static let __default: ElasticComputeCloudModel.UnsuccessfulInstanceCreditSpecificationItem = {
        let defaultInstance = ElasticComputeCloudModel.UnsuccessfulInstanceCreditSpecificationItem(
            error: nil,
            instanceId: nil)

        return defaultInstance
    }()
}

public extension UnsuccessfulInstanceCreditSpecificationItemError {
    /**
     Default instance of the UnsuccessfulInstanceCreditSpecificationItemError structure.
     */
    public static let __default: ElasticComputeCloudModel.UnsuccessfulInstanceCreditSpecificationItemError = {
        let defaultInstance = ElasticComputeCloudModel.UnsuccessfulInstanceCreditSpecificationItemError(
            code: nil,
            message: nil)

        return defaultInstance
    }()
}

public extension UnsuccessfulItem {
    /**
     Default instance of the UnsuccessfulItem structure.
     */
    public static let __default: ElasticComputeCloudModel.UnsuccessfulItem = {
        let defaultInstance = ElasticComputeCloudModel.UnsuccessfulItem(
            error: nil,
            resourceId: nil)

        return defaultInstance
    }()
}

public extension UnsuccessfulItemError {
    /**
     Default instance of the UnsuccessfulItemError structure.
     */
    public static let __default: ElasticComputeCloudModel.UnsuccessfulItemError = {
        let defaultInstance = ElasticComputeCloudModel.UnsuccessfulItemError(
            code: nil,
            message: nil)

        return defaultInstance
    }()
}

public extension UpdateSecurityGroupRuleDescriptionsEgressRequest {
    /**
     Default instance of the UpdateSecurityGroupRuleDescriptionsEgressRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressRequest = {
        let defaultInstance = ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressRequest(
            dryRun: nil,
            groupId: nil,
            groupName: nil,
            ipPermissions: [])

        return defaultInstance
    }()
}

public extension UpdateSecurityGroupRuleDescriptionsEgressResult {
    /**
     Default instance of the UpdateSecurityGroupRuleDescriptionsEgressResult structure.
     */
    public static let __default: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressResult = {
        let defaultInstance = ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressResult(
            return: nil)

        return defaultInstance
    }()
}

public extension UpdateSecurityGroupRuleDescriptionsIngressRequest {
    /**
     Default instance of the UpdateSecurityGroupRuleDescriptionsIngressRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressRequest = {
        let defaultInstance = ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressRequest(
            dryRun: nil,
            groupId: nil,
            groupName: nil,
            ipPermissions: [])

        return defaultInstance
    }()
}

public extension UpdateSecurityGroupRuleDescriptionsIngressResult {
    /**
     Default instance of the UpdateSecurityGroupRuleDescriptionsIngressResult structure.
     */
    public static let __default: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressResult = {
        let defaultInstance = ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressResult(
            return: nil)

        return defaultInstance
    }()
}

public extension UserBucket {
    /**
     Default instance of the UserBucket structure.
     */
    public static let __default: ElasticComputeCloudModel.UserBucket = {
        let defaultInstance = ElasticComputeCloudModel.UserBucket(
            s3Bucket: nil,
            s3Key: nil)

        return defaultInstance
    }()
}

public extension UserBucketDetails {
    /**
     Default instance of the UserBucketDetails structure.
     */
    public static let __default: ElasticComputeCloudModel.UserBucketDetails = {
        let defaultInstance = ElasticComputeCloudModel.UserBucketDetails(
            s3Bucket: nil,
            s3Key: nil)

        return defaultInstance
    }()
}

public extension UserData {
    /**
     Default instance of the UserData structure.
     */
    public static let __default: ElasticComputeCloudModel.UserData = {
        let defaultInstance = ElasticComputeCloudModel.UserData(
            data: nil)

        return defaultInstance
    }()
}

public extension UserIdGroupPair {
    /**
     Default instance of the UserIdGroupPair structure.
     */
    public static let __default: ElasticComputeCloudModel.UserIdGroupPair = {
        let defaultInstance = ElasticComputeCloudModel.UserIdGroupPair(
            description: nil,
            groupId: nil,
            groupName: nil,
            peeringStatus: nil,
            userId: nil,
            vpcId: nil,
            vpcPeeringConnectionId: nil)

        return defaultInstance
    }()
}

public extension VgwTelemetry {
    /**
     Default instance of the VgwTelemetry structure.
     */
    public static let __default: ElasticComputeCloudModel.VgwTelemetry = {
        let defaultInstance = ElasticComputeCloudModel.VgwTelemetry(
            acceptedRouteCount: nil,
            lastStatusChange: nil,
            outsideIpAddress: nil,
            status: nil,
            statusMessage: nil)

        return defaultInstance
    }()
}

public extension Volume {
    /**
     Default instance of the Volume structure.
     */
    public static let __default: ElasticComputeCloudModel.Volume = {
        let defaultInstance = ElasticComputeCloudModel.Volume(
            attachments: nil,
            availabilityZone: nil,
            createTime: nil,
            encrypted: nil,
            iops: nil,
            kmsKeyId: nil,
            size: nil,
            snapshotId: nil,
            state: nil,
            tags: nil,
            volumeId: nil,
            volumeType: nil)

        return defaultInstance
    }()
}

public extension VolumeAttachment {
    /**
     Default instance of the VolumeAttachment structure.
     */
    public static let __default: ElasticComputeCloudModel.VolumeAttachment = {
        let defaultInstance = ElasticComputeCloudModel.VolumeAttachment(
            attachTime: nil,
            deleteOnTermination: nil,
            device: nil,
            instanceId: nil,
            state: nil,
            volumeId: nil)

        return defaultInstance
    }()
}

public extension VolumeDetail {
    /**
     Default instance of the VolumeDetail structure.
     */
    public static let __default: ElasticComputeCloudModel.VolumeDetail = {
        let defaultInstance = ElasticComputeCloudModel.VolumeDetail(
            size: 0)

        return defaultInstance
    }()
}

public extension VolumeModification {
    /**
     Default instance of the VolumeModification structure.
     */
    public static let __default: ElasticComputeCloudModel.VolumeModification = {
        let defaultInstance = ElasticComputeCloudModel.VolumeModification(
            endTime: nil,
            modificationState: nil,
            originalIops: nil,
            originalSize: nil,
            originalVolumeType: nil,
            progress: nil,
            startTime: nil,
            statusMessage: nil,
            targetIops: nil,
            targetSize: nil,
            targetVolumeType: nil,
            volumeId: nil)

        return defaultInstance
    }()
}

public extension VolumeStatusAction {
    /**
     Default instance of the VolumeStatusAction structure.
     */
    public static let __default: ElasticComputeCloudModel.VolumeStatusAction = {
        let defaultInstance = ElasticComputeCloudModel.VolumeStatusAction(
            code: nil,
            description: nil,
            eventId: nil,
            eventType: nil)

        return defaultInstance
    }()
}

public extension VolumeStatusDetails {
    /**
     Default instance of the VolumeStatusDetails structure.
     */
    public static let __default: ElasticComputeCloudModel.VolumeStatusDetails = {
        let defaultInstance = ElasticComputeCloudModel.VolumeStatusDetails(
            name: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension VolumeStatusEvent {
    /**
     Default instance of the VolumeStatusEvent structure.
     */
    public static let __default: ElasticComputeCloudModel.VolumeStatusEvent = {
        let defaultInstance = ElasticComputeCloudModel.VolumeStatusEvent(
            description: nil,
            eventId: nil,
            eventType: nil,
            notAfter: nil,
            notBefore: nil)

        return defaultInstance
    }()
}

public extension VolumeStatusInfo {
    /**
     Default instance of the VolumeStatusInfo structure.
     */
    public static let __default: ElasticComputeCloudModel.VolumeStatusInfo = {
        let defaultInstance = ElasticComputeCloudModel.VolumeStatusInfo(
            details: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension VolumeStatusItem {
    /**
     Default instance of the VolumeStatusItem structure.
     */
    public static let __default: ElasticComputeCloudModel.VolumeStatusItem = {
        let defaultInstance = ElasticComputeCloudModel.VolumeStatusItem(
            actions: nil,
            availabilityZone: nil,
            events: nil,
            volumeId: nil,
            volumeStatus: nil)

        return defaultInstance
    }()
}

public extension Vpc {
    /**
     Default instance of the Vpc structure.
     */
    public static let __default: ElasticComputeCloudModel.Vpc = {
        let defaultInstance = ElasticComputeCloudModel.Vpc(
            cidrBlock: nil,
            cidrBlockAssociationSet: nil,
            dhcpOptionsId: nil,
            instanceTenancy: nil,
            ipv6CidrBlockAssociationSet: nil,
            isDefault: nil,
            ownerId: nil,
            state: nil,
            tags: nil,
            vpcId: nil)

        return defaultInstance
    }()
}

public extension VpcAttachment {
    /**
     Default instance of the VpcAttachment structure.
     */
    public static let __default: ElasticComputeCloudModel.VpcAttachment = {
        let defaultInstance = ElasticComputeCloudModel.VpcAttachment(
            state: nil,
            vpcId: nil)

        return defaultInstance
    }()
}

public extension VpcCidrBlockAssociation {
    /**
     Default instance of the VpcCidrBlockAssociation structure.
     */
    public static let __default: ElasticComputeCloudModel.VpcCidrBlockAssociation = {
        let defaultInstance = ElasticComputeCloudModel.VpcCidrBlockAssociation(
            associationId: nil,
            cidrBlock: nil,
            cidrBlockState: nil)

        return defaultInstance
    }()
}

public extension VpcCidrBlockState {
    /**
     Default instance of the VpcCidrBlockState structure.
     */
    public static let __default: ElasticComputeCloudModel.VpcCidrBlockState = {
        let defaultInstance = ElasticComputeCloudModel.VpcCidrBlockState(
            state: nil,
            statusMessage: nil)

        return defaultInstance
    }()
}

public extension VpcClassicLink {
    /**
     Default instance of the VpcClassicLink structure.
     */
    public static let __default: ElasticComputeCloudModel.VpcClassicLink = {
        let defaultInstance = ElasticComputeCloudModel.VpcClassicLink(
            classicLinkEnabled: nil,
            tags: nil,
            vpcId: nil)

        return defaultInstance
    }()
}

public extension VpcEndpoint {
    /**
     Default instance of the VpcEndpoint structure.
     */
    public static let __default: ElasticComputeCloudModel.VpcEndpoint = {
        let defaultInstance = ElasticComputeCloudModel.VpcEndpoint(
            creationTimestamp: nil,
            dnsEntries: nil,
            groups: nil,
            networkInterfaceIds: nil,
            policyDocument: nil,
            privateDnsEnabled: nil,
            routeTableIds: nil,
            serviceName: nil,
            state: nil,
            subnetIds: nil,
            vpcEndpointId: nil,
            vpcEndpointType: nil,
            vpcId: nil)

        return defaultInstance
    }()
}

public extension VpcEndpointConnection {
    /**
     Default instance of the VpcEndpointConnection structure.
     */
    public static let __default: ElasticComputeCloudModel.VpcEndpointConnection = {
        let defaultInstance = ElasticComputeCloudModel.VpcEndpointConnection(
            creationTimestamp: nil,
            serviceId: nil,
            vpcEndpointId: nil,
            vpcEndpointOwner: nil,
            vpcEndpointState: nil)

        return defaultInstance
    }()
}

public extension VpcIpv6CidrBlockAssociation {
    /**
     Default instance of the VpcIpv6CidrBlockAssociation structure.
     */
    public static let __default: ElasticComputeCloudModel.VpcIpv6CidrBlockAssociation = {
        let defaultInstance = ElasticComputeCloudModel.VpcIpv6CidrBlockAssociation(
            associationId: nil,
            ipv6CidrBlock: nil,
            ipv6CidrBlockState: nil)

        return defaultInstance
    }()
}

public extension VpcPeeringConnection {
    /**
     Default instance of the VpcPeeringConnection structure.
     */
    public static let __default: ElasticComputeCloudModel.VpcPeeringConnection = {
        let defaultInstance = ElasticComputeCloudModel.VpcPeeringConnection(
            accepterVpcInfo: nil,
            expirationTime: nil,
            requesterVpcInfo: nil,
            status: nil,
            tags: nil,
            vpcPeeringConnectionId: nil)

        return defaultInstance
    }()
}

public extension VpcPeeringConnectionOptionsDescription {
    /**
     Default instance of the VpcPeeringConnectionOptionsDescription structure.
     */
    public static let __default: ElasticComputeCloudModel.VpcPeeringConnectionOptionsDescription = {
        let defaultInstance = ElasticComputeCloudModel.VpcPeeringConnectionOptionsDescription(
            allowDnsResolutionFromRemoteVpc: nil,
            allowEgressFromLocalClassicLinkToRemoteVpc: nil,
            allowEgressFromLocalVpcToRemoteClassicLink: nil)

        return defaultInstance
    }()
}

public extension VpcPeeringConnectionStateReason {
    /**
     Default instance of the VpcPeeringConnectionStateReason structure.
     */
    public static let __default: ElasticComputeCloudModel.VpcPeeringConnectionStateReason = {
        let defaultInstance = ElasticComputeCloudModel.VpcPeeringConnectionStateReason(
            code: nil,
            message: nil)

        return defaultInstance
    }()
}

public extension VpcPeeringConnectionVpcInfo {
    /**
     Default instance of the VpcPeeringConnectionVpcInfo structure.
     */
    public static let __default: ElasticComputeCloudModel.VpcPeeringConnectionVpcInfo = {
        let defaultInstance = ElasticComputeCloudModel.VpcPeeringConnectionVpcInfo(
            cidrBlock: nil,
            cidrBlockSet: nil,
            ipv6CidrBlockSet: nil,
            ownerId: nil,
            peeringOptions: nil,
            region: nil,
            vpcId: nil)

        return defaultInstance
    }()
}

public extension VpnConnection {
    /**
     Default instance of the VpnConnection structure.
     */
    public static let __default: ElasticComputeCloudModel.VpnConnection = {
        let defaultInstance = ElasticComputeCloudModel.VpnConnection(
            category: nil,
            customerGatewayConfiguration: nil,
            customerGatewayId: nil,
            options: nil,
            routes: nil,
            state: nil,
            tags: nil,
            transitGatewayId: nil,
            type: nil,
            vgwTelemetry: nil,
            vpnConnectionId: nil,
            vpnGatewayId: nil)

        return defaultInstance
    }()
}

public extension VpnConnectionOptions {
    /**
     Default instance of the VpnConnectionOptions structure.
     */
    public static let __default: ElasticComputeCloudModel.VpnConnectionOptions = {
        let defaultInstance = ElasticComputeCloudModel.VpnConnectionOptions(
            staticRoutesOnly: nil)

        return defaultInstance
    }()
}

public extension VpnConnectionOptionsSpecification {
    /**
     Default instance of the VpnConnectionOptionsSpecification structure.
     */
    public static let __default: ElasticComputeCloudModel.VpnConnectionOptionsSpecification = {
        let defaultInstance = ElasticComputeCloudModel.VpnConnectionOptionsSpecification(
            staticRoutesOnly: nil,
            tunnelOptions: nil)

        return defaultInstance
    }()
}

public extension VpnGateway {
    /**
     Default instance of the VpnGateway structure.
     */
    public static let __default: ElasticComputeCloudModel.VpnGateway = {
        let defaultInstance = ElasticComputeCloudModel.VpnGateway(
            amazonSideAsn: nil,
            availabilityZone: nil,
            state: nil,
            tags: nil,
            type: nil,
            vpcAttachments: nil,
            vpnGatewayId: nil)

        return defaultInstance
    }()
}

public extension VpnStaticRoute {
    /**
     Default instance of the VpnStaticRoute structure.
     */
    public static let __default: ElasticComputeCloudModel.VpnStaticRoute = {
        let defaultInstance = ElasticComputeCloudModel.VpnStaticRoute(
            destinationCidrBlock: nil,
            source: nil,
            state: nil)

        return defaultInstance
    }()
}

public extension VpnTunnelOptionsSpecification {
    /**
     Default instance of the VpnTunnelOptionsSpecification structure.
     */
    public static let __default: ElasticComputeCloudModel.VpnTunnelOptionsSpecification = {
        let defaultInstance = ElasticComputeCloudModel.VpnTunnelOptionsSpecification(
            preSharedKey: nil,
            tunnelInsideCidr: nil)

        return defaultInstance
    }()
}

public extension WithdrawByoipCidrRequest {
    /**
     Default instance of the WithdrawByoipCidrRequest structure.
     */
    public static let __default: ElasticComputeCloudModel.WithdrawByoipCidrRequest = {
        let defaultInstance = ElasticComputeCloudModel.WithdrawByoipCidrRequest(
            cidr: "value",
            dryRun: nil)

        return defaultInstance
    }()
}

public extension WithdrawByoipCidrResult {
    /**
     Default instance of the WithdrawByoipCidrResult structure.
     */
    public static let __default: ElasticComputeCloudModel.WithdrawByoipCidrResult = {
        let defaultInstance = ElasticComputeCloudModel.WithdrawByoipCidrResult(
            byoipCidr: nil)

        return defaultInstance
    }()
}
