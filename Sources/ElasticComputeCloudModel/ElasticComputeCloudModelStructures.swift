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
// ElasticComputeCloudModelStructures.swift
// ElasticComputeCloudModel
//

import Foundation

public struct AcceptReservedInstancesExchangeQuoteRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var reservedInstanceIds: ReservedInstanceIdSet
    public var targetConfigurations: TargetConfigurationRequestSet?

    public init(dryRun: Boolean? = nil,
                reservedInstanceIds: ReservedInstanceIdSet,
                targetConfigurations: TargetConfigurationRequestSet? = nil) {
        self.dryRun = dryRun
        self.reservedInstanceIds = reservedInstanceIds
        self.targetConfigurations = targetConfigurations
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case reservedInstanceIds = "ReservedInstanceId"
        case targetConfigurations = "TargetConfiguration"
    }

    public func validate() throws {
    }
}

public struct AcceptReservedInstancesExchangeQuoteResult: Codable, Equatable {
    public var exchangeId: String?

    public init(exchangeId: String? = nil) {
        self.exchangeId = exchangeId
    }

    enum CodingKeys: String, CodingKey {
        case exchangeId
    }

    public func validate() throws {
    }
}

public struct AcceptTransitGatewayVpcAttachmentRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var transitGatewayAttachmentId: String

    public init(dryRun: Boolean? = nil,
                transitGatewayAttachmentId: String) {
        self.dryRun = dryRun
        self.transitGatewayAttachmentId = transitGatewayAttachmentId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case transitGatewayAttachmentId = "TransitGatewayAttachmentId"
    }

    public func validate() throws {
    }
}

public struct AcceptTransitGatewayVpcAttachmentResult: Codable, Equatable {
    public var transitGatewayVpcAttachment: TransitGatewayVpcAttachment?

    public init(transitGatewayVpcAttachment: TransitGatewayVpcAttachment? = nil) {
        self.transitGatewayVpcAttachment = transitGatewayVpcAttachment
    }

    enum CodingKeys: String, CodingKey {
        case transitGatewayVpcAttachment
    }

    public func validate() throws {
        try transitGatewayVpcAttachment?.validate()
    }
}

public struct AcceptVpcEndpointConnectionsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var serviceId: String
    public var vpcEndpointIds: ValueStringList

    public init(dryRun: Boolean? = nil,
                serviceId: String,
                vpcEndpointIds: ValueStringList) {
        self.dryRun = dryRun
        self.serviceId = serviceId
        self.vpcEndpointIds = vpcEndpointIds
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case serviceId = "ServiceId"
        case vpcEndpointIds = "VpcEndpointId"
    }

    public func validate() throws {
    }
}

public struct AcceptVpcEndpointConnectionsResult: Codable, Equatable {
    public var unsuccessful: UnsuccessfulItemSet?

    public init(unsuccessful: UnsuccessfulItemSet? = nil) {
        self.unsuccessful = unsuccessful
    }

    enum CodingKeys: String, CodingKey {
        case unsuccessful
    }

    public func validate() throws {
    }
}

public struct AcceptVpcPeeringConnectionRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var vpcPeeringConnectionId: String?

    public init(dryRun: Boolean? = nil,
                vpcPeeringConnectionId: String? = nil) {
        self.dryRun = dryRun
        self.vpcPeeringConnectionId = vpcPeeringConnectionId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case vpcPeeringConnectionId
    }

    public func validate() throws {
    }
}

public struct AcceptVpcPeeringConnectionResult: Codable, Equatable {
    public var vpcPeeringConnection: VpcPeeringConnection?

    public init(vpcPeeringConnection: VpcPeeringConnection? = nil) {
        self.vpcPeeringConnection = vpcPeeringConnection
    }

    enum CodingKeys: String, CodingKey {
        case vpcPeeringConnection
    }

    public func validate() throws {
        try vpcPeeringConnection?.validate()
    }
}

public struct AccountAttribute: Codable, Equatable {
    public var attributeName: String?
    public var attributeValues: AccountAttributeValueList?

    public init(attributeName: String? = nil,
                attributeValues: AccountAttributeValueList? = nil) {
        self.attributeName = attributeName
        self.attributeValues = attributeValues
    }

    enum CodingKeys: String, CodingKey {
        case attributeName
        case attributeValues = "attributeValueSet"
    }

    public func validate() throws {
    }
}

public struct AccountAttributeValue: Codable, Equatable {
    public var attributeValue: String?

    public init(attributeValue: String? = nil) {
        self.attributeValue = attributeValue
    }

    enum CodingKeys: String, CodingKey {
        case attributeValue
    }

    public func validate() throws {
    }
}

public struct ActiveInstance: Codable, Equatable {
    public var instanceHealth: InstanceHealthStatus?
    public var instanceId: String?
    public var instanceType: String?
    public var spotInstanceRequestId: String?

    public init(instanceHealth: InstanceHealthStatus? = nil,
                instanceId: String? = nil,
                instanceType: String? = nil,
                spotInstanceRequestId: String? = nil) {
        self.instanceHealth = instanceHealth
        self.instanceId = instanceId
        self.instanceType = instanceType
        self.spotInstanceRequestId = spotInstanceRequestId
    }

    enum CodingKeys: String, CodingKey {
        case instanceHealth
        case instanceId
        case instanceType
        case spotInstanceRequestId
    }

    public func validate() throws {
    }
}

public struct Address: Codable, Equatable {
    public var allocationId: String?
    public var associationId: String?
    public var domain: DomainType?
    public var instanceId: String?
    public var networkInterfaceId: String?
    public var networkInterfaceOwnerId: String?
    public var privateIpAddress: String?
    public var publicIp: String?
    public var publicIpv4Pool: String?
    public var tags: TagList?

    public init(allocationId: String? = nil,
                associationId: String? = nil,
                domain: DomainType? = nil,
                instanceId: String? = nil,
                networkInterfaceId: String? = nil,
                networkInterfaceOwnerId: String? = nil,
                privateIpAddress: String? = nil,
                publicIp: String? = nil,
                publicIpv4Pool: String? = nil,
                tags: TagList? = nil) {
        self.allocationId = allocationId
        self.associationId = associationId
        self.domain = domain
        self.instanceId = instanceId
        self.networkInterfaceId = networkInterfaceId
        self.networkInterfaceOwnerId = networkInterfaceOwnerId
        self.privateIpAddress = privateIpAddress
        self.publicIp = publicIp
        self.publicIpv4Pool = publicIpv4Pool
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case allocationId
        case associationId
        case domain
        case instanceId
        case networkInterfaceId
        case networkInterfaceOwnerId
        case privateIpAddress
        case publicIp
        case publicIpv4Pool
        case tags = "tagSet"
    }

    public func validate() throws {
    }
}

public struct AdvertiseByoipCidrRequest: Codable, Equatable {
    public var cidr: String
    public var dryRun: Boolean?

    public init(cidr: String,
                dryRun: Boolean? = nil) {
        self.cidr = cidr
        self.dryRun = dryRun
    }

    enum CodingKeys: String, CodingKey {
        case cidr = "Cidr"
        case dryRun = "DryRun"
    }

    public func validate() throws {
    }
}

public struct AdvertiseByoipCidrResult: Codable, Equatable {
    public var byoipCidr: ByoipCidr?

    public init(byoipCidr: ByoipCidr? = nil) {
        self.byoipCidr = byoipCidr
    }

    enum CodingKeys: String, CodingKey {
        case byoipCidr
    }

    public func validate() throws {
        try byoipCidr?.validate()
    }
}

public struct AllocateAddressRequest: Codable, Equatable {
    public var address: String?
    public var domain: DomainType?
    public var dryRun: Boolean?
    public var publicIpv4Pool: String?

    public init(address: String? = nil,
                domain: DomainType? = nil,
                dryRun: Boolean? = nil,
                publicIpv4Pool: String? = nil) {
        self.address = address
        self.domain = domain
        self.dryRun = dryRun
        self.publicIpv4Pool = publicIpv4Pool
    }

    enum CodingKeys: String, CodingKey {
        case address = "Address"
        case domain = "Domain"
        case dryRun
        case publicIpv4Pool = "PublicIpv4Pool"
    }

    public func validate() throws {
    }
}

public struct AllocateAddressResult: Codable, Equatable {
    public var allocationId: String?
    public var domain: DomainType?
    public var publicIp: String?
    public var publicIpv4Pool: String?

    public init(allocationId: String? = nil,
                domain: DomainType? = nil,
                publicIp: String? = nil,
                publicIpv4Pool: String? = nil) {
        self.allocationId = allocationId
        self.domain = domain
        self.publicIp = publicIp
        self.publicIpv4Pool = publicIpv4Pool
    }

    enum CodingKeys: String, CodingKey {
        case allocationId
        case domain
        case publicIp
        case publicIpv4Pool
    }

    public func validate() throws {
    }
}

public struct AllocateHostsRequest: Codable, Equatable {
    public var autoPlacement: AutoPlacement?
    public var availabilityZone: String
    public var clientToken: String?
    public var hostRecovery: HostRecovery?
    public var instanceType: String
    public var quantity: Integer
    public var tagSpecifications: TagSpecificationList?

    public init(autoPlacement: AutoPlacement? = nil,
                availabilityZone: String,
                clientToken: String? = nil,
                hostRecovery: HostRecovery? = nil,
                instanceType: String,
                quantity: Integer,
                tagSpecifications: TagSpecificationList? = nil) {
        self.autoPlacement = autoPlacement
        self.availabilityZone = availabilityZone
        self.clientToken = clientToken
        self.hostRecovery = hostRecovery
        self.instanceType = instanceType
        self.quantity = quantity
        self.tagSpecifications = tagSpecifications
    }

    enum CodingKeys: String, CodingKey {
        case autoPlacement
        case availabilityZone
        case clientToken
        case hostRecovery = "HostRecovery"
        case instanceType
        case quantity
        case tagSpecifications = "TagSpecification"
    }

    public func validate() throws {
    }
}

public struct AllocateHostsResult: Codable, Equatable {
    public var hostIds: ResponseHostIdList?

    public init(hostIds: ResponseHostIdList? = nil) {
        self.hostIds = hostIds
    }

    enum CodingKeys: String, CodingKey {
        case hostIds = "hostIdSet"
    }

    public func validate() throws {
    }
}

public struct AllowedPrincipal: Codable, Equatable {
    public var principal: String?
    public var principalType: PrincipalType?

    public init(principal: String? = nil,
                principalType: PrincipalType? = nil) {
        self.principal = principal
        self.principalType = principalType
    }

    enum CodingKeys: String, CodingKey {
        case principal
        case principalType
    }

    public func validate() throws {
    }
}

public struct ApplySecurityGroupsToClientVpnTargetNetworkRequest: Codable, Equatable {
    public var clientVpnEndpointId: String
    public var dryRun: Boolean?
    public var securityGroupIds: ClientVpnSecurityGroupIdSet
    public var vpcId: String

    public init(clientVpnEndpointId: String,
                dryRun: Boolean? = nil,
                securityGroupIds: ClientVpnSecurityGroupIdSet,
                vpcId: String) {
        self.clientVpnEndpointId = clientVpnEndpointId
        self.dryRun = dryRun
        self.securityGroupIds = securityGroupIds
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case clientVpnEndpointId = "ClientVpnEndpointId"
        case dryRun = "DryRun"
        case securityGroupIds = "SecurityGroupId"
        case vpcId = "VpcId"
    }

    public func validate() throws {
    }
}

public struct ApplySecurityGroupsToClientVpnTargetNetworkResult: Codable, Equatable {
    public var securityGroupIds: ClientVpnSecurityGroupIdSet?

    public init(securityGroupIds: ClientVpnSecurityGroupIdSet? = nil) {
        self.securityGroupIds = securityGroupIds
    }

    enum CodingKeys: String, CodingKey {
        case securityGroupIds
    }

    public func validate() throws {
    }
}

public struct AssignIpv6AddressesRequest: Codable, Equatable {
    public var ipv6AddressCount: Integer?
    public var ipv6Addresses: Ipv6AddressList?
    public var networkInterfaceId: String

    public init(ipv6AddressCount: Integer? = nil,
                ipv6Addresses: Ipv6AddressList? = nil,
                networkInterfaceId: String) {
        self.ipv6AddressCount = ipv6AddressCount
        self.ipv6Addresses = ipv6Addresses
        self.networkInterfaceId = networkInterfaceId
    }

    enum CodingKeys: String, CodingKey {
        case ipv6AddressCount
        case ipv6Addresses
        case networkInterfaceId
    }

    public func validate() throws {
    }
}

public struct AssignIpv6AddressesResult: Codable, Equatable {
    public var assignedIpv6Addresses: Ipv6AddressList?
    public var networkInterfaceId: String?

    public init(assignedIpv6Addresses: Ipv6AddressList? = nil,
                networkInterfaceId: String? = nil) {
        self.assignedIpv6Addresses = assignedIpv6Addresses
        self.networkInterfaceId = networkInterfaceId
    }

    enum CodingKeys: String, CodingKey {
        case assignedIpv6Addresses
        case networkInterfaceId
    }

    public func validate() throws {
    }
}

public struct AssignPrivateIpAddressesRequest: Codable, Equatable {
    public var allowReassignment: Boolean?
    public var networkInterfaceId: String
    public var privateIpAddresses: PrivateIpAddressStringList?
    public var secondaryPrivateIpAddressCount: Integer?

    public init(allowReassignment: Boolean? = nil,
                networkInterfaceId: String,
                privateIpAddresses: PrivateIpAddressStringList? = nil,
                secondaryPrivateIpAddressCount: Integer? = nil) {
        self.allowReassignment = allowReassignment
        self.networkInterfaceId = networkInterfaceId
        self.privateIpAddresses = privateIpAddresses
        self.secondaryPrivateIpAddressCount = secondaryPrivateIpAddressCount
    }

    enum CodingKeys: String, CodingKey {
        case allowReassignment
        case networkInterfaceId
        case privateIpAddresses = "privateIpAddress"
        case secondaryPrivateIpAddressCount
    }

    public func validate() throws {
    }
}

public struct AssociateAddressRequest: Codable, Equatable {
    public var allocationId: String?
    public var allowReassociation: Boolean?
    public var dryRun: Boolean?
    public var instanceId: String?
    public var networkInterfaceId: String?
    public var privateIpAddress: String?
    public var publicIp: String?

    public init(allocationId: String? = nil,
                allowReassociation: Boolean? = nil,
                dryRun: Boolean? = nil,
                instanceId: String? = nil,
                networkInterfaceId: String? = nil,
                privateIpAddress: String? = nil,
                publicIp: String? = nil) {
        self.allocationId = allocationId
        self.allowReassociation = allowReassociation
        self.dryRun = dryRun
        self.instanceId = instanceId
        self.networkInterfaceId = networkInterfaceId
        self.privateIpAddress = privateIpAddress
        self.publicIp = publicIp
    }

    enum CodingKeys: String, CodingKey {
        case allocationId = "AllocationId"
        case allowReassociation
        case dryRun
        case instanceId = "InstanceId"
        case networkInterfaceId
        case privateIpAddress
        case publicIp = "PublicIp"
    }

    public func validate() throws {
    }
}

public struct AssociateAddressResult: Codable, Equatable {
    public var associationId: String?

    public init(associationId: String? = nil) {
        self.associationId = associationId
    }

    enum CodingKeys: String, CodingKey {
        case associationId
    }

    public func validate() throws {
    }
}

public struct AssociateClientVpnTargetNetworkRequest: Codable, Equatable {
    public var clientToken: String?
    public var clientVpnEndpointId: String
    public var dryRun: Boolean?
    public var subnetId: String

    public init(clientToken: String? = nil,
                clientVpnEndpointId: String,
                dryRun: Boolean? = nil,
                subnetId: String) {
        self.clientToken = clientToken
        self.clientVpnEndpointId = clientVpnEndpointId
        self.dryRun = dryRun
        self.subnetId = subnetId
    }

    enum CodingKeys: String, CodingKey {
        case clientToken = "ClientToken"
        case clientVpnEndpointId = "ClientVpnEndpointId"
        case dryRun = "DryRun"
        case subnetId = "SubnetId"
    }

    public func validate() throws {
    }
}

public struct AssociateClientVpnTargetNetworkResult: Codable, Equatable {
    public var associationId: String?
    public var status: AssociationStatus?

    public init(associationId: String? = nil,
                status: AssociationStatus? = nil) {
        self.associationId = associationId
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case associationId
        case status
    }

    public func validate() throws {
        try status?.validate()
    }
}

public struct AssociateDhcpOptionsRequest: Codable, Equatable {
    public var dhcpOptionsId: String
    public var dryRun: Boolean?
    public var vpcId: String

    public init(dhcpOptionsId: String,
                dryRun: Boolean? = nil,
                vpcId: String) {
        self.dhcpOptionsId = dhcpOptionsId
        self.dryRun = dryRun
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case dhcpOptionsId = "DhcpOptionsId"
        case dryRun
        case vpcId = "VpcId"
    }

    public func validate() throws {
    }
}

public struct AssociateIamInstanceProfileRequest: Codable, Equatable {
    public var iamInstanceProfile: IamInstanceProfileSpecification
    public var instanceId: String

    public init(iamInstanceProfile: IamInstanceProfileSpecification,
                instanceId: String) {
        self.iamInstanceProfile = iamInstanceProfile
        self.instanceId = instanceId
    }

    enum CodingKeys: String, CodingKey {
        case iamInstanceProfile = "IamInstanceProfile"
        case instanceId = "InstanceId"
    }

    public func validate() throws {
        try iamInstanceProfile.validate()
    }
}

public struct AssociateIamInstanceProfileResult: Codable, Equatable {
    public var iamInstanceProfileAssociation: IamInstanceProfileAssociation?

    public init(iamInstanceProfileAssociation: IamInstanceProfileAssociation? = nil) {
        self.iamInstanceProfileAssociation = iamInstanceProfileAssociation
    }

    enum CodingKeys: String, CodingKey {
        case iamInstanceProfileAssociation
    }

    public func validate() throws {
        try iamInstanceProfileAssociation?.validate()
    }
}

public struct AssociateRouteTableRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var routeTableId: String
    public var subnetId: String

    public init(dryRun: Boolean? = nil,
                routeTableId: String,
                subnetId: String) {
        self.dryRun = dryRun
        self.routeTableId = routeTableId
        self.subnetId = subnetId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case routeTableId
        case subnetId
    }

    public func validate() throws {
    }
}

public struct AssociateRouteTableResult: Codable, Equatable {
    public var associationId: String?

    public init(associationId: String? = nil) {
        self.associationId = associationId
    }

    enum CodingKeys: String, CodingKey {
        case associationId
    }

    public func validate() throws {
    }
}

public struct AssociateSubnetCidrBlockRequest: Codable, Equatable {
    public var ipv6CidrBlock: String
    public var subnetId: String

    public init(ipv6CidrBlock: String,
                subnetId: String) {
        self.ipv6CidrBlock = ipv6CidrBlock
        self.subnetId = subnetId
    }

    enum CodingKeys: String, CodingKey {
        case ipv6CidrBlock
        case subnetId
    }

    public func validate() throws {
    }
}

public struct AssociateSubnetCidrBlockResult: Codable, Equatable {
    public var ipv6CidrBlockAssociation: SubnetIpv6CidrBlockAssociation?
    public var subnetId: String?

    public init(ipv6CidrBlockAssociation: SubnetIpv6CidrBlockAssociation? = nil,
                subnetId: String? = nil) {
        self.ipv6CidrBlockAssociation = ipv6CidrBlockAssociation
        self.subnetId = subnetId
    }

    enum CodingKeys: String, CodingKey {
        case ipv6CidrBlockAssociation
        case subnetId
    }

    public func validate() throws {
        try ipv6CidrBlockAssociation?.validate()
    }
}

public struct AssociateTransitGatewayRouteTableRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var transitGatewayAttachmentId: String
    public var transitGatewayRouteTableId: String

    public init(dryRun: Boolean? = nil,
                transitGatewayAttachmentId: String,
                transitGatewayRouteTableId: String) {
        self.dryRun = dryRun
        self.transitGatewayAttachmentId = transitGatewayAttachmentId
        self.transitGatewayRouteTableId = transitGatewayRouteTableId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case transitGatewayAttachmentId = "TransitGatewayAttachmentId"
        case transitGatewayRouteTableId = "TransitGatewayRouteTableId"
    }

    public func validate() throws {
    }
}

public struct AssociateTransitGatewayRouteTableResult: Codable, Equatable {
    public var association: TransitGatewayAssociation?

    public init(association: TransitGatewayAssociation? = nil) {
        self.association = association
    }

    enum CodingKeys: String, CodingKey {
        case association
    }

    public func validate() throws {
        try association?.validate()
    }
}

public struct AssociateVpcCidrBlockRequest: Codable, Equatable {
    public var amazonProvidedIpv6CidrBlock: Boolean?
    public var cidrBlock: String?
    public var vpcId: String

    public init(amazonProvidedIpv6CidrBlock: Boolean? = nil,
                cidrBlock: String? = nil,
                vpcId: String) {
        self.amazonProvidedIpv6CidrBlock = amazonProvidedIpv6CidrBlock
        self.cidrBlock = cidrBlock
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case amazonProvidedIpv6CidrBlock
        case cidrBlock = "CidrBlock"
        case vpcId
    }

    public func validate() throws {
    }
}

public struct AssociateVpcCidrBlockResult: Codable, Equatable {
    public var cidrBlockAssociation: VpcCidrBlockAssociation?
    public var ipv6CidrBlockAssociation: VpcIpv6CidrBlockAssociation?
    public var vpcId: String?

    public init(cidrBlockAssociation: VpcCidrBlockAssociation? = nil,
                ipv6CidrBlockAssociation: VpcIpv6CidrBlockAssociation? = nil,
                vpcId: String? = nil) {
        self.cidrBlockAssociation = cidrBlockAssociation
        self.ipv6CidrBlockAssociation = ipv6CidrBlockAssociation
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case cidrBlockAssociation
        case ipv6CidrBlockAssociation
        case vpcId
    }

    public func validate() throws {
        try cidrBlockAssociation?.validate()
        try ipv6CidrBlockAssociation?.validate()
    }
}

public struct AssociatedTargetNetwork: Codable, Equatable {
    public var networkId: String?
    public var networkType: AssociatedNetworkType?

    public init(networkId: String? = nil,
                networkType: AssociatedNetworkType? = nil) {
        self.networkId = networkId
        self.networkType = networkType
    }

    enum CodingKeys: String, CodingKey {
        case networkId
        case networkType
    }

    public func validate() throws {
    }
}

public struct AssociationStatus: Codable, Equatable {
    public var code: AssociationStatusCode?
    public var message: String?

    public init(code: AssociationStatusCode? = nil,
                message: String? = nil) {
        self.code = code
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case code
        case message
    }

    public func validate() throws {
    }
}

public struct AttachClassicLinkVpcRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var groups: GroupIdStringList
    public var instanceId: String
    public var vpcId: String

    public init(dryRun: Boolean? = nil,
                groups: GroupIdStringList,
                instanceId: String,
                vpcId: String) {
        self.dryRun = dryRun
        self.groups = groups
        self.instanceId = instanceId
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case groups = "SecurityGroupId"
        case instanceId
        case vpcId
    }

    public func validate() throws {
    }
}

public struct AttachClassicLinkVpcResult: Codable, Equatable {
    public var `return`: Boolean?

    public init(`return`: Boolean? = nil) {
        self.`return` = `return`
    }

    enum CodingKeys: String, CodingKey {
        case `return` = "return"
    }

    public func validate() throws {
    }
}

public struct AttachInternetGatewayRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var internetGatewayId: String
    public var vpcId: String

    public init(dryRun: Boolean? = nil,
                internetGatewayId: String,
                vpcId: String) {
        self.dryRun = dryRun
        self.internetGatewayId = internetGatewayId
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case internetGatewayId
        case vpcId
    }

    public func validate() throws {
    }
}

public struct AttachNetworkInterfaceRequest: Codable, Equatable {
    public var deviceIndex: Integer
    public var dryRun: Boolean?
    public var instanceId: String
    public var networkInterfaceId: String

    public init(deviceIndex: Integer,
                dryRun: Boolean? = nil,
                instanceId: String,
                networkInterfaceId: String) {
        self.deviceIndex = deviceIndex
        self.dryRun = dryRun
        self.instanceId = instanceId
        self.networkInterfaceId = networkInterfaceId
    }

    enum CodingKeys: String, CodingKey {
        case deviceIndex
        case dryRun
        case instanceId
        case networkInterfaceId
    }

    public func validate() throws {
    }
}

public struct AttachNetworkInterfaceResult: Codable, Equatable {
    public var attachmentId: String?

    public init(attachmentId: String? = nil) {
        self.attachmentId = attachmentId
    }

    enum CodingKeys: String, CodingKey {
        case attachmentId
    }

    public func validate() throws {
    }
}

public struct AttachVolumeRequest: Codable, Equatable {
    public var device: String
    public var dryRun: Boolean?
    public var instanceId: String
    public var volumeId: String

    public init(device: String,
                dryRun: Boolean? = nil,
                instanceId: String,
                volumeId: String) {
        self.device = device
        self.dryRun = dryRun
        self.instanceId = instanceId
        self.volumeId = volumeId
    }

    enum CodingKeys: String, CodingKey {
        case device = "Device"
        case dryRun
        case instanceId = "InstanceId"
        case volumeId = "VolumeId"
    }

    public func validate() throws {
    }
}

public struct AttachVpnGatewayRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var vpcId: String
    public var vpnGatewayId: String

    public init(dryRun: Boolean? = nil,
                vpcId: String,
                vpnGatewayId: String) {
        self.dryRun = dryRun
        self.vpcId = vpcId
        self.vpnGatewayId = vpnGatewayId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case vpcId = "VpcId"
        case vpnGatewayId = "VpnGatewayId"
    }

    public func validate() throws {
    }
}

public struct AttachVpnGatewayResult: Codable, Equatable {
    public var vpcAttachment: VpcAttachment?

    public init(vpcAttachment: VpcAttachment? = nil) {
        self.vpcAttachment = vpcAttachment
    }

    enum CodingKeys: String, CodingKey {
        case vpcAttachment = "attachment"
    }

    public func validate() throws {
        try vpcAttachment?.validate()
    }
}

public struct AttributeBooleanValue: Codable, Equatable {
    public var value: Boolean?

    public init(value: Boolean? = nil) {
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case value
    }

    public func validate() throws {
    }
}

public struct AttributeValue: Codable, Equatable {
    public var value: String?

    public init(value: String? = nil) {
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case value
    }

    public func validate() throws {
    }
}

public struct AuthorizationRule: Codable, Equatable {
    public var accessAll: Boolean?
    public var clientVpnEndpointId: String?
    public var description: String?
    public var destinationCidr: String?
    public var groupId: String?
    public var status: ClientVpnAuthorizationRuleStatus?

    public init(accessAll: Boolean? = nil,
                clientVpnEndpointId: String? = nil,
                description: String? = nil,
                destinationCidr: String? = nil,
                groupId: String? = nil,
                status: ClientVpnAuthorizationRuleStatus? = nil) {
        self.accessAll = accessAll
        self.clientVpnEndpointId = clientVpnEndpointId
        self.description = description
        self.destinationCidr = destinationCidr
        self.groupId = groupId
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case accessAll
        case clientVpnEndpointId
        case description
        case destinationCidr
        case groupId
        case status
    }

    public func validate() throws {
        try status?.validate()
    }
}

public struct AuthorizeClientVpnIngressRequest: Codable, Equatable {
    public var accessGroupId: String?
    public var authorizeAllGroups: Boolean?
    public var clientToken: String?
    public var clientVpnEndpointId: String
    public var description: String?
    public var dryRun: Boolean?
    public var targetNetworkCidr: String

    public init(accessGroupId: String? = nil,
                authorizeAllGroups: Boolean? = nil,
                clientToken: String? = nil,
                clientVpnEndpointId: String,
                description: String? = nil,
                dryRun: Boolean? = nil,
                targetNetworkCidr: String) {
        self.accessGroupId = accessGroupId
        self.authorizeAllGroups = authorizeAllGroups
        self.clientToken = clientToken
        self.clientVpnEndpointId = clientVpnEndpointId
        self.description = description
        self.dryRun = dryRun
        self.targetNetworkCidr = targetNetworkCidr
    }

    enum CodingKeys: String, CodingKey {
        case accessGroupId = "AccessGroupId"
        case authorizeAllGroups = "AuthorizeAllGroups"
        case clientToken = "ClientToken"
        case clientVpnEndpointId = "ClientVpnEndpointId"
        case description = "Description"
        case dryRun = "DryRun"
        case targetNetworkCidr = "TargetNetworkCidr"
    }

    public func validate() throws {
    }
}

public struct AuthorizeClientVpnIngressResult: Codable, Equatable {
    public var status: ClientVpnAuthorizationRuleStatus?

    public init(status: ClientVpnAuthorizationRuleStatus? = nil) {
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case status
    }

    public func validate() throws {
        try status?.validate()
    }
}

public struct AuthorizeSecurityGroupEgressRequest: Codable, Equatable {
    public var cidrIp: String?
    public var dryRun: Boolean?
    public var fromPort: Integer?
    public var groupId: String
    public var ipPermissions: IpPermissionList?
    public var ipProtocol: String?
    public var sourceSecurityGroupName: String?
    public var sourceSecurityGroupOwnerId: String?
    public var toPort: Integer?

    public init(cidrIp: String? = nil,
                dryRun: Boolean? = nil,
                fromPort: Integer? = nil,
                groupId: String,
                ipPermissions: IpPermissionList? = nil,
                ipProtocol: String? = nil,
                sourceSecurityGroupName: String? = nil,
                sourceSecurityGroupOwnerId: String? = nil,
                toPort: Integer? = nil) {
        self.cidrIp = cidrIp
        self.dryRun = dryRun
        self.fromPort = fromPort
        self.groupId = groupId
        self.ipPermissions = ipPermissions
        self.ipProtocol = ipProtocol
        self.sourceSecurityGroupName = sourceSecurityGroupName
        self.sourceSecurityGroupOwnerId = sourceSecurityGroupOwnerId
        self.toPort = toPort
    }

    enum CodingKeys: String, CodingKey {
        case cidrIp
        case dryRun
        case fromPort
        case groupId
        case ipPermissions
        case ipProtocol
        case sourceSecurityGroupName
        case sourceSecurityGroupOwnerId
        case toPort
    }

    public func validate() throws {
    }
}

public struct AuthorizeSecurityGroupIngressRequest: Codable, Equatable {
    public var cidrIp: String?
    public var dryRun: Boolean?
    public var fromPort: Integer?
    public var groupId: String?
    public var groupName: String?
    public var ipPermissions: IpPermissionList?
    public var ipProtocol: String?
    public var sourceSecurityGroupName: String?
    public var sourceSecurityGroupOwnerId: String?
    public var toPort: Integer?

    public init(cidrIp: String? = nil,
                dryRun: Boolean? = nil,
                fromPort: Integer? = nil,
                groupId: String? = nil,
                groupName: String? = nil,
                ipPermissions: IpPermissionList? = nil,
                ipProtocol: String? = nil,
                sourceSecurityGroupName: String? = nil,
                sourceSecurityGroupOwnerId: String? = nil,
                toPort: Integer? = nil) {
        self.cidrIp = cidrIp
        self.dryRun = dryRun
        self.fromPort = fromPort
        self.groupId = groupId
        self.groupName = groupName
        self.ipPermissions = ipPermissions
        self.ipProtocol = ipProtocol
        self.sourceSecurityGroupName = sourceSecurityGroupName
        self.sourceSecurityGroupOwnerId = sourceSecurityGroupOwnerId
        self.toPort = toPort
    }

    enum CodingKeys: String, CodingKey {
        case cidrIp = "CidrIp"
        case dryRun
        case fromPort = "FromPort"
        case groupId = "GroupId"
        case groupName = "GroupName"
        case ipPermissions = "IpPermissions"
        case ipProtocol = "IpProtocol"
        case sourceSecurityGroupName = "SourceSecurityGroupName"
        case sourceSecurityGroupOwnerId = "SourceSecurityGroupOwnerId"
        case toPort = "ToPort"
    }

    public func validate() throws {
    }
}

public struct AvailabilityZone: Codable, Equatable {
    public var messages: AvailabilityZoneMessageList?
    public var regionName: String?
    public var state: AvailabilityZoneState?
    public var zoneId: String?
    public var zoneName: String?

    public init(messages: AvailabilityZoneMessageList? = nil,
                regionName: String? = nil,
                state: AvailabilityZoneState? = nil,
                zoneId: String? = nil,
                zoneName: String? = nil) {
        self.messages = messages
        self.regionName = regionName
        self.state = state
        self.zoneId = zoneId
        self.zoneName = zoneName
    }

    enum CodingKeys: String, CodingKey {
        case messages = "messageSet"
        case regionName
        case state = "zoneState"
        case zoneId
        case zoneName
    }

    public func validate() throws {
    }
}

public struct AvailabilityZoneMessage: Codable, Equatable {
    public var message: String?

    public init(message: String? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct AvailableCapacity: Codable, Equatable {
    public var availableInstanceCapacity: AvailableInstanceCapacityList?
    public var availableVCpus: Integer?

    public init(availableInstanceCapacity: AvailableInstanceCapacityList? = nil,
                availableVCpus: Integer? = nil) {
        self.availableInstanceCapacity = availableInstanceCapacity
        self.availableVCpus = availableVCpus
    }

    enum CodingKeys: String, CodingKey {
        case availableInstanceCapacity
        case availableVCpus
    }

    public func validate() throws {
    }
}

public struct BlobAttributeValue: Codable, Equatable {
    public var value: Blob?

    public init(value: Blob? = nil) {
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case value
    }

    public func validate() throws {
    }
}

public struct BlockDeviceMapping: Codable, Equatable {
    public var deviceName: String?
    public var ebs: EbsBlockDevice?
    public var noDevice: String?
    public var virtualName: String?

    public init(deviceName: String? = nil,
                ebs: EbsBlockDevice? = nil,
                noDevice: String? = nil,
                virtualName: String? = nil) {
        self.deviceName = deviceName
        self.ebs = ebs
        self.noDevice = noDevice
        self.virtualName = virtualName
    }

    enum CodingKeys: String, CodingKey {
        case deviceName
        case ebs
        case noDevice
        case virtualName
    }

    public func validate() throws {
        try ebs?.validate()
    }
}

public struct BundleInstanceRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var instanceId: String
    public var storage: Storage

    public init(dryRun: Boolean? = nil,
                instanceId: String,
                storage: Storage) {
        self.dryRun = dryRun
        self.instanceId = instanceId
        self.storage = storage
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case instanceId = "InstanceId"
        case storage = "Storage"
    }

    public func validate() throws {
        try storage.validate()
    }
}

public struct BundleInstanceResult: Codable, Equatable {
    public var bundleTask: BundleTask?

    public init(bundleTask: BundleTask? = nil) {
        self.bundleTask = bundleTask
    }

    enum CodingKeys: String, CodingKey {
        case bundleTask = "bundleInstanceTask"
    }

    public func validate() throws {
        try bundleTask?.validate()
    }
}

public struct BundleTask: Codable, Equatable {
    public var bundleId: String?
    public var bundleTaskError: BundleTaskError?
    public var instanceId: String?
    public var progress: String?
    public var startTime: DateTime?
    public var state: BundleTaskState?
    public var storage: Storage?
    public var updateTime: DateTime?

    public init(bundleId: String? = nil,
                bundleTaskError: BundleTaskError? = nil,
                instanceId: String? = nil,
                progress: String? = nil,
                startTime: DateTime? = nil,
                state: BundleTaskState? = nil,
                storage: Storage? = nil,
                updateTime: DateTime? = nil) {
        self.bundleId = bundleId
        self.bundleTaskError = bundleTaskError
        self.instanceId = instanceId
        self.progress = progress
        self.startTime = startTime
        self.state = state
        self.storage = storage
        self.updateTime = updateTime
    }

    enum CodingKeys: String, CodingKey {
        case bundleId
        case bundleTaskError = "error"
        case instanceId
        case progress
        case startTime
        case state
        case storage
        case updateTime
    }

    public func validate() throws {
        try bundleTaskError?.validate()
        try storage?.validate()
    }
}

public struct BundleTaskError: Codable, Equatable {
    public var code: String?
    public var message: String?

    public init(code: String? = nil,
                message: String? = nil) {
        self.code = code
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case code
        case message
    }

    public func validate() throws {
    }
}

public struct ByoipCidr: Codable, Equatable {
    public var cidr: String?
    public var description: String?
    public var state: ByoipCidrState?
    public var statusMessage: String?

    public init(cidr: String? = nil,
                description: String? = nil,
                state: ByoipCidrState? = nil,
                statusMessage: String? = nil) {
        self.cidr = cidr
        self.description = description
        self.state = state
        self.statusMessage = statusMessage
    }

    enum CodingKeys: String, CodingKey {
        case cidr
        case description
        case state
        case statusMessage
    }

    public func validate() throws {
    }
}

public struct CancelBundleTaskRequest: Codable, Equatable {
    public var bundleId: String
    public var dryRun: Boolean?

    public init(bundleId: String,
                dryRun: Boolean? = nil) {
        self.bundleId = bundleId
        self.dryRun = dryRun
    }

    enum CodingKeys: String, CodingKey {
        case bundleId = "BundleId"
        case dryRun
    }

    public func validate() throws {
    }
}

public struct CancelBundleTaskResult: Codable, Equatable {
    public var bundleTask: BundleTask?

    public init(bundleTask: BundleTask? = nil) {
        self.bundleTask = bundleTask
    }

    enum CodingKeys: String, CodingKey {
        case bundleTask = "bundleInstanceTask"
    }

    public func validate() throws {
        try bundleTask?.validate()
    }
}

public struct CancelCapacityReservationRequest: Codable, Equatable {
    public var capacityReservationId: String
    public var dryRun: Boolean?

    public init(capacityReservationId: String,
                dryRun: Boolean? = nil) {
        self.capacityReservationId = capacityReservationId
        self.dryRun = dryRun
    }

    enum CodingKeys: String, CodingKey {
        case capacityReservationId = "CapacityReservationId"
        case dryRun = "DryRun"
    }

    public func validate() throws {
    }
}

public struct CancelCapacityReservationResult: Codable, Equatable {
    public var `return`: Boolean?

    public init(`return`: Boolean? = nil) {
        self.`return` = `return`
    }

    enum CodingKeys: String, CodingKey {
        case `return` = "return"
    }

    public func validate() throws {
    }
}

public struct CancelConversionRequest: Codable, Equatable {
    public var conversionTaskId: String
    public var dryRun: Boolean?
    public var reasonMessage: String?

    public init(conversionTaskId: String,
                dryRun: Boolean? = nil,
                reasonMessage: String? = nil) {
        self.conversionTaskId = conversionTaskId
        self.dryRun = dryRun
        self.reasonMessage = reasonMessage
    }

    enum CodingKeys: String, CodingKey {
        case conversionTaskId
        case dryRun
        case reasonMessage
    }

    public func validate() throws {
    }
}

public struct CancelExportTaskRequest: Codable, Equatable {
    public var exportTaskId: String

    public init(exportTaskId: String) {
        self.exportTaskId = exportTaskId
    }

    enum CodingKeys: String, CodingKey {
        case exportTaskId
    }

    public func validate() throws {
    }
}

public struct CancelImportTaskRequest: Codable, Equatable {
    public var cancelReason: String?
    public var dryRun: Boolean?
    public var importTaskId: String?

    public init(cancelReason: String? = nil,
                dryRun: Boolean? = nil,
                importTaskId: String? = nil) {
        self.cancelReason = cancelReason
        self.dryRun = dryRun
        self.importTaskId = importTaskId
    }

    enum CodingKeys: String, CodingKey {
        case cancelReason = "CancelReason"
        case dryRun = "DryRun"
        case importTaskId = "ImportTaskId"
    }

    public func validate() throws {
    }
}

public struct CancelImportTaskResult: Codable, Equatable {
    public var importTaskId: String?
    public var previousState: String?
    public var state: String?

    public init(importTaskId: String? = nil,
                previousState: String? = nil,
                state: String? = nil) {
        self.importTaskId = importTaskId
        self.previousState = previousState
        self.state = state
    }

    enum CodingKeys: String, CodingKey {
        case importTaskId
        case previousState
        case state
    }

    public func validate() throws {
    }
}

public struct CancelReservedInstancesListingRequest: Codable, Equatable {
    public var reservedInstancesListingId: String

    public init(reservedInstancesListingId: String) {
        self.reservedInstancesListingId = reservedInstancesListingId
    }

    enum CodingKeys: String, CodingKey {
        case reservedInstancesListingId
    }

    public func validate() throws {
    }
}

public struct CancelReservedInstancesListingResult: Codable, Equatable {
    public var reservedInstancesListings: ReservedInstancesListingList?

    public init(reservedInstancesListings: ReservedInstancesListingList? = nil) {
        self.reservedInstancesListings = reservedInstancesListings
    }

    enum CodingKeys: String, CodingKey {
        case reservedInstancesListings = "reservedInstancesListingsSet"
    }

    public func validate() throws {
    }
}

public struct CancelSpotFleetRequestsError: Codable, Equatable {
    public var code: CancelBatchErrorCode?
    public var message: String?

    public init(code: CancelBatchErrorCode? = nil,
                message: String? = nil) {
        self.code = code
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case code
        case message
    }

    public func validate() throws {
    }
}

public struct CancelSpotFleetRequestsErrorItem: Codable, Equatable {
    public var error: CancelSpotFleetRequestsError?
    public var spotFleetRequestId: String?

    public init(error: CancelSpotFleetRequestsError? = nil,
                spotFleetRequestId: String? = nil) {
        self.error = error
        self.spotFleetRequestId = spotFleetRequestId
    }

    enum CodingKeys: String, CodingKey {
        case error
        case spotFleetRequestId
    }

    public func validate() throws {
        try error?.validate()
    }
}

public struct CancelSpotFleetRequestsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var spotFleetRequestIds: ValueStringList
    public var terminateInstances: Boolean

    public init(dryRun: Boolean? = nil,
                spotFleetRequestIds: ValueStringList,
                terminateInstances: Boolean) {
        self.dryRun = dryRun
        self.spotFleetRequestIds = spotFleetRequestIds
        self.terminateInstances = terminateInstances
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case spotFleetRequestIds = "spotFleetRequestId"
        case terminateInstances
    }

    public func validate() throws {
    }
}

public struct CancelSpotFleetRequestsResponse: Codable, Equatable {
    public var successfulFleetRequests: CancelSpotFleetRequestsSuccessSet?
    public var unsuccessfulFleetRequests: CancelSpotFleetRequestsErrorSet?

    public init(successfulFleetRequests: CancelSpotFleetRequestsSuccessSet? = nil,
                unsuccessfulFleetRequests: CancelSpotFleetRequestsErrorSet? = nil) {
        self.successfulFleetRequests = successfulFleetRequests
        self.unsuccessfulFleetRequests = unsuccessfulFleetRequests
    }

    enum CodingKeys: String, CodingKey {
        case successfulFleetRequests = "successfulFleetRequestSet"
        case unsuccessfulFleetRequests = "unsuccessfulFleetRequestSet"
    }

    public func validate() throws {
    }
}

public struct CancelSpotFleetRequestsSuccessItem: Codable, Equatable {
    public var currentSpotFleetRequestState: BatchState?
    public var previousSpotFleetRequestState: BatchState?
    public var spotFleetRequestId: String?

    public init(currentSpotFleetRequestState: BatchState? = nil,
                previousSpotFleetRequestState: BatchState? = nil,
                spotFleetRequestId: String? = nil) {
        self.currentSpotFleetRequestState = currentSpotFleetRequestState
        self.previousSpotFleetRequestState = previousSpotFleetRequestState
        self.spotFleetRequestId = spotFleetRequestId
    }

    enum CodingKeys: String, CodingKey {
        case currentSpotFleetRequestState
        case previousSpotFleetRequestState
        case spotFleetRequestId
    }

    public func validate() throws {
    }
}

public struct CancelSpotInstanceRequestsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var spotInstanceRequestIds: SpotInstanceRequestIdList

    public init(dryRun: Boolean? = nil,
                spotInstanceRequestIds: SpotInstanceRequestIdList) {
        self.dryRun = dryRun
        self.spotInstanceRequestIds = spotInstanceRequestIds
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case spotInstanceRequestIds = "SpotInstanceRequestId"
    }

    public func validate() throws {
    }
}

public struct CancelSpotInstanceRequestsResult: Codable, Equatable {
    public var cancelledSpotInstanceRequests: CancelledSpotInstanceRequestList?

    public init(cancelledSpotInstanceRequests: CancelledSpotInstanceRequestList? = nil) {
        self.cancelledSpotInstanceRequests = cancelledSpotInstanceRequests
    }

    enum CodingKeys: String, CodingKey {
        case cancelledSpotInstanceRequests = "spotInstanceRequestSet"
    }

    public func validate() throws {
    }
}

public struct CancelledSpotInstanceRequest: Codable, Equatable {
    public var spotInstanceRequestId: String?
    public var state: CancelSpotInstanceRequestState?

    public init(spotInstanceRequestId: String? = nil,
                state: CancelSpotInstanceRequestState? = nil) {
        self.spotInstanceRequestId = spotInstanceRequestId
        self.state = state
    }

    enum CodingKeys: String, CodingKey {
        case spotInstanceRequestId
        case state
    }

    public func validate() throws {
    }
}

public struct CapacityReservation: Codable, Equatable {
    public var availabilityZone: String?
    public var availableInstanceCount: Integer?
    public var capacityReservationId: String?
    public var createDate: DateTime?
    public var ebsOptimized: Boolean?
    public var endDate: DateTime?
    public var endDateType: EndDateType?
    public var ephemeralStorage: Boolean?
    public var instanceMatchCriteria: InstanceMatchCriteria?
    public var instancePlatform: CapacityReservationInstancePlatform?
    public var instanceType: String?
    public var state: CapacityReservationState?
    public var tags: TagList?
    public var tenancy: CapacityReservationTenancy?
    public var totalInstanceCount: Integer?

    public init(availabilityZone: String? = nil,
                availableInstanceCount: Integer? = nil,
                capacityReservationId: String? = nil,
                createDate: DateTime? = nil,
                ebsOptimized: Boolean? = nil,
                endDate: DateTime? = nil,
                endDateType: EndDateType? = nil,
                ephemeralStorage: Boolean? = nil,
                instanceMatchCriteria: InstanceMatchCriteria? = nil,
                instancePlatform: CapacityReservationInstancePlatform? = nil,
                instanceType: String? = nil,
                state: CapacityReservationState? = nil,
                tags: TagList? = nil,
                tenancy: CapacityReservationTenancy? = nil,
                totalInstanceCount: Integer? = nil) {
        self.availabilityZone = availabilityZone
        self.availableInstanceCount = availableInstanceCount
        self.capacityReservationId = capacityReservationId
        self.createDate = createDate
        self.ebsOptimized = ebsOptimized
        self.endDate = endDate
        self.endDateType = endDateType
        self.ephemeralStorage = ephemeralStorage
        self.instanceMatchCriteria = instanceMatchCriteria
        self.instancePlatform = instancePlatform
        self.instanceType = instanceType
        self.state = state
        self.tags = tags
        self.tenancy = tenancy
        self.totalInstanceCount = totalInstanceCount
    }

    enum CodingKeys: String, CodingKey {
        case availabilityZone
        case availableInstanceCount
        case capacityReservationId
        case createDate
        case ebsOptimized
        case endDate
        case endDateType
        case ephemeralStorage
        case instanceMatchCriteria
        case instancePlatform
        case instanceType
        case state
        case tags = "tagSet"
        case tenancy
        case totalInstanceCount
    }

    public func validate() throws {
    }
}

public struct CapacityReservationSpecification: Codable, Equatable {
    public var capacityReservationPreference: CapacityReservationPreference?
    public var capacityReservationTarget: CapacityReservationTarget?

    public init(capacityReservationPreference: CapacityReservationPreference? = nil,
                capacityReservationTarget: CapacityReservationTarget? = nil) {
        self.capacityReservationPreference = capacityReservationPreference
        self.capacityReservationTarget = capacityReservationTarget
    }

    enum CodingKeys: String, CodingKey {
        case capacityReservationPreference = "CapacityReservationPreference"
        case capacityReservationTarget = "CapacityReservationTarget"
    }

    public func validate() throws {
        try capacityReservationTarget?.validate()
    }
}

public struct CapacityReservationSpecificationResponse: Codable, Equatable {
    public var capacityReservationPreference: CapacityReservationPreference?
    public var capacityReservationTarget: CapacityReservationTargetResponse?

    public init(capacityReservationPreference: CapacityReservationPreference? = nil,
                capacityReservationTarget: CapacityReservationTargetResponse? = nil) {
        self.capacityReservationPreference = capacityReservationPreference
        self.capacityReservationTarget = capacityReservationTarget
    }

    enum CodingKeys: String, CodingKey {
        case capacityReservationPreference
        case capacityReservationTarget
    }

    public func validate() throws {
        try capacityReservationTarget?.validate()
    }
}

public struct CapacityReservationTarget: Codable, Equatable {
    public var capacityReservationId: String?

    public init(capacityReservationId: String? = nil) {
        self.capacityReservationId = capacityReservationId
    }

    enum CodingKeys: String, CodingKey {
        case capacityReservationId = "CapacityReservationId"
    }

    public func validate() throws {
    }
}

public struct CapacityReservationTargetResponse: Codable, Equatable {
    public var capacityReservationId: String?

    public init(capacityReservationId: String? = nil) {
        self.capacityReservationId = capacityReservationId
    }

    enum CodingKeys: String, CodingKey {
        case capacityReservationId
    }

    public func validate() throws {
    }
}

public struct CertificateAuthentication: Codable, Equatable {
    public var clientRootCertificateChain: String?

    public init(clientRootCertificateChain: String? = nil) {
        self.clientRootCertificateChain = clientRootCertificateChain
    }

    enum CodingKeys: String, CodingKey {
        case clientRootCertificateChain
    }

    public func validate() throws {
    }
}

public struct CertificateAuthenticationRequest: Codable, Equatable {
    public var clientRootCertificateChainArn: String?

    public init(clientRootCertificateChainArn: String? = nil) {
        self.clientRootCertificateChainArn = clientRootCertificateChainArn
    }

    enum CodingKeys: String, CodingKey {
        case clientRootCertificateChainArn = "ClientRootCertificateChainArn"
    }

    public func validate() throws {
    }
}

public struct CidrAuthorizationContext: Codable, Equatable {
    public var message: String
    public var signature: String

    public init(message: String,
                signature: String) {
        self.message = message
        self.signature = signature
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
        case signature = "Signature"
    }

    public func validate() throws {
    }
}

public struct CidrBlock: Codable, Equatable {
    public var cidrBlock: String?

    public init(cidrBlock: String? = nil) {
        self.cidrBlock = cidrBlock
    }

    enum CodingKeys: String, CodingKey {
        case cidrBlock
    }

    public func validate() throws {
    }
}

public struct ClassicLinkDnsSupport: Codable, Equatable {
    public var classicLinkDnsSupported: Boolean?
    public var vpcId: String?

    public init(classicLinkDnsSupported: Boolean? = nil,
                vpcId: String? = nil) {
        self.classicLinkDnsSupported = classicLinkDnsSupported
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case classicLinkDnsSupported
        case vpcId
    }

    public func validate() throws {
    }
}

public struct ClassicLinkInstance: Codable, Equatable {
    public var groups: GroupIdentifierList?
    public var instanceId: String?
    public var tags: TagList?
    public var vpcId: String?

    public init(groups: GroupIdentifierList? = nil,
                instanceId: String? = nil,
                tags: TagList? = nil,
                vpcId: String? = nil) {
        self.groups = groups
        self.instanceId = instanceId
        self.tags = tags
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case groups = "groupSet"
        case instanceId
        case tags = "tagSet"
        case vpcId
    }

    public func validate() throws {
    }
}

public struct ClassicLoadBalancer: Codable, Equatable {
    public var name: String?

    public init(name: String? = nil) {
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case name
    }

    public func validate() throws {
    }
}

public struct ClassicLoadBalancersConfig: Codable, Equatable {
    public var classicLoadBalancers: ClassicLoadBalancers?

    public init(classicLoadBalancers: ClassicLoadBalancers? = nil) {
        self.classicLoadBalancers = classicLoadBalancers
    }

    enum CodingKeys: String, CodingKey {
        case classicLoadBalancers
    }

    public func validate() throws {
        try classicLoadBalancers?.validateAsClassicLoadBalancers()
    }
}

public struct ClientCertificateRevocationListStatus: Codable, Equatable {
    public var code: ClientCertificateRevocationListStatusCode?
    public var message: String?

    public init(code: ClientCertificateRevocationListStatusCode? = nil,
                message: String? = nil) {
        self.code = code
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case code
        case message
    }

    public func validate() throws {
    }
}

public struct ClientData: Codable, Equatable {
    public var comment: String?
    public var uploadEnd: DateTime?
    public var uploadSize: Double?
    public var uploadStart: DateTime?

    public init(comment: String? = nil,
                uploadEnd: DateTime? = nil,
                uploadSize: Double? = nil,
                uploadStart: DateTime? = nil) {
        self.comment = comment
        self.uploadEnd = uploadEnd
        self.uploadSize = uploadSize
        self.uploadStart = uploadStart
    }

    enum CodingKeys: String, CodingKey {
        case comment = "Comment"
        case uploadEnd = "UploadEnd"
        case uploadSize = "UploadSize"
        case uploadStart = "UploadStart"
    }

    public func validate() throws {
    }
}

public struct ClientVpnAuthentication: Codable, Equatable {
    public var activeDirectory: DirectoryServiceAuthentication?
    public var mutualAuthentication: CertificateAuthentication?
    public var type: ClientVpnAuthenticationType?

    public init(activeDirectory: DirectoryServiceAuthentication? = nil,
                mutualAuthentication: CertificateAuthentication? = nil,
                type: ClientVpnAuthenticationType? = nil) {
        self.activeDirectory = activeDirectory
        self.mutualAuthentication = mutualAuthentication
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case activeDirectory
        case mutualAuthentication
        case type
    }

    public func validate() throws {
        try activeDirectory?.validate()
        try mutualAuthentication?.validate()
    }
}

public struct ClientVpnAuthenticationRequest: Codable, Equatable {
    public var activeDirectory: DirectoryServiceAuthenticationRequest?
    public var mutualAuthentication: CertificateAuthenticationRequest?
    public var type: ClientVpnAuthenticationType?

    public init(activeDirectory: DirectoryServiceAuthenticationRequest? = nil,
                mutualAuthentication: CertificateAuthenticationRequest? = nil,
                type: ClientVpnAuthenticationType? = nil) {
        self.activeDirectory = activeDirectory
        self.mutualAuthentication = mutualAuthentication
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case activeDirectory = "ActiveDirectory"
        case mutualAuthentication = "MutualAuthentication"
        case type = "Type"
    }

    public func validate() throws {
        try activeDirectory?.validate()
        try mutualAuthentication?.validate()
    }
}

public struct ClientVpnAuthorizationRuleStatus: Codable, Equatable {
    public var code: ClientVpnAuthorizationRuleStatusCode?
    public var message: String?

    public init(code: ClientVpnAuthorizationRuleStatusCode? = nil,
                message: String? = nil) {
        self.code = code
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case code
        case message
    }

    public func validate() throws {
    }
}

public struct ClientVpnConnection: Codable, Equatable {
    public var clientIp: String?
    public var clientVpnEndpointId: String?
    public var commonName: String?
    public var connectionEndTime: String?
    public var connectionEstablishedTime: String?
    public var connectionId: String?
    public var egressBytes: String?
    public var egressPackets: String?
    public var ingressBytes: String?
    public var ingressPackets: String?
    public var status: ClientVpnConnectionStatus?
    public var timestamp: String?
    public var username: String?

    public init(clientIp: String? = nil,
                clientVpnEndpointId: String? = nil,
                commonName: String? = nil,
                connectionEndTime: String? = nil,
                connectionEstablishedTime: String? = nil,
                connectionId: String? = nil,
                egressBytes: String? = nil,
                egressPackets: String? = nil,
                ingressBytes: String? = nil,
                ingressPackets: String? = nil,
                status: ClientVpnConnectionStatus? = nil,
                timestamp: String? = nil,
                username: String? = nil) {
        self.clientIp = clientIp
        self.clientVpnEndpointId = clientVpnEndpointId
        self.commonName = commonName
        self.connectionEndTime = connectionEndTime
        self.connectionEstablishedTime = connectionEstablishedTime
        self.connectionId = connectionId
        self.egressBytes = egressBytes
        self.egressPackets = egressPackets
        self.ingressBytes = ingressBytes
        self.ingressPackets = ingressPackets
        self.status = status
        self.timestamp = timestamp
        self.username = username
    }

    enum CodingKeys: String, CodingKey {
        case clientIp
        case clientVpnEndpointId
        case commonName
        case connectionEndTime
        case connectionEstablishedTime
        case connectionId
        case egressBytes
        case egressPackets
        case ingressBytes
        case ingressPackets
        case status
        case timestamp
        case username
    }

    public func validate() throws {
        try status?.validate()
    }
}

public struct ClientVpnConnectionStatus: Codable, Equatable {
    public var code: ClientVpnConnectionStatusCode?
    public var message: String?

    public init(code: ClientVpnConnectionStatusCode? = nil,
                message: String? = nil) {
        self.code = code
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case code
        case message
    }

    public func validate() throws {
    }
}

public struct ClientVpnEndpoint: Codable, Equatable {
    public var authenticationOptions: ClientVpnAuthenticationList?
    public var clientCidrBlock: String?
    public var clientVpnEndpointId: String?
    public var connectionLogOptions: ConnectionLogResponseOptions?
    public var creationTime: String?
    public var deletionTime: String?
    public var description: String?
    public var dnsName: String?
    public var dnsServers: ValueStringList?
    public var serverCertificateArn: String?
    public var splitTunnel: Boolean?
    public var status: ClientVpnEndpointStatus?
    public var tags: TagList?
    public var transportProtocol: TransportProtocol?
    public var vpnProtocol: VpnProtocol?

    public init(authenticationOptions: ClientVpnAuthenticationList? = nil,
                clientCidrBlock: String? = nil,
                clientVpnEndpointId: String? = nil,
                connectionLogOptions: ConnectionLogResponseOptions? = nil,
                creationTime: String? = nil,
                deletionTime: String? = nil,
                description: String? = nil,
                dnsName: String? = nil,
                dnsServers: ValueStringList? = nil,
                serverCertificateArn: String? = nil,
                splitTunnel: Boolean? = nil,
                status: ClientVpnEndpointStatus? = nil,
                tags: TagList? = nil,
                transportProtocol: TransportProtocol? = nil,
                vpnProtocol: VpnProtocol? = nil) {
        self.authenticationOptions = authenticationOptions
        self.clientCidrBlock = clientCidrBlock
        self.clientVpnEndpointId = clientVpnEndpointId
        self.connectionLogOptions = connectionLogOptions
        self.creationTime = creationTime
        self.deletionTime = deletionTime
        self.description = description
        self.dnsName = dnsName
        self.dnsServers = dnsServers
        self.serverCertificateArn = serverCertificateArn
        self.splitTunnel = splitTunnel
        self.status = status
        self.tags = tags
        self.transportProtocol = transportProtocol
        self.vpnProtocol = vpnProtocol
    }

    enum CodingKeys: String, CodingKey {
        case authenticationOptions
        case clientCidrBlock
        case clientVpnEndpointId
        case connectionLogOptions
        case creationTime
        case deletionTime
        case description
        case dnsName
        case dnsServers = "dnsServer"
        case serverCertificateArn
        case splitTunnel
        case status
        case tags = "tagSet"
        case transportProtocol
        case vpnProtocol
    }

    public func validate() throws {
        try connectionLogOptions?.validate()
        try status?.validate()
    }
}

public struct ClientVpnEndpointStatus: Codable, Equatable {
    public var code: ClientVpnEndpointStatusCode?
    public var message: String?

    public init(code: ClientVpnEndpointStatusCode? = nil,
                message: String? = nil) {
        self.code = code
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case code
        case message
    }

    public func validate() throws {
    }
}

public struct ClientVpnRoute: Codable, Equatable {
    public var clientVpnEndpointId: String?
    public var description: String?
    public var destinationCidr: String?
    public var origin: String?
    public var status: ClientVpnRouteStatus?
    public var targetSubnet: String?
    public var type: String?

    public init(clientVpnEndpointId: String? = nil,
                description: String? = nil,
                destinationCidr: String? = nil,
                origin: String? = nil,
                status: ClientVpnRouteStatus? = nil,
                targetSubnet: String? = nil,
                type: String? = nil) {
        self.clientVpnEndpointId = clientVpnEndpointId
        self.description = description
        self.destinationCidr = destinationCidr
        self.origin = origin
        self.status = status
        self.targetSubnet = targetSubnet
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case clientVpnEndpointId
        case description
        case destinationCidr
        case origin
        case status
        case targetSubnet
        case type
    }

    public func validate() throws {
        try status?.validate()
    }
}

public struct ClientVpnRouteStatus: Codable, Equatable {
    public var code: ClientVpnRouteStatusCode?
    public var message: String?

    public init(code: ClientVpnRouteStatusCode? = nil,
                message: String? = nil) {
        self.code = code
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case code
        case message
    }

    public func validate() throws {
    }
}

public struct ConfirmProductInstanceRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var instanceId: String
    public var productCode: String

    public init(dryRun: Boolean? = nil,
                instanceId: String,
                productCode: String) {
        self.dryRun = dryRun
        self.instanceId = instanceId
        self.productCode = productCode
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case instanceId = "InstanceId"
        case productCode = "ProductCode"
    }

    public func validate() throws {
    }
}

public struct ConfirmProductInstanceResult: Codable, Equatable {
    public var ownerId: String?
    public var `return`: Boolean?

    public init(ownerId: String? = nil,
                `return`: Boolean? = nil) {
        self.ownerId = ownerId
        self.`return` = `return`
    }

    enum CodingKeys: String, CodingKey {
        case ownerId
        case `return` = "return"
    }

    public func validate() throws {
    }
}

public struct ConnectionLogOptions: Codable, Equatable {
    public var cloudwatchLogGroup: String?
    public var cloudwatchLogStream: String?
    public var enabled: Boolean?

    public init(cloudwatchLogGroup: String? = nil,
                cloudwatchLogStream: String? = nil,
                enabled: Boolean? = nil) {
        self.cloudwatchLogGroup = cloudwatchLogGroup
        self.cloudwatchLogStream = cloudwatchLogStream
        self.enabled = enabled
    }

    enum CodingKeys: String, CodingKey {
        case cloudwatchLogGroup = "CloudwatchLogGroup"
        case cloudwatchLogStream = "CloudwatchLogStream"
        case enabled = "Enabled"
    }

    public func validate() throws {
    }
}

public struct ConnectionLogResponseOptions: Codable, Equatable {
    public var cloudwatchLogGroup: String?
    public var cloudwatchLogStream: String?
    public var enabled: Boolean?

    public init(cloudwatchLogGroup: String? = nil,
                cloudwatchLogStream: String? = nil,
                enabled: Boolean? = nil) {
        self.cloudwatchLogGroup = cloudwatchLogGroup
        self.cloudwatchLogStream = cloudwatchLogStream
        self.enabled = enabled
    }

    enum CodingKeys: String, CodingKey {
        case cloudwatchLogGroup = "CloudwatchLogGroup"
        case cloudwatchLogStream = "CloudwatchLogStream"
        case enabled = "Enabled"
    }

    public func validate() throws {
    }
}

public struct ConnectionNotification: Codable, Equatable {
    public var connectionEvents: ValueStringList?
    public var connectionNotificationArn: String?
    public var connectionNotificationId: String?
    public var connectionNotificationState: ConnectionNotificationState?
    public var connectionNotificationType: ConnectionNotificationType?
    public var serviceId: String?
    public var vpcEndpointId: String?

    public init(connectionEvents: ValueStringList? = nil,
                connectionNotificationArn: String? = nil,
                connectionNotificationId: String? = nil,
                connectionNotificationState: ConnectionNotificationState? = nil,
                connectionNotificationType: ConnectionNotificationType? = nil,
                serviceId: String? = nil,
                vpcEndpointId: String? = nil) {
        self.connectionEvents = connectionEvents
        self.connectionNotificationArn = connectionNotificationArn
        self.connectionNotificationId = connectionNotificationId
        self.connectionNotificationState = connectionNotificationState
        self.connectionNotificationType = connectionNotificationType
        self.serviceId = serviceId
        self.vpcEndpointId = vpcEndpointId
    }

    enum CodingKeys: String, CodingKey {
        case connectionEvents
        case connectionNotificationArn
        case connectionNotificationId
        case connectionNotificationState
        case connectionNotificationType
        case serviceId
        case vpcEndpointId
    }

    public func validate() throws {
    }
}

public struct ConversionTask: Codable, Equatable {
    public var conversionTaskId: String?
    public var expirationTime: String?
    public var importInstance: ImportInstanceTaskDetails?
    public var importVolume: ImportVolumeTaskDetails?
    public var state: ConversionTaskState?
    public var statusMessage: String?
    public var tags: TagList?

    public init(conversionTaskId: String? = nil,
                expirationTime: String? = nil,
                importInstance: ImportInstanceTaskDetails? = nil,
                importVolume: ImportVolumeTaskDetails? = nil,
                state: ConversionTaskState? = nil,
                statusMessage: String? = nil,
                tags: TagList? = nil) {
        self.conversionTaskId = conversionTaskId
        self.expirationTime = expirationTime
        self.importInstance = importInstance
        self.importVolume = importVolume
        self.state = state
        self.statusMessage = statusMessage
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case conversionTaskId
        case expirationTime
        case importInstance
        case importVolume
        case state
        case statusMessage
        case tags = "tagSet"
    }

    public func validate() throws {
        try importInstance?.validate()
        try importVolume?.validate()
    }
}

public struct CopyFpgaImageRequest: Codable, Equatable {
    public var clientToken: String?
    public var description: String?
    public var dryRun: Boolean?
    public var name: String?
    public var sourceFpgaImageId: String
    public var sourceRegion: String

    public init(clientToken: String? = nil,
                description: String? = nil,
                dryRun: Boolean? = nil,
                name: String? = nil,
                sourceFpgaImageId: String,
                sourceRegion: String) {
        self.clientToken = clientToken
        self.description = description
        self.dryRun = dryRun
        self.name = name
        self.sourceFpgaImageId = sourceFpgaImageId
        self.sourceRegion = sourceRegion
    }

    enum CodingKeys: String, CodingKey {
        case clientToken = "ClientToken"
        case description = "Description"
        case dryRun = "DryRun"
        case name = "Name"
        case sourceFpgaImageId = "SourceFpgaImageId"
        case sourceRegion = "SourceRegion"
    }

    public func validate() throws {
    }
}

public struct CopyFpgaImageResult: Codable, Equatable {
    public var fpgaImageId: String?

    public init(fpgaImageId: String? = nil) {
        self.fpgaImageId = fpgaImageId
    }

    enum CodingKeys: String, CodingKey {
        case fpgaImageId
    }

    public func validate() throws {
    }
}

public struct CopyImageRequest: Codable, Equatable {
    public var clientToken: String?
    public var description: String?
    public var dryRun: Boolean?
    public var encrypted: Boolean?
    public var kmsKeyId: String?
    public var name: String
    public var sourceImageId: String
    public var sourceRegion: String

    public init(clientToken: String? = nil,
                description: String? = nil,
                dryRun: Boolean? = nil,
                encrypted: Boolean? = nil,
                kmsKeyId: String? = nil,
                name: String,
                sourceImageId: String,
                sourceRegion: String) {
        self.clientToken = clientToken
        self.description = description
        self.dryRun = dryRun
        self.encrypted = encrypted
        self.kmsKeyId = kmsKeyId
        self.name = name
        self.sourceImageId = sourceImageId
        self.sourceRegion = sourceRegion
    }

    enum CodingKeys: String, CodingKey {
        case clientToken = "ClientToken"
        case description = "Description"
        case dryRun
        case encrypted
        case kmsKeyId
        case name = "Name"
        case sourceImageId = "SourceImageId"
        case sourceRegion = "SourceRegion"
    }

    public func validate() throws {
    }
}

public struct CopyImageResult: Codable, Equatable {
    public var imageId: String?

    public init(imageId: String? = nil) {
        self.imageId = imageId
    }

    enum CodingKeys: String, CodingKey {
        case imageId
    }

    public func validate() throws {
    }
}

public struct CopySnapshotRequest: Codable, Equatable {
    public var description: String?
    public var destinationRegion: String?
    public var dryRun: Boolean?
    public var encrypted: Boolean?
    public var kmsKeyId: String?
    public var presignedUrl: String?
    public var sourceRegion: String
    public var sourceSnapshotId: String

    public init(description: String? = nil,
                destinationRegion: String? = nil,
                dryRun: Boolean? = nil,
                encrypted: Boolean? = nil,
                kmsKeyId: String? = nil,
                presignedUrl: String? = nil,
                sourceRegion: String,
                sourceSnapshotId: String) {
        self.description = description
        self.destinationRegion = destinationRegion
        self.dryRun = dryRun
        self.encrypted = encrypted
        self.kmsKeyId = kmsKeyId
        self.presignedUrl = presignedUrl
        self.sourceRegion = sourceRegion
        self.sourceSnapshotId = sourceSnapshotId
    }

    enum CodingKeys: String, CodingKey {
        case description = "Description"
        case destinationRegion
        case dryRun
        case encrypted
        case kmsKeyId
        case presignedUrl
        case sourceRegion = "SourceRegion"
        case sourceSnapshotId = "SourceSnapshotId"
    }

    public func validate() throws {
    }
}

public struct CopySnapshotResult: Codable, Equatable {
    public var snapshotId: String?

    public init(snapshotId: String? = nil) {
        self.snapshotId = snapshotId
    }

    enum CodingKeys: String, CodingKey {
        case snapshotId
    }

    public func validate() throws {
    }
}

public struct CpuOptions: Codable, Equatable {
    public var coreCount: Integer?
    public var threadsPerCore: Integer?

    public init(coreCount: Integer? = nil,
                threadsPerCore: Integer? = nil) {
        self.coreCount = coreCount
        self.threadsPerCore = threadsPerCore
    }

    enum CodingKeys: String, CodingKey {
        case coreCount
        case threadsPerCore
    }

    public func validate() throws {
    }
}

public struct CpuOptionsRequest: Codable, Equatable {
    public var coreCount: Integer?
    public var threadsPerCore: Integer?

    public init(coreCount: Integer? = nil,
                threadsPerCore: Integer? = nil) {
        self.coreCount = coreCount
        self.threadsPerCore = threadsPerCore
    }

    enum CodingKeys: String, CodingKey {
        case coreCount = "CoreCount"
        case threadsPerCore = "ThreadsPerCore"
    }

    public func validate() throws {
    }
}

public struct CreateCapacityReservationRequest: Codable, Equatable {
    public var availabilityZone: String
    public var clientToken: String?
    public var dryRun: Boolean?
    public var ebsOptimized: Boolean?
    public var endDate: DateTime?
    public var endDateType: EndDateType?
    public var ephemeralStorage: Boolean?
    public var instanceCount: Integer
    public var instanceMatchCriteria: InstanceMatchCriteria?
    public var instancePlatform: CapacityReservationInstancePlatform
    public var instanceType: String
    public var tagSpecifications: TagSpecificationList?
    public var tenancy: CapacityReservationTenancy?

    public init(availabilityZone: String,
                clientToken: String? = nil,
                dryRun: Boolean? = nil,
                ebsOptimized: Boolean? = nil,
                endDate: DateTime? = nil,
                endDateType: EndDateType? = nil,
                ephemeralStorage: Boolean? = nil,
                instanceCount: Integer,
                instanceMatchCriteria: InstanceMatchCriteria? = nil,
                instancePlatform: CapacityReservationInstancePlatform,
                instanceType: String,
                tagSpecifications: TagSpecificationList? = nil,
                tenancy: CapacityReservationTenancy? = nil) {
        self.availabilityZone = availabilityZone
        self.clientToken = clientToken
        self.dryRun = dryRun
        self.ebsOptimized = ebsOptimized
        self.endDate = endDate
        self.endDateType = endDateType
        self.ephemeralStorage = ephemeralStorage
        self.instanceCount = instanceCount
        self.instanceMatchCriteria = instanceMatchCriteria
        self.instancePlatform = instancePlatform
        self.instanceType = instanceType
        self.tagSpecifications = tagSpecifications
        self.tenancy = tenancy
    }

    enum CodingKeys: String, CodingKey {
        case availabilityZone = "AvailabilityZone"
        case clientToken = "ClientToken"
        case dryRun = "DryRun"
        case ebsOptimized = "EbsOptimized"
        case endDate = "EndDate"
        case endDateType = "EndDateType"
        case ephemeralStorage = "EphemeralStorage"
        case instanceCount = "InstanceCount"
        case instanceMatchCriteria = "InstanceMatchCriteria"
        case instancePlatform = "InstancePlatform"
        case instanceType = "InstanceType"
        case tagSpecifications = "TagSpecifications"
        case tenancy = "Tenancy"
    }

    public func validate() throws {
    }
}

public struct CreateCapacityReservationResult: Codable, Equatable {
    public var capacityReservation: CapacityReservation?

    public init(capacityReservation: CapacityReservation? = nil) {
        self.capacityReservation = capacityReservation
    }

    enum CodingKeys: String, CodingKey {
        case capacityReservation
    }

    public func validate() throws {
        try capacityReservation?.validate()
    }
}

public struct CreateClientVpnEndpointRequest: Codable, Equatable {
    public var authenticationOptions: ClientVpnAuthenticationRequestList
    public var clientCidrBlock: String
    public var clientToken: String?
    public var connectionLogOptions: ConnectionLogOptions
    public var description: String?
    public var dnsServers: ValueStringList?
    public var dryRun: Boolean?
    public var serverCertificateArn: String
    public var tagSpecifications: TagSpecificationList?
    public var transportProtocol: TransportProtocol?

    public init(authenticationOptions: ClientVpnAuthenticationRequestList,
                clientCidrBlock: String,
                clientToken: String? = nil,
                connectionLogOptions: ConnectionLogOptions,
                description: String? = nil,
                dnsServers: ValueStringList? = nil,
                dryRun: Boolean? = nil,
                serverCertificateArn: String,
                tagSpecifications: TagSpecificationList? = nil,
                transportProtocol: TransportProtocol? = nil) {
        self.authenticationOptions = authenticationOptions
        self.clientCidrBlock = clientCidrBlock
        self.clientToken = clientToken
        self.connectionLogOptions = connectionLogOptions
        self.description = description
        self.dnsServers = dnsServers
        self.dryRun = dryRun
        self.serverCertificateArn = serverCertificateArn
        self.tagSpecifications = tagSpecifications
        self.transportProtocol = transportProtocol
    }

    enum CodingKeys: String, CodingKey {
        case authenticationOptions = "Authentication"
        case clientCidrBlock = "ClientCidrBlock"
        case clientToken = "ClientToken"
        case connectionLogOptions = "ConnectionLogOptions"
        case description = "Description"
        case dnsServers = "DnsServers"
        case dryRun = "DryRun"
        case serverCertificateArn = "ServerCertificateArn"
        case tagSpecifications = "TagSpecification"
        case transportProtocol = "TransportProtocol"
    }

    public func validate() throws {
        try connectionLogOptions.validate()
    }
}

public struct CreateClientVpnEndpointResult: Codable, Equatable {
    public var clientVpnEndpointId: String?
    public var dnsName: String?
    public var status: ClientVpnEndpointStatus?

    public init(clientVpnEndpointId: String? = nil,
                dnsName: String? = nil,
                status: ClientVpnEndpointStatus? = nil) {
        self.clientVpnEndpointId = clientVpnEndpointId
        self.dnsName = dnsName
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case clientVpnEndpointId
        case dnsName
        case status
    }

    public func validate() throws {
        try status?.validate()
    }
}

public struct CreateClientVpnRouteRequest: Codable, Equatable {
    public var clientToken: String?
    public var clientVpnEndpointId: String
    public var description: String?
    public var destinationCidrBlock: String
    public var dryRun: Boolean?
    public var targetVpcSubnetId: String

    public init(clientToken: String? = nil,
                clientVpnEndpointId: String,
                description: String? = nil,
                destinationCidrBlock: String,
                dryRun: Boolean? = nil,
                targetVpcSubnetId: String) {
        self.clientToken = clientToken
        self.clientVpnEndpointId = clientVpnEndpointId
        self.description = description
        self.destinationCidrBlock = destinationCidrBlock
        self.dryRun = dryRun
        self.targetVpcSubnetId = targetVpcSubnetId
    }

    enum CodingKeys: String, CodingKey {
        case clientToken = "ClientToken"
        case clientVpnEndpointId = "ClientVpnEndpointId"
        case description = "Description"
        case destinationCidrBlock = "DestinationCidrBlock"
        case dryRun = "DryRun"
        case targetVpcSubnetId = "TargetVpcSubnetId"
    }

    public func validate() throws {
    }
}

public struct CreateClientVpnRouteResult: Codable, Equatable {
    public var status: ClientVpnRouteStatus?

    public init(status: ClientVpnRouteStatus? = nil) {
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case status
    }

    public func validate() throws {
        try status?.validate()
    }
}

public struct CreateCustomerGatewayRequest: Codable, Equatable {
    public var bgpAsn: Integer
    public var dryRun: Boolean?
    public var publicIp: String
    public var type: GatewayType

    public init(bgpAsn: Integer,
                dryRun: Boolean? = nil,
                publicIp: String,
                type: GatewayType) {
        self.bgpAsn = bgpAsn
        self.dryRun = dryRun
        self.publicIp = publicIp
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case bgpAsn = "BgpAsn"
        case dryRun
        case publicIp = "IpAddress"
        case type = "Type"
    }

    public func validate() throws {
    }
}

public struct CreateCustomerGatewayResult: Codable, Equatable {
    public var customerGateway: CustomerGateway?

    public init(customerGateway: CustomerGateway? = nil) {
        self.customerGateway = customerGateway
    }

    enum CodingKeys: String, CodingKey {
        case customerGateway
    }

    public func validate() throws {
        try customerGateway?.validate()
    }
}

public struct CreateDefaultSubnetRequest: Codable, Equatable {
    public var availabilityZone: String
    public var dryRun: Boolean?

    public init(availabilityZone: String,
                dryRun: Boolean? = nil) {
        self.availabilityZone = availabilityZone
        self.dryRun = dryRun
    }

    enum CodingKeys: String, CodingKey {
        case availabilityZone = "AvailabilityZone"
        case dryRun = "DryRun"
    }

    public func validate() throws {
    }
}

public struct CreateDefaultSubnetResult: Codable, Equatable {
    public var subnet: Subnet?

    public init(subnet: Subnet? = nil) {
        self.subnet = subnet
    }

    enum CodingKeys: String, CodingKey {
        case subnet
    }

    public func validate() throws {
        try subnet?.validate()
    }
}

public struct CreateDefaultVpcRequest: Codable, Equatable {
    public var dryRun: Boolean?

    public init(dryRun: Boolean? = nil) {
        self.dryRun = dryRun
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
    }

    public func validate() throws {
    }
}

public struct CreateDefaultVpcResult: Codable, Equatable {
    public var vpc: Vpc?

    public init(vpc: Vpc? = nil) {
        self.vpc = vpc
    }

    enum CodingKeys: String, CodingKey {
        case vpc
    }

    public func validate() throws {
        try vpc?.validate()
    }
}

public struct CreateDhcpOptionsRequest: Codable, Equatable {
    public var dhcpConfigurations: NewDhcpConfigurationList
    public var dryRun: Boolean?

    public init(dhcpConfigurations: NewDhcpConfigurationList,
                dryRun: Boolean? = nil) {
        self.dhcpConfigurations = dhcpConfigurations
        self.dryRun = dryRun
    }

    enum CodingKeys: String, CodingKey {
        case dhcpConfigurations = "dhcpConfiguration"
        case dryRun
    }

    public func validate() throws {
    }
}

public struct CreateDhcpOptionsResult: Codable, Equatable {
    public var dhcpOptions: DhcpOptions?

    public init(dhcpOptions: DhcpOptions? = nil) {
        self.dhcpOptions = dhcpOptions
    }

    enum CodingKeys: String, CodingKey {
        case dhcpOptions
    }

    public func validate() throws {
        try dhcpOptions?.validate()
    }
}

public struct CreateEgressOnlyInternetGatewayRequest: Codable, Equatable {
    public var clientToken: String?
    public var dryRun: Boolean?
    public var vpcId: String

    public init(clientToken: String? = nil,
                dryRun: Boolean? = nil,
                vpcId: String) {
        self.clientToken = clientToken
        self.dryRun = dryRun
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case clientToken = "ClientToken"
        case dryRun = "DryRun"
        case vpcId = "VpcId"
    }

    public func validate() throws {
    }
}

public struct CreateEgressOnlyInternetGatewayResult: Codable, Equatable {
    public var clientToken: String?
    public var egressOnlyInternetGateway: EgressOnlyInternetGateway?

    public init(clientToken: String? = nil,
                egressOnlyInternetGateway: EgressOnlyInternetGateway? = nil) {
        self.clientToken = clientToken
        self.egressOnlyInternetGateway = egressOnlyInternetGateway
    }

    enum CodingKeys: String, CodingKey {
        case clientToken
        case egressOnlyInternetGateway
    }

    public func validate() throws {
        try egressOnlyInternetGateway?.validate()
    }
}

public struct CreateFleetError: Codable, Equatable {
    public var errorCode: String?
    public var errorMessage: String?
    public var launchTemplateAndOverrides: LaunchTemplateAndOverridesResponse?
    public var lifecycle: InstanceLifecycle?

    public init(errorCode: String? = nil,
                errorMessage: String? = nil,
                launchTemplateAndOverrides: LaunchTemplateAndOverridesResponse? = nil,
                lifecycle: InstanceLifecycle? = nil) {
        self.errorCode = errorCode
        self.errorMessage = errorMessage
        self.launchTemplateAndOverrides = launchTemplateAndOverrides
        self.lifecycle = lifecycle
    }

    enum CodingKeys: String, CodingKey {
        case errorCode
        case errorMessage
        case launchTemplateAndOverrides
        case lifecycle
    }

    public func validate() throws {
        try launchTemplateAndOverrides?.validate()
    }
}

public struct CreateFleetInstance: Codable, Equatable {
    public var instanceIds: InstanceIdsSet?
    public var instanceType: InstanceType?
    public var launchTemplateAndOverrides: LaunchTemplateAndOverridesResponse?
    public var lifecycle: InstanceLifecycle?
    public var platform: PlatformValues?

    public init(instanceIds: InstanceIdsSet? = nil,
                instanceType: InstanceType? = nil,
                launchTemplateAndOverrides: LaunchTemplateAndOverridesResponse? = nil,
                lifecycle: InstanceLifecycle? = nil,
                platform: PlatformValues? = nil) {
        self.instanceIds = instanceIds
        self.instanceType = instanceType
        self.launchTemplateAndOverrides = launchTemplateAndOverrides
        self.lifecycle = lifecycle
        self.platform = platform
    }

    enum CodingKeys: String, CodingKey {
        case instanceIds
        case instanceType
        case launchTemplateAndOverrides
        case lifecycle
        case platform
    }

    public func validate() throws {
        try launchTemplateAndOverrides?.validate()
    }
}

public struct CreateFleetRequest: Codable, Equatable {
    public var clientToken: String?
    public var dryRun: Boolean?
    public var excessCapacityTerminationPolicy: FleetExcessCapacityTerminationPolicy?
    public var launchTemplateConfigs: FleetLaunchTemplateConfigListRequest
    public var onDemandOptions: OnDemandOptionsRequest?
    public var replaceUnhealthyInstances: Boolean?
    public var spotOptions: SpotOptionsRequest?
    public var tagSpecifications: TagSpecificationList?
    public var targetCapacitySpecification: TargetCapacitySpecificationRequest
    public var terminateInstancesWithExpiration: Boolean?
    public var type: FleetType?
    public var validFrom: DateTime?
    public var validUntil: DateTime?

    public init(clientToken: String? = nil,
                dryRun: Boolean? = nil,
                excessCapacityTerminationPolicy: FleetExcessCapacityTerminationPolicy? = nil,
                launchTemplateConfigs: FleetLaunchTemplateConfigListRequest,
                onDemandOptions: OnDemandOptionsRequest? = nil,
                replaceUnhealthyInstances: Boolean? = nil,
                spotOptions: SpotOptionsRequest? = nil,
                tagSpecifications: TagSpecificationList? = nil,
                targetCapacitySpecification: TargetCapacitySpecificationRequest,
                terminateInstancesWithExpiration: Boolean? = nil,
                type: FleetType? = nil,
                validFrom: DateTime? = nil,
                validUntil: DateTime? = nil) {
        self.clientToken = clientToken
        self.dryRun = dryRun
        self.excessCapacityTerminationPolicy = excessCapacityTerminationPolicy
        self.launchTemplateConfigs = launchTemplateConfigs
        self.onDemandOptions = onDemandOptions
        self.replaceUnhealthyInstances = replaceUnhealthyInstances
        self.spotOptions = spotOptions
        self.tagSpecifications = tagSpecifications
        self.targetCapacitySpecification = targetCapacitySpecification
        self.terminateInstancesWithExpiration = terminateInstancesWithExpiration
        self.type = type
        self.validFrom = validFrom
        self.validUntil = validUntil
    }

    enum CodingKeys: String, CodingKey {
        case clientToken = "ClientToken"
        case dryRun = "DryRun"
        case excessCapacityTerminationPolicy = "ExcessCapacityTerminationPolicy"
        case launchTemplateConfigs = "LaunchTemplateConfigs"
        case onDemandOptions = "OnDemandOptions"
        case replaceUnhealthyInstances = "ReplaceUnhealthyInstances"
        case spotOptions = "SpotOptions"
        case tagSpecifications = "TagSpecification"
        case targetCapacitySpecification = "TargetCapacitySpecification"
        case terminateInstancesWithExpiration = "TerminateInstancesWithExpiration"
        case type = "Type"
        case validFrom = "ValidFrom"
        case validUntil = "ValidUntil"
    }

    public func validate() throws {
        try launchTemplateConfigs.validateAsFleetLaunchTemplateConfigListRequest()
        try onDemandOptions?.validate()
        try spotOptions?.validate()
        try targetCapacitySpecification.validate()
    }
}

public struct CreateFleetResult: Codable, Equatable {
    public var errors: CreateFleetErrorsSet?
    public var fleetId: FleetIdentifier?
    public var instances: CreateFleetInstancesSet?

    public init(errors: CreateFleetErrorsSet? = nil,
                fleetId: FleetIdentifier? = nil,
                instances: CreateFleetInstancesSet? = nil) {
        self.errors = errors
        self.fleetId = fleetId
        self.instances = instances
    }

    enum CodingKeys: String, CodingKey {
        case errors = "errorSet"
        case fleetId
        case instances = "fleetInstanceSet"
    }

    public func validate() throws {
    }
}

public struct CreateFlowLogsRequest: Codable, Equatable {
    public var clientToken: String?
    public var deliverLogsPermissionArn: String?
    public var dryRun: Boolean?
    public var logDestination: String?
    public var logDestinationType: LogDestinationType?
    public var logGroupName: String?
    public var resourceIds: ValueStringList
    public var resourceType: FlowLogsResourceType
    public var trafficType: TrafficType

    public init(clientToken: String? = nil,
                deliverLogsPermissionArn: String? = nil,
                dryRun: Boolean? = nil,
                logDestination: String? = nil,
                logDestinationType: LogDestinationType? = nil,
                logGroupName: String? = nil,
                resourceIds: ValueStringList,
                resourceType: FlowLogsResourceType,
                trafficType: TrafficType) {
        self.clientToken = clientToken
        self.deliverLogsPermissionArn = deliverLogsPermissionArn
        self.dryRun = dryRun
        self.logDestination = logDestination
        self.logDestinationType = logDestinationType
        self.logGroupName = logGroupName
        self.resourceIds = resourceIds
        self.resourceType = resourceType
        self.trafficType = trafficType
    }

    enum CodingKeys: String, CodingKey {
        case clientToken = "ClientToken"
        case deliverLogsPermissionArn = "DeliverLogsPermissionArn"
        case dryRun = "DryRun"
        case logDestination = "LogDestination"
        case logDestinationType = "LogDestinationType"
        case logGroupName = "LogGroupName"
        case resourceIds = "ResourceId"
        case resourceType = "ResourceType"
        case trafficType = "TrafficType"
    }

    public func validate() throws {
    }
}

public struct CreateFlowLogsResult: Codable, Equatable {
    public var clientToken: String?
    public var flowLogIds: ValueStringList?
    public var unsuccessful: UnsuccessfulItemSet?

    public init(clientToken: String? = nil,
                flowLogIds: ValueStringList? = nil,
                unsuccessful: UnsuccessfulItemSet? = nil) {
        self.clientToken = clientToken
        self.flowLogIds = flowLogIds
        self.unsuccessful = unsuccessful
    }

    enum CodingKeys: String, CodingKey {
        case clientToken
        case flowLogIds = "flowLogIdSet"
        case unsuccessful
    }

    public func validate() throws {
    }
}

public struct CreateFpgaImageRequest: Codable, Equatable {
    public var clientToken: String?
    public var description: String?
    public var dryRun: Boolean?
    public var inputStorageLocation: StorageLocation
    public var logsStorageLocation: StorageLocation?
    public var name: String?

    public init(clientToken: String? = nil,
                description: String? = nil,
                dryRun: Boolean? = nil,
                inputStorageLocation: StorageLocation,
                logsStorageLocation: StorageLocation? = nil,
                name: String? = nil) {
        self.clientToken = clientToken
        self.description = description
        self.dryRun = dryRun
        self.inputStorageLocation = inputStorageLocation
        self.logsStorageLocation = logsStorageLocation
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case clientToken = "ClientToken"
        case description = "Description"
        case dryRun = "DryRun"
        case inputStorageLocation = "InputStorageLocation"
        case logsStorageLocation = "LogsStorageLocation"
        case name = "Name"
    }

    public func validate() throws {
        try inputStorageLocation.validate()
        try logsStorageLocation?.validate()
    }
}

public struct CreateFpgaImageResult: Codable, Equatable {
    public var fpgaImageGlobalId: String?
    public var fpgaImageId: String?

    public init(fpgaImageGlobalId: String? = nil,
                fpgaImageId: String? = nil) {
        self.fpgaImageGlobalId = fpgaImageGlobalId
        self.fpgaImageId = fpgaImageId
    }

    enum CodingKeys: String, CodingKey {
        case fpgaImageGlobalId
        case fpgaImageId
    }

    public func validate() throws {
    }
}

public struct CreateImageRequest: Codable, Equatable {
    public var blockDeviceMappings: BlockDeviceMappingRequestList?
    public var description: String?
    public var dryRun: Boolean?
    public var instanceId: String
    public var name: String
    public var noReboot: Boolean?

    public init(blockDeviceMappings: BlockDeviceMappingRequestList? = nil,
                description: String? = nil,
                dryRun: Boolean? = nil,
                instanceId: String,
                name: String,
                noReboot: Boolean? = nil) {
        self.blockDeviceMappings = blockDeviceMappings
        self.description = description
        self.dryRun = dryRun
        self.instanceId = instanceId
        self.name = name
        self.noReboot = noReboot
    }

    enum CodingKeys: String, CodingKey {
        case blockDeviceMappings = "blockDeviceMapping"
        case description
        case dryRun
        case instanceId
        case name
        case noReboot
    }

    public func validate() throws {
    }
}

public struct CreateImageResult: Codable, Equatable {
    public var imageId: String?

    public init(imageId: String? = nil) {
        self.imageId = imageId
    }

    enum CodingKeys: String, CodingKey {
        case imageId
    }

    public func validate() throws {
    }
}

public struct CreateInstanceExportTaskRequest: Codable, Equatable {
    public var description: String?
    public var exportToS3Task: ExportToS3TaskSpecification?
    public var instanceId: String
    public var targetEnvironment: ExportEnvironment?

    public init(description: String? = nil,
                exportToS3Task: ExportToS3TaskSpecification? = nil,
                instanceId: String,
                targetEnvironment: ExportEnvironment? = nil) {
        self.description = description
        self.exportToS3Task = exportToS3Task
        self.instanceId = instanceId
        self.targetEnvironment = targetEnvironment
    }

    enum CodingKeys: String, CodingKey {
        case description
        case exportToS3Task = "exportToS3"
        case instanceId
        case targetEnvironment
    }

    public func validate() throws {
        try exportToS3Task?.validate()
    }
}

public struct CreateInstanceExportTaskResult: Codable, Equatable {
    public var exportTask: ExportTask?

    public init(exportTask: ExportTask? = nil) {
        self.exportTask = exportTask
    }

    enum CodingKeys: String, CodingKey {
        case exportTask
    }

    public func validate() throws {
        try exportTask?.validate()
    }
}

public struct CreateInternetGatewayRequest: Codable, Equatable {
    public var dryRun: Boolean?

    public init(dryRun: Boolean? = nil) {
        self.dryRun = dryRun
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
    }

    public func validate() throws {
    }
}

public struct CreateInternetGatewayResult: Codable, Equatable {
    public var internetGateway: InternetGateway?

    public init(internetGateway: InternetGateway? = nil) {
        self.internetGateway = internetGateway
    }

    enum CodingKeys: String, CodingKey {
        case internetGateway
    }

    public func validate() throws {
        try internetGateway?.validate()
    }
}

public struct CreateKeyPairRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var keyName: String

    public init(dryRun: Boolean? = nil,
                keyName: String) {
        self.dryRun = dryRun
        self.keyName = keyName
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case keyName = "KeyName"
    }

    public func validate() throws {
    }
}

public struct CreateLaunchTemplateRequest: Codable, Equatable {
    public var clientToken: String?
    public var dryRun: Boolean?
    public var launchTemplateData: RequestLaunchTemplateData
    public var launchTemplateName: LaunchTemplateName
    public var versionDescription: VersionDescription?

    public init(clientToken: String? = nil,
                dryRun: Boolean? = nil,
                launchTemplateData: RequestLaunchTemplateData,
                launchTemplateName: LaunchTemplateName,
                versionDescription: VersionDescription? = nil) {
        self.clientToken = clientToken
        self.dryRun = dryRun
        self.launchTemplateData = launchTemplateData
        self.launchTemplateName = launchTemplateName
        self.versionDescription = versionDescription
    }

    enum CodingKeys: String, CodingKey {
        case clientToken = "ClientToken"
        case dryRun = "DryRun"
        case launchTemplateData = "LaunchTemplateData"
        case launchTemplateName = "LaunchTemplateName"
        case versionDescription = "VersionDescription"
    }

    public func validate() throws {
        try launchTemplateData.validate()
        try launchTemplateName.validateAsLaunchTemplateName()
        try versionDescription?.validateAsVersionDescription()
    }
}

public struct CreateLaunchTemplateResult: Codable, Equatable {
    public var launchTemplate: LaunchTemplate?

    public init(launchTemplate: LaunchTemplate? = nil) {
        self.launchTemplate = launchTemplate
    }

    enum CodingKeys: String, CodingKey {
        case launchTemplate
    }

    public func validate() throws {
        try launchTemplate?.validate()
    }
}

public struct CreateLaunchTemplateVersionRequest: Codable, Equatable {
    public var clientToken: String?
    public var dryRun: Boolean?
    public var launchTemplateData: RequestLaunchTemplateData
    public var launchTemplateId: String?
    public var launchTemplateName: LaunchTemplateName?
    public var sourceVersion: String?
    public var versionDescription: VersionDescription?

    public init(clientToken: String? = nil,
                dryRun: Boolean? = nil,
                launchTemplateData: RequestLaunchTemplateData,
                launchTemplateId: String? = nil,
                launchTemplateName: LaunchTemplateName? = nil,
                sourceVersion: String? = nil,
                versionDescription: VersionDescription? = nil) {
        self.clientToken = clientToken
        self.dryRun = dryRun
        self.launchTemplateData = launchTemplateData
        self.launchTemplateId = launchTemplateId
        self.launchTemplateName = launchTemplateName
        self.sourceVersion = sourceVersion
        self.versionDescription = versionDescription
    }

    enum CodingKeys: String, CodingKey {
        case clientToken = "ClientToken"
        case dryRun = "DryRun"
        case launchTemplateData = "LaunchTemplateData"
        case launchTemplateId = "LaunchTemplateId"
        case launchTemplateName = "LaunchTemplateName"
        case sourceVersion = "SourceVersion"
        case versionDescription = "VersionDescription"
    }

    public func validate() throws {
        try launchTemplateData.validate()
        try launchTemplateName?.validateAsLaunchTemplateName()
        try versionDescription?.validateAsVersionDescription()
    }
}

public struct CreateLaunchTemplateVersionResult: Codable, Equatable {
    public var launchTemplateVersion: LaunchTemplateVersion?

    public init(launchTemplateVersion: LaunchTemplateVersion? = nil) {
        self.launchTemplateVersion = launchTemplateVersion
    }

    enum CodingKeys: String, CodingKey {
        case launchTemplateVersion
    }

    public func validate() throws {
        try launchTemplateVersion?.validate()
    }
}

public struct CreateNatGatewayRequest: Codable, Equatable {
    public var allocationId: String
    public var clientToken: String?
    public var subnetId: String

    public init(allocationId: String,
                clientToken: String? = nil,
                subnetId: String) {
        self.allocationId = allocationId
        self.clientToken = clientToken
        self.subnetId = subnetId
    }

    enum CodingKeys: String, CodingKey {
        case allocationId = "AllocationId"
        case clientToken = "ClientToken"
        case subnetId = "SubnetId"
    }

    public func validate() throws {
    }
}

public struct CreateNatGatewayResult: Codable, Equatable {
    public var clientToken: String?
    public var natGateway: NatGateway?

    public init(clientToken: String? = nil,
                natGateway: NatGateway? = nil) {
        self.clientToken = clientToken
        self.natGateway = natGateway
    }

    enum CodingKeys: String, CodingKey {
        case clientToken
        case natGateway
    }

    public func validate() throws {
        try natGateway?.validate()
    }
}

public struct CreateNetworkAclEntryRequest: Codable, Equatable {
    public var cidrBlock: String?
    public var dryRun: Boolean?
    public var egress: Boolean
    public var icmpTypeCode: IcmpTypeCode?
    public var ipv6CidrBlock: String?
    public var networkAclId: String
    public var portRange: PortRange?
    public var `protocol`: String
    public var ruleAction: RuleAction
    public var ruleNumber: Integer

    public init(cidrBlock: String? = nil,
                dryRun: Boolean? = nil,
                egress: Boolean,
                icmpTypeCode: IcmpTypeCode? = nil,
                ipv6CidrBlock: String? = nil,
                networkAclId: String,
                portRange: PortRange? = nil,
                `protocol`: String,
                ruleAction: RuleAction,
                ruleNumber: Integer) {
        self.cidrBlock = cidrBlock
        self.dryRun = dryRun
        self.egress = egress
        self.icmpTypeCode = icmpTypeCode
        self.ipv6CidrBlock = ipv6CidrBlock
        self.networkAclId = networkAclId
        self.portRange = portRange
        self.`protocol` = `protocol`
        self.ruleAction = ruleAction
        self.ruleNumber = ruleNumber
    }

    enum CodingKeys: String, CodingKey {
        case cidrBlock
        case dryRun
        case egress
        case icmpTypeCode = "Icmp"
        case ipv6CidrBlock
        case networkAclId
        case portRange
        case `protocol` = "protocol"
        case ruleAction
        case ruleNumber
    }

    public func validate() throws {
        try icmpTypeCode?.validate()
        try portRange?.validate()
    }
}

public struct CreateNetworkAclRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var vpcId: String

    public init(dryRun: Boolean? = nil,
                vpcId: String) {
        self.dryRun = dryRun
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case vpcId
    }

    public func validate() throws {
    }
}

public struct CreateNetworkAclResult: Codable, Equatable {
    public var networkAcl: NetworkAcl?

    public init(networkAcl: NetworkAcl? = nil) {
        self.networkAcl = networkAcl
    }

    enum CodingKeys: String, CodingKey {
        case networkAcl
    }

    public func validate() throws {
        try networkAcl?.validate()
    }
}

public struct CreateNetworkInterfacePermissionRequest: Codable, Equatable {
    public var awsAccountId: String?
    public var awsService: String?
    public var dryRun: Boolean?
    public var networkInterfaceId: String
    public var permission: InterfacePermissionType

    public init(awsAccountId: String? = nil,
                awsService: String? = nil,
                dryRun: Boolean? = nil,
                networkInterfaceId: String,
                permission: InterfacePermissionType) {
        self.awsAccountId = awsAccountId
        self.awsService = awsService
        self.dryRun = dryRun
        self.networkInterfaceId = networkInterfaceId
        self.permission = permission
    }

    enum CodingKeys: String, CodingKey {
        case awsAccountId = "AwsAccountId"
        case awsService = "AwsService"
        case dryRun = "DryRun"
        case networkInterfaceId = "NetworkInterfaceId"
        case permission = "Permission"
    }

    public func validate() throws {
    }
}

public struct CreateNetworkInterfacePermissionResult: Codable, Equatable {
    public var interfacePermission: NetworkInterfacePermission?

    public init(interfacePermission: NetworkInterfacePermission? = nil) {
        self.interfacePermission = interfacePermission
    }

    enum CodingKeys: String, CodingKey {
        case interfacePermission
    }

    public func validate() throws {
        try interfacePermission?.validate()
    }
}

public struct CreateNetworkInterfaceRequest: Codable, Equatable {
    public var description: String?
    public var dryRun: Boolean?
    public var groups: SecurityGroupIdStringList?
    public var interfaceType: NetworkInterfaceCreationType?
    public var ipv6AddressCount: Integer?
    public var ipv6Addresses: InstanceIpv6AddressList?
    public var privateIpAddress: String?
    public var privateIpAddresses: PrivateIpAddressSpecificationList?
    public var secondaryPrivateIpAddressCount: Integer?
    public var subnetId: String

    public init(description: String? = nil,
                dryRun: Boolean? = nil,
                groups: SecurityGroupIdStringList? = nil,
                interfaceType: NetworkInterfaceCreationType? = nil,
                ipv6AddressCount: Integer? = nil,
                ipv6Addresses: InstanceIpv6AddressList? = nil,
                privateIpAddress: String? = nil,
                privateIpAddresses: PrivateIpAddressSpecificationList? = nil,
                secondaryPrivateIpAddressCount: Integer? = nil,
                subnetId: String) {
        self.description = description
        self.dryRun = dryRun
        self.groups = groups
        self.interfaceType = interfaceType
        self.ipv6AddressCount = ipv6AddressCount
        self.ipv6Addresses = ipv6Addresses
        self.privateIpAddress = privateIpAddress
        self.privateIpAddresses = privateIpAddresses
        self.secondaryPrivateIpAddressCount = secondaryPrivateIpAddressCount
        self.subnetId = subnetId
    }

    enum CodingKeys: String, CodingKey {
        case description
        case dryRun
        case groups = "SecurityGroupId"
        case interfaceType = "InterfaceType"
        case ipv6AddressCount
        case ipv6Addresses
        case privateIpAddress
        case privateIpAddresses
        case secondaryPrivateIpAddressCount
        case subnetId
    }

    public func validate() throws {
    }
}

public struct CreateNetworkInterfaceResult: Codable, Equatable {
    public var networkInterface: NetworkInterface?

    public init(networkInterface: NetworkInterface? = nil) {
        self.networkInterface = networkInterface
    }

    enum CodingKeys: String, CodingKey {
        case networkInterface
    }

    public func validate() throws {
        try networkInterface?.validate()
    }
}

public struct CreatePlacementGroupRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var groupName: String?
    public var partitionCount: Integer?
    public var strategy: PlacementStrategy?

    public init(dryRun: Boolean? = nil,
                groupName: String? = nil,
                partitionCount: Integer? = nil,
                strategy: PlacementStrategy? = nil) {
        self.dryRun = dryRun
        self.groupName = groupName
        self.partitionCount = partitionCount
        self.strategy = strategy
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case groupName
        case partitionCount = "PartitionCount"
        case strategy
    }

    public func validate() throws {
    }
}

public struct CreateReservedInstancesListingRequest: Codable, Equatable {
    public var clientToken: String
    public var instanceCount: Integer
    public var priceSchedules: PriceScheduleSpecificationList
    public var reservedInstancesId: String

    public init(clientToken: String,
                instanceCount: Integer,
                priceSchedules: PriceScheduleSpecificationList,
                reservedInstancesId: String) {
        self.clientToken = clientToken
        self.instanceCount = instanceCount
        self.priceSchedules = priceSchedules
        self.reservedInstancesId = reservedInstancesId
    }

    enum CodingKeys: String, CodingKey {
        case clientToken
        case instanceCount
        case priceSchedules
        case reservedInstancesId
    }

    public func validate() throws {
    }
}

public struct CreateReservedInstancesListingResult: Codable, Equatable {
    public var reservedInstancesListings: ReservedInstancesListingList?

    public init(reservedInstancesListings: ReservedInstancesListingList? = nil) {
        self.reservedInstancesListings = reservedInstancesListings
    }

    enum CodingKeys: String, CodingKey {
        case reservedInstancesListings = "reservedInstancesListingsSet"
    }

    public func validate() throws {
    }
}

public struct CreateRouteRequest: Codable, Equatable {
    public var destinationCidrBlock: String?
    public var destinationIpv6CidrBlock: String?
    public var dryRun: Boolean?
    public var egressOnlyInternetGatewayId: String?
    public var gatewayId: String?
    public var instanceId: String?
    public var natGatewayId: String?
    public var networkInterfaceId: String?
    public var routeTableId: String
    public var transitGatewayId: String?
    public var vpcPeeringConnectionId: String?

    public init(destinationCidrBlock: String? = nil,
                destinationIpv6CidrBlock: String? = nil,
                dryRun: Boolean? = nil,
                egressOnlyInternetGatewayId: String? = nil,
                gatewayId: String? = nil,
                instanceId: String? = nil,
                natGatewayId: String? = nil,
                networkInterfaceId: String? = nil,
                routeTableId: String,
                transitGatewayId: String? = nil,
                vpcPeeringConnectionId: String? = nil) {
        self.destinationCidrBlock = destinationCidrBlock
        self.destinationIpv6CidrBlock = destinationIpv6CidrBlock
        self.dryRun = dryRun
        self.egressOnlyInternetGatewayId = egressOnlyInternetGatewayId
        self.gatewayId = gatewayId
        self.instanceId = instanceId
        self.natGatewayId = natGatewayId
        self.networkInterfaceId = networkInterfaceId
        self.routeTableId = routeTableId
        self.transitGatewayId = transitGatewayId
        self.vpcPeeringConnectionId = vpcPeeringConnectionId
    }

    enum CodingKeys: String, CodingKey {
        case destinationCidrBlock
        case destinationIpv6CidrBlock
        case dryRun
        case egressOnlyInternetGatewayId
        case gatewayId
        case instanceId
        case natGatewayId
        case networkInterfaceId
        case routeTableId
        case transitGatewayId = "TransitGatewayId"
        case vpcPeeringConnectionId
    }

    public func validate() throws {
    }
}

public struct CreateRouteResult: Codable, Equatable {
    public var `return`: Boolean?

    public init(`return`: Boolean? = nil) {
        self.`return` = `return`
    }

    enum CodingKeys: String, CodingKey {
        case `return` = "return"
    }

    public func validate() throws {
    }
}

public struct CreateRouteTableRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var vpcId: String

    public init(dryRun: Boolean? = nil,
                vpcId: String) {
        self.dryRun = dryRun
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case vpcId
    }

    public func validate() throws {
    }
}

public struct CreateRouteTableResult: Codable, Equatable {
    public var routeTable: RouteTable?

    public init(routeTable: RouteTable? = nil) {
        self.routeTable = routeTable
    }

    enum CodingKeys: String, CodingKey {
        case routeTable
    }

    public func validate() throws {
        try routeTable?.validate()
    }
}

public struct CreateSecurityGroupRequest: Codable, Equatable {
    public var description: String
    public var dryRun: Boolean?
    public var groupName: String
    public var vpcId: String?

    public init(description: String,
                dryRun: Boolean? = nil,
                groupName: String,
                vpcId: String? = nil) {
        self.description = description
        self.dryRun = dryRun
        self.groupName = groupName
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case description = "GroupDescription"
        case dryRun
        case groupName = "GroupName"
        case vpcId = "VpcId"
    }

    public func validate() throws {
    }
}

public struct CreateSecurityGroupResult: Codable, Equatable {
    public var groupId: String?

    public init(groupId: String? = nil) {
        self.groupId = groupId
    }

    enum CodingKeys: String, CodingKey {
        case groupId
    }

    public func validate() throws {
    }
}

public struct CreateSnapshotRequest: Codable, Equatable {
    public var description: String?
    public var dryRun: Boolean?
    public var tagSpecifications: TagSpecificationList?
    public var volumeId: String

    public init(description: String? = nil,
                dryRun: Boolean? = nil,
                tagSpecifications: TagSpecificationList? = nil,
                volumeId: String) {
        self.description = description
        self.dryRun = dryRun
        self.tagSpecifications = tagSpecifications
        self.volumeId = volumeId
    }

    enum CodingKeys: String, CodingKey {
        case description = "Description"
        case dryRun
        case tagSpecifications = "TagSpecification"
        case volumeId = "VolumeId"
    }

    public func validate() throws {
    }
}

public struct CreateSnapshotsRequest: Codable, Equatable {
    public var copyTagsFromSource: CopyTagsFromSource?
    public var description: String?
    public var dryRun: Boolean?
    public var instanceSpecification: InstanceSpecification
    public var tagSpecifications: TagSpecificationList?

    public init(copyTagsFromSource: CopyTagsFromSource? = nil,
                description: String? = nil,
                dryRun: Boolean? = nil,
                instanceSpecification: InstanceSpecification,
                tagSpecifications: TagSpecificationList? = nil) {
        self.copyTagsFromSource = copyTagsFromSource
        self.description = description
        self.dryRun = dryRun
        self.instanceSpecification = instanceSpecification
        self.tagSpecifications = tagSpecifications
    }

    enum CodingKeys: String, CodingKey {
        case copyTagsFromSource = "CopyTagsFromSource"
        case description = "Description"
        case dryRun = "DryRun"
        case instanceSpecification = "InstanceSpecification"
        case tagSpecifications = "TagSpecification"
    }

    public func validate() throws {
        try instanceSpecification.validate()
    }
}

public struct CreateSnapshotsResult: Codable, Equatable {
    public var snapshots: SnapshotSet?

    public init(snapshots: SnapshotSet? = nil) {
        self.snapshots = snapshots
    }

    enum CodingKeys: String, CodingKey {
        case snapshots = "snapshotSet"
    }

    public func validate() throws {
    }
}

public struct CreateSpotDatafeedSubscriptionRequest: Codable, Equatable {
    public var bucket: String
    public var dryRun: Boolean?
    public var prefix: String?

    public init(bucket: String,
                dryRun: Boolean? = nil,
                prefix: String? = nil) {
        self.bucket = bucket
        self.dryRun = dryRun
        self.prefix = prefix
    }

    enum CodingKeys: String, CodingKey {
        case bucket
        case dryRun
        case prefix
    }

    public func validate() throws {
    }
}

public struct CreateSpotDatafeedSubscriptionResult: Codable, Equatable {
    public var spotDatafeedSubscription: SpotDatafeedSubscription?

    public init(spotDatafeedSubscription: SpotDatafeedSubscription? = nil) {
        self.spotDatafeedSubscription = spotDatafeedSubscription
    }

    enum CodingKeys: String, CodingKey {
        case spotDatafeedSubscription
    }

    public func validate() throws {
        try spotDatafeedSubscription?.validate()
    }
}

public struct CreateSubnetRequest: Codable, Equatable {
    public var availabilityZone: String?
    public var availabilityZoneId: String?
    public var cidrBlock: String
    public var dryRun: Boolean?
    public var ipv6CidrBlock: String?
    public var vpcId: String

    public init(availabilityZone: String? = nil,
                availabilityZoneId: String? = nil,
                cidrBlock: String,
                dryRun: Boolean? = nil,
                ipv6CidrBlock: String? = nil,
                vpcId: String) {
        self.availabilityZone = availabilityZone
        self.availabilityZoneId = availabilityZoneId
        self.cidrBlock = cidrBlock
        self.dryRun = dryRun
        self.ipv6CidrBlock = ipv6CidrBlock
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case availabilityZone = "AvailabilityZone"
        case availabilityZoneId = "AvailabilityZoneId"
        case cidrBlock = "CidrBlock"
        case dryRun
        case ipv6CidrBlock = "Ipv6CidrBlock"
        case vpcId = "VpcId"
    }

    public func validate() throws {
    }
}

public struct CreateSubnetResult: Codable, Equatable {
    public var subnet: Subnet?

    public init(subnet: Subnet? = nil) {
        self.subnet = subnet
    }

    enum CodingKeys: String, CodingKey {
        case subnet
    }

    public func validate() throws {
        try subnet?.validate()
    }
}

public struct CreateTagsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var resources: ResourceIdList
    public var tags: TagList

    public init(dryRun: Boolean? = nil,
                resources: ResourceIdList,
                tags: TagList) {
        self.dryRun = dryRun
        self.resources = resources
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case resources = "ResourceId"
        case tags = "Tag"
    }

    public func validate() throws {
    }
}

public struct CreateTransitGatewayRequest: Codable, Equatable {
    public var description: String?
    public var dryRun: Boolean?
    public var options: TransitGatewayRequestOptions?
    public var tagSpecifications: TagSpecificationList?

    public init(description: String? = nil,
                dryRun: Boolean? = nil,
                options: TransitGatewayRequestOptions? = nil,
                tagSpecifications: TagSpecificationList? = nil) {
        self.description = description
        self.dryRun = dryRun
        self.options = options
        self.tagSpecifications = tagSpecifications
    }

    enum CodingKeys: String, CodingKey {
        case description = "Description"
        case dryRun = "DryRun"
        case options = "Options"
        case tagSpecifications = "TagSpecification"
    }

    public func validate() throws {
        try options?.validate()
    }
}

public struct CreateTransitGatewayResult: Codable, Equatable {
    public var transitGateway: TransitGateway?

    public init(transitGateway: TransitGateway? = nil) {
        self.transitGateway = transitGateway
    }

    enum CodingKeys: String, CodingKey {
        case transitGateway
    }

    public func validate() throws {
        try transitGateway?.validate()
    }
}

public struct CreateTransitGatewayRouteRequest: Codable, Equatable {
    public var blackhole: Boolean?
    public var destinationCidrBlock: String
    public var dryRun: Boolean?
    public var transitGatewayAttachmentId: String?
    public var transitGatewayRouteTableId: String

    public init(blackhole: Boolean? = nil,
                destinationCidrBlock: String,
                dryRun: Boolean? = nil,
                transitGatewayAttachmentId: String? = nil,
                transitGatewayRouteTableId: String) {
        self.blackhole = blackhole
        self.destinationCidrBlock = destinationCidrBlock
        self.dryRun = dryRun
        self.transitGatewayAttachmentId = transitGatewayAttachmentId
        self.transitGatewayRouteTableId = transitGatewayRouteTableId
    }

    enum CodingKeys: String, CodingKey {
        case blackhole = "Blackhole"
        case destinationCidrBlock = "DestinationCidrBlock"
        case dryRun = "DryRun"
        case transitGatewayAttachmentId = "TransitGatewayAttachmentId"
        case transitGatewayRouteTableId = "TransitGatewayRouteTableId"
    }

    public func validate() throws {
    }
}

public struct CreateTransitGatewayRouteResult: Codable, Equatable {
    public var route: TransitGatewayRoute?

    public init(route: TransitGatewayRoute? = nil) {
        self.route = route
    }

    enum CodingKeys: String, CodingKey {
        case route
    }

    public func validate() throws {
        try route?.validate()
    }
}

public struct CreateTransitGatewayRouteTableRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var tagSpecifications: TagSpecificationList?
    public var transitGatewayId: String

    public init(dryRun: Boolean? = nil,
                tagSpecifications: TagSpecificationList? = nil,
                transitGatewayId: String) {
        self.dryRun = dryRun
        self.tagSpecifications = tagSpecifications
        self.transitGatewayId = transitGatewayId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case tagSpecifications = "TagSpecifications"
        case transitGatewayId = "TransitGatewayId"
    }

    public func validate() throws {
    }
}

public struct CreateTransitGatewayRouteTableResult: Codable, Equatable {
    public var transitGatewayRouteTable: TransitGatewayRouteTable?

    public init(transitGatewayRouteTable: TransitGatewayRouteTable? = nil) {
        self.transitGatewayRouteTable = transitGatewayRouteTable
    }

    enum CodingKeys: String, CodingKey {
        case transitGatewayRouteTable
    }

    public func validate() throws {
        try transitGatewayRouteTable?.validate()
    }
}

public struct CreateTransitGatewayVpcAttachmentRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var options: CreateTransitGatewayVpcAttachmentRequestOptions?
    public var subnetIds: ValueStringList
    public var tagSpecifications: TagSpecificationList?
    public var transitGatewayId: String
    public var vpcId: String

    public init(dryRun: Boolean? = nil,
                options: CreateTransitGatewayVpcAttachmentRequestOptions? = nil,
                subnetIds: ValueStringList,
                tagSpecifications: TagSpecificationList? = nil,
                transitGatewayId: String,
                vpcId: String) {
        self.dryRun = dryRun
        self.options = options
        self.subnetIds = subnetIds
        self.tagSpecifications = tagSpecifications
        self.transitGatewayId = transitGatewayId
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case options = "Options"
        case subnetIds = "SubnetIds"
        case tagSpecifications = "TagSpecifications"
        case transitGatewayId = "TransitGatewayId"
        case vpcId = "VpcId"
    }

    public func validate() throws {
        try options?.validate()
    }
}

public struct CreateTransitGatewayVpcAttachmentRequestOptions: Codable, Equatable {
    public var dnsSupport: DnsSupportValue?
    public var ipv6Support: Ipv6SupportValue?

    public init(dnsSupport: DnsSupportValue? = nil,
                ipv6Support: Ipv6SupportValue? = nil) {
        self.dnsSupport = dnsSupport
        self.ipv6Support = ipv6Support
    }

    enum CodingKeys: String, CodingKey {
        case dnsSupport = "DnsSupport"
        case ipv6Support = "Ipv6Support"
    }

    public func validate() throws {
    }
}

public struct CreateTransitGatewayVpcAttachmentResult: Codable, Equatable {
    public var transitGatewayVpcAttachment: TransitGatewayVpcAttachment?

    public init(transitGatewayVpcAttachment: TransitGatewayVpcAttachment? = nil) {
        self.transitGatewayVpcAttachment = transitGatewayVpcAttachment
    }

    enum CodingKeys: String, CodingKey {
        case transitGatewayVpcAttachment
    }

    public func validate() throws {
        try transitGatewayVpcAttachment?.validate()
    }
}

public struct CreateVolumePermission: Codable, Equatable {
    public var group: PermissionGroup?
    public var userId: String?

    public init(group: PermissionGroup? = nil,
                userId: String? = nil) {
        self.group = group
        self.userId = userId
    }

    enum CodingKeys: String, CodingKey {
        case group
        case userId
    }

    public func validate() throws {
    }
}

public struct CreateVolumePermissionModifications: Codable, Equatable {
    public var add: CreateVolumePermissionList?
    public var remove: CreateVolumePermissionList?

    public init(add: CreateVolumePermissionList? = nil,
                remove: CreateVolumePermissionList? = nil) {
        self.add = add
        self.remove = remove
    }

    enum CodingKeys: String, CodingKey {
        case add = "Add"
        case remove = "Remove"
    }

    public func validate() throws {
    }
}

public struct CreateVolumeRequest: Codable, Equatable {
    public var availabilityZone: String
    public var dryRun: Boolean?
    public var encrypted: Boolean?
    public var iops: Integer?
    public var kmsKeyId: String?
    public var size: Integer?
    public var snapshotId: String?
    public var tagSpecifications: TagSpecificationList?
    public var volumeType: VolumeType?

    public init(availabilityZone: String,
                dryRun: Boolean? = nil,
                encrypted: Boolean? = nil,
                iops: Integer? = nil,
                kmsKeyId: String? = nil,
                size: Integer? = nil,
                snapshotId: String? = nil,
                tagSpecifications: TagSpecificationList? = nil,
                volumeType: VolumeType? = nil) {
        self.availabilityZone = availabilityZone
        self.dryRun = dryRun
        self.encrypted = encrypted
        self.iops = iops
        self.kmsKeyId = kmsKeyId
        self.size = size
        self.snapshotId = snapshotId
        self.tagSpecifications = tagSpecifications
        self.volumeType = volumeType
    }

    enum CodingKeys: String, CodingKey {
        case availabilityZone = "AvailabilityZone"
        case dryRun
        case encrypted
        case iops = "Iops"
        case kmsKeyId = "KmsKeyId"
        case size = "Size"
        case snapshotId = "SnapshotId"
        case tagSpecifications = "TagSpecification"
        case volumeType = "VolumeType"
    }

    public func validate() throws {
    }
}

public struct CreateVpcEndpointConnectionNotificationRequest: Codable, Equatable {
    public var clientToken: String?
    public var connectionEvents: ValueStringList
    public var connectionNotificationArn: String
    public var dryRun: Boolean?
    public var serviceId: String?
    public var vpcEndpointId: String?

    public init(clientToken: String? = nil,
                connectionEvents: ValueStringList,
                connectionNotificationArn: String,
                dryRun: Boolean? = nil,
                serviceId: String? = nil,
                vpcEndpointId: String? = nil) {
        self.clientToken = clientToken
        self.connectionEvents = connectionEvents
        self.connectionNotificationArn = connectionNotificationArn
        self.dryRun = dryRun
        self.serviceId = serviceId
        self.vpcEndpointId = vpcEndpointId
    }

    enum CodingKeys: String, CodingKey {
        case clientToken = "ClientToken"
        case connectionEvents = "ConnectionEvents"
        case connectionNotificationArn = "ConnectionNotificationArn"
        case dryRun = "DryRun"
        case serviceId = "ServiceId"
        case vpcEndpointId = "VpcEndpointId"
    }

    public func validate() throws {
    }
}

public struct CreateVpcEndpointConnectionNotificationResult: Codable, Equatable {
    public var clientToken: String?
    public var connectionNotification: ConnectionNotification?

    public init(clientToken: String? = nil,
                connectionNotification: ConnectionNotification? = nil) {
        self.clientToken = clientToken
        self.connectionNotification = connectionNotification
    }

    enum CodingKeys: String, CodingKey {
        case clientToken
        case connectionNotification
    }

    public func validate() throws {
        try connectionNotification?.validate()
    }
}

public struct CreateVpcEndpointRequest: Codable, Equatable {
    public var clientToken: String?
    public var dryRun: Boolean?
    public var policyDocument: String?
    public var privateDnsEnabled: Boolean?
    public var routeTableIds: ValueStringList?
    public var securityGroupIds: ValueStringList?
    public var serviceName: String
    public var subnetIds: ValueStringList?
    public var vpcEndpointType: VpcEndpointType?
    public var vpcId: String

    public init(clientToken: String? = nil,
                dryRun: Boolean? = nil,
                policyDocument: String? = nil,
                privateDnsEnabled: Boolean? = nil,
                routeTableIds: ValueStringList? = nil,
                securityGroupIds: ValueStringList? = nil,
                serviceName: String,
                subnetIds: ValueStringList? = nil,
                vpcEndpointType: VpcEndpointType? = nil,
                vpcId: String) {
        self.clientToken = clientToken
        self.dryRun = dryRun
        self.policyDocument = policyDocument
        self.privateDnsEnabled = privateDnsEnabled
        self.routeTableIds = routeTableIds
        self.securityGroupIds = securityGroupIds
        self.serviceName = serviceName
        self.subnetIds = subnetIds
        self.vpcEndpointType = vpcEndpointType
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case clientToken = "ClientToken"
        case dryRun = "DryRun"
        case policyDocument = "PolicyDocument"
        case privateDnsEnabled = "PrivateDnsEnabled"
        case routeTableIds = "RouteTableId"
        case securityGroupIds = "SecurityGroupId"
        case serviceName = "ServiceName"
        case subnetIds = "SubnetId"
        case vpcEndpointType = "VpcEndpointType"
        case vpcId = "VpcId"
    }

    public func validate() throws {
    }
}

public struct CreateVpcEndpointResult: Codable, Equatable {
    public var clientToken: String?
    public var vpcEndpoint: VpcEndpoint?

    public init(clientToken: String? = nil,
                vpcEndpoint: VpcEndpoint? = nil) {
        self.clientToken = clientToken
        self.vpcEndpoint = vpcEndpoint
    }

    enum CodingKeys: String, CodingKey {
        case clientToken
        case vpcEndpoint
    }

    public func validate() throws {
        try vpcEndpoint?.validate()
    }
}

public struct CreateVpcEndpointServiceConfigurationRequest: Codable, Equatable {
    public var acceptanceRequired: Boolean?
    public var clientToken: String?
    public var dryRun: Boolean?
    public var networkLoadBalancerArns: ValueStringList

    public init(acceptanceRequired: Boolean? = nil,
                clientToken: String? = nil,
                dryRun: Boolean? = nil,
                networkLoadBalancerArns: ValueStringList) {
        self.acceptanceRequired = acceptanceRequired
        self.clientToken = clientToken
        self.dryRun = dryRun
        self.networkLoadBalancerArns = networkLoadBalancerArns
    }

    enum CodingKeys: String, CodingKey {
        case acceptanceRequired = "AcceptanceRequired"
        case clientToken = "ClientToken"
        case dryRun = "DryRun"
        case networkLoadBalancerArns = "NetworkLoadBalancerArn"
    }

    public func validate() throws {
    }
}

public struct CreateVpcEndpointServiceConfigurationResult: Codable, Equatable {
    public var clientToken: String?
    public var serviceConfiguration: ServiceConfiguration?

    public init(clientToken: String? = nil,
                serviceConfiguration: ServiceConfiguration? = nil) {
        self.clientToken = clientToken
        self.serviceConfiguration = serviceConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case clientToken
        case serviceConfiguration
    }

    public func validate() throws {
        try serviceConfiguration?.validate()
    }
}

public struct CreateVpcPeeringConnectionRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var peerOwnerId: String?
    public var peerRegion: String?
    public var peerVpcId: String?
    public var vpcId: String?

    public init(dryRun: Boolean? = nil,
                peerOwnerId: String? = nil,
                peerRegion: String? = nil,
                peerVpcId: String? = nil,
                vpcId: String? = nil) {
        self.dryRun = dryRun
        self.peerOwnerId = peerOwnerId
        self.peerRegion = peerRegion
        self.peerVpcId = peerVpcId
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case peerOwnerId
        case peerRegion = "PeerRegion"
        case peerVpcId
        case vpcId
    }

    public func validate() throws {
    }
}

public struct CreateVpcPeeringConnectionResult: Codable, Equatable {
    public var vpcPeeringConnection: VpcPeeringConnection?

    public init(vpcPeeringConnection: VpcPeeringConnection? = nil) {
        self.vpcPeeringConnection = vpcPeeringConnection
    }

    enum CodingKeys: String, CodingKey {
        case vpcPeeringConnection
    }

    public func validate() throws {
        try vpcPeeringConnection?.validate()
    }
}

public struct CreateVpcRequest: Codable, Equatable {
    public var amazonProvidedIpv6CidrBlock: Boolean?
    public var cidrBlock: String
    public var dryRun: Boolean?
    public var instanceTenancy: Tenancy?

    public init(amazonProvidedIpv6CidrBlock: Boolean? = nil,
                cidrBlock: String,
                dryRun: Boolean? = nil,
                instanceTenancy: Tenancy? = nil) {
        self.amazonProvidedIpv6CidrBlock = amazonProvidedIpv6CidrBlock
        self.cidrBlock = cidrBlock
        self.dryRun = dryRun
        self.instanceTenancy = instanceTenancy
    }

    enum CodingKeys: String, CodingKey {
        case amazonProvidedIpv6CidrBlock
        case cidrBlock = "CidrBlock"
        case dryRun
        case instanceTenancy
    }

    public func validate() throws {
    }
}

public struct CreateVpcResult: Codable, Equatable {
    public var vpc: Vpc?

    public init(vpc: Vpc? = nil) {
        self.vpc = vpc
    }

    enum CodingKeys: String, CodingKey {
        case vpc
    }

    public func validate() throws {
        try vpc?.validate()
    }
}

public struct CreateVpnConnectionRequest: Codable, Equatable {
    public var customerGatewayId: String
    public var dryRun: Boolean?
    public var options: VpnConnectionOptionsSpecification?
    public var transitGatewayId: String?
    public var type: String
    public var vpnGatewayId: String?

    public init(customerGatewayId: String,
                dryRun: Boolean? = nil,
                options: VpnConnectionOptionsSpecification? = nil,
                transitGatewayId: String? = nil,
                type: String,
                vpnGatewayId: String? = nil) {
        self.customerGatewayId = customerGatewayId
        self.dryRun = dryRun
        self.options = options
        self.transitGatewayId = transitGatewayId
        self.type = type
        self.vpnGatewayId = vpnGatewayId
    }

    enum CodingKeys: String, CodingKey {
        case customerGatewayId = "CustomerGatewayId"
        case dryRun
        case options
        case transitGatewayId = "TransitGatewayId"
        case type = "Type"
        case vpnGatewayId = "VpnGatewayId"
    }

    public func validate() throws {
        try options?.validate()
    }
}

public struct CreateVpnConnectionResult: Codable, Equatable {
    public var vpnConnection: VpnConnection?

    public init(vpnConnection: VpnConnection? = nil) {
        self.vpnConnection = vpnConnection
    }

    enum CodingKeys: String, CodingKey {
        case vpnConnection
    }

    public func validate() throws {
        try vpnConnection?.validate()
    }
}

public struct CreateVpnConnectionRouteRequest: Codable, Equatable {
    public var destinationCidrBlock: String
    public var vpnConnectionId: String

    public init(destinationCidrBlock: String,
                vpnConnectionId: String) {
        self.destinationCidrBlock = destinationCidrBlock
        self.vpnConnectionId = vpnConnectionId
    }

    enum CodingKeys: String, CodingKey {
        case destinationCidrBlock = "DestinationCidrBlock"
        case vpnConnectionId = "VpnConnectionId"
    }

    public func validate() throws {
    }
}

public struct CreateVpnGatewayRequest: Codable, Equatable {
    public var amazonSideAsn: Long?
    public var availabilityZone: String?
    public var dryRun: Boolean?
    public var type: GatewayType

    public init(amazonSideAsn: Long? = nil,
                availabilityZone: String? = nil,
                dryRun: Boolean? = nil,
                type: GatewayType) {
        self.amazonSideAsn = amazonSideAsn
        self.availabilityZone = availabilityZone
        self.dryRun = dryRun
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case amazonSideAsn = "AmazonSideAsn"
        case availabilityZone = "AvailabilityZone"
        case dryRun
        case type = "Type"
    }

    public func validate() throws {
    }
}

public struct CreateVpnGatewayResult: Codable, Equatable {
    public var vpnGateway: VpnGateway?

    public init(vpnGateway: VpnGateway? = nil) {
        self.vpnGateway = vpnGateway
    }

    enum CodingKeys: String, CodingKey {
        case vpnGateway
    }

    public func validate() throws {
        try vpnGateway?.validate()
    }
}

public struct CreditSpecification: Codable, Equatable {
    public var cpuCredits: String?

    public init(cpuCredits: String? = nil) {
        self.cpuCredits = cpuCredits
    }

    enum CodingKeys: String, CodingKey {
        case cpuCredits
    }

    public func validate() throws {
    }
}

public struct CreditSpecificationRequest: Codable, Equatable {
    public var cpuCredits: String

    public init(cpuCredits: String) {
        self.cpuCredits = cpuCredits
    }

    enum CodingKeys: String, CodingKey {
        case cpuCredits = "CpuCredits"
    }

    public func validate() throws {
    }
}

public struct CustomerGateway: Codable, Equatable {
    public var bgpAsn: String?
    public var customerGatewayId: String?
    public var ipAddress: String?
    public var state: String?
    public var tags: TagList?
    public var type: String?

    public init(bgpAsn: String? = nil,
                customerGatewayId: String? = nil,
                ipAddress: String? = nil,
                state: String? = nil,
                tags: TagList? = nil,
                type: String? = nil) {
        self.bgpAsn = bgpAsn
        self.customerGatewayId = customerGatewayId
        self.ipAddress = ipAddress
        self.state = state
        self.tags = tags
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case bgpAsn
        case customerGatewayId
        case ipAddress
        case state
        case tags = "tagSet"
        case type
    }

    public func validate() throws {
    }
}

public struct DeleteClientVpnEndpointRequest: Codable, Equatable {
    public var clientVpnEndpointId: String
    public var dryRun: Boolean?

    public init(clientVpnEndpointId: String,
                dryRun: Boolean? = nil) {
        self.clientVpnEndpointId = clientVpnEndpointId
        self.dryRun = dryRun
    }

    enum CodingKeys: String, CodingKey {
        case clientVpnEndpointId = "ClientVpnEndpointId"
        case dryRun = "DryRun"
    }

    public func validate() throws {
    }
}

public struct DeleteClientVpnEndpointResult: Codable, Equatable {
    public var status: ClientVpnEndpointStatus?

    public init(status: ClientVpnEndpointStatus? = nil) {
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case status
    }

    public func validate() throws {
        try status?.validate()
    }
}

public struct DeleteClientVpnRouteRequest: Codable, Equatable {
    public var clientVpnEndpointId: String
    public var destinationCidrBlock: String
    public var dryRun: Boolean?
    public var targetVpcSubnetId: String?

    public init(clientVpnEndpointId: String,
                destinationCidrBlock: String,
                dryRun: Boolean? = nil,
                targetVpcSubnetId: String? = nil) {
        self.clientVpnEndpointId = clientVpnEndpointId
        self.destinationCidrBlock = destinationCidrBlock
        self.dryRun = dryRun
        self.targetVpcSubnetId = targetVpcSubnetId
    }

    enum CodingKeys: String, CodingKey {
        case clientVpnEndpointId = "ClientVpnEndpointId"
        case destinationCidrBlock = "DestinationCidrBlock"
        case dryRun = "DryRun"
        case targetVpcSubnetId = "TargetVpcSubnetId"
    }

    public func validate() throws {
    }
}

public struct DeleteClientVpnRouteResult: Codable, Equatable {
    public var status: ClientVpnRouteStatus?

    public init(status: ClientVpnRouteStatus? = nil) {
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case status
    }

    public func validate() throws {
        try status?.validate()
    }
}

public struct DeleteCustomerGatewayRequest: Codable, Equatable {
    public var customerGatewayId: String
    public var dryRun: Boolean?

    public init(customerGatewayId: String,
                dryRun: Boolean? = nil) {
        self.customerGatewayId = customerGatewayId
        self.dryRun = dryRun
    }

    enum CodingKeys: String, CodingKey {
        case customerGatewayId = "CustomerGatewayId"
        case dryRun
    }

    public func validate() throws {
    }
}

public struct DeleteDhcpOptionsRequest: Codable, Equatable {
    public var dhcpOptionsId: String
    public var dryRun: Boolean?

    public init(dhcpOptionsId: String,
                dryRun: Boolean? = nil) {
        self.dhcpOptionsId = dhcpOptionsId
        self.dryRun = dryRun
    }

    enum CodingKeys: String, CodingKey {
        case dhcpOptionsId = "DhcpOptionsId"
        case dryRun
    }

    public func validate() throws {
    }
}

public struct DeleteEgressOnlyInternetGatewayRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var egressOnlyInternetGatewayId: EgressOnlyInternetGatewayId

    public init(dryRun: Boolean? = nil,
                egressOnlyInternetGatewayId: EgressOnlyInternetGatewayId) {
        self.dryRun = dryRun
        self.egressOnlyInternetGatewayId = egressOnlyInternetGatewayId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case egressOnlyInternetGatewayId = "EgressOnlyInternetGatewayId"
    }

    public func validate() throws {
    }
}

public struct DeleteEgressOnlyInternetGatewayResult: Codable, Equatable {
    public var returnCode: Boolean?

    public init(returnCode: Boolean? = nil) {
        self.returnCode = returnCode
    }

    enum CodingKeys: String, CodingKey {
        case returnCode
    }

    public func validate() throws {
    }
}

public struct DeleteFleetError: Codable, Equatable {
    public var code: DeleteFleetErrorCode?
    public var message: String?

    public init(code: DeleteFleetErrorCode? = nil,
                message: String? = nil) {
        self.code = code
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case code
        case message
    }

    public func validate() throws {
    }
}

public struct DeleteFleetErrorItem: Codable, Equatable {
    public var error: DeleteFleetError?
    public var fleetId: FleetIdentifier?

    public init(error: DeleteFleetError? = nil,
                fleetId: FleetIdentifier? = nil) {
        self.error = error
        self.fleetId = fleetId
    }

    enum CodingKeys: String, CodingKey {
        case error
        case fleetId
    }

    public func validate() throws {
        try error?.validate()
    }
}

public struct DeleteFleetSuccessItem: Codable, Equatable {
    public var currentFleetState: FleetStateCode?
    public var fleetId: FleetIdentifier?
    public var previousFleetState: FleetStateCode?

    public init(currentFleetState: FleetStateCode? = nil,
                fleetId: FleetIdentifier? = nil,
                previousFleetState: FleetStateCode? = nil) {
        self.currentFleetState = currentFleetState
        self.fleetId = fleetId
        self.previousFleetState = previousFleetState
    }

    enum CodingKeys: String, CodingKey {
        case currentFleetState
        case fleetId
        case previousFleetState
    }

    public func validate() throws {
    }
}

public struct DeleteFleetsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var fleetIds: FleetIdSet
    public var terminateInstances: Boolean

    public init(dryRun: Boolean? = nil,
                fleetIds: FleetIdSet,
                terminateInstances: Boolean) {
        self.dryRun = dryRun
        self.fleetIds = fleetIds
        self.terminateInstances = terminateInstances
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case fleetIds = "FleetId"
        case terminateInstances = "TerminateInstances"
    }

    public func validate() throws {
    }
}

public struct DeleteFleetsResult: Codable, Equatable {
    public var successfulFleetDeletions: DeleteFleetSuccessSet?
    public var unsuccessfulFleetDeletions: DeleteFleetErrorSet?

    public init(successfulFleetDeletions: DeleteFleetSuccessSet? = nil,
                unsuccessfulFleetDeletions: DeleteFleetErrorSet? = nil) {
        self.successfulFleetDeletions = successfulFleetDeletions
        self.unsuccessfulFleetDeletions = unsuccessfulFleetDeletions
    }

    enum CodingKeys: String, CodingKey {
        case successfulFleetDeletions = "successfulFleetDeletionSet"
        case unsuccessfulFleetDeletions = "unsuccessfulFleetDeletionSet"
    }

    public func validate() throws {
    }
}

public struct DeleteFlowLogsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var flowLogIds: ValueStringList

    public init(dryRun: Boolean? = nil,
                flowLogIds: ValueStringList) {
        self.dryRun = dryRun
        self.flowLogIds = flowLogIds
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case flowLogIds = "FlowLogId"
    }

    public func validate() throws {
    }
}

public struct DeleteFlowLogsResult: Codable, Equatable {
    public var unsuccessful: UnsuccessfulItemSet?

    public init(unsuccessful: UnsuccessfulItemSet? = nil) {
        self.unsuccessful = unsuccessful
    }

    enum CodingKeys: String, CodingKey {
        case unsuccessful
    }

    public func validate() throws {
    }
}

public struct DeleteFpgaImageRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var fpgaImageId: String

    public init(dryRun: Boolean? = nil,
                fpgaImageId: String) {
        self.dryRun = dryRun
        self.fpgaImageId = fpgaImageId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case fpgaImageId = "FpgaImageId"
    }

    public func validate() throws {
    }
}

public struct DeleteFpgaImageResult: Codable, Equatable {
    public var `return`: Boolean?

    public init(`return`: Boolean? = nil) {
        self.`return` = `return`
    }

    enum CodingKeys: String, CodingKey {
        case `return` = "return"
    }

    public func validate() throws {
    }
}

public struct DeleteInternetGatewayRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var internetGatewayId: String

    public init(dryRun: Boolean? = nil,
                internetGatewayId: String) {
        self.dryRun = dryRun
        self.internetGatewayId = internetGatewayId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case internetGatewayId
    }

    public func validate() throws {
    }
}

public struct DeleteKeyPairRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var keyName: String

    public init(dryRun: Boolean? = nil,
                keyName: String) {
        self.dryRun = dryRun
        self.keyName = keyName
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case keyName = "KeyName"
    }

    public func validate() throws {
    }
}

public struct DeleteLaunchTemplateRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var launchTemplateId: String?
    public var launchTemplateName: LaunchTemplateName?

    public init(dryRun: Boolean? = nil,
                launchTemplateId: String? = nil,
                launchTemplateName: LaunchTemplateName? = nil) {
        self.dryRun = dryRun
        self.launchTemplateId = launchTemplateId
        self.launchTemplateName = launchTemplateName
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case launchTemplateId = "LaunchTemplateId"
        case launchTemplateName = "LaunchTemplateName"
    }

    public func validate() throws {
        try launchTemplateName?.validateAsLaunchTemplateName()
    }
}

public struct DeleteLaunchTemplateResult: Codable, Equatable {
    public var launchTemplate: LaunchTemplate?

    public init(launchTemplate: LaunchTemplate? = nil) {
        self.launchTemplate = launchTemplate
    }

    enum CodingKeys: String, CodingKey {
        case launchTemplate
    }

    public func validate() throws {
        try launchTemplate?.validate()
    }
}

public struct DeleteLaunchTemplateVersionsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var launchTemplateId: String?
    public var launchTemplateName: LaunchTemplateName?
    public var versions: VersionStringList

    public init(dryRun: Boolean? = nil,
                launchTemplateId: String? = nil,
                launchTemplateName: LaunchTemplateName? = nil,
                versions: VersionStringList) {
        self.dryRun = dryRun
        self.launchTemplateId = launchTemplateId
        self.launchTemplateName = launchTemplateName
        self.versions = versions
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case launchTemplateId = "LaunchTemplateId"
        case launchTemplateName = "LaunchTemplateName"
        case versions = "LaunchTemplateVersion"
    }

    public func validate() throws {
        try launchTemplateName?.validateAsLaunchTemplateName()
    }
}

public struct DeleteLaunchTemplateVersionsResponseErrorItem: Codable, Equatable {
    public var launchTemplateId: String?
    public var launchTemplateName: String?
    public var responseError: ResponseError?
    public var versionNumber: Long?

    public init(launchTemplateId: String? = nil,
                launchTemplateName: String? = nil,
                responseError: ResponseError? = nil,
                versionNumber: Long? = nil) {
        self.launchTemplateId = launchTemplateId
        self.launchTemplateName = launchTemplateName
        self.responseError = responseError
        self.versionNumber = versionNumber
    }

    enum CodingKeys: String, CodingKey {
        case launchTemplateId
        case launchTemplateName
        case responseError
        case versionNumber
    }

    public func validate() throws {
        try responseError?.validate()
    }
}

public struct DeleteLaunchTemplateVersionsResponseSuccessItem: Codable, Equatable {
    public var launchTemplateId: String?
    public var launchTemplateName: String?
    public var versionNumber: Long?

    public init(launchTemplateId: String? = nil,
                launchTemplateName: String? = nil,
                versionNumber: Long? = nil) {
        self.launchTemplateId = launchTemplateId
        self.launchTemplateName = launchTemplateName
        self.versionNumber = versionNumber
    }

    enum CodingKeys: String, CodingKey {
        case launchTemplateId
        case launchTemplateName
        case versionNumber
    }

    public func validate() throws {
    }
}

public struct DeleteLaunchTemplateVersionsResult: Codable, Equatable {
    public var successfullyDeletedLaunchTemplateVersions: DeleteLaunchTemplateVersionsResponseSuccessSet?
    public var unsuccessfullyDeletedLaunchTemplateVersions: DeleteLaunchTemplateVersionsResponseErrorSet?

    public init(successfullyDeletedLaunchTemplateVersions: DeleteLaunchTemplateVersionsResponseSuccessSet? = nil,
                unsuccessfullyDeletedLaunchTemplateVersions: DeleteLaunchTemplateVersionsResponseErrorSet? = nil) {
        self.successfullyDeletedLaunchTemplateVersions = successfullyDeletedLaunchTemplateVersions
        self.unsuccessfullyDeletedLaunchTemplateVersions = unsuccessfullyDeletedLaunchTemplateVersions
    }

    enum CodingKeys: String, CodingKey {
        case successfullyDeletedLaunchTemplateVersions = "successfullyDeletedLaunchTemplateVersionSet"
        case unsuccessfullyDeletedLaunchTemplateVersions = "unsuccessfullyDeletedLaunchTemplateVersionSet"
    }

    public func validate() throws {
    }
}

public struct DeleteNatGatewayRequest: Codable, Equatable {
    public var natGatewayId: String

    public init(natGatewayId: String) {
        self.natGatewayId = natGatewayId
    }

    enum CodingKeys: String, CodingKey {
        case natGatewayId = "NatGatewayId"
    }

    public func validate() throws {
    }
}

public struct DeleteNatGatewayResult: Codable, Equatable {
    public var natGatewayId: String?

    public init(natGatewayId: String? = nil) {
        self.natGatewayId = natGatewayId
    }

    enum CodingKeys: String, CodingKey {
        case natGatewayId
    }

    public func validate() throws {
    }
}

public struct DeleteNetworkAclEntryRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var egress: Boolean
    public var networkAclId: String
    public var ruleNumber: Integer

    public init(dryRun: Boolean? = nil,
                egress: Boolean,
                networkAclId: String,
                ruleNumber: Integer) {
        self.dryRun = dryRun
        self.egress = egress
        self.networkAclId = networkAclId
        self.ruleNumber = ruleNumber
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case egress
        case networkAclId
        case ruleNumber
    }

    public func validate() throws {
    }
}

public struct DeleteNetworkAclRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var networkAclId: String

    public init(dryRun: Boolean? = nil,
                networkAclId: String) {
        self.dryRun = dryRun
        self.networkAclId = networkAclId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case networkAclId
    }

    public func validate() throws {
    }
}

public struct DeleteNetworkInterfacePermissionRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var force: Boolean?
    public var networkInterfacePermissionId: String

    public init(dryRun: Boolean? = nil,
                force: Boolean? = nil,
                networkInterfacePermissionId: String) {
        self.dryRun = dryRun
        self.force = force
        self.networkInterfacePermissionId = networkInterfacePermissionId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case force = "Force"
        case networkInterfacePermissionId = "NetworkInterfacePermissionId"
    }

    public func validate() throws {
    }
}

public struct DeleteNetworkInterfacePermissionResult: Codable, Equatable {
    public var `return`: Boolean?

    public init(`return`: Boolean? = nil) {
        self.`return` = `return`
    }

    enum CodingKeys: String, CodingKey {
        case `return` = "return"
    }

    public func validate() throws {
    }
}

public struct DeleteNetworkInterfaceRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var networkInterfaceId: String

    public init(dryRun: Boolean? = nil,
                networkInterfaceId: String) {
        self.dryRun = dryRun
        self.networkInterfaceId = networkInterfaceId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case networkInterfaceId
    }

    public func validate() throws {
    }
}

public struct DeletePlacementGroupRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var groupName: String

    public init(dryRun: Boolean? = nil,
                groupName: String) {
        self.dryRun = dryRun
        self.groupName = groupName
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case groupName
    }

    public func validate() throws {
    }
}

public struct DeleteRouteRequest: Codable, Equatable {
    public var destinationCidrBlock: String?
    public var destinationIpv6CidrBlock: String?
    public var dryRun: Boolean?
    public var routeTableId: String

    public init(destinationCidrBlock: String? = nil,
                destinationIpv6CidrBlock: String? = nil,
                dryRun: Boolean? = nil,
                routeTableId: String) {
        self.destinationCidrBlock = destinationCidrBlock
        self.destinationIpv6CidrBlock = destinationIpv6CidrBlock
        self.dryRun = dryRun
        self.routeTableId = routeTableId
    }

    enum CodingKeys: String, CodingKey {
        case destinationCidrBlock
        case destinationIpv6CidrBlock
        case dryRun
        case routeTableId
    }

    public func validate() throws {
    }
}

public struct DeleteRouteTableRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var routeTableId: String

    public init(dryRun: Boolean? = nil,
                routeTableId: String) {
        self.dryRun = dryRun
        self.routeTableId = routeTableId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case routeTableId
    }

    public func validate() throws {
    }
}

public struct DeleteSecurityGroupRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var groupId: String?
    public var groupName: String?

    public init(dryRun: Boolean? = nil,
                groupId: String? = nil,
                groupName: String? = nil) {
        self.dryRun = dryRun
        self.groupId = groupId
        self.groupName = groupName
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case groupId = "GroupId"
        case groupName = "GroupName"
    }

    public func validate() throws {
    }
}

public struct DeleteSnapshotRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var snapshotId: String

    public init(dryRun: Boolean? = nil,
                snapshotId: String) {
        self.dryRun = dryRun
        self.snapshotId = snapshotId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case snapshotId = "SnapshotId"
    }

    public func validate() throws {
    }
}

public struct DeleteSpotDatafeedSubscriptionRequest: Codable, Equatable {
    public var dryRun: Boolean?

    public init(dryRun: Boolean? = nil) {
        self.dryRun = dryRun
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
    }

    public func validate() throws {
    }
}

public struct DeleteSubnetRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var subnetId: String

    public init(dryRun: Boolean? = nil,
                subnetId: String) {
        self.dryRun = dryRun
        self.subnetId = subnetId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case subnetId = "SubnetId"
    }

    public func validate() throws {
    }
}

public struct DeleteTagsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var resources: ResourceIdList
    public var tags: TagList?

    public init(dryRun: Boolean? = nil,
                resources: ResourceIdList,
                tags: TagList? = nil) {
        self.dryRun = dryRun
        self.resources = resources
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case resources = "resourceId"
        case tags = "tag"
    }

    public func validate() throws {
    }
}

public struct DeleteTransitGatewayRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var transitGatewayId: String

    public init(dryRun: Boolean? = nil,
                transitGatewayId: String) {
        self.dryRun = dryRun
        self.transitGatewayId = transitGatewayId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case transitGatewayId = "TransitGatewayId"
    }

    public func validate() throws {
    }
}

public struct DeleteTransitGatewayResult: Codable, Equatable {
    public var transitGateway: TransitGateway?

    public init(transitGateway: TransitGateway? = nil) {
        self.transitGateway = transitGateway
    }

    enum CodingKeys: String, CodingKey {
        case transitGateway
    }

    public func validate() throws {
        try transitGateway?.validate()
    }
}

public struct DeleteTransitGatewayRouteRequest: Codable, Equatable {
    public var destinationCidrBlock: String
    public var dryRun: Boolean?
    public var transitGatewayRouteTableId: String

    public init(destinationCidrBlock: String,
                dryRun: Boolean? = nil,
                transitGatewayRouteTableId: String) {
        self.destinationCidrBlock = destinationCidrBlock
        self.dryRun = dryRun
        self.transitGatewayRouteTableId = transitGatewayRouteTableId
    }

    enum CodingKeys: String, CodingKey {
        case destinationCidrBlock = "DestinationCidrBlock"
        case dryRun = "DryRun"
        case transitGatewayRouteTableId = "TransitGatewayRouteTableId"
    }

    public func validate() throws {
    }
}

public struct DeleteTransitGatewayRouteResult: Codable, Equatable {
    public var route: TransitGatewayRoute?

    public init(route: TransitGatewayRoute? = nil) {
        self.route = route
    }

    enum CodingKeys: String, CodingKey {
        case route
    }

    public func validate() throws {
        try route?.validate()
    }
}

public struct DeleteTransitGatewayRouteTableRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var transitGatewayRouteTableId: String

    public init(dryRun: Boolean? = nil,
                transitGatewayRouteTableId: String) {
        self.dryRun = dryRun
        self.transitGatewayRouteTableId = transitGatewayRouteTableId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case transitGatewayRouteTableId = "TransitGatewayRouteTableId"
    }

    public func validate() throws {
    }
}

public struct DeleteTransitGatewayRouteTableResult: Codable, Equatable {
    public var transitGatewayRouteTable: TransitGatewayRouteTable?

    public init(transitGatewayRouteTable: TransitGatewayRouteTable? = nil) {
        self.transitGatewayRouteTable = transitGatewayRouteTable
    }

    enum CodingKeys: String, CodingKey {
        case transitGatewayRouteTable
    }

    public func validate() throws {
        try transitGatewayRouteTable?.validate()
    }
}

public struct DeleteTransitGatewayVpcAttachmentRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var transitGatewayAttachmentId: String

    public init(dryRun: Boolean? = nil,
                transitGatewayAttachmentId: String) {
        self.dryRun = dryRun
        self.transitGatewayAttachmentId = transitGatewayAttachmentId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case transitGatewayAttachmentId = "TransitGatewayAttachmentId"
    }

    public func validate() throws {
    }
}

public struct DeleteTransitGatewayVpcAttachmentResult: Codable, Equatable {
    public var transitGatewayVpcAttachment: TransitGatewayVpcAttachment?

    public init(transitGatewayVpcAttachment: TransitGatewayVpcAttachment? = nil) {
        self.transitGatewayVpcAttachment = transitGatewayVpcAttachment
    }

    enum CodingKeys: String, CodingKey {
        case transitGatewayVpcAttachment
    }

    public func validate() throws {
        try transitGatewayVpcAttachment?.validate()
    }
}

public struct DeleteVolumeRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var volumeId: String

    public init(dryRun: Boolean? = nil,
                volumeId: String) {
        self.dryRun = dryRun
        self.volumeId = volumeId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case volumeId = "VolumeId"
    }

    public func validate() throws {
    }
}

public struct DeleteVpcEndpointConnectionNotificationsRequest: Codable, Equatable {
    public var connectionNotificationIds: ValueStringList
    public var dryRun: Boolean?

    public init(connectionNotificationIds: ValueStringList,
                dryRun: Boolean? = nil) {
        self.connectionNotificationIds = connectionNotificationIds
        self.dryRun = dryRun
    }

    enum CodingKeys: String, CodingKey {
        case connectionNotificationIds = "ConnectionNotificationId"
        case dryRun = "DryRun"
    }

    public func validate() throws {
    }
}

public struct DeleteVpcEndpointConnectionNotificationsResult: Codable, Equatable {
    public var unsuccessful: UnsuccessfulItemSet?

    public init(unsuccessful: UnsuccessfulItemSet? = nil) {
        self.unsuccessful = unsuccessful
    }

    enum CodingKeys: String, CodingKey {
        case unsuccessful
    }

    public func validate() throws {
    }
}

public struct DeleteVpcEndpointServiceConfigurationsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var serviceIds: ValueStringList

    public init(dryRun: Boolean? = nil,
                serviceIds: ValueStringList) {
        self.dryRun = dryRun
        self.serviceIds = serviceIds
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case serviceIds = "ServiceId"
    }

    public func validate() throws {
    }
}

public struct DeleteVpcEndpointServiceConfigurationsResult: Codable, Equatable {
    public var unsuccessful: UnsuccessfulItemSet?

    public init(unsuccessful: UnsuccessfulItemSet? = nil) {
        self.unsuccessful = unsuccessful
    }

    enum CodingKeys: String, CodingKey {
        case unsuccessful
    }

    public func validate() throws {
    }
}

public struct DeleteVpcEndpointsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var vpcEndpointIds: ValueStringList

    public init(dryRun: Boolean? = nil,
                vpcEndpointIds: ValueStringList) {
        self.dryRun = dryRun
        self.vpcEndpointIds = vpcEndpointIds
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case vpcEndpointIds = "VpcEndpointId"
    }

    public func validate() throws {
    }
}

public struct DeleteVpcEndpointsResult: Codable, Equatable {
    public var unsuccessful: UnsuccessfulItemSet?

    public init(unsuccessful: UnsuccessfulItemSet? = nil) {
        self.unsuccessful = unsuccessful
    }

    enum CodingKeys: String, CodingKey {
        case unsuccessful
    }

    public func validate() throws {
    }
}

public struct DeleteVpcPeeringConnectionRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var vpcPeeringConnectionId: String

    public init(dryRun: Boolean? = nil,
                vpcPeeringConnectionId: String) {
        self.dryRun = dryRun
        self.vpcPeeringConnectionId = vpcPeeringConnectionId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case vpcPeeringConnectionId
    }

    public func validate() throws {
    }
}

public struct DeleteVpcPeeringConnectionResult: Codable, Equatable {
    public var `return`: Boolean?

    public init(`return`: Boolean? = nil) {
        self.`return` = `return`
    }

    enum CodingKeys: String, CodingKey {
        case `return` = "return"
    }

    public func validate() throws {
    }
}

public struct DeleteVpcRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var vpcId: String

    public init(dryRun: Boolean? = nil,
                vpcId: String) {
        self.dryRun = dryRun
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case vpcId = "VpcId"
    }

    public func validate() throws {
    }
}

public struct DeleteVpnConnectionRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var vpnConnectionId: String

    public init(dryRun: Boolean? = nil,
                vpnConnectionId: String) {
        self.dryRun = dryRun
        self.vpnConnectionId = vpnConnectionId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case vpnConnectionId = "VpnConnectionId"
    }

    public func validate() throws {
    }
}

public struct DeleteVpnConnectionRouteRequest: Codable, Equatable {
    public var destinationCidrBlock: String
    public var vpnConnectionId: String

    public init(destinationCidrBlock: String,
                vpnConnectionId: String) {
        self.destinationCidrBlock = destinationCidrBlock
        self.vpnConnectionId = vpnConnectionId
    }

    enum CodingKeys: String, CodingKey {
        case destinationCidrBlock = "DestinationCidrBlock"
        case vpnConnectionId = "VpnConnectionId"
    }

    public func validate() throws {
    }
}

public struct DeleteVpnGatewayRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var vpnGatewayId: String

    public init(dryRun: Boolean? = nil,
                vpnGatewayId: String) {
        self.dryRun = dryRun
        self.vpnGatewayId = vpnGatewayId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case vpnGatewayId = "VpnGatewayId"
    }

    public func validate() throws {
    }
}

public struct DeprovisionByoipCidrRequest: Codable, Equatable {
    public var cidr: String
    public var dryRun: Boolean?

    public init(cidr: String,
                dryRun: Boolean? = nil) {
        self.cidr = cidr
        self.dryRun = dryRun
    }

    enum CodingKeys: String, CodingKey {
        case cidr = "Cidr"
        case dryRun = "DryRun"
    }

    public func validate() throws {
    }
}

public struct DeprovisionByoipCidrResult: Codable, Equatable {
    public var byoipCidr: ByoipCidr?

    public init(byoipCidr: ByoipCidr? = nil) {
        self.byoipCidr = byoipCidr
    }

    enum CodingKeys: String, CodingKey {
        case byoipCidr
    }

    public func validate() throws {
        try byoipCidr?.validate()
    }
}

public struct DeregisterImageRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var imageId: String

    public init(dryRun: Boolean? = nil,
                imageId: String) {
        self.dryRun = dryRun
        self.imageId = imageId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case imageId = "ImageId"
    }

    public func validate() throws {
    }
}

public struct DescribeAccountAttributesRequest: Codable, Equatable {
    public var attributeNames: AccountAttributeNameStringList?
    public var dryRun: Boolean?

    public init(attributeNames: AccountAttributeNameStringList? = nil,
                dryRun: Boolean? = nil) {
        self.attributeNames = attributeNames
        self.dryRun = dryRun
    }

    enum CodingKeys: String, CodingKey {
        case attributeNames = "attributeName"
        case dryRun
    }

    public func validate() throws {
    }
}

public struct DescribeAccountAttributesResult: Codable, Equatable {
    public var accountAttributes: AccountAttributeList?

    public init(accountAttributes: AccountAttributeList? = nil) {
        self.accountAttributes = accountAttributes
    }

    enum CodingKeys: String, CodingKey {
        case accountAttributes = "accountAttributeSet"
    }

    public func validate() throws {
    }
}

public struct DescribeAddressesRequest: Codable, Equatable {
    public var allocationIds: AllocationIdList?
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var publicIps: PublicIpStringList?

    public init(allocationIds: AllocationIdList? = nil,
                dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                publicIps: PublicIpStringList? = nil) {
        self.allocationIds = allocationIds
        self.dryRun = dryRun
        self.filters = filters
        self.publicIps = publicIps
    }

    enum CodingKeys: String, CodingKey {
        case allocationIds = "AllocationId"
        case dryRun
        case filters = "Filter"
        case publicIps = "PublicIp"
    }

    public func validate() throws {
    }
}

public struct DescribeAddressesResult: Codable, Equatable {
    public var addresses: AddressList?

    public init(addresses: AddressList? = nil) {
        self.addresses = addresses
    }

    enum CodingKeys: String, CodingKey {
        case addresses = "addressesSet"
    }

    public func validate() throws {
    }
}

public struct DescribeAggregateIdFormatRequest: Codable, Equatable {
    public var dryRun: Boolean?

    public init(dryRun: Boolean? = nil) {
        self.dryRun = dryRun
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
    }

    public func validate() throws {
    }
}

public struct DescribeAggregateIdFormatResult: Codable, Equatable {
    public var statuses: IdFormatList?
    public var useLongIdsAggregated: Boolean?

    public init(statuses: IdFormatList? = nil,
                useLongIdsAggregated: Boolean? = nil) {
        self.statuses = statuses
        self.useLongIdsAggregated = useLongIdsAggregated
    }

    enum CodingKeys: String, CodingKey {
        case statuses = "statusSet"
        case useLongIdsAggregated
    }

    public func validate() throws {
    }
}

public struct DescribeAvailabilityZonesRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var zoneIds: ZoneIdStringList?
    public var zoneNames: ZoneNameStringList?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                zoneIds: ZoneIdStringList? = nil,
                zoneNames: ZoneNameStringList? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.zoneIds = zoneIds
        self.zoneNames = zoneNames
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case filters = "Filter"
        case zoneIds = "ZoneId"
        case zoneNames = "ZoneName"
    }

    public func validate() throws {
    }
}

public struct DescribeAvailabilityZonesResult: Codable, Equatable {
    public var availabilityZones: AvailabilityZoneList?

    public init(availabilityZones: AvailabilityZoneList? = nil) {
        self.availabilityZones = availabilityZones
    }

    enum CodingKeys: String, CodingKey {
        case availabilityZones = "availabilityZoneInfo"
    }

    public func validate() throws {
    }
}

public struct DescribeBundleTasksRequest: Codable, Equatable {
    public var bundleIds: BundleIdStringList?
    public var dryRun: Boolean?
    public var filters: FilterList?

    public init(bundleIds: BundleIdStringList? = nil,
                dryRun: Boolean? = nil,
                filters: FilterList? = nil) {
        self.bundleIds = bundleIds
        self.dryRun = dryRun
        self.filters = filters
    }

    enum CodingKeys: String, CodingKey {
        case bundleIds = "BundleId"
        case dryRun
        case filters = "Filter"
    }

    public func validate() throws {
    }
}

public struct DescribeBundleTasksResult: Codable, Equatable {
    public var bundleTasks: BundleTaskList?

    public init(bundleTasks: BundleTaskList? = nil) {
        self.bundleTasks = bundleTasks
    }

    enum CodingKeys: String, CodingKey {
        case bundleTasks = "bundleInstanceTasksSet"
    }

    public func validate() throws {
    }
}

public struct DescribeByoipCidrsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var maxResults: MaxResults
    public var nextToken: NextToken?

    public init(dryRun: Boolean? = nil,
                maxResults: MaxResults,
                nextToken: NextToken? = nil) {
        self.dryRun = dryRun
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try maxResults.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
    }
}

public struct DescribeByoipCidrsResult: Codable, Equatable {
    public var byoipCidrs: ByoipCidrSet?
    public var nextToken: String?

    public init(byoipCidrs: ByoipCidrSet? = nil,
                nextToken: String? = nil) {
        self.byoipCidrs = byoipCidrs
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case byoipCidrs = "byoipCidrSet"
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeCapacityReservationsRequest: Codable, Equatable {
    public var capacityReservationIds: CapacityReservationIdSet?
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: DescribeCapacityReservationsMaxResults?
    public var nextToken: String?

    public init(capacityReservationIds: CapacityReservationIdSet? = nil,
                dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: DescribeCapacityReservationsMaxResults? = nil,
                nextToken: String? = nil) {
        self.capacityReservationIds = capacityReservationIds
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case capacityReservationIds = "CapacityReservationId"
        case dryRun = "DryRun"
        case filters = "Filter"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try maxResults?.validateAsDescribeCapacityReservationsMaxResults()
    }
}

public struct DescribeCapacityReservationsResult: Codable, Equatable {
    public var capacityReservations: CapacityReservationSet?
    public var nextToken: String?

    public init(capacityReservations: CapacityReservationSet? = nil,
                nextToken: String? = nil) {
        self.capacityReservations = capacityReservations
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case capacityReservations = "capacityReservationSet"
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeClassicLinkInstancesRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var instanceIds: InstanceIdStringList?
    public var maxResults: Integer?
    public var nextToken: String?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                instanceIds: InstanceIdStringList? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.instanceIds = instanceIds
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case filters = "Filter"
        case instanceIds = "InstanceId"
        case maxResults
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeClassicLinkInstancesResult: Codable, Equatable {
    public var instances: ClassicLinkInstanceList?
    public var nextToken: String?

    public init(instances: ClassicLinkInstanceList? = nil,
                nextToken: String? = nil) {
        self.instances = instances
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case instances = "instancesSet"
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeClientVpnAuthorizationRulesRequest: Codable, Equatable {
    public var clientVpnEndpointId: String
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: MaxResults?
    public var nextToken: NextToken?

    public init(clientVpnEndpointId: String,
                dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil) {
        self.clientVpnEndpointId = clientVpnEndpointId
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case clientVpnEndpointId = "ClientVpnEndpointId"
        case dryRun = "DryRun"
        case filters = "Filter"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
    }
}

public struct DescribeClientVpnAuthorizationRulesResult: Codable, Equatable {
    public var authorizationRules: AuthorizationRuleSet?
    public var nextToken: NextToken?

    public init(authorizationRules: AuthorizationRuleSet? = nil,
                nextToken: NextToken? = nil) {
        self.authorizationRules = authorizationRules
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case authorizationRules = "authorizationRule"
        case nextToken
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct DescribeClientVpnConnectionsRequest: Codable, Equatable {
    public var clientVpnEndpointId: String
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: MaxResults?
    public var nextToken: NextToken?

    public init(clientVpnEndpointId: String,
                dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil) {
        self.clientVpnEndpointId = clientVpnEndpointId
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case clientVpnEndpointId = "ClientVpnEndpointId"
        case dryRun = "DryRun"
        case filters = "Filter"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
    }
}

public struct DescribeClientVpnConnectionsResult: Codable, Equatable {
    public var connections: ClientVpnConnectionSet?
    public var nextToken: NextToken?

    public init(connections: ClientVpnConnectionSet? = nil,
                nextToken: NextToken? = nil) {
        self.connections = connections
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case connections
        case nextToken
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct DescribeClientVpnEndpointsRequest: Codable, Equatable {
    public var clientVpnEndpointIds: ValueStringList?
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: MaxResults?
    public var nextToken: NextToken?

    public init(clientVpnEndpointIds: ValueStringList? = nil,
                dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil) {
        self.clientVpnEndpointIds = clientVpnEndpointIds
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case clientVpnEndpointIds = "ClientVpnEndpointId"
        case dryRun = "DryRun"
        case filters = "Filter"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
    }
}

public struct DescribeClientVpnEndpointsResult: Codable, Equatable {
    public var clientVpnEndpoints: EndpointSet?
    public var nextToken: NextToken?

    public init(clientVpnEndpoints: EndpointSet? = nil,
                nextToken: NextToken? = nil) {
        self.clientVpnEndpoints = clientVpnEndpoints
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case clientVpnEndpoints = "clientVpnEndpoint"
        case nextToken
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct DescribeClientVpnRoutesRequest: Codable, Equatable {
    public var clientVpnEndpointId: String
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: MaxResults?
    public var nextToken: NextToken?

    public init(clientVpnEndpointId: String,
                dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil) {
        self.clientVpnEndpointId = clientVpnEndpointId
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case clientVpnEndpointId = "ClientVpnEndpointId"
        case dryRun = "DryRun"
        case filters = "Filter"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
    }
}

public struct DescribeClientVpnRoutesResult: Codable, Equatable {
    public var nextToken: NextToken?
    public var routes: ClientVpnRouteSet?

    public init(nextToken: NextToken? = nil,
                routes: ClientVpnRouteSet? = nil) {
        self.nextToken = nextToken
        self.routes = routes
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case routes
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct DescribeClientVpnTargetNetworksRequest: Codable, Equatable {
    public var associationIds: ValueStringList?
    public var clientVpnEndpointId: String
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: MaxResults?
    public var nextToken: NextToken?

    public init(associationIds: ValueStringList? = nil,
                clientVpnEndpointId: String,
                dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil) {
        self.associationIds = associationIds
        self.clientVpnEndpointId = clientVpnEndpointId
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case associationIds = "AssociationIds"
        case clientVpnEndpointId = "ClientVpnEndpointId"
        case dryRun = "DryRun"
        case filters = "Filter"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
    }
}

public struct DescribeClientVpnTargetNetworksResult: Codable, Equatable {
    public var clientVpnTargetNetworks: TargetNetworkSet?
    public var nextToken: NextToken?

    public init(clientVpnTargetNetworks: TargetNetworkSet? = nil,
                nextToken: NextToken? = nil) {
        self.clientVpnTargetNetworks = clientVpnTargetNetworks
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case clientVpnTargetNetworks
        case nextToken
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct DescribeConversionTasksRequest: Codable, Equatable {
    public var conversionTaskIds: ConversionIdStringList?
    public var dryRun: Boolean?

    public init(conversionTaskIds: ConversionIdStringList? = nil,
                dryRun: Boolean? = nil) {
        self.conversionTaskIds = conversionTaskIds
        self.dryRun = dryRun
    }

    enum CodingKeys: String, CodingKey {
        case conversionTaskIds = "conversionTaskId"
        case dryRun
    }

    public func validate() throws {
    }
}

public struct DescribeConversionTasksResult: Codable, Equatable {
    public var conversionTasks: DescribeConversionTaskList?

    public init(conversionTasks: DescribeConversionTaskList? = nil) {
        self.conversionTasks = conversionTasks
    }

    enum CodingKeys: String, CodingKey {
        case conversionTasks
    }

    public func validate() throws {
    }
}

public struct DescribeCustomerGatewaysRequest: Codable, Equatable {
    public var customerGatewayIds: CustomerGatewayIdStringList?
    public var dryRun: Boolean?
    public var filters: FilterList?

    public init(customerGatewayIds: CustomerGatewayIdStringList? = nil,
                dryRun: Boolean? = nil,
                filters: FilterList? = nil) {
        self.customerGatewayIds = customerGatewayIds
        self.dryRun = dryRun
        self.filters = filters
    }

    enum CodingKeys: String, CodingKey {
        case customerGatewayIds = "CustomerGatewayId"
        case dryRun
        case filters = "Filter"
    }

    public func validate() throws {
    }
}

public struct DescribeCustomerGatewaysResult: Codable, Equatable {
    public var customerGateways: CustomerGatewayList?

    public init(customerGateways: CustomerGatewayList? = nil) {
        self.customerGateways = customerGateways
    }

    enum CodingKeys: String, CodingKey {
        case customerGateways = "customerGatewaySet"
    }

    public func validate() throws {
    }
}

public struct DescribeDhcpOptionsRequest: Codable, Equatable {
    public var dhcpOptionsIds: DhcpOptionsIdStringList?
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: DescribeDhcpOptionsMaxResults?
    public var nextToken: String?

    public init(dhcpOptionsIds: DhcpOptionsIdStringList? = nil,
                dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: DescribeDhcpOptionsMaxResults? = nil,
                nextToken: String? = nil) {
        self.dhcpOptionsIds = dhcpOptionsIds
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case dhcpOptionsIds = "DhcpOptionsId"
        case dryRun
        case filters = "Filter"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try maxResults?.validateAsDescribeDhcpOptionsMaxResults()
    }
}

public struct DescribeDhcpOptionsResult: Codable, Equatable {
    public var dhcpOptions: DhcpOptionsList?
    public var nextToken: String?

    public init(dhcpOptions: DhcpOptionsList? = nil,
                nextToken: String? = nil) {
        self.dhcpOptions = dhcpOptions
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case dhcpOptions = "dhcpOptionsSet"
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeEgressOnlyInternetGatewaysRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var egressOnlyInternetGatewayIds: EgressOnlyInternetGatewayIdList?
    public var maxResults: Integer?
    public var nextToken: String?

    public init(dryRun: Boolean? = nil,
                egressOnlyInternetGatewayIds: EgressOnlyInternetGatewayIdList? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil) {
        self.dryRun = dryRun
        self.egressOnlyInternetGatewayIds = egressOnlyInternetGatewayIds
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case egressOnlyInternetGatewayIds = "EgressOnlyInternetGatewayId"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func validate() throws {
    }
}

public struct DescribeEgressOnlyInternetGatewaysResult: Codable, Equatable {
    public var egressOnlyInternetGateways: EgressOnlyInternetGatewayList?
    public var nextToken: String?

    public init(egressOnlyInternetGateways: EgressOnlyInternetGatewayList? = nil,
                nextToken: String? = nil) {
        self.egressOnlyInternetGateways = egressOnlyInternetGateways
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case egressOnlyInternetGateways = "egressOnlyInternetGatewaySet"
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeElasticGpusRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var elasticGpuIds: ElasticGpuIdSet?
    public var filters: FilterList?
    public var maxResults: DescribeElasticGpusMaxResults?
    public var nextToken: String?

    public init(dryRun: Boolean? = nil,
                elasticGpuIds: ElasticGpuIdSet? = nil,
                filters: FilterList? = nil,
                maxResults: DescribeElasticGpusMaxResults? = nil,
                nextToken: String? = nil) {
        self.dryRun = dryRun
        self.elasticGpuIds = elasticGpuIds
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case elasticGpuIds = "ElasticGpuId"
        case filters = "Filter"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try maxResults?.validateAsDescribeElasticGpusMaxResults()
    }
}

public struct DescribeElasticGpusResult: Codable, Equatable {
    public var elasticGpuSet: ElasticGpuSet?
    public var maxResults: Integer?
    public var nextToken: String?

    public init(elasticGpuSet: ElasticGpuSet? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil) {
        self.elasticGpuSet = elasticGpuSet
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case elasticGpuSet
        case maxResults
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeExportTasksRequest: Codable, Equatable {
    public var exportTaskIds: ExportTaskIdStringList?

    public init(exportTaskIds: ExportTaskIdStringList? = nil) {
        self.exportTaskIds = exportTaskIds
    }

    enum CodingKeys: String, CodingKey {
        case exportTaskIds = "exportTaskId"
    }

    public func validate() throws {
    }
}

public struct DescribeExportTasksResult: Codable, Equatable {
    public var exportTasks: ExportTaskList?

    public init(exportTasks: ExportTaskList? = nil) {
        self.exportTasks = exportTasks
    }

    enum CodingKeys: String, CodingKey {
        case exportTasks = "exportTaskSet"
    }

    public func validate() throws {
    }
}

public struct DescribeFleetError: Codable, Equatable {
    public var errorCode: String?
    public var errorMessage: String?
    public var launchTemplateAndOverrides: LaunchTemplateAndOverridesResponse?
    public var lifecycle: InstanceLifecycle?

    public init(errorCode: String? = nil,
                errorMessage: String? = nil,
                launchTemplateAndOverrides: LaunchTemplateAndOverridesResponse? = nil,
                lifecycle: InstanceLifecycle? = nil) {
        self.errorCode = errorCode
        self.errorMessage = errorMessage
        self.launchTemplateAndOverrides = launchTemplateAndOverrides
        self.lifecycle = lifecycle
    }

    enum CodingKeys: String, CodingKey {
        case errorCode
        case errorMessage
        case launchTemplateAndOverrides
        case lifecycle
    }

    public func validate() throws {
        try launchTemplateAndOverrides?.validate()
    }
}

public struct DescribeFleetHistoryRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var eventType: FleetEventType?
    public var fleetId: FleetIdentifier
    public var maxResults: Integer?
    public var nextToken: String?
    public var startTime: DateTime

    public init(dryRun: Boolean? = nil,
                eventType: FleetEventType? = nil,
                fleetId: FleetIdentifier,
                maxResults: Integer? = nil,
                nextToken: String? = nil,
                startTime: DateTime) {
        self.dryRun = dryRun
        self.eventType = eventType
        self.fleetId = fleetId
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.startTime = startTime
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case eventType = "EventType"
        case fleetId = "FleetId"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case startTime = "StartTime"
    }

    public func validate() throws {
    }
}

public struct DescribeFleetHistoryResult: Codable, Equatable {
    public var fleetId: FleetIdentifier?
    public var historyRecords: HistoryRecordSet?
    public var lastEvaluatedTime: DateTime?
    public var nextToken: String?
    public var startTime: DateTime?

    public init(fleetId: FleetIdentifier? = nil,
                historyRecords: HistoryRecordSet? = nil,
                lastEvaluatedTime: DateTime? = nil,
                nextToken: String? = nil,
                startTime: DateTime? = nil) {
        self.fleetId = fleetId
        self.historyRecords = historyRecords
        self.lastEvaluatedTime = lastEvaluatedTime
        self.nextToken = nextToken
        self.startTime = startTime
    }

    enum CodingKeys: String, CodingKey {
        case fleetId
        case historyRecords = "historyRecordSet"
        case lastEvaluatedTime
        case nextToken
        case startTime
    }

    public func validate() throws {
    }
}

public struct DescribeFleetInstancesRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var fleetId: FleetIdentifier
    public var maxResults: Integer?
    public var nextToken: String?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                fleetId: FleetIdentifier,
                maxResults: Integer? = nil,
                nextToken: String? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.fleetId = fleetId
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case filters = "Filter"
        case fleetId = "FleetId"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func validate() throws {
    }
}

public struct DescribeFleetInstancesResult: Codable, Equatable {
    public var activeInstances: ActiveInstanceSet?
    public var fleetId: FleetIdentifier?
    public var nextToken: String?

    public init(activeInstances: ActiveInstanceSet? = nil,
                fleetId: FleetIdentifier? = nil,
                nextToken: String? = nil) {
        self.activeInstances = activeInstances
        self.fleetId = fleetId
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case activeInstances = "activeInstanceSet"
        case fleetId
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeFleetsInstances: Codable, Equatable {
    public var instanceIds: InstanceIdsSet?
    public var instanceType: InstanceType?
    public var launchTemplateAndOverrides: LaunchTemplateAndOverridesResponse?
    public var lifecycle: InstanceLifecycle?
    public var platform: PlatformValues?

    public init(instanceIds: InstanceIdsSet? = nil,
                instanceType: InstanceType? = nil,
                launchTemplateAndOverrides: LaunchTemplateAndOverridesResponse? = nil,
                lifecycle: InstanceLifecycle? = nil,
                platform: PlatformValues? = nil) {
        self.instanceIds = instanceIds
        self.instanceType = instanceType
        self.launchTemplateAndOverrides = launchTemplateAndOverrides
        self.lifecycle = lifecycle
        self.platform = platform
    }

    enum CodingKeys: String, CodingKey {
        case instanceIds
        case instanceType
        case launchTemplateAndOverrides
        case lifecycle
        case platform
    }

    public func validate() throws {
        try launchTemplateAndOverrides?.validate()
    }
}

public struct DescribeFleetsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var fleetIds: FleetIdSet?
    public var maxResults: Integer?
    public var nextToken: String?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                fleetIds: FleetIdSet? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.fleetIds = fleetIds
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case filters = "Filter"
        case fleetIds = "FleetId"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func validate() throws {
    }
}

public struct DescribeFleetsResult: Codable, Equatable {
    public var fleets: FleetSet?
    public var nextToken: String?

    public init(fleets: FleetSet? = nil,
                nextToken: String? = nil) {
        self.fleets = fleets
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case fleets = "fleetSet"
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeFlowLogsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filter: FilterList?
    public var flowLogIds: ValueStringList?
    public var maxResults: Integer?
    public var nextToken: String?

    public init(dryRun: Boolean? = nil,
                filter: FilterList? = nil,
                flowLogIds: ValueStringList? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil) {
        self.dryRun = dryRun
        self.filter = filter
        self.flowLogIds = flowLogIds
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case filter = "Filter"
        case flowLogIds = "FlowLogId"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func validate() throws {
    }
}

public struct DescribeFlowLogsResult: Codable, Equatable {
    public var flowLogs: FlowLogSet?
    public var nextToken: String?

    public init(flowLogs: FlowLogSet? = nil,
                nextToken: String? = nil) {
        self.flowLogs = flowLogs
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case flowLogs = "flowLogSet"
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeFpgaImageAttributeRequest: Codable, Equatable {
    public var attribute: FpgaImageAttributeName
    public var dryRun: Boolean?
    public var fpgaImageId: String

    public init(attribute: FpgaImageAttributeName,
                dryRun: Boolean? = nil,
                fpgaImageId: String) {
        self.attribute = attribute
        self.dryRun = dryRun
        self.fpgaImageId = fpgaImageId
    }

    enum CodingKeys: String, CodingKey {
        case attribute = "Attribute"
        case dryRun = "DryRun"
        case fpgaImageId = "FpgaImageId"
    }

    public func validate() throws {
    }
}

public struct DescribeFpgaImageAttributeResult: Codable, Equatable {
    public var fpgaImageAttribute: FpgaImageAttribute?

    public init(fpgaImageAttribute: FpgaImageAttribute? = nil) {
        self.fpgaImageAttribute = fpgaImageAttribute
    }

    enum CodingKeys: String, CodingKey {
        case fpgaImageAttribute
    }

    public func validate() throws {
        try fpgaImageAttribute?.validate()
    }
}

public struct DescribeFpgaImagesRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var fpgaImageIds: FpgaImageIdList?
    public var maxResults: MaxResults?
    public var nextToken: NextToken?
    public var owners: OwnerStringList?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                fpgaImageIds: FpgaImageIdList? = nil,
                maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil,
                owners: OwnerStringList? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.fpgaImageIds = fpgaImageIds
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.owners = owners
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case filters = "Filter"
        case fpgaImageIds = "FpgaImageId"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case owners = "Owner"
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
    }
}

public struct DescribeFpgaImagesResult: Codable, Equatable {
    public var fpgaImages: FpgaImageList?
    public var nextToken: NextToken?

    public init(fpgaImages: FpgaImageList? = nil,
                nextToken: NextToken? = nil) {
        self.fpgaImages = fpgaImages
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case fpgaImages = "fpgaImageSet"
        case nextToken
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct DescribeHostReservationOfferingsRequest: Codable, Equatable {
    public var filter: FilterList?
    public var maxDuration: Integer?
    public var maxResults: DescribeHostReservationsMaxResults?
    public var minDuration: Integer?
    public var nextToken: String?
    public var offeringId: String?

    public init(filter: FilterList? = nil,
                maxDuration: Integer? = nil,
                maxResults: DescribeHostReservationsMaxResults? = nil,
                minDuration: Integer? = nil,
                nextToken: String? = nil,
                offeringId: String? = nil) {
        self.filter = filter
        self.maxDuration = maxDuration
        self.maxResults = maxResults
        self.minDuration = minDuration
        self.nextToken = nextToken
        self.offeringId = offeringId
    }

    enum CodingKeys: String, CodingKey {
        case filter = "Filter"
        case maxDuration = "MaxDuration"
        case maxResults = "MaxResults"
        case minDuration = "MinDuration"
        case nextToken = "NextToken"
        case offeringId = "OfferingId"
    }

    public func validate() throws {
        try maxResults?.validateAsDescribeHostReservationsMaxResults()
    }
}

public struct DescribeHostReservationOfferingsResult: Codable, Equatable {
    public var nextToken: String?
    public var offeringSet: HostOfferingSet?

    public init(nextToken: String? = nil,
                offeringSet: HostOfferingSet? = nil) {
        self.nextToken = nextToken
        self.offeringSet = offeringSet
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case offeringSet
    }

    public func validate() throws {
    }
}

public struct DescribeHostReservationsRequest: Codable, Equatable {
    public var filter: FilterList?
    public var hostReservationIdSet: HostReservationIdSet?
    public var maxResults: Integer?
    public var nextToken: String?

    public init(filter: FilterList? = nil,
                hostReservationIdSet: HostReservationIdSet? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil) {
        self.filter = filter
        self.hostReservationIdSet = hostReservationIdSet
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case filter = "Filter"
        case hostReservationIdSet = "HostReservationIdSet"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func validate() throws {
    }
}

public struct DescribeHostReservationsResult: Codable, Equatable {
    public var hostReservationSet: HostReservationSet?
    public var nextToken: String?

    public init(hostReservationSet: HostReservationSet? = nil,
                nextToken: String? = nil) {
        self.hostReservationSet = hostReservationSet
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case hostReservationSet
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeHostsRequest: Codable, Equatable {
    public var filter: FilterList?
    public var hostIds: RequestHostIdList?
    public var maxResults: Integer?
    public var nextToken: String?

    public init(filter: FilterList? = nil,
                hostIds: RequestHostIdList? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil) {
        self.filter = filter
        self.hostIds = hostIds
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case filter
        case hostIds = "hostId"
        case maxResults
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeHostsResult: Codable, Equatable {
    public var hosts: HostList?
    public var nextToken: String?

    public init(hosts: HostList? = nil,
                nextToken: String? = nil) {
        self.hosts = hosts
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case hosts = "hostSet"
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeIamInstanceProfileAssociationsRequest: Codable, Equatable {
    public var associationIds: AssociationIdList?
    public var filters: FilterList?
    public var maxResults: MaxResults?
    public var nextToken: NextToken?

    public init(associationIds: AssociationIdList? = nil,
                filters: FilterList? = nil,
                maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil) {
        self.associationIds = associationIds
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case associationIds = "AssociationId"
        case filters = "Filter"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
    }
}

public struct DescribeIamInstanceProfileAssociationsResult: Codable, Equatable {
    public var iamInstanceProfileAssociations: IamInstanceProfileAssociationSet?
    public var nextToken: NextToken?

    public init(iamInstanceProfileAssociations: IamInstanceProfileAssociationSet? = nil,
                nextToken: NextToken? = nil) {
        self.iamInstanceProfileAssociations = iamInstanceProfileAssociations
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case iamInstanceProfileAssociations = "iamInstanceProfileAssociationSet"
        case nextToken
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct DescribeIdFormatRequest: Codable, Equatable {
    public var resource: String?

    public init(resource: String? = nil) {
        self.resource = resource
    }

    enum CodingKeys: String, CodingKey {
        case resource = "Resource"
    }

    public func validate() throws {
    }
}

public struct DescribeIdFormatResult: Codable, Equatable {
    public var statuses: IdFormatList?

    public init(statuses: IdFormatList? = nil) {
        self.statuses = statuses
    }

    enum CodingKeys: String, CodingKey {
        case statuses = "statusSet"
    }

    public func validate() throws {
    }
}

public struct DescribeIdentityIdFormatRequest: Codable, Equatable {
    public var principalArn: String
    public var resource: String?

    public init(principalArn: String,
                resource: String? = nil) {
        self.principalArn = principalArn
        self.resource = resource
    }

    enum CodingKeys: String, CodingKey {
        case principalArn
        case resource
    }

    public func validate() throws {
    }
}

public struct DescribeIdentityIdFormatResult: Codable, Equatable {
    public var statuses: IdFormatList?

    public init(statuses: IdFormatList? = nil) {
        self.statuses = statuses
    }

    enum CodingKeys: String, CodingKey {
        case statuses = "statusSet"
    }

    public func validate() throws {
    }
}

public struct DescribeImageAttributeRequest: Codable, Equatable {
    public var attribute: ImageAttributeName
    public var dryRun: Boolean?
    public var imageId: String

    public init(attribute: ImageAttributeName,
                dryRun: Boolean? = nil,
                imageId: String) {
        self.attribute = attribute
        self.dryRun = dryRun
        self.imageId = imageId
    }

    enum CodingKeys: String, CodingKey {
        case attribute = "Attribute"
        case dryRun
        case imageId = "ImageId"
    }

    public func validate() throws {
    }
}

public struct DescribeImagesRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var executableUsers: ExecutableByStringList?
    public var filters: FilterList?
    public var imageIds: ImageIdStringList?
    public var owners: OwnerStringList?

    public init(dryRun: Boolean? = nil,
                executableUsers: ExecutableByStringList? = nil,
                filters: FilterList? = nil,
                imageIds: ImageIdStringList? = nil,
                owners: OwnerStringList? = nil) {
        self.dryRun = dryRun
        self.executableUsers = executableUsers
        self.filters = filters
        self.imageIds = imageIds
        self.owners = owners
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case executableUsers = "ExecutableBy"
        case filters = "Filter"
        case imageIds = "ImageId"
        case owners = "Owner"
    }

    public func validate() throws {
    }
}

public struct DescribeImagesResult: Codable, Equatable {
    public var images: ImageList?

    public init(images: ImageList? = nil) {
        self.images = images
    }

    enum CodingKeys: String, CodingKey {
        case images = "imagesSet"
    }

    public func validate() throws {
    }
}

public struct DescribeImportImageTasksRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var importTaskIds: ImportTaskIdList?
    public var maxResults: Integer?
    public var nextToken: String?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                importTaskIds: ImportTaskIdList? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.importTaskIds = importTaskIds
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case filters = "Filters"
        case importTaskIds = "ImportTaskId"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func validate() throws {
    }
}

public struct DescribeImportImageTasksResult: Codable, Equatable {
    public var importImageTasks: ImportImageTaskList?
    public var nextToken: String?

    public init(importImageTasks: ImportImageTaskList? = nil,
                nextToken: String? = nil) {
        self.importImageTasks = importImageTasks
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case importImageTasks = "importImageTaskSet"
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeImportSnapshotTasksRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var importTaskIds: ImportTaskIdList?
    public var maxResults: Integer?
    public var nextToken: String?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                importTaskIds: ImportTaskIdList? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.importTaskIds = importTaskIds
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case filters = "Filters"
        case importTaskIds = "ImportTaskId"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func validate() throws {
    }
}

public struct DescribeImportSnapshotTasksResult: Codable, Equatable {
    public var importSnapshotTasks: ImportSnapshotTaskList?
    public var nextToken: String?

    public init(importSnapshotTasks: ImportSnapshotTaskList? = nil,
                nextToken: String? = nil) {
        self.importSnapshotTasks = importSnapshotTasks
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case importSnapshotTasks = "importSnapshotTaskSet"
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeInstanceAttributeRequest: Codable, Equatable {
    public var attribute: InstanceAttributeName
    public var dryRun: Boolean?
    public var instanceId: String

    public init(attribute: InstanceAttributeName,
                dryRun: Boolean? = nil,
                instanceId: String) {
        self.attribute = attribute
        self.dryRun = dryRun
        self.instanceId = instanceId
    }

    enum CodingKeys: String, CodingKey {
        case attribute
        case dryRun
        case instanceId
    }

    public func validate() throws {
    }
}

public struct DescribeInstanceCreditSpecificationsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var instanceIds: InstanceIdStringList?
    public var maxResults: DescribeInstanceCreditSpecificationsMaxResults?
    public var nextToken: String?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                instanceIds: InstanceIdStringList? = nil,
                maxResults: DescribeInstanceCreditSpecificationsMaxResults? = nil,
                nextToken: String? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.instanceIds = instanceIds
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case filters = "Filter"
        case instanceIds = "InstanceId"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try maxResults?.validateAsDescribeInstanceCreditSpecificationsMaxResults()
    }
}

public struct DescribeInstanceCreditSpecificationsResult: Codable, Equatable {
    public var instanceCreditSpecifications: InstanceCreditSpecificationList?
    public var nextToken: String?

    public init(instanceCreditSpecifications: InstanceCreditSpecificationList? = nil,
                nextToken: String? = nil) {
        self.instanceCreditSpecifications = instanceCreditSpecifications
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case instanceCreditSpecifications = "instanceCreditSpecificationSet"
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeInstanceStatusRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var includeAllInstances: Boolean?
    public var instanceIds: InstanceIdStringList?
    public var maxResults: Integer?
    public var nextToken: String?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                includeAllInstances: Boolean? = nil,
                instanceIds: InstanceIdStringList? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.includeAllInstances = includeAllInstances
        self.instanceIds = instanceIds
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case filters = "Filter"
        case includeAllInstances
        case instanceIds = "InstanceId"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func validate() throws {
    }
}

public struct DescribeInstanceStatusResult: Codable, Equatable {
    public var instanceStatuses: InstanceStatusList?
    public var nextToken: String?

    public init(instanceStatuses: InstanceStatusList? = nil,
                nextToken: String? = nil) {
        self.instanceStatuses = instanceStatuses
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case instanceStatuses = "instanceStatusSet"
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeInstancesRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var instanceIds: InstanceIdStringList?
    public var maxResults: Integer?
    public var nextToken: String?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                instanceIds: InstanceIdStringList? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.instanceIds = instanceIds
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case filters = "Filter"
        case instanceIds = "InstanceId"
        case maxResults
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeInstancesResult: Codable, Equatable {
    public var nextToken: String?
    public var reservations: ReservationList?

    public init(nextToken: String? = nil,
                reservations: ReservationList? = nil) {
        self.nextToken = nextToken
        self.reservations = reservations
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case reservations = "reservationSet"
    }

    public func validate() throws {
    }
}

public struct DescribeInternetGatewaysRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var internetGatewayIds: ValueStringList?
    public var maxResults: DescribeInternetGatewaysMaxResults?
    public var nextToken: String?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                internetGatewayIds: ValueStringList? = nil,
                maxResults: DescribeInternetGatewaysMaxResults? = nil,
                nextToken: String? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.internetGatewayIds = internetGatewayIds
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case filters = "Filter"
        case internetGatewayIds = "internetGatewayId"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try maxResults?.validateAsDescribeInternetGatewaysMaxResults()
    }
}

public struct DescribeInternetGatewaysResult: Codable, Equatable {
    public var internetGateways: InternetGatewayList?
    public var nextToken: String?

    public init(internetGateways: InternetGatewayList? = nil,
                nextToken: String? = nil) {
        self.internetGateways = internetGateways
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case internetGateways = "internetGatewaySet"
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeKeyPairsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var keyNames: KeyNameStringList?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                keyNames: KeyNameStringList? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.keyNames = keyNames
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case filters = "Filter"
        case keyNames = "KeyName"
    }

    public func validate() throws {
    }
}

public struct DescribeKeyPairsResult: Codable, Equatable {
    public var keyPairs: KeyPairList?

    public init(keyPairs: KeyPairList? = nil) {
        self.keyPairs = keyPairs
    }

    enum CodingKeys: String, CodingKey {
        case keyPairs = "keySet"
    }

    public func validate() throws {
    }
}

public struct DescribeLaunchTemplateVersionsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var launchTemplateId: String?
    public var launchTemplateName: LaunchTemplateName?
    public var maxResults: Integer?
    public var maxVersion: String?
    public var minVersion: String?
    public var nextToken: String?
    public var versions: VersionStringList?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                launchTemplateId: String? = nil,
                launchTemplateName: LaunchTemplateName? = nil,
                maxResults: Integer? = nil,
                maxVersion: String? = nil,
                minVersion: String? = nil,
                nextToken: String? = nil,
                versions: VersionStringList? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.launchTemplateId = launchTemplateId
        self.launchTemplateName = launchTemplateName
        self.maxResults = maxResults
        self.maxVersion = maxVersion
        self.minVersion = minVersion
        self.nextToken = nextToken
        self.versions = versions
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case filters = "Filter"
        case launchTemplateId = "LaunchTemplateId"
        case launchTemplateName = "LaunchTemplateName"
        case maxResults = "MaxResults"
        case maxVersion = "MaxVersion"
        case minVersion = "MinVersion"
        case nextToken = "NextToken"
        case versions = "LaunchTemplateVersion"
    }

    public func validate() throws {
        try launchTemplateName?.validateAsLaunchTemplateName()
    }
}

public struct DescribeLaunchTemplateVersionsResult: Codable, Equatable {
    public var launchTemplateVersions: LaunchTemplateVersionSet?
    public var nextToken: String?

    public init(launchTemplateVersions: LaunchTemplateVersionSet? = nil,
                nextToken: String? = nil) {
        self.launchTemplateVersions = launchTemplateVersions
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case launchTemplateVersions = "launchTemplateVersionSet"
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeLaunchTemplatesRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var launchTemplateIds: ValueStringList?
    public var launchTemplateNames: LaunchTemplateNameStringList?
    public var maxResults: DescribeLaunchTemplatesMaxResults?
    public var nextToken: String?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                launchTemplateIds: ValueStringList? = nil,
                launchTemplateNames: LaunchTemplateNameStringList? = nil,
                maxResults: DescribeLaunchTemplatesMaxResults? = nil,
                nextToken: String? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.launchTemplateIds = launchTemplateIds
        self.launchTemplateNames = launchTemplateNames
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case filters = "Filter"
        case launchTemplateIds = "LaunchTemplateId"
        case launchTemplateNames = "LaunchTemplateName"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try maxResults?.validateAsDescribeLaunchTemplatesMaxResults()
    }
}

public struct DescribeLaunchTemplatesResult: Codable, Equatable {
    public var launchTemplates: LaunchTemplateSet?
    public var nextToken: String?

    public init(launchTemplates: LaunchTemplateSet? = nil,
                nextToken: String? = nil) {
        self.launchTemplates = launchTemplates
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case launchTemplates
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeMovingAddressesRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: Integer?
    public var nextToken: String?
    public var publicIps: ValueStringList?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil,
                publicIps: ValueStringList? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.publicIps = publicIps
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case filters = "filter"
        case maxResults
        case nextToken
        case publicIps = "publicIp"
    }

    public func validate() throws {
    }
}

public struct DescribeMovingAddressesResult: Codable, Equatable {
    public var movingAddressStatuses: MovingAddressStatusSet?
    public var nextToken: String?

    public init(movingAddressStatuses: MovingAddressStatusSet? = nil,
                nextToken: String? = nil) {
        self.movingAddressStatuses = movingAddressStatuses
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case movingAddressStatuses = "movingAddressStatusSet"
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeNatGatewaysRequest: Codable, Equatable {
    public var filter: FilterList?
    public var maxResults: Integer?
    public var natGatewayIds: ValueStringList?
    public var nextToken: String?

    public init(filter: FilterList? = nil,
                maxResults: Integer? = nil,
                natGatewayIds: ValueStringList? = nil,
                nextToken: String? = nil) {
        self.filter = filter
        self.maxResults = maxResults
        self.natGatewayIds = natGatewayIds
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case filter = "Filter"
        case maxResults = "MaxResults"
        case natGatewayIds = "NatGatewayId"
        case nextToken = "NextToken"
    }

    public func validate() throws {
    }
}

public struct DescribeNatGatewaysResult: Codable, Equatable {
    public var natGateways: NatGatewayList?
    public var nextToken: String?

    public init(natGateways: NatGatewayList? = nil,
                nextToken: String? = nil) {
        self.natGateways = natGateways
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case natGateways = "natGatewaySet"
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeNetworkAclsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: DescribeNetworkAclsMaxResults?
    public var networkAclIds: ValueStringList?
    public var nextToken: String?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: DescribeNetworkAclsMaxResults? = nil,
                networkAclIds: ValueStringList? = nil,
                nextToken: String? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.networkAclIds = networkAclIds
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case filters = "Filter"
        case maxResults = "MaxResults"
        case networkAclIds = "NetworkAclId"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try maxResults?.validateAsDescribeNetworkAclsMaxResults()
    }
}

public struct DescribeNetworkAclsResult: Codable, Equatable {
    public var networkAcls: NetworkAclList?
    public var nextToken: String?

    public init(networkAcls: NetworkAclList? = nil,
                nextToken: String? = nil) {
        self.networkAcls = networkAcls
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case networkAcls = "networkAclSet"
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeNetworkInterfaceAttributeRequest: Codable, Equatable {
    public var attribute: NetworkInterfaceAttribute?
    public var dryRun: Boolean?
    public var networkInterfaceId: String

    public init(attribute: NetworkInterfaceAttribute? = nil,
                dryRun: Boolean? = nil,
                networkInterfaceId: String) {
        self.attribute = attribute
        self.dryRun = dryRun
        self.networkInterfaceId = networkInterfaceId
    }

    enum CodingKeys: String, CodingKey {
        case attribute
        case dryRun
        case networkInterfaceId
    }

    public func validate() throws {
    }
}

public struct DescribeNetworkInterfaceAttributeResult: Codable, Equatable {
    public var attachment: NetworkInterfaceAttachment?
    public var description: AttributeValue?
    public var groups: GroupIdentifierList?
    public var networkInterfaceId: String?
    public var sourceDestCheck: AttributeBooleanValue?

    public init(attachment: NetworkInterfaceAttachment? = nil,
                description: AttributeValue? = nil,
                groups: GroupIdentifierList? = nil,
                networkInterfaceId: String? = nil,
                sourceDestCheck: AttributeBooleanValue? = nil) {
        self.attachment = attachment
        self.description = description
        self.groups = groups
        self.networkInterfaceId = networkInterfaceId
        self.sourceDestCheck = sourceDestCheck
    }

    enum CodingKeys: String, CodingKey {
        case attachment
        case description
        case groups = "groupSet"
        case networkInterfaceId
        case sourceDestCheck
    }

    public func validate() throws {
        try attachment?.validate()
        try description?.validate()
        try sourceDestCheck?.validate()
    }
}

public struct DescribeNetworkInterfacePermissionsRequest: Codable, Equatable {
    public var filters: FilterList?
    public var maxResults: DescribeNetworkInterfacePermissionsMaxResults?
    public var networkInterfacePermissionIds: NetworkInterfacePermissionIdList?
    public var nextToken: String?

    public init(filters: FilterList? = nil,
                maxResults: DescribeNetworkInterfacePermissionsMaxResults? = nil,
                networkInterfacePermissionIds: NetworkInterfacePermissionIdList? = nil,
                nextToken: String? = nil) {
        self.filters = filters
        self.maxResults = maxResults
        self.networkInterfacePermissionIds = networkInterfacePermissionIds
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case filters = "Filter"
        case maxResults = "MaxResults"
        case networkInterfacePermissionIds = "NetworkInterfacePermissionId"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try maxResults?.validateAsDescribeNetworkInterfacePermissionsMaxResults()
    }
}

public struct DescribeNetworkInterfacePermissionsResult: Codable, Equatable {
    public var networkInterfacePermissions: NetworkInterfacePermissionList?
    public var nextToken: String?

    public init(networkInterfacePermissions: NetworkInterfacePermissionList? = nil,
                nextToken: String? = nil) {
        self.networkInterfacePermissions = networkInterfacePermissions
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case networkInterfacePermissions
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeNetworkInterfacesRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: DescribeNetworkInterfacesMaxResults?
    public var networkInterfaceIds: NetworkInterfaceIdList?
    public var nextToken: String?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: DescribeNetworkInterfacesMaxResults? = nil,
                networkInterfaceIds: NetworkInterfaceIdList? = nil,
                nextToken: String? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.networkInterfaceIds = networkInterfaceIds
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case filters = "filter"
        case maxResults = "MaxResults"
        case networkInterfaceIds = "NetworkInterfaceId"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try maxResults?.validateAsDescribeNetworkInterfacesMaxResults()
    }
}

public struct DescribeNetworkInterfacesResult: Codable, Equatable {
    public var networkInterfaces: NetworkInterfaceList?
    public var nextToken: String?

    public init(networkInterfaces: NetworkInterfaceList? = nil,
                nextToken: String? = nil) {
        self.networkInterfaces = networkInterfaces
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case networkInterfaces = "networkInterfaceSet"
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribePlacementGroupsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var groupNames: PlacementGroupStringList?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                groupNames: PlacementGroupStringList? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.groupNames = groupNames
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case filters = "Filter"
        case groupNames = "groupName"
    }

    public func validate() throws {
    }
}

public struct DescribePlacementGroupsResult: Codable, Equatable {
    public var placementGroups: PlacementGroupList?

    public init(placementGroups: PlacementGroupList? = nil) {
        self.placementGroups = placementGroups
    }

    enum CodingKeys: String, CodingKey {
        case placementGroups = "placementGroupSet"
    }

    public func validate() throws {
    }
}

public struct DescribePrefixListsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: Integer?
    public var nextToken: String?
    public var prefixListIds: ValueStringList?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil,
                prefixListIds: ValueStringList? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.prefixListIds = prefixListIds
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case filters = "Filter"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case prefixListIds = "PrefixListId"
    }

    public func validate() throws {
    }
}

public struct DescribePrefixListsResult: Codable, Equatable {
    public var nextToken: String?
    public var prefixLists: PrefixListSet?

    public init(nextToken: String? = nil,
                prefixLists: PrefixListSet? = nil) {
        self.nextToken = nextToken
        self.prefixLists = prefixLists
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case prefixLists = "prefixListSet"
    }

    public func validate() throws {
    }
}

public struct DescribePrincipalIdFormatRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var maxResults: Integer?
    public var nextToken: String?
    public var resources: ResourceList?

    public init(dryRun: Boolean? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil,
                resources: ResourceList? = nil) {
        self.dryRun = dryRun
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.resources = resources
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case resources = "Resource"
    }

    public func validate() throws {
    }
}

public struct DescribePrincipalIdFormatResult: Codable, Equatable {
    public var nextToken: String?
    public var principals: PrincipalIdFormatList?

    public init(nextToken: String? = nil,
                principals: PrincipalIdFormatList? = nil) {
        self.nextToken = nextToken
        self.principals = principals
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case principals = "principalSet"
    }

    public func validate() throws {
    }
}

public struct DescribePublicIpv4PoolsRequest: Codable, Equatable {
    public var maxResults: PoolMaxResults?
    public var nextToken: NextToken?
    public var poolIds: ValueStringList?

    public init(maxResults: PoolMaxResults? = nil,
                nextToken: NextToken? = nil,
                poolIds: ValueStringList? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.poolIds = poolIds
    }

    enum CodingKeys: String, CodingKey {
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case poolIds = "PoolId"
    }

    public func validate() throws {
        try maxResults?.validateAsPoolMaxResults()
        try nextToken?.validateAsNextToken()
    }
}

public struct DescribePublicIpv4PoolsResult: Codable, Equatable {
    public var nextToken: String?
    public var publicIpv4Pools: PublicIpv4PoolSet?

    public init(nextToken: String? = nil,
                publicIpv4Pools: PublicIpv4PoolSet? = nil) {
        self.nextToken = nextToken
        self.publicIpv4Pools = publicIpv4Pools
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case publicIpv4Pools = "publicIpv4PoolSet"
    }

    public func validate() throws {
    }
}

public struct DescribeRegionsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var regionNames: RegionNameStringList?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                regionNames: RegionNameStringList? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.regionNames = regionNames
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case filters = "Filter"
        case regionNames = "RegionName"
    }

    public func validate() throws {
    }
}

public struct DescribeRegionsResult: Codable, Equatable {
    public var regions: RegionList?

    public init(regions: RegionList? = nil) {
        self.regions = regions
    }

    enum CodingKeys: String, CodingKey {
        case regions = "regionInfo"
    }

    public func validate() throws {
    }
}

public struct DescribeReservedInstancesListingsRequest: Codable, Equatable {
    public var filters: FilterList?
    public var reservedInstancesId: String?
    public var reservedInstancesListingId: String?

    public init(filters: FilterList? = nil,
                reservedInstancesId: String? = nil,
                reservedInstancesListingId: String? = nil) {
        self.filters = filters
        self.reservedInstancesId = reservedInstancesId
        self.reservedInstancesListingId = reservedInstancesListingId
    }

    enum CodingKeys: String, CodingKey {
        case filters = "Filter"
        case reservedInstancesId
        case reservedInstancesListingId
    }

    public func validate() throws {
    }
}

public struct DescribeReservedInstancesListingsResult: Codable, Equatable {
    public var reservedInstancesListings: ReservedInstancesListingList?

    public init(reservedInstancesListings: ReservedInstancesListingList? = nil) {
        self.reservedInstancesListings = reservedInstancesListings
    }

    enum CodingKeys: String, CodingKey {
        case reservedInstancesListings = "reservedInstancesListingsSet"
    }

    public func validate() throws {
    }
}

public struct DescribeReservedInstancesModificationsRequest: Codable, Equatable {
    public var filters: FilterList?
    public var nextToken: String?
    public var reservedInstancesModificationIds: ReservedInstancesModificationIdStringList?

    public init(filters: FilterList? = nil,
                nextToken: String? = nil,
                reservedInstancesModificationIds: ReservedInstancesModificationIdStringList? = nil) {
        self.filters = filters
        self.nextToken = nextToken
        self.reservedInstancesModificationIds = reservedInstancesModificationIds
    }

    enum CodingKeys: String, CodingKey {
        case filters = "Filter"
        case nextToken
        case reservedInstancesModificationIds = "ReservedInstancesModificationId"
    }

    public func validate() throws {
    }
}

public struct DescribeReservedInstancesModificationsResult: Codable, Equatable {
    public var nextToken: String?
    public var reservedInstancesModifications: ReservedInstancesModificationList?

    public init(nextToken: String? = nil,
                reservedInstancesModifications: ReservedInstancesModificationList? = nil) {
        self.nextToken = nextToken
        self.reservedInstancesModifications = reservedInstancesModifications
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case reservedInstancesModifications = "reservedInstancesModificationsSet"
    }

    public func validate() throws {
    }
}

public struct DescribeReservedInstancesOfferingsRequest: Codable, Equatable {
    public var availabilityZone: String?
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var includeMarketplace: Boolean?
    public var instanceTenancy: Tenancy?
    public var instanceType: InstanceType?
    public var maxDuration: Long?
    public var maxInstanceCount: Integer?
    public var maxResults: Integer?
    public var minDuration: Long?
    public var nextToken: String?
    public var offeringClass: OfferingClassType?
    public var offeringType: OfferingTypeValues?
    public var productDescription: RIProductDescription?
    public var reservedInstancesOfferingIds: ReservedInstancesOfferingIdStringList?

    public init(availabilityZone: String? = nil,
                dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                includeMarketplace: Boolean? = nil,
                instanceTenancy: Tenancy? = nil,
                instanceType: InstanceType? = nil,
                maxDuration: Long? = nil,
                maxInstanceCount: Integer? = nil,
                maxResults: Integer? = nil,
                minDuration: Long? = nil,
                nextToken: String? = nil,
                offeringClass: OfferingClassType? = nil,
                offeringType: OfferingTypeValues? = nil,
                productDescription: RIProductDescription? = nil,
                reservedInstancesOfferingIds: ReservedInstancesOfferingIdStringList? = nil) {
        self.availabilityZone = availabilityZone
        self.dryRun = dryRun
        self.filters = filters
        self.includeMarketplace = includeMarketplace
        self.instanceTenancy = instanceTenancy
        self.instanceType = instanceType
        self.maxDuration = maxDuration
        self.maxInstanceCount = maxInstanceCount
        self.maxResults = maxResults
        self.minDuration = minDuration
        self.nextToken = nextToken
        self.offeringClass = offeringClass
        self.offeringType = offeringType
        self.productDescription = productDescription
        self.reservedInstancesOfferingIds = reservedInstancesOfferingIds
    }

    enum CodingKeys: String, CodingKey {
        case availabilityZone = "AvailabilityZone"
        case dryRun
        case filters = "Filter"
        case includeMarketplace = "IncludeMarketplace"
        case instanceTenancy
        case instanceType = "InstanceType"
        case maxDuration = "MaxDuration"
        case maxInstanceCount = "MaxInstanceCount"
        case maxResults
        case minDuration = "MinDuration"
        case nextToken
        case offeringClass = "OfferingClass"
        case offeringType
        case productDescription = "ProductDescription"
        case reservedInstancesOfferingIds = "ReservedInstancesOfferingId"
    }

    public func validate() throws {
    }
}

public struct DescribeReservedInstancesOfferingsResult: Codable, Equatable {
    public var nextToken: String?
    public var reservedInstancesOfferings: ReservedInstancesOfferingList?

    public init(nextToken: String? = nil,
                reservedInstancesOfferings: ReservedInstancesOfferingList? = nil) {
        self.nextToken = nextToken
        self.reservedInstancesOfferings = reservedInstancesOfferings
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case reservedInstancesOfferings = "reservedInstancesOfferingsSet"
    }

    public func validate() throws {
    }
}

public struct DescribeReservedInstancesRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var offeringClass: OfferingClassType?
    public var offeringType: OfferingTypeValues?
    public var reservedInstancesIds: ReservedInstancesIdStringList?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                offeringClass: OfferingClassType? = nil,
                offeringType: OfferingTypeValues? = nil,
                reservedInstancesIds: ReservedInstancesIdStringList? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.offeringClass = offeringClass
        self.offeringType = offeringType
        self.reservedInstancesIds = reservedInstancesIds
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case filters = "Filter"
        case offeringClass = "OfferingClass"
        case offeringType
        case reservedInstancesIds = "ReservedInstancesId"
    }

    public func validate() throws {
    }
}

public struct DescribeReservedInstancesResult: Codable, Equatable {
    public var reservedInstances: ReservedInstancesList?

    public init(reservedInstances: ReservedInstancesList? = nil) {
        self.reservedInstances = reservedInstances
    }

    enum CodingKeys: String, CodingKey {
        case reservedInstances = "reservedInstancesSet"
    }

    public func validate() throws {
    }
}

public struct DescribeRouteTablesRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: DescribeRouteTablesMaxResults?
    public var nextToken: String?
    public var routeTableIds: ValueStringList?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: DescribeRouteTablesMaxResults? = nil,
                nextToken: String? = nil,
                routeTableIds: ValueStringList? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.routeTableIds = routeTableIds
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case filters = "Filter"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case routeTableIds = "RouteTableId"
    }

    public func validate() throws {
        try maxResults?.validateAsDescribeRouteTablesMaxResults()
    }
}

public struct DescribeRouteTablesResult: Codable, Equatable {
    public var nextToken: String?
    public var routeTables: RouteTableList?

    public init(nextToken: String? = nil,
                routeTables: RouteTableList? = nil) {
        self.nextToken = nextToken
        self.routeTables = routeTables
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case routeTables = "routeTableSet"
    }

    public func validate() throws {
    }
}

public struct DescribeScheduledInstanceAvailabilityRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var firstSlotStartTimeRange: SlotDateTimeRangeRequest
    public var maxResults: Integer?
    public var maxSlotDurationInHours: Integer?
    public var minSlotDurationInHours: Integer?
    public var nextToken: String?
    public var recurrence: ScheduledInstanceRecurrenceRequest

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                firstSlotStartTimeRange: SlotDateTimeRangeRequest,
                maxResults: Integer? = nil,
                maxSlotDurationInHours: Integer? = nil,
                minSlotDurationInHours: Integer? = nil,
                nextToken: String? = nil,
                recurrence: ScheduledInstanceRecurrenceRequest) {
        self.dryRun = dryRun
        self.filters = filters
        self.firstSlotStartTimeRange = firstSlotStartTimeRange
        self.maxResults = maxResults
        self.maxSlotDurationInHours = maxSlotDurationInHours
        self.minSlotDurationInHours = minSlotDurationInHours
        self.nextToken = nextToken
        self.recurrence = recurrence
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case filters = "Filter"
        case firstSlotStartTimeRange = "FirstSlotStartTimeRange"
        case maxResults = "MaxResults"
        case maxSlotDurationInHours = "MaxSlotDurationInHours"
        case minSlotDurationInHours = "MinSlotDurationInHours"
        case nextToken = "NextToken"
        case recurrence = "Recurrence"
    }

    public func validate() throws {
        try firstSlotStartTimeRange.validate()
        try recurrence.validate()
    }
}

public struct DescribeScheduledInstanceAvailabilityResult: Codable, Equatable {
    public var nextToken: String?
    public var scheduledInstanceAvailabilitySet: ScheduledInstanceAvailabilitySet?

    public init(nextToken: String? = nil,
                scheduledInstanceAvailabilitySet: ScheduledInstanceAvailabilitySet? = nil) {
        self.nextToken = nextToken
        self.scheduledInstanceAvailabilitySet = scheduledInstanceAvailabilitySet
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case scheduledInstanceAvailabilitySet
    }

    public func validate() throws {
    }
}

public struct DescribeScheduledInstancesRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: Integer?
    public var nextToken: String?
    public var scheduledInstanceIds: ScheduledInstanceIdRequestSet?
    public var slotStartTimeRange: SlotStartTimeRangeRequest?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil,
                scheduledInstanceIds: ScheduledInstanceIdRequestSet? = nil,
                slotStartTimeRange: SlotStartTimeRangeRequest? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.scheduledInstanceIds = scheduledInstanceIds
        self.slotStartTimeRange = slotStartTimeRange
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case filters = "Filter"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case scheduledInstanceIds = "ScheduledInstanceId"
        case slotStartTimeRange = "SlotStartTimeRange"
    }

    public func validate() throws {
        try slotStartTimeRange?.validate()
    }
}

public struct DescribeScheduledInstancesResult: Codable, Equatable {
    public var nextToken: String?
    public var scheduledInstanceSet: ScheduledInstanceSet?

    public init(nextToken: String? = nil,
                scheduledInstanceSet: ScheduledInstanceSet? = nil) {
        self.nextToken = nextToken
        self.scheduledInstanceSet = scheduledInstanceSet
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case scheduledInstanceSet
    }

    public func validate() throws {
    }
}

public struct DescribeSecurityGroupReferencesRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var groupId: GroupIds

    public init(dryRun: Boolean? = nil,
                groupId: GroupIds) {
        self.dryRun = dryRun
        self.groupId = groupId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case groupId = "GroupId"
    }

    public func validate() throws {
    }
}

public struct DescribeSecurityGroupReferencesResult: Codable, Equatable {
    public var securityGroupReferenceSet: SecurityGroupReferences?

    public init(securityGroupReferenceSet: SecurityGroupReferences? = nil) {
        self.securityGroupReferenceSet = securityGroupReferenceSet
    }

    enum CodingKeys: String, CodingKey {
        case securityGroupReferenceSet
    }

    public func validate() throws {
    }
}

public struct DescribeSecurityGroupsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var groupIds: GroupIdStringList?
    public var groupNames: GroupNameStringList?
    public var maxResults: DescribeSecurityGroupsMaxResults?
    public var nextToken: String?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                groupIds: GroupIdStringList? = nil,
                groupNames: GroupNameStringList? = nil,
                maxResults: DescribeSecurityGroupsMaxResults? = nil,
                nextToken: String? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.groupIds = groupIds
        self.groupNames = groupNames
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case filters = "Filter"
        case groupIds = "GroupId"
        case groupNames = "GroupName"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try maxResults?.validateAsDescribeSecurityGroupsMaxResults()
    }
}

public struct DescribeSecurityGroupsResult: Codable, Equatable {
    public var nextToken: String?
    public var securityGroups: SecurityGroupList?

    public init(nextToken: String? = nil,
                securityGroups: SecurityGroupList? = nil) {
        self.nextToken = nextToken
        self.securityGroups = securityGroups
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case securityGroups = "securityGroupInfo"
    }

    public func validate() throws {
    }
}

public struct DescribeSnapshotAttributeRequest: Codable, Equatable {
    public var attribute: SnapshotAttributeName
    public var dryRun: Boolean?
    public var snapshotId: String

    public init(attribute: SnapshotAttributeName,
                dryRun: Boolean? = nil,
                snapshotId: String) {
        self.attribute = attribute
        self.dryRun = dryRun
        self.snapshotId = snapshotId
    }

    enum CodingKeys: String, CodingKey {
        case attribute = "Attribute"
        case dryRun
        case snapshotId = "SnapshotId"
    }

    public func validate() throws {
    }
}

public struct DescribeSnapshotAttributeResult: Codable, Equatable {
    public var createVolumePermissions: CreateVolumePermissionList?
    public var productCodes: ProductCodeList?
    public var snapshotId: String?

    public init(createVolumePermissions: CreateVolumePermissionList? = nil,
                productCodes: ProductCodeList? = nil,
                snapshotId: String? = nil) {
        self.createVolumePermissions = createVolumePermissions
        self.productCodes = productCodes
        self.snapshotId = snapshotId
    }

    enum CodingKeys: String, CodingKey {
        case createVolumePermissions = "createVolumePermission"
        case productCodes
        case snapshotId
    }

    public func validate() throws {
    }
}

public struct DescribeSnapshotsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: Integer?
    public var nextToken: String?
    public var ownerIds: OwnerStringList?
    public var restorableByUserIds: RestorableByStringList?
    public var snapshotIds: SnapshotIdStringList?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil,
                ownerIds: OwnerStringList? = nil,
                restorableByUserIds: RestorableByStringList? = nil,
                snapshotIds: SnapshotIdStringList? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.ownerIds = ownerIds
        self.restorableByUserIds = restorableByUserIds
        self.snapshotIds = snapshotIds
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case filters = "Filter"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case ownerIds = "Owner"
        case restorableByUserIds = "RestorableBy"
        case snapshotIds = "SnapshotId"
    }

    public func validate() throws {
    }
}

public struct DescribeSnapshotsResult: Codable, Equatable {
    public var nextToken: String?
    public var snapshots: SnapshotList?

    public init(nextToken: String? = nil,
                snapshots: SnapshotList? = nil) {
        self.nextToken = nextToken
        self.snapshots = snapshots
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case snapshots = "snapshotSet"
    }

    public func validate() throws {
    }
}

public struct DescribeSpotDatafeedSubscriptionRequest: Codable, Equatable {
    public var dryRun: Boolean?

    public init(dryRun: Boolean? = nil) {
        self.dryRun = dryRun
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
    }

    public func validate() throws {
    }
}

public struct DescribeSpotDatafeedSubscriptionResult: Codable, Equatable {
    public var spotDatafeedSubscription: SpotDatafeedSubscription?

    public init(spotDatafeedSubscription: SpotDatafeedSubscription? = nil) {
        self.spotDatafeedSubscription = spotDatafeedSubscription
    }

    enum CodingKeys: String, CodingKey {
        case spotDatafeedSubscription
    }

    public func validate() throws {
        try spotDatafeedSubscription?.validate()
    }
}

public struct DescribeSpotFleetInstancesRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var maxResults: Integer?
    public var nextToken: String?
    public var spotFleetRequestId: String

    public init(dryRun: Boolean? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil,
                spotFleetRequestId: String) {
        self.dryRun = dryRun
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.spotFleetRequestId = spotFleetRequestId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case maxResults
        case nextToken
        case spotFleetRequestId
    }

    public func validate() throws {
    }
}

public struct DescribeSpotFleetInstancesResponse: Codable, Equatable {
    public var activeInstances: ActiveInstanceSet?
    public var nextToken: String?
    public var spotFleetRequestId: String?

    public init(activeInstances: ActiveInstanceSet? = nil,
                nextToken: String? = nil,
                spotFleetRequestId: String? = nil) {
        self.activeInstances = activeInstances
        self.nextToken = nextToken
        self.spotFleetRequestId = spotFleetRequestId
    }

    enum CodingKeys: String, CodingKey {
        case activeInstances = "activeInstanceSet"
        case nextToken
        case spotFleetRequestId
    }

    public func validate() throws {
    }
}

public struct DescribeSpotFleetRequestHistoryRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var eventType: EventType?
    public var maxResults: Integer?
    public var nextToken: String?
    public var spotFleetRequestId: String
    public var startTime: DateTime

    public init(dryRun: Boolean? = nil,
                eventType: EventType? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil,
                spotFleetRequestId: String,
                startTime: DateTime) {
        self.dryRun = dryRun
        self.eventType = eventType
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.spotFleetRequestId = spotFleetRequestId
        self.startTime = startTime
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case eventType
        case maxResults
        case nextToken
        case spotFleetRequestId
        case startTime
    }

    public func validate() throws {
    }
}

public struct DescribeSpotFleetRequestHistoryResponse: Codable, Equatable {
    public var historyRecords: HistoryRecords?
    public var lastEvaluatedTime: DateTime?
    public var nextToken: String?
    public var spotFleetRequestId: String?
    public var startTime: DateTime?

    public init(historyRecords: HistoryRecords? = nil,
                lastEvaluatedTime: DateTime? = nil,
                nextToken: String? = nil,
                spotFleetRequestId: String? = nil,
                startTime: DateTime? = nil) {
        self.historyRecords = historyRecords
        self.lastEvaluatedTime = lastEvaluatedTime
        self.nextToken = nextToken
        self.spotFleetRequestId = spotFleetRequestId
        self.startTime = startTime
    }

    enum CodingKeys: String, CodingKey {
        case historyRecords = "historyRecordSet"
        case lastEvaluatedTime
        case nextToken
        case spotFleetRequestId
        case startTime
    }

    public func validate() throws {
    }
}

public struct DescribeSpotFleetRequestsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var maxResults: Integer?
    public var nextToken: String?
    public var spotFleetRequestIds: ValueStringList?

    public init(dryRun: Boolean? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil,
                spotFleetRequestIds: ValueStringList? = nil) {
        self.dryRun = dryRun
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.spotFleetRequestIds = spotFleetRequestIds
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case maxResults
        case nextToken
        case spotFleetRequestIds = "spotFleetRequestId"
    }

    public func validate() throws {
    }
}

public struct DescribeSpotFleetRequestsResponse: Codable, Equatable {
    public var nextToken: String?
    public var spotFleetRequestConfigs: SpotFleetRequestConfigSet?

    public init(nextToken: String? = nil,
                spotFleetRequestConfigs: SpotFleetRequestConfigSet? = nil) {
        self.nextToken = nextToken
        self.spotFleetRequestConfigs = spotFleetRequestConfigs
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case spotFleetRequestConfigs = "spotFleetRequestConfigSet"
    }

    public func validate() throws {
    }
}

public struct DescribeSpotInstanceRequestsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: Integer?
    public var nextToken: String?
    public var spotInstanceRequestIds: SpotInstanceRequestIdList?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil,
                spotInstanceRequestIds: SpotInstanceRequestIdList? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.spotInstanceRequestIds = spotInstanceRequestIds
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case filters = "Filter"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case spotInstanceRequestIds = "SpotInstanceRequestId"
    }

    public func validate() throws {
    }
}

public struct DescribeSpotInstanceRequestsResult: Codable, Equatable {
    public var nextToken: String?
    public var spotInstanceRequests: SpotInstanceRequestList?

    public init(nextToken: String? = nil,
                spotInstanceRequests: SpotInstanceRequestList? = nil) {
        self.nextToken = nextToken
        self.spotInstanceRequests = spotInstanceRequests
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case spotInstanceRequests = "spotInstanceRequestSet"
    }

    public func validate() throws {
    }
}

public struct DescribeSpotPriceHistoryRequest: Codable, Equatable {
    public var availabilityZone: String?
    public var dryRun: Boolean?
    public var endTime: DateTime?
    public var filters: FilterList?
    public var instanceTypes: InstanceTypeList?
    public var maxResults: Integer?
    public var nextToken: String?
    public var productDescriptions: ProductDescriptionList?
    public var startTime: DateTime?

    public init(availabilityZone: String? = nil,
                dryRun: Boolean? = nil,
                endTime: DateTime? = nil,
                filters: FilterList? = nil,
                instanceTypes: InstanceTypeList? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil,
                productDescriptions: ProductDescriptionList? = nil,
                startTime: DateTime? = nil) {
        self.availabilityZone = availabilityZone
        self.dryRun = dryRun
        self.endTime = endTime
        self.filters = filters
        self.instanceTypes = instanceTypes
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.productDescriptions = productDescriptions
        self.startTime = startTime
    }

    enum CodingKeys: String, CodingKey {
        case availabilityZone
        case dryRun
        case endTime
        case filters = "Filter"
        case instanceTypes = "InstanceType"
        case maxResults
        case nextToken
        case productDescriptions = "ProductDescription"
        case startTime
    }

    public func validate() throws {
    }
}

public struct DescribeSpotPriceHistoryResult: Codable, Equatable {
    public var nextToken: String?
    public var spotPriceHistory: SpotPriceHistoryList?

    public init(nextToken: String? = nil,
                spotPriceHistory: SpotPriceHistoryList? = nil) {
        self.nextToken = nextToken
        self.spotPriceHistory = spotPriceHistory
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case spotPriceHistory = "spotPriceHistorySet"
    }

    public func validate() throws {
    }
}

public struct DescribeStaleSecurityGroupsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var maxResults: DescribeStaleSecurityGroupsMaxResults?
    public var nextToken: DescribeStaleSecurityGroupsNextToken?
    public var vpcId: String

    public init(dryRun: Boolean? = nil,
                maxResults: DescribeStaleSecurityGroupsMaxResults? = nil,
                nextToken: DescribeStaleSecurityGroupsNextToken? = nil,
                vpcId: String) {
        self.dryRun = dryRun
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case vpcId = "VpcId"
    }

    public func validate() throws {
        try maxResults?.validateAsDescribeStaleSecurityGroupsMaxResults()
        try nextToken?.validateAsDescribeStaleSecurityGroupsNextToken()
    }
}

public struct DescribeStaleSecurityGroupsResult: Codable, Equatable {
    public var nextToken: String?
    public var staleSecurityGroupSet: StaleSecurityGroupSet?

    public init(nextToken: String? = nil,
                staleSecurityGroupSet: StaleSecurityGroupSet? = nil) {
        self.nextToken = nextToken
        self.staleSecurityGroupSet = staleSecurityGroupSet
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case staleSecurityGroupSet
    }

    public func validate() throws {
    }
}

public struct DescribeSubnetsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: DescribeSubnetsMaxResults?
    public var nextToken: String?
    public var subnetIds: SubnetIdStringList?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: DescribeSubnetsMaxResults? = nil,
                nextToken: String? = nil,
                subnetIds: SubnetIdStringList? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.subnetIds = subnetIds
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case filters = "Filter"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case subnetIds = "SubnetId"
    }

    public func validate() throws {
        try maxResults?.validateAsDescribeSubnetsMaxResults()
    }
}

public struct DescribeSubnetsResult: Codable, Equatable {
    public var nextToken: String?
    public var subnets: SubnetList?

    public init(nextToken: String? = nil,
                subnets: SubnetList? = nil) {
        self.nextToken = nextToken
        self.subnets = subnets
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case subnets = "subnetSet"
    }

    public func validate() throws {
    }
}

public struct DescribeTagsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: Integer?
    public var nextToken: String?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case filters = "Filter"
        case maxResults
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeTagsResult: Codable, Equatable {
    public var nextToken: String?
    public var tags: TagDescriptionList?

    public init(nextToken: String? = nil,
                tags: TagDescriptionList? = nil) {
        self.nextToken = nextToken
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case tags = "tagSet"
    }

    public func validate() throws {
    }
}

public struct DescribeTransitGatewayAttachmentsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: TransitGatewayMaxResults?
    public var nextToken: String?
    public var transitGatewayAttachmentIds: TransitGatewayAttachmentIdStringList?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: TransitGatewayMaxResults? = nil,
                nextToken: String? = nil,
                transitGatewayAttachmentIds: TransitGatewayAttachmentIdStringList? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.transitGatewayAttachmentIds = transitGatewayAttachmentIds
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case filters = "Filter"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case transitGatewayAttachmentIds = "TransitGatewayAttachmentIds"
    }

    public func validate() throws {
        try maxResults?.validateAsTransitGatewayMaxResults()
    }
}

public struct DescribeTransitGatewayAttachmentsResult: Codable, Equatable {
    public var nextToken: String?
    public var transitGatewayAttachments: TransitGatewayAttachmentList?

    public init(nextToken: String? = nil,
                transitGatewayAttachments: TransitGatewayAttachmentList? = nil) {
        self.nextToken = nextToken
        self.transitGatewayAttachments = transitGatewayAttachments
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case transitGatewayAttachments
    }

    public func validate() throws {
    }
}

public struct DescribeTransitGatewayRouteTablesRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: TransitGatewayMaxResults?
    public var nextToken: String?
    public var transitGatewayRouteTableIds: TransitGatewayRouteTableIdStringList?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: TransitGatewayMaxResults? = nil,
                nextToken: String? = nil,
                transitGatewayRouteTableIds: TransitGatewayRouteTableIdStringList? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.transitGatewayRouteTableIds = transitGatewayRouteTableIds
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case filters = "Filter"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case transitGatewayRouteTableIds = "TransitGatewayRouteTableIds"
    }

    public func validate() throws {
        try maxResults?.validateAsTransitGatewayMaxResults()
    }
}

public struct DescribeTransitGatewayRouteTablesResult: Codable, Equatable {
    public var nextToken: String?
    public var transitGatewayRouteTables: TransitGatewayRouteTableList?

    public init(nextToken: String? = nil,
                transitGatewayRouteTables: TransitGatewayRouteTableList? = nil) {
        self.nextToken = nextToken
        self.transitGatewayRouteTables = transitGatewayRouteTables
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case transitGatewayRouteTables
    }

    public func validate() throws {
    }
}

public struct DescribeTransitGatewayVpcAttachmentsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: TransitGatewayMaxResults?
    public var nextToken: String?
    public var transitGatewayAttachmentIds: TransitGatewayAttachmentIdStringList?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: TransitGatewayMaxResults? = nil,
                nextToken: String? = nil,
                transitGatewayAttachmentIds: TransitGatewayAttachmentIdStringList? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.transitGatewayAttachmentIds = transitGatewayAttachmentIds
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case filters = "Filter"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case transitGatewayAttachmentIds = "TransitGatewayAttachmentIds"
    }

    public func validate() throws {
        try maxResults?.validateAsTransitGatewayMaxResults()
    }
}

public struct DescribeTransitGatewayVpcAttachmentsResult: Codable, Equatable {
    public var nextToken: String?
    public var transitGatewayVpcAttachments: TransitGatewayVpcAttachmentList?

    public init(nextToken: String? = nil,
                transitGatewayVpcAttachments: TransitGatewayVpcAttachmentList? = nil) {
        self.nextToken = nextToken
        self.transitGatewayVpcAttachments = transitGatewayVpcAttachments
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case transitGatewayVpcAttachments
    }

    public func validate() throws {
    }
}

public struct DescribeTransitGatewaysRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: TransitGatewayMaxResults?
    public var nextToken: String?
    public var transitGatewayIds: TransitGatewayIdStringList?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: TransitGatewayMaxResults? = nil,
                nextToken: String? = nil,
                transitGatewayIds: TransitGatewayIdStringList? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.transitGatewayIds = transitGatewayIds
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case filters = "Filter"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case transitGatewayIds = "TransitGatewayIds"
    }

    public func validate() throws {
        try maxResults?.validateAsTransitGatewayMaxResults()
    }
}

public struct DescribeTransitGatewaysResult: Codable, Equatable {
    public var nextToken: String?
    public var transitGateways: TransitGatewayList?

    public init(nextToken: String? = nil,
                transitGateways: TransitGatewayList? = nil) {
        self.nextToken = nextToken
        self.transitGateways = transitGateways
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case transitGateways = "transitGatewaySet"
    }

    public func validate() throws {
    }
}

public struct DescribeVolumeAttributeRequest: Codable, Equatable {
    public var attribute: VolumeAttributeName
    public var dryRun: Boolean?
    public var volumeId: String

    public init(attribute: VolumeAttributeName,
                dryRun: Boolean? = nil,
                volumeId: String) {
        self.attribute = attribute
        self.dryRun = dryRun
        self.volumeId = volumeId
    }

    enum CodingKeys: String, CodingKey {
        case attribute = "Attribute"
        case dryRun
        case volumeId = "VolumeId"
    }

    public func validate() throws {
    }
}

public struct DescribeVolumeAttributeResult: Codable, Equatable {
    public var autoEnableIO: AttributeBooleanValue?
    public var productCodes: ProductCodeList?
    public var volumeId: String?

    public init(autoEnableIO: AttributeBooleanValue? = nil,
                productCodes: ProductCodeList? = nil,
                volumeId: String? = nil) {
        self.autoEnableIO = autoEnableIO
        self.productCodes = productCodes
        self.volumeId = volumeId
    }

    enum CodingKeys: String, CodingKey {
        case autoEnableIO
        case productCodes
        case volumeId
    }

    public func validate() throws {
        try autoEnableIO?.validate()
    }
}

public struct DescribeVolumeStatusRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: Integer?
    public var nextToken: String?
    public var volumeIds: VolumeIdStringList?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil,
                volumeIds: VolumeIdStringList? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.volumeIds = volumeIds
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case filters = "Filter"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case volumeIds = "VolumeId"
    }

    public func validate() throws {
    }
}

public struct DescribeVolumeStatusResult: Codable, Equatable {
    public var nextToken: String?
    public var volumeStatuses: VolumeStatusList?

    public init(nextToken: String? = nil,
                volumeStatuses: VolumeStatusList? = nil) {
        self.nextToken = nextToken
        self.volumeStatuses = volumeStatuses
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case volumeStatuses = "volumeStatusSet"
    }

    public func validate() throws {
    }
}

public struct DescribeVolumesModificationsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: Integer?
    public var nextToken: String?
    public var volumeIds: VolumeIdStringList?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil,
                volumeIds: VolumeIdStringList? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.volumeIds = volumeIds
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case filters = "Filter"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case volumeIds = "VolumeId"
    }

    public func validate() throws {
    }
}

public struct DescribeVolumesModificationsResult: Codable, Equatable {
    public var nextToken: String?
    public var volumesModifications: VolumeModificationList?

    public init(nextToken: String? = nil,
                volumesModifications: VolumeModificationList? = nil) {
        self.nextToken = nextToken
        self.volumesModifications = volumesModifications
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case volumesModifications = "volumeModificationSet"
    }

    public func validate() throws {
    }
}

public struct DescribeVolumesRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: Integer?
    public var nextToken: String?
    public var volumeIds: VolumeIdStringList?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil,
                volumeIds: VolumeIdStringList? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.volumeIds = volumeIds
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case filters = "Filter"
        case maxResults
        case nextToken
        case volumeIds = "VolumeId"
    }

    public func validate() throws {
    }
}

public struct DescribeVolumesResult: Codable, Equatable {
    public var nextToken: String?
    public var volumes: VolumeList?

    public init(nextToken: String? = nil,
                volumes: VolumeList? = nil) {
        self.nextToken = nextToken
        self.volumes = volumes
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case volumes = "volumeSet"
    }

    public func validate() throws {
    }
}

public struct DescribeVpcAttributeRequest: Codable, Equatable {
    public var attribute: VpcAttributeName
    public var dryRun: Boolean?
    public var vpcId: String

    public init(attribute: VpcAttributeName,
                dryRun: Boolean? = nil,
                vpcId: String) {
        self.attribute = attribute
        self.dryRun = dryRun
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case attribute = "Attribute"
        case dryRun
        case vpcId = "VpcId"
    }

    public func validate() throws {
    }
}

public struct DescribeVpcAttributeResult: Codable, Equatable {
    public var enableDnsHostnames: AttributeBooleanValue?
    public var enableDnsSupport: AttributeBooleanValue?
    public var vpcId: String?

    public init(enableDnsHostnames: AttributeBooleanValue? = nil,
                enableDnsSupport: AttributeBooleanValue? = nil,
                vpcId: String? = nil) {
        self.enableDnsHostnames = enableDnsHostnames
        self.enableDnsSupport = enableDnsSupport
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case enableDnsHostnames
        case enableDnsSupport
        case vpcId
    }

    public func validate() throws {
        try enableDnsHostnames?.validate()
        try enableDnsSupport?.validate()
    }
}

public struct DescribeVpcClassicLinkDnsSupportRequest: Codable, Equatable {
    public var maxResults: MaxResults?
    public var nextToken: NextToken?
    public var vpcIds: VpcClassicLinkIdList?

    public init(maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil,
                vpcIds: VpcClassicLinkIdList? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.vpcIds = vpcIds
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
        case vpcIds = "VpcIds"
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
    }
}

public struct DescribeVpcClassicLinkDnsSupportResult: Codable, Equatable {
    public var nextToken: NextToken?
    public var vpcs: ClassicLinkDnsSupportList?

    public init(nextToken: NextToken? = nil,
                vpcs: ClassicLinkDnsSupportList? = nil) {
        self.nextToken = nextToken
        self.vpcs = vpcs
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case vpcs
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct DescribeVpcClassicLinkRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var vpcIds: VpcClassicLinkIdList?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                vpcIds: VpcClassicLinkIdList? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.vpcIds = vpcIds
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case filters = "Filter"
        case vpcIds = "VpcId"
    }

    public func validate() throws {
    }
}

public struct DescribeVpcClassicLinkResult: Codable, Equatable {
    public var vpcs: VpcClassicLinkList?

    public init(vpcs: VpcClassicLinkList? = nil) {
        self.vpcs = vpcs
    }

    enum CodingKeys: String, CodingKey {
        case vpcs = "vpcSet"
    }

    public func validate() throws {
    }
}

public struct DescribeVpcEndpointConnectionNotificationsRequest: Codable, Equatable {
    public var connectionNotificationId: String?
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: Integer?
    public var nextToken: String?

    public init(connectionNotificationId: String? = nil,
                dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil) {
        self.connectionNotificationId = connectionNotificationId
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case connectionNotificationId = "ConnectionNotificationId"
        case dryRun = "DryRun"
        case filters = "Filter"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func validate() throws {
    }
}

public struct DescribeVpcEndpointConnectionNotificationsResult: Codable, Equatable {
    public var connectionNotificationSet: ConnectionNotificationSet?
    public var nextToken: String?

    public init(connectionNotificationSet: ConnectionNotificationSet? = nil,
                nextToken: String? = nil) {
        self.connectionNotificationSet = connectionNotificationSet
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case connectionNotificationSet
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeVpcEndpointConnectionsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: Integer?
    public var nextToken: String?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case filters = "Filter"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func validate() throws {
    }
}

public struct DescribeVpcEndpointConnectionsResult: Codable, Equatable {
    public var nextToken: String?
    public var vpcEndpointConnections: VpcEndpointConnectionSet?

    public init(nextToken: String? = nil,
                vpcEndpointConnections: VpcEndpointConnectionSet? = nil) {
        self.nextToken = nextToken
        self.vpcEndpointConnections = vpcEndpointConnections
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case vpcEndpointConnections = "vpcEndpointConnectionSet"
    }

    public func validate() throws {
    }
}

public struct DescribeVpcEndpointServiceConfigurationsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: Integer?
    public var nextToken: String?
    public var serviceIds: ValueStringList?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil,
                serviceIds: ValueStringList? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.serviceIds = serviceIds
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case filters = "Filter"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case serviceIds = "ServiceId"
    }

    public func validate() throws {
    }
}

public struct DescribeVpcEndpointServiceConfigurationsResult: Codable, Equatable {
    public var nextToken: String?
    public var serviceConfigurations: ServiceConfigurationSet?

    public init(nextToken: String? = nil,
                serviceConfigurations: ServiceConfigurationSet? = nil) {
        self.nextToken = nextToken
        self.serviceConfigurations = serviceConfigurations
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case serviceConfigurations = "serviceConfigurationSet"
    }

    public func validate() throws {
    }
}

public struct DescribeVpcEndpointServicePermissionsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: Integer?
    public var nextToken: String?
    public var serviceId: String

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil,
                serviceId: String) {
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.serviceId = serviceId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case filters = "Filter"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case serviceId = "ServiceId"
    }

    public func validate() throws {
    }
}

public struct DescribeVpcEndpointServicePermissionsResult: Codable, Equatable {
    public var allowedPrincipals: AllowedPrincipalSet?
    public var nextToken: String?

    public init(allowedPrincipals: AllowedPrincipalSet? = nil,
                nextToken: String? = nil) {
        self.allowedPrincipals = allowedPrincipals
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case allowedPrincipals
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeVpcEndpointServicesRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: Integer?
    public var nextToken: String?
    public var serviceNames: ValueStringList?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil,
                serviceNames: ValueStringList? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.serviceNames = serviceNames
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case filters = "Filter"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case serviceNames = "ServiceName"
    }

    public func validate() throws {
    }
}

public struct DescribeVpcEndpointServicesResult: Codable, Equatable {
    public var nextToken: String?
    public var serviceDetails: ServiceDetailSet?
    public var serviceNames: ValueStringList?

    public init(nextToken: String? = nil,
                serviceDetails: ServiceDetailSet? = nil,
                serviceNames: ValueStringList? = nil) {
        self.nextToken = nextToken
        self.serviceDetails = serviceDetails
        self.serviceNames = serviceNames
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case serviceDetails = "serviceDetailSet"
        case serviceNames = "serviceNameSet"
    }

    public func validate() throws {
    }
}

public struct DescribeVpcEndpointsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: Integer?
    public var nextToken: String?
    public var vpcEndpointIds: ValueStringList?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil,
                vpcEndpointIds: ValueStringList? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.vpcEndpointIds = vpcEndpointIds
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case filters = "Filter"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case vpcEndpointIds = "VpcEndpointId"
    }

    public func validate() throws {
    }
}

public struct DescribeVpcEndpointsResult: Codable, Equatable {
    public var nextToken: String?
    public var vpcEndpoints: VpcEndpointSet?

    public init(nextToken: String? = nil,
                vpcEndpoints: VpcEndpointSet? = nil) {
        self.nextToken = nextToken
        self.vpcEndpoints = vpcEndpoints
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case vpcEndpoints = "vpcEndpointSet"
    }

    public func validate() throws {
    }
}

public struct DescribeVpcPeeringConnectionsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: DescribeVpcPeeringConnectionsMaxResults?
    public var nextToken: String?
    public var vpcPeeringConnectionIds: ValueStringList?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: DescribeVpcPeeringConnectionsMaxResults? = nil,
                nextToken: String? = nil,
                vpcPeeringConnectionIds: ValueStringList? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.vpcPeeringConnectionIds = vpcPeeringConnectionIds
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case filters = "Filter"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case vpcPeeringConnectionIds = "VpcPeeringConnectionId"
    }

    public func validate() throws {
        try maxResults?.validateAsDescribeVpcPeeringConnectionsMaxResults()
    }
}

public struct DescribeVpcPeeringConnectionsResult: Codable, Equatable {
    public var nextToken: String?
    public var vpcPeeringConnections: VpcPeeringConnectionList?

    public init(nextToken: String? = nil,
                vpcPeeringConnections: VpcPeeringConnectionList? = nil) {
        self.nextToken = nextToken
        self.vpcPeeringConnections = vpcPeeringConnections
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case vpcPeeringConnections = "vpcPeeringConnectionSet"
    }

    public func validate() throws {
    }
}

public struct DescribeVpcsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: DescribeVpcsMaxResults?
    public var nextToken: String?
    public var vpcIds: VpcIdStringList?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: DescribeVpcsMaxResults? = nil,
                nextToken: String? = nil,
                vpcIds: VpcIdStringList? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.vpcIds = vpcIds
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case filters = "Filter"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case vpcIds = "VpcId"
    }

    public func validate() throws {
        try maxResults?.validateAsDescribeVpcsMaxResults()
    }
}

public struct DescribeVpcsResult: Codable, Equatable {
    public var nextToken: String?
    public var vpcs: VpcList?

    public init(nextToken: String? = nil,
                vpcs: VpcList? = nil) {
        self.nextToken = nextToken
        self.vpcs = vpcs
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case vpcs = "vpcSet"
    }

    public func validate() throws {
    }
}

public struct DescribeVpnConnectionsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var vpnConnectionIds: VpnConnectionIdStringList?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                vpnConnectionIds: VpnConnectionIdStringList? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.vpnConnectionIds = vpnConnectionIds
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case filters = "Filter"
        case vpnConnectionIds = "VpnConnectionId"
    }

    public func validate() throws {
    }
}

public struct DescribeVpnConnectionsResult: Codable, Equatable {
    public var vpnConnections: VpnConnectionList?

    public init(vpnConnections: VpnConnectionList? = nil) {
        self.vpnConnections = vpnConnections
    }

    enum CodingKeys: String, CodingKey {
        case vpnConnections = "vpnConnectionSet"
    }

    public func validate() throws {
    }
}

public struct DescribeVpnGatewaysRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var vpnGatewayIds: VpnGatewayIdStringList?

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                vpnGatewayIds: VpnGatewayIdStringList? = nil) {
        self.dryRun = dryRun
        self.filters = filters
        self.vpnGatewayIds = vpnGatewayIds
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case filters = "Filter"
        case vpnGatewayIds = "VpnGatewayId"
    }

    public func validate() throws {
    }
}

public struct DescribeVpnGatewaysResult: Codable, Equatable {
    public var vpnGateways: VpnGatewayList?

    public init(vpnGateways: VpnGatewayList? = nil) {
        self.vpnGateways = vpnGateways
    }

    enum CodingKeys: String, CodingKey {
        case vpnGateways = "vpnGatewaySet"
    }

    public func validate() throws {
    }
}

public struct DetachClassicLinkVpcRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var instanceId: String
    public var vpcId: String

    public init(dryRun: Boolean? = nil,
                instanceId: String,
                vpcId: String) {
        self.dryRun = dryRun
        self.instanceId = instanceId
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case instanceId
        case vpcId
    }

    public func validate() throws {
    }
}

public struct DetachClassicLinkVpcResult: Codable, Equatable {
    public var `return`: Boolean?

    public init(`return`: Boolean? = nil) {
        self.`return` = `return`
    }

    enum CodingKeys: String, CodingKey {
        case `return` = "return"
    }

    public func validate() throws {
    }
}

public struct DetachInternetGatewayRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var internetGatewayId: String
    public var vpcId: String

    public init(dryRun: Boolean? = nil,
                internetGatewayId: String,
                vpcId: String) {
        self.dryRun = dryRun
        self.internetGatewayId = internetGatewayId
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case internetGatewayId
        case vpcId
    }

    public func validate() throws {
    }
}

public struct DetachNetworkInterfaceRequest: Codable, Equatable {
    public var attachmentId: String
    public var dryRun: Boolean?
    public var force: Boolean?

    public init(attachmentId: String,
                dryRun: Boolean? = nil,
                force: Boolean? = nil) {
        self.attachmentId = attachmentId
        self.dryRun = dryRun
        self.force = force
    }

    enum CodingKeys: String, CodingKey {
        case attachmentId
        case dryRun
        case force
    }

    public func validate() throws {
    }
}

public struct DetachVolumeRequest: Codable, Equatable {
    public var device: String?
    public var dryRun: Boolean?
    public var force: Boolean?
    public var instanceId: String?
    public var volumeId: String

    public init(device: String? = nil,
                dryRun: Boolean? = nil,
                force: Boolean? = nil,
                instanceId: String? = nil,
                volumeId: String) {
        self.device = device
        self.dryRun = dryRun
        self.force = force
        self.instanceId = instanceId
        self.volumeId = volumeId
    }

    enum CodingKeys: String, CodingKey {
        case device = "Device"
        case dryRun
        case force = "Force"
        case instanceId = "InstanceId"
        case volumeId = "VolumeId"
    }

    public func validate() throws {
    }
}

public struct DetachVpnGatewayRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var vpcId: String
    public var vpnGatewayId: String

    public init(dryRun: Boolean? = nil,
                vpcId: String,
                vpnGatewayId: String) {
        self.dryRun = dryRun
        self.vpcId = vpcId
        self.vpnGatewayId = vpnGatewayId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case vpcId = "VpcId"
        case vpnGatewayId = "VpnGatewayId"
    }

    public func validate() throws {
    }
}

public struct DhcpConfiguration: Codable, Equatable {
    public var key: String?
    public var values: DhcpConfigurationValueList?

    public init(key: String? = nil,
                values: DhcpConfigurationValueList? = nil) {
        self.key = key
        self.values = values
    }

    enum CodingKeys: String, CodingKey {
        case key
        case values = "valueSet"
    }

    public func validate() throws {
    }
}

public struct DhcpOptions: Codable, Equatable {
    public var dhcpConfigurations: DhcpConfigurationList?
    public var dhcpOptionsId: String?
    public var ownerId: String?
    public var tags: TagList?

    public init(dhcpConfigurations: DhcpConfigurationList? = nil,
                dhcpOptionsId: String? = nil,
                ownerId: String? = nil,
                tags: TagList? = nil) {
        self.dhcpConfigurations = dhcpConfigurations
        self.dhcpOptionsId = dhcpOptionsId
        self.ownerId = ownerId
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case dhcpConfigurations = "dhcpConfigurationSet"
        case dhcpOptionsId
        case ownerId
        case tags = "tagSet"
    }

    public func validate() throws {
    }
}

public struct DirectoryServiceAuthentication: Codable, Equatable {
    public var directoryId: String?

    public init(directoryId: String? = nil) {
        self.directoryId = directoryId
    }

    enum CodingKeys: String, CodingKey {
        case directoryId
    }

    public func validate() throws {
    }
}

public struct DirectoryServiceAuthenticationRequest: Codable, Equatable {
    public var directoryId: String?

    public init(directoryId: String? = nil) {
        self.directoryId = directoryId
    }

    enum CodingKeys: String, CodingKey {
        case directoryId = "DirectoryId"
    }

    public func validate() throws {
    }
}

public struct DisableEbsEncryptionByDefaultRequest: Codable, Equatable {
    public var dryRun: Boolean?

    public init(dryRun: Boolean? = nil) {
        self.dryRun = dryRun
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
    }

    public func validate() throws {
    }
}

public struct DisableEbsEncryptionByDefaultResult: Codable, Equatable {
    public var ebsEncryptionByDefault: Boolean?

    public init(ebsEncryptionByDefault: Boolean? = nil) {
        self.ebsEncryptionByDefault = ebsEncryptionByDefault
    }

    enum CodingKeys: String, CodingKey {
        case ebsEncryptionByDefault
    }

    public func validate() throws {
    }
}

public struct DisableTransitGatewayRouteTablePropagationRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var transitGatewayAttachmentId: String
    public var transitGatewayRouteTableId: String

    public init(dryRun: Boolean? = nil,
                transitGatewayAttachmentId: String,
                transitGatewayRouteTableId: String) {
        self.dryRun = dryRun
        self.transitGatewayAttachmentId = transitGatewayAttachmentId
        self.transitGatewayRouteTableId = transitGatewayRouteTableId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case transitGatewayAttachmentId = "TransitGatewayAttachmentId"
        case transitGatewayRouteTableId = "TransitGatewayRouteTableId"
    }

    public func validate() throws {
    }
}

public struct DisableTransitGatewayRouteTablePropagationResult: Codable, Equatable {
    public var propagation: TransitGatewayPropagation?

    public init(propagation: TransitGatewayPropagation? = nil) {
        self.propagation = propagation
    }

    enum CodingKeys: String, CodingKey {
        case propagation
    }

    public func validate() throws {
        try propagation?.validate()
    }
}

public struct DisableVgwRoutePropagationRequest: Codable, Equatable {
    public var gatewayId: String
    public var routeTableId: String

    public init(gatewayId: String,
                routeTableId: String) {
        self.gatewayId = gatewayId
        self.routeTableId = routeTableId
    }

    enum CodingKeys: String, CodingKey {
        case gatewayId = "GatewayId"
        case routeTableId = "RouteTableId"
    }

    public func validate() throws {
    }
}

public struct DisableVpcClassicLinkDnsSupportRequest: Codable, Equatable {
    public var vpcId: String?

    public init(vpcId: String? = nil) {
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case vpcId = "VpcId"
    }

    public func validate() throws {
    }
}

public struct DisableVpcClassicLinkDnsSupportResult: Codable, Equatable {
    public var `return`: Boolean?

    public init(`return`: Boolean? = nil) {
        self.`return` = `return`
    }

    enum CodingKeys: String, CodingKey {
        case `return` = "return"
    }

    public func validate() throws {
    }
}

public struct DisableVpcClassicLinkRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var vpcId: String

    public init(dryRun: Boolean? = nil,
                vpcId: String) {
        self.dryRun = dryRun
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case vpcId
    }

    public func validate() throws {
    }
}

public struct DisableVpcClassicLinkResult: Codable, Equatable {
    public var `return`: Boolean?

    public init(`return`: Boolean? = nil) {
        self.`return` = `return`
    }

    enum CodingKeys: String, CodingKey {
        case `return` = "return"
    }

    public func validate() throws {
    }
}

public struct DisassociateAddressRequest: Codable, Equatable {
    public var associationId: String?
    public var dryRun: Boolean?
    public var publicIp: String?

    public init(associationId: String? = nil,
                dryRun: Boolean? = nil,
                publicIp: String? = nil) {
        self.associationId = associationId
        self.dryRun = dryRun
        self.publicIp = publicIp
    }

    enum CodingKeys: String, CodingKey {
        case associationId = "AssociationId"
        case dryRun
        case publicIp = "PublicIp"
    }

    public func validate() throws {
    }
}

public struct DisassociateClientVpnTargetNetworkRequest: Codable, Equatable {
    public var associationId: String
    public var clientVpnEndpointId: String
    public var dryRun: Boolean?

    public init(associationId: String,
                clientVpnEndpointId: String,
                dryRun: Boolean? = nil) {
        self.associationId = associationId
        self.clientVpnEndpointId = clientVpnEndpointId
        self.dryRun = dryRun
    }

    enum CodingKeys: String, CodingKey {
        case associationId = "AssociationId"
        case clientVpnEndpointId = "ClientVpnEndpointId"
        case dryRun = "DryRun"
    }

    public func validate() throws {
    }
}

public struct DisassociateClientVpnTargetNetworkResult: Codable, Equatable {
    public var associationId: String?
    public var status: AssociationStatus?

    public init(associationId: String? = nil,
                status: AssociationStatus? = nil) {
        self.associationId = associationId
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case associationId
        case status
    }

    public func validate() throws {
        try status?.validate()
    }
}

public struct DisassociateIamInstanceProfileRequest: Codable, Equatable {
    public var associationId: String

    public init(associationId: String) {
        self.associationId = associationId
    }

    enum CodingKeys: String, CodingKey {
        case associationId = "AssociationId"
    }

    public func validate() throws {
    }
}

public struct DisassociateIamInstanceProfileResult: Codable, Equatable {
    public var iamInstanceProfileAssociation: IamInstanceProfileAssociation?

    public init(iamInstanceProfileAssociation: IamInstanceProfileAssociation? = nil) {
        self.iamInstanceProfileAssociation = iamInstanceProfileAssociation
    }

    enum CodingKeys: String, CodingKey {
        case iamInstanceProfileAssociation
    }

    public func validate() throws {
        try iamInstanceProfileAssociation?.validate()
    }
}

public struct DisassociateRouteTableRequest: Codable, Equatable {
    public var associationId: String
    public var dryRun: Boolean?

    public init(associationId: String,
                dryRun: Boolean? = nil) {
        self.associationId = associationId
        self.dryRun = dryRun
    }

    enum CodingKeys: String, CodingKey {
        case associationId
        case dryRun
    }

    public func validate() throws {
    }
}

public struct DisassociateSubnetCidrBlockRequest: Codable, Equatable {
    public var associationId: String

    public init(associationId: String) {
        self.associationId = associationId
    }

    enum CodingKeys: String, CodingKey {
        case associationId
    }

    public func validate() throws {
    }
}

public struct DisassociateSubnetCidrBlockResult: Codable, Equatable {
    public var ipv6CidrBlockAssociation: SubnetIpv6CidrBlockAssociation?
    public var subnetId: String?

    public init(ipv6CidrBlockAssociation: SubnetIpv6CidrBlockAssociation? = nil,
                subnetId: String? = nil) {
        self.ipv6CidrBlockAssociation = ipv6CidrBlockAssociation
        self.subnetId = subnetId
    }

    enum CodingKeys: String, CodingKey {
        case ipv6CidrBlockAssociation
        case subnetId
    }

    public func validate() throws {
        try ipv6CidrBlockAssociation?.validate()
    }
}

public struct DisassociateTransitGatewayRouteTableRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var transitGatewayAttachmentId: String
    public var transitGatewayRouteTableId: String

    public init(dryRun: Boolean? = nil,
                transitGatewayAttachmentId: String,
                transitGatewayRouteTableId: String) {
        self.dryRun = dryRun
        self.transitGatewayAttachmentId = transitGatewayAttachmentId
        self.transitGatewayRouteTableId = transitGatewayRouteTableId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case transitGatewayAttachmentId = "TransitGatewayAttachmentId"
        case transitGatewayRouteTableId = "TransitGatewayRouteTableId"
    }

    public func validate() throws {
    }
}

public struct DisassociateTransitGatewayRouteTableResult: Codable, Equatable {
    public var association: TransitGatewayAssociation?

    public init(association: TransitGatewayAssociation? = nil) {
        self.association = association
    }

    enum CodingKeys: String, CodingKey {
        case association
    }

    public func validate() throws {
        try association?.validate()
    }
}

public struct DisassociateVpcCidrBlockRequest: Codable, Equatable {
    public var associationId: String

    public init(associationId: String) {
        self.associationId = associationId
    }

    enum CodingKeys: String, CodingKey {
        case associationId
    }

    public func validate() throws {
    }
}

public struct DisassociateVpcCidrBlockResult: Codable, Equatable {
    public var cidrBlockAssociation: VpcCidrBlockAssociation?
    public var ipv6CidrBlockAssociation: VpcIpv6CidrBlockAssociation?
    public var vpcId: String?

    public init(cidrBlockAssociation: VpcCidrBlockAssociation? = nil,
                ipv6CidrBlockAssociation: VpcIpv6CidrBlockAssociation? = nil,
                vpcId: String? = nil) {
        self.cidrBlockAssociation = cidrBlockAssociation
        self.ipv6CidrBlockAssociation = ipv6CidrBlockAssociation
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case cidrBlockAssociation
        case ipv6CidrBlockAssociation
        case vpcId
    }

    public func validate() throws {
        try cidrBlockAssociation?.validate()
        try ipv6CidrBlockAssociation?.validate()
    }
}

public struct DiskImage: Codable, Equatable {
    public var description: String?
    public var image: DiskImageDetail?
    public var volume: VolumeDetail?

    public init(description: String? = nil,
                image: DiskImageDetail? = nil,
                volume: VolumeDetail? = nil) {
        self.description = description
        self.image = image
        self.volume = volume
    }

    enum CodingKeys: String, CodingKey {
        case description = "Description"
        case image = "Image"
        case volume = "Volume"
    }

    public func validate() throws {
        try image?.validate()
        try volume?.validate()
    }
}

public struct DiskImageDescription: Codable, Equatable {
    public var checksum: String?
    public var format: DiskImageFormat?
    public var importManifestUrl: String?
    public var size: Long?

    public init(checksum: String? = nil,
                format: DiskImageFormat? = nil,
                importManifestUrl: String? = nil,
                size: Long? = nil) {
        self.checksum = checksum
        self.format = format
        self.importManifestUrl = importManifestUrl
        self.size = size
    }

    enum CodingKeys: String, CodingKey {
        case checksum
        case format
        case importManifestUrl
        case size
    }

    public func validate() throws {
    }
}

public struct DiskImageDetail: Codable, Equatable {
    public var bytes: Long
    public var format: DiskImageFormat
    public var importManifestUrl: String

    public init(bytes: Long,
                format: DiskImageFormat,
                importManifestUrl: String) {
        self.bytes = bytes
        self.format = format
        self.importManifestUrl = importManifestUrl
    }

    enum CodingKeys: String, CodingKey {
        case bytes
        case format
        case importManifestUrl
    }

    public func validate() throws {
    }
}

public struct DiskImageVolumeDescription: Codable, Equatable {
    public var id: String?
    public var size: Long?

    public init(id: String? = nil,
                size: Long? = nil) {
        self.id = id
        self.size = size
    }

    enum CodingKeys: String, CodingKey {
        case id
        case size
    }

    public func validate() throws {
    }
}

public struct DnsEntry: Codable, Equatable {
    public var dnsName: String?
    public var hostedZoneId: String?

    public init(dnsName: String? = nil,
                hostedZoneId: String? = nil) {
        self.dnsName = dnsName
        self.hostedZoneId = hostedZoneId
    }

    enum CodingKeys: String, CodingKey {
        case dnsName
        case hostedZoneId
    }

    public func validate() throws {
    }
}

public struct DnsServersOptionsModifyStructure: Codable, Equatable {
    public var customDnsServers: ValueStringList?
    public var enabled: Boolean?

    public init(customDnsServers: ValueStringList? = nil,
                enabled: Boolean? = nil) {
        self.customDnsServers = customDnsServers
        self.enabled = enabled
    }

    enum CodingKeys: String, CodingKey {
        case customDnsServers = "CustomDnsServers"
        case enabled = "Enabled"
    }

    public func validate() throws {
    }
}

public struct EbsBlockDevice: Codable, Equatable {
    public var deleteOnTermination: Boolean?
    public var encrypted: Boolean?
    public var iops: Integer?
    public var kmsKeyId: String?
    public var snapshotId: String?
    public var volumeSize: Integer?
    public var volumeType: VolumeType?

    public init(deleteOnTermination: Boolean? = nil,
                encrypted: Boolean? = nil,
                iops: Integer? = nil,
                kmsKeyId: String? = nil,
                snapshotId: String? = nil,
                volumeSize: Integer? = nil,
                volumeType: VolumeType? = nil) {
        self.deleteOnTermination = deleteOnTermination
        self.encrypted = encrypted
        self.iops = iops
        self.kmsKeyId = kmsKeyId
        self.snapshotId = snapshotId
        self.volumeSize = volumeSize
        self.volumeType = volumeType
    }

    enum CodingKeys: String, CodingKey {
        case deleteOnTermination
        case encrypted
        case iops
        case kmsKeyId = "KmsKeyId"
        case snapshotId
        case volumeSize
        case volumeType
    }

    public func validate() throws {
    }
}

public struct EbsInstanceBlockDevice: Codable, Equatable {
    public var attachTime: DateTime?
    public var deleteOnTermination: Boolean?
    public var status: AttachmentStatus?
    public var volumeId: String?

    public init(attachTime: DateTime? = nil,
                deleteOnTermination: Boolean? = nil,
                status: AttachmentStatus? = nil,
                volumeId: String? = nil) {
        self.attachTime = attachTime
        self.deleteOnTermination = deleteOnTermination
        self.status = status
        self.volumeId = volumeId
    }

    enum CodingKeys: String, CodingKey {
        case attachTime
        case deleteOnTermination
        case status
        case volumeId
    }

    public func validate() throws {
    }
}

public struct EbsInstanceBlockDeviceSpecification: Codable, Equatable {
    public var deleteOnTermination: Boolean?
    public var volumeId: String?

    public init(deleteOnTermination: Boolean? = nil,
                volumeId: String? = nil) {
        self.deleteOnTermination = deleteOnTermination
        self.volumeId = volumeId
    }

    enum CodingKeys: String, CodingKey {
        case deleteOnTermination
        case volumeId
    }

    public func validate() throws {
    }
}

public struct EgressOnlyInternetGateway: Codable, Equatable {
    public var attachments: InternetGatewayAttachmentList?
    public var egressOnlyInternetGatewayId: EgressOnlyInternetGatewayId?

    public init(attachments: InternetGatewayAttachmentList? = nil,
                egressOnlyInternetGatewayId: EgressOnlyInternetGatewayId? = nil) {
        self.attachments = attachments
        self.egressOnlyInternetGatewayId = egressOnlyInternetGatewayId
    }

    enum CodingKeys: String, CodingKey {
        case attachments = "attachmentSet"
        case egressOnlyInternetGatewayId
    }

    public func validate() throws {
    }
}

public struct ElasticGpuAssociation: Codable, Equatable {
    public var elasticGpuAssociationId: String?
    public var elasticGpuAssociationState: String?
    public var elasticGpuAssociationTime: String?
    public var elasticGpuId: String?

    public init(elasticGpuAssociationId: String? = nil,
                elasticGpuAssociationState: String? = nil,
                elasticGpuAssociationTime: String? = nil,
                elasticGpuId: String? = nil) {
        self.elasticGpuAssociationId = elasticGpuAssociationId
        self.elasticGpuAssociationState = elasticGpuAssociationState
        self.elasticGpuAssociationTime = elasticGpuAssociationTime
        self.elasticGpuId = elasticGpuId
    }

    enum CodingKeys: String, CodingKey {
        case elasticGpuAssociationId
        case elasticGpuAssociationState
        case elasticGpuAssociationTime
        case elasticGpuId
    }

    public func validate() throws {
    }
}

public struct ElasticGpuHealth: Codable, Equatable {
    public var status: ElasticGpuStatus?

    public init(status: ElasticGpuStatus? = nil) {
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case status
    }

    public func validate() throws {
    }
}

public struct ElasticGpuSpecification: Codable, Equatable {
    public var type: String

    public init(type: String) {
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case type = "Type"
    }

    public func validate() throws {
    }
}

public struct ElasticGpuSpecificationResponse: Codable, Equatable {
    public var type: String?

    public init(type: String? = nil) {
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case type
    }

    public func validate() throws {
    }
}

public struct ElasticGpus: Codable, Equatable {
    public var availabilityZone: String?
    public var elasticGpuHealth: ElasticGpuHealth?
    public var elasticGpuId: String?
    public var elasticGpuState: ElasticGpuState?
    public var elasticGpuType: String?
    public var instanceId: String?

    public init(availabilityZone: String? = nil,
                elasticGpuHealth: ElasticGpuHealth? = nil,
                elasticGpuId: String? = nil,
                elasticGpuState: ElasticGpuState? = nil,
                elasticGpuType: String? = nil,
                instanceId: String? = nil) {
        self.availabilityZone = availabilityZone
        self.elasticGpuHealth = elasticGpuHealth
        self.elasticGpuId = elasticGpuId
        self.elasticGpuState = elasticGpuState
        self.elasticGpuType = elasticGpuType
        self.instanceId = instanceId
    }

    enum CodingKeys: String, CodingKey {
        case availabilityZone
        case elasticGpuHealth
        case elasticGpuId
        case elasticGpuState
        case elasticGpuType
        case instanceId
    }

    public func validate() throws {
        try elasticGpuHealth?.validate()
    }
}

public struct ElasticInferenceAccelerator: Codable, Equatable {
    public var type: String

    public init(type: String) {
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case type = "Type"
    }

    public func validate() throws {
    }
}

public struct ElasticInferenceAcceleratorAssociation: Codable, Equatable {
    public var elasticInferenceAcceleratorArn: String?
    public var elasticInferenceAcceleratorAssociationId: String?
    public var elasticInferenceAcceleratorAssociationState: String?
    public var elasticInferenceAcceleratorAssociationTime: DateTime?

    public init(elasticInferenceAcceleratorArn: String? = nil,
                elasticInferenceAcceleratorAssociationId: String? = nil,
                elasticInferenceAcceleratorAssociationState: String? = nil,
                elasticInferenceAcceleratorAssociationTime: DateTime? = nil) {
        self.elasticInferenceAcceleratorArn = elasticInferenceAcceleratorArn
        self.elasticInferenceAcceleratorAssociationId = elasticInferenceAcceleratorAssociationId
        self.elasticInferenceAcceleratorAssociationState = elasticInferenceAcceleratorAssociationState
        self.elasticInferenceAcceleratorAssociationTime = elasticInferenceAcceleratorAssociationTime
    }

    enum CodingKeys: String, CodingKey {
        case elasticInferenceAcceleratorArn
        case elasticInferenceAcceleratorAssociationId
        case elasticInferenceAcceleratorAssociationState
        case elasticInferenceAcceleratorAssociationTime
    }

    public func validate() throws {
    }
}

public struct EnableEbsEncryptionByDefaultRequest: Codable, Equatable {
    public var dryRun: Boolean?

    public init(dryRun: Boolean? = nil) {
        self.dryRun = dryRun
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
    }

    public func validate() throws {
    }
}

public struct EnableEbsEncryptionByDefaultResult: Codable, Equatable {
    public var ebsEncryptionByDefault: Boolean?

    public init(ebsEncryptionByDefault: Boolean? = nil) {
        self.ebsEncryptionByDefault = ebsEncryptionByDefault
    }

    enum CodingKeys: String, CodingKey {
        case ebsEncryptionByDefault
    }

    public func validate() throws {
    }
}

public struct EnableTransitGatewayRouteTablePropagationRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var transitGatewayAttachmentId: String
    public var transitGatewayRouteTableId: String

    public init(dryRun: Boolean? = nil,
                transitGatewayAttachmentId: String,
                transitGatewayRouteTableId: String) {
        self.dryRun = dryRun
        self.transitGatewayAttachmentId = transitGatewayAttachmentId
        self.transitGatewayRouteTableId = transitGatewayRouteTableId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case transitGatewayAttachmentId = "TransitGatewayAttachmentId"
        case transitGatewayRouteTableId = "TransitGatewayRouteTableId"
    }

    public func validate() throws {
    }
}

public struct EnableTransitGatewayRouteTablePropagationResult: Codable, Equatable {
    public var propagation: TransitGatewayPropagation?

    public init(propagation: TransitGatewayPropagation? = nil) {
        self.propagation = propagation
    }

    enum CodingKeys: String, CodingKey {
        case propagation
    }

    public func validate() throws {
        try propagation?.validate()
    }
}

public struct EnableVgwRoutePropagationRequest: Codable, Equatable {
    public var gatewayId: String
    public var routeTableId: String

    public init(gatewayId: String,
                routeTableId: String) {
        self.gatewayId = gatewayId
        self.routeTableId = routeTableId
    }

    enum CodingKeys: String, CodingKey {
        case gatewayId = "GatewayId"
        case routeTableId = "RouteTableId"
    }

    public func validate() throws {
    }
}

public struct EnableVolumeIORequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var volumeId: String

    public init(dryRun: Boolean? = nil,
                volumeId: String) {
        self.dryRun = dryRun
        self.volumeId = volumeId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case volumeId
    }

    public func validate() throws {
    }
}

public struct EnableVpcClassicLinkDnsSupportRequest: Codable, Equatable {
    public var vpcId: String?

    public init(vpcId: String? = nil) {
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case vpcId = "VpcId"
    }

    public func validate() throws {
    }
}

public struct EnableVpcClassicLinkDnsSupportResult: Codable, Equatable {
    public var `return`: Boolean?

    public init(`return`: Boolean? = nil) {
        self.`return` = `return`
    }

    enum CodingKeys: String, CodingKey {
        case `return` = "return"
    }

    public func validate() throws {
    }
}

public struct EnableVpcClassicLinkRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var vpcId: String

    public init(dryRun: Boolean? = nil,
                vpcId: String) {
        self.dryRun = dryRun
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case vpcId
    }

    public func validate() throws {
    }
}

public struct EnableVpcClassicLinkResult: Codable, Equatable {
    public var `return`: Boolean?

    public init(`return`: Boolean? = nil) {
        self.`return` = `return`
    }

    enum CodingKeys: String, CodingKey {
        case `return` = "return"
    }

    public func validate() throws {
    }
}

public struct EventInformation: Codable, Equatable {
    public var eventDescription: String?
    public var eventSubType: String?
    public var instanceId: String?

    public init(eventDescription: String? = nil,
                eventSubType: String? = nil,
                instanceId: String? = nil) {
        self.eventDescription = eventDescription
        self.eventSubType = eventSubType
        self.instanceId = instanceId
    }

    enum CodingKeys: String, CodingKey {
        case eventDescription
        case eventSubType
        case instanceId
    }

    public func validate() throws {
    }
}

public struct ExportClientVpnClientCertificateRevocationListRequest: Codable, Equatable {
    public var clientVpnEndpointId: String
    public var dryRun: Boolean?

    public init(clientVpnEndpointId: String,
                dryRun: Boolean? = nil) {
        self.clientVpnEndpointId = clientVpnEndpointId
        self.dryRun = dryRun
    }

    enum CodingKeys: String, CodingKey {
        case clientVpnEndpointId = "ClientVpnEndpointId"
        case dryRun = "DryRun"
    }

    public func validate() throws {
    }
}

public struct ExportClientVpnClientCertificateRevocationListResult: Codable, Equatable {
    public var certificateRevocationList: String?
    public var status: ClientCertificateRevocationListStatus?

    public init(certificateRevocationList: String? = nil,
                status: ClientCertificateRevocationListStatus? = nil) {
        self.certificateRevocationList = certificateRevocationList
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case certificateRevocationList
        case status
    }

    public func validate() throws {
        try status?.validate()
    }
}

public struct ExportClientVpnClientConfigurationRequest: Codable, Equatable {
    public var clientVpnEndpointId: String
    public var dryRun: Boolean?

    public init(clientVpnEndpointId: String,
                dryRun: Boolean? = nil) {
        self.clientVpnEndpointId = clientVpnEndpointId
        self.dryRun = dryRun
    }

    enum CodingKeys: String, CodingKey {
        case clientVpnEndpointId = "ClientVpnEndpointId"
        case dryRun = "DryRun"
    }

    public func validate() throws {
    }
}

public struct ExportClientVpnClientConfigurationResult: Codable, Equatable {
    public var clientConfiguration: String?

    public init(clientConfiguration: String? = nil) {
        self.clientConfiguration = clientConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case clientConfiguration
    }

    public func validate() throws {
    }
}

public struct ExportTask: Codable, Equatable {
    public var description: String?
    public var exportTaskId: String?
    public var exportToS3Task: ExportToS3Task?
    public var instanceExportDetails: InstanceExportDetails?
    public var state: ExportTaskState?
    public var statusMessage: String?

    public init(description: String? = nil,
                exportTaskId: String? = nil,
                exportToS3Task: ExportToS3Task? = nil,
                instanceExportDetails: InstanceExportDetails? = nil,
                state: ExportTaskState? = nil,
                statusMessage: String? = nil) {
        self.description = description
        self.exportTaskId = exportTaskId
        self.exportToS3Task = exportToS3Task
        self.instanceExportDetails = instanceExportDetails
        self.state = state
        self.statusMessage = statusMessage
    }

    enum CodingKeys: String, CodingKey {
        case description
        case exportTaskId
        case exportToS3Task = "exportToS3"
        case instanceExportDetails = "instanceExport"
        case state
        case statusMessage
    }

    public func validate() throws {
        try exportToS3Task?.validate()
        try instanceExportDetails?.validate()
    }
}

public struct ExportToS3Task: Codable, Equatable {
    public var containerFormat: ContainerFormat?
    public var diskImageFormat: DiskImageFormat?
    public var s3Bucket: String?
    public var s3Key: String?

    public init(containerFormat: ContainerFormat? = nil,
                diskImageFormat: DiskImageFormat? = nil,
                s3Bucket: String? = nil,
                s3Key: String? = nil) {
        self.containerFormat = containerFormat
        self.diskImageFormat = diskImageFormat
        self.s3Bucket = s3Bucket
        self.s3Key = s3Key
    }

    enum CodingKeys: String, CodingKey {
        case containerFormat
        case diskImageFormat
        case s3Bucket
        case s3Key
    }

    public func validate() throws {
    }
}

public struct ExportToS3TaskSpecification: Codable, Equatable {
    public var containerFormat: ContainerFormat?
    public var diskImageFormat: DiskImageFormat?
    public var s3Bucket: String?
    public var s3Prefix: String?

    public init(containerFormat: ContainerFormat? = nil,
                diskImageFormat: DiskImageFormat? = nil,
                s3Bucket: String? = nil,
                s3Prefix: String? = nil) {
        self.containerFormat = containerFormat
        self.diskImageFormat = diskImageFormat
        self.s3Bucket = s3Bucket
        self.s3Prefix = s3Prefix
    }

    enum CodingKeys: String, CodingKey {
        case containerFormat
        case diskImageFormat
        case s3Bucket
        case s3Prefix
    }

    public func validate() throws {
    }
}

public struct ExportTransitGatewayRoutesRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var s3Bucket: String
    public var transitGatewayRouteTableId: String

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                s3Bucket: String,
                transitGatewayRouteTableId: String) {
        self.dryRun = dryRun
        self.filters = filters
        self.s3Bucket = s3Bucket
        self.transitGatewayRouteTableId = transitGatewayRouteTableId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case filters = "Filter"
        case s3Bucket = "S3Bucket"
        case transitGatewayRouteTableId = "TransitGatewayRouteTableId"
    }

    public func validate() throws {
    }
}

public struct ExportTransitGatewayRoutesResult: Codable, Equatable {
    public var s3Location: String?

    public init(s3Location: String? = nil) {
        self.s3Location = s3Location
    }

    enum CodingKeys: String, CodingKey {
        case s3Location
    }

    public func validate() throws {
    }
}

public struct Filter: Codable, Equatable {
    public var name: String?
    public var values: ValueStringList?

    public init(name: String? = nil,
                values: ValueStringList? = nil) {
        self.name = name
        self.values = values
    }

    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case values = "Value"
    }

    public func validate() throws {
    }
}

public struct FleetData: Codable, Equatable {
    public var activityStatus: FleetActivityStatus?
    public var clientToken: String?
    public var createTime: DateTime?
    public var errors: DescribeFleetsErrorSet?
    public var excessCapacityTerminationPolicy: FleetExcessCapacityTerminationPolicy?
    public var fleetId: FleetIdentifier?
    public var fleetState: FleetStateCode?
    public var fulfilledCapacity: Double?
    public var fulfilledOnDemandCapacity: Double?
    public var instances: DescribeFleetsInstancesSet?
    public var launchTemplateConfigs: FleetLaunchTemplateConfigList?
    public var onDemandOptions: OnDemandOptions?
    public var replaceUnhealthyInstances: Boolean?
    public var spotOptions: SpotOptions?
    public var tags: TagList?
    public var targetCapacitySpecification: TargetCapacitySpecification?
    public var terminateInstancesWithExpiration: Boolean?
    public var type: FleetType?
    public var validFrom: DateTime?
    public var validUntil: DateTime?

    public init(activityStatus: FleetActivityStatus? = nil,
                clientToken: String? = nil,
                createTime: DateTime? = nil,
                errors: DescribeFleetsErrorSet? = nil,
                excessCapacityTerminationPolicy: FleetExcessCapacityTerminationPolicy? = nil,
                fleetId: FleetIdentifier? = nil,
                fleetState: FleetStateCode? = nil,
                fulfilledCapacity: Double? = nil,
                fulfilledOnDemandCapacity: Double? = nil,
                instances: DescribeFleetsInstancesSet? = nil,
                launchTemplateConfigs: FleetLaunchTemplateConfigList? = nil,
                onDemandOptions: OnDemandOptions? = nil,
                replaceUnhealthyInstances: Boolean? = nil,
                spotOptions: SpotOptions? = nil,
                tags: TagList? = nil,
                targetCapacitySpecification: TargetCapacitySpecification? = nil,
                terminateInstancesWithExpiration: Boolean? = nil,
                type: FleetType? = nil,
                validFrom: DateTime? = nil,
                validUntil: DateTime? = nil) {
        self.activityStatus = activityStatus
        self.clientToken = clientToken
        self.createTime = createTime
        self.errors = errors
        self.excessCapacityTerminationPolicy = excessCapacityTerminationPolicy
        self.fleetId = fleetId
        self.fleetState = fleetState
        self.fulfilledCapacity = fulfilledCapacity
        self.fulfilledOnDemandCapacity = fulfilledOnDemandCapacity
        self.instances = instances
        self.launchTemplateConfigs = launchTemplateConfigs
        self.onDemandOptions = onDemandOptions
        self.replaceUnhealthyInstances = replaceUnhealthyInstances
        self.spotOptions = spotOptions
        self.tags = tags
        self.targetCapacitySpecification = targetCapacitySpecification
        self.terminateInstancesWithExpiration = terminateInstancesWithExpiration
        self.type = type
        self.validFrom = validFrom
        self.validUntil = validUntil
    }

    enum CodingKeys: String, CodingKey {
        case activityStatus
        case clientToken
        case createTime
        case errors = "errorSet"
        case excessCapacityTerminationPolicy
        case fleetId
        case fleetState
        case fulfilledCapacity
        case fulfilledOnDemandCapacity
        case instances = "fleetInstanceSet"
        case launchTemplateConfigs
        case onDemandOptions
        case replaceUnhealthyInstances
        case spotOptions
        case tags = "tagSet"
        case targetCapacitySpecification
        case terminateInstancesWithExpiration
        case type
        case validFrom
        case validUntil
    }

    public func validate() throws {
        try onDemandOptions?.validate()
        try spotOptions?.validate()
        try targetCapacitySpecification?.validate()
    }
}

public struct FleetLaunchTemplateConfig: Codable, Equatable {
    public var launchTemplateSpecification: FleetLaunchTemplateSpecification?
    public var overrides: FleetLaunchTemplateOverridesList?

    public init(launchTemplateSpecification: FleetLaunchTemplateSpecification? = nil,
                overrides: FleetLaunchTemplateOverridesList? = nil) {
        self.launchTemplateSpecification = launchTemplateSpecification
        self.overrides = overrides
    }

    enum CodingKeys: String, CodingKey {
        case launchTemplateSpecification
        case overrides
    }

    public func validate() throws {
        try launchTemplateSpecification?.validate()
    }
}

public struct FleetLaunchTemplateConfigRequest: Codable, Equatable {
    public var launchTemplateSpecification: FleetLaunchTemplateSpecificationRequest?
    public var overrides: FleetLaunchTemplateOverridesListRequest?

    public init(launchTemplateSpecification: FleetLaunchTemplateSpecificationRequest? = nil,
                overrides: FleetLaunchTemplateOverridesListRequest? = nil) {
        self.launchTemplateSpecification = launchTemplateSpecification
        self.overrides = overrides
    }

    enum CodingKeys: String, CodingKey {
        case launchTemplateSpecification = "LaunchTemplateSpecification"
        case overrides = "Overrides"
    }

    public func validate() throws {
        try launchTemplateSpecification?.validate()
        try overrides?.validateAsFleetLaunchTemplateOverridesListRequest()
    }
}

public struct FleetLaunchTemplateOverrides: Codable, Equatable {
    public var availabilityZone: String?
    public var instanceType: InstanceType?
    public var maxPrice: String?
    public var placement: PlacementResponse?
    public var priority: Double?
    public var subnetId: String?
    public var weightedCapacity: Double?

    public init(availabilityZone: String? = nil,
                instanceType: InstanceType? = nil,
                maxPrice: String? = nil,
                placement: PlacementResponse? = nil,
                priority: Double? = nil,
                subnetId: String? = nil,
                weightedCapacity: Double? = nil) {
        self.availabilityZone = availabilityZone
        self.instanceType = instanceType
        self.maxPrice = maxPrice
        self.placement = placement
        self.priority = priority
        self.subnetId = subnetId
        self.weightedCapacity = weightedCapacity
    }

    enum CodingKeys: String, CodingKey {
        case availabilityZone
        case instanceType
        case maxPrice
        case placement
        case priority
        case subnetId
        case weightedCapacity
    }

    public func validate() throws {
        try placement?.validate()
    }
}

public struct FleetLaunchTemplateOverridesRequest: Codable, Equatable {
    public var availabilityZone: String?
    public var instanceType: InstanceType?
    public var maxPrice: String?
    public var placement: Placement?
    public var priority: Double?
    public var subnetId: String?
    public var weightedCapacity: Double?

    public init(availabilityZone: String? = nil,
                instanceType: InstanceType? = nil,
                maxPrice: String? = nil,
                placement: Placement? = nil,
                priority: Double? = nil,
                subnetId: String? = nil,
                weightedCapacity: Double? = nil) {
        self.availabilityZone = availabilityZone
        self.instanceType = instanceType
        self.maxPrice = maxPrice
        self.placement = placement
        self.priority = priority
        self.subnetId = subnetId
        self.weightedCapacity = weightedCapacity
    }

    enum CodingKeys: String, CodingKey {
        case availabilityZone = "AvailabilityZone"
        case instanceType = "InstanceType"
        case maxPrice = "MaxPrice"
        case placement = "Placement"
        case priority = "Priority"
        case subnetId = "SubnetId"
        case weightedCapacity = "WeightedCapacity"
    }

    public func validate() throws {
        try placement?.validate()
    }
}

public struct FleetLaunchTemplateSpecification: Codable, Equatable {
    public var launchTemplateId: String?
    public var launchTemplateName: LaunchTemplateName?
    public var version: String?

    public init(launchTemplateId: String? = nil,
                launchTemplateName: LaunchTemplateName? = nil,
                version: String? = nil) {
        self.launchTemplateId = launchTemplateId
        self.launchTemplateName = launchTemplateName
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case launchTemplateId
        case launchTemplateName
        case version
    }

    public func validate() throws {
        try launchTemplateName?.validateAsLaunchTemplateName()
    }
}

public struct FleetLaunchTemplateSpecificationRequest: Codable, Equatable {
    public var launchTemplateId: String?
    public var launchTemplateName: LaunchTemplateName?
    public var version: String?

    public init(launchTemplateId: String? = nil,
                launchTemplateName: LaunchTemplateName? = nil,
                version: String? = nil) {
        self.launchTemplateId = launchTemplateId
        self.launchTemplateName = launchTemplateName
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case launchTemplateId = "LaunchTemplateId"
        case launchTemplateName = "LaunchTemplateName"
        case version = "Version"
    }

    public func validate() throws {
        try launchTemplateName?.validateAsLaunchTemplateName()
    }
}

public struct FlowLog: Codable, Equatable {
    public var creationTime: DateTime?
    public var deliverLogsErrorMessage: String?
    public var deliverLogsPermissionArn: String?
    public var deliverLogsStatus: String?
    public var flowLogId: String?
    public var flowLogStatus: String?
    public var logDestination: String?
    public var logDestinationType: LogDestinationType?
    public var logGroupName: String?
    public var resourceId: String?
    public var trafficType: TrafficType?

    public init(creationTime: DateTime? = nil,
                deliverLogsErrorMessage: String? = nil,
                deliverLogsPermissionArn: String? = nil,
                deliverLogsStatus: String? = nil,
                flowLogId: String? = nil,
                flowLogStatus: String? = nil,
                logDestination: String? = nil,
                logDestinationType: LogDestinationType? = nil,
                logGroupName: String? = nil,
                resourceId: String? = nil,
                trafficType: TrafficType? = nil) {
        self.creationTime = creationTime
        self.deliverLogsErrorMessage = deliverLogsErrorMessage
        self.deliverLogsPermissionArn = deliverLogsPermissionArn
        self.deliverLogsStatus = deliverLogsStatus
        self.flowLogId = flowLogId
        self.flowLogStatus = flowLogStatus
        self.logDestination = logDestination
        self.logDestinationType = logDestinationType
        self.logGroupName = logGroupName
        self.resourceId = resourceId
        self.trafficType = trafficType
    }

    enum CodingKeys: String, CodingKey {
        case creationTime
        case deliverLogsErrorMessage
        case deliverLogsPermissionArn
        case deliverLogsStatus
        case flowLogId
        case flowLogStatus
        case logDestination
        case logDestinationType
        case logGroupName
        case resourceId
        case trafficType
    }

    public func validate() throws {
    }
}

public struct FpgaImage: Codable, Equatable {
    public var createTime: DateTime?
    public var dataRetentionSupport: Boolean?
    public var description: String?
    public var fpgaImageGlobalId: String?
    public var fpgaImageId: String?
    public var name: String?
    public var ownerAlias: String?
    public var ownerId: String?
    public var pciId: PciId?
    public var productCodes: ProductCodeList?
    public var `public`: Boolean?
    public var shellVersion: String?
    public var state: FpgaImageState?
    public var tags: TagList?
    public var updateTime: DateTime?

    public init(createTime: DateTime? = nil,
                dataRetentionSupport: Boolean? = nil,
                description: String? = nil,
                fpgaImageGlobalId: String? = nil,
                fpgaImageId: String? = nil,
                name: String? = nil,
                ownerAlias: String? = nil,
                ownerId: String? = nil,
                pciId: PciId? = nil,
                productCodes: ProductCodeList? = nil,
                `public`: Boolean? = nil,
                shellVersion: String? = nil,
                state: FpgaImageState? = nil,
                tags: TagList? = nil,
                updateTime: DateTime? = nil) {
        self.createTime = createTime
        self.dataRetentionSupport = dataRetentionSupport
        self.description = description
        self.fpgaImageGlobalId = fpgaImageGlobalId
        self.fpgaImageId = fpgaImageId
        self.name = name
        self.ownerAlias = ownerAlias
        self.ownerId = ownerId
        self.pciId = pciId
        self.productCodes = productCodes
        self.`public` = `public`
        self.shellVersion = shellVersion
        self.state = state
        self.tags = tags
        self.updateTime = updateTime
    }

    enum CodingKeys: String, CodingKey {
        case createTime
        case dataRetentionSupport
        case description
        case fpgaImageGlobalId
        case fpgaImageId
        case name
        case ownerAlias
        case ownerId
        case pciId
        case productCodes
        case `public` = "public"
        case shellVersion
        case state
        case tags
        case updateTime
    }

    public func validate() throws {
        try pciId?.validate()
        try state?.validate()
    }
}

public struct FpgaImageAttribute: Codable, Equatable {
    public var description: String?
    public var fpgaImageId: String?
    public var loadPermissions: LoadPermissionList?
    public var name: String?
    public var productCodes: ProductCodeList?

    public init(description: String? = nil,
                fpgaImageId: String? = nil,
                loadPermissions: LoadPermissionList? = nil,
                name: String? = nil,
                productCodes: ProductCodeList? = nil) {
        self.description = description
        self.fpgaImageId = fpgaImageId
        self.loadPermissions = loadPermissions
        self.name = name
        self.productCodes = productCodes
    }

    enum CodingKeys: String, CodingKey {
        case description
        case fpgaImageId
        case loadPermissions
        case name
        case productCodes
    }

    public func validate() throws {
    }
}

public struct FpgaImageState: Codable, Equatable {
    public var code: FpgaImageStateCode?
    public var message: String?

    public init(code: FpgaImageStateCode? = nil,
                message: String? = nil) {
        self.code = code
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case code
        case message
    }

    public func validate() throws {
    }
}

public struct GetConsoleOutputRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var instanceId: String
    public var latest: Boolean?

    public init(dryRun: Boolean? = nil,
                instanceId: String,
                latest: Boolean? = nil) {
        self.dryRun = dryRun
        self.instanceId = instanceId
        self.latest = latest
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case instanceId = "InstanceId"
        case latest = "Latest"
    }

    public func validate() throws {
    }
}

public struct GetConsoleOutputResult: Codable, Equatable {
    public var instanceId: String?
    public var output: String?
    public var timestamp: DateTime?

    public init(instanceId: String? = nil,
                output: String? = nil,
                timestamp: DateTime? = nil) {
        self.instanceId = instanceId
        self.output = output
        self.timestamp = timestamp
    }

    enum CodingKeys: String, CodingKey {
        case instanceId
        case output
        case timestamp
    }

    public func validate() throws {
    }
}

public struct GetConsoleScreenshotRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var instanceId: String
    public var wakeUp: Boolean?

    public init(dryRun: Boolean? = nil,
                instanceId: String,
                wakeUp: Boolean? = nil) {
        self.dryRun = dryRun
        self.instanceId = instanceId
        self.wakeUp = wakeUp
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case instanceId = "InstanceId"
        case wakeUp = "WakeUp"
    }

    public func validate() throws {
    }
}

public struct GetConsoleScreenshotResult: Codable, Equatable {
    public var imageData: String?
    public var instanceId: String?

    public init(imageData: String? = nil,
                instanceId: String? = nil) {
        self.imageData = imageData
        self.instanceId = instanceId
    }

    enum CodingKeys: String, CodingKey {
        case imageData
        case instanceId
    }

    public func validate() throws {
    }
}

public struct GetEbsDefaultKmsKeyIdRequest: Codable, Equatable {
    public var dryRun: Boolean?

    public init(dryRun: Boolean? = nil) {
        self.dryRun = dryRun
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
    }

    public func validate() throws {
    }
}

public struct GetEbsDefaultKmsKeyIdResult: Codable, Equatable {
    public var kmsKeyId: String?

    public init(kmsKeyId: String? = nil) {
        self.kmsKeyId = kmsKeyId
    }

    enum CodingKeys: String, CodingKey {
        case kmsKeyId
    }

    public func validate() throws {
    }
}

public struct GetEbsEncryptionByDefaultRequest: Codable, Equatable {
    public var dryRun: Boolean?

    public init(dryRun: Boolean? = nil) {
        self.dryRun = dryRun
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
    }

    public func validate() throws {
    }
}

public struct GetEbsEncryptionByDefaultResult: Codable, Equatable {
    public var ebsEncryptionByDefault: Boolean?

    public init(ebsEncryptionByDefault: Boolean? = nil) {
        self.ebsEncryptionByDefault = ebsEncryptionByDefault
    }

    enum CodingKeys: String, CodingKey {
        case ebsEncryptionByDefault
    }

    public func validate() throws {
    }
}

public struct GetHostReservationPurchasePreviewRequest: Codable, Equatable {
    public var hostIdSet: RequestHostIdSet
    public var offeringId: String

    public init(hostIdSet: RequestHostIdSet,
                offeringId: String) {
        self.hostIdSet = hostIdSet
        self.offeringId = offeringId
    }

    enum CodingKeys: String, CodingKey {
        case hostIdSet = "HostIdSet"
        case offeringId = "OfferingId"
    }

    public func validate() throws {
    }
}

public struct GetHostReservationPurchasePreviewResult: Codable, Equatable {
    public var currencyCode: CurrencyCodeValues?
    public var purchase: PurchaseSet?
    public var totalHourlyPrice: String?
    public var totalUpfrontPrice: String?

    public init(currencyCode: CurrencyCodeValues? = nil,
                purchase: PurchaseSet? = nil,
                totalHourlyPrice: String? = nil,
                totalUpfrontPrice: String? = nil) {
        self.currencyCode = currencyCode
        self.purchase = purchase
        self.totalHourlyPrice = totalHourlyPrice
        self.totalUpfrontPrice = totalUpfrontPrice
    }

    enum CodingKeys: String, CodingKey {
        case currencyCode
        case purchase
        case totalHourlyPrice
        case totalUpfrontPrice
    }

    public func validate() throws {
    }
}

public struct GetLaunchTemplateDataRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var instanceId: String

    public init(dryRun: Boolean? = nil,
                instanceId: String) {
        self.dryRun = dryRun
        self.instanceId = instanceId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case instanceId = "InstanceId"
    }

    public func validate() throws {
    }
}

public struct GetLaunchTemplateDataResult: Codable, Equatable {
    public var launchTemplateData: ResponseLaunchTemplateData?

    public init(launchTemplateData: ResponseLaunchTemplateData? = nil) {
        self.launchTemplateData = launchTemplateData
    }

    enum CodingKeys: String, CodingKey {
        case launchTemplateData
    }

    public func validate() throws {
        try launchTemplateData?.validate()
    }
}

public struct GetPasswordDataRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var instanceId: String

    public init(dryRun: Boolean? = nil,
                instanceId: String) {
        self.dryRun = dryRun
        self.instanceId = instanceId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case instanceId = "InstanceId"
    }

    public func validate() throws {
    }
}

public struct GetPasswordDataResult: Codable, Equatable {
    public var instanceId: String?
    public var passwordData: String?
    public var timestamp: DateTime?

    public init(instanceId: String? = nil,
                passwordData: String? = nil,
                timestamp: DateTime? = nil) {
        self.instanceId = instanceId
        self.passwordData = passwordData
        self.timestamp = timestamp
    }

    enum CodingKeys: String, CodingKey {
        case instanceId
        case passwordData
        case timestamp
    }

    public func validate() throws {
    }
}

public struct GetReservedInstancesExchangeQuoteRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var reservedInstanceIds: ReservedInstanceIdSet
    public var targetConfigurations: TargetConfigurationRequestSet?

    public init(dryRun: Boolean? = nil,
                reservedInstanceIds: ReservedInstanceIdSet,
                targetConfigurations: TargetConfigurationRequestSet? = nil) {
        self.dryRun = dryRun
        self.reservedInstanceIds = reservedInstanceIds
        self.targetConfigurations = targetConfigurations
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case reservedInstanceIds = "ReservedInstanceId"
        case targetConfigurations = "TargetConfiguration"
    }

    public func validate() throws {
    }
}

public struct GetReservedInstancesExchangeQuoteResult: Codable, Equatable {
    public var currencyCode: String?
    public var isValidExchange: Boolean?
    public var outputReservedInstancesWillExpireAt: DateTime?
    public var paymentDue: String?
    public var reservedInstanceValueRollup: ReservationValue?
    public var reservedInstanceValueSet: ReservedInstanceReservationValueSet?
    public var targetConfigurationValueRollup: ReservationValue?
    public var targetConfigurationValueSet: TargetReservationValueSet?
    public var validationFailureReason: String?

    public init(currencyCode: String? = nil,
                isValidExchange: Boolean? = nil,
                outputReservedInstancesWillExpireAt: DateTime? = nil,
                paymentDue: String? = nil,
                reservedInstanceValueRollup: ReservationValue? = nil,
                reservedInstanceValueSet: ReservedInstanceReservationValueSet? = nil,
                targetConfigurationValueRollup: ReservationValue? = nil,
                targetConfigurationValueSet: TargetReservationValueSet? = nil,
                validationFailureReason: String? = nil) {
        self.currencyCode = currencyCode
        self.isValidExchange = isValidExchange
        self.outputReservedInstancesWillExpireAt = outputReservedInstancesWillExpireAt
        self.paymentDue = paymentDue
        self.reservedInstanceValueRollup = reservedInstanceValueRollup
        self.reservedInstanceValueSet = reservedInstanceValueSet
        self.targetConfigurationValueRollup = targetConfigurationValueRollup
        self.targetConfigurationValueSet = targetConfigurationValueSet
        self.validationFailureReason = validationFailureReason
    }

    enum CodingKeys: String, CodingKey {
        case currencyCode
        case isValidExchange
        case outputReservedInstancesWillExpireAt
        case paymentDue
        case reservedInstanceValueRollup
        case reservedInstanceValueSet
        case targetConfigurationValueRollup
        case targetConfigurationValueSet
        case validationFailureReason
    }

    public func validate() throws {
        try reservedInstanceValueRollup?.validate()
        try targetConfigurationValueRollup?.validate()
    }
}

public struct GetTransitGatewayAttachmentPropagationsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: TransitGatewayMaxResults?
    public var nextToken: String?
    public var transitGatewayAttachmentId: String

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: TransitGatewayMaxResults? = nil,
                nextToken: String? = nil,
                transitGatewayAttachmentId: String) {
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.transitGatewayAttachmentId = transitGatewayAttachmentId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case filters = "Filter"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case transitGatewayAttachmentId = "TransitGatewayAttachmentId"
    }

    public func validate() throws {
        try maxResults?.validateAsTransitGatewayMaxResults()
    }
}

public struct GetTransitGatewayAttachmentPropagationsResult: Codable, Equatable {
    public var nextToken: String?
    public var transitGatewayAttachmentPropagations: TransitGatewayAttachmentPropagationList?

    public init(nextToken: String? = nil,
                transitGatewayAttachmentPropagations: TransitGatewayAttachmentPropagationList? = nil) {
        self.nextToken = nextToken
        self.transitGatewayAttachmentPropagations = transitGatewayAttachmentPropagations
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case transitGatewayAttachmentPropagations
    }

    public func validate() throws {
    }
}

public struct GetTransitGatewayRouteTableAssociationsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: TransitGatewayMaxResults?
    public var nextToken: String?
    public var transitGatewayRouteTableId: String

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: TransitGatewayMaxResults? = nil,
                nextToken: String? = nil,
                transitGatewayRouteTableId: String) {
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.transitGatewayRouteTableId = transitGatewayRouteTableId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case filters = "Filter"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case transitGatewayRouteTableId = "TransitGatewayRouteTableId"
    }

    public func validate() throws {
        try maxResults?.validateAsTransitGatewayMaxResults()
    }
}

public struct GetTransitGatewayRouteTableAssociationsResult: Codable, Equatable {
    public var associations: TransitGatewayRouteTableAssociationList?
    public var nextToken: String?

    public init(associations: TransitGatewayRouteTableAssociationList? = nil,
                nextToken: String? = nil) {
        self.associations = associations
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case associations
        case nextToken
    }

    public func validate() throws {
    }
}

public struct GetTransitGatewayRouteTablePropagationsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList?
    public var maxResults: TransitGatewayMaxResults?
    public var nextToken: String?
    public var transitGatewayRouteTableId: String

    public init(dryRun: Boolean? = nil,
                filters: FilterList? = nil,
                maxResults: TransitGatewayMaxResults? = nil,
                nextToken: String? = nil,
                transitGatewayRouteTableId: String) {
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.transitGatewayRouteTableId = transitGatewayRouteTableId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case filters = "Filter"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case transitGatewayRouteTableId = "TransitGatewayRouteTableId"
    }

    public func validate() throws {
        try maxResults?.validateAsTransitGatewayMaxResults()
    }
}

public struct GetTransitGatewayRouteTablePropagationsResult: Codable, Equatable {
    public var nextToken: String?
    public var transitGatewayRouteTablePropagations: TransitGatewayRouteTablePropagationList?

    public init(nextToken: String? = nil,
                transitGatewayRouteTablePropagations: TransitGatewayRouteTablePropagationList? = nil) {
        self.nextToken = nextToken
        self.transitGatewayRouteTablePropagations = transitGatewayRouteTablePropagations
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case transitGatewayRouteTablePropagations
    }

    public func validate() throws {
    }
}

public struct GroupIdentifier: Codable, Equatable {
    public var groupId: String?
    public var groupName: String?

    public init(groupId: String? = nil,
                groupName: String? = nil) {
        self.groupId = groupId
        self.groupName = groupName
    }

    enum CodingKeys: String, CodingKey {
        case groupId
        case groupName
    }

    public func validate() throws {
    }
}

public struct HibernationOptions: Codable, Equatable {
    public var configured: Boolean?

    public init(configured: Boolean? = nil) {
        self.configured = configured
    }

    enum CodingKeys: String, CodingKey {
        case configured
    }

    public func validate() throws {
    }
}

public struct HibernationOptionsRequest: Codable, Equatable {
    public var configured: Boolean?

    public init(configured: Boolean? = nil) {
        self.configured = configured
    }

    enum CodingKeys: String, CodingKey {
        case configured = "Configured"
    }

    public func validate() throws {
    }
}

public struct HistoryRecord: Codable, Equatable {
    public var eventInformation: EventInformation?
    public var eventType: EventType?
    public var timestamp: DateTime?

    public init(eventInformation: EventInformation? = nil,
                eventType: EventType? = nil,
                timestamp: DateTime? = nil) {
        self.eventInformation = eventInformation
        self.eventType = eventType
        self.timestamp = timestamp
    }

    enum CodingKeys: String, CodingKey {
        case eventInformation
        case eventType
        case timestamp
    }

    public func validate() throws {
        try eventInformation?.validate()
    }
}

public struct HistoryRecordEntry: Codable, Equatable {
    public var eventInformation: EventInformation?
    public var eventType: FleetEventType?
    public var timestamp: DateTime?

    public init(eventInformation: EventInformation? = nil,
                eventType: FleetEventType? = nil,
                timestamp: DateTime? = nil) {
        self.eventInformation = eventInformation
        self.eventType = eventType
        self.timestamp = timestamp
    }

    enum CodingKeys: String, CodingKey {
        case eventInformation
        case eventType
        case timestamp
    }

    public func validate() throws {
        try eventInformation?.validate()
    }
}

public struct Host: Codable, Equatable {
    public var allocationTime: DateTime?
    public var autoPlacement: AutoPlacement?
    public var availabilityZone: String?
    public var availableCapacity: AvailableCapacity?
    public var clientToken: String?
    public var hostId: String?
    public var hostProperties: HostProperties?
    public var hostRecovery: HostRecovery?
    public var hostReservationId: String?
    public var instances: HostInstanceList?
    public var releaseTime: DateTime?
    public var state: AllocationState?
    public var tags: TagList?

    public init(allocationTime: DateTime? = nil,
                autoPlacement: AutoPlacement? = nil,
                availabilityZone: String? = nil,
                availableCapacity: AvailableCapacity? = nil,
                clientToken: String? = nil,
                hostId: String? = nil,
                hostProperties: HostProperties? = nil,
                hostRecovery: HostRecovery? = nil,
                hostReservationId: String? = nil,
                instances: HostInstanceList? = nil,
                releaseTime: DateTime? = nil,
                state: AllocationState? = nil,
                tags: TagList? = nil) {
        self.allocationTime = allocationTime
        self.autoPlacement = autoPlacement
        self.availabilityZone = availabilityZone
        self.availableCapacity = availableCapacity
        self.clientToken = clientToken
        self.hostId = hostId
        self.hostProperties = hostProperties
        self.hostRecovery = hostRecovery
        self.hostReservationId = hostReservationId
        self.instances = instances
        self.releaseTime = releaseTime
        self.state = state
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case allocationTime
        case autoPlacement
        case availabilityZone
        case availableCapacity
        case clientToken
        case hostId
        case hostProperties
        case hostRecovery
        case hostReservationId
        case instances
        case releaseTime
        case state
        case tags = "tagSet"
    }

    public func validate() throws {
        try availableCapacity?.validate()
        try hostProperties?.validate()
    }
}

public struct HostInstance: Codable, Equatable {
    public var instanceId: String?
    public var instanceType: String?

    public init(instanceId: String? = nil,
                instanceType: String? = nil) {
        self.instanceId = instanceId
        self.instanceType = instanceType
    }

    enum CodingKeys: String, CodingKey {
        case instanceId
        case instanceType
    }

    public func validate() throws {
    }
}

public struct HostOffering: Codable, Equatable {
    public var currencyCode: CurrencyCodeValues?
    public var duration: Integer?
    public var hourlyPrice: String?
    public var instanceFamily: String?
    public var offeringId: String?
    public var paymentOption: PaymentOption?
    public var upfrontPrice: String?

    public init(currencyCode: CurrencyCodeValues? = nil,
                duration: Integer? = nil,
                hourlyPrice: String? = nil,
                instanceFamily: String? = nil,
                offeringId: String? = nil,
                paymentOption: PaymentOption? = nil,
                upfrontPrice: String? = nil) {
        self.currencyCode = currencyCode
        self.duration = duration
        self.hourlyPrice = hourlyPrice
        self.instanceFamily = instanceFamily
        self.offeringId = offeringId
        self.paymentOption = paymentOption
        self.upfrontPrice = upfrontPrice
    }

    enum CodingKeys: String, CodingKey {
        case currencyCode
        case duration
        case hourlyPrice
        case instanceFamily
        case offeringId
        case paymentOption
        case upfrontPrice
    }

    public func validate() throws {
    }
}

public struct HostProperties: Codable, Equatable {
    public var cores: Integer?
    public var instanceType: String?
    public var sockets: Integer?
    public var totalVCpus: Integer?

    public init(cores: Integer? = nil,
                instanceType: String? = nil,
                sockets: Integer? = nil,
                totalVCpus: Integer? = nil) {
        self.cores = cores
        self.instanceType = instanceType
        self.sockets = sockets
        self.totalVCpus = totalVCpus
    }

    enum CodingKeys: String, CodingKey {
        case cores
        case instanceType
        case sockets
        case totalVCpus
    }

    public func validate() throws {
    }
}

public struct HostReservation: Codable, Equatable {
    public var count: Integer?
    public var currencyCode: CurrencyCodeValues?
    public var duration: Integer?
    public var end: DateTime?
    public var hostIdSet: ResponseHostIdSet?
    public var hostReservationId: String?
    public var hourlyPrice: String?
    public var instanceFamily: String?
    public var offeringId: String?
    public var paymentOption: PaymentOption?
    public var start: DateTime?
    public var state: ReservationState?
    public var tags: TagList?
    public var upfrontPrice: String?

    public init(count: Integer? = nil,
                currencyCode: CurrencyCodeValues? = nil,
                duration: Integer? = nil,
                end: DateTime? = nil,
                hostIdSet: ResponseHostIdSet? = nil,
                hostReservationId: String? = nil,
                hourlyPrice: String? = nil,
                instanceFamily: String? = nil,
                offeringId: String? = nil,
                paymentOption: PaymentOption? = nil,
                start: DateTime? = nil,
                state: ReservationState? = nil,
                tags: TagList? = nil,
                upfrontPrice: String? = nil) {
        self.count = count
        self.currencyCode = currencyCode
        self.duration = duration
        self.end = end
        self.hostIdSet = hostIdSet
        self.hostReservationId = hostReservationId
        self.hourlyPrice = hourlyPrice
        self.instanceFamily = instanceFamily
        self.offeringId = offeringId
        self.paymentOption = paymentOption
        self.start = start
        self.state = state
        self.tags = tags
        self.upfrontPrice = upfrontPrice
    }

    enum CodingKeys: String, CodingKey {
        case count
        case currencyCode
        case duration
        case end
        case hostIdSet
        case hostReservationId
        case hourlyPrice
        case instanceFamily
        case offeringId
        case paymentOption
        case start
        case state
        case tags = "tagSet"
        case upfrontPrice
    }

    public func validate() throws {
    }
}

public struct IamInstanceProfile: Codable, Equatable {
    public var arn: String?
    public var id: String?

    public init(arn: String? = nil,
                id: String? = nil) {
        self.arn = arn
        self.id = id
    }

    enum CodingKeys: String, CodingKey {
        case arn
        case id
    }

    public func validate() throws {
    }
}

public struct IamInstanceProfileAssociation: Codable, Equatable {
    public var associationId: String?
    public var iamInstanceProfile: IamInstanceProfile?
    public var instanceId: String?
    public var state: IamInstanceProfileAssociationState?
    public var timestamp: DateTime?

    public init(associationId: String? = nil,
                iamInstanceProfile: IamInstanceProfile? = nil,
                instanceId: String? = nil,
                state: IamInstanceProfileAssociationState? = nil,
                timestamp: DateTime? = nil) {
        self.associationId = associationId
        self.iamInstanceProfile = iamInstanceProfile
        self.instanceId = instanceId
        self.state = state
        self.timestamp = timestamp
    }

    enum CodingKeys: String, CodingKey {
        case associationId
        case iamInstanceProfile
        case instanceId
        case state
        case timestamp
    }

    public func validate() throws {
        try iamInstanceProfile?.validate()
    }
}

public struct IamInstanceProfileSpecification: Codable, Equatable {
    public var arn: String?
    public var name: String?

    public init(arn: String? = nil,
                name: String? = nil) {
        self.arn = arn
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case arn
        case name
    }

    public func validate() throws {
    }
}

public struct IcmpTypeCode: Codable, Equatable {
    public var code: Integer?
    public var type: Integer?

    public init(code: Integer? = nil,
                type: Integer? = nil) {
        self.code = code
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case code
        case type
    }

    public func validate() throws {
    }
}

public struct IdFormat: Codable, Equatable {
    public var deadline: DateTime?
    public var resource: String?
    public var useLongIds: Boolean?

    public init(deadline: DateTime? = nil,
                resource: String? = nil,
                useLongIds: Boolean? = nil) {
        self.deadline = deadline
        self.resource = resource
        self.useLongIds = useLongIds
    }

    enum CodingKeys: String, CodingKey {
        case deadline
        case resource
        case useLongIds
    }

    public func validate() throws {
    }
}

public struct Image: Codable, Equatable {
    public var architecture: ArchitectureValues?
    public var blockDeviceMappings: BlockDeviceMappingList?
    public var creationDate: String?
    public var description: String?
    public var enaSupport: Boolean?
    public var hypervisor: HypervisorType?
    public var imageId: String?
    public var imageLocation: String?
    public var imageOwnerAlias: String?
    public var imageType: ImageTypeValues?
    public var kernelId: String?
    public var name: String?
    public var ownerId: String?
    public var platform: PlatformValues?
    public var productCodes: ProductCodeList?
    public var `public`: Boolean?
    public var ramdiskId: String?
    public var rootDeviceName: String?
    public var rootDeviceType: DeviceType?
    public var sriovNetSupport: String?
    public var state: ImageState?
    public var stateReason: StateReason?
    public var tags: TagList?
    public var virtualizationType: VirtualizationType?

    public init(architecture: ArchitectureValues? = nil,
                blockDeviceMappings: BlockDeviceMappingList? = nil,
                creationDate: String? = nil,
                description: String? = nil,
                enaSupport: Boolean? = nil,
                hypervisor: HypervisorType? = nil,
                imageId: String? = nil,
                imageLocation: String? = nil,
                imageOwnerAlias: String? = nil,
                imageType: ImageTypeValues? = nil,
                kernelId: String? = nil,
                name: String? = nil,
                ownerId: String? = nil,
                platform: PlatformValues? = nil,
                productCodes: ProductCodeList? = nil,
                `public`: Boolean? = nil,
                ramdiskId: String? = nil,
                rootDeviceName: String? = nil,
                rootDeviceType: DeviceType? = nil,
                sriovNetSupport: String? = nil,
                state: ImageState? = nil,
                stateReason: StateReason? = nil,
                tags: TagList? = nil,
                virtualizationType: VirtualizationType? = nil) {
        self.architecture = architecture
        self.blockDeviceMappings = blockDeviceMappings
        self.creationDate = creationDate
        self.description = description
        self.enaSupport = enaSupport
        self.hypervisor = hypervisor
        self.imageId = imageId
        self.imageLocation = imageLocation
        self.imageOwnerAlias = imageOwnerAlias
        self.imageType = imageType
        self.kernelId = kernelId
        self.name = name
        self.ownerId = ownerId
        self.platform = platform
        self.productCodes = productCodes
        self.`public` = `public`
        self.ramdiskId = ramdiskId
        self.rootDeviceName = rootDeviceName
        self.rootDeviceType = rootDeviceType
        self.sriovNetSupport = sriovNetSupport
        self.state = state
        self.stateReason = stateReason
        self.tags = tags
        self.virtualizationType = virtualizationType
    }

    enum CodingKeys: String, CodingKey {
        case architecture
        case blockDeviceMappings = "blockDeviceMapping"
        case creationDate
        case description
        case enaSupport
        case hypervisor
        case imageId
        case imageLocation
        case imageOwnerAlias
        case imageType
        case kernelId
        case name
        case ownerId = "imageOwnerId"
        case platform
        case productCodes
        case `public` = "isPublic"
        case ramdiskId
        case rootDeviceName
        case rootDeviceType
        case sriovNetSupport
        case state = "imageState"
        case stateReason
        case tags = "tagSet"
        case virtualizationType
    }

    public func validate() throws {
        try stateReason?.validate()
    }
}

public struct ImageAttribute: Codable, Equatable {
    public var blockDeviceMappings: BlockDeviceMappingList?
    public var description: AttributeValue?
    public var imageId: String?
    public var kernelId: AttributeValue?
    public var launchPermissions: LaunchPermissionList?
    public var productCodes: ProductCodeList?
    public var ramdiskId: AttributeValue?
    public var sriovNetSupport: AttributeValue?

    public init(blockDeviceMappings: BlockDeviceMappingList? = nil,
                description: AttributeValue? = nil,
                imageId: String? = nil,
                kernelId: AttributeValue? = nil,
                launchPermissions: LaunchPermissionList? = nil,
                productCodes: ProductCodeList? = nil,
                ramdiskId: AttributeValue? = nil,
                sriovNetSupport: AttributeValue? = nil) {
        self.blockDeviceMappings = blockDeviceMappings
        self.description = description
        self.imageId = imageId
        self.kernelId = kernelId
        self.launchPermissions = launchPermissions
        self.productCodes = productCodes
        self.ramdiskId = ramdiskId
        self.sriovNetSupport = sriovNetSupport
    }

    enum CodingKeys: String, CodingKey {
        case blockDeviceMappings = "blockDeviceMapping"
        case description
        case imageId
        case kernelId = "kernel"
        case launchPermissions = "launchPermission"
        case productCodes
        case ramdiskId = "ramdisk"
        case sriovNetSupport
    }

    public func validate() throws {
        try description?.validate()
        try kernelId?.validate()
        try ramdiskId?.validate()
        try sriovNetSupport?.validate()
    }
}

public struct ImageDiskContainer: Codable, Equatable {
    public var description: String?
    public var deviceName: String?
    public var format: String?
    public var snapshotId: String?
    public var url: String?
    public var userBucket: UserBucket?

    public init(description: String? = nil,
                deviceName: String? = nil,
                format: String? = nil,
                snapshotId: String? = nil,
                url: String? = nil,
                userBucket: UserBucket? = nil) {
        self.description = description
        self.deviceName = deviceName
        self.format = format
        self.snapshotId = snapshotId
        self.url = url
        self.userBucket = userBucket
    }

    enum CodingKeys: String, CodingKey {
        case description = "Description"
        case deviceName = "DeviceName"
        case format = "Format"
        case snapshotId = "SnapshotId"
        case url = "Url"
        case userBucket = "UserBucket"
    }

    public func validate() throws {
        try userBucket?.validate()
    }
}

public struct ImportClientVpnClientCertificateRevocationListRequest: Codable, Equatable {
    public var certificateRevocationList: String
    public var clientVpnEndpointId: String
    public var dryRun: Boolean?

    public init(certificateRevocationList: String,
                clientVpnEndpointId: String,
                dryRun: Boolean? = nil) {
        self.certificateRevocationList = certificateRevocationList
        self.clientVpnEndpointId = clientVpnEndpointId
        self.dryRun = dryRun
    }

    enum CodingKeys: String, CodingKey {
        case certificateRevocationList = "CertificateRevocationList"
        case clientVpnEndpointId = "ClientVpnEndpointId"
        case dryRun = "DryRun"
    }

    public func validate() throws {
    }
}

public struct ImportClientVpnClientCertificateRevocationListResult: Codable, Equatable {
    public var `return`: Boolean?

    public init(`return`: Boolean? = nil) {
        self.`return` = `return`
    }

    enum CodingKeys: String, CodingKey {
        case `return` = "return"
    }

    public func validate() throws {
    }
}

public struct ImportImageRequest: Codable, Equatable {
    public var architecture: String?
    public var clientData: ClientData?
    public var clientToken: String?
    public var description: String?
    public var diskContainers: ImageDiskContainerList?
    public var dryRun: Boolean?
    public var encrypted: Boolean?
    public var hypervisor: String?
    public var kmsKeyId: String?
    public var licenseType: String?
    public var platform: String?
    public var roleName: String?

    public init(architecture: String? = nil,
                clientData: ClientData? = nil,
                clientToken: String? = nil,
                description: String? = nil,
                diskContainers: ImageDiskContainerList? = nil,
                dryRun: Boolean? = nil,
                encrypted: Boolean? = nil,
                hypervisor: String? = nil,
                kmsKeyId: String? = nil,
                licenseType: String? = nil,
                platform: String? = nil,
                roleName: String? = nil) {
        self.architecture = architecture
        self.clientData = clientData
        self.clientToken = clientToken
        self.description = description
        self.diskContainers = diskContainers
        self.dryRun = dryRun
        self.encrypted = encrypted
        self.hypervisor = hypervisor
        self.kmsKeyId = kmsKeyId
        self.licenseType = licenseType
        self.platform = platform
        self.roleName = roleName
    }

    enum CodingKeys: String, CodingKey {
        case architecture = "Architecture"
        case clientData = "ClientData"
        case clientToken = "ClientToken"
        case description = "Description"
        case diskContainers = "DiskContainer"
        case dryRun = "DryRun"
        case encrypted = "Encrypted"
        case hypervisor = "Hypervisor"
        case kmsKeyId = "KmsKeyId"
        case licenseType = "LicenseType"
        case platform = "Platform"
        case roleName = "RoleName"
    }

    public func validate() throws {
        try clientData?.validate()
    }
}

public struct ImportImageResult: Codable, Equatable {
    public var architecture: String?
    public var description: String?
    public var encrypted: Boolean?
    public var hypervisor: String?
    public var imageId: String?
    public var importTaskId: String?
    public var kmsKeyId: String?
    public var licenseType: String?
    public var platform: String?
    public var progress: String?
    public var snapshotDetails: SnapshotDetailList?
    public var status: String?
    public var statusMessage: String?

    public init(architecture: String? = nil,
                description: String? = nil,
                encrypted: Boolean? = nil,
                hypervisor: String? = nil,
                imageId: String? = nil,
                importTaskId: String? = nil,
                kmsKeyId: String? = nil,
                licenseType: String? = nil,
                platform: String? = nil,
                progress: String? = nil,
                snapshotDetails: SnapshotDetailList? = nil,
                status: String? = nil,
                statusMessage: String? = nil) {
        self.architecture = architecture
        self.description = description
        self.encrypted = encrypted
        self.hypervisor = hypervisor
        self.imageId = imageId
        self.importTaskId = importTaskId
        self.kmsKeyId = kmsKeyId
        self.licenseType = licenseType
        self.platform = platform
        self.progress = progress
        self.snapshotDetails = snapshotDetails
        self.status = status
        self.statusMessage = statusMessage
    }

    enum CodingKeys: String, CodingKey {
        case architecture
        case description
        case encrypted
        case hypervisor
        case imageId
        case importTaskId
        case kmsKeyId
        case licenseType
        case platform
        case progress
        case snapshotDetails = "snapshotDetailSet"
        case status
        case statusMessage
    }

    public func validate() throws {
    }
}

public struct ImportImageTask: Codable, Equatable {
    public var architecture: String?
    public var description: String?
    public var encrypted: Boolean?
    public var hypervisor: String?
    public var imageId: String?
    public var importTaskId: String?
    public var kmsKeyId: String?
    public var licenseType: String?
    public var platform: String?
    public var progress: String?
    public var snapshotDetails: SnapshotDetailList?
    public var status: String?
    public var statusMessage: String?

    public init(architecture: String? = nil,
                description: String? = nil,
                encrypted: Boolean? = nil,
                hypervisor: String? = nil,
                imageId: String? = nil,
                importTaskId: String? = nil,
                kmsKeyId: String? = nil,
                licenseType: String? = nil,
                platform: String? = nil,
                progress: String? = nil,
                snapshotDetails: SnapshotDetailList? = nil,
                status: String? = nil,
                statusMessage: String? = nil) {
        self.architecture = architecture
        self.description = description
        self.encrypted = encrypted
        self.hypervisor = hypervisor
        self.imageId = imageId
        self.importTaskId = importTaskId
        self.kmsKeyId = kmsKeyId
        self.licenseType = licenseType
        self.platform = platform
        self.progress = progress
        self.snapshotDetails = snapshotDetails
        self.status = status
        self.statusMessage = statusMessage
    }

    enum CodingKeys: String, CodingKey {
        case architecture
        case description
        case encrypted
        case hypervisor
        case imageId
        case importTaskId
        case kmsKeyId
        case licenseType
        case platform
        case progress
        case snapshotDetails = "snapshotDetailSet"
        case status
        case statusMessage
    }

    public func validate() throws {
    }
}

public struct ImportInstanceLaunchSpecification: Codable, Equatable {
    public var additionalInfo: String?
    public var architecture: ArchitectureValues?
    public var groupIds: SecurityGroupIdStringList?
    public var groupNames: SecurityGroupStringList?
    public var instanceInitiatedShutdownBehavior: ShutdownBehavior?
    public var instanceType: InstanceType?
    public var monitoring: Boolean?
    public var placement: Placement?
    public var privateIpAddress: String?
    public var subnetId: String?
    public var userData: UserData?

    public init(additionalInfo: String? = nil,
                architecture: ArchitectureValues? = nil,
                groupIds: SecurityGroupIdStringList? = nil,
                groupNames: SecurityGroupStringList? = nil,
                instanceInitiatedShutdownBehavior: ShutdownBehavior? = nil,
                instanceType: InstanceType? = nil,
                monitoring: Boolean? = nil,
                placement: Placement? = nil,
                privateIpAddress: String? = nil,
                subnetId: String? = nil,
                userData: UserData? = nil) {
        self.additionalInfo = additionalInfo
        self.architecture = architecture
        self.groupIds = groupIds
        self.groupNames = groupNames
        self.instanceInitiatedShutdownBehavior = instanceInitiatedShutdownBehavior
        self.instanceType = instanceType
        self.monitoring = monitoring
        self.placement = placement
        self.privateIpAddress = privateIpAddress
        self.subnetId = subnetId
        self.userData = userData
    }

    enum CodingKeys: String, CodingKey {
        case additionalInfo
        case architecture
        case groupIds = "GroupId"
        case groupNames = "GroupName"
        case instanceInitiatedShutdownBehavior
        case instanceType
        case monitoring
        case placement
        case privateIpAddress
        case subnetId
        case userData
    }

    public func validate() throws {
        try placement?.validate()
        try userData?.validate()
    }
}

public struct ImportInstanceRequest: Codable, Equatable {
    public var description: String?
    public var diskImages: DiskImageList?
    public var dryRun: Boolean?
    public var launchSpecification: ImportInstanceLaunchSpecification?
    public var platform: PlatformValues

    public init(description: String? = nil,
                diskImages: DiskImageList? = nil,
                dryRun: Boolean? = nil,
                launchSpecification: ImportInstanceLaunchSpecification? = nil,
                platform: PlatformValues) {
        self.description = description
        self.diskImages = diskImages
        self.dryRun = dryRun
        self.launchSpecification = launchSpecification
        self.platform = platform
    }

    enum CodingKeys: String, CodingKey {
        case description
        case diskImages = "diskImage"
        case dryRun
        case launchSpecification
        case platform
    }

    public func validate() throws {
        try launchSpecification?.validate()
    }
}

public struct ImportInstanceResult: Codable, Equatable {
    public var conversionTask: ConversionTask?

    public init(conversionTask: ConversionTask? = nil) {
        self.conversionTask = conversionTask
    }

    enum CodingKeys: String, CodingKey {
        case conversionTask
    }

    public func validate() throws {
        try conversionTask?.validate()
    }
}

public struct ImportInstanceTaskDetails: Codable, Equatable {
    public var description: String?
    public var instanceId: String?
    public var platform: PlatformValues?
    public var volumes: ImportInstanceVolumeDetailSet?

    public init(description: String? = nil,
                instanceId: String? = nil,
                platform: PlatformValues? = nil,
                volumes: ImportInstanceVolumeDetailSet? = nil) {
        self.description = description
        self.instanceId = instanceId
        self.platform = platform
        self.volumes = volumes
    }

    enum CodingKeys: String, CodingKey {
        case description
        case instanceId
        case platform
        case volumes
    }

    public func validate() throws {
    }
}

public struct ImportInstanceVolumeDetailItem: Codable, Equatable {
    public var availabilityZone: String?
    public var bytesConverted: Long?
    public var description: String?
    public var image: DiskImageDescription?
    public var status: String?
    public var statusMessage: String?
    public var volume: DiskImageVolumeDescription?

    public init(availabilityZone: String? = nil,
                bytesConverted: Long? = nil,
                description: String? = nil,
                image: DiskImageDescription? = nil,
                status: String? = nil,
                statusMessage: String? = nil,
                volume: DiskImageVolumeDescription? = nil) {
        self.availabilityZone = availabilityZone
        self.bytesConverted = bytesConverted
        self.description = description
        self.image = image
        self.status = status
        self.statusMessage = statusMessage
        self.volume = volume
    }

    enum CodingKeys: String, CodingKey {
        case availabilityZone
        case bytesConverted
        case description
        case image
        case status
        case statusMessage
        case volume
    }

    public func validate() throws {
        try image?.validate()
        try volume?.validate()
    }
}

public struct ImportKeyPairRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var keyName: String
    public var publicKeyMaterial: Blob

    public init(dryRun: Boolean? = nil,
                keyName: String,
                publicKeyMaterial: Blob) {
        self.dryRun = dryRun
        self.keyName = keyName
        self.publicKeyMaterial = publicKeyMaterial
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case keyName
        case publicKeyMaterial
    }

    public func validate() throws {
    }
}

public struct ImportKeyPairResult: Codable, Equatable {
    public var keyFingerprint: String?
    public var keyName: String?

    public init(keyFingerprint: String? = nil,
                keyName: String? = nil) {
        self.keyFingerprint = keyFingerprint
        self.keyName = keyName
    }

    enum CodingKeys: String, CodingKey {
        case keyFingerprint
        case keyName
    }

    public func validate() throws {
    }
}

public struct ImportSnapshotRequest: Codable, Equatable {
    public var clientData: ClientData?
    public var clientToken: String?
    public var description: String?
    public var diskContainer: SnapshotDiskContainer?
    public var dryRun: Boolean?
    public var encrypted: Boolean?
    public var kmsKeyId: String?
    public var roleName: String?

    public init(clientData: ClientData? = nil,
                clientToken: String? = nil,
                description: String? = nil,
                diskContainer: SnapshotDiskContainer? = nil,
                dryRun: Boolean? = nil,
                encrypted: Boolean? = nil,
                kmsKeyId: String? = nil,
                roleName: String? = nil) {
        self.clientData = clientData
        self.clientToken = clientToken
        self.description = description
        self.diskContainer = diskContainer
        self.dryRun = dryRun
        self.encrypted = encrypted
        self.kmsKeyId = kmsKeyId
        self.roleName = roleName
    }

    enum CodingKeys: String, CodingKey {
        case clientData = "ClientData"
        case clientToken = "ClientToken"
        case description = "Description"
        case diskContainer = "DiskContainer"
        case dryRun = "DryRun"
        case encrypted = "Encrypted"
        case kmsKeyId = "KmsKeyId"
        case roleName = "RoleName"
    }

    public func validate() throws {
        try clientData?.validate()
        try diskContainer?.validate()
    }
}

public struct ImportSnapshotResult: Codable, Equatable {
    public var description: String?
    public var importTaskId: String?
    public var snapshotTaskDetail: SnapshotTaskDetail?

    public init(description: String? = nil,
                importTaskId: String? = nil,
                snapshotTaskDetail: SnapshotTaskDetail? = nil) {
        self.description = description
        self.importTaskId = importTaskId
        self.snapshotTaskDetail = snapshotTaskDetail
    }

    enum CodingKeys: String, CodingKey {
        case description
        case importTaskId
        case snapshotTaskDetail
    }

    public func validate() throws {
        try snapshotTaskDetail?.validate()
    }
}

public struct ImportSnapshotTask: Codable, Equatable {
    public var description: String?
    public var importTaskId: String?
    public var snapshotTaskDetail: SnapshotTaskDetail?

    public init(description: String? = nil,
                importTaskId: String? = nil,
                snapshotTaskDetail: SnapshotTaskDetail? = nil) {
        self.description = description
        self.importTaskId = importTaskId
        self.snapshotTaskDetail = snapshotTaskDetail
    }

    enum CodingKeys: String, CodingKey {
        case description
        case importTaskId
        case snapshotTaskDetail
    }

    public func validate() throws {
        try snapshotTaskDetail?.validate()
    }
}

public struct ImportVolumeRequest: Codable, Equatable {
    public var availabilityZone: String
    public var description: String?
    public var dryRun: Boolean?
    public var image: DiskImageDetail
    public var volume: VolumeDetail

    public init(availabilityZone: String,
                description: String? = nil,
                dryRun: Boolean? = nil,
                image: DiskImageDetail,
                volume: VolumeDetail) {
        self.availabilityZone = availabilityZone
        self.description = description
        self.dryRun = dryRun
        self.image = image
        self.volume = volume
    }

    enum CodingKeys: String, CodingKey {
        case availabilityZone
        case description
        case dryRun
        case image
        case volume
    }

    public func validate() throws {
        try image.validate()
        try volume.validate()
    }
}

public struct ImportVolumeResult: Codable, Equatable {
    public var conversionTask: ConversionTask?

    public init(conversionTask: ConversionTask? = nil) {
        self.conversionTask = conversionTask
    }

    enum CodingKeys: String, CodingKey {
        case conversionTask
    }

    public func validate() throws {
        try conversionTask?.validate()
    }
}

public struct ImportVolumeTaskDetails: Codable, Equatable {
    public var availabilityZone: String?
    public var bytesConverted: Long?
    public var description: String?
    public var image: DiskImageDescription?
    public var volume: DiskImageVolumeDescription?

    public init(availabilityZone: String? = nil,
                bytesConverted: Long? = nil,
                description: String? = nil,
                image: DiskImageDescription? = nil,
                volume: DiskImageVolumeDescription? = nil) {
        self.availabilityZone = availabilityZone
        self.bytesConverted = bytesConverted
        self.description = description
        self.image = image
        self.volume = volume
    }

    enum CodingKeys: String, CodingKey {
        case availabilityZone
        case bytesConverted
        case description
        case image
        case volume
    }

    public func validate() throws {
        try image?.validate()
        try volume?.validate()
    }
}

public struct Instance: Codable, Equatable {
    public var amiLaunchIndex: Integer?
    public var architecture: ArchitectureValues?
    public var blockDeviceMappings: InstanceBlockDeviceMappingList?
    public var capacityReservationId: String?
    public var capacityReservationSpecification: CapacityReservationSpecificationResponse?
    public var clientToken: String?
    public var cpuOptions: CpuOptions?
    public var ebsOptimized: Boolean?
    public var elasticGpuAssociations: ElasticGpuAssociationList?
    public var elasticInferenceAcceleratorAssociations: ElasticInferenceAcceleratorAssociationList?
    public var enaSupport: Boolean?
    public var hibernationOptions: HibernationOptions?
    public var hypervisor: HypervisorType?
    public var iamInstanceProfile: IamInstanceProfile?
    public var imageId: String?
    public var instanceId: String?
    public var instanceLifecycle: InstanceLifecycleType?
    public var instanceType: InstanceType?
    public var kernelId: String?
    public var keyName: String?
    public var launchTime: DateTime?
    public var licenses: LicenseList?
    public var monitoring: Monitoring?
    public var networkInterfaces: InstanceNetworkInterfaceList?
    public var placement: Placement?
    public var platform: PlatformValues?
    public var privateDnsName: String?
    public var privateIpAddress: String?
    public var productCodes: ProductCodeList?
    public var publicDnsName: String?
    public var publicIpAddress: String?
    public var ramdiskId: String?
    public var rootDeviceName: String?
    public var rootDeviceType: DeviceType?
    public var securityGroups: GroupIdentifierList?
    public var sourceDestCheck: Boolean?
    public var spotInstanceRequestId: String?
    public var sriovNetSupport: String?
    public var state: InstanceState?
    public var stateReason: StateReason?
    public var stateTransitionReason: String?
    public var subnetId: String?
    public var tags: TagList?
    public var virtualizationType: VirtualizationType?
    public var vpcId: String?

    public init(amiLaunchIndex: Integer? = nil,
                architecture: ArchitectureValues? = nil,
                blockDeviceMappings: InstanceBlockDeviceMappingList? = nil,
                capacityReservationId: String? = nil,
                capacityReservationSpecification: CapacityReservationSpecificationResponse? = nil,
                clientToken: String? = nil,
                cpuOptions: CpuOptions? = nil,
                ebsOptimized: Boolean? = nil,
                elasticGpuAssociations: ElasticGpuAssociationList? = nil,
                elasticInferenceAcceleratorAssociations: ElasticInferenceAcceleratorAssociationList? = nil,
                enaSupport: Boolean? = nil,
                hibernationOptions: HibernationOptions? = nil,
                hypervisor: HypervisorType? = nil,
                iamInstanceProfile: IamInstanceProfile? = nil,
                imageId: String? = nil,
                instanceId: String? = nil,
                instanceLifecycle: InstanceLifecycleType? = nil,
                instanceType: InstanceType? = nil,
                kernelId: String? = nil,
                keyName: String? = nil,
                launchTime: DateTime? = nil,
                licenses: LicenseList? = nil,
                monitoring: Monitoring? = nil,
                networkInterfaces: InstanceNetworkInterfaceList? = nil,
                placement: Placement? = nil,
                platform: PlatformValues? = nil,
                privateDnsName: String? = nil,
                privateIpAddress: String? = nil,
                productCodes: ProductCodeList? = nil,
                publicDnsName: String? = nil,
                publicIpAddress: String? = nil,
                ramdiskId: String? = nil,
                rootDeviceName: String? = nil,
                rootDeviceType: DeviceType? = nil,
                securityGroups: GroupIdentifierList? = nil,
                sourceDestCheck: Boolean? = nil,
                spotInstanceRequestId: String? = nil,
                sriovNetSupport: String? = nil,
                state: InstanceState? = nil,
                stateReason: StateReason? = nil,
                stateTransitionReason: String? = nil,
                subnetId: String? = nil,
                tags: TagList? = nil,
                virtualizationType: VirtualizationType? = nil,
                vpcId: String? = nil) {
        self.amiLaunchIndex = amiLaunchIndex
        self.architecture = architecture
        self.blockDeviceMappings = blockDeviceMappings
        self.capacityReservationId = capacityReservationId
        self.capacityReservationSpecification = capacityReservationSpecification
        self.clientToken = clientToken
        self.cpuOptions = cpuOptions
        self.ebsOptimized = ebsOptimized
        self.elasticGpuAssociations = elasticGpuAssociations
        self.elasticInferenceAcceleratorAssociations = elasticInferenceAcceleratorAssociations
        self.enaSupport = enaSupport
        self.hibernationOptions = hibernationOptions
        self.hypervisor = hypervisor
        self.iamInstanceProfile = iamInstanceProfile
        self.imageId = imageId
        self.instanceId = instanceId
        self.instanceLifecycle = instanceLifecycle
        self.instanceType = instanceType
        self.kernelId = kernelId
        self.keyName = keyName
        self.launchTime = launchTime
        self.licenses = licenses
        self.monitoring = monitoring
        self.networkInterfaces = networkInterfaces
        self.placement = placement
        self.platform = platform
        self.privateDnsName = privateDnsName
        self.privateIpAddress = privateIpAddress
        self.productCodes = productCodes
        self.publicDnsName = publicDnsName
        self.publicIpAddress = publicIpAddress
        self.ramdiskId = ramdiskId
        self.rootDeviceName = rootDeviceName
        self.rootDeviceType = rootDeviceType
        self.securityGroups = securityGroups
        self.sourceDestCheck = sourceDestCheck
        self.spotInstanceRequestId = spotInstanceRequestId
        self.sriovNetSupport = sriovNetSupport
        self.state = state
        self.stateReason = stateReason
        self.stateTransitionReason = stateTransitionReason
        self.subnetId = subnetId
        self.tags = tags
        self.virtualizationType = virtualizationType
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case amiLaunchIndex
        case architecture
        case blockDeviceMappings = "blockDeviceMapping"
        case capacityReservationId
        case capacityReservationSpecification
        case clientToken
        case cpuOptions
        case ebsOptimized
        case elasticGpuAssociations = "elasticGpuAssociationSet"
        case elasticInferenceAcceleratorAssociations = "elasticInferenceAcceleratorAssociationSet"
        case enaSupport
        case hibernationOptions
        case hypervisor
        case iamInstanceProfile
        case imageId
        case instanceId
        case instanceLifecycle
        case instanceType
        case kernelId
        case keyName
        case launchTime
        case licenses = "licenseSet"
        case monitoring
        case networkInterfaces = "networkInterfaceSet"
        case placement
        case platform
        case privateDnsName
        case privateIpAddress
        case productCodes
        case publicDnsName = "dnsName"
        case publicIpAddress = "ipAddress"
        case ramdiskId
        case rootDeviceName
        case rootDeviceType
        case securityGroups = "groupSet"
        case sourceDestCheck
        case spotInstanceRequestId
        case sriovNetSupport
        case state = "instanceState"
        case stateReason
        case stateTransitionReason = "reason"
        case subnetId
        case tags = "tagSet"
        case virtualizationType
        case vpcId
    }

    public func validate() throws {
        try capacityReservationSpecification?.validate()
        try cpuOptions?.validate()
        try hibernationOptions?.validate()
        try iamInstanceProfile?.validate()
        try monitoring?.validate()
        try placement?.validate()
        try state?.validate()
        try stateReason?.validate()
    }
}

public struct InstanceAttribute: Codable, Equatable {
    public var blockDeviceMappings: InstanceBlockDeviceMappingList?
    public var disableApiTermination: AttributeBooleanValue?
    public var ebsOptimized: AttributeBooleanValue?
    public var enaSupport: AttributeBooleanValue?
    public var groups: GroupIdentifierList?
    public var instanceId: String?
    public var instanceInitiatedShutdownBehavior: AttributeValue?
    public var instanceType: AttributeValue?
    public var kernelId: AttributeValue?
    public var productCodes: ProductCodeList?
    public var ramdiskId: AttributeValue?
    public var rootDeviceName: AttributeValue?
    public var sourceDestCheck: AttributeBooleanValue?
    public var sriovNetSupport: AttributeValue?
    public var userData: AttributeValue?

    public init(blockDeviceMappings: InstanceBlockDeviceMappingList? = nil,
                disableApiTermination: AttributeBooleanValue? = nil,
                ebsOptimized: AttributeBooleanValue? = nil,
                enaSupport: AttributeBooleanValue? = nil,
                groups: GroupIdentifierList? = nil,
                instanceId: String? = nil,
                instanceInitiatedShutdownBehavior: AttributeValue? = nil,
                instanceType: AttributeValue? = nil,
                kernelId: AttributeValue? = nil,
                productCodes: ProductCodeList? = nil,
                ramdiskId: AttributeValue? = nil,
                rootDeviceName: AttributeValue? = nil,
                sourceDestCheck: AttributeBooleanValue? = nil,
                sriovNetSupport: AttributeValue? = nil,
                userData: AttributeValue? = nil) {
        self.blockDeviceMappings = blockDeviceMappings
        self.disableApiTermination = disableApiTermination
        self.ebsOptimized = ebsOptimized
        self.enaSupport = enaSupport
        self.groups = groups
        self.instanceId = instanceId
        self.instanceInitiatedShutdownBehavior = instanceInitiatedShutdownBehavior
        self.instanceType = instanceType
        self.kernelId = kernelId
        self.productCodes = productCodes
        self.ramdiskId = ramdiskId
        self.rootDeviceName = rootDeviceName
        self.sourceDestCheck = sourceDestCheck
        self.sriovNetSupport = sriovNetSupport
        self.userData = userData
    }

    enum CodingKeys: String, CodingKey {
        case blockDeviceMappings = "blockDeviceMapping"
        case disableApiTermination
        case ebsOptimized
        case enaSupport
        case groups = "groupSet"
        case instanceId
        case instanceInitiatedShutdownBehavior
        case instanceType
        case kernelId = "kernel"
        case productCodes
        case ramdiskId = "ramdisk"
        case rootDeviceName
        case sourceDestCheck
        case sriovNetSupport
        case userData
    }

    public func validate() throws {
        try disableApiTermination?.validate()
        try ebsOptimized?.validate()
        try enaSupport?.validate()
        try instanceInitiatedShutdownBehavior?.validate()
        try instanceType?.validate()
        try kernelId?.validate()
        try ramdiskId?.validate()
        try rootDeviceName?.validate()
        try sourceDestCheck?.validate()
        try sriovNetSupport?.validate()
        try userData?.validate()
    }
}

public struct InstanceBlockDeviceMapping: Codable, Equatable {
    public var deviceName: String?
    public var ebs: EbsInstanceBlockDevice?

    public init(deviceName: String? = nil,
                ebs: EbsInstanceBlockDevice? = nil) {
        self.deviceName = deviceName
        self.ebs = ebs
    }

    enum CodingKeys: String, CodingKey {
        case deviceName
        case ebs
    }

    public func validate() throws {
        try ebs?.validate()
    }
}

public struct InstanceBlockDeviceMappingSpecification: Codable, Equatable {
    public var deviceName: String?
    public var ebs: EbsInstanceBlockDeviceSpecification?
    public var noDevice: String?
    public var virtualName: String?

    public init(deviceName: String? = nil,
                ebs: EbsInstanceBlockDeviceSpecification? = nil,
                noDevice: String? = nil,
                virtualName: String? = nil) {
        self.deviceName = deviceName
        self.ebs = ebs
        self.noDevice = noDevice
        self.virtualName = virtualName
    }

    enum CodingKeys: String, CodingKey {
        case deviceName
        case ebs
        case noDevice
        case virtualName
    }

    public func validate() throws {
        try ebs?.validate()
    }
}

public struct InstanceCapacity: Codable, Equatable {
    public var availableCapacity: Integer?
    public var instanceType: String?
    public var totalCapacity: Integer?

    public init(availableCapacity: Integer? = nil,
                instanceType: String? = nil,
                totalCapacity: Integer? = nil) {
        self.availableCapacity = availableCapacity
        self.instanceType = instanceType
        self.totalCapacity = totalCapacity
    }

    enum CodingKeys: String, CodingKey {
        case availableCapacity
        case instanceType
        case totalCapacity
    }

    public func validate() throws {
    }
}

public struct InstanceCount: Codable, Equatable {
    public var instanceCount: Integer?
    public var state: ListingState?

    public init(instanceCount: Integer? = nil,
                state: ListingState? = nil) {
        self.instanceCount = instanceCount
        self.state = state
    }

    enum CodingKeys: String, CodingKey {
        case instanceCount
        case state
    }

    public func validate() throws {
    }
}

public struct InstanceCreditSpecification: Codable, Equatable {
    public var cpuCredits: String?
    public var instanceId: String?

    public init(cpuCredits: String? = nil,
                instanceId: String? = nil) {
        self.cpuCredits = cpuCredits
        self.instanceId = instanceId
    }

    enum CodingKeys: String, CodingKey {
        case cpuCredits
        case instanceId
    }

    public func validate() throws {
    }
}

public struct InstanceCreditSpecificationRequest: Codable, Equatable {
    public var cpuCredits: String?
    public var instanceId: String?

    public init(cpuCredits: String? = nil,
                instanceId: String? = nil) {
        self.cpuCredits = cpuCredits
        self.instanceId = instanceId
    }

    enum CodingKeys: String, CodingKey {
        case cpuCredits = "CpuCredits"
        case instanceId = "InstanceId"
    }

    public func validate() throws {
    }
}

public struct InstanceExportDetails: Codable, Equatable {
    public var instanceId: String?
    public var targetEnvironment: ExportEnvironment?

    public init(instanceId: String? = nil,
                targetEnvironment: ExportEnvironment? = nil) {
        self.instanceId = instanceId
        self.targetEnvironment = targetEnvironment
    }

    enum CodingKeys: String, CodingKey {
        case instanceId
        case targetEnvironment
    }

    public func validate() throws {
    }
}

public struct InstanceIpv6Address: Codable, Equatable {
    public var ipv6Address: String?

    public init(ipv6Address: String? = nil) {
        self.ipv6Address = ipv6Address
    }

    enum CodingKeys: String, CodingKey {
        case ipv6Address
    }

    public func validate() throws {
    }
}

public struct InstanceIpv6AddressRequest: Codable, Equatable {
    public var ipv6Address: String?

    public init(ipv6Address: String? = nil) {
        self.ipv6Address = ipv6Address
    }

    enum CodingKeys: String, CodingKey {
        case ipv6Address = "Ipv6Address"
    }

    public func validate() throws {
    }
}

public struct InstanceMarketOptionsRequest: Codable, Equatable {
    public var marketType: MarketType?
    public var spotOptions: SpotMarketOptions?

    public init(marketType: MarketType? = nil,
                spotOptions: SpotMarketOptions? = nil) {
        self.marketType = marketType
        self.spotOptions = spotOptions
    }

    enum CodingKeys: String, CodingKey {
        case marketType = "MarketType"
        case spotOptions = "SpotOptions"
    }

    public func validate() throws {
        try spotOptions?.validate()
    }
}

public struct InstanceMonitoring: Codable, Equatable {
    public var instanceId: String?
    public var monitoring: Monitoring?

    public init(instanceId: String? = nil,
                monitoring: Monitoring? = nil) {
        self.instanceId = instanceId
        self.monitoring = monitoring
    }

    enum CodingKeys: String, CodingKey {
        case instanceId
        case monitoring
    }

    public func validate() throws {
        try monitoring?.validate()
    }
}

public struct InstanceNetworkInterface: Codable, Equatable {
    public var association: InstanceNetworkInterfaceAssociation?
    public var attachment: InstanceNetworkInterfaceAttachment?
    public var description: String?
    public var groups: GroupIdentifierList?
    public var interfaceType: String?
    public var ipv6Addresses: InstanceIpv6AddressList?
    public var macAddress: String?
    public var networkInterfaceId: String?
    public var ownerId: String?
    public var privateDnsName: String?
    public var privateIpAddress: String?
    public var privateIpAddresses: InstancePrivateIpAddressList?
    public var sourceDestCheck: Boolean?
    public var status: NetworkInterfaceStatus?
    public var subnetId: String?
    public var vpcId: String?

    public init(association: InstanceNetworkInterfaceAssociation? = nil,
                attachment: InstanceNetworkInterfaceAttachment? = nil,
                description: String? = nil,
                groups: GroupIdentifierList? = nil,
                interfaceType: String? = nil,
                ipv6Addresses: InstanceIpv6AddressList? = nil,
                macAddress: String? = nil,
                networkInterfaceId: String? = nil,
                ownerId: String? = nil,
                privateDnsName: String? = nil,
                privateIpAddress: String? = nil,
                privateIpAddresses: InstancePrivateIpAddressList? = nil,
                sourceDestCheck: Boolean? = nil,
                status: NetworkInterfaceStatus? = nil,
                subnetId: String? = nil,
                vpcId: String? = nil) {
        self.association = association
        self.attachment = attachment
        self.description = description
        self.groups = groups
        self.interfaceType = interfaceType
        self.ipv6Addresses = ipv6Addresses
        self.macAddress = macAddress
        self.networkInterfaceId = networkInterfaceId
        self.ownerId = ownerId
        self.privateDnsName = privateDnsName
        self.privateIpAddress = privateIpAddress
        self.privateIpAddresses = privateIpAddresses
        self.sourceDestCheck = sourceDestCheck
        self.status = status
        self.subnetId = subnetId
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case association
        case attachment
        case description
        case groups = "groupSet"
        case interfaceType
        case ipv6Addresses = "ipv6AddressesSet"
        case macAddress
        case networkInterfaceId
        case ownerId
        case privateDnsName
        case privateIpAddress
        case privateIpAddresses = "privateIpAddressesSet"
        case sourceDestCheck
        case status
        case subnetId
        case vpcId
    }

    public func validate() throws {
        try association?.validate()
        try attachment?.validate()
    }
}

public struct InstanceNetworkInterfaceAssociation: Codable, Equatable {
    public var ipOwnerId: String?
    public var publicDnsName: String?
    public var publicIp: String?

    public init(ipOwnerId: String? = nil,
                publicDnsName: String? = nil,
                publicIp: String? = nil) {
        self.ipOwnerId = ipOwnerId
        self.publicDnsName = publicDnsName
        self.publicIp = publicIp
    }

    enum CodingKeys: String, CodingKey {
        case ipOwnerId
        case publicDnsName
        case publicIp
    }

    public func validate() throws {
    }
}

public struct InstanceNetworkInterfaceAttachment: Codable, Equatable {
    public var attachTime: DateTime?
    public var attachmentId: String?
    public var deleteOnTermination: Boolean?
    public var deviceIndex: Integer?
    public var status: AttachmentStatus?

    public init(attachTime: DateTime? = nil,
                attachmentId: String? = nil,
                deleteOnTermination: Boolean? = nil,
                deviceIndex: Integer? = nil,
                status: AttachmentStatus? = nil) {
        self.attachTime = attachTime
        self.attachmentId = attachmentId
        self.deleteOnTermination = deleteOnTermination
        self.deviceIndex = deviceIndex
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case attachTime
        case attachmentId
        case deleteOnTermination
        case deviceIndex
        case status
    }

    public func validate() throws {
    }
}

public struct InstanceNetworkInterfaceSpecification: Codable, Equatable {
    public var associatePublicIpAddress: Boolean?
    public var deleteOnTermination: Boolean?
    public var description: String?
    public var deviceIndex: Integer?
    public var groups: SecurityGroupIdStringList?
    public var interfaceType: String?
    public var ipv6AddressCount: Integer?
    public var ipv6Addresses: InstanceIpv6AddressList?
    public var networkInterfaceId: String?
    public var privateIpAddress: String?
    public var privateIpAddresses: PrivateIpAddressSpecificationList?
    public var secondaryPrivateIpAddressCount: Integer?
    public var subnetId: String?

    public init(associatePublicIpAddress: Boolean? = nil,
                deleteOnTermination: Boolean? = nil,
                description: String? = nil,
                deviceIndex: Integer? = nil,
                groups: SecurityGroupIdStringList? = nil,
                interfaceType: String? = nil,
                ipv6AddressCount: Integer? = nil,
                ipv6Addresses: InstanceIpv6AddressList? = nil,
                networkInterfaceId: String? = nil,
                privateIpAddress: String? = nil,
                privateIpAddresses: PrivateIpAddressSpecificationList? = nil,
                secondaryPrivateIpAddressCount: Integer? = nil,
                subnetId: String? = nil) {
        self.associatePublicIpAddress = associatePublicIpAddress
        self.deleteOnTermination = deleteOnTermination
        self.description = description
        self.deviceIndex = deviceIndex
        self.groups = groups
        self.interfaceType = interfaceType
        self.ipv6AddressCount = ipv6AddressCount
        self.ipv6Addresses = ipv6Addresses
        self.networkInterfaceId = networkInterfaceId
        self.privateIpAddress = privateIpAddress
        self.privateIpAddresses = privateIpAddresses
        self.secondaryPrivateIpAddressCount = secondaryPrivateIpAddressCount
        self.subnetId = subnetId
    }

    enum CodingKeys: String, CodingKey {
        case associatePublicIpAddress
        case deleteOnTermination
        case description
        case deviceIndex
        case groups = "SecurityGroupId"
        case interfaceType = "InterfaceType"
        case ipv6AddressCount
        case ipv6Addresses = "ipv6AddressesSet"
        case networkInterfaceId
        case privateIpAddress
        case privateIpAddresses = "privateIpAddressesSet"
        case secondaryPrivateIpAddressCount
        case subnetId
    }

    public func validate() throws {
    }
}

public struct InstancePrivateIpAddress: Codable, Equatable {
    public var association: InstanceNetworkInterfaceAssociation?
    public var primary: Boolean?
    public var privateDnsName: String?
    public var privateIpAddress: String?

    public init(association: InstanceNetworkInterfaceAssociation? = nil,
                primary: Boolean? = nil,
                privateDnsName: String? = nil,
                privateIpAddress: String? = nil) {
        self.association = association
        self.primary = primary
        self.privateDnsName = privateDnsName
        self.privateIpAddress = privateIpAddress
    }

    enum CodingKeys: String, CodingKey {
        case association
        case primary
        case privateDnsName
        case privateIpAddress
    }

    public func validate() throws {
        try association?.validate()
    }
}

public struct InstanceSpecification: Codable, Equatable {
    public var excludeBootVolume: Boolean?
    public var instanceId: String?

    public init(excludeBootVolume: Boolean? = nil,
                instanceId: String? = nil) {
        self.excludeBootVolume = excludeBootVolume
        self.instanceId = instanceId
    }

    enum CodingKeys: String, CodingKey {
        case excludeBootVolume = "ExcludeBootVolume"
        case instanceId = "InstanceId"
    }

    public func validate() throws {
    }
}

public struct InstanceState: Codable, Equatable {
    public var code: Integer?
    public var name: InstanceStateName?

    public init(code: Integer? = nil,
                name: InstanceStateName? = nil) {
        self.code = code
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case code
        case name
    }

    public func validate() throws {
    }
}

public struct InstanceStateChange: Codable, Equatable {
    public var currentState: InstanceState?
    public var instanceId: String?
    public var previousState: InstanceState?

    public init(currentState: InstanceState? = nil,
                instanceId: String? = nil,
                previousState: InstanceState? = nil) {
        self.currentState = currentState
        self.instanceId = instanceId
        self.previousState = previousState
    }

    enum CodingKeys: String, CodingKey {
        case currentState
        case instanceId
        case previousState
    }

    public func validate() throws {
        try currentState?.validate()
        try previousState?.validate()
    }
}

public struct InstanceStatus: Codable, Equatable {
    public var availabilityZone: String?
    public var events: InstanceStatusEventList?
    public var instanceId: String?
    public var instanceState: InstanceState?
    public var instanceStatus: InstanceStatusSummary?
    public var systemStatus: InstanceStatusSummary?

    public init(availabilityZone: String? = nil,
                events: InstanceStatusEventList? = nil,
                instanceId: String? = nil,
                instanceState: InstanceState? = nil,
                instanceStatus: InstanceStatusSummary? = nil,
                systemStatus: InstanceStatusSummary? = nil) {
        self.availabilityZone = availabilityZone
        self.events = events
        self.instanceId = instanceId
        self.instanceState = instanceState
        self.instanceStatus = instanceStatus
        self.systemStatus = systemStatus
    }

    enum CodingKeys: String, CodingKey {
        case availabilityZone
        case events = "eventsSet"
        case instanceId
        case instanceState
        case instanceStatus
        case systemStatus
    }

    public func validate() throws {
        try instanceState?.validate()
        try instanceStatus?.validate()
        try systemStatus?.validate()
    }
}

public struct InstanceStatusDetails: Codable, Equatable {
    public var impairedSince: DateTime?
    public var name: StatusName?
    public var status: StatusType?

    public init(impairedSince: DateTime? = nil,
                name: StatusName? = nil,
                status: StatusType? = nil) {
        self.impairedSince = impairedSince
        self.name = name
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case impairedSince
        case name
        case status
    }

    public func validate() throws {
    }
}

public struct InstanceStatusEvent: Codable, Equatable {
    public var code: EventCode?
    public var description: String?
    public var instanceEventId: InstanceEventId?
    public var notAfter: DateTime?
    public var notBefore: DateTime?
    public var notBeforeDeadline: DateTime?

    public init(code: EventCode? = nil,
                description: String? = nil,
                instanceEventId: InstanceEventId? = nil,
                notAfter: DateTime? = nil,
                notBefore: DateTime? = nil,
                notBeforeDeadline: DateTime? = nil) {
        self.code = code
        self.description = description
        self.instanceEventId = instanceEventId
        self.notAfter = notAfter
        self.notBefore = notBefore
        self.notBeforeDeadline = notBeforeDeadline
    }

    enum CodingKeys: String, CodingKey {
        case code
        case description
        case instanceEventId
        case notAfter
        case notBefore
        case notBeforeDeadline
    }

    public func validate() throws {
    }
}

public struct InstanceStatusSummary: Codable, Equatable {
    public var details: InstanceStatusDetailsList?
    public var status: SummaryStatus?

    public init(details: InstanceStatusDetailsList? = nil,
                status: SummaryStatus? = nil) {
        self.details = details
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case details
        case status
    }

    public func validate() throws {
    }
}

public struct InternetGateway: Codable, Equatable {
    public var attachments: InternetGatewayAttachmentList?
    public var internetGatewayId: String?
    public var ownerId: String?
    public var tags: TagList?

    public init(attachments: InternetGatewayAttachmentList? = nil,
                internetGatewayId: String? = nil,
                ownerId: String? = nil,
                tags: TagList? = nil) {
        self.attachments = attachments
        self.internetGatewayId = internetGatewayId
        self.ownerId = ownerId
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case attachments = "attachmentSet"
        case internetGatewayId
        case ownerId
        case tags = "tagSet"
    }

    public func validate() throws {
    }
}

public struct InternetGatewayAttachment: Codable, Equatable {
    public var state: AttachmentStatus?
    public var vpcId: String?

    public init(state: AttachmentStatus? = nil,
                vpcId: String? = nil) {
        self.state = state
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case state
        case vpcId
    }

    public func validate() throws {
    }
}

public struct IpPermission: Codable, Equatable {
    public var fromPort: Integer?
    public var ipProtocol: String?
    public var ipRanges: IpRangeList?
    public var ipv6Ranges: Ipv6RangeList?
    public var prefixListIds: PrefixListIdList?
    public var toPort: Integer?
    public var userIdGroupPairs: UserIdGroupPairList?

    public init(fromPort: Integer? = nil,
                ipProtocol: String? = nil,
                ipRanges: IpRangeList? = nil,
                ipv6Ranges: Ipv6RangeList? = nil,
                prefixListIds: PrefixListIdList? = nil,
                toPort: Integer? = nil,
                userIdGroupPairs: UserIdGroupPairList? = nil) {
        self.fromPort = fromPort
        self.ipProtocol = ipProtocol
        self.ipRanges = ipRanges
        self.ipv6Ranges = ipv6Ranges
        self.prefixListIds = prefixListIds
        self.toPort = toPort
        self.userIdGroupPairs = userIdGroupPairs
    }

    enum CodingKeys: String, CodingKey {
        case fromPort
        case ipProtocol
        case ipRanges
        case ipv6Ranges
        case prefixListIds
        case toPort
        case userIdGroupPairs = "groups"
    }

    public func validate() throws {
    }
}

public struct IpRange: Codable, Equatable {
    public var cidrIp: String?
    public var description: String?

    public init(cidrIp: String? = nil,
                description: String? = nil) {
        self.cidrIp = cidrIp
        self.description = description
    }

    enum CodingKeys: String, CodingKey {
        case cidrIp
        case description
    }

    public func validate() throws {
    }
}

public struct Ipv6CidrBlock: Codable, Equatable {
    public var ipv6CidrBlock: String?

    public init(ipv6CidrBlock: String? = nil) {
        self.ipv6CidrBlock = ipv6CidrBlock
    }

    enum CodingKeys: String, CodingKey {
        case ipv6CidrBlock
    }

    public func validate() throws {
    }
}

public struct Ipv6Range: Codable, Equatable {
    public var cidrIpv6: String?
    public var description: String?

    public init(cidrIpv6: String? = nil,
                description: String? = nil) {
        self.cidrIpv6 = cidrIpv6
        self.description = description
    }

    enum CodingKeys: String, CodingKey {
        case cidrIpv6
        case description
    }

    public func validate() throws {
    }
}

public struct KeyPair: Codable, Equatable {
    public var keyFingerprint: String?
    public var keyMaterial: String?
    public var keyName: String?

    public init(keyFingerprint: String? = nil,
                keyMaterial: String? = nil,
                keyName: String? = nil) {
        self.keyFingerprint = keyFingerprint
        self.keyMaterial = keyMaterial
        self.keyName = keyName
    }

    enum CodingKeys: String, CodingKey {
        case keyFingerprint
        case keyMaterial
        case keyName
    }

    public func validate() throws {
    }
}

public struct KeyPairInfo: Codable, Equatable {
    public var keyFingerprint: String?
    public var keyName: String?

    public init(keyFingerprint: String? = nil,
                keyName: String? = nil) {
        self.keyFingerprint = keyFingerprint
        self.keyName = keyName
    }

    enum CodingKeys: String, CodingKey {
        case keyFingerprint
        case keyName
    }

    public func validate() throws {
    }
}

public struct LaunchPermission: Codable, Equatable {
    public var group: PermissionGroup?
    public var userId: String?

    public init(group: PermissionGroup? = nil,
                userId: String? = nil) {
        self.group = group
        self.userId = userId
    }

    enum CodingKeys: String, CodingKey {
        case group
        case userId
    }

    public func validate() throws {
    }
}

public struct LaunchPermissionModifications: Codable, Equatable {
    public var add: LaunchPermissionList?
    public var remove: LaunchPermissionList?

    public init(add: LaunchPermissionList? = nil,
                remove: LaunchPermissionList? = nil) {
        self.add = add
        self.remove = remove
    }

    enum CodingKeys: String, CodingKey {
        case add = "Add"
        case remove = "Remove"
    }

    public func validate() throws {
    }
}

public struct LaunchSpecification: Codable, Equatable {
    public var addressingType: String?
    public var blockDeviceMappings: BlockDeviceMappingList?
    public var ebsOptimized: Boolean?
    public var iamInstanceProfile: IamInstanceProfileSpecification?
    public var imageId: String?
    public var instanceType: InstanceType?
    public var kernelId: String?
    public var keyName: String?
    public var monitoring: RunInstancesMonitoringEnabled?
    public var networkInterfaces: InstanceNetworkInterfaceSpecificationList?
    public var placement: SpotPlacement?
    public var ramdiskId: String?
    public var securityGroups: GroupIdentifierList?
    public var subnetId: String?
    public var userData: String?

    public init(addressingType: String? = nil,
                blockDeviceMappings: BlockDeviceMappingList? = nil,
                ebsOptimized: Boolean? = nil,
                iamInstanceProfile: IamInstanceProfileSpecification? = nil,
                imageId: String? = nil,
                instanceType: InstanceType? = nil,
                kernelId: String? = nil,
                keyName: String? = nil,
                monitoring: RunInstancesMonitoringEnabled? = nil,
                networkInterfaces: InstanceNetworkInterfaceSpecificationList? = nil,
                placement: SpotPlacement? = nil,
                ramdiskId: String? = nil,
                securityGroups: GroupIdentifierList? = nil,
                subnetId: String? = nil,
                userData: String? = nil) {
        self.addressingType = addressingType
        self.blockDeviceMappings = blockDeviceMappings
        self.ebsOptimized = ebsOptimized
        self.iamInstanceProfile = iamInstanceProfile
        self.imageId = imageId
        self.instanceType = instanceType
        self.kernelId = kernelId
        self.keyName = keyName
        self.monitoring = monitoring
        self.networkInterfaces = networkInterfaces
        self.placement = placement
        self.ramdiskId = ramdiskId
        self.securityGroups = securityGroups
        self.subnetId = subnetId
        self.userData = userData
    }

    enum CodingKeys: String, CodingKey {
        case addressingType
        case blockDeviceMappings = "blockDeviceMapping"
        case ebsOptimized
        case iamInstanceProfile
        case imageId
        case instanceType
        case kernelId
        case keyName
        case monitoring
        case networkInterfaces = "networkInterfaceSet"
        case placement
        case ramdiskId
        case securityGroups = "groupSet"
        case subnetId
        case userData
    }

    public func validate() throws {
        try iamInstanceProfile?.validate()
        try monitoring?.validate()
        try placement?.validate()
    }
}

public struct LaunchTemplate: Codable, Equatable {
    public var createTime: DateTime?
    public var createdBy: String?
    public var defaultVersionNumber: Long?
    public var latestVersionNumber: Long?
    public var launchTemplateId: String?
    public var launchTemplateName: LaunchTemplateName?
    public var tags: TagList?

    public init(createTime: DateTime? = nil,
                createdBy: String? = nil,
                defaultVersionNumber: Long? = nil,
                latestVersionNumber: Long? = nil,
                launchTemplateId: String? = nil,
                launchTemplateName: LaunchTemplateName? = nil,
                tags: TagList? = nil) {
        self.createTime = createTime
        self.createdBy = createdBy
        self.defaultVersionNumber = defaultVersionNumber
        self.latestVersionNumber = latestVersionNumber
        self.launchTemplateId = launchTemplateId
        self.launchTemplateName = launchTemplateName
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case createTime
        case createdBy
        case defaultVersionNumber
        case latestVersionNumber
        case launchTemplateId
        case launchTemplateName
        case tags = "tagSet"
    }

    public func validate() throws {
        try launchTemplateName?.validateAsLaunchTemplateName()
    }
}

public struct LaunchTemplateAndOverridesResponse: Codable, Equatable {
    public var launchTemplateSpecification: FleetLaunchTemplateSpecification?
    public var overrides: FleetLaunchTemplateOverrides?

    public init(launchTemplateSpecification: FleetLaunchTemplateSpecification? = nil,
                overrides: FleetLaunchTemplateOverrides? = nil) {
        self.launchTemplateSpecification = launchTemplateSpecification
        self.overrides = overrides
    }

    enum CodingKeys: String, CodingKey {
        case launchTemplateSpecification
        case overrides
    }

    public func validate() throws {
        try launchTemplateSpecification?.validate()
        try overrides?.validate()
    }
}

public struct LaunchTemplateBlockDeviceMapping: Codable, Equatable {
    public var deviceName: String?
    public var ebs: LaunchTemplateEbsBlockDevice?
    public var noDevice: String?
    public var virtualName: String?

    public init(deviceName: String? = nil,
                ebs: LaunchTemplateEbsBlockDevice? = nil,
                noDevice: String? = nil,
                virtualName: String? = nil) {
        self.deviceName = deviceName
        self.ebs = ebs
        self.noDevice = noDevice
        self.virtualName = virtualName
    }

    enum CodingKeys: String, CodingKey {
        case deviceName
        case ebs
        case noDevice
        case virtualName
    }

    public func validate() throws {
        try ebs?.validate()
    }
}

public struct LaunchTemplateBlockDeviceMappingRequest: Codable, Equatable {
    public var deviceName: String?
    public var ebs: LaunchTemplateEbsBlockDeviceRequest?
    public var noDevice: String?
    public var virtualName: String?

    public init(deviceName: String? = nil,
                ebs: LaunchTemplateEbsBlockDeviceRequest? = nil,
                noDevice: String? = nil,
                virtualName: String? = nil) {
        self.deviceName = deviceName
        self.ebs = ebs
        self.noDevice = noDevice
        self.virtualName = virtualName
    }

    enum CodingKeys: String, CodingKey {
        case deviceName = "DeviceName"
        case ebs = "Ebs"
        case noDevice = "NoDevice"
        case virtualName = "VirtualName"
    }

    public func validate() throws {
        try ebs?.validate()
    }
}

public struct LaunchTemplateCapacityReservationSpecificationRequest: Codable, Equatable {
    public var capacityReservationPreference: CapacityReservationPreference?
    public var capacityReservationTarget: CapacityReservationTarget?

    public init(capacityReservationPreference: CapacityReservationPreference? = nil,
                capacityReservationTarget: CapacityReservationTarget? = nil) {
        self.capacityReservationPreference = capacityReservationPreference
        self.capacityReservationTarget = capacityReservationTarget
    }

    enum CodingKeys: String, CodingKey {
        case capacityReservationPreference = "CapacityReservationPreference"
        case capacityReservationTarget = "CapacityReservationTarget"
    }

    public func validate() throws {
        try capacityReservationTarget?.validate()
    }
}

public struct LaunchTemplateCapacityReservationSpecificationResponse: Codable, Equatable {
    public var capacityReservationPreference: CapacityReservationPreference?
    public var capacityReservationTarget: CapacityReservationTargetResponse?

    public init(capacityReservationPreference: CapacityReservationPreference? = nil,
                capacityReservationTarget: CapacityReservationTargetResponse? = nil) {
        self.capacityReservationPreference = capacityReservationPreference
        self.capacityReservationTarget = capacityReservationTarget
    }

    enum CodingKeys: String, CodingKey {
        case capacityReservationPreference
        case capacityReservationTarget
    }

    public func validate() throws {
        try capacityReservationTarget?.validate()
    }
}

public struct LaunchTemplateConfig: Codable, Equatable {
    public var launchTemplateSpecification: FleetLaunchTemplateSpecification?
    public var overrides: LaunchTemplateOverridesList?

    public init(launchTemplateSpecification: FleetLaunchTemplateSpecification? = nil,
                overrides: LaunchTemplateOverridesList? = nil) {
        self.launchTemplateSpecification = launchTemplateSpecification
        self.overrides = overrides
    }

    enum CodingKeys: String, CodingKey {
        case launchTemplateSpecification
        case overrides
    }

    public func validate() throws {
        try launchTemplateSpecification?.validate()
    }
}

public struct LaunchTemplateCpuOptions: Codable, Equatable {
    public var coreCount: Integer?
    public var threadsPerCore: Integer?

    public init(coreCount: Integer? = nil,
                threadsPerCore: Integer? = nil) {
        self.coreCount = coreCount
        self.threadsPerCore = threadsPerCore
    }

    enum CodingKeys: String, CodingKey {
        case coreCount
        case threadsPerCore
    }

    public func validate() throws {
    }
}

public struct LaunchTemplateCpuOptionsRequest: Codable, Equatable {
    public var coreCount: Integer?
    public var threadsPerCore: Integer?

    public init(coreCount: Integer? = nil,
                threadsPerCore: Integer? = nil) {
        self.coreCount = coreCount
        self.threadsPerCore = threadsPerCore
    }

    enum CodingKeys: String, CodingKey {
        case coreCount = "CoreCount"
        case threadsPerCore = "ThreadsPerCore"
    }

    public func validate() throws {
    }
}

public struct LaunchTemplateEbsBlockDevice: Codable, Equatable {
    public var deleteOnTermination: Boolean?
    public var encrypted: Boolean?
    public var iops: Integer?
    public var kmsKeyId: String?
    public var snapshotId: String?
    public var volumeSize: Integer?
    public var volumeType: VolumeType?

    public init(deleteOnTermination: Boolean? = nil,
                encrypted: Boolean? = nil,
                iops: Integer? = nil,
                kmsKeyId: String? = nil,
                snapshotId: String? = nil,
                volumeSize: Integer? = nil,
                volumeType: VolumeType? = nil) {
        self.deleteOnTermination = deleteOnTermination
        self.encrypted = encrypted
        self.iops = iops
        self.kmsKeyId = kmsKeyId
        self.snapshotId = snapshotId
        self.volumeSize = volumeSize
        self.volumeType = volumeType
    }

    enum CodingKeys: String, CodingKey {
        case deleteOnTermination
        case encrypted
        case iops
        case kmsKeyId
        case snapshotId
        case volumeSize
        case volumeType
    }

    public func validate() throws {
    }
}

public struct LaunchTemplateEbsBlockDeviceRequest: Codable, Equatable {
    public var deleteOnTermination: Boolean?
    public var encrypted: Boolean?
    public var iops: Integer?
    public var kmsKeyId: String?
    public var snapshotId: String?
    public var volumeSize: Integer?
    public var volumeType: VolumeType?

    public init(deleteOnTermination: Boolean? = nil,
                encrypted: Boolean? = nil,
                iops: Integer? = nil,
                kmsKeyId: String? = nil,
                snapshotId: String? = nil,
                volumeSize: Integer? = nil,
                volumeType: VolumeType? = nil) {
        self.deleteOnTermination = deleteOnTermination
        self.encrypted = encrypted
        self.iops = iops
        self.kmsKeyId = kmsKeyId
        self.snapshotId = snapshotId
        self.volumeSize = volumeSize
        self.volumeType = volumeType
    }

    enum CodingKeys: String, CodingKey {
        case deleteOnTermination = "DeleteOnTermination"
        case encrypted = "Encrypted"
        case iops = "Iops"
        case kmsKeyId = "KmsKeyId"
        case snapshotId = "SnapshotId"
        case volumeSize = "VolumeSize"
        case volumeType = "VolumeType"
    }

    public func validate() throws {
    }
}

public struct LaunchTemplateElasticInferenceAccelerator: Codable, Equatable {
    public var type: String

    public init(type: String) {
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case type = "Type"
    }

    public func validate() throws {
    }
}

public struct LaunchTemplateElasticInferenceAcceleratorResponse: Codable, Equatable {
    public var type: String?

    public init(type: String? = nil) {
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case type
    }

    public func validate() throws {
    }
}

public struct LaunchTemplateHibernationOptions: Codable, Equatable {
    public var configured: Boolean?

    public init(configured: Boolean? = nil) {
        self.configured = configured
    }

    enum CodingKeys: String, CodingKey {
        case configured
    }

    public func validate() throws {
    }
}

public struct LaunchTemplateHibernationOptionsRequest: Codable, Equatable {
    public var configured: Boolean?

    public init(configured: Boolean? = nil) {
        self.configured = configured
    }

    enum CodingKeys: String, CodingKey {
        case configured = "Configured"
    }

    public func validate() throws {
    }
}

public struct LaunchTemplateIamInstanceProfileSpecification: Codable, Equatable {
    public var arn: String?
    public var name: String?

    public init(arn: String? = nil,
                name: String? = nil) {
        self.arn = arn
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case arn
        case name
    }

    public func validate() throws {
    }
}

public struct LaunchTemplateIamInstanceProfileSpecificationRequest: Codable, Equatable {
    public var arn: String?
    public var name: String?

    public init(arn: String? = nil,
                name: String? = nil) {
        self.arn = arn
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case name = "Name"
    }

    public func validate() throws {
    }
}

public struct LaunchTemplateInstanceMarketOptions: Codable, Equatable {
    public var marketType: MarketType?
    public var spotOptions: LaunchTemplateSpotMarketOptions?

    public init(marketType: MarketType? = nil,
                spotOptions: LaunchTemplateSpotMarketOptions? = nil) {
        self.marketType = marketType
        self.spotOptions = spotOptions
    }

    enum CodingKeys: String, CodingKey {
        case marketType
        case spotOptions
    }

    public func validate() throws {
        try spotOptions?.validate()
    }
}

public struct LaunchTemplateInstanceMarketOptionsRequest: Codable, Equatable {
    public var marketType: MarketType?
    public var spotOptions: LaunchTemplateSpotMarketOptionsRequest?

    public init(marketType: MarketType? = nil,
                spotOptions: LaunchTemplateSpotMarketOptionsRequest? = nil) {
        self.marketType = marketType
        self.spotOptions = spotOptions
    }

    enum CodingKeys: String, CodingKey {
        case marketType = "MarketType"
        case spotOptions = "SpotOptions"
    }

    public func validate() throws {
        try spotOptions?.validate()
    }
}

public struct LaunchTemplateInstanceNetworkInterfaceSpecification: Codable, Equatable {
    public var associatePublicIpAddress: Boolean?
    public var deleteOnTermination: Boolean?
    public var description: String?
    public var deviceIndex: Integer?
    public var groups: GroupIdStringList?
    public var interfaceType: String?
    public var ipv6AddressCount: Integer?
    public var ipv6Addresses: InstanceIpv6AddressList?
    public var networkInterfaceId: String?
    public var privateIpAddress: String?
    public var privateIpAddresses: PrivateIpAddressSpecificationList?
    public var secondaryPrivateIpAddressCount: Integer?
    public var subnetId: String?

    public init(associatePublicIpAddress: Boolean? = nil,
                deleteOnTermination: Boolean? = nil,
                description: String? = nil,
                deviceIndex: Integer? = nil,
                groups: GroupIdStringList? = nil,
                interfaceType: String? = nil,
                ipv6AddressCount: Integer? = nil,
                ipv6Addresses: InstanceIpv6AddressList? = nil,
                networkInterfaceId: String? = nil,
                privateIpAddress: String? = nil,
                privateIpAddresses: PrivateIpAddressSpecificationList? = nil,
                secondaryPrivateIpAddressCount: Integer? = nil,
                subnetId: String? = nil) {
        self.associatePublicIpAddress = associatePublicIpAddress
        self.deleteOnTermination = deleteOnTermination
        self.description = description
        self.deviceIndex = deviceIndex
        self.groups = groups
        self.interfaceType = interfaceType
        self.ipv6AddressCount = ipv6AddressCount
        self.ipv6Addresses = ipv6Addresses
        self.networkInterfaceId = networkInterfaceId
        self.privateIpAddress = privateIpAddress
        self.privateIpAddresses = privateIpAddresses
        self.secondaryPrivateIpAddressCount = secondaryPrivateIpAddressCount
        self.subnetId = subnetId
    }

    enum CodingKeys: String, CodingKey {
        case associatePublicIpAddress
        case deleteOnTermination
        case description
        case deviceIndex
        case groups = "groupSet"
        case interfaceType
        case ipv6AddressCount
        case ipv6Addresses = "ipv6AddressesSet"
        case networkInterfaceId
        case privateIpAddress
        case privateIpAddresses = "privateIpAddressesSet"
        case secondaryPrivateIpAddressCount
        case subnetId
    }

    public func validate() throws {
    }
}

public struct LaunchTemplateInstanceNetworkInterfaceSpecificationRequest: Codable, Equatable {
    public var associatePublicIpAddress: Boolean?
    public var deleteOnTermination: Boolean?
    public var description: String?
    public var deviceIndex: Integer?
    public var groups: SecurityGroupIdStringList?
    public var interfaceType: String?
    public var ipv6AddressCount: Integer?
    public var ipv6Addresses: InstanceIpv6AddressListRequest?
    public var networkInterfaceId: String?
    public var privateIpAddress: String?
    public var privateIpAddresses: PrivateIpAddressSpecificationList?
    public var secondaryPrivateIpAddressCount: Integer?
    public var subnetId: String?

    public init(associatePublicIpAddress: Boolean? = nil,
                deleteOnTermination: Boolean? = nil,
                description: String? = nil,
                deviceIndex: Integer? = nil,
                groups: SecurityGroupIdStringList? = nil,
                interfaceType: String? = nil,
                ipv6AddressCount: Integer? = nil,
                ipv6Addresses: InstanceIpv6AddressListRequest? = nil,
                networkInterfaceId: String? = nil,
                privateIpAddress: String? = nil,
                privateIpAddresses: PrivateIpAddressSpecificationList? = nil,
                secondaryPrivateIpAddressCount: Integer? = nil,
                subnetId: String? = nil) {
        self.associatePublicIpAddress = associatePublicIpAddress
        self.deleteOnTermination = deleteOnTermination
        self.description = description
        self.deviceIndex = deviceIndex
        self.groups = groups
        self.interfaceType = interfaceType
        self.ipv6AddressCount = ipv6AddressCount
        self.ipv6Addresses = ipv6Addresses
        self.networkInterfaceId = networkInterfaceId
        self.privateIpAddress = privateIpAddress
        self.privateIpAddresses = privateIpAddresses
        self.secondaryPrivateIpAddressCount = secondaryPrivateIpAddressCount
        self.subnetId = subnetId
    }

    enum CodingKeys: String, CodingKey {
        case associatePublicIpAddress = "AssociatePublicIpAddress"
        case deleteOnTermination = "DeleteOnTermination"
        case description = "Description"
        case deviceIndex = "DeviceIndex"
        case groups = "SecurityGroupId"
        case interfaceType = "InterfaceType"
        case ipv6AddressCount = "Ipv6AddressCount"
        case ipv6Addresses = "Ipv6Addresses"
        case networkInterfaceId = "NetworkInterfaceId"
        case privateIpAddress = "PrivateIpAddress"
        case privateIpAddresses = "PrivateIpAddresses"
        case secondaryPrivateIpAddressCount = "SecondaryPrivateIpAddressCount"
        case subnetId = "SubnetId"
    }

    public func validate() throws {
    }
}

public struct LaunchTemplateLicenseConfiguration: Codable, Equatable {
    public var licenseConfigurationArn: String?

    public init(licenseConfigurationArn: String? = nil) {
        self.licenseConfigurationArn = licenseConfigurationArn
    }

    enum CodingKeys: String, CodingKey {
        case licenseConfigurationArn
    }

    public func validate() throws {
    }
}

public struct LaunchTemplateLicenseConfigurationRequest: Codable, Equatable {
    public var licenseConfigurationArn: String?

    public init(licenseConfigurationArn: String? = nil) {
        self.licenseConfigurationArn = licenseConfigurationArn
    }

    enum CodingKeys: String, CodingKey {
        case licenseConfigurationArn = "LicenseConfigurationArn"
    }

    public func validate() throws {
    }
}

public struct LaunchTemplateOverrides: Codable, Equatable {
    public var availabilityZone: String?
    public var instanceType: InstanceType?
    public var priority: Double?
    public var spotPrice: String?
    public var subnetId: String?
    public var weightedCapacity: Double?

    public init(availabilityZone: String? = nil,
                instanceType: InstanceType? = nil,
                priority: Double? = nil,
                spotPrice: String? = nil,
                subnetId: String? = nil,
                weightedCapacity: Double? = nil) {
        self.availabilityZone = availabilityZone
        self.instanceType = instanceType
        self.priority = priority
        self.spotPrice = spotPrice
        self.subnetId = subnetId
        self.weightedCapacity = weightedCapacity
    }

    enum CodingKeys: String, CodingKey {
        case availabilityZone
        case instanceType
        case priority
        case spotPrice
        case subnetId
        case weightedCapacity
    }

    public func validate() throws {
    }
}

public struct LaunchTemplatePlacement: Codable, Equatable {
    public var affinity: String?
    public var availabilityZone: String?
    public var groupName: String?
    public var hostId: String?
    public var spreadDomain: String?
    public var tenancy: Tenancy?

    public init(affinity: String? = nil,
                availabilityZone: String? = nil,
                groupName: String? = nil,
                hostId: String? = nil,
                spreadDomain: String? = nil,
                tenancy: Tenancy? = nil) {
        self.affinity = affinity
        self.availabilityZone = availabilityZone
        self.groupName = groupName
        self.hostId = hostId
        self.spreadDomain = spreadDomain
        self.tenancy = tenancy
    }

    enum CodingKeys: String, CodingKey {
        case affinity
        case availabilityZone
        case groupName
        case hostId
        case spreadDomain
        case tenancy
    }

    public func validate() throws {
    }
}

public struct LaunchTemplatePlacementRequest: Codable, Equatable {
    public var affinity: String?
    public var availabilityZone: String?
    public var groupName: String?
    public var hostId: String?
    public var spreadDomain: String?
    public var tenancy: Tenancy?

    public init(affinity: String? = nil,
                availabilityZone: String? = nil,
                groupName: String? = nil,
                hostId: String? = nil,
                spreadDomain: String? = nil,
                tenancy: Tenancy? = nil) {
        self.affinity = affinity
        self.availabilityZone = availabilityZone
        self.groupName = groupName
        self.hostId = hostId
        self.spreadDomain = spreadDomain
        self.tenancy = tenancy
    }

    enum CodingKeys: String, CodingKey {
        case affinity = "Affinity"
        case availabilityZone = "AvailabilityZone"
        case groupName = "GroupName"
        case hostId = "HostId"
        case spreadDomain = "SpreadDomain"
        case tenancy = "Tenancy"
    }

    public func validate() throws {
    }
}

public struct LaunchTemplateSpecification: Codable, Equatable {
    public var launchTemplateId: String?
    public var launchTemplateName: String?
    public var version: String?

    public init(launchTemplateId: String? = nil,
                launchTemplateName: String? = nil,
                version: String? = nil) {
        self.launchTemplateId = launchTemplateId
        self.launchTemplateName = launchTemplateName
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case launchTemplateId = "LaunchTemplateId"
        case launchTemplateName = "LaunchTemplateName"
        case version = "Version"
    }

    public func validate() throws {
    }
}

public struct LaunchTemplateSpotMarketOptions: Codable, Equatable {
    public var blockDurationMinutes: Integer?
    public var instanceInterruptionBehavior: InstanceInterruptionBehavior?
    public var maxPrice: String?
    public var spotInstanceType: SpotInstanceType?
    public var validUntil: DateTime?

    public init(blockDurationMinutes: Integer? = nil,
                instanceInterruptionBehavior: InstanceInterruptionBehavior? = nil,
                maxPrice: String? = nil,
                spotInstanceType: SpotInstanceType? = nil,
                validUntil: DateTime? = nil) {
        self.blockDurationMinutes = blockDurationMinutes
        self.instanceInterruptionBehavior = instanceInterruptionBehavior
        self.maxPrice = maxPrice
        self.spotInstanceType = spotInstanceType
        self.validUntil = validUntil
    }

    enum CodingKeys: String, CodingKey {
        case blockDurationMinutes
        case instanceInterruptionBehavior
        case maxPrice
        case spotInstanceType
        case validUntil
    }

    public func validate() throws {
    }
}

public struct LaunchTemplateSpotMarketOptionsRequest: Codable, Equatable {
    public var blockDurationMinutes: Integer?
    public var instanceInterruptionBehavior: InstanceInterruptionBehavior?
    public var maxPrice: String?
    public var spotInstanceType: SpotInstanceType?
    public var validUntil: DateTime?

    public init(blockDurationMinutes: Integer? = nil,
                instanceInterruptionBehavior: InstanceInterruptionBehavior? = nil,
                maxPrice: String? = nil,
                spotInstanceType: SpotInstanceType? = nil,
                validUntil: DateTime? = nil) {
        self.blockDurationMinutes = blockDurationMinutes
        self.instanceInterruptionBehavior = instanceInterruptionBehavior
        self.maxPrice = maxPrice
        self.spotInstanceType = spotInstanceType
        self.validUntil = validUntil
    }

    enum CodingKeys: String, CodingKey {
        case blockDurationMinutes = "BlockDurationMinutes"
        case instanceInterruptionBehavior = "InstanceInterruptionBehavior"
        case maxPrice = "MaxPrice"
        case spotInstanceType = "SpotInstanceType"
        case validUntil = "ValidUntil"
    }

    public func validate() throws {
    }
}

public struct LaunchTemplateTagSpecification: Codable, Equatable {
    public var resourceType: ResourceType?
    public var tags: TagList?

    public init(resourceType: ResourceType? = nil,
                tags: TagList? = nil) {
        self.resourceType = resourceType
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case resourceType
        case tags = "tagSet"
    }

    public func validate() throws {
    }
}

public struct LaunchTemplateTagSpecificationRequest: Codable, Equatable {
    public var resourceType: ResourceType?
    public var tags: TagList?

    public init(resourceType: ResourceType? = nil,
                tags: TagList? = nil) {
        self.resourceType = resourceType
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case resourceType = "ResourceType"
        case tags = "Tag"
    }

    public func validate() throws {
    }
}

public struct LaunchTemplateVersion: Codable, Equatable {
    public var createTime: DateTime?
    public var createdBy: String?
    public var defaultVersion: Boolean?
    public var launchTemplateData: ResponseLaunchTemplateData?
    public var launchTemplateId: String?
    public var launchTemplateName: LaunchTemplateName?
    public var versionDescription: VersionDescription?
    public var versionNumber: Long?

    public init(createTime: DateTime? = nil,
                createdBy: String? = nil,
                defaultVersion: Boolean? = nil,
                launchTemplateData: ResponseLaunchTemplateData? = nil,
                launchTemplateId: String? = nil,
                launchTemplateName: LaunchTemplateName? = nil,
                versionDescription: VersionDescription? = nil,
                versionNumber: Long? = nil) {
        self.createTime = createTime
        self.createdBy = createdBy
        self.defaultVersion = defaultVersion
        self.launchTemplateData = launchTemplateData
        self.launchTemplateId = launchTemplateId
        self.launchTemplateName = launchTemplateName
        self.versionDescription = versionDescription
        self.versionNumber = versionNumber
    }

    enum CodingKeys: String, CodingKey {
        case createTime
        case createdBy
        case defaultVersion
        case launchTemplateData
        case launchTemplateId
        case launchTemplateName
        case versionDescription
        case versionNumber
    }

    public func validate() throws {
        try launchTemplateData?.validate()
        try launchTemplateName?.validateAsLaunchTemplateName()
        try versionDescription?.validateAsVersionDescription()
    }
}

public struct LaunchTemplatesMonitoring: Codable, Equatable {
    public var enabled: Boolean?

    public init(enabled: Boolean? = nil) {
        self.enabled = enabled
    }

    enum CodingKeys: String, CodingKey {
        case enabled
    }

    public func validate() throws {
    }
}

public struct LaunchTemplatesMonitoringRequest: Codable, Equatable {
    public var enabled: Boolean?

    public init(enabled: Boolean? = nil) {
        self.enabled = enabled
    }

    enum CodingKeys: String, CodingKey {
        case enabled = "Enabled"
    }

    public func validate() throws {
    }
}

public struct LicenseConfiguration: Codable, Equatable {
    public var licenseConfigurationArn: String?

    public init(licenseConfigurationArn: String? = nil) {
        self.licenseConfigurationArn = licenseConfigurationArn
    }

    enum CodingKeys: String, CodingKey {
        case licenseConfigurationArn
    }

    public func validate() throws {
    }
}

public struct LicenseConfigurationRequest: Codable, Equatable {
    public var licenseConfigurationArn: String?

    public init(licenseConfigurationArn: String? = nil) {
        self.licenseConfigurationArn = licenseConfigurationArn
    }

    enum CodingKeys: String, CodingKey {
        case licenseConfigurationArn = "LicenseConfigurationArn"
    }

    public func validate() throws {
    }
}

public struct LoadBalancersConfig: Codable, Equatable {
    public var classicLoadBalancersConfig: ClassicLoadBalancersConfig?
    public var targetGroupsConfig: TargetGroupsConfig?

    public init(classicLoadBalancersConfig: ClassicLoadBalancersConfig? = nil,
                targetGroupsConfig: TargetGroupsConfig? = nil) {
        self.classicLoadBalancersConfig = classicLoadBalancersConfig
        self.targetGroupsConfig = targetGroupsConfig
    }

    enum CodingKeys: String, CodingKey {
        case classicLoadBalancersConfig
        case targetGroupsConfig
    }

    public func validate() throws {
        try classicLoadBalancersConfig?.validate()
        try targetGroupsConfig?.validate()
    }
}

public struct LoadPermission: Codable, Equatable {
    public var group: PermissionGroup?
    public var userId: String?

    public init(group: PermissionGroup? = nil,
                userId: String? = nil) {
        self.group = group
        self.userId = userId
    }

    enum CodingKeys: String, CodingKey {
        case group
        case userId
    }

    public func validate() throws {
    }
}

public struct LoadPermissionModifications: Codable, Equatable {
    public var add: LoadPermissionListRequest?
    public var remove: LoadPermissionListRequest?

    public init(add: LoadPermissionListRequest? = nil,
                remove: LoadPermissionListRequest? = nil) {
        self.add = add
        self.remove = remove
    }

    enum CodingKeys: String, CodingKey {
        case add = "Add"
        case remove = "Remove"
    }

    public func validate() throws {
    }
}

public struct LoadPermissionRequest: Codable, Equatable {
    public var group: PermissionGroup?
    public var userId: String?

    public init(group: PermissionGroup? = nil,
                userId: String? = nil) {
        self.group = group
        self.userId = userId
    }

    enum CodingKeys: String, CodingKey {
        case group = "Group"
        case userId = "UserId"
    }

    public func validate() throws {
    }
}

public struct ModifyCapacityReservationRequest: Codable, Equatable {
    public var capacityReservationId: String
    public var dryRun: Boolean?
    public var endDate: DateTime?
    public var endDateType: EndDateType?
    public var instanceCount: Integer?

    public init(capacityReservationId: String,
                dryRun: Boolean? = nil,
                endDate: DateTime? = nil,
                endDateType: EndDateType? = nil,
                instanceCount: Integer? = nil) {
        self.capacityReservationId = capacityReservationId
        self.dryRun = dryRun
        self.endDate = endDate
        self.endDateType = endDateType
        self.instanceCount = instanceCount
    }

    enum CodingKeys: String, CodingKey {
        case capacityReservationId = "CapacityReservationId"
        case dryRun = "DryRun"
        case endDate = "EndDate"
        case endDateType = "EndDateType"
        case instanceCount = "InstanceCount"
    }

    public func validate() throws {
    }
}

public struct ModifyCapacityReservationResult: Codable, Equatable {
    public var `return`: Boolean?

    public init(`return`: Boolean? = nil) {
        self.`return` = `return`
    }

    enum CodingKeys: String, CodingKey {
        case `return` = "return"
    }

    public func validate() throws {
    }
}

public struct ModifyClientVpnEndpointRequest: Codable, Equatable {
    public var clientVpnEndpointId: String
    public var connectionLogOptions: ConnectionLogOptions?
    public var description: String?
    public var dnsServers: DnsServersOptionsModifyStructure?
    public var dryRun: Boolean?
    public var serverCertificateArn: String?

    public init(clientVpnEndpointId: String,
                connectionLogOptions: ConnectionLogOptions? = nil,
                description: String? = nil,
                dnsServers: DnsServersOptionsModifyStructure? = nil,
                dryRun: Boolean? = nil,
                serverCertificateArn: String? = nil) {
        self.clientVpnEndpointId = clientVpnEndpointId
        self.connectionLogOptions = connectionLogOptions
        self.description = description
        self.dnsServers = dnsServers
        self.dryRun = dryRun
        self.serverCertificateArn = serverCertificateArn
    }

    enum CodingKeys: String, CodingKey {
        case clientVpnEndpointId = "ClientVpnEndpointId"
        case connectionLogOptions = "ConnectionLogOptions"
        case description = "Description"
        case dnsServers = "DnsServers"
        case dryRun = "DryRun"
        case serverCertificateArn = "ServerCertificateArn"
    }

    public func validate() throws {
        try connectionLogOptions?.validate()
        try dnsServers?.validate()
    }
}

public struct ModifyClientVpnEndpointResult: Codable, Equatable {
    public var `return`: Boolean?

    public init(`return`: Boolean? = nil) {
        self.`return` = `return`
    }

    enum CodingKeys: String, CodingKey {
        case `return` = "return"
    }

    public func validate() throws {
    }
}

public struct ModifyEbsDefaultKmsKeyIdRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var kmsKeyId: String

    public init(dryRun: Boolean? = nil,
                kmsKeyId: String) {
        self.dryRun = dryRun
        self.kmsKeyId = kmsKeyId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case kmsKeyId = "KmsKeyId"
    }

    public func validate() throws {
    }
}

public struct ModifyEbsDefaultKmsKeyIdResult: Codable, Equatable {
    public var kmsKeyId: String?

    public init(kmsKeyId: String? = nil) {
        self.kmsKeyId = kmsKeyId
    }

    enum CodingKeys: String, CodingKey {
        case kmsKeyId
    }

    public func validate() throws {
    }
}

public struct ModifyFleetRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var excessCapacityTerminationPolicy: FleetExcessCapacityTerminationPolicy?
    public var fleetId: FleetIdentifier
    public var targetCapacitySpecification: TargetCapacitySpecificationRequest

    public init(dryRun: Boolean? = nil,
                excessCapacityTerminationPolicy: FleetExcessCapacityTerminationPolicy? = nil,
                fleetId: FleetIdentifier,
                targetCapacitySpecification: TargetCapacitySpecificationRequest) {
        self.dryRun = dryRun
        self.excessCapacityTerminationPolicy = excessCapacityTerminationPolicy
        self.fleetId = fleetId
        self.targetCapacitySpecification = targetCapacitySpecification
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case excessCapacityTerminationPolicy = "ExcessCapacityTerminationPolicy"
        case fleetId = "FleetId"
        case targetCapacitySpecification = "TargetCapacitySpecification"
    }

    public func validate() throws {
        try targetCapacitySpecification.validate()
    }
}

public struct ModifyFleetResult: Codable, Equatable {
    public var `return`: Boolean?

    public init(`return`: Boolean? = nil) {
        self.`return` = `return`
    }

    enum CodingKeys: String, CodingKey {
        case `return` = "return"
    }

    public func validate() throws {
    }
}

public struct ModifyFpgaImageAttributeRequest: Codable, Equatable {
    public var attribute: FpgaImageAttributeName?
    public var description: String?
    public var dryRun: Boolean?
    public var fpgaImageId: String
    public var loadPermission: LoadPermissionModifications?
    public var name: String?
    public var operationType: OperationType?
    public var productCodes: ProductCodeStringList?
    public var userGroups: UserGroupStringList?
    public var userIds: UserIdStringList?

    public init(attribute: FpgaImageAttributeName? = nil,
                description: String? = nil,
                dryRun: Boolean? = nil,
                fpgaImageId: String,
                loadPermission: LoadPermissionModifications? = nil,
                name: String? = nil,
                operationType: OperationType? = nil,
                productCodes: ProductCodeStringList? = nil,
                userGroups: UserGroupStringList? = nil,
                userIds: UserIdStringList? = nil) {
        self.attribute = attribute
        self.description = description
        self.dryRun = dryRun
        self.fpgaImageId = fpgaImageId
        self.loadPermission = loadPermission
        self.name = name
        self.operationType = operationType
        self.productCodes = productCodes
        self.userGroups = userGroups
        self.userIds = userIds
    }

    enum CodingKeys: String, CodingKey {
        case attribute = "Attribute"
        case description = "Description"
        case dryRun = "DryRun"
        case fpgaImageId = "FpgaImageId"
        case loadPermission = "LoadPermission"
        case name = "Name"
        case operationType = "OperationType"
        case productCodes = "ProductCode"
        case userGroups = "UserGroup"
        case userIds = "UserId"
    }

    public func validate() throws {
        try loadPermission?.validate()
    }
}

public struct ModifyFpgaImageAttributeResult: Codable, Equatable {
    public var fpgaImageAttribute: FpgaImageAttribute?

    public init(fpgaImageAttribute: FpgaImageAttribute? = nil) {
        self.fpgaImageAttribute = fpgaImageAttribute
    }

    enum CodingKeys: String, CodingKey {
        case fpgaImageAttribute
    }

    public func validate() throws {
        try fpgaImageAttribute?.validate()
    }
}

public struct ModifyHostsRequest: Codable, Equatable {
    public var autoPlacement: AutoPlacement?
    public var hostIds: RequestHostIdList
    public var hostRecovery: HostRecovery?

    public init(autoPlacement: AutoPlacement? = nil,
                hostIds: RequestHostIdList,
                hostRecovery: HostRecovery? = nil) {
        self.autoPlacement = autoPlacement
        self.hostIds = hostIds
        self.hostRecovery = hostRecovery
    }

    enum CodingKeys: String, CodingKey {
        case autoPlacement
        case hostIds = "hostId"
        case hostRecovery = "HostRecovery"
    }

    public func validate() throws {
    }
}

public struct ModifyHostsResult: Codable, Equatable {
    public var successful: ResponseHostIdList?
    public var unsuccessful: UnsuccessfulItemList?

    public init(successful: ResponseHostIdList? = nil,
                unsuccessful: UnsuccessfulItemList? = nil) {
        self.successful = successful
        self.unsuccessful = unsuccessful
    }

    enum CodingKeys: String, CodingKey {
        case successful
        case unsuccessful
    }

    public func validate() throws {
    }
}

public struct ModifyIdFormatRequest: Codable, Equatable {
    public var resource: String
    public var useLongIds: Boolean

    public init(resource: String,
                useLongIds: Boolean) {
        self.resource = resource
        self.useLongIds = useLongIds
    }

    enum CodingKeys: String, CodingKey {
        case resource = "Resource"
        case useLongIds = "UseLongIds"
    }

    public func validate() throws {
    }
}

public struct ModifyIdentityIdFormatRequest: Codable, Equatable {
    public var principalArn: String
    public var resource: String
    public var useLongIds: Boolean

    public init(principalArn: String,
                resource: String,
                useLongIds: Boolean) {
        self.principalArn = principalArn
        self.resource = resource
        self.useLongIds = useLongIds
    }

    enum CodingKeys: String, CodingKey {
        case principalArn
        case resource
        case useLongIds
    }

    public func validate() throws {
    }
}

public struct ModifyImageAttributeRequest: Codable, Equatable {
    public var attribute: String?
    public var description: AttributeValue?
    public var dryRun: Boolean?
    public var imageId: String
    public var launchPermission: LaunchPermissionModifications?
    public var operationType: OperationType?
    public var productCodes: ProductCodeStringList?
    public var userGroups: UserGroupStringList?
    public var userIds: UserIdStringList?
    public var value: String?

    public init(attribute: String? = nil,
                description: AttributeValue? = nil,
                dryRun: Boolean? = nil,
                imageId: String,
                launchPermission: LaunchPermissionModifications? = nil,
                operationType: OperationType? = nil,
                productCodes: ProductCodeStringList? = nil,
                userGroups: UserGroupStringList? = nil,
                userIds: UserIdStringList? = nil,
                value: String? = nil) {
        self.attribute = attribute
        self.description = description
        self.dryRun = dryRun
        self.imageId = imageId
        self.launchPermission = launchPermission
        self.operationType = operationType
        self.productCodes = productCodes
        self.userGroups = userGroups
        self.userIds = userIds
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case attribute = "Attribute"
        case description = "Description"
        case dryRun
        case imageId = "ImageId"
        case launchPermission = "LaunchPermission"
        case operationType = "OperationType"
        case productCodes = "ProductCode"
        case userGroups = "UserGroup"
        case userIds = "UserId"
        case value = "Value"
    }

    public func validate() throws {
        try description?.validate()
        try launchPermission?.validate()
    }
}

public struct ModifyInstanceAttributeRequest: Codable, Equatable {
    public var attribute: InstanceAttributeName?
    public var blockDeviceMappings: InstanceBlockDeviceMappingSpecificationList?
    public var disableApiTermination: AttributeBooleanValue?
    public var dryRun: Boolean?
    public var ebsOptimized: AttributeBooleanValue?
    public var enaSupport: AttributeBooleanValue?
    public var groups: GroupIdStringList?
    public var instanceId: String
    public var instanceInitiatedShutdownBehavior: AttributeValue?
    public var instanceType: AttributeValue?
    public var kernel: AttributeValue?
    public var ramdisk: AttributeValue?
    public var sourceDestCheck: AttributeBooleanValue?
    public var sriovNetSupport: AttributeValue?
    public var userData: BlobAttributeValue?
    public var value: String?

    public init(attribute: InstanceAttributeName? = nil,
                blockDeviceMappings: InstanceBlockDeviceMappingSpecificationList? = nil,
                disableApiTermination: AttributeBooleanValue? = nil,
                dryRun: Boolean? = nil,
                ebsOptimized: AttributeBooleanValue? = nil,
                enaSupport: AttributeBooleanValue? = nil,
                groups: GroupIdStringList? = nil,
                instanceId: String,
                instanceInitiatedShutdownBehavior: AttributeValue? = nil,
                instanceType: AttributeValue? = nil,
                kernel: AttributeValue? = nil,
                ramdisk: AttributeValue? = nil,
                sourceDestCheck: AttributeBooleanValue? = nil,
                sriovNetSupport: AttributeValue? = nil,
                userData: BlobAttributeValue? = nil,
                value: String? = nil) {
        self.attribute = attribute
        self.blockDeviceMappings = blockDeviceMappings
        self.disableApiTermination = disableApiTermination
        self.dryRun = dryRun
        self.ebsOptimized = ebsOptimized
        self.enaSupport = enaSupport
        self.groups = groups
        self.instanceId = instanceId
        self.instanceInitiatedShutdownBehavior = instanceInitiatedShutdownBehavior
        self.instanceType = instanceType
        self.kernel = kernel
        self.ramdisk = ramdisk
        self.sourceDestCheck = sourceDestCheck
        self.sriovNetSupport = sriovNetSupport
        self.userData = userData
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case attribute
        case blockDeviceMappings = "blockDeviceMapping"
        case disableApiTermination
        case dryRun
        case ebsOptimized
        case enaSupport
        case groups = "GroupId"
        case instanceId
        case instanceInitiatedShutdownBehavior
        case instanceType
        case kernel
        case ramdisk
        case sourceDestCheck = "SourceDestCheck"
        case sriovNetSupport
        case userData
        case value
    }

    public func validate() throws {
        try disableApiTermination?.validate()
        try ebsOptimized?.validate()
        try enaSupport?.validate()
        try instanceInitiatedShutdownBehavior?.validate()
        try instanceType?.validate()
        try kernel?.validate()
        try ramdisk?.validate()
        try sourceDestCheck?.validate()
        try sriovNetSupport?.validate()
        try userData?.validate()
    }
}

public struct ModifyInstanceCapacityReservationAttributesRequest: Codable, Equatable {
    public var capacityReservationSpecification: CapacityReservationSpecification
    public var dryRun: Boolean?
    public var instanceId: String

    public init(capacityReservationSpecification: CapacityReservationSpecification,
                dryRun: Boolean? = nil,
                instanceId: String) {
        self.capacityReservationSpecification = capacityReservationSpecification
        self.dryRun = dryRun
        self.instanceId = instanceId
    }

    enum CodingKeys: String, CodingKey {
        case capacityReservationSpecification = "CapacityReservationSpecification"
        case dryRun = "DryRun"
        case instanceId = "InstanceId"
    }

    public func validate() throws {
        try capacityReservationSpecification.validate()
    }
}

public struct ModifyInstanceCapacityReservationAttributesResult: Codable, Equatable {
    public var `return`: Boolean?

    public init(`return`: Boolean? = nil) {
        self.`return` = `return`
    }

    enum CodingKeys: String, CodingKey {
        case `return` = "return"
    }

    public func validate() throws {
    }
}

public struct ModifyInstanceCreditSpecificationRequest: Codable, Equatable {
    public var clientToken: String?
    public var dryRun: Boolean?
    public var instanceCreditSpecifications: InstanceCreditSpecificationListRequest

    public init(clientToken: String? = nil,
                dryRun: Boolean? = nil,
                instanceCreditSpecifications: InstanceCreditSpecificationListRequest) {
        self.clientToken = clientToken
        self.dryRun = dryRun
        self.instanceCreditSpecifications = instanceCreditSpecifications
    }

    enum CodingKeys: String, CodingKey {
        case clientToken = "ClientToken"
        case dryRun = "DryRun"
        case instanceCreditSpecifications = "InstanceCreditSpecification"
    }

    public func validate() throws {
    }
}

public struct ModifyInstanceCreditSpecificationResult: Codable, Equatable {
    public var successfulInstanceCreditSpecifications: SuccessfulInstanceCreditSpecificationSet?
    public var unsuccessfulInstanceCreditSpecifications: UnsuccessfulInstanceCreditSpecificationSet?

    public init(successfulInstanceCreditSpecifications: SuccessfulInstanceCreditSpecificationSet? = nil,
                unsuccessfulInstanceCreditSpecifications: UnsuccessfulInstanceCreditSpecificationSet? = nil) {
        self.successfulInstanceCreditSpecifications = successfulInstanceCreditSpecifications
        self.unsuccessfulInstanceCreditSpecifications = unsuccessfulInstanceCreditSpecifications
    }

    enum CodingKeys: String, CodingKey {
        case successfulInstanceCreditSpecifications = "successfulInstanceCreditSpecificationSet"
        case unsuccessfulInstanceCreditSpecifications = "unsuccessfulInstanceCreditSpecificationSet"
    }

    public func validate() throws {
    }
}

public struct ModifyInstanceEventStartTimeRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var instanceEventId: String
    public var instanceId: String
    public var notBefore: DateTime

    public init(dryRun: Boolean? = nil,
                instanceEventId: String,
                instanceId: String,
                notBefore: DateTime) {
        self.dryRun = dryRun
        self.instanceEventId = instanceEventId
        self.instanceId = instanceId
        self.notBefore = notBefore
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case instanceEventId = "InstanceEventId"
        case instanceId = "InstanceId"
        case notBefore = "NotBefore"
    }

    public func validate() throws {
    }
}

public struct ModifyInstanceEventStartTimeResult: Codable, Equatable {
    public var event: InstanceStatusEvent?

    public init(event: InstanceStatusEvent? = nil) {
        self.event = event
    }

    enum CodingKeys: String, CodingKey {
        case event
    }

    public func validate() throws {
        try event?.validate()
    }
}

public struct ModifyInstancePlacementRequest: Codable, Equatable {
    public var affinity: Affinity?
    public var groupName: String?
    public var hostId: String?
    public var instanceId: String
    public var partitionNumber: Integer?
    public var tenancy: HostTenancy?

    public init(affinity: Affinity? = nil,
                groupName: String? = nil,
                hostId: String? = nil,
                instanceId: String,
                partitionNumber: Integer? = nil,
                tenancy: HostTenancy? = nil) {
        self.affinity = affinity
        self.groupName = groupName
        self.hostId = hostId
        self.instanceId = instanceId
        self.partitionNumber = partitionNumber
        self.tenancy = tenancy
    }

    enum CodingKeys: String, CodingKey {
        case affinity
        case groupName = "GroupName"
        case hostId
        case instanceId
        case partitionNumber = "PartitionNumber"
        case tenancy
    }

    public func validate() throws {
    }
}

public struct ModifyInstancePlacementResult: Codable, Equatable {
    public var `return`: Boolean?

    public init(`return`: Boolean? = nil) {
        self.`return` = `return`
    }

    enum CodingKeys: String, CodingKey {
        case `return` = "return"
    }

    public func validate() throws {
    }
}

public struct ModifyLaunchTemplateRequest: Codable, Equatable {
    public var clientToken: String?
    public var defaultVersion: String?
    public var dryRun: Boolean?
    public var launchTemplateId: String?
    public var launchTemplateName: LaunchTemplateName?

    public init(clientToken: String? = nil,
                defaultVersion: String? = nil,
                dryRun: Boolean? = nil,
                launchTemplateId: String? = nil,
                launchTemplateName: LaunchTemplateName? = nil) {
        self.clientToken = clientToken
        self.defaultVersion = defaultVersion
        self.dryRun = dryRun
        self.launchTemplateId = launchTemplateId
        self.launchTemplateName = launchTemplateName
    }

    enum CodingKeys: String, CodingKey {
        case clientToken = "ClientToken"
        case defaultVersion = "SetDefaultVersion"
        case dryRun = "DryRun"
        case launchTemplateId = "LaunchTemplateId"
        case launchTemplateName = "LaunchTemplateName"
    }

    public func validate() throws {
        try launchTemplateName?.validateAsLaunchTemplateName()
    }
}

public struct ModifyLaunchTemplateResult: Codable, Equatable {
    public var launchTemplate: LaunchTemplate?

    public init(launchTemplate: LaunchTemplate? = nil) {
        self.launchTemplate = launchTemplate
    }

    enum CodingKeys: String, CodingKey {
        case launchTemplate
    }

    public func validate() throws {
        try launchTemplate?.validate()
    }
}

public struct ModifyNetworkInterfaceAttributeRequest: Codable, Equatable {
    public var attachment: NetworkInterfaceAttachmentChanges?
    public var description: AttributeValue?
    public var dryRun: Boolean?
    public var groups: SecurityGroupIdStringList?
    public var networkInterfaceId: String
    public var sourceDestCheck: AttributeBooleanValue?

    public init(attachment: NetworkInterfaceAttachmentChanges? = nil,
                description: AttributeValue? = nil,
                dryRun: Boolean? = nil,
                groups: SecurityGroupIdStringList? = nil,
                networkInterfaceId: String,
                sourceDestCheck: AttributeBooleanValue? = nil) {
        self.attachment = attachment
        self.description = description
        self.dryRun = dryRun
        self.groups = groups
        self.networkInterfaceId = networkInterfaceId
        self.sourceDestCheck = sourceDestCheck
    }

    enum CodingKeys: String, CodingKey {
        case attachment
        case description
        case dryRun
        case groups = "SecurityGroupId"
        case networkInterfaceId
        case sourceDestCheck
    }

    public func validate() throws {
        try attachment?.validate()
        try description?.validate()
        try sourceDestCheck?.validate()
    }
}

public struct ModifyReservedInstancesRequest: Codable, Equatable {
    public var clientToken: String?
    public var reservedInstancesIds: ReservedInstancesIdStringList
    public var targetConfigurations: ReservedInstancesConfigurationList

    public init(clientToken: String? = nil,
                reservedInstancesIds: ReservedInstancesIdStringList,
                targetConfigurations: ReservedInstancesConfigurationList) {
        self.clientToken = clientToken
        self.reservedInstancesIds = reservedInstancesIds
        self.targetConfigurations = targetConfigurations
    }

    enum CodingKeys: String, CodingKey {
        case clientToken
        case reservedInstancesIds = "ReservedInstancesId"
        case targetConfigurations = "ReservedInstancesConfigurationSetItemType"
    }

    public func validate() throws {
    }
}

public struct ModifyReservedInstancesResult: Codable, Equatable {
    public var reservedInstancesModificationId: String?

    public init(reservedInstancesModificationId: String? = nil) {
        self.reservedInstancesModificationId = reservedInstancesModificationId
    }

    enum CodingKeys: String, CodingKey {
        case reservedInstancesModificationId
    }

    public func validate() throws {
    }
}

public struct ModifySnapshotAttributeRequest: Codable, Equatable {
    public var attribute: SnapshotAttributeName?
    public var createVolumePermission: CreateVolumePermissionModifications?
    public var dryRun: Boolean?
    public var groupNames: GroupNameStringList?
    public var operationType: OperationType?
    public var snapshotId: String
    public var userIds: UserIdStringList?

    public init(attribute: SnapshotAttributeName? = nil,
                createVolumePermission: CreateVolumePermissionModifications? = nil,
                dryRun: Boolean? = nil,
                groupNames: GroupNameStringList? = nil,
                operationType: OperationType? = nil,
                snapshotId: String,
                userIds: UserIdStringList? = nil) {
        self.attribute = attribute
        self.createVolumePermission = createVolumePermission
        self.dryRun = dryRun
        self.groupNames = groupNames
        self.operationType = operationType
        self.snapshotId = snapshotId
        self.userIds = userIds
    }

    enum CodingKeys: String, CodingKey {
        case attribute = "Attribute"
        case createVolumePermission = "CreateVolumePermission"
        case dryRun
        case groupNames = "UserGroup"
        case operationType = "OperationType"
        case snapshotId = "SnapshotId"
        case userIds = "UserId"
    }

    public func validate() throws {
        try createVolumePermission?.validate()
    }
}

public struct ModifySpotFleetRequestRequest: Codable, Equatable {
    public var excessCapacityTerminationPolicy: ExcessCapacityTerminationPolicy?
    public var spotFleetRequestId: String
    public var targetCapacity: Integer?

    public init(excessCapacityTerminationPolicy: ExcessCapacityTerminationPolicy? = nil,
                spotFleetRequestId: String,
                targetCapacity: Integer? = nil) {
        self.excessCapacityTerminationPolicy = excessCapacityTerminationPolicy
        self.spotFleetRequestId = spotFleetRequestId
        self.targetCapacity = targetCapacity
    }

    enum CodingKeys: String, CodingKey {
        case excessCapacityTerminationPolicy
        case spotFleetRequestId
        case targetCapacity
    }

    public func validate() throws {
    }
}

public struct ModifySpotFleetRequestResponse: Codable, Equatable {
    public var `return`: Boolean?

    public init(`return`: Boolean? = nil) {
        self.`return` = `return`
    }

    enum CodingKeys: String, CodingKey {
        case `return` = "return"
    }

    public func validate() throws {
    }
}

public struct ModifySubnetAttributeRequest: Codable, Equatable {
    public var assignIpv6AddressOnCreation: AttributeBooleanValue?
    public var mapPublicIpOnLaunch: AttributeBooleanValue?
    public var subnetId: String

    public init(assignIpv6AddressOnCreation: AttributeBooleanValue? = nil,
                mapPublicIpOnLaunch: AttributeBooleanValue? = nil,
                subnetId: String) {
        self.assignIpv6AddressOnCreation = assignIpv6AddressOnCreation
        self.mapPublicIpOnLaunch = mapPublicIpOnLaunch
        self.subnetId = subnetId
    }

    enum CodingKeys: String, CodingKey {
        case assignIpv6AddressOnCreation = "AssignIpv6AddressOnCreation"
        case mapPublicIpOnLaunch = "MapPublicIpOnLaunch"
        case subnetId
    }

    public func validate() throws {
        try assignIpv6AddressOnCreation?.validate()
        try mapPublicIpOnLaunch?.validate()
    }
}

public struct ModifyTransitGatewayVpcAttachmentRequest: Codable, Equatable {
    public var addSubnetIds: ValueStringList?
    public var dryRun: Boolean?
    public var options: ModifyTransitGatewayVpcAttachmentRequestOptions?
    public var removeSubnetIds: ValueStringList?
    public var transitGatewayAttachmentId: String

    public init(addSubnetIds: ValueStringList? = nil,
                dryRun: Boolean? = nil,
                options: ModifyTransitGatewayVpcAttachmentRequestOptions? = nil,
                removeSubnetIds: ValueStringList? = nil,
                transitGatewayAttachmentId: String) {
        self.addSubnetIds = addSubnetIds
        self.dryRun = dryRun
        self.options = options
        self.removeSubnetIds = removeSubnetIds
        self.transitGatewayAttachmentId = transitGatewayAttachmentId
    }

    enum CodingKeys: String, CodingKey {
        case addSubnetIds = "AddSubnetIds"
        case dryRun = "DryRun"
        case options = "Options"
        case removeSubnetIds = "RemoveSubnetIds"
        case transitGatewayAttachmentId = "TransitGatewayAttachmentId"
    }

    public func validate() throws {
        try options?.validate()
    }
}

public struct ModifyTransitGatewayVpcAttachmentRequestOptions: Codable, Equatable {
    public var dnsSupport: DnsSupportValue?
    public var ipv6Support: Ipv6SupportValue?

    public init(dnsSupport: DnsSupportValue? = nil,
                ipv6Support: Ipv6SupportValue? = nil) {
        self.dnsSupport = dnsSupport
        self.ipv6Support = ipv6Support
    }

    enum CodingKeys: String, CodingKey {
        case dnsSupport = "DnsSupport"
        case ipv6Support = "Ipv6Support"
    }

    public func validate() throws {
    }
}

public struct ModifyTransitGatewayVpcAttachmentResult: Codable, Equatable {
    public var transitGatewayVpcAttachment: TransitGatewayVpcAttachment?

    public init(transitGatewayVpcAttachment: TransitGatewayVpcAttachment? = nil) {
        self.transitGatewayVpcAttachment = transitGatewayVpcAttachment
    }

    enum CodingKeys: String, CodingKey {
        case transitGatewayVpcAttachment
    }

    public func validate() throws {
        try transitGatewayVpcAttachment?.validate()
    }
}

public struct ModifyVolumeAttributeRequest: Codable, Equatable {
    public var autoEnableIO: AttributeBooleanValue?
    public var dryRun: Boolean?
    public var volumeId: String

    public init(autoEnableIO: AttributeBooleanValue? = nil,
                dryRun: Boolean? = nil,
                volumeId: String) {
        self.autoEnableIO = autoEnableIO
        self.dryRun = dryRun
        self.volumeId = volumeId
    }

    enum CodingKeys: String, CodingKey {
        case autoEnableIO = "AutoEnableIO"
        case dryRun
        case volumeId = "VolumeId"
    }

    public func validate() throws {
        try autoEnableIO?.validate()
    }
}

public struct ModifyVolumeRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var iops: Integer?
    public var size: Integer?
    public var volumeId: String
    public var volumeType: VolumeType?

    public init(dryRun: Boolean? = nil,
                iops: Integer? = nil,
                size: Integer? = nil,
                volumeId: String,
                volumeType: VolumeType? = nil) {
        self.dryRun = dryRun
        self.iops = iops
        self.size = size
        self.volumeId = volumeId
        self.volumeType = volumeType
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case iops = "Iops"
        case size = "Size"
        case volumeId = "VolumeId"
        case volumeType = "VolumeType"
    }

    public func validate() throws {
    }
}

public struct ModifyVolumeResult: Codable, Equatable {
    public var volumeModification: VolumeModification?

    public init(volumeModification: VolumeModification? = nil) {
        self.volumeModification = volumeModification
    }

    enum CodingKeys: String, CodingKey {
        case volumeModification
    }

    public func validate() throws {
        try volumeModification?.validate()
    }
}

public struct ModifyVpcAttributeRequest: Codable, Equatable {
    public var enableDnsHostnames: AttributeBooleanValue?
    public var enableDnsSupport: AttributeBooleanValue?
    public var vpcId: String

    public init(enableDnsHostnames: AttributeBooleanValue? = nil,
                enableDnsSupport: AttributeBooleanValue? = nil,
                vpcId: String) {
        self.enableDnsHostnames = enableDnsHostnames
        self.enableDnsSupport = enableDnsSupport
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case enableDnsHostnames = "EnableDnsHostnames"
        case enableDnsSupport = "EnableDnsSupport"
        case vpcId
    }

    public func validate() throws {
        try enableDnsHostnames?.validate()
        try enableDnsSupport?.validate()
    }
}

public struct ModifyVpcEndpointConnectionNotificationRequest: Codable, Equatable {
    public var connectionEvents: ValueStringList?
    public var connectionNotificationArn: String?
    public var connectionNotificationId: String
    public var dryRun: Boolean?

    public init(connectionEvents: ValueStringList? = nil,
                connectionNotificationArn: String? = nil,
                connectionNotificationId: String,
                dryRun: Boolean? = nil) {
        self.connectionEvents = connectionEvents
        self.connectionNotificationArn = connectionNotificationArn
        self.connectionNotificationId = connectionNotificationId
        self.dryRun = dryRun
    }

    enum CodingKeys: String, CodingKey {
        case connectionEvents = "ConnectionEvents"
        case connectionNotificationArn = "ConnectionNotificationArn"
        case connectionNotificationId = "ConnectionNotificationId"
        case dryRun = "DryRun"
    }

    public func validate() throws {
    }
}

public struct ModifyVpcEndpointConnectionNotificationResult: Codable, Equatable {
    public var returnValue: Boolean?

    public init(returnValue: Boolean? = nil) {
        self.returnValue = returnValue
    }

    enum CodingKeys: String, CodingKey {
        case returnValue = "return"
    }

    public func validate() throws {
    }
}

public struct ModifyVpcEndpointRequest: Codable, Equatable {
    public var addRouteTableIds: ValueStringList?
    public var addSecurityGroupIds: ValueStringList?
    public var addSubnetIds: ValueStringList?
    public var dryRun: Boolean?
    public var policyDocument: String?
    public var privateDnsEnabled: Boolean?
    public var removeRouteTableIds: ValueStringList?
    public var removeSecurityGroupIds: ValueStringList?
    public var removeSubnetIds: ValueStringList?
    public var resetPolicy: Boolean?
    public var vpcEndpointId: String

    public init(addRouteTableIds: ValueStringList? = nil,
                addSecurityGroupIds: ValueStringList? = nil,
                addSubnetIds: ValueStringList? = nil,
                dryRun: Boolean? = nil,
                policyDocument: String? = nil,
                privateDnsEnabled: Boolean? = nil,
                removeRouteTableIds: ValueStringList? = nil,
                removeSecurityGroupIds: ValueStringList? = nil,
                removeSubnetIds: ValueStringList? = nil,
                resetPolicy: Boolean? = nil,
                vpcEndpointId: String) {
        self.addRouteTableIds = addRouteTableIds
        self.addSecurityGroupIds = addSecurityGroupIds
        self.addSubnetIds = addSubnetIds
        self.dryRun = dryRun
        self.policyDocument = policyDocument
        self.privateDnsEnabled = privateDnsEnabled
        self.removeRouteTableIds = removeRouteTableIds
        self.removeSecurityGroupIds = removeSecurityGroupIds
        self.removeSubnetIds = removeSubnetIds
        self.resetPolicy = resetPolicy
        self.vpcEndpointId = vpcEndpointId
    }

    enum CodingKeys: String, CodingKey {
        case addRouteTableIds = "AddRouteTableId"
        case addSecurityGroupIds = "AddSecurityGroupId"
        case addSubnetIds = "AddSubnetId"
        case dryRun = "DryRun"
        case policyDocument = "PolicyDocument"
        case privateDnsEnabled = "PrivateDnsEnabled"
        case removeRouteTableIds = "RemoveRouteTableId"
        case removeSecurityGroupIds = "RemoveSecurityGroupId"
        case removeSubnetIds = "RemoveSubnetId"
        case resetPolicy = "ResetPolicy"
        case vpcEndpointId = "VpcEndpointId"
    }

    public func validate() throws {
    }
}

public struct ModifyVpcEndpointResult: Codable, Equatable {
    public var `return`: Boolean?

    public init(`return`: Boolean? = nil) {
        self.`return` = `return`
    }

    enum CodingKeys: String, CodingKey {
        case `return` = "return"
    }

    public func validate() throws {
    }
}

public struct ModifyVpcEndpointServiceConfigurationRequest: Codable, Equatable {
    public var acceptanceRequired: Boolean?
    public var addNetworkLoadBalancerArns: ValueStringList?
    public var dryRun: Boolean?
    public var removeNetworkLoadBalancerArns: ValueStringList?
    public var serviceId: String

    public init(acceptanceRequired: Boolean? = nil,
                addNetworkLoadBalancerArns: ValueStringList? = nil,
                dryRun: Boolean? = nil,
                removeNetworkLoadBalancerArns: ValueStringList? = nil,
                serviceId: String) {
        self.acceptanceRequired = acceptanceRequired
        self.addNetworkLoadBalancerArns = addNetworkLoadBalancerArns
        self.dryRun = dryRun
        self.removeNetworkLoadBalancerArns = removeNetworkLoadBalancerArns
        self.serviceId = serviceId
    }

    enum CodingKeys: String, CodingKey {
        case acceptanceRequired = "AcceptanceRequired"
        case addNetworkLoadBalancerArns = "AddNetworkLoadBalancerArn"
        case dryRun = "DryRun"
        case removeNetworkLoadBalancerArns = "RemoveNetworkLoadBalancerArn"
        case serviceId = "ServiceId"
    }

    public func validate() throws {
    }
}

public struct ModifyVpcEndpointServiceConfigurationResult: Codable, Equatable {
    public var `return`: Boolean?

    public init(`return`: Boolean? = nil) {
        self.`return` = `return`
    }

    enum CodingKeys: String, CodingKey {
        case `return` = "return"
    }

    public func validate() throws {
    }
}

public struct ModifyVpcEndpointServicePermissionsRequest: Codable, Equatable {
    public var addAllowedPrincipals: ValueStringList?
    public var dryRun: Boolean?
    public var removeAllowedPrincipals: ValueStringList?
    public var serviceId: String

    public init(addAllowedPrincipals: ValueStringList? = nil,
                dryRun: Boolean? = nil,
                removeAllowedPrincipals: ValueStringList? = nil,
                serviceId: String) {
        self.addAllowedPrincipals = addAllowedPrincipals
        self.dryRun = dryRun
        self.removeAllowedPrincipals = removeAllowedPrincipals
        self.serviceId = serviceId
    }

    enum CodingKeys: String, CodingKey {
        case addAllowedPrincipals = "AddAllowedPrincipals"
        case dryRun = "DryRun"
        case removeAllowedPrincipals = "RemoveAllowedPrincipals"
        case serviceId = "ServiceId"
    }

    public func validate() throws {
    }
}

public struct ModifyVpcEndpointServicePermissionsResult: Codable, Equatable {
    public var returnValue: Boolean?

    public init(returnValue: Boolean? = nil) {
        self.returnValue = returnValue
    }

    enum CodingKeys: String, CodingKey {
        case returnValue = "return"
    }

    public func validate() throws {
    }
}

public struct ModifyVpcPeeringConnectionOptionsRequest: Codable, Equatable {
    public var accepterPeeringConnectionOptions: PeeringConnectionOptionsRequest?
    public var dryRun: Boolean?
    public var requesterPeeringConnectionOptions: PeeringConnectionOptionsRequest?
    public var vpcPeeringConnectionId: String

    public init(accepterPeeringConnectionOptions: PeeringConnectionOptionsRequest? = nil,
                dryRun: Boolean? = nil,
                requesterPeeringConnectionOptions: PeeringConnectionOptionsRequest? = nil,
                vpcPeeringConnectionId: String) {
        self.accepterPeeringConnectionOptions = accepterPeeringConnectionOptions
        self.dryRun = dryRun
        self.requesterPeeringConnectionOptions = requesterPeeringConnectionOptions
        self.vpcPeeringConnectionId = vpcPeeringConnectionId
    }

    enum CodingKeys: String, CodingKey {
        case accepterPeeringConnectionOptions = "AccepterPeeringConnectionOptions"
        case dryRun = "DryRun"
        case requesterPeeringConnectionOptions = "RequesterPeeringConnectionOptions"
        case vpcPeeringConnectionId = "VpcPeeringConnectionId"
    }

    public func validate() throws {
        try accepterPeeringConnectionOptions?.validate()
        try requesterPeeringConnectionOptions?.validate()
    }
}

public struct ModifyVpcPeeringConnectionOptionsResult: Codable, Equatable {
    public var accepterPeeringConnectionOptions: PeeringConnectionOptions?
    public var requesterPeeringConnectionOptions: PeeringConnectionOptions?

    public init(accepterPeeringConnectionOptions: PeeringConnectionOptions? = nil,
                requesterPeeringConnectionOptions: PeeringConnectionOptions? = nil) {
        self.accepterPeeringConnectionOptions = accepterPeeringConnectionOptions
        self.requesterPeeringConnectionOptions = requesterPeeringConnectionOptions
    }

    enum CodingKeys: String, CodingKey {
        case accepterPeeringConnectionOptions
        case requesterPeeringConnectionOptions
    }

    public func validate() throws {
        try accepterPeeringConnectionOptions?.validate()
        try requesterPeeringConnectionOptions?.validate()
    }
}

public struct ModifyVpcTenancyRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var instanceTenancy: VpcTenancy
    public var vpcId: String

    public init(dryRun: Boolean? = nil,
                instanceTenancy: VpcTenancy,
                vpcId: String) {
        self.dryRun = dryRun
        self.instanceTenancy = instanceTenancy
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case instanceTenancy = "InstanceTenancy"
        case vpcId = "VpcId"
    }

    public func validate() throws {
    }
}

public struct ModifyVpcTenancyResult: Codable, Equatable {
    public var returnValue: Boolean?

    public init(returnValue: Boolean? = nil) {
        self.returnValue = returnValue
    }

    enum CodingKeys: String, CodingKey {
        case returnValue = "return"
    }

    public func validate() throws {
    }
}

public struct ModifyVpnConnectionRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var transitGatewayId: String?
    public var vpnConnectionId: String
    public var vpnGatewayId: String?

    public init(dryRun: Boolean? = nil,
                transitGatewayId: String? = nil,
                vpnConnectionId: String,
                vpnGatewayId: String? = nil) {
        self.dryRun = dryRun
        self.transitGatewayId = transitGatewayId
        self.vpnConnectionId = vpnConnectionId
        self.vpnGatewayId = vpnGatewayId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case transitGatewayId = "TransitGatewayId"
        case vpnConnectionId = "VpnConnectionId"
        case vpnGatewayId = "VpnGatewayId"
    }

    public func validate() throws {
    }
}

public struct ModifyVpnConnectionResult: Codable, Equatable {
    public var vpnConnection: VpnConnection?

    public init(vpnConnection: VpnConnection? = nil) {
        self.vpnConnection = vpnConnection
    }

    enum CodingKeys: String, CodingKey {
        case vpnConnection
    }

    public func validate() throws {
        try vpnConnection?.validate()
    }
}

public struct MonitorInstancesRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var instanceIds: InstanceIdStringList

    public init(dryRun: Boolean? = nil,
                instanceIds: InstanceIdStringList) {
        self.dryRun = dryRun
        self.instanceIds = instanceIds
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case instanceIds = "InstanceId"
    }

    public func validate() throws {
    }
}

public struct MonitorInstancesResult: Codable, Equatable {
    public var instanceMonitorings: InstanceMonitoringList?

    public init(instanceMonitorings: InstanceMonitoringList? = nil) {
        self.instanceMonitorings = instanceMonitorings
    }

    enum CodingKeys: String, CodingKey {
        case instanceMonitorings = "instancesSet"
    }

    public func validate() throws {
    }
}

public struct Monitoring: Codable, Equatable {
    public var state: MonitoringState?

    public init(state: MonitoringState? = nil) {
        self.state = state
    }

    enum CodingKeys: String, CodingKey {
        case state
    }

    public func validate() throws {
    }
}

public struct MoveAddressToVpcRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var publicIp: String

    public init(dryRun: Boolean? = nil,
                publicIp: String) {
        self.dryRun = dryRun
        self.publicIp = publicIp
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case publicIp
    }

    public func validate() throws {
    }
}

public struct MoveAddressToVpcResult: Codable, Equatable {
    public var allocationId: String?
    public var status: Status?

    public init(allocationId: String? = nil,
                status: Status? = nil) {
        self.allocationId = allocationId
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case allocationId
        case status
    }

    public func validate() throws {
    }
}

public struct MovingAddressStatus: Codable, Equatable {
    public var moveStatus: MoveStatus?
    public var publicIp: String?

    public init(moveStatus: MoveStatus? = nil,
                publicIp: String? = nil) {
        self.moveStatus = moveStatus
        self.publicIp = publicIp
    }

    enum CodingKeys: String, CodingKey {
        case moveStatus
        case publicIp
    }

    public func validate() throws {
    }
}

public struct NatGateway: Codable, Equatable {
    public var createTime: DateTime?
    public var deleteTime: DateTime?
    public var failureCode: String?
    public var failureMessage: String?
    public var natGatewayAddresses: NatGatewayAddressList?
    public var natGatewayId: String?
    public var provisionedBandwidth: ProvisionedBandwidth?
    public var state: NatGatewayState?
    public var subnetId: String?
    public var tags: TagList?
    public var vpcId: String?

    public init(createTime: DateTime? = nil,
                deleteTime: DateTime? = nil,
                failureCode: String? = nil,
                failureMessage: String? = nil,
                natGatewayAddresses: NatGatewayAddressList? = nil,
                natGatewayId: String? = nil,
                provisionedBandwidth: ProvisionedBandwidth? = nil,
                state: NatGatewayState? = nil,
                subnetId: String? = nil,
                tags: TagList? = nil,
                vpcId: String? = nil) {
        self.createTime = createTime
        self.deleteTime = deleteTime
        self.failureCode = failureCode
        self.failureMessage = failureMessage
        self.natGatewayAddresses = natGatewayAddresses
        self.natGatewayId = natGatewayId
        self.provisionedBandwidth = provisionedBandwidth
        self.state = state
        self.subnetId = subnetId
        self.tags = tags
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case createTime
        case deleteTime
        case failureCode
        case failureMessage
        case natGatewayAddresses = "natGatewayAddressSet"
        case natGatewayId
        case provisionedBandwidth
        case state
        case subnetId
        case tags = "tagSet"
        case vpcId
    }

    public func validate() throws {
        try provisionedBandwidth?.validate()
    }
}

public struct NatGatewayAddress: Codable, Equatable {
    public var allocationId: String?
    public var networkInterfaceId: String?
    public var privateIp: String?
    public var publicIp: String?

    public init(allocationId: String? = nil,
                networkInterfaceId: String? = nil,
                privateIp: String? = nil,
                publicIp: String? = nil) {
        self.allocationId = allocationId
        self.networkInterfaceId = networkInterfaceId
        self.privateIp = privateIp
        self.publicIp = publicIp
    }

    enum CodingKeys: String, CodingKey {
        case allocationId
        case networkInterfaceId
        case privateIp
        case publicIp
    }

    public func validate() throws {
    }
}

public struct NetworkAcl: Codable, Equatable {
    public var associations: NetworkAclAssociationList?
    public var entries: NetworkAclEntryList?
    public var isDefault: Boolean?
    public var networkAclId: String?
    public var ownerId: String?
    public var tags: TagList?
    public var vpcId: String?

    public init(associations: NetworkAclAssociationList? = nil,
                entries: NetworkAclEntryList? = nil,
                isDefault: Boolean? = nil,
                networkAclId: String? = nil,
                ownerId: String? = nil,
                tags: TagList? = nil,
                vpcId: String? = nil) {
        self.associations = associations
        self.entries = entries
        self.isDefault = isDefault
        self.networkAclId = networkAclId
        self.ownerId = ownerId
        self.tags = tags
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case associations = "associationSet"
        case entries = "entrySet"
        case isDefault = "default"
        case networkAclId
        case ownerId
        case tags = "tagSet"
        case vpcId
    }

    public func validate() throws {
    }
}

public struct NetworkAclAssociation: Codable, Equatable {
    public var networkAclAssociationId: String?
    public var networkAclId: String?
    public var subnetId: String?

    public init(networkAclAssociationId: String? = nil,
                networkAclId: String? = nil,
                subnetId: String? = nil) {
        self.networkAclAssociationId = networkAclAssociationId
        self.networkAclId = networkAclId
        self.subnetId = subnetId
    }

    enum CodingKeys: String, CodingKey {
        case networkAclAssociationId
        case networkAclId
        case subnetId
    }

    public func validate() throws {
    }
}

public struct NetworkAclEntry: Codable, Equatable {
    public var cidrBlock: String?
    public var egress: Boolean?
    public var icmpTypeCode: IcmpTypeCode?
    public var ipv6CidrBlock: String?
    public var portRange: PortRange?
    public var `protocol`: String?
    public var ruleAction: RuleAction?
    public var ruleNumber: Integer?

    public init(cidrBlock: String? = nil,
                egress: Boolean? = nil,
                icmpTypeCode: IcmpTypeCode? = nil,
                ipv6CidrBlock: String? = nil,
                portRange: PortRange? = nil,
                `protocol`: String? = nil,
                ruleAction: RuleAction? = nil,
                ruleNumber: Integer? = nil) {
        self.cidrBlock = cidrBlock
        self.egress = egress
        self.icmpTypeCode = icmpTypeCode
        self.ipv6CidrBlock = ipv6CidrBlock
        self.portRange = portRange
        self.`protocol` = `protocol`
        self.ruleAction = ruleAction
        self.ruleNumber = ruleNumber
    }

    enum CodingKeys: String, CodingKey {
        case cidrBlock
        case egress
        case icmpTypeCode
        case ipv6CidrBlock
        case portRange
        case `protocol` = "protocol"
        case ruleAction
        case ruleNumber
    }

    public func validate() throws {
        try icmpTypeCode?.validate()
        try portRange?.validate()
    }
}

public struct NetworkInterface: Codable, Equatable {
    public var association: NetworkInterfaceAssociation?
    public var attachment: NetworkInterfaceAttachment?
    public var availabilityZone: String?
    public var description: String?
    public var groups: GroupIdentifierList?
    public var interfaceType: NetworkInterfaceType?
    public var ipv6Addresses: NetworkInterfaceIpv6AddressesList?
    public var macAddress: String?
    public var networkInterfaceId: String?
    public var ownerId: String?
    public var privateDnsName: String?
    public var privateIpAddress: String?
    public var privateIpAddresses: NetworkInterfacePrivateIpAddressList?
    public var requesterId: String?
    public var requesterManaged: Boolean?
    public var sourceDestCheck: Boolean?
    public var status: NetworkInterfaceStatus?
    public var subnetId: String?
    public var tagSet: TagList?
    public var vpcId: String?

    public init(association: NetworkInterfaceAssociation? = nil,
                attachment: NetworkInterfaceAttachment? = nil,
                availabilityZone: String? = nil,
                description: String? = nil,
                groups: GroupIdentifierList? = nil,
                interfaceType: NetworkInterfaceType? = nil,
                ipv6Addresses: NetworkInterfaceIpv6AddressesList? = nil,
                macAddress: String? = nil,
                networkInterfaceId: String? = nil,
                ownerId: String? = nil,
                privateDnsName: String? = nil,
                privateIpAddress: String? = nil,
                privateIpAddresses: NetworkInterfacePrivateIpAddressList? = nil,
                requesterId: String? = nil,
                requesterManaged: Boolean? = nil,
                sourceDestCheck: Boolean? = nil,
                status: NetworkInterfaceStatus? = nil,
                subnetId: String? = nil,
                tagSet: TagList? = nil,
                vpcId: String? = nil) {
        self.association = association
        self.attachment = attachment
        self.availabilityZone = availabilityZone
        self.description = description
        self.groups = groups
        self.interfaceType = interfaceType
        self.ipv6Addresses = ipv6Addresses
        self.macAddress = macAddress
        self.networkInterfaceId = networkInterfaceId
        self.ownerId = ownerId
        self.privateDnsName = privateDnsName
        self.privateIpAddress = privateIpAddress
        self.privateIpAddresses = privateIpAddresses
        self.requesterId = requesterId
        self.requesterManaged = requesterManaged
        self.sourceDestCheck = sourceDestCheck
        self.status = status
        self.subnetId = subnetId
        self.tagSet = tagSet
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case association
        case attachment
        case availabilityZone
        case description
        case groups = "groupSet"
        case interfaceType
        case ipv6Addresses = "ipv6AddressesSet"
        case macAddress
        case networkInterfaceId
        case ownerId
        case privateDnsName
        case privateIpAddress
        case privateIpAddresses = "privateIpAddressesSet"
        case requesterId
        case requesterManaged
        case sourceDestCheck
        case status
        case subnetId
        case tagSet
        case vpcId
    }

    public func validate() throws {
        try association?.validate()
        try attachment?.validate()
    }
}

public struct NetworkInterfaceAssociation: Codable, Equatable {
    public var allocationId: String?
    public var associationId: String?
    public var ipOwnerId: String?
    public var publicDnsName: String?
    public var publicIp: String?

    public init(allocationId: String? = nil,
                associationId: String? = nil,
                ipOwnerId: String? = nil,
                publicDnsName: String? = nil,
                publicIp: String? = nil) {
        self.allocationId = allocationId
        self.associationId = associationId
        self.ipOwnerId = ipOwnerId
        self.publicDnsName = publicDnsName
        self.publicIp = publicIp
    }

    enum CodingKeys: String, CodingKey {
        case allocationId
        case associationId
        case ipOwnerId
        case publicDnsName
        case publicIp
    }

    public func validate() throws {
    }
}

public struct NetworkInterfaceAttachment: Codable, Equatable {
    public var attachTime: DateTime?
    public var attachmentId: String?
    public var deleteOnTermination: Boolean?
    public var deviceIndex: Integer?
    public var instanceId: String?
    public var instanceOwnerId: String?
    public var status: AttachmentStatus?

    public init(attachTime: DateTime? = nil,
                attachmentId: String? = nil,
                deleteOnTermination: Boolean? = nil,
                deviceIndex: Integer? = nil,
                instanceId: String? = nil,
                instanceOwnerId: String? = nil,
                status: AttachmentStatus? = nil) {
        self.attachTime = attachTime
        self.attachmentId = attachmentId
        self.deleteOnTermination = deleteOnTermination
        self.deviceIndex = deviceIndex
        self.instanceId = instanceId
        self.instanceOwnerId = instanceOwnerId
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case attachTime
        case attachmentId
        case deleteOnTermination
        case deviceIndex
        case instanceId
        case instanceOwnerId
        case status
    }

    public func validate() throws {
    }
}

public struct NetworkInterfaceAttachmentChanges: Codable, Equatable {
    public var attachmentId: String?
    public var deleteOnTermination: Boolean?

    public init(attachmentId: String? = nil,
                deleteOnTermination: Boolean? = nil) {
        self.attachmentId = attachmentId
        self.deleteOnTermination = deleteOnTermination
    }

    enum CodingKeys: String, CodingKey {
        case attachmentId
        case deleteOnTermination
    }

    public func validate() throws {
    }
}

public struct NetworkInterfaceIpv6Address: Codable, Equatable {
    public var ipv6Address: String?

    public init(ipv6Address: String? = nil) {
        self.ipv6Address = ipv6Address
    }

    enum CodingKeys: String, CodingKey {
        case ipv6Address
    }

    public func validate() throws {
    }
}

public struct NetworkInterfacePermission: Codable, Equatable {
    public var awsAccountId: String?
    public var awsService: String?
    public var networkInterfaceId: String?
    public var networkInterfacePermissionId: String?
    public var permission: InterfacePermissionType?
    public var permissionState: NetworkInterfacePermissionState?

    public init(awsAccountId: String? = nil,
                awsService: String? = nil,
                networkInterfaceId: String? = nil,
                networkInterfacePermissionId: String? = nil,
                permission: InterfacePermissionType? = nil,
                permissionState: NetworkInterfacePermissionState? = nil) {
        self.awsAccountId = awsAccountId
        self.awsService = awsService
        self.networkInterfaceId = networkInterfaceId
        self.networkInterfacePermissionId = networkInterfacePermissionId
        self.permission = permission
        self.permissionState = permissionState
    }

    enum CodingKeys: String, CodingKey {
        case awsAccountId
        case awsService
        case networkInterfaceId
        case networkInterfacePermissionId
        case permission
        case permissionState
    }

    public func validate() throws {
        try permissionState?.validate()
    }
}

public struct NetworkInterfacePermissionState: Codable, Equatable {
    public var state: NetworkInterfacePermissionStateCode?
    public var statusMessage: String?

    public init(state: NetworkInterfacePermissionStateCode? = nil,
                statusMessage: String? = nil) {
        self.state = state
        self.statusMessage = statusMessage
    }

    enum CodingKeys: String, CodingKey {
        case state
        case statusMessage
    }

    public func validate() throws {
    }
}

public struct NetworkInterfacePrivateIpAddress: Codable, Equatable {
    public var association: NetworkInterfaceAssociation?
    public var primary: Boolean?
    public var privateDnsName: String?
    public var privateIpAddress: String?

    public init(association: NetworkInterfaceAssociation? = nil,
                primary: Boolean? = nil,
                privateDnsName: String? = nil,
                privateIpAddress: String? = nil) {
        self.association = association
        self.primary = primary
        self.privateDnsName = privateDnsName
        self.privateIpAddress = privateIpAddress
    }

    enum CodingKeys: String, CodingKey {
        case association
        case primary
        case privateDnsName
        case privateIpAddress
    }

    public func validate() throws {
        try association?.validate()
    }
}

public struct NewDhcpConfiguration: Codable, Equatable {
    public var key: String?
    public var values: ValueStringList?

    public init(key: String? = nil,
                values: ValueStringList? = nil) {
        self.key = key
        self.values = values
    }

    enum CodingKeys: String, CodingKey {
        case key
        case values = "Value"
    }

    public func validate() throws {
    }
}

public struct OnDemandOptions: Codable, Equatable {
    public var allocationStrategy: FleetOnDemandAllocationStrategy?
    public var minTargetCapacity: Integer?
    public var singleAvailabilityZone: Boolean?
    public var singleInstanceType: Boolean?

    public init(allocationStrategy: FleetOnDemandAllocationStrategy? = nil,
                minTargetCapacity: Integer? = nil,
                singleAvailabilityZone: Boolean? = nil,
                singleInstanceType: Boolean? = nil) {
        self.allocationStrategy = allocationStrategy
        self.minTargetCapacity = minTargetCapacity
        self.singleAvailabilityZone = singleAvailabilityZone
        self.singleInstanceType = singleInstanceType
    }

    enum CodingKeys: String, CodingKey {
        case allocationStrategy
        case minTargetCapacity
        case singleAvailabilityZone
        case singleInstanceType
    }

    public func validate() throws {
    }
}

public struct OnDemandOptionsRequest: Codable, Equatable {
    public var allocationStrategy: FleetOnDemandAllocationStrategy?
    public var minTargetCapacity: Integer?
    public var singleAvailabilityZone: Boolean?
    public var singleInstanceType: Boolean?

    public init(allocationStrategy: FleetOnDemandAllocationStrategy? = nil,
                minTargetCapacity: Integer? = nil,
                singleAvailabilityZone: Boolean? = nil,
                singleInstanceType: Boolean? = nil) {
        self.allocationStrategy = allocationStrategy
        self.minTargetCapacity = minTargetCapacity
        self.singleAvailabilityZone = singleAvailabilityZone
        self.singleInstanceType = singleInstanceType
    }

    enum CodingKeys: String, CodingKey {
        case allocationStrategy = "AllocationStrategy"
        case minTargetCapacity = "MinTargetCapacity"
        case singleAvailabilityZone = "SingleAvailabilityZone"
        case singleInstanceType = "SingleInstanceType"
    }

    public func validate() throws {
    }
}

public struct PciId: Codable, Equatable {
    public var deviceId: String?
    public var subsystemId: String?
    public var subsystemVendorId: String?
    public var vendorId: String?

    public init(deviceId: String? = nil,
                subsystemId: String? = nil,
                subsystemVendorId: String? = nil,
                vendorId: String? = nil) {
        self.deviceId = deviceId
        self.subsystemId = subsystemId
        self.subsystemVendorId = subsystemVendorId
        self.vendorId = vendorId
    }

    enum CodingKeys: String, CodingKey {
        case deviceId = "DeviceId"
        case subsystemId = "SubsystemId"
        case subsystemVendorId = "SubsystemVendorId"
        case vendorId = "VendorId"
    }

    public func validate() throws {
    }
}

public struct PeeringConnectionOptions: Codable, Equatable {
    public var allowDnsResolutionFromRemoteVpc: Boolean?
    public var allowEgressFromLocalClassicLinkToRemoteVpc: Boolean?
    public var allowEgressFromLocalVpcToRemoteClassicLink: Boolean?

    public init(allowDnsResolutionFromRemoteVpc: Boolean? = nil,
                allowEgressFromLocalClassicLinkToRemoteVpc: Boolean? = nil,
                allowEgressFromLocalVpcToRemoteClassicLink: Boolean? = nil) {
        self.allowDnsResolutionFromRemoteVpc = allowDnsResolutionFromRemoteVpc
        self.allowEgressFromLocalClassicLinkToRemoteVpc = allowEgressFromLocalClassicLinkToRemoteVpc
        self.allowEgressFromLocalVpcToRemoteClassicLink = allowEgressFromLocalVpcToRemoteClassicLink
    }

    enum CodingKeys: String, CodingKey {
        case allowDnsResolutionFromRemoteVpc
        case allowEgressFromLocalClassicLinkToRemoteVpc
        case allowEgressFromLocalVpcToRemoteClassicLink
    }

    public func validate() throws {
    }
}

public struct PeeringConnectionOptionsRequest: Codable, Equatable {
    public var allowDnsResolutionFromRemoteVpc: Boolean?
    public var allowEgressFromLocalClassicLinkToRemoteVpc: Boolean?
    public var allowEgressFromLocalVpcToRemoteClassicLink: Boolean?

    public init(allowDnsResolutionFromRemoteVpc: Boolean? = nil,
                allowEgressFromLocalClassicLinkToRemoteVpc: Boolean? = nil,
                allowEgressFromLocalVpcToRemoteClassicLink: Boolean? = nil) {
        self.allowDnsResolutionFromRemoteVpc = allowDnsResolutionFromRemoteVpc
        self.allowEgressFromLocalClassicLinkToRemoteVpc = allowEgressFromLocalClassicLinkToRemoteVpc
        self.allowEgressFromLocalVpcToRemoteClassicLink = allowEgressFromLocalVpcToRemoteClassicLink
    }

    enum CodingKeys: String, CodingKey {
        case allowDnsResolutionFromRemoteVpc = "AllowDnsResolutionFromRemoteVpc"
        case allowEgressFromLocalClassicLinkToRemoteVpc = "AllowEgressFromLocalClassicLinkToRemoteVpc"
        case allowEgressFromLocalVpcToRemoteClassicLink = "AllowEgressFromLocalVpcToRemoteClassicLink"
    }

    public func validate() throws {
    }
}

public struct Placement: Codable, Equatable {
    public var affinity: String?
    public var availabilityZone: String?
    public var groupName: String?
    public var hostId: String?
    public var partitionNumber: Integer?
    public var spreadDomain: String?
    public var tenancy: Tenancy?

    public init(affinity: String? = nil,
                availabilityZone: String? = nil,
                groupName: String? = nil,
                hostId: String? = nil,
                partitionNumber: Integer? = nil,
                spreadDomain: String? = nil,
                tenancy: Tenancy? = nil) {
        self.affinity = affinity
        self.availabilityZone = availabilityZone
        self.groupName = groupName
        self.hostId = hostId
        self.partitionNumber = partitionNumber
        self.spreadDomain = spreadDomain
        self.tenancy = tenancy
    }

    enum CodingKeys: String, CodingKey {
        case affinity
        case availabilityZone
        case groupName
        case hostId
        case partitionNumber
        case spreadDomain
        case tenancy
    }

    public func validate() throws {
    }
}

public struct PlacementGroup: Codable, Equatable {
    public var groupName: String?
    public var partitionCount: Integer?
    public var state: PlacementGroupState?
    public var strategy: PlacementStrategy?

    public init(groupName: String? = nil,
                partitionCount: Integer? = nil,
                state: PlacementGroupState? = nil,
                strategy: PlacementStrategy? = nil) {
        self.groupName = groupName
        self.partitionCount = partitionCount
        self.state = state
        self.strategy = strategy
    }

    enum CodingKeys: String, CodingKey {
        case groupName
        case partitionCount
        case state
        case strategy
    }

    public func validate() throws {
    }
}

public struct PlacementResponse: Codable, Equatable {
    public var groupName: String?

    public init(groupName: String? = nil) {
        self.groupName = groupName
    }

    enum CodingKeys: String, CodingKey {
        case groupName
    }

    public func validate() throws {
    }
}

public struct PortRange: Codable, Equatable {
    public var from: Integer?
    public var to: Integer?

    public init(from: Integer? = nil,
                to: Integer? = nil) {
        self.from = from
        self.to = to
    }

    enum CodingKeys: String, CodingKey {
        case from
        case to
    }

    public func validate() throws {
    }
}

public struct PrefixList: Codable, Equatable {
    public var cidrs: ValueStringList?
    public var prefixListId: String?
    public var prefixListName: String?

    public init(cidrs: ValueStringList? = nil,
                prefixListId: String? = nil,
                prefixListName: String? = nil) {
        self.cidrs = cidrs
        self.prefixListId = prefixListId
        self.prefixListName = prefixListName
    }

    enum CodingKeys: String, CodingKey {
        case cidrs = "cidrSet"
        case prefixListId
        case prefixListName
    }

    public func validate() throws {
    }
}

public struct PrefixListId: Codable, Equatable {
    public var description: String?
    public var prefixListId: String?

    public init(description: String? = nil,
                prefixListId: String? = nil) {
        self.description = description
        self.prefixListId = prefixListId
    }

    enum CodingKeys: String, CodingKey {
        case description
        case prefixListId
    }

    public func validate() throws {
    }
}

public struct PriceSchedule: Codable, Equatable {
    public var active: Boolean?
    public var currencyCode: CurrencyCodeValues?
    public var price: Double?
    public var term: Long?

    public init(active: Boolean? = nil,
                currencyCode: CurrencyCodeValues? = nil,
                price: Double? = nil,
                term: Long? = nil) {
        self.active = active
        self.currencyCode = currencyCode
        self.price = price
        self.term = term
    }

    enum CodingKeys: String, CodingKey {
        case active
        case currencyCode
        case price
        case term
    }

    public func validate() throws {
    }
}

public struct PriceScheduleSpecification: Codable, Equatable {
    public var currencyCode: CurrencyCodeValues?
    public var price: Double?
    public var term: Long?

    public init(currencyCode: CurrencyCodeValues? = nil,
                price: Double? = nil,
                term: Long? = nil) {
        self.currencyCode = currencyCode
        self.price = price
        self.term = term
    }

    enum CodingKeys: String, CodingKey {
        case currencyCode
        case price
        case term
    }

    public func validate() throws {
    }
}

public struct PricingDetail: Codable, Equatable {
    public var count: Integer?
    public var price: Double?

    public init(count: Integer? = nil,
                price: Double? = nil) {
        self.count = count
        self.price = price
    }

    enum CodingKeys: String, CodingKey {
        case count
        case price
    }

    public func validate() throws {
    }
}

public struct PrincipalIdFormat: Codable, Equatable {
    public var arn: String?
    public var statuses: IdFormatList?

    public init(arn: String? = nil,
                statuses: IdFormatList? = nil) {
        self.arn = arn
        self.statuses = statuses
    }

    enum CodingKeys: String, CodingKey {
        case arn
        case statuses = "statusSet"
    }

    public func validate() throws {
    }
}

public struct PrivateIpAddressSpecification: Codable, Equatable {
    public var primary: Boolean?
    public var privateIpAddress: String?

    public init(primary: Boolean? = nil,
                privateIpAddress: String? = nil) {
        self.primary = primary
        self.privateIpAddress = privateIpAddress
    }

    enum CodingKeys: String, CodingKey {
        case primary
        case privateIpAddress
    }

    public func validate() throws {
    }
}

public struct ProductCode: Codable, Equatable {
    public var productCodeId: String?
    public var productCodeType: ProductCodeValues?

    public init(productCodeId: String? = nil,
                productCodeType: ProductCodeValues? = nil) {
        self.productCodeId = productCodeId
        self.productCodeType = productCodeType
    }

    enum CodingKeys: String, CodingKey {
        case productCodeId = "productCode"
        case productCodeType = "type"
    }

    public func validate() throws {
    }
}

public struct PropagatingVgw: Codable, Equatable {
    public var gatewayId: String?

    public init(gatewayId: String? = nil) {
        self.gatewayId = gatewayId
    }

    enum CodingKeys: String, CodingKey {
        case gatewayId
    }

    public func validate() throws {
    }
}

public struct ProvisionByoipCidrRequest: Codable, Equatable {
    public var cidr: String
    public var cidrAuthorizationContext: CidrAuthorizationContext?
    public var description: String?
    public var dryRun: Boolean?

    public init(cidr: String,
                cidrAuthorizationContext: CidrAuthorizationContext? = nil,
                description: String? = nil,
                dryRun: Boolean? = nil) {
        self.cidr = cidr
        self.cidrAuthorizationContext = cidrAuthorizationContext
        self.description = description
        self.dryRun = dryRun
    }

    enum CodingKeys: String, CodingKey {
        case cidr = "Cidr"
        case cidrAuthorizationContext = "CidrAuthorizationContext"
        case description = "Description"
        case dryRun = "DryRun"
    }

    public func validate() throws {
        try cidrAuthorizationContext?.validate()
    }
}

public struct ProvisionByoipCidrResult: Codable, Equatable {
    public var byoipCidr: ByoipCidr?

    public init(byoipCidr: ByoipCidr? = nil) {
        self.byoipCidr = byoipCidr
    }

    enum CodingKeys: String, CodingKey {
        case byoipCidr
    }

    public func validate() throws {
        try byoipCidr?.validate()
    }
}

public struct ProvisionedBandwidth: Codable, Equatable {
    public var provisionTime: DateTime?
    public var provisioned: String?
    public var requestTime: DateTime?
    public var requested: String?
    public var status: String?

    public init(provisionTime: DateTime? = nil,
                provisioned: String? = nil,
                requestTime: DateTime? = nil,
                requested: String? = nil,
                status: String? = nil) {
        self.provisionTime = provisionTime
        self.provisioned = provisioned
        self.requestTime = requestTime
        self.requested = requested
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case provisionTime
        case provisioned
        case requestTime
        case requested
        case status
    }

    public func validate() throws {
    }
}

public struct PublicIpv4Pool: Codable, Equatable {
    public var description: String?
    public var poolAddressRanges: PublicIpv4PoolRangeSet?
    public var poolId: String?
    public var totalAddressCount: Integer?
    public var totalAvailableAddressCount: Integer?

    public init(description: String? = nil,
                poolAddressRanges: PublicIpv4PoolRangeSet? = nil,
                poolId: String? = nil,
                totalAddressCount: Integer? = nil,
                totalAvailableAddressCount: Integer? = nil) {
        self.description = description
        self.poolAddressRanges = poolAddressRanges
        self.poolId = poolId
        self.totalAddressCount = totalAddressCount
        self.totalAvailableAddressCount = totalAvailableAddressCount
    }

    enum CodingKeys: String, CodingKey {
        case description
        case poolAddressRanges = "poolAddressRangeSet"
        case poolId
        case totalAddressCount
        case totalAvailableAddressCount
    }

    public func validate() throws {
    }
}

public struct PublicIpv4PoolRange: Codable, Equatable {
    public var addressCount: Integer?
    public var availableAddressCount: Integer?
    public var firstAddress: String?
    public var lastAddress: String?

    public init(addressCount: Integer? = nil,
                availableAddressCount: Integer? = nil,
                firstAddress: String? = nil,
                lastAddress: String? = nil) {
        self.addressCount = addressCount
        self.availableAddressCount = availableAddressCount
        self.firstAddress = firstAddress
        self.lastAddress = lastAddress
    }

    enum CodingKeys: String, CodingKey {
        case addressCount
        case availableAddressCount
        case firstAddress
        case lastAddress
    }

    public func validate() throws {
    }
}

public struct Purchase: Codable, Equatable {
    public var currencyCode: CurrencyCodeValues?
    public var duration: Integer?
    public var hostIdSet: ResponseHostIdSet?
    public var hostReservationId: String?
    public var hourlyPrice: String?
    public var instanceFamily: String?
    public var paymentOption: PaymentOption?
    public var upfrontPrice: String?

    public init(currencyCode: CurrencyCodeValues? = nil,
                duration: Integer? = nil,
                hostIdSet: ResponseHostIdSet? = nil,
                hostReservationId: String? = nil,
                hourlyPrice: String? = nil,
                instanceFamily: String? = nil,
                paymentOption: PaymentOption? = nil,
                upfrontPrice: String? = nil) {
        self.currencyCode = currencyCode
        self.duration = duration
        self.hostIdSet = hostIdSet
        self.hostReservationId = hostReservationId
        self.hourlyPrice = hourlyPrice
        self.instanceFamily = instanceFamily
        self.paymentOption = paymentOption
        self.upfrontPrice = upfrontPrice
    }

    enum CodingKeys: String, CodingKey {
        case currencyCode
        case duration
        case hostIdSet
        case hostReservationId
        case hourlyPrice
        case instanceFamily
        case paymentOption
        case upfrontPrice
    }

    public func validate() throws {
    }
}

public struct PurchaseHostReservationRequest: Codable, Equatable {
    public var clientToken: String?
    public var currencyCode: CurrencyCodeValues?
    public var hostIdSet: RequestHostIdSet
    public var limitPrice: String?
    public var offeringId: String

    public init(clientToken: String? = nil,
                currencyCode: CurrencyCodeValues? = nil,
                hostIdSet: RequestHostIdSet,
                limitPrice: String? = nil,
                offeringId: String) {
        self.clientToken = clientToken
        self.currencyCode = currencyCode
        self.hostIdSet = hostIdSet
        self.limitPrice = limitPrice
        self.offeringId = offeringId
    }

    enum CodingKeys: String, CodingKey {
        case clientToken = "ClientToken"
        case currencyCode = "CurrencyCode"
        case hostIdSet = "HostIdSet"
        case limitPrice = "LimitPrice"
        case offeringId = "OfferingId"
    }

    public func validate() throws {
    }
}

public struct PurchaseHostReservationResult: Codable, Equatable {
    public var clientToken: String?
    public var currencyCode: CurrencyCodeValues?
    public var purchase: PurchaseSet?
    public var totalHourlyPrice: String?
    public var totalUpfrontPrice: String?

    public init(clientToken: String? = nil,
                currencyCode: CurrencyCodeValues? = nil,
                purchase: PurchaseSet? = nil,
                totalHourlyPrice: String? = nil,
                totalUpfrontPrice: String? = nil) {
        self.clientToken = clientToken
        self.currencyCode = currencyCode
        self.purchase = purchase
        self.totalHourlyPrice = totalHourlyPrice
        self.totalUpfrontPrice = totalUpfrontPrice
    }

    enum CodingKeys: String, CodingKey {
        case clientToken
        case currencyCode
        case purchase
        case totalHourlyPrice
        case totalUpfrontPrice
    }

    public func validate() throws {
    }
}

public struct PurchaseRequest: Codable, Equatable {
    public var instanceCount: Integer
    public var purchaseToken: String

    public init(instanceCount: Integer,
                purchaseToken: String) {
        self.instanceCount = instanceCount
        self.purchaseToken = purchaseToken
    }

    enum CodingKeys: String, CodingKey {
        case instanceCount = "InstanceCount"
        case purchaseToken = "PurchaseToken"
    }

    public func validate() throws {
    }
}

public struct PurchaseReservedInstancesOfferingRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var instanceCount: Integer
    public var limitPrice: ReservedInstanceLimitPrice?
    public var reservedInstancesOfferingId: String

    public init(dryRun: Boolean? = nil,
                instanceCount: Integer,
                limitPrice: ReservedInstanceLimitPrice? = nil,
                reservedInstancesOfferingId: String) {
        self.dryRun = dryRun
        self.instanceCount = instanceCount
        self.limitPrice = limitPrice
        self.reservedInstancesOfferingId = reservedInstancesOfferingId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case instanceCount = "InstanceCount"
        case limitPrice
        case reservedInstancesOfferingId = "ReservedInstancesOfferingId"
    }

    public func validate() throws {
        try limitPrice?.validate()
    }
}

public struct PurchaseReservedInstancesOfferingResult: Codable, Equatable {
    public var reservedInstancesId: String?

    public init(reservedInstancesId: String? = nil) {
        self.reservedInstancesId = reservedInstancesId
    }

    enum CodingKeys: String, CodingKey {
        case reservedInstancesId
    }

    public func validate() throws {
    }
}

public struct PurchaseScheduledInstancesRequest: Codable, Equatable {
    public var clientToken: String?
    public var dryRun: Boolean?
    public var purchaseRequests: PurchaseRequestSet

    public init(clientToken: String? = nil,
                dryRun: Boolean? = nil,
                purchaseRequests: PurchaseRequestSet) {
        self.clientToken = clientToken
        self.dryRun = dryRun
        self.purchaseRequests = purchaseRequests
    }

    enum CodingKeys: String, CodingKey {
        case clientToken = "ClientToken"
        case dryRun = "DryRun"
        case purchaseRequests = "PurchaseRequest"
    }

    public func validate() throws {
        try purchaseRequests.validateAsPurchaseRequestSet()
    }
}

public struct PurchaseScheduledInstancesResult: Codable, Equatable {
    public var scheduledInstanceSet: PurchasedScheduledInstanceSet?

    public init(scheduledInstanceSet: PurchasedScheduledInstanceSet? = nil) {
        self.scheduledInstanceSet = scheduledInstanceSet
    }

    enum CodingKeys: String, CodingKey {
        case scheduledInstanceSet
    }

    public func validate() throws {
    }
}

public struct RebootInstancesRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var instanceIds: InstanceIdStringList

    public init(dryRun: Boolean? = nil,
                instanceIds: InstanceIdStringList) {
        self.dryRun = dryRun
        self.instanceIds = instanceIds
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case instanceIds = "InstanceId"
    }

    public func validate() throws {
    }
}

public struct RecurringCharge: Codable, Equatable {
    public var amount: Double?
    public var frequency: RecurringChargeFrequency?

    public init(amount: Double? = nil,
                frequency: RecurringChargeFrequency? = nil) {
        self.amount = amount
        self.frequency = frequency
    }

    enum CodingKeys: String, CodingKey {
        case amount
        case frequency
    }

    public func validate() throws {
    }
}

public struct Region: Codable, Equatable {
    public var endpoint: String?
    public var regionName: String?

    public init(endpoint: String? = nil,
                regionName: String? = nil) {
        self.endpoint = endpoint
        self.regionName = regionName
    }

    enum CodingKeys: String, CodingKey {
        case endpoint = "regionEndpoint"
        case regionName
    }

    public func validate() throws {
    }
}

public struct RegisterImageRequest: Codable, Equatable {
    public var architecture: ArchitectureValues?
    public var billingProducts: BillingProductList?
    public var blockDeviceMappings: BlockDeviceMappingRequestList?
    public var description: String?
    public var dryRun: Boolean?
    public var enaSupport: Boolean?
    public var imageLocation: String?
    public var kernelId: String?
    public var name: String
    public var ramdiskId: String?
    public var rootDeviceName: String?
    public var sriovNetSupport: String?
    public var virtualizationType: String?

    public init(architecture: ArchitectureValues? = nil,
                billingProducts: BillingProductList? = nil,
                blockDeviceMappings: BlockDeviceMappingRequestList? = nil,
                description: String? = nil,
                dryRun: Boolean? = nil,
                enaSupport: Boolean? = nil,
                imageLocation: String? = nil,
                kernelId: String? = nil,
                name: String,
                ramdiskId: String? = nil,
                rootDeviceName: String? = nil,
                sriovNetSupport: String? = nil,
                virtualizationType: String? = nil) {
        self.architecture = architecture
        self.billingProducts = billingProducts
        self.blockDeviceMappings = blockDeviceMappings
        self.description = description
        self.dryRun = dryRun
        self.enaSupport = enaSupport
        self.imageLocation = imageLocation
        self.kernelId = kernelId
        self.name = name
        self.ramdiskId = ramdiskId
        self.rootDeviceName = rootDeviceName
        self.sriovNetSupport = sriovNetSupport
        self.virtualizationType = virtualizationType
    }

    enum CodingKeys: String, CodingKey {
        case architecture
        case billingProducts = "BillingProduct"
        case blockDeviceMappings = "BlockDeviceMapping"
        case description
        case dryRun
        case enaSupport
        case imageLocation = "ImageLocation"
        case kernelId
        case name
        case ramdiskId
        case rootDeviceName
        case sriovNetSupport
        case virtualizationType
    }

    public func validate() throws {
    }
}

public struct RegisterImageResult: Codable, Equatable {
    public var imageId: String?

    public init(imageId: String? = nil) {
        self.imageId = imageId
    }

    enum CodingKeys: String, CodingKey {
        case imageId
    }

    public func validate() throws {
    }
}

public struct RejectTransitGatewayVpcAttachmentRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var transitGatewayAttachmentId: String

    public init(dryRun: Boolean? = nil,
                transitGatewayAttachmentId: String) {
        self.dryRun = dryRun
        self.transitGatewayAttachmentId = transitGatewayAttachmentId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case transitGatewayAttachmentId = "TransitGatewayAttachmentId"
    }

    public func validate() throws {
    }
}

public struct RejectTransitGatewayVpcAttachmentResult: Codable, Equatable {
    public var transitGatewayVpcAttachment: TransitGatewayVpcAttachment?

    public init(transitGatewayVpcAttachment: TransitGatewayVpcAttachment? = nil) {
        self.transitGatewayVpcAttachment = transitGatewayVpcAttachment
    }

    enum CodingKeys: String, CodingKey {
        case transitGatewayVpcAttachment
    }

    public func validate() throws {
        try transitGatewayVpcAttachment?.validate()
    }
}

public struct RejectVpcEndpointConnectionsRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var serviceId: String
    public var vpcEndpointIds: ValueStringList

    public init(dryRun: Boolean? = nil,
                serviceId: String,
                vpcEndpointIds: ValueStringList) {
        self.dryRun = dryRun
        self.serviceId = serviceId
        self.vpcEndpointIds = vpcEndpointIds
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case serviceId = "ServiceId"
        case vpcEndpointIds = "VpcEndpointId"
    }

    public func validate() throws {
    }
}

public struct RejectVpcEndpointConnectionsResult: Codable, Equatable {
    public var unsuccessful: UnsuccessfulItemSet?

    public init(unsuccessful: UnsuccessfulItemSet? = nil) {
        self.unsuccessful = unsuccessful
    }

    enum CodingKeys: String, CodingKey {
        case unsuccessful
    }

    public func validate() throws {
    }
}

public struct RejectVpcPeeringConnectionRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var vpcPeeringConnectionId: String

    public init(dryRun: Boolean? = nil,
                vpcPeeringConnectionId: String) {
        self.dryRun = dryRun
        self.vpcPeeringConnectionId = vpcPeeringConnectionId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case vpcPeeringConnectionId
    }

    public func validate() throws {
    }
}

public struct RejectVpcPeeringConnectionResult: Codable, Equatable {
    public var `return`: Boolean?

    public init(`return`: Boolean? = nil) {
        self.`return` = `return`
    }

    enum CodingKeys: String, CodingKey {
        case `return` = "return"
    }

    public func validate() throws {
    }
}

public struct ReleaseAddressRequest: Codable, Equatable {
    public var allocationId: String?
    public var dryRun: Boolean?
    public var publicIp: String?

    public init(allocationId: String? = nil,
                dryRun: Boolean? = nil,
                publicIp: String? = nil) {
        self.allocationId = allocationId
        self.dryRun = dryRun
        self.publicIp = publicIp
    }

    enum CodingKeys: String, CodingKey {
        case allocationId = "AllocationId"
        case dryRun
        case publicIp = "PublicIp"
    }

    public func validate() throws {
    }
}

public struct ReleaseHostsRequest: Codable, Equatable {
    public var hostIds: RequestHostIdList

    public init(hostIds: RequestHostIdList) {
        self.hostIds = hostIds
    }

    enum CodingKeys: String, CodingKey {
        case hostIds = "hostId"
    }

    public func validate() throws {
    }
}

public struct ReleaseHostsResult: Codable, Equatable {
    public var successful: ResponseHostIdList?
    public var unsuccessful: UnsuccessfulItemList?

    public init(successful: ResponseHostIdList? = nil,
                unsuccessful: UnsuccessfulItemList? = nil) {
        self.successful = successful
        self.unsuccessful = unsuccessful
    }

    enum CodingKeys: String, CodingKey {
        case successful
        case unsuccessful
    }

    public func validate() throws {
    }
}

public struct ReplaceIamInstanceProfileAssociationRequest: Codable, Equatable {
    public var associationId: String
    public var iamInstanceProfile: IamInstanceProfileSpecification

    public init(associationId: String,
                iamInstanceProfile: IamInstanceProfileSpecification) {
        self.associationId = associationId
        self.iamInstanceProfile = iamInstanceProfile
    }

    enum CodingKeys: String, CodingKey {
        case associationId = "AssociationId"
        case iamInstanceProfile = "IamInstanceProfile"
    }

    public func validate() throws {
        try iamInstanceProfile.validate()
    }
}

public struct ReplaceIamInstanceProfileAssociationResult: Codable, Equatable {
    public var iamInstanceProfileAssociation: IamInstanceProfileAssociation?

    public init(iamInstanceProfileAssociation: IamInstanceProfileAssociation? = nil) {
        self.iamInstanceProfileAssociation = iamInstanceProfileAssociation
    }

    enum CodingKeys: String, CodingKey {
        case iamInstanceProfileAssociation
    }

    public func validate() throws {
        try iamInstanceProfileAssociation?.validate()
    }
}

public struct ReplaceNetworkAclAssociationRequest: Codable, Equatable {
    public var associationId: String
    public var dryRun: Boolean?
    public var networkAclId: String

    public init(associationId: String,
                dryRun: Boolean? = nil,
                networkAclId: String) {
        self.associationId = associationId
        self.dryRun = dryRun
        self.networkAclId = networkAclId
    }

    enum CodingKeys: String, CodingKey {
        case associationId
        case dryRun
        case networkAclId
    }

    public func validate() throws {
    }
}

public struct ReplaceNetworkAclAssociationResult: Codable, Equatable {
    public var newAssociationId: String?

    public init(newAssociationId: String? = nil) {
        self.newAssociationId = newAssociationId
    }

    enum CodingKeys: String, CodingKey {
        case newAssociationId
    }

    public func validate() throws {
    }
}

public struct ReplaceNetworkAclEntryRequest: Codable, Equatable {
    public var cidrBlock: String?
    public var dryRun: Boolean?
    public var egress: Boolean
    public var icmpTypeCode: IcmpTypeCode?
    public var ipv6CidrBlock: String?
    public var networkAclId: String
    public var portRange: PortRange?
    public var `protocol`: String
    public var ruleAction: RuleAction
    public var ruleNumber: Integer

    public init(cidrBlock: String? = nil,
                dryRun: Boolean? = nil,
                egress: Boolean,
                icmpTypeCode: IcmpTypeCode? = nil,
                ipv6CidrBlock: String? = nil,
                networkAclId: String,
                portRange: PortRange? = nil,
                `protocol`: String,
                ruleAction: RuleAction,
                ruleNumber: Integer) {
        self.cidrBlock = cidrBlock
        self.dryRun = dryRun
        self.egress = egress
        self.icmpTypeCode = icmpTypeCode
        self.ipv6CidrBlock = ipv6CidrBlock
        self.networkAclId = networkAclId
        self.portRange = portRange
        self.`protocol` = `protocol`
        self.ruleAction = ruleAction
        self.ruleNumber = ruleNumber
    }

    enum CodingKeys: String, CodingKey {
        case cidrBlock
        case dryRun
        case egress
        case icmpTypeCode = "Icmp"
        case ipv6CidrBlock
        case networkAclId
        case portRange
        case `protocol` = "protocol"
        case ruleAction
        case ruleNumber
    }

    public func validate() throws {
        try icmpTypeCode?.validate()
        try portRange?.validate()
    }
}

public struct ReplaceRouteRequest: Codable, Equatable {
    public var destinationCidrBlock: String?
    public var destinationIpv6CidrBlock: String?
    public var dryRun: Boolean?
    public var egressOnlyInternetGatewayId: String?
    public var gatewayId: String?
    public var instanceId: String?
    public var natGatewayId: String?
    public var networkInterfaceId: String?
    public var routeTableId: String
    public var transitGatewayId: String?
    public var vpcPeeringConnectionId: String?

    public init(destinationCidrBlock: String? = nil,
                destinationIpv6CidrBlock: String? = nil,
                dryRun: Boolean? = nil,
                egressOnlyInternetGatewayId: String? = nil,
                gatewayId: String? = nil,
                instanceId: String? = nil,
                natGatewayId: String? = nil,
                networkInterfaceId: String? = nil,
                routeTableId: String,
                transitGatewayId: String? = nil,
                vpcPeeringConnectionId: String? = nil) {
        self.destinationCidrBlock = destinationCidrBlock
        self.destinationIpv6CidrBlock = destinationIpv6CidrBlock
        self.dryRun = dryRun
        self.egressOnlyInternetGatewayId = egressOnlyInternetGatewayId
        self.gatewayId = gatewayId
        self.instanceId = instanceId
        self.natGatewayId = natGatewayId
        self.networkInterfaceId = networkInterfaceId
        self.routeTableId = routeTableId
        self.transitGatewayId = transitGatewayId
        self.vpcPeeringConnectionId = vpcPeeringConnectionId
    }

    enum CodingKeys: String, CodingKey {
        case destinationCidrBlock
        case destinationIpv6CidrBlock
        case dryRun
        case egressOnlyInternetGatewayId
        case gatewayId
        case instanceId
        case natGatewayId
        case networkInterfaceId
        case routeTableId
        case transitGatewayId = "TransitGatewayId"
        case vpcPeeringConnectionId
    }

    public func validate() throws {
    }
}

public struct ReplaceRouteTableAssociationRequest: Codable, Equatable {
    public var associationId: String
    public var dryRun: Boolean?
    public var routeTableId: String

    public init(associationId: String,
                dryRun: Boolean? = nil,
                routeTableId: String) {
        self.associationId = associationId
        self.dryRun = dryRun
        self.routeTableId = routeTableId
    }

    enum CodingKeys: String, CodingKey {
        case associationId
        case dryRun
        case routeTableId
    }

    public func validate() throws {
    }
}

public struct ReplaceRouteTableAssociationResult: Codable, Equatable {
    public var newAssociationId: String?

    public init(newAssociationId: String? = nil) {
        self.newAssociationId = newAssociationId
    }

    enum CodingKeys: String, CodingKey {
        case newAssociationId
    }

    public func validate() throws {
    }
}

public struct ReplaceTransitGatewayRouteRequest: Codable, Equatable {
    public var blackhole: Boolean?
    public var destinationCidrBlock: String
    public var dryRun: Boolean?
    public var transitGatewayAttachmentId: String?
    public var transitGatewayRouteTableId: String

    public init(blackhole: Boolean? = nil,
                destinationCidrBlock: String,
                dryRun: Boolean? = nil,
                transitGatewayAttachmentId: String? = nil,
                transitGatewayRouteTableId: String) {
        self.blackhole = blackhole
        self.destinationCidrBlock = destinationCidrBlock
        self.dryRun = dryRun
        self.transitGatewayAttachmentId = transitGatewayAttachmentId
        self.transitGatewayRouteTableId = transitGatewayRouteTableId
    }

    enum CodingKeys: String, CodingKey {
        case blackhole = "Blackhole"
        case destinationCidrBlock = "DestinationCidrBlock"
        case dryRun = "DryRun"
        case transitGatewayAttachmentId = "TransitGatewayAttachmentId"
        case transitGatewayRouteTableId = "TransitGatewayRouteTableId"
    }

    public func validate() throws {
    }
}

public struct ReplaceTransitGatewayRouteResult: Codable, Equatable {
    public var route: TransitGatewayRoute?

    public init(route: TransitGatewayRoute? = nil) {
        self.route = route
    }

    enum CodingKeys: String, CodingKey {
        case route
    }

    public func validate() throws {
        try route?.validate()
    }
}

public struct ReportInstanceStatusRequest: Codable, Equatable {
    public var description: String?
    public var dryRun: Boolean?
    public var endTime: DateTime?
    public var instances: InstanceIdStringList
    public var reasonCodes: ReasonCodesList
    public var startTime: DateTime?
    public var status: ReportStatusType

    public init(description: String? = nil,
                dryRun: Boolean? = nil,
                endTime: DateTime? = nil,
                instances: InstanceIdStringList,
                reasonCodes: ReasonCodesList,
                startTime: DateTime? = nil,
                status: ReportStatusType) {
        self.description = description
        self.dryRun = dryRun
        self.endTime = endTime
        self.instances = instances
        self.reasonCodes = reasonCodes
        self.startTime = startTime
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case description
        case dryRun
        case endTime
        case instances = "instanceId"
        case reasonCodes = "reasonCode"
        case startTime
        case status
    }

    public func validate() throws {
    }
}

public struct RequestLaunchTemplateData: Codable, Equatable {
    public var blockDeviceMappings: LaunchTemplateBlockDeviceMappingRequestList?
    public var capacityReservationSpecification: LaunchTemplateCapacityReservationSpecificationRequest?
    public var cpuOptions: LaunchTemplateCpuOptionsRequest?
    public var creditSpecification: CreditSpecificationRequest?
    public var disableApiTermination: Boolean?
    public var ebsOptimized: Boolean?
    public var elasticGpuSpecifications: ElasticGpuSpecificationList?
    public var elasticInferenceAccelerators: LaunchTemplateElasticInferenceAcceleratorList?
    public var hibernationOptions: LaunchTemplateHibernationOptionsRequest?
    public var iamInstanceProfile: LaunchTemplateIamInstanceProfileSpecificationRequest?
    public var imageId: String?
    public var instanceInitiatedShutdownBehavior: ShutdownBehavior?
    public var instanceMarketOptions: LaunchTemplateInstanceMarketOptionsRequest?
    public var instanceType: InstanceType?
    public var kernelId: String?
    public var keyName: String?
    public var licenseSpecifications: LaunchTemplateLicenseSpecificationListRequest?
    public var monitoring: LaunchTemplatesMonitoringRequest?
    public var networkInterfaces: LaunchTemplateInstanceNetworkInterfaceSpecificationRequestList?
    public var placement: LaunchTemplatePlacementRequest?
    public var ramDiskId: String?
    public var securityGroupIds: SecurityGroupIdStringList?
    public var securityGroups: SecurityGroupStringList?
    public var tagSpecifications: LaunchTemplateTagSpecificationRequestList?
    public var userData: String?

    public init(blockDeviceMappings: LaunchTemplateBlockDeviceMappingRequestList? = nil,
                capacityReservationSpecification: LaunchTemplateCapacityReservationSpecificationRequest? = nil,
                cpuOptions: LaunchTemplateCpuOptionsRequest? = nil,
                creditSpecification: CreditSpecificationRequest? = nil,
                disableApiTermination: Boolean? = nil,
                ebsOptimized: Boolean? = nil,
                elasticGpuSpecifications: ElasticGpuSpecificationList? = nil,
                elasticInferenceAccelerators: LaunchTemplateElasticInferenceAcceleratorList? = nil,
                hibernationOptions: LaunchTemplateHibernationOptionsRequest? = nil,
                iamInstanceProfile: LaunchTemplateIamInstanceProfileSpecificationRequest? = nil,
                imageId: String? = nil,
                instanceInitiatedShutdownBehavior: ShutdownBehavior? = nil,
                instanceMarketOptions: LaunchTemplateInstanceMarketOptionsRequest? = nil,
                instanceType: InstanceType? = nil,
                kernelId: String? = nil,
                keyName: String? = nil,
                licenseSpecifications: LaunchTemplateLicenseSpecificationListRequest? = nil,
                monitoring: LaunchTemplatesMonitoringRequest? = nil,
                networkInterfaces: LaunchTemplateInstanceNetworkInterfaceSpecificationRequestList? = nil,
                placement: LaunchTemplatePlacementRequest? = nil,
                ramDiskId: String? = nil,
                securityGroupIds: SecurityGroupIdStringList? = nil,
                securityGroups: SecurityGroupStringList? = nil,
                tagSpecifications: LaunchTemplateTagSpecificationRequestList? = nil,
                userData: String? = nil) {
        self.blockDeviceMappings = blockDeviceMappings
        self.capacityReservationSpecification = capacityReservationSpecification
        self.cpuOptions = cpuOptions
        self.creditSpecification = creditSpecification
        self.disableApiTermination = disableApiTermination
        self.ebsOptimized = ebsOptimized
        self.elasticGpuSpecifications = elasticGpuSpecifications
        self.elasticInferenceAccelerators = elasticInferenceAccelerators
        self.hibernationOptions = hibernationOptions
        self.iamInstanceProfile = iamInstanceProfile
        self.imageId = imageId
        self.instanceInitiatedShutdownBehavior = instanceInitiatedShutdownBehavior
        self.instanceMarketOptions = instanceMarketOptions
        self.instanceType = instanceType
        self.kernelId = kernelId
        self.keyName = keyName
        self.licenseSpecifications = licenseSpecifications
        self.monitoring = monitoring
        self.networkInterfaces = networkInterfaces
        self.placement = placement
        self.ramDiskId = ramDiskId
        self.securityGroupIds = securityGroupIds
        self.securityGroups = securityGroups
        self.tagSpecifications = tagSpecifications
        self.userData = userData
    }

    enum CodingKeys: String, CodingKey {
        case blockDeviceMappings = "BlockDeviceMapping"
        case capacityReservationSpecification = "CapacityReservationSpecification"
        case cpuOptions = "CpuOptions"
        case creditSpecification = "CreditSpecification"
        case disableApiTermination = "DisableApiTermination"
        case ebsOptimized = "EbsOptimized"
        case elasticGpuSpecifications = "ElasticGpuSpecification"
        case elasticInferenceAccelerators = "ElasticInferenceAccelerator"
        case hibernationOptions = "HibernationOptions"
        case iamInstanceProfile = "IamInstanceProfile"
        case imageId = "ImageId"
        case instanceInitiatedShutdownBehavior = "InstanceInitiatedShutdownBehavior"
        case instanceMarketOptions = "InstanceMarketOptions"
        case instanceType = "InstanceType"
        case kernelId = "KernelId"
        case keyName = "KeyName"
        case licenseSpecifications = "LicenseSpecification"
        case monitoring = "Monitoring"
        case networkInterfaces = "NetworkInterface"
        case placement = "Placement"
        case ramDiskId = "RamDiskId"
        case securityGroupIds = "SecurityGroupId"
        case securityGroups = "SecurityGroup"
        case tagSpecifications = "TagSpecification"
        case userData = "UserData"
    }

    public func validate() throws {
        try capacityReservationSpecification?.validate()
        try cpuOptions?.validate()
        try creditSpecification?.validate()
        try hibernationOptions?.validate()
        try iamInstanceProfile?.validate()
        try instanceMarketOptions?.validate()
        try monitoring?.validate()
        try placement?.validate()
    }
}

public struct RequestSpotFleetRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var spotFleetRequestConfig: SpotFleetRequestConfigData

    public init(dryRun: Boolean? = nil,
                spotFleetRequestConfig: SpotFleetRequestConfigData) {
        self.dryRun = dryRun
        self.spotFleetRequestConfig = spotFleetRequestConfig
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case spotFleetRequestConfig
    }

    public func validate() throws {
        try spotFleetRequestConfig.validate()
    }
}

public struct RequestSpotFleetResponse: Codable, Equatable {
    public var spotFleetRequestId: String?

    public init(spotFleetRequestId: String? = nil) {
        self.spotFleetRequestId = spotFleetRequestId
    }

    enum CodingKeys: String, CodingKey {
        case spotFleetRequestId
    }

    public func validate() throws {
    }
}

public struct RequestSpotInstancesRequest: Codable, Equatable {
    public var availabilityZoneGroup: String?
    public var blockDurationMinutes: Integer?
    public var clientToken: String?
    public var dryRun: Boolean?
    public var instanceCount: Integer?
    public var instanceInterruptionBehavior: InstanceInterruptionBehavior?
    public var launchGroup: String?
    public var launchSpecification: RequestSpotLaunchSpecification?
    public var spotPrice: String?
    public var type: SpotInstanceType?
    public var validFrom: DateTime?
    public var validUntil: DateTime?

    public init(availabilityZoneGroup: String? = nil,
                blockDurationMinutes: Integer? = nil,
                clientToken: String? = nil,
                dryRun: Boolean? = nil,
                instanceCount: Integer? = nil,
                instanceInterruptionBehavior: InstanceInterruptionBehavior? = nil,
                launchGroup: String? = nil,
                launchSpecification: RequestSpotLaunchSpecification? = nil,
                spotPrice: String? = nil,
                type: SpotInstanceType? = nil,
                validFrom: DateTime? = nil,
                validUntil: DateTime? = nil) {
        self.availabilityZoneGroup = availabilityZoneGroup
        self.blockDurationMinutes = blockDurationMinutes
        self.clientToken = clientToken
        self.dryRun = dryRun
        self.instanceCount = instanceCount
        self.instanceInterruptionBehavior = instanceInterruptionBehavior
        self.launchGroup = launchGroup
        self.launchSpecification = launchSpecification
        self.spotPrice = spotPrice
        self.type = type
        self.validFrom = validFrom
        self.validUntil = validUntil
    }

    enum CodingKeys: String, CodingKey {
        case availabilityZoneGroup
        case blockDurationMinutes
        case clientToken
        case dryRun
        case instanceCount
        case instanceInterruptionBehavior = "InstanceInterruptionBehavior"
        case launchGroup
        case launchSpecification = "LaunchSpecification"
        case spotPrice
        case type
        case validFrom
        case validUntil
    }

    public func validate() throws {
        try launchSpecification?.validate()
    }
}

public struct RequestSpotInstancesResult: Codable, Equatable {
    public var spotInstanceRequests: SpotInstanceRequestList?

    public init(spotInstanceRequests: SpotInstanceRequestList? = nil) {
        self.spotInstanceRequests = spotInstanceRequests
    }

    enum CodingKeys: String, CodingKey {
        case spotInstanceRequests = "spotInstanceRequestSet"
    }

    public func validate() throws {
    }
}

public struct RequestSpotLaunchSpecification: Codable, Equatable {
    public var addressingType: String?
    public var blockDeviceMappings: BlockDeviceMappingList?
    public var ebsOptimized: Boolean?
    public var iamInstanceProfile: IamInstanceProfileSpecification?
    public var imageId: String?
    public var instanceType: InstanceType?
    public var kernelId: String?
    public var keyName: String?
    public var monitoring: RunInstancesMonitoringEnabled?
    public var networkInterfaces: InstanceNetworkInterfaceSpecificationList?
    public var placement: SpotPlacement?
    public var ramdiskId: String?
    public var securityGroupIds: ValueStringList?
    public var securityGroups: ValueStringList?
    public var subnetId: String?
    public var userData: String?

    public init(addressingType: String? = nil,
                blockDeviceMappings: BlockDeviceMappingList? = nil,
                ebsOptimized: Boolean? = nil,
                iamInstanceProfile: IamInstanceProfileSpecification? = nil,
                imageId: String? = nil,
                instanceType: InstanceType? = nil,
                kernelId: String? = nil,
                keyName: String? = nil,
                monitoring: RunInstancesMonitoringEnabled? = nil,
                networkInterfaces: InstanceNetworkInterfaceSpecificationList? = nil,
                placement: SpotPlacement? = nil,
                ramdiskId: String? = nil,
                securityGroupIds: ValueStringList? = nil,
                securityGroups: ValueStringList? = nil,
                subnetId: String? = nil,
                userData: String? = nil) {
        self.addressingType = addressingType
        self.blockDeviceMappings = blockDeviceMappings
        self.ebsOptimized = ebsOptimized
        self.iamInstanceProfile = iamInstanceProfile
        self.imageId = imageId
        self.instanceType = instanceType
        self.kernelId = kernelId
        self.keyName = keyName
        self.monitoring = monitoring
        self.networkInterfaces = networkInterfaces
        self.placement = placement
        self.ramdiskId = ramdiskId
        self.securityGroupIds = securityGroupIds
        self.securityGroups = securityGroups
        self.subnetId = subnetId
        self.userData = userData
    }

    enum CodingKeys: String, CodingKey {
        case addressingType
        case blockDeviceMappings = "blockDeviceMapping"
        case ebsOptimized
        case iamInstanceProfile
        case imageId
        case instanceType
        case kernelId
        case keyName
        case monitoring
        case networkInterfaces = "NetworkInterface"
        case placement
        case ramdiskId
        case securityGroupIds = "SecurityGroupId"
        case securityGroups = "SecurityGroup"
        case subnetId
        case userData
    }

    public func validate() throws {
        try iamInstanceProfile?.validate()
        try monitoring?.validate()
        try placement?.validate()
    }
}

public struct Reservation: Codable, Equatable {
    public var groups: GroupIdentifierList?
    public var instances: InstanceList?
    public var ownerId: String?
    public var requesterId: String?
    public var reservationId: String?

    public init(groups: GroupIdentifierList? = nil,
                instances: InstanceList? = nil,
                ownerId: String? = nil,
                requesterId: String? = nil,
                reservationId: String? = nil) {
        self.groups = groups
        self.instances = instances
        self.ownerId = ownerId
        self.requesterId = requesterId
        self.reservationId = reservationId
    }

    enum CodingKeys: String, CodingKey {
        case groups = "groupSet"
        case instances = "instancesSet"
        case ownerId
        case requesterId
        case reservationId
    }

    public func validate() throws {
    }
}

public struct ReservationValue: Codable, Equatable {
    public var hourlyPrice: String?
    public var remainingTotalValue: String?
    public var remainingUpfrontValue: String?

    public init(hourlyPrice: String? = nil,
                remainingTotalValue: String? = nil,
                remainingUpfrontValue: String? = nil) {
        self.hourlyPrice = hourlyPrice
        self.remainingTotalValue = remainingTotalValue
        self.remainingUpfrontValue = remainingUpfrontValue
    }

    enum CodingKeys: String, CodingKey {
        case hourlyPrice
        case remainingTotalValue
        case remainingUpfrontValue
    }

    public func validate() throws {
    }
}

public struct ReservedInstanceLimitPrice: Codable, Equatable {
    public var amount: Double?
    public var currencyCode: CurrencyCodeValues?

    public init(amount: Double? = nil,
                currencyCode: CurrencyCodeValues? = nil) {
        self.amount = amount
        self.currencyCode = currencyCode
    }

    enum CodingKeys: String, CodingKey {
        case amount
        case currencyCode
    }

    public func validate() throws {
    }
}

public struct ReservedInstanceReservationValue: Codable, Equatable {
    public var reservationValue: ReservationValue?
    public var reservedInstanceId: String?

    public init(reservationValue: ReservationValue? = nil,
                reservedInstanceId: String? = nil) {
        self.reservationValue = reservationValue
        self.reservedInstanceId = reservedInstanceId
    }

    enum CodingKeys: String, CodingKey {
        case reservationValue
        case reservedInstanceId
    }

    public func validate() throws {
        try reservationValue?.validate()
    }
}

public struct ReservedInstances: Codable, Equatable {
    public var availabilityZone: String?
    public var currencyCode: CurrencyCodeValues?
    public var duration: Long?
    public var end: DateTime?
    public var fixedPrice: Float?
    public var instanceCount: Integer?
    public var instanceTenancy: Tenancy?
    public var instanceType: InstanceType?
    public var offeringClass: OfferingClassType?
    public var offeringType: OfferingTypeValues?
    public var productDescription: RIProductDescription?
    public var recurringCharges: RecurringChargesList?
    public var reservedInstancesId: String?
    public var scope: Scope?
    public var start: DateTime?
    public var state: ReservedInstanceState?
    public var tags: TagList?
    public var usagePrice: Float?

    public init(availabilityZone: String? = nil,
                currencyCode: CurrencyCodeValues? = nil,
                duration: Long? = nil,
                end: DateTime? = nil,
                fixedPrice: Float? = nil,
                instanceCount: Integer? = nil,
                instanceTenancy: Tenancy? = nil,
                instanceType: InstanceType? = nil,
                offeringClass: OfferingClassType? = nil,
                offeringType: OfferingTypeValues? = nil,
                productDescription: RIProductDescription? = nil,
                recurringCharges: RecurringChargesList? = nil,
                reservedInstancesId: String? = nil,
                scope: Scope? = nil,
                start: DateTime? = nil,
                state: ReservedInstanceState? = nil,
                tags: TagList? = nil,
                usagePrice: Float? = nil) {
        self.availabilityZone = availabilityZone
        self.currencyCode = currencyCode
        self.duration = duration
        self.end = end
        self.fixedPrice = fixedPrice
        self.instanceCount = instanceCount
        self.instanceTenancy = instanceTenancy
        self.instanceType = instanceType
        self.offeringClass = offeringClass
        self.offeringType = offeringType
        self.productDescription = productDescription
        self.recurringCharges = recurringCharges
        self.reservedInstancesId = reservedInstancesId
        self.scope = scope
        self.start = start
        self.state = state
        self.tags = tags
        self.usagePrice = usagePrice
    }

    enum CodingKeys: String, CodingKey {
        case availabilityZone
        case currencyCode
        case duration
        case end
        case fixedPrice
        case instanceCount
        case instanceTenancy
        case instanceType
        case offeringClass
        case offeringType
        case productDescription
        case recurringCharges
        case reservedInstancesId
        case scope
        case start
        case state
        case tags = "tagSet"
        case usagePrice
    }

    public func validate() throws {
    }
}

public struct ReservedInstancesConfiguration: Codable, Equatable {
    public var availabilityZone: String?
    public var instanceCount: Integer?
    public var instanceType: InstanceType?
    public var platform: String?
    public var scope: Scope?

    public init(availabilityZone: String? = nil,
                instanceCount: Integer? = nil,
                instanceType: InstanceType? = nil,
                platform: String? = nil,
                scope: Scope? = nil) {
        self.availabilityZone = availabilityZone
        self.instanceCount = instanceCount
        self.instanceType = instanceType
        self.platform = platform
        self.scope = scope
    }

    enum CodingKeys: String, CodingKey {
        case availabilityZone
        case instanceCount
        case instanceType
        case platform
        case scope
    }

    public func validate() throws {
    }
}

public struct ReservedInstancesId: Codable, Equatable {
    public var reservedInstancesId: String?

    public init(reservedInstancesId: String? = nil) {
        self.reservedInstancesId = reservedInstancesId
    }

    enum CodingKeys: String, CodingKey {
        case reservedInstancesId
    }

    public func validate() throws {
    }
}

public struct ReservedInstancesListing: Codable, Equatable {
    public var clientToken: String?
    public var createDate: DateTime?
    public var instanceCounts: InstanceCountList?
    public var priceSchedules: PriceScheduleList?
    public var reservedInstancesId: String?
    public var reservedInstancesListingId: String?
    public var status: ListingStatus?
    public var statusMessage: String?
    public var tags: TagList?
    public var updateDate: DateTime?

    public init(clientToken: String? = nil,
                createDate: DateTime? = nil,
                instanceCounts: InstanceCountList? = nil,
                priceSchedules: PriceScheduleList? = nil,
                reservedInstancesId: String? = nil,
                reservedInstancesListingId: String? = nil,
                status: ListingStatus? = nil,
                statusMessage: String? = nil,
                tags: TagList? = nil,
                updateDate: DateTime? = nil) {
        self.clientToken = clientToken
        self.createDate = createDate
        self.instanceCounts = instanceCounts
        self.priceSchedules = priceSchedules
        self.reservedInstancesId = reservedInstancesId
        self.reservedInstancesListingId = reservedInstancesListingId
        self.status = status
        self.statusMessage = statusMessage
        self.tags = tags
        self.updateDate = updateDate
    }

    enum CodingKeys: String, CodingKey {
        case clientToken
        case createDate
        case instanceCounts
        case priceSchedules
        case reservedInstancesId
        case reservedInstancesListingId
        case status
        case statusMessage
        case tags = "tagSet"
        case updateDate
    }

    public func validate() throws {
    }
}

public struct ReservedInstancesModification: Codable, Equatable {
    public var clientToken: String?
    public var createDate: DateTime?
    public var effectiveDate: DateTime?
    public var modificationResults: ReservedInstancesModificationResultList?
    public var reservedInstancesIds: ReservedIntancesIds?
    public var reservedInstancesModificationId: String?
    public var status: String?
    public var statusMessage: String?
    public var updateDate: DateTime?

    public init(clientToken: String? = nil,
                createDate: DateTime? = nil,
                effectiveDate: DateTime? = nil,
                modificationResults: ReservedInstancesModificationResultList? = nil,
                reservedInstancesIds: ReservedIntancesIds? = nil,
                reservedInstancesModificationId: String? = nil,
                status: String? = nil,
                statusMessage: String? = nil,
                updateDate: DateTime? = nil) {
        self.clientToken = clientToken
        self.createDate = createDate
        self.effectiveDate = effectiveDate
        self.modificationResults = modificationResults
        self.reservedInstancesIds = reservedInstancesIds
        self.reservedInstancesModificationId = reservedInstancesModificationId
        self.status = status
        self.statusMessage = statusMessage
        self.updateDate = updateDate
    }

    enum CodingKeys: String, CodingKey {
        case clientToken
        case createDate
        case effectiveDate
        case modificationResults = "modificationResultSet"
        case reservedInstancesIds = "reservedInstancesSet"
        case reservedInstancesModificationId
        case status
        case statusMessage
        case updateDate
    }

    public func validate() throws {
    }
}

public struct ReservedInstancesModificationResult: Codable, Equatable {
    public var reservedInstancesId: String?
    public var targetConfiguration: ReservedInstancesConfiguration?

    public init(reservedInstancesId: String? = nil,
                targetConfiguration: ReservedInstancesConfiguration? = nil) {
        self.reservedInstancesId = reservedInstancesId
        self.targetConfiguration = targetConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case reservedInstancesId
        case targetConfiguration
    }

    public func validate() throws {
        try targetConfiguration?.validate()
    }
}

public struct ReservedInstancesOffering: Codable, Equatable {
    public var availabilityZone: String?
    public var currencyCode: CurrencyCodeValues?
    public var duration: Long?
    public var fixedPrice: Float?
    public var instanceTenancy: Tenancy?
    public var instanceType: InstanceType?
    public var marketplace: Boolean?
    public var offeringClass: OfferingClassType?
    public var offeringType: OfferingTypeValues?
    public var pricingDetails: PricingDetailsList?
    public var productDescription: RIProductDescription?
    public var recurringCharges: RecurringChargesList?
    public var reservedInstancesOfferingId: String?
    public var scope: Scope?
    public var usagePrice: Float?

    public init(availabilityZone: String? = nil,
                currencyCode: CurrencyCodeValues? = nil,
                duration: Long? = nil,
                fixedPrice: Float? = nil,
                instanceTenancy: Tenancy? = nil,
                instanceType: InstanceType? = nil,
                marketplace: Boolean? = nil,
                offeringClass: OfferingClassType? = nil,
                offeringType: OfferingTypeValues? = nil,
                pricingDetails: PricingDetailsList? = nil,
                productDescription: RIProductDescription? = nil,
                recurringCharges: RecurringChargesList? = nil,
                reservedInstancesOfferingId: String? = nil,
                scope: Scope? = nil,
                usagePrice: Float? = nil) {
        self.availabilityZone = availabilityZone
        self.currencyCode = currencyCode
        self.duration = duration
        self.fixedPrice = fixedPrice
        self.instanceTenancy = instanceTenancy
        self.instanceType = instanceType
        self.marketplace = marketplace
        self.offeringClass = offeringClass
        self.offeringType = offeringType
        self.pricingDetails = pricingDetails
        self.productDescription = productDescription
        self.recurringCharges = recurringCharges
        self.reservedInstancesOfferingId = reservedInstancesOfferingId
        self.scope = scope
        self.usagePrice = usagePrice
    }

    enum CodingKeys: String, CodingKey {
        case availabilityZone
        case currencyCode
        case duration
        case fixedPrice
        case instanceTenancy
        case instanceType
        case marketplace
        case offeringClass
        case offeringType
        case pricingDetails = "pricingDetailsSet"
        case productDescription
        case recurringCharges
        case reservedInstancesOfferingId
        case scope
        case usagePrice
    }

    public func validate() throws {
    }
}

public struct ResetEbsDefaultKmsKeyIdRequest: Codable, Equatable {
    public var dryRun: Boolean?

    public init(dryRun: Boolean? = nil) {
        self.dryRun = dryRun
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
    }

    public func validate() throws {
    }
}

public struct ResetEbsDefaultKmsKeyIdResult: Codable, Equatable {
    public var kmsKeyId: String?

    public init(kmsKeyId: String? = nil) {
        self.kmsKeyId = kmsKeyId
    }

    enum CodingKeys: String, CodingKey {
        case kmsKeyId
    }

    public func validate() throws {
    }
}

public struct ResetFpgaImageAttributeRequest: Codable, Equatable {
    public var attribute: ResetFpgaImageAttributeName?
    public var dryRun: Boolean?
    public var fpgaImageId: String

    public init(attribute: ResetFpgaImageAttributeName? = nil,
                dryRun: Boolean? = nil,
                fpgaImageId: String) {
        self.attribute = attribute
        self.dryRun = dryRun
        self.fpgaImageId = fpgaImageId
    }

    enum CodingKeys: String, CodingKey {
        case attribute = "Attribute"
        case dryRun = "DryRun"
        case fpgaImageId = "FpgaImageId"
    }

    public func validate() throws {
    }
}

public struct ResetFpgaImageAttributeResult: Codable, Equatable {
    public var `return`: Boolean?

    public init(`return`: Boolean? = nil) {
        self.`return` = `return`
    }

    enum CodingKeys: String, CodingKey {
        case `return` = "return"
    }

    public func validate() throws {
    }
}

public struct ResetImageAttributeRequest: Codable, Equatable {
    public var attribute: ResetImageAttributeName
    public var dryRun: Boolean?
    public var imageId: String

    public init(attribute: ResetImageAttributeName,
                dryRun: Boolean? = nil,
                imageId: String) {
        self.attribute = attribute
        self.dryRun = dryRun
        self.imageId = imageId
    }

    enum CodingKeys: String, CodingKey {
        case attribute = "Attribute"
        case dryRun
        case imageId = "ImageId"
    }

    public func validate() throws {
    }
}

public struct ResetInstanceAttributeRequest: Codable, Equatable {
    public var attribute: InstanceAttributeName
    public var dryRun: Boolean?
    public var instanceId: String

    public init(attribute: InstanceAttributeName,
                dryRun: Boolean? = nil,
                instanceId: String) {
        self.attribute = attribute
        self.dryRun = dryRun
        self.instanceId = instanceId
    }

    enum CodingKeys: String, CodingKey {
        case attribute
        case dryRun
        case instanceId
    }

    public func validate() throws {
    }
}

public struct ResetNetworkInterfaceAttributeRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var networkInterfaceId: String
    public var sourceDestCheck: String?

    public init(dryRun: Boolean? = nil,
                networkInterfaceId: String,
                sourceDestCheck: String? = nil) {
        self.dryRun = dryRun
        self.networkInterfaceId = networkInterfaceId
        self.sourceDestCheck = sourceDestCheck
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case networkInterfaceId
        case sourceDestCheck
    }

    public func validate() throws {
    }
}

public struct ResetSnapshotAttributeRequest: Codable, Equatable {
    public var attribute: SnapshotAttributeName
    public var dryRun: Boolean?
    public var snapshotId: String

    public init(attribute: SnapshotAttributeName,
                dryRun: Boolean? = nil,
                snapshotId: String) {
        self.attribute = attribute
        self.dryRun = dryRun
        self.snapshotId = snapshotId
    }

    enum CodingKeys: String, CodingKey {
        case attribute = "Attribute"
        case dryRun
        case snapshotId = "SnapshotId"
    }

    public func validate() throws {
    }
}

public struct ResponseError: Codable, Equatable {
    public var code: LaunchTemplateErrorCode?
    public var message: String?

    public init(code: LaunchTemplateErrorCode? = nil,
                message: String? = nil) {
        self.code = code
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case code
        case message
    }

    public func validate() throws {
    }
}

public struct ResponseLaunchTemplateData: Codable, Equatable {
    public var blockDeviceMappings: LaunchTemplateBlockDeviceMappingList?
    public var capacityReservationSpecification: LaunchTemplateCapacityReservationSpecificationResponse?
    public var cpuOptions: LaunchTemplateCpuOptions?
    public var creditSpecification: CreditSpecification?
    public var disableApiTermination: Boolean?
    public var ebsOptimized: Boolean?
    public var elasticGpuSpecifications: ElasticGpuSpecificationResponseList?
    public var elasticInferenceAccelerators: LaunchTemplateElasticInferenceAcceleratorResponseList?
    public var hibernationOptions: LaunchTemplateHibernationOptions?
    public var iamInstanceProfile: LaunchTemplateIamInstanceProfileSpecification?
    public var imageId: String?
    public var instanceInitiatedShutdownBehavior: ShutdownBehavior?
    public var instanceMarketOptions: LaunchTemplateInstanceMarketOptions?
    public var instanceType: InstanceType?
    public var kernelId: String?
    public var keyName: String?
    public var licenseSpecifications: LaunchTemplateLicenseList?
    public var monitoring: LaunchTemplatesMonitoring?
    public var networkInterfaces: LaunchTemplateInstanceNetworkInterfaceSpecificationList?
    public var placement: LaunchTemplatePlacement?
    public var ramDiskId: String?
    public var securityGroupIds: ValueStringList?
    public var securityGroups: ValueStringList?
    public var tagSpecifications: LaunchTemplateTagSpecificationList?
    public var userData: String?

    public init(blockDeviceMappings: LaunchTemplateBlockDeviceMappingList? = nil,
                capacityReservationSpecification: LaunchTemplateCapacityReservationSpecificationResponse? = nil,
                cpuOptions: LaunchTemplateCpuOptions? = nil,
                creditSpecification: CreditSpecification? = nil,
                disableApiTermination: Boolean? = nil,
                ebsOptimized: Boolean? = nil,
                elasticGpuSpecifications: ElasticGpuSpecificationResponseList? = nil,
                elasticInferenceAccelerators: LaunchTemplateElasticInferenceAcceleratorResponseList? = nil,
                hibernationOptions: LaunchTemplateHibernationOptions? = nil,
                iamInstanceProfile: LaunchTemplateIamInstanceProfileSpecification? = nil,
                imageId: String? = nil,
                instanceInitiatedShutdownBehavior: ShutdownBehavior? = nil,
                instanceMarketOptions: LaunchTemplateInstanceMarketOptions? = nil,
                instanceType: InstanceType? = nil,
                kernelId: String? = nil,
                keyName: String? = nil,
                licenseSpecifications: LaunchTemplateLicenseList? = nil,
                monitoring: LaunchTemplatesMonitoring? = nil,
                networkInterfaces: LaunchTemplateInstanceNetworkInterfaceSpecificationList? = nil,
                placement: LaunchTemplatePlacement? = nil,
                ramDiskId: String? = nil,
                securityGroupIds: ValueStringList? = nil,
                securityGroups: ValueStringList? = nil,
                tagSpecifications: LaunchTemplateTagSpecificationList? = nil,
                userData: String? = nil) {
        self.blockDeviceMappings = blockDeviceMappings
        self.capacityReservationSpecification = capacityReservationSpecification
        self.cpuOptions = cpuOptions
        self.creditSpecification = creditSpecification
        self.disableApiTermination = disableApiTermination
        self.ebsOptimized = ebsOptimized
        self.elasticGpuSpecifications = elasticGpuSpecifications
        self.elasticInferenceAccelerators = elasticInferenceAccelerators
        self.hibernationOptions = hibernationOptions
        self.iamInstanceProfile = iamInstanceProfile
        self.imageId = imageId
        self.instanceInitiatedShutdownBehavior = instanceInitiatedShutdownBehavior
        self.instanceMarketOptions = instanceMarketOptions
        self.instanceType = instanceType
        self.kernelId = kernelId
        self.keyName = keyName
        self.licenseSpecifications = licenseSpecifications
        self.monitoring = monitoring
        self.networkInterfaces = networkInterfaces
        self.placement = placement
        self.ramDiskId = ramDiskId
        self.securityGroupIds = securityGroupIds
        self.securityGroups = securityGroups
        self.tagSpecifications = tagSpecifications
        self.userData = userData
    }

    enum CodingKeys: String, CodingKey {
        case blockDeviceMappings = "blockDeviceMappingSet"
        case capacityReservationSpecification
        case cpuOptions
        case creditSpecification
        case disableApiTermination
        case ebsOptimized
        case elasticGpuSpecifications = "elasticGpuSpecificationSet"
        case elasticInferenceAccelerators = "elasticInferenceAcceleratorSet"
        case hibernationOptions
        case iamInstanceProfile
        case imageId
        case instanceInitiatedShutdownBehavior
        case instanceMarketOptions
        case instanceType
        case kernelId
        case keyName
        case licenseSpecifications = "licenseSet"
        case monitoring
        case networkInterfaces = "networkInterfaceSet"
        case placement
        case ramDiskId
        case securityGroupIds = "securityGroupIdSet"
        case securityGroups = "securityGroupSet"
        case tagSpecifications = "tagSpecificationSet"
        case userData
    }

    public func validate() throws {
        try capacityReservationSpecification?.validate()
        try cpuOptions?.validate()
        try creditSpecification?.validate()
        try hibernationOptions?.validate()
        try iamInstanceProfile?.validate()
        try instanceMarketOptions?.validate()
        try monitoring?.validate()
        try placement?.validate()
    }
}

public struct RestoreAddressToClassicRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var publicIp: String

    public init(dryRun: Boolean? = nil,
                publicIp: String) {
        self.dryRun = dryRun
        self.publicIp = publicIp
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case publicIp
    }

    public func validate() throws {
    }
}

public struct RestoreAddressToClassicResult: Codable, Equatable {
    public var publicIp: String?
    public var status: Status?

    public init(publicIp: String? = nil,
                status: Status? = nil) {
        self.publicIp = publicIp
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case publicIp
        case status
    }

    public func validate() throws {
    }
}

public struct RevokeClientVpnIngressRequest: Codable, Equatable {
    public var accessGroupId: String?
    public var clientVpnEndpointId: String
    public var dryRun: Boolean?
    public var revokeAllGroups: Boolean?
    public var targetNetworkCidr: String

    public init(accessGroupId: String? = nil,
                clientVpnEndpointId: String,
                dryRun: Boolean? = nil,
                revokeAllGroups: Boolean? = nil,
                targetNetworkCidr: String) {
        self.accessGroupId = accessGroupId
        self.clientVpnEndpointId = clientVpnEndpointId
        self.dryRun = dryRun
        self.revokeAllGroups = revokeAllGroups
        self.targetNetworkCidr = targetNetworkCidr
    }

    enum CodingKeys: String, CodingKey {
        case accessGroupId = "AccessGroupId"
        case clientVpnEndpointId = "ClientVpnEndpointId"
        case dryRun = "DryRun"
        case revokeAllGroups = "RevokeAllGroups"
        case targetNetworkCidr = "TargetNetworkCidr"
    }

    public func validate() throws {
    }
}

public struct RevokeClientVpnIngressResult: Codable, Equatable {
    public var status: ClientVpnAuthorizationRuleStatus?

    public init(status: ClientVpnAuthorizationRuleStatus? = nil) {
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case status
    }

    public func validate() throws {
        try status?.validate()
    }
}

public struct RevokeSecurityGroupEgressRequest: Codable, Equatable {
    public var cidrIp: String?
    public var dryRun: Boolean?
    public var fromPort: Integer?
    public var groupId: String
    public var ipPermissions: IpPermissionList?
    public var ipProtocol: String?
    public var sourceSecurityGroupName: String?
    public var sourceSecurityGroupOwnerId: String?
    public var toPort: Integer?

    public init(cidrIp: String? = nil,
                dryRun: Boolean? = nil,
                fromPort: Integer? = nil,
                groupId: String,
                ipPermissions: IpPermissionList? = nil,
                ipProtocol: String? = nil,
                sourceSecurityGroupName: String? = nil,
                sourceSecurityGroupOwnerId: String? = nil,
                toPort: Integer? = nil) {
        self.cidrIp = cidrIp
        self.dryRun = dryRun
        self.fromPort = fromPort
        self.groupId = groupId
        self.ipPermissions = ipPermissions
        self.ipProtocol = ipProtocol
        self.sourceSecurityGroupName = sourceSecurityGroupName
        self.sourceSecurityGroupOwnerId = sourceSecurityGroupOwnerId
        self.toPort = toPort
    }

    enum CodingKeys: String, CodingKey {
        case cidrIp
        case dryRun
        case fromPort
        case groupId
        case ipPermissions
        case ipProtocol
        case sourceSecurityGroupName
        case sourceSecurityGroupOwnerId
        case toPort
    }

    public func validate() throws {
    }
}

public struct RevokeSecurityGroupIngressRequest: Codable, Equatable {
    public var cidrIp: String?
    public var dryRun: Boolean?
    public var fromPort: Integer?
    public var groupId: String?
    public var groupName: String?
    public var ipPermissions: IpPermissionList?
    public var ipProtocol: String?
    public var sourceSecurityGroupName: String?
    public var sourceSecurityGroupOwnerId: String?
    public var toPort: Integer?

    public init(cidrIp: String? = nil,
                dryRun: Boolean? = nil,
                fromPort: Integer? = nil,
                groupId: String? = nil,
                groupName: String? = nil,
                ipPermissions: IpPermissionList? = nil,
                ipProtocol: String? = nil,
                sourceSecurityGroupName: String? = nil,
                sourceSecurityGroupOwnerId: String? = nil,
                toPort: Integer? = nil) {
        self.cidrIp = cidrIp
        self.dryRun = dryRun
        self.fromPort = fromPort
        self.groupId = groupId
        self.groupName = groupName
        self.ipPermissions = ipPermissions
        self.ipProtocol = ipProtocol
        self.sourceSecurityGroupName = sourceSecurityGroupName
        self.sourceSecurityGroupOwnerId = sourceSecurityGroupOwnerId
        self.toPort = toPort
    }

    enum CodingKeys: String, CodingKey {
        case cidrIp = "CidrIp"
        case dryRun
        case fromPort = "FromPort"
        case groupId = "GroupId"
        case groupName = "GroupName"
        case ipPermissions = "IpPermissions"
        case ipProtocol = "IpProtocol"
        case sourceSecurityGroupName = "SourceSecurityGroupName"
        case sourceSecurityGroupOwnerId = "SourceSecurityGroupOwnerId"
        case toPort = "ToPort"
    }

    public func validate() throws {
    }
}

public struct Route: Codable, Equatable {
    public var destinationCidrBlock: String?
    public var destinationIpv6CidrBlock: String?
    public var destinationPrefixListId: String?
    public var egressOnlyInternetGatewayId: String?
    public var gatewayId: String?
    public var instanceId: String?
    public var instanceOwnerId: String?
    public var natGatewayId: String?
    public var networkInterfaceId: String?
    public var origin: RouteOrigin?
    public var state: RouteState?
    public var transitGatewayId: String?
    public var vpcPeeringConnectionId: String?

    public init(destinationCidrBlock: String? = nil,
                destinationIpv6CidrBlock: String? = nil,
                destinationPrefixListId: String? = nil,
                egressOnlyInternetGatewayId: String? = nil,
                gatewayId: String? = nil,
                instanceId: String? = nil,
                instanceOwnerId: String? = nil,
                natGatewayId: String? = nil,
                networkInterfaceId: String? = nil,
                origin: RouteOrigin? = nil,
                state: RouteState? = nil,
                transitGatewayId: String? = nil,
                vpcPeeringConnectionId: String? = nil) {
        self.destinationCidrBlock = destinationCidrBlock
        self.destinationIpv6CidrBlock = destinationIpv6CidrBlock
        self.destinationPrefixListId = destinationPrefixListId
        self.egressOnlyInternetGatewayId = egressOnlyInternetGatewayId
        self.gatewayId = gatewayId
        self.instanceId = instanceId
        self.instanceOwnerId = instanceOwnerId
        self.natGatewayId = natGatewayId
        self.networkInterfaceId = networkInterfaceId
        self.origin = origin
        self.state = state
        self.transitGatewayId = transitGatewayId
        self.vpcPeeringConnectionId = vpcPeeringConnectionId
    }

    enum CodingKeys: String, CodingKey {
        case destinationCidrBlock
        case destinationIpv6CidrBlock
        case destinationPrefixListId
        case egressOnlyInternetGatewayId
        case gatewayId
        case instanceId
        case instanceOwnerId
        case natGatewayId
        case networkInterfaceId
        case origin
        case state
        case transitGatewayId
        case vpcPeeringConnectionId
    }

    public func validate() throws {
    }
}

public struct RouteTable: Codable, Equatable {
    public var associations: RouteTableAssociationList?
    public var ownerId: String?
    public var propagatingVgws: PropagatingVgwList?
    public var routeTableId: String?
    public var routes: RouteList?
    public var tags: TagList?
    public var vpcId: String?

    public init(associations: RouteTableAssociationList? = nil,
                ownerId: String? = nil,
                propagatingVgws: PropagatingVgwList? = nil,
                routeTableId: String? = nil,
                routes: RouteList? = nil,
                tags: TagList? = nil,
                vpcId: String? = nil) {
        self.associations = associations
        self.ownerId = ownerId
        self.propagatingVgws = propagatingVgws
        self.routeTableId = routeTableId
        self.routes = routes
        self.tags = tags
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case associations = "associationSet"
        case ownerId
        case propagatingVgws = "propagatingVgwSet"
        case routeTableId
        case routes = "routeSet"
        case tags = "tagSet"
        case vpcId
    }

    public func validate() throws {
    }
}

public struct RouteTableAssociation: Codable, Equatable {
    public var main: Boolean?
    public var routeTableAssociationId: String?
    public var routeTableId: String?
    public var subnetId: String?

    public init(main: Boolean? = nil,
                routeTableAssociationId: String? = nil,
                routeTableId: String? = nil,
                subnetId: String? = nil) {
        self.main = main
        self.routeTableAssociationId = routeTableAssociationId
        self.routeTableId = routeTableId
        self.subnetId = subnetId
    }

    enum CodingKeys: String, CodingKey {
        case main
        case routeTableAssociationId
        case routeTableId
        case subnetId
    }

    public func validate() throws {
    }
}

public struct RunInstancesMonitoringEnabled: Codable, Equatable {
    public var enabled: Boolean

    public init(enabled: Boolean) {
        self.enabled = enabled
    }

    enum CodingKeys: String, CodingKey {
        case enabled
    }

    public func validate() throws {
    }
}

public struct RunInstancesRequest: Codable, Equatable {
    public var additionalInfo: String?
    public var blockDeviceMappings: BlockDeviceMappingRequestList?
    public var capacityReservationSpecification: CapacityReservationSpecification?
    public var clientToken: String?
    public var cpuOptions: CpuOptionsRequest?
    public var creditSpecification: CreditSpecificationRequest?
    public var disableApiTermination: Boolean?
    public var dryRun: Boolean?
    public var ebsOptimized: Boolean?
    public var elasticGpuSpecification: ElasticGpuSpecifications?
    public var elasticInferenceAccelerators: ElasticInferenceAccelerators?
    public var hibernationOptions: HibernationOptionsRequest?
    public var iamInstanceProfile: IamInstanceProfileSpecification?
    public var imageId: String?
    public var instanceInitiatedShutdownBehavior: ShutdownBehavior?
    public var instanceMarketOptions: InstanceMarketOptionsRequest?
    public var instanceType: InstanceType?
    public var ipv6AddressCount: Integer?
    public var ipv6Addresses: InstanceIpv6AddressList?
    public var kernelId: String?
    public var keyName: String?
    public var launchTemplate: LaunchTemplateSpecification?
    public var licenseSpecifications: LicenseSpecificationListRequest?
    public var maxCount: Integer
    public var minCount: Integer
    public var monitoring: RunInstancesMonitoringEnabled?
    public var networkInterfaces: InstanceNetworkInterfaceSpecificationList?
    public var placement: Placement?
    public var privateIpAddress: String?
    public var ramdiskId: String?
    public var securityGroupIds: SecurityGroupIdStringList?
    public var securityGroups: SecurityGroupStringList?
    public var subnetId: String?
    public var tagSpecifications: TagSpecificationList?
    public var userData: String?

    public init(additionalInfo: String? = nil,
                blockDeviceMappings: BlockDeviceMappingRequestList? = nil,
                capacityReservationSpecification: CapacityReservationSpecification? = nil,
                clientToken: String? = nil,
                cpuOptions: CpuOptionsRequest? = nil,
                creditSpecification: CreditSpecificationRequest? = nil,
                disableApiTermination: Boolean? = nil,
                dryRun: Boolean? = nil,
                ebsOptimized: Boolean? = nil,
                elasticGpuSpecification: ElasticGpuSpecifications? = nil,
                elasticInferenceAccelerators: ElasticInferenceAccelerators? = nil,
                hibernationOptions: HibernationOptionsRequest? = nil,
                iamInstanceProfile: IamInstanceProfileSpecification? = nil,
                imageId: String? = nil,
                instanceInitiatedShutdownBehavior: ShutdownBehavior? = nil,
                instanceMarketOptions: InstanceMarketOptionsRequest? = nil,
                instanceType: InstanceType? = nil,
                ipv6AddressCount: Integer? = nil,
                ipv6Addresses: InstanceIpv6AddressList? = nil,
                kernelId: String? = nil,
                keyName: String? = nil,
                launchTemplate: LaunchTemplateSpecification? = nil,
                licenseSpecifications: LicenseSpecificationListRequest? = nil,
                maxCount: Integer,
                minCount: Integer,
                monitoring: RunInstancesMonitoringEnabled? = nil,
                networkInterfaces: InstanceNetworkInterfaceSpecificationList? = nil,
                placement: Placement? = nil,
                privateIpAddress: String? = nil,
                ramdiskId: String? = nil,
                securityGroupIds: SecurityGroupIdStringList? = nil,
                securityGroups: SecurityGroupStringList? = nil,
                subnetId: String? = nil,
                tagSpecifications: TagSpecificationList? = nil,
                userData: String? = nil) {
        self.additionalInfo = additionalInfo
        self.blockDeviceMappings = blockDeviceMappings
        self.capacityReservationSpecification = capacityReservationSpecification
        self.clientToken = clientToken
        self.cpuOptions = cpuOptions
        self.creditSpecification = creditSpecification
        self.disableApiTermination = disableApiTermination
        self.dryRun = dryRun
        self.ebsOptimized = ebsOptimized
        self.elasticGpuSpecification = elasticGpuSpecification
        self.elasticInferenceAccelerators = elasticInferenceAccelerators
        self.hibernationOptions = hibernationOptions
        self.iamInstanceProfile = iamInstanceProfile
        self.imageId = imageId
        self.instanceInitiatedShutdownBehavior = instanceInitiatedShutdownBehavior
        self.instanceMarketOptions = instanceMarketOptions
        self.instanceType = instanceType
        self.ipv6AddressCount = ipv6AddressCount
        self.ipv6Addresses = ipv6Addresses
        self.kernelId = kernelId
        self.keyName = keyName
        self.launchTemplate = launchTemplate
        self.licenseSpecifications = licenseSpecifications
        self.maxCount = maxCount
        self.minCount = minCount
        self.monitoring = monitoring
        self.networkInterfaces = networkInterfaces
        self.placement = placement
        self.privateIpAddress = privateIpAddress
        self.ramdiskId = ramdiskId
        self.securityGroupIds = securityGroupIds
        self.securityGroups = securityGroups
        self.subnetId = subnetId
        self.tagSpecifications = tagSpecifications
        self.userData = userData
    }

    enum CodingKeys: String, CodingKey {
        case additionalInfo
        case blockDeviceMappings = "BlockDeviceMapping"
        case capacityReservationSpecification = "CapacityReservationSpecification"
        case clientToken
        case cpuOptions = "CpuOptions"
        case creditSpecification = "CreditSpecification"
        case disableApiTermination
        case dryRun
        case ebsOptimized
        case elasticGpuSpecification = "ElasticGpuSpecification"
        case elasticInferenceAccelerators = "ElasticInferenceAccelerator"
        case hibernationOptions = "HibernationOptions"
        case iamInstanceProfile
        case imageId = "ImageId"
        case instanceInitiatedShutdownBehavior
        case instanceMarketOptions = "InstanceMarketOptions"
        case instanceType = "InstanceType"
        case ipv6AddressCount = "Ipv6AddressCount"
        case ipv6Addresses = "Ipv6Address"
        case kernelId = "KernelId"
        case keyName = "KeyName"
        case launchTemplate = "LaunchTemplate"
        case licenseSpecifications = "LicenseSpecification"
        case maxCount = "MaxCount"
        case minCount = "MinCount"
        case monitoring = "Monitoring"
        case networkInterfaces = "networkInterface"
        case placement = "Placement"
        case privateIpAddress
        case ramdiskId = "RamdiskId"
        case securityGroupIds = "SecurityGroupId"
        case securityGroups = "SecurityGroup"
        case subnetId = "SubnetId"
        case tagSpecifications = "TagSpecification"
        case userData = "UserData"
    }

    public func validate() throws {
        try capacityReservationSpecification?.validate()
        try cpuOptions?.validate()
        try creditSpecification?.validate()
        try hibernationOptions?.validate()
        try iamInstanceProfile?.validate()
        try instanceMarketOptions?.validate()
        try launchTemplate?.validate()
        try monitoring?.validate()
        try placement?.validate()
    }
}

public struct RunScheduledInstancesRequest: Codable, Equatable {
    public var clientToken: String?
    public var dryRun: Boolean?
    public var instanceCount: Integer?
    public var launchSpecification: ScheduledInstancesLaunchSpecification
    public var scheduledInstanceId: String

    public init(clientToken: String? = nil,
                dryRun: Boolean? = nil,
                instanceCount: Integer? = nil,
                launchSpecification: ScheduledInstancesLaunchSpecification,
                scheduledInstanceId: String) {
        self.clientToken = clientToken
        self.dryRun = dryRun
        self.instanceCount = instanceCount
        self.launchSpecification = launchSpecification
        self.scheduledInstanceId = scheduledInstanceId
    }

    enum CodingKeys: String, CodingKey {
        case clientToken = "ClientToken"
        case dryRun = "DryRun"
        case instanceCount = "InstanceCount"
        case launchSpecification = "LaunchSpecification"
        case scheduledInstanceId = "ScheduledInstanceId"
    }

    public func validate() throws {
        try launchSpecification.validate()
    }
}

public struct RunScheduledInstancesResult: Codable, Equatable {
    public var instanceIdSet: InstanceIdSet?

    public init(instanceIdSet: InstanceIdSet? = nil) {
        self.instanceIdSet = instanceIdSet
    }

    enum CodingKeys: String, CodingKey {
        case instanceIdSet
    }

    public func validate() throws {
    }
}

public struct S3Storage: Codable, Equatable {
    public var aWSAccessKeyId: String?
    public var bucket: String?
    public var prefix: String?
    public var uploadPolicy: Blob?
    public var uploadPolicySignature: String?

    public init(aWSAccessKeyId: String? = nil,
                bucket: String? = nil,
                prefix: String? = nil,
                uploadPolicy: Blob? = nil,
                uploadPolicySignature: String? = nil) {
        self.aWSAccessKeyId = aWSAccessKeyId
        self.bucket = bucket
        self.prefix = prefix
        self.uploadPolicy = uploadPolicy
        self.uploadPolicySignature = uploadPolicySignature
    }

    enum CodingKeys: String, CodingKey {
        case aWSAccessKeyId = "AWSAccessKeyId"
        case bucket
        case prefix
        case uploadPolicy
        case uploadPolicySignature
    }

    public func validate() throws {
    }
}

public struct ScheduledInstance: Codable, Equatable {
    public var availabilityZone: String?
    public var createDate: DateTime?
    public var hourlyPrice: String?
    public var instanceCount: Integer?
    public var instanceType: String?
    public var networkPlatform: String?
    public var nextSlotStartTime: DateTime?
    public var platform: String?
    public var previousSlotEndTime: DateTime?
    public var recurrence: ScheduledInstanceRecurrence?
    public var scheduledInstanceId: String?
    public var slotDurationInHours: Integer?
    public var termEndDate: DateTime?
    public var termStartDate: DateTime?
    public var totalScheduledInstanceHours: Integer?

    public init(availabilityZone: String? = nil,
                createDate: DateTime? = nil,
                hourlyPrice: String? = nil,
                instanceCount: Integer? = nil,
                instanceType: String? = nil,
                networkPlatform: String? = nil,
                nextSlotStartTime: DateTime? = nil,
                platform: String? = nil,
                previousSlotEndTime: DateTime? = nil,
                recurrence: ScheduledInstanceRecurrence? = nil,
                scheduledInstanceId: String? = nil,
                slotDurationInHours: Integer? = nil,
                termEndDate: DateTime? = nil,
                termStartDate: DateTime? = nil,
                totalScheduledInstanceHours: Integer? = nil) {
        self.availabilityZone = availabilityZone
        self.createDate = createDate
        self.hourlyPrice = hourlyPrice
        self.instanceCount = instanceCount
        self.instanceType = instanceType
        self.networkPlatform = networkPlatform
        self.nextSlotStartTime = nextSlotStartTime
        self.platform = platform
        self.previousSlotEndTime = previousSlotEndTime
        self.recurrence = recurrence
        self.scheduledInstanceId = scheduledInstanceId
        self.slotDurationInHours = slotDurationInHours
        self.termEndDate = termEndDate
        self.termStartDate = termStartDate
        self.totalScheduledInstanceHours = totalScheduledInstanceHours
    }

    enum CodingKeys: String, CodingKey {
        case availabilityZone
        case createDate
        case hourlyPrice
        case instanceCount
        case instanceType
        case networkPlatform
        case nextSlotStartTime
        case platform
        case previousSlotEndTime
        case recurrence
        case scheduledInstanceId
        case slotDurationInHours
        case termEndDate
        case termStartDate
        case totalScheduledInstanceHours
    }

    public func validate() throws {
        try recurrence?.validate()
    }
}

public struct ScheduledInstanceAvailability: Codable, Equatable {
    public var availabilityZone: String?
    public var availableInstanceCount: Integer?
    public var firstSlotStartTime: DateTime?
    public var hourlyPrice: String?
    public var instanceType: String?
    public var maxTermDurationInDays: Integer?
    public var minTermDurationInDays: Integer?
    public var networkPlatform: String?
    public var platform: String?
    public var purchaseToken: String?
    public var recurrence: ScheduledInstanceRecurrence?
    public var slotDurationInHours: Integer?
    public var totalScheduledInstanceHours: Integer?

    public init(availabilityZone: String? = nil,
                availableInstanceCount: Integer? = nil,
                firstSlotStartTime: DateTime? = nil,
                hourlyPrice: String? = nil,
                instanceType: String? = nil,
                maxTermDurationInDays: Integer? = nil,
                minTermDurationInDays: Integer? = nil,
                networkPlatform: String? = nil,
                platform: String? = nil,
                purchaseToken: String? = nil,
                recurrence: ScheduledInstanceRecurrence? = nil,
                slotDurationInHours: Integer? = nil,
                totalScheduledInstanceHours: Integer? = nil) {
        self.availabilityZone = availabilityZone
        self.availableInstanceCount = availableInstanceCount
        self.firstSlotStartTime = firstSlotStartTime
        self.hourlyPrice = hourlyPrice
        self.instanceType = instanceType
        self.maxTermDurationInDays = maxTermDurationInDays
        self.minTermDurationInDays = minTermDurationInDays
        self.networkPlatform = networkPlatform
        self.platform = platform
        self.purchaseToken = purchaseToken
        self.recurrence = recurrence
        self.slotDurationInHours = slotDurationInHours
        self.totalScheduledInstanceHours = totalScheduledInstanceHours
    }

    enum CodingKeys: String, CodingKey {
        case availabilityZone
        case availableInstanceCount
        case firstSlotStartTime
        case hourlyPrice
        case instanceType
        case maxTermDurationInDays
        case minTermDurationInDays
        case networkPlatform
        case platform
        case purchaseToken
        case recurrence
        case slotDurationInHours
        case totalScheduledInstanceHours
    }

    public func validate() throws {
        try recurrence?.validate()
    }
}

public struct ScheduledInstanceRecurrence: Codable, Equatable {
    public var frequency: String?
    public var interval: Integer?
    public var occurrenceDaySet: OccurrenceDaySet?
    public var occurrenceRelativeToEnd: Boolean?
    public var occurrenceUnit: String?

    public init(frequency: String? = nil,
                interval: Integer? = nil,
                occurrenceDaySet: OccurrenceDaySet? = nil,
                occurrenceRelativeToEnd: Boolean? = nil,
                occurrenceUnit: String? = nil) {
        self.frequency = frequency
        self.interval = interval
        self.occurrenceDaySet = occurrenceDaySet
        self.occurrenceRelativeToEnd = occurrenceRelativeToEnd
        self.occurrenceUnit = occurrenceUnit
    }

    enum CodingKeys: String, CodingKey {
        case frequency
        case interval
        case occurrenceDaySet
        case occurrenceRelativeToEnd
        case occurrenceUnit
    }

    public func validate() throws {
    }
}

public struct ScheduledInstanceRecurrenceRequest: Codable, Equatable {
    public var frequency: String?
    public var interval: Integer?
    public var occurrenceDays: OccurrenceDayRequestSet?
    public var occurrenceRelativeToEnd: Boolean?
    public var occurrenceUnit: String?

    public init(frequency: String? = nil,
                interval: Integer? = nil,
                occurrenceDays: OccurrenceDayRequestSet? = nil,
                occurrenceRelativeToEnd: Boolean? = nil,
                occurrenceUnit: String? = nil) {
        self.frequency = frequency
        self.interval = interval
        self.occurrenceDays = occurrenceDays
        self.occurrenceRelativeToEnd = occurrenceRelativeToEnd
        self.occurrenceUnit = occurrenceUnit
    }

    enum CodingKeys: String, CodingKey {
        case frequency = "Frequency"
        case interval = "Interval"
        case occurrenceDays = "OccurrenceDay"
        case occurrenceRelativeToEnd = "OccurrenceRelativeToEnd"
        case occurrenceUnit = "OccurrenceUnit"
    }

    public func validate() throws {
    }
}

public struct ScheduledInstancesBlockDeviceMapping: Codable, Equatable {
    public var deviceName: String?
    public var ebs: ScheduledInstancesEbs?
    public var noDevice: String?
    public var virtualName: String?

    public init(deviceName: String? = nil,
                ebs: ScheduledInstancesEbs? = nil,
                noDevice: String? = nil,
                virtualName: String? = nil) {
        self.deviceName = deviceName
        self.ebs = ebs
        self.noDevice = noDevice
        self.virtualName = virtualName
    }

    enum CodingKeys: String, CodingKey {
        case deviceName = "DeviceName"
        case ebs = "Ebs"
        case noDevice = "NoDevice"
        case virtualName = "VirtualName"
    }

    public func validate() throws {
        try ebs?.validate()
    }
}

public struct ScheduledInstancesEbs: Codable, Equatable {
    public var deleteOnTermination: Boolean?
    public var encrypted: Boolean?
    public var iops: Integer?
    public var snapshotId: String?
    public var volumeSize: Integer?
    public var volumeType: String?

    public init(deleteOnTermination: Boolean? = nil,
                encrypted: Boolean? = nil,
                iops: Integer? = nil,
                snapshotId: String? = nil,
                volumeSize: Integer? = nil,
                volumeType: String? = nil) {
        self.deleteOnTermination = deleteOnTermination
        self.encrypted = encrypted
        self.iops = iops
        self.snapshotId = snapshotId
        self.volumeSize = volumeSize
        self.volumeType = volumeType
    }

    enum CodingKeys: String, CodingKey {
        case deleteOnTermination = "DeleteOnTermination"
        case encrypted = "Encrypted"
        case iops = "Iops"
        case snapshotId = "SnapshotId"
        case volumeSize = "VolumeSize"
        case volumeType = "VolumeType"
    }

    public func validate() throws {
    }
}

public struct ScheduledInstancesIamInstanceProfile: Codable, Equatable {
    public var arn: String?
    public var name: String?

    public init(arn: String? = nil,
                name: String? = nil) {
        self.arn = arn
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case name = "Name"
    }

    public func validate() throws {
    }
}

public struct ScheduledInstancesIpv6Address: Codable, Equatable {
    public var ipv6Address: Ipv6Address?

    public init(ipv6Address: Ipv6Address? = nil) {
        self.ipv6Address = ipv6Address
    }

    enum CodingKeys: String, CodingKey {
        case ipv6Address = "Ipv6Address"
    }

    public func validate() throws {
    }
}

public struct ScheduledInstancesLaunchSpecification: Codable, Equatable {
    public var blockDeviceMappings: ScheduledInstancesBlockDeviceMappingSet?
    public var ebsOptimized: Boolean?
    public var iamInstanceProfile: ScheduledInstancesIamInstanceProfile?
    public var imageId: String
    public var instanceType: String?
    public var kernelId: String?
    public var keyName: String?
    public var monitoring: ScheduledInstancesMonitoring?
    public var networkInterfaces: ScheduledInstancesNetworkInterfaceSet?
    public var placement: ScheduledInstancesPlacement?
    public var ramdiskId: String?
    public var securityGroupIds: ScheduledInstancesSecurityGroupIdSet?
    public var subnetId: String?
    public var userData: String?

    public init(blockDeviceMappings: ScheduledInstancesBlockDeviceMappingSet? = nil,
                ebsOptimized: Boolean? = nil,
                iamInstanceProfile: ScheduledInstancesIamInstanceProfile? = nil,
                imageId: String,
                instanceType: String? = nil,
                kernelId: String? = nil,
                keyName: String? = nil,
                monitoring: ScheduledInstancesMonitoring? = nil,
                networkInterfaces: ScheduledInstancesNetworkInterfaceSet? = nil,
                placement: ScheduledInstancesPlacement? = nil,
                ramdiskId: String? = nil,
                securityGroupIds: ScheduledInstancesSecurityGroupIdSet? = nil,
                subnetId: String? = nil,
                userData: String? = nil) {
        self.blockDeviceMappings = blockDeviceMappings
        self.ebsOptimized = ebsOptimized
        self.iamInstanceProfile = iamInstanceProfile
        self.imageId = imageId
        self.instanceType = instanceType
        self.kernelId = kernelId
        self.keyName = keyName
        self.monitoring = monitoring
        self.networkInterfaces = networkInterfaces
        self.placement = placement
        self.ramdiskId = ramdiskId
        self.securityGroupIds = securityGroupIds
        self.subnetId = subnetId
        self.userData = userData
    }

    enum CodingKeys: String, CodingKey {
        case blockDeviceMappings = "BlockDeviceMapping"
        case ebsOptimized = "EbsOptimized"
        case iamInstanceProfile = "IamInstanceProfile"
        case imageId = "ImageId"
        case instanceType = "InstanceType"
        case kernelId = "KernelId"
        case keyName = "KeyName"
        case monitoring = "Monitoring"
        case networkInterfaces = "NetworkInterface"
        case placement = "Placement"
        case ramdiskId = "RamdiskId"
        case securityGroupIds = "SecurityGroupId"
        case subnetId = "SubnetId"
        case userData = "UserData"
    }

    public func validate() throws {
        try iamInstanceProfile?.validate()
        try monitoring?.validate()
        try placement?.validate()
    }
}

public struct ScheduledInstancesMonitoring: Codable, Equatable {
    public var enabled: Boolean?

    public init(enabled: Boolean? = nil) {
        self.enabled = enabled
    }

    enum CodingKeys: String, CodingKey {
        case enabled = "Enabled"
    }

    public func validate() throws {
    }
}

public struct ScheduledInstancesNetworkInterface: Codable, Equatable {
    public var associatePublicIpAddress: Boolean?
    public var deleteOnTermination: Boolean?
    public var description: String?
    public var deviceIndex: Integer?
    public var groups: ScheduledInstancesSecurityGroupIdSet?
    public var ipv6AddressCount: Integer?
    public var ipv6Addresses: ScheduledInstancesIpv6AddressList?
    public var networkInterfaceId: String?
    public var privateIpAddress: String?
    public var privateIpAddressConfigs: PrivateIpAddressConfigSet?
    public var secondaryPrivateIpAddressCount: Integer?
    public var subnetId: String?

    public init(associatePublicIpAddress: Boolean? = nil,
                deleteOnTermination: Boolean? = nil,
                description: String? = nil,
                deviceIndex: Integer? = nil,
                groups: ScheduledInstancesSecurityGroupIdSet? = nil,
                ipv6AddressCount: Integer? = nil,
                ipv6Addresses: ScheduledInstancesIpv6AddressList? = nil,
                networkInterfaceId: String? = nil,
                privateIpAddress: String? = nil,
                privateIpAddressConfigs: PrivateIpAddressConfigSet? = nil,
                secondaryPrivateIpAddressCount: Integer? = nil,
                subnetId: String? = nil) {
        self.associatePublicIpAddress = associatePublicIpAddress
        self.deleteOnTermination = deleteOnTermination
        self.description = description
        self.deviceIndex = deviceIndex
        self.groups = groups
        self.ipv6AddressCount = ipv6AddressCount
        self.ipv6Addresses = ipv6Addresses
        self.networkInterfaceId = networkInterfaceId
        self.privateIpAddress = privateIpAddress
        self.privateIpAddressConfigs = privateIpAddressConfigs
        self.secondaryPrivateIpAddressCount = secondaryPrivateIpAddressCount
        self.subnetId = subnetId
    }

    enum CodingKeys: String, CodingKey {
        case associatePublicIpAddress = "AssociatePublicIpAddress"
        case deleteOnTermination = "DeleteOnTermination"
        case description = "Description"
        case deviceIndex = "DeviceIndex"
        case groups = "Group"
        case ipv6AddressCount = "Ipv6AddressCount"
        case ipv6Addresses = "Ipv6Address"
        case networkInterfaceId = "NetworkInterfaceId"
        case privateIpAddress = "PrivateIpAddress"
        case privateIpAddressConfigs = "PrivateIpAddressConfig"
        case secondaryPrivateIpAddressCount = "SecondaryPrivateIpAddressCount"
        case subnetId = "SubnetId"
    }

    public func validate() throws {
    }
}

public struct ScheduledInstancesPlacement: Codable, Equatable {
    public var availabilityZone: String?
    public var groupName: String?

    public init(availabilityZone: String? = nil,
                groupName: String? = nil) {
        self.availabilityZone = availabilityZone
        self.groupName = groupName
    }

    enum CodingKeys: String, CodingKey {
        case availabilityZone = "AvailabilityZone"
        case groupName = "GroupName"
    }

    public func validate() throws {
    }
}

public struct ScheduledInstancesPrivateIpAddressConfig: Codable, Equatable {
    public var primary: Boolean?
    public var privateIpAddress: String?

    public init(primary: Boolean? = nil,
                privateIpAddress: String? = nil) {
        self.primary = primary
        self.privateIpAddress = privateIpAddress
    }

    enum CodingKeys: String, CodingKey {
        case primary = "Primary"
        case privateIpAddress = "PrivateIpAddress"
    }

    public func validate() throws {
    }
}

public struct SearchTransitGatewayRoutesRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var filters: FilterList
    public var maxResults: TransitGatewayMaxResults?
    public var transitGatewayRouteTableId: String

    public init(dryRun: Boolean? = nil,
                filters: FilterList,
                maxResults: TransitGatewayMaxResults? = nil,
                transitGatewayRouteTableId: String) {
        self.dryRun = dryRun
        self.filters = filters
        self.maxResults = maxResults
        self.transitGatewayRouteTableId = transitGatewayRouteTableId
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case filters = "Filter"
        case maxResults = "MaxResults"
        case transitGatewayRouteTableId = "TransitGatewayRouteTableId"
    }

    public func validate() throws {
        try maxResults?.validateAsTransitGatewayMaxResults()
    }
}

public struct SearchTransitGatewayRoutesResult: Codable, Equatable {
    public var additionalRoutesAvailable: Boolean?
    public var routes: TransitGatewayRouteList?

    public init(additionalRoutesAvailable: Boolean? = nil,
                routes: TransitGatewayRouteList? = nil) {
        self.additionalRoutesAvailable = additionalRoutesAvailable
        self.routes = routes
    }

    enum CodingKeys: String, CodingKey {
        case additionalRoutesAvailable
        case routes = "routeSet"
    }

    public func validate() throws {
    }
}

public struct SecurityGroup: Codable, Equatable {
    public var description: String?
    public var groupId: String?
    public var groupName: String?
    public var ipPermissions: IpPermissionList?
    public var ipPermissionsEgress: IpPermissionList?
    public var ownerId: String?
    public var tags: TagList?
    public var vpcId: String?

    public init(description: String? = nil,
                groupId: String? = nil,
                groupName: String? = nil,
                ipPermissions: IpPermissionList? = nil,
                ipPermissionsEgress: IpPermissionList? = nil,
                ownerId: String? = nil,
                tags: TagList? = nil,
                vpcId: String? = nil) {
        self.description = description
        self.groupId = groupId
        self.groupName = groupName
        self.ipPermissions = ipPermissions
        self.ipPermissionsEgress = ipPermissionsEgress
        self.ownerId = ownerId
        self.tags = tags
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case description = "groupDescription"
        case groupId
        case groupName
        case ipPermissions
        case ipPermissionsEgress
        case ownerId
        case tags = "tagSet"
        case vpcId
    }

    public func validate() throws {
    }
}

public struct SecurityGroupIdentifier: Codable, Equatable {
    public var groupId: String?
    public var groupName: String?

    public init(groupId: String? = nil,
                groupName: String? = nil) {
        self.groupId = groupId
        self.groupName = groupName
    }

    enum CodingKeys: String, CodingKey {
        case groupId
        case groupName
    }

    public func validate() throws {
    }
}

public struct SecurityGroupReference: Codable, Equatable {
    public var groupId: String?
    public var referencingVpcId: String?
    public var vpcPeeringConnectionId: String?

    public init(groupId: String? = nil,
                referencingVpcId: String? = nil,
                vpcPeeringConnectionId: String? = nil) {
        self.groupId = groupId
        self.referencingVpcId = referencingVpcId
        self.vpcPeeringConnectionId = vpcPeeringConnectionId
    }

    enum CodingKeys: String, CodingKey {
        case groupId
        case referencingVpcId
        case vpcPeeringConnectionId
    }

    public func validate() throws {
    }
}

public struct ServiceConfiguration: Codable, Equatable {
    public var acceptanceRequired: Boolean?
    public var availabilityZones: ValueStringList?
    public var baseEndpointDnsNames: ValueStringList?
    public var managesVpcEndpoints: Boolean?
    public var networkLoadBalancerArns: ValueStringList?
    public var privateDnsName: String?
    public var serviceId: String?
    public var serviceName: String?
    public var serviceState: ServiceState?
    public var serviceType: ServiceTypeDetailSet?
    public var tags: TagList?

    public init(acceptanceRequired: Boolean? = nil,
                availabilityZones: ValueStringList? = nil,
                baseEndpointDnsNames: ValueStringList? = nil,
                managesVpcEndpoints: Boolean? = nil,
                networkLoadBalancerArns: ValueStringList? = nil,
                privateDnsName: String? = nil,
                serviceId: String? = nil,
                serviceName: String? = nil,
                serviceState: ServiceState? = nil,
                serviceType: ServiceTypeDetailSet? = nil,
                tags: TagList? = nil) {
        self.acceptanceRequired = acceptanceRequired
        self.availabilityZones = availabilityZones
        self.baseEndpointDnsNames = baseEndpointDnsNames
        self.managesVpcEndpoints = managesVpcEndpoints
        self.networkLoadBalancerArns = networkLoadBalancerArns
        self.privateDnsName = privateDnsName
        self.serviceId = serviceId
        self.serviceName = serviceName
        self.serviceState = serviceState
        self.serviceType = serviceType
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case acceptanceRequired
        case availabilityZones = "availabilityZoneSet"
        case baseEndpointDnsNames = "baseEndpointDnsNameSet"
        case managesVpcEndpoints
        case networkLoadBalancerArns = "networkLoadBalancerArnSet"
        case privateDnsName
        case serviceId
        case serviceName
        case serviceState
        case serviceType
        case tags = "tagSet"
    }

    public func validate() throws {
    }
}

public struct ServiceDetail: Codable, Equatable {
    public var acceptanceRequired: Boolean?
    public var availabilityZones: ValueStringList?
    public var baseEndpointDnsNames: ValueStringList?
    public var managesVpcEndpoints: Boolean?
    public var owner: String?
    public var privateDnsName: String?
    public var serviceId: String?
    public var serviceName: String?
    public var serviceType: ServiceTypeDetailSet?
    public var tags: TagList?
    public var vpcEndpointPolicySupported: Boolean?

    public init(acceptanceRequired: Boolean? = nil,
                availabilityZones: ValueStringList? = nil,
                baseEndpointDnsNames: ValueStringList? = nil,
                managesVpcEndpoints: Boolean? = nil,
                owner: String? = nil,
                privateDnsName: String? = nil,
                serviceId: String? = nil,
                serviceName: String? = nil,
                serviceType: ServiceTypeDetailSet? = nil,
                tags: TagList? = nil,
                vpcEndpointPolicySupported: Boolean? = nil) {
        self.acceptanceRequired = acceptanceRequired
        self.availabilityZones = availabilityZones
        self.baseEndpointDnsNames = baseEndpointDnsNames
        self.managesVpcEndpoints = managesVpcEndpoints
        self.owner = owner
        self.privateDnsName = privateDnsName
        self.serviceId = serviceId
        self.serviceName = serviceName
        self.serviceType = serviceType
        self.tags = tags
        self.vpcEndpointPolicySupported = vpcEndpointPolicySupported
    }

    enum CodingKeys: String, CodingKey {
        case acceptanceRequired
        case availabilityZones = "availabilityZoneSet"
        case baseEndpointDnsNames = "baseEndpointDnsNameSet"
        case managesVpcEndpoints
        case owner
        case privateDnsName
        case serviceId
        case serviceName
        case serviceType
        case tags = "tagSet"
        case vpcEndpointPolicySupported
    }

    public func validate() throws {
    }
}

public struct ServiceTypeDetail: Codable, Equatable {
    public var serviceType: ServiceType?

    public init(serviceType: ServiceType? = nil) {
        self.serviceType = serviceType
    }

    enum CodingKeys: String, CodingKey {
        case serviceType
    }

    public func validate() throws {
    }
}

public struct SlotDateTimeRangeRequest: Codable, Equatable {
    public var earliestTime: DateTime
    public var latestTime: DateTime

    public init(earliestTime: DateTime,
                latestTime: DateTime) {
        self.earliestTime = earliestTime
        self.latestTime = latestTime
    }

    enum CodingKeys: String, CodingKey {
        case earliestTime = "EarliestTime"
        case latestTime = "LatestTime"
    }

    public func validate() throws {
    }
}

public struct SlotStartTimeRangeRequest: Codable, Equatable {
    public var earliestTime: DateTime?
    public var latestTime: DateTime?

    public init(earliestTime: DateTime? = nil,
                latestTime: DateTime? = nil) {
        self.earliestTime = earliestTime
        self.latestTime = latestTime
    }

    enum CodingKeys: String, CodingKey {
        case earliestTime = "EarliestTime"
        case latestTime = "LatestTime"
    }

    public func validate() throws {
    }
}

public struct Snapshot: Codable, Equatable {
    public var dataEncryptionKeyId: String?
    public var description: String?
    public var encrypted: Boolean?
    public var kmsKeyId: String?
    public var ownerAlias: String?
    public var ownerId: String?
    public var progress: String?
    public var snapshotId: String?
    public var startTime: DateTime?
    public var state: SnapshotState?
    public var stateMessage: String?
    public var tags: TagList?
    public var volumeId: String?
    public var volumeSize: Integer?

    public init(dataEncryptionKeyId: String? = nil,
                description: String? = nil,
                encrypted: Boolean? = nil,
                kmsKeyId: String? = nil,
                ownerAlias: String? = nil,
                ownerId: String? = nil,
                progress: String? = nil,
                snapshotId: String? = nil,
                startTime: DateTime? = nil,
                state: SnapshotState? = nil,
                stateMessage: String? = nil,
                tags: TagList? = nil,
                volumeId: String? = nil,
                volumeSize: Integer? = nil) {
        self.dataEncryptionKeyId = dataEncryptionKeyId
        self.description = description
        self.encrypted = encrypted
        self.kmsKeyId = kmsKeyId
        self.ownerAlias = ownerAlias
        self.ownerId = ownerId
        self.progress = progress
        self.snapshotId = snapshotId
        self.startTime = startTime
        self.state = state
        self.stateMessage = stateMessage
        self.tags = tags
        self.volumeId = volumeId
        self.volumeSize = volumeSize
    }

    enum CodingKeys: String, CodingKey {
        case dataEncryptionKeyId
        case description
        case encrypted
        case kmsKeyId
        case ownerAlias
        case ownerId
        case progress
        case snapshotId
        case startTime
        case state = "status"
        case stateMessage = "statusMessage"
        case tags = "tagSet"
        case volumeId
        case volumeSize
    }

    public func validate() throws {
    }
}

public struct SnapshotDetail: Codable, Equatable {
    public var description: String?
    public var deviceName: String?
    public var diskImageSize: Double?
    public var format: String?
    public var progress: String?
    public var snapshotId: String?
    public var status: String?
    public var statusMessage: String?
    public var url: String?
    public var userBucket: UserBucketDetails?

    public init(description: String? = nil,
                deviceName: String? = nil,
                diskImageSize: Double? = nil,
                format: String? = nil,
                progress: String? = nil,
                snapshotId: String? = nil,
                status: String? = nil,
                statusMessage: String? = nil,
                url: String? = nil,
                userBucket: UserBucketDetails? = nil) {
        self.description = description
        self.deviceName = deviceName
        self.diskImageSize = diskImageSize
        self.format = format
        self.progress = progress
        self.snapshotId = snapshotId
        self.status = status
        self.statusMessage = statusMessage
        self.url = url
        self.userBucket = userBucket
    }

    enum CodingKeys: String, CodingKey {
        case description
        case deviceName
        case diskImageSize
        case format
        case progress
        case snapshotId
        case status
        case statusMessage
        case url
        case userBucket
    }

    public func validate() throws {
        try userBucket?.validate()
    }
}

public struct SnapshotDiskContainer: Codable, Equatable {
    public var description: String?
    public var format: String?
    public var url: String?
    public var userBucket: UserBucket?

    public init(description: String? = nil,
                format: String? = nil,
                url: String? = nil,
                userBucket: UserBucket? = nil) {
        self.description = description
        self.format = format
        self.url = url
        self.userBucket = userBucket
    }

    enum CodingKeys: String, CodingKey {
        case description = "Description"
        case format = "Format"
        case url = "Url"
        case userBucket = "UserBucket"
    }

    public func validate() throws {
        try userBucket?.validate()
    }
}

public struct SnapshotInfo: Codable, Equatable {
    public var description: String?
    public var encrypted: Boolean?
    public var ownerId: String?
    public var progress: String?
    public var snapshotId: String?
    public var startTime: MillisecondDateTime?
    public var state: SnapshotState?
    public var tags: TagList?
    public var volumeId: String?
    public var volumeSize: Integer?

    public init(description: String? = nil,
                encrypted: Boolean? = nil,
                ownerId: String? = nil,
                progress: String? = nil,
                snapshotId: String? = nil,
                startTime: MillisecondDateTime? = nil,
                state: SnapshotState? = nil,
                tags: TagList? = nil,
                volumeId: String? = nil,
                volumeSize: Integer? = nil) {
        self.description = description
        self.encrypted = encrypted
        self.ownerId = ownerId
        self.progress = progress
        self.snapshotId = snapshotId
        self.startTime = startTime
        self.state = state
        self.tags = tags
        self.volumeId = volumeId
        self.volumeSize = volumeSize
    }

    enum CodingKeys: String, CodingKey {
        case description
        case encrypted
        case ownerId
        case progress
        case snapshotId
        case startTime
        case state
        case tags = "tagSet"
        case volumeId
        case volumeSize
    }

    public func validate() throws {
    }
}

public struct SnapshotTaskDetail: Codable, Equatable {
    public var description: String?
    public var diskImageSize: Double?
    public var encrypted: Boolean?
    public var format: String?
    public var kmsKeyId: String?
    public var progress: String?
    public var snapshotId: String?
    public var status: String?
    public var statusMessage: String?
    public var url: String?
    public var userBucket: UserBucketDetails?

    public init(description: String? = nil,
                diskImageSize: Double? = nil,
                encrypted: Boolean? = nil,
                format: String? = nil,
                kmsKeyId: String? = nil,
                progress: String? = nil,
                snapshotId: String? = nil,
                status: String? = nil,
                statusMessage: String? = nil,
                url: String? = nil,
                userBucket: UserBucketDetails? = nil) {
        self.description = description
        self.diskImageSize = diskImageSize
        self.encrypted = encrypted
        self.format = format
        self.kmsKeyId = kmsKeyId
        self.progress = progress
        self.snapshotId = snapshotId
        self.status = status
        self.statusMessage = statusMessage
        self.url = url
        self.userBucket = userBucket
    }

    enum CodingKeys: String, CodingKey {
        case description
        case diskImageSize
        case encrypted
        case format
        case kmsKeyId
        case progress
        case snapshotId
        case status
        case statusMessage
        case url
        case userBucket
    }

    public func validate() throws {
        try userBucket?.validate()
    }
}

public struct SpotDatafeedSubscription: Codable, Equatable {
    public var bucket: String?
    public var fault: SpotInstanceStateFault?
    public var ownerId: String?
    public var prefix: String?
    public var state: DatafeedSubscriptionState?

    public init(bucket: String? = nil,
                fault: SpotInstanceStateFault? = nil,
                ownerId: String? = nil,
                prefix: String? = nil,
                state: DatafeedSubscriptionState? = nil) {
        self.bucket = bucket
        self.fault = fault
        self.ownerId = ownerId
        self.prefix = prefix
        self.state = state
    }

    enum CodingKeys: String, CodingKey {
        case bucket
        case fault
        case ownerId
        case prefix
        case state
    }

    public func validate() throws {
        try fault?.validate()
    }
}

public struct SpotFleetLaunchSpecification: Codable, Equatable {
    public var addressingType: String?
    public var blockDeviceMappings: BlockDeviceMappingList?
    public var ebsOptimized: Boolean?
    public var iamInstanceProfile: IamInstanceProfileSpecification?
    public var imageId: String?
    public var instanceType: InstanceType?
    public var kernelId: String?
    public var keyName: String?
    public var monitoring: SpotFleetMonitoring?
    public var networkInterfaces: InstanceNetworkInterfaceSpecificationList?
    public var placement: SpotPlacement?
    public var ramdiskId: String?
    public var securityGroups: GroupIdentifierList?
    public var spotPrice: String?
    public var subnetId: String?
    public var tagSpecifications: SpotFleetTagSpecificationList?
    public var userData: String?
    public var weightedCapacity: Double?

    public init(addressingType: String? = nil,
                blockDeviceMappings: BlockDeviceMappingList? = nil,
                ebsOptimized: Boolean? = nil,
                iamInstanceProfile: IamInstanceProfileSpecification? = nil,
                imageId: String? = nil,
                instanceType: InstanceType? = nil,
                kernelId: String? = nil,
                keyName: String? = nil,
                monitoring: SpotFleetMonitoring? = nil,
                networkInterfaces: InstanceNetworkInterfaceSpecificationList? = nil,
                placement: SpotPlacement? = nil,
                ramdiskId: String? = nil,
                securityGroups: GroupIdentifierList? = nil,
                spotPrice: String? = nil,
                subnetId: String? = nil,
                tagSpecifications: SpotFleetTagSpecificationList? = nil,
                userData: String? = nil,
                weightedCapacity: Double? = nil) {
        self.addressingType = addressingType
        self.blockDeviceMappings = blockDeviceMappings
        self.ebsOptimized = ebsOptimized
        self.iamInstanceProfile = iamInstanceProfile
        self.imageId = imageId
        self.instanceType = instanceType
        self.kernelId = kernelId
        self.keyName = keyName
        self.monitoring = monitoring
        self.networkInterfaces = networkInterfaces
        self.placement = placement
        self.ramdiskId = ramdiskId
        self.securityGroups = securityGroups
        self.spotPrice = spotPrice
        self.subnetId = subnetId
        self.tagSpecifications = tagSpecifications
        self.userData = userData
        self.weightedCapacity = weightedCapacity
    }

    enum CodingKeys: String, CodingKey {
        case addressingType
        case blockDeviceMappings = "blockDeviceMapping"
        case ebsOptimized
        case iamInstanceProfile
        case imageId
        case instanceType
        case kernelId
        case keyName
        case monitoring
        case networkInterfaces = "networkInterfaceSet"
        case placement
        case ramdiskId
        case securityGroups = "groupSet"
        case spotPrice
        case subnetId
        case tagSpecifications = "tagSpecificationSet"
        case userData
        case weightedCapacity
    }

    public func validate() throws {
        try iamInstanceProfile?.validate()
        try monitoring?.validate()
        try placement?.validate()
    }
}

public struct SpotFleetMonitoring: Codable, Equatable {
    public var enabled: Boolean?

    public init(enabled: Boolean? = nil) {
        self.enabled = enabled
    }

    enum CodingKeys: String, CodingKey {
        case enabled
    }

    public func validate() throws {
    }
}

public struct SpotFleetRequestConfig: Codable, Equatable {
    public var activityStatus: ActivityStatus?
    public var createTime: DateTime?
    public var spotFleetRequestConfig: SpotFleetRequestConfigData?
    public var spotFleetRequestId: String?
    public var spotFleetRequestState: BatchState?

    public init(activityStatus: ActivityStatus? = nil,
                createTime: DateTime? = nil,
                spotFleetRequestConfig: SpotFleetRequestConfigData? = nil,
                spotFleetRequestId: String? = nil,
                spotFleetRequestState: BatchState? = nil) {
        self.activityStatus = activityStatus
        self.createTime = createTime
        self.spotFleetRequestConfig = spotFleetRequestConfig
        self.spotFleetRequestId = spotFleetRequestId
        self.spotFleetRequestState = spotFleetRequestState
    }

    enum CodingKeys: String, CodingKey {
        case activityStatus
        case createTime
        case spotFleetRequestConfig
        case spotFleetRequestId
        case spotFleetRequestState
    }

    public func validate() throws {
        try spotFleetRequestConfig?.validate()
    }
}

public struct SpotFleetRequestConfigData: Codable, Equatable {
    public var allocationStrategy: AllocationStrategy?
    public var clientToken: String?
    public var excessCapacityTerminationPolicy: ExcessCapacityTerminationPolicy?
    public var fulfilledCapacity: Double?
    public var iamFleetRole: String
    public var instanceInterruptionBehavior: InstanceInterruptionBehavior?
    public var instancePoolsToUseCount: Integer?
    public var launchSpecifications: LaunchSpecsList?
    public var launchTemplateConfigs: LaunchTemplateConfigList?
    public var loadBalancersConfig: LoadBalancersConfig?
    public var onDemandAllocationStrategy: OnDemandAllocationStrategy?
    public var onDemandFulfilledCapacity: Double?
    public var onDemandTargetCapacity: Integer?
    public var replaceUnhealthyInstances: Boolean?
    public var spotPrice: String?
    public var targetCapacity: Integer
    public var terminateInstancesWithExpiration: Boolean?
    public var type: FleetType?
    public var validFrom: DateTime?
    public var validUntil: DateTime?

    public init(allocationStrategy: AllocationStrategy? = nil,
                clientToken: String? = nil,
                excessCapacityTerminationPolicy: ExcessCapacityTerminationPolicy? = nil,
                fulfilledCapacity: Double? = nil,
                iamFleetRole: String,
                instanceInterruptionBehavior: InstanceInterruptionBehavior? = nil,
                instancePoolsToUseCount: Integer? = nil,
                launchSpecifications: LaunchSpecsList? = nil,
                launchTemplateConfigs: LaunchTemplateConfigList? = nil,
                loadBalancersConfig: LoadBalancersConfig? = nil,
                onDemandAllocationStrategy: OnDemandAllocationStrategy? = nil,
                onDemandFulfilledCapacity: Double? = nil,
                onDemandTargetCapacity: Integer? = nil,
                replaceUnhealthyInstances: Boolean? = nil,
                spotPrice: String? = nil,
                targetCapacity: Integer,
                terminateInstancesWithExpiration: Boolean? = nil,
                type: FleetType? = nil,
                validFrom: DateTime? = nil,
                validUntil: DateTime? = nil) {
        self.allocationStrategy = allocationStrategy
        self.clientToken = clientToken
        self.excessCapacityTerminationPolicy = excessCapacityTerminationPolicy
        self.fulfilledCapacity = fulfilledCapacity
        self.iamFleetRole = iamFleetRole
        self.instanceInterruptionBehavior = instanceInterruptionBehavior
        self.instancePoolsToUseCount = instancePoolsToUseCount
        self.launchSpecifications = launchSpecifications
        self.launchTemplateConfigs = launchTemplateConfigs
        self.loadBalancersConfig = loadBalancersConfig
        self.onDemandAllocationStrategy = onDemandAllocationStrategy
        self.onDemandFulfilledCapacity = onDemandFulfilledCapacity
        self.onDemandTargetCapacity = onDemandTargetCapacity
        self.replaceUnhealthyInstances = replaceUnhealthyInstances
        self.spotPrice = spotPrice
        self.targetCapacity = targetCapacity
        self.terminateInstancesWithExpiration = terminateInstancesWithExpiration
        self.type = type
        self.validFrom = validFrom
        self.validUntil = validUntil
    }

    enum CodingKeys: String, CodingKey {
        case allocationStrategy
        case clientToken
        case excessCapacityTerminationPolicy
        case fulfilledCapacity
        case iamFleetRole
        case instanceInterruptionBehavior
        case instancePoolsToUseCount
        case launchSpecifications
        case launchTemplateConfigs
        case loadBalancersConfig
        case onDemandAllocationStrategy
        case onDemandFulfilledCapacity
        case onDemandTargetCapacity
        case replaceUnhealthyInstances
        case spotPrice
        case targetCapacity
        case terminateInstancesWithExpiration
        case type
        case validFrom
        case validUntil
    }

    public func validate() throws {
        try loadBalancersConfig?.validate()
    }
}

public struct SpotFleetTagSpecification: Codable, Equatable {
    public var resourceType: ResourceType?
    public var tags: TagList?

    public init(resourceType: ResourceType? = nil,
                tags: TagList? = nil) {
        self.resourceType = resourceType
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case resourceType
        case tags = "tag"
    }

    public func validate() throws {
    }
}

public struct SpotInstanceRequest: Codable, Equatable {
    public var actualBlockHourlyPrice: String?
    public var availabilityZoneGroup: String?
    public var blockDurationMinutes: Integer?
    public var createTime: DateTime?
    public var fault: SpotInstanceStateFault?
    public var instanceId: String?
    public var instanceInterruptionBehavior: InstanceInterruptionBehavior?
    public var launchGroup: String?
    public var launchSpecification: LaunchSpecification?
    public var launchedAvailabilityZone: String?
    public var productDescription: RIProductDescription?
    public var spotInstanceRequestId: String?
    public var spotPrice: String?
    public var state: SpotInstanceState?
    public var status: SpotInstanceStatus?
    public var tags: TagList?
    public var type: SpotInstanceType?
    public var validFrom: DateTime?
    public var validUntil: DateTime?

    public init(actualBlockHourlyPrice: String? = nil,
                availabilityZoneGroup: String? = nil,
                blockDurationMinutes: Integer? = nil,
                createTime: DateTime? = nil,
                fault: SpotInstanceStateFault? = nil,
                instanceId: String? = nil,
                instanceInterruptionBehavior: InstanceInterruptionBehavior? = nil,
                launchGroup: String? = nil,
                launchSpecification: LaunchSpecification? = nil,
                launchedAvailabilityZone: String? = nil,
                productDescription: RIProductDescription? = nil,
                spotInstanceRequestId: String? = nil,
                spotPrice: String? = nil,
                state: SpotInstanceState? = nil,
                status: SpotInstanceStatus? = nil,
                tags: TagList? = nil,
                type: SpotInstanceType? = nil,
                validFrom: DateTime? = nil,
                validUntil: DateTime? = nil) {
        self.actualBlockHourlyPrice = actualBlockHourlyPrice
        self.availabilityZoneGroup = availabilityZoneGroup
        self.blockDurationMinutes = blockDurationMinutes
        self.createTime = createTime
        self.fault = fault
        self.instanceId = instanceId
        self.instanceInterruptionBehavior = instanceInterruptionBehavior
        self.launchGroup = launchGroup
        self.launchSpecification = launchSpecification
        self.launchedAvailabilityZone = launchedAvailabilityZone
        self.productDescription = productDescription
        self.spotInstanceRequestId = spotInstanceRequestId
        self.spotPrice = spotPrice
        self.state = state
        self.status = status
        self.tags = tags
        self.type = type
        self.validFrom = validFrom
        self.validUntil = validUntil
    }

    enum CodingKeys: String, CodingKey {
        case actualBlockHourlyPrice
        case availabilityZoneGroup
        case blockDurationMinutes
        case createTime
        case fault
        case instanceId
        case instanceInterruptionBehavior
        case launchGroup
        case launchSpecification
        case launchedAvailabilityZone
        case productDescription
        case spotInstanceRequestId
        case spotPrice
        case state
        case status
        case tags = "tagSet"
        case type
        case validFrom
        case validUntil
    }

    public func validate() throws {
        try fault?.validate()
        try launchSpecification?.validate()
        try status?.validate()
    }
}

public struct SpotInstanceStateFault: Codable, Equatable {
    public var code: String?
    public var message: String?

    public init(code: String? = nil,
                message: String? = nil) {
        self.code = code
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case code
        case message
    }

    public func validate() throws {
    }
}

public struct SpotInstanceStatus: Codable, Equatable {
    public var code: String?
    public var message: String?
    public var updateTime: DateTime?

    public init(code: String? = nil,
                message: String? = nil,
                updateTime: DateTime? = nil) {
        self.code = code
        self.message = message
        self.updateTime = updateTime
    }

    enum CodingKeys: String, CodingKey {
        case code
        case message
        case updateTime
    }

    public func validate() throws {
    }
}

public struct SpotMarketOptions: Codable, Equatable {
    public var blockDurationMinutes: Integer?
    public var instanceInterruptionBehavior: InstanceInterruptionBehavior?
    public var maxPrice: String?
    public var spotInstanceType: SpotInstanceType?
    public var validUntil: DateTime?

    public init(blockDurationMinutes: Integer? = nil,
                instanceInterruptionBehavior: InstanceInterruptionBehavior? = nil,
                maxPrice: String? = nil,
                spotInstanceType: SpotInstanceType? = nil,
                validUntil: DateTime? = nil) {
        self.blockDurationMinutes = blockDurationMinutes
        self.instanceInterruptionBehavior = instanceInterruptionBehavior
        self.maxPrice = maxPrice
        self.spotInstanceType = spotInstanceType
        self.validUntil = validUntil
    }

    enum CodingKeys: String, CodingKey {
        case blockDurationMinutes = "BlockDurationMinutes"
        case instanceInterruptionBehavior = "InstanceInterruptionBehavior"
        case maxPrice = "MaxPrice"
        case spotInstanceType = "SpotInstanceType"
        case validUntil = "ValidUntil"
    }

    public func validate() throws {
    }
}

public struct SpotOptions: Codable, Equatable {
    public var allocationStrategy: SpotAllocationStrategy?
    public var instanceInterruptionBehavior: SpotInstanceInterruptionBehavior?
    public var instancePoolsToUseCount: Integer?
    public var minTargetCapacity: Integer?
    public var singleAvailabilityZone: Boolean?
    public var singleInstanceType: Boolean?

    public init(allocationStrategy: SpotAllocationStrategy? = nil,
                instanceInterruptionBehavior: SpotInstanceInterruptionBehavior? = nil,
                instancePoolsToUseCount: Integer? = nil,
                minTargetCapacity: Integer? = nil,
                singleAvailabilityZone: Boolean? = nil,
                singleInstanceType: Boolean? = nil) {
        self.allocationStrategy = allocationStrategy
        self.instanceInterruptionBehavior = instanceInterruptionBehavior
        self.instancePoolsToUseCount = instancePoolsToUseCount
        self.minTargetCapacity = minTargetCapacity
        self.singleAvailabilityZone = singleAvailabilityZone
        self.singleInstanceType = singleInstanceType
    }

    enum CodingKeys: String, CodingKey {
        case allocationStrategy
        case instanceInterruptionBehavior
        case instancePoolsToUseCount
        case minTargetCapacity
        case singleAvailabilityZone
        case singleInstanceType
    }

    public func validate() throws {
    }
}

public struct SpotOptionsRequest: Codable, Equatable {
    public var allocationStrategy: SpotAllocationStrategy?
    public var instanceInterruptionBehavior: SpotInstanceInterruptionBehavior?
    public var instancePoolsToUseCount: Integer?
    public var minTargetCapacity: Integer?
    public var singleAvailabilityZone: Boolean?
    public var singleInstanceType: Boolean?

    public init(allocationStrategy: SpotAllocationStrategy? = nil,
                instanceInterruptionBehavior: SpotInstanceInterruptionBehavior? = nil,
                instancePoolsToUseCount: Integer? = nil,
                minTargetCapacity: Integer? = nil,
                singleAvailabilityZone: Boolean? = nil,
                singleInstanceType: Boolean? = nil) {
        self.allocationStrategy = allocationStrategy
        self.instanceInterruptionBehavior = instanceInterruptionBehavior
        self.instancePoolsToUseCount = instancePoolsToUseCount
        self.minTargetCapacity = minTargetCapacity
        self.singleAvailabilityZone = singleAvailabilityZone
        self.singleInstanceType = singleInstanceType
    }

    enum CodingKeys: String, CodingKey {
        case allocationStrategy = "AllocationStrategy"
        case instanceInterruptionBehavior = "InstanceInterruptionBehavior"
        case instancePoolsToUseCount = "InstancePoolsToUseCount"
        case minTargetCapacity = "MinTargetCapacity"
        case singleAvailabilityZone = "SingleAvailabilityZone"
        case singleInstanceType = "SingleInstanceType"
    }

    public func validate() throws {
    }
}

public struct SpotPlacement: Codable, Equatable {
    public var availabilityZone: String?
    public var groupName: String?
    public var tenancy: Tenancy?

    public init(availabilityZone: String? = nil,
                groupName: String? = nil,
                tenancy: Tenancy? = nil) {
        self.availabilityZone = availabilityZone
        self.groupName = groupName
        self.tenancy = tenancy
    }

    enum CodingKeys: String, CodingKey {
        case availabilityZone
        case groupName
        case tenancy
    }

    public func validate() throws {
    }
}

public struct SpotPrice: Codable, Equatable {
    public var availabilityZone: String?
    public var instanceType: InstanceType?
    public var productDescription: RIProductDescription?
    public var spotPrice: String?
    public var timestamp: DateTime?

    public init(availabilityZone: String? = nil,
                instanceType: InstanceType? = nil,
                productDescription: RIProductDescription? = nil,
                spotPrice: String? = nil,
                timestamp: DateTime? = nil) {
        self.availabilityZone = availabilityZone
        self.instanceType = instanceType
        self.productDescription = productDescription
        self.spotPrice = spotPrice
        self.timestamp = timestamp
    }

    enum CodingKeys: String, CodingKey {
        case availabilityZone
        case instanceType
        case productDescription
        case spotPrice
        case timestamp
    }

    public func validate() throws {
    }
}

public struct StaleIpPermission: Codable, Equatable {
    public var fromPort: Integer?
    public var ipProtocol: String?
    public var ipRanges: IpRanges?
    public var prefixListIds: PrefixListIdSet?
    public var toPort: Integer?
    public var userIdGroupPairs: UserIdGroupPairSet?

    public init(fromPort: Integer? = nil,
                ipProtocol: String? = nil,
                ipRanges: IpRanges? = nil,
                prefixListIds: PrefixListIdSet? = nil,
                toPort: Integer? = nil,
                userIdGroupPairs: UserIdGroupPairSet? = nil) {
        self.fromPort = fromPort
        self.ipProtocol = ipProtocol
        self.ipRanges = ipRanges
        self.prefixListIds = prefixListIds
        self.toPort = toPort
        self.userIdGroupPairs = userIdGroupPairs
    }

    enum CodingKeys: String, CodingKey {
        case fromPort
        case ipProtocol
        case ipRanges
        case prefixListIds
        case toPort
        case userIdGroupPairs = "groups"
    }

    public func validate() throws {
    }
}

public struct StaleSecurityGroup: Codable, Equatable {
    public var description: String?
    public var groupId: String?
    public var groupName: String?
    public var staleIpPermissions: StaleIpPermissionSet?
    public var staleIpPermissionsEgress: StaleIpPermissionSet?
    public var vpcId: String?

    public init(description: String? = nil,
                groupId: String? = nil,
                groupName: String? = nil,
                staleIpPermissions: StaleIpPermissionSet? = nil,
                staleIpPermissionsEgress: StaleIpPermissionSet? = nil,
                vpcId: String? = nil) {
        self.description = description
        self.groupId = groupId
        self.groupName = groupName
        self.staleIpPermissions = staleIpPermissions
        self.staleIpPermissionsEgress = staleIpPermissionsEgress
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case description
        case groupId
        case groupName
        case staleIpPermissions
        case staleIpPermissionsEgress
        case vpcId
    }

    public func validate() throws {
    }
}

public struct StartInstancesRequest: Codable, Equatable {
    public var additionalInfo: String?
    public var dryRun: Boolean?
    public var instanceIds: InstanceIdStringList

    public init(additionalInfo: String? = nil,
                dryRun: Boolean? = nil,
                instanceIds: InstanceIdStringList) {
        self.additionalInfo = additionalInfo
        self.dryRun = dryRun
        self.instanceIds = instanceIds
    }

    enum CodingKeys: String, CodingKey {
        case additionalInfo
        case dryRun
        case instanceIds = "InstanceId"
    }

    public func validate() throws {
    }
}

public struct StartInstancesResult: Codable, Equatable {
    public var startingInstances: InstanceStateChangeList?

    public init(startingInstances: InstanceStateChangeList? = nil) {
        self.startingInstances = startingInstances
    }

    enum CodingKeys: String, CodingKey {
        case startingInstances = "instancesSet"
    }

    public func validate() throws {
    }
}

public struct StateReason: Codable, Equatable {
    public var code: String?
    public var message: String?

    public init(code: String? = nil,
                message: String? = nil) {
        self.code = code
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case code
        case message
    }

    public func validate() throws {
    }
}

public struct StopInstancesRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var force: Boolean?
    public var hibernate: Boolean?
    public var instanceIds: InstanceIdStringList

    public init(dryRun: Boolean? = nil,
                force: Boolean? = nil,
                hibernate: Boolean? = nil,
                instanceIds: InstanceIdStringList) {
        self.dryRun = dryRun
        self.force = force
        self.hibernate = hibernate
        self.instanceIds = instanceIds
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case force
        case hibernate = "Hibernate"
        case instanceIds = "InstanceId"
    }

    public func validate() throws {
    }
}

public struct StopInstancesResult: Codable, Equatable {
    public var stoppingInstances: InstanceStateChangeList?

    public init(stoppingInstances: InstanceStateChangeList? = nil) {
        self.stoppingInstances = stoppingInstances
    }

    enum CodingKeys: String, CodingKey {
        case stoppingInstances = "instancesSet"
    }

    public func validate() throws {
    }
}

public struct Storage: Codable, Equatable {
    public var s3: S3Storage?

    public init(s3: S3Storage? = nil) {
        self.s3 = s3
    }

    enum CodingKeys: String, CodingKey {
        case s3 = "S3"
    }

    public func validate() throws {
        try s3?.validate()
    }
}

public struct StorageLocation: Codable, Equatable {
    public var bucket: String?
    public var key: String?

    public init(bucket: String? = nil,
                key: String? = nil) {
        self.bucket = bucket
        self.key = key
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
    }

    public func validate() throws {
    }
}

public struct Subnet: Codable, Equatable {
    public var assignIpv6AddressOnCreation: Boolean?
    public var availabilityZone: String?
    public var availabilityZoneId: String?
    public var availableIpAddressCount: Integer?
    public var cidrBlock: String?
    public var defaultForAz: Boolean?
    public var ipv6CidrBlockAssociationSet: SubnetIpv6CidrBlockAssociationSet?
    public var mapPublicIpOnLaunch: Boolean?
    public var ownerId: String?
    public var state: SubnetState?
    public var subnetArn: String?
    public var subnetId: String?
    public var tags: TagList?
    public var vpcId: String?

    public init(assignIpv6AddressOnCreation: Boolean? = nil,
                availabilityZone: String? = nil,
                availabilityZoneId: String? = nil,
                availableIpAddressCount: Integer? = nil,
                cidrBlock: String? = nil,
                defaultForAz: Boolean? = nil,
                ipv6CidrBlockAssociationSet: SubnetIpv6CidrBlockAssociationSet? = nil,
                mapPublicIpOnLaunch: Boolean? = nil,
                ownerId: String? = nil,
                state: SubnetState? = nil,
                subnetArn: String? = nil,
                subnetId: String? = nil,
                tags: TagList? = nil,
                vpcId: String? = nil) {
        self.assignIpv6AddressOnCreation = assignIpv6AddressOnCreation
        self.availabilityZone = availabilityZone
        self.availabilityZoneId = availabilityZoneId
        self.availableIpAddressCount = availableIpAddressCount
        self.cidrBlock = cidrBlock
        self.defaultForAz = defaultForAz
        self.ipv6CidrBlockAssociationSet = ipv6CidrBlockAssociationSet
        self.mapPublicIpOnLaunch = mapPublicIpOnLaunch
        self.ownerId = ownerId
        self.state = state
        self.subnetArn = subnetArn
        self.subnetId = subnetId
        self.tags = tags
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case assignIpv6AddressOnCreation
        case availabilityZone
        case availabilityZoneId
        case availableIpAddressCount
        case cidrBlock
        case defaultForAz
        case ipv6CidrBlockAssociationSet
        case mapPublicIpOnLaunch
        case ownerId
        case state
        case subnetArn
        case subnetId
        case tags = "tagSet"
        case vpcId
    }

    public func validate() throws {
    }
}

public struct SubnetCidrBlockState: Codable, Equatable {
    public var state: SubnetCidrBlockStateCode?
    public var statusMessage: String?

    public init(state: SubnetCidrBlockStateCode? = nil,
                statusMessage: String? = nil) {
        self.state = state
        self.statusMessage = statusMessage
    }

    enum CodingKeys: String, CodingKey {
        case state
        case statusMessage
    }

    public func validate() throws {
    }
}

public struct SubnetIpv6CidrBlockAssociation: Codable, Equatable {
    public var associationId: String?
    public var ipv6CidrBlock: String?
    public var ipv6CidrBlockState: SubnetCidrBlockState?

    public init(associationId: String? = nil,
                ipv6CidrBlock: String? = nil,
                ipv6CidrBlockState: SubnetCidrBlockState? = nil) {
        self.associationId = associationId
        self.ipv6CidrBlock = ipv6CidrBlock
        self.ipv6CidrBlockState = ipv6CidrBlockState
    }

    enum CodingKeys: String, CodingKey {
        case associationId
        case ipv6CidrBlock
        case ipv6CidrBlockState
    }

    public func validate() throws {
        try ipv6CidrBlockState?.validate()
    }
}

public struct SuccessfulInstanceCreditSpecificationItem: Codable, Equatable {
    public var instanceId: String?

    public init(instanceId: String? = nil) {
        self.instanceId = instanceId
    }

    enum CodingKeys: String, CodingKey {
        case instanceId
    }

    public func validate() throws {
    }
}

public struct Tag: Codable, Equatable {
    public var key: String?
    public var value: String?

    public init(key: String? = nil,
                value: String? = nil) {
        self.key = key
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case key
        case value
    }

    public func validate() throws {
    }
}

public struct TagDescription: Codable, Equatable {
    public var key: String?
    public var resourceId: String?
    public var resourceType: ResourceType?
    public var value: String?

    public init(key: String? = nil,
                resourceId: String? = nil,
                resourceType: ResourceType? = nil,
                value: String? = nil) {
        self.key = key
        self.resourceId = resourceId
        self.resourceType = resourceType
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case key
        case resourceId
        case resourceType
        case value
    }

    public func validate() throws {
    }
}

public struct TagSpecification: Codable, Equatable {
    public var resourceType: ResourceType?
    public var tags: TagList?

    public init(resourceType: ResourceType? = nil,
                tags: TagList? = nil) {
        self.resourceType = resourceType
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case resourceType
        case tags = "Tag"
    }

    public func validate() throws {
    }
}

public struct TargetCapacitySpecification: Codable, Equatable {
    public var defaultTargetCapacityType: DefaultTargetCapacityType?
    public var onDemandTargetCapacity: Integer?
    public var spotTargetCapacity: Integer?
    public var totalTargetCapacity: Integer?

    public init(defaultTargetCapacityType: DefaultTargetCapacityType? = nil,
                onDemandTargetCapacity: Integer? = nil,
                spotTargetCapacity: Integer? = nil,
                totalTargetCapacity: Integer? = nil) {
        self.defaultTargetCapacityType = defaultTargetCapacityType
        self.onDemandTargetCapacity = onDemandTargetCapacity
        self.spotTargetCapacity = spotTargetCapacity
        self.totalTargetCapacity = totalTargetCapacity
    }

    enum CodingKeys: String, CodingKey {
        case defaultTargetCapacityType
        case onDemandTargetCapacity
        case spotTargetCapacity
        case totalTargetCapacity
    }

    public func validate() throws {
    }
}

public struct TargetCapacitySpecificationRequest: Codable, Equatable {
    public var defaultTargetCapacityType: DefaultTargetCapacityType?
    public var onDemandTargetCapacity: Integer?
    public var spotTargetCapacity: Integer?
    public var totalTargetCapacity: Integer

    public init(defaultTargetCapacityType: DefaultTargetCapacityType? = nil,
                onDemandTargetCapacity: Integer? = nil,
                spotTargetCapacity: Integer? = nil,
                totalTargetCapacity: Integer) {
        self.defaultTargetCapacityType = defaultTargetCapacityType
        self.onDemandTargetCapacity = onDemandTargetCapacity
        self.spotTargetCapacity = spotTargetCapacity
        self.totalTargetCapacity = totalTargetCapacity
    }

    enum CodingKeys: String, CodingKey {
        case defaultTargetCapacityType = "DefaultTargetCapacityType"
        case onDemandTargetCapacity = "OnDemandTargetCapacity"
        case spotTargetCapacity = "SpotTargetCapacity"
        case totalTargetCapacity = "TotalTargetCapacity"
    }

    public func validate() throws {
    }
}

public struct TargetConfiguration: Codable, Equatable {
    public var instanceCount: Integer?
    public var offeringId: String?

    public init(instanceCount: Integer? = nil,
                offeringId: String? = nil) {
        self.instanceCount = instanceCount
        self.offeringId = offeringId
    }

    enum CodingKeys: String, CodingKey {
        case instanceCount
        case offeringId
    }

    public func validate() throws {
    }
}

public struct TargetConfigurationRequest: Codable, Equatable {
    public var instanceCount: Integer?
    public var offeringId: String

    public init(instanceCount: Integer? = nil,
                offeringId: String) {
        self.instanceCount = instanceCount
        self.offeringId = offeringId
    }

    enum CodingKeys: String, CodingKey {
        case instanceCount = "InstanceCount"
        case offeringId = "OfferingId"
    }

    public func validate() throws {
    }
}

public struct TargetGroup: Codable, Equatable {
    public var arn: String?

    public init(arn: String? = nil) {
        self.arn = arn
    }

    enum CodingKeys: String, CodingKey {
        case arn
    }

    public func validate() throws {
    }
}

public struct TargetGroupsConfig: Codable, Equatable {
    public var targetGroups: TargetGroups?

    public init(targetGroups: TargetGroups? = nil) {
        self.targetGroups = targetGroups
    }

    enum CodingKeys: String, CodingKey {
        case targetGroups
    }

    public func validate() throws {
        try targetGroups?.validateAsTargetGroups()
    }
}

public struct TargetNetwork: Codable, Equatable {
    public var associationId: String?
    public var clientVpnEndpointId: String?
    public var securityGroups: ValueStringList?
    public var status: AssociationStatus?
    public var targetNetworkId: String?
    public var vpcId: String?

    public init(associationId: String? = nil,
                clientVpnEndpointId: String? = nil,
                securityGroups: ValueStringList? = nil,
                status: AssociationStatus? = nil,
                targetNetworkId: String? = nil,
                vpcId: String? = nil) {
        self.associationId = associationId
        self.clientVpnEndpointId = clientVpnEndpointId
        self.securityGroups = securityGroups
        self.status = status
        self.targetNetworkId = targetNetworkId
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case associationId
        case clientVpnEndpointId
        case securityGroups
        case status
        case targetNetworkId
        case vpcId
    }

    public func validate() throws {
        try status?.validate()
    }
}

public struct TargetReservationValue: Codable, Equatable {
    public var reservationValue: ReservationValue?
    public var targetConfiguration: TargetConfiguration?

    public init(reservationValue: ReservationValue? = nil,
                targetConfiguration: TargetConfiguration? = nil) {
        self.reservationValue = reservationValue
        self.targetConfiguration = targetConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case reservationValue
        case targetConfiguration
    }

    public func validate() throws {
        try reservationValue?.validate()
        try targetConfiguration?.validate()
    }
}

public struct TerminateClientVpnConnectionsRequest: Codable, Equatable {
    public var clientVpnEndpointId: String
    public var connectionId: String?
    public var dryRun: Boolean?
    public var username: String?

    public init(clientVpnEndpointId: String,
                connectionId: String? = nil,
                dryRun: Boolean? = nil,
                username: String? = nil) {
        self.clientVpnEndpointId = clientVpnEndpointId
        self.connectionId = connectionId
        self.dryRun = dryRun
        self.username = username
    }

    enum CodingKeys: String, CodingKey {
        case clientVpnEndpointId = "ClientVpnEndpointId"
        case connectionId = "ConnectionId"
        case dryRun = "DryRun"
        case username = "Username"
    }

    public func validate() throws {
    }
}

public struct TerminateClientVpnConnectionsResult: Codable, Equatable {
    public var clientVpnEndpointId: String?
    public var connectionStatuses: TerminateConnectionStatusSet?
    public var username: String?

    public init(clientVpnEndpointId: String? = nil,
                connectionStatuses: TerminateConnectionStatusSet? = nil,
                username: String? = nil) {
        self.clientVpnEndpointId = clientVpnEndpointId
        self.connectionStatuses = connectionStatuses
        self.username = username
    }

    enum CodingKeys: String, CodingKey {
        case clientVpnEndpointId
        case connectionStatuses
        case username
    }

    public func validate() throws {
    }
}

public struct TerminateConnectionStatus: Codable, Equatable {
    public var connectionId: String?
    public var currentStatus: ClientVpnConnectionStatus?
    public var previousStatus: ClientVpnConnectionStatus?

    public init(connectionId: String? = nil,
                currentStatus: ClientVpnConnectionStatus? = nil,
                previousStatus: ClientVpnConnectionStatus? = nil) {
        self.connectionId = connectionId
        self.currentStatus = currentStatus
        self.previousStatus = previousStatus
    }

    enum CodingKeys: String, CodingKey {
        case connectionId
        case currentStatus
        case previousStatus
    }

    public func validate() throws {
        try currentStatus?.validate()
        try previousStatus?.validate()
    }
}

public struct TerminateInstancesRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var instanceIds: InstanceIdStringList

    public init(dryRun: Boolean? = nil,
                instanceIds: InstanceIdStringList) {
        self.dryRun = dryRun
        self.instanceIds = instanceIds
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case instanceIds = "InstanceId"
    }

    public func validate() throws {
    }
}

public struct TerminateInstancesResult: Codable, Equatable {
    public var terminatingInstances: InstanceStateChangeList?

    public init(terminatingInstances: InstanceStateChangeList? = nil) {
        self.terminatingInstances = terminatingInstances
    }

    enum CodingKeys: String, CodingKey {
        case terminatingInstances = "instancesSet"
    }

    public func validate() throws {
    }
}

public struct TransitGateway: Codable, Equatable {
    public var creationTime: DateTime?
    public var description: String?
    public var options: TransitGatewayOptions?
    public var ownerId: String?
    public var state: TransitGatewayState?
    public var tags: TagList?
    public var transitGatewayArn: String?
    public var transitGatewayId: String?

    public init(creationTime: DateTime? = nil,
                description: String? = nil,
                options: TransitGatewayOptions? = nil,
                ownerId: String? = nil,
                state: TransitGatewayState? = nil,
                tags: TagList? = nil,
                transitGatewayArn: String? = nil,
                transitGatewayId: String? = nil) {
        self.creationTime = creationTime
        self.description = description
        self.options = options
        self.ownerId = ownerId
        self.state = state
        self.tags = tags
        self.transitGatewayArn = transitGatewayArn
        self.transitGatewayId = transitGatewayId
    }

    enum CodingKeys: String, CodingKey {
        case creationTime
        case description
        case options
        case ownerId
        case state
        case tags = "tagSet"
        case transitGatewayArn
        case transitGatewayId
    }

    public func validate() throws {
        try options?.validate()
    }
}

public struct TransitGatewayAssociation: Codable, Equatable {
    public var resourceId: String?
    public var resourceType: TransitGatewayAttachmentResourceType?
    public var state: TransitGatewayAssociationState?
    public var transitGatewayAttachmentId: String?
    public var transitGatewayRouteTableId: String?

    public init(resourceId: String? = nil,
                resourceType: TransitGatewayAttachmentResourceType? = nil,
                state: TransitGatewayAssociationState? = nil,
                transitGatewayAttachmentId: String? = nil,
                transitGatewayRouteTableId: String? = nil) {
        self.resourceId = resourceId
        self.resourceType = resourceType
        self.state = state
        self.transitGatewayAttachmentId = transitGatewayAttachmentId
        self.transitGatewayRouteTableId = transitGatewayRouteTableId
    }

    enum CodingKeys: String, CodingKey {
        case resourceId
        case resourceType
        case state
        case transitGatewayAttachmentId
        case transitGatewayRouteTableId
    }

    public func validate() throws {
    }
}

public struct TransitGatewayAttachment: Codable, Equatable {
    public var association: TransitGatewayAttachmentAssociation?
    public var creationTime: DateTime?
    public var resourceId: String?
    public var resourceOwnerId: String?
    public var resourceType: TransitGatewayAttachmentResourceType?
    public var state: TransitGatewayAttachmentState?
    public var tags: TagList?
    public var transitGatewayAttachmentId: String?
    public var transitGatewayId: String?
    public var transitGatewayOwnerId: String?

    public init(association: TransitGatewayAttachmentAssociation? = nil,
                creationTime: DateTime? = nil,
                resourceId: String? = nil,
                resourceOwnerId: String? = nil,
                resourceType: TransitGatewayAttachmentResourceType? = nil,
                state: TransitGatewayAttachmentState? = nil,
                tags: TagList? = nil,
                transitGatewayAttachmentId: String? = nil,
                transitGatewayId: String? = nil,
                transitGatewayOwnerId: String? = nil) {
        self.association = association
        self.creationTime = creationTime
        self.resourceId = resourceId
        self.resourceOwnerId = resourceOwnerId
        self.resourceType = resourceType
        self.state = state
        self.tags = tags
        self.transitGatewayAttachmentId = transitGatewayAttachmentId
        self.transitGatewayId = transitGatewayId
        self.transitGatewayOwnerId = transitGatewayOwnerId
    }

    enum CodingKeys: String, CodingKey {
        case association
        case creationTime
        case resourceId
        case resourceOwnerId
        case resourceType
        case state
        case tags = "tagSet"
        case transitGatewayAttachmentId
        case transitGatewayId
        case transitGatewayOwnerId
    }

    public func validate() throws {
        try association?.validate()
    }
}

public struct TransitGatewayAttachmentAssociation: Codable, Equatable {
    public var state: TransitGatewayAssociationState?
    public var transitGatewayRouteTableId: String?

    public init(state: TransitGatewayAssociationState? = nil,
                transitGatewayRouteTableId: String? = nil) {
        self.state = state
        self.transitGatewayRouteTableId = transitGatewayRouteTableId
    }

    enum CodingKeys: String, CodingKey {
        case state
        case transitGatewayRouteTableId
    }

    public func validate() throws {
    }
}

public struct TransitGatewayAttachmentPropagation: Codable, Equatable {
    public var state: TransitGatewayPropagationState?
    public var transitGatewayRouteTableId: String?

    public init(state: TransitGatewayPropagationState? = nil,
                transitGatewayRouteTableId: String? = nil) {
        self.state = state
        self.transitGatewayRouteTableId = transitGatewayRouteTableId
    }

    enum CodingKeys: String, CodingKey {
        case state
        case transitGatewayRouteTableId
    }

    public func validate() throws {
    }
}

public struct TransitGatewayOptions: Codable, Equatable {
    public var amazonSideAsn: Long?
    public var associationDefaultRouteTableId: String?
    public var autoAcceptSharedAttachments: AutoAcceptSharedAttachmentsValue?
    public var defaultRouteTableAssociation: DefaultRouteTableAssociationValue?
    public var defaultRouteTablePropagation: DefaultRouteTablePropagationValue?
    public var dnsSupport: DnsSupportValue?
    public var propagationDefaultRouteTableId: String?
    public var vpnEcmpSupport: VpnEcmpSupportValue?

    public init(amazonSideAsn: Long? = nil,
                associationDefaultRouteTableId: String? = nil,
                autoAcceptSharedAttachments: AutoAcceptSharedAttachmentsValue? = nil,
                defaultRouteTableAssociation: DefaultRouteTableAssociationValue? = nil,
                defaultRouteTablePropagation: DefaultRouteTablePropagationValue? = nil,
                dnsSupport: DnsSupportValue? = nil,
                propagationDefaultRouteTableId: String? = nil,
                vpnEcmpSupport: VpnEcmpSupportValue? = nil) {
        self.amazonSideAsn = amazonSideAsn
        self.associationDefaultRouteTableId = associationDefaultRouteTableId
        self.autoAcceptSharedAttachments = autoAcceptSharedAttachments
        self.defaultRouteTableAssociation = defaultRouteTableAssociation
        self.defaultRouteTablePropagation = defaultRouteTablePropagation
        self.dnsSupport = dnsSupport
        self.propagationDefaultRouteTableId = propagationDefaultRouteTableId
        self.vpnEcmpSupport = vpnEcmpSupport
    }

    enum CodingKeys: String, CodingKey {
        case amazonSideAsn
        case associationDefaultRouteTableId
        case autoAcceptSharedAttachments
        case defaultRouteTableAssociation
        case defaultRouteTablePropagation
        case dnsSupport
        case propagationDefaultRouteTableId
        case vpnEcmpSupport
    }

    public func validate() throws {
    }
}

public struct TransitGatewayPropagation: Codable, Equatable {
    public var resourceId: String?
    public var resourceType: TransitGatewayAttachmentResourceType?
    public var state: TransitGatewayPropagationState?
    public var transitGatewayAttachmentId: String?
    public var transitGatewayRouteTableId: String?

    public init(resourceId: String? = nil,
                resourceType: TransitGatewayAttachmentResourceType? = nil,
                state: TransitGatewayPropagationState? = nil,
                transitGatewayAttachmentId: String? = nil,
                transitGatewayRouteTableId: String? = nil) {
        self.resourceId = resourceId
        self.resourceType = resourceType
        self.state = state
        self.transitGatewayAttachmentId = transitGatewayAttachmentId
        self.transitGatewayRouteTableId = transitGatewayRouteTableId
    }

    enum CodingKeys: String, CodingKey {
        case resourceId
        case resourceType
        case state
        case transitGatewayAttachmentId
        case transitGatewayRouteTableId
    }

    public func validate() throws {
    }
}

public struct TransitGatewayRequestOptions: Codable, Equatable {
    public var amazonSideAsn: Long?
    public var autoAcceptSharedAttachments: AutoAcceptSharedAttachmentsValue?
    public var defaultRouteTableAssociation: DefaultRouteTableAssociationValue?
    public var defaultRouteTablePropagation: DefaultRouteTablePropagationValue?
    public var dnsSupport: DnsSupportValue?
    public var vpnEcmpSupport: VpnEcmpSupportValue?

    public init(amazonSideAsn: Long? = nil,
                autoAcceptSharedAttachments: AutoAcceptSharedAttachmentsValue? = nil,
                defaultRouteTableAssociation: DefaultRouteTableAssociationValue? = nil,
                defaultRouteTablePropagation: DefaultRouteTablePropagationValue? = nil,
                dnsSupport: DnsSupportValue? = nil,
                vpnEcmpSupport: VpnEcmpSupportValue? = nil) {
        self.amazonSideAsn = amazonSideAsn
        self.autoAcceptSharedAttachments = autoAcceptSharedAttachments
        self.defaultRouteTableAssociation = defaultRouteTableAssociation
        self.defaultRouteTablePropagation = defaultRouteTablePropagation
        self.dnsSupport = dnsSupport
        self.vpnEcmpSupport = vpnEcmpSupport
    }

    enum CodingKeys: String, CodingKey {
        case amazonSideAsn = "AmazonSideAsn"
        case autoAcceptSharedAttachments = "AutoAcceptSharedAttachments"
        case defaultRouteTableAssociation = "DefaultRouteTableAssociation"
        case defaultRouteTablePropagation = "DefaultRouteTablePropagation"
        case dnsSupport = "DnsSupport"
        case vpnEcmpSupport = "VpnEcmpSupport"
    }

    public func validate() throws {
    }
}

public struct TransitGatewayRoute: Codable, Equatable {
    public var destinationCidrBlock: String?
    public var state: TransitGatewayRouteState?
    public var transitGatewayAttachments: TransitGatewayRouteAttachmentList?
    public var type: TransitGatewayRouteType?

    public init(destinationCidrBlock: String? = nil,
                state: TransitGatewayRouteState? = nil,
                transitGatewayAttachments: TransitGatewayRouteAttachmentList? = nil,
                type: TransitGatewayRouteType? = nil) {
        self.destinationCidrBlock = destinationCidrBlock
        self.state = state
        self.transitGatewayAttachments = transitGatewayAttachments
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case destinationCidrBlock
        case state
        case transitGatewayAttachments
        case type
    }

    public func validate() throws {
    }
}

public struct TransitGatewayRouteAttachment: Codable, Equatable {
    public var resourceId: String?
    public var resourceType: TransitGatewayAttachmentResourceType?
    public var transitGatewayAttachmentId: String?

    public init(resourceId: String? = nil,
                resourceType: TransitGatewayAttachmentResourceType? = nil,
                transitGatewayAttachmentId: String? = nil) {
        self.resourceId = resourceId
        self.resourceType = resourceType
        self.transitGatewayAttachmentId = transitGatewayAttachmentId
    }

    enum CodingKeys: String, CodingKey {
        case resourceId
        case resourceType
        case transitGatewayAttachmentId
    }

    public func validate() throws {
    }
}

public struct TransitGatewayRouteTable: Codable, Equatable {
    public var creationTime: DateTime?
    public var defaultAssociationRouteTable: Boolean?
    public var defaultPropagationRouteTable: Boolean?
    public var state: TransitGatewayRouteTableState?
    public var tags: TagList?
    public var transitGatewayId: String?
    public var transitGatewayRouteTableId: String?

    public init(creationTime: DateTime? = nil,
                defaultAssociationRouteTable: Boolean? = nil,
                defaultPropagationRouteTable: Boolean? = nil,
                state: TransitGatewayRouteTableState? = nil,
                tags: TagList? = nil,
                transitGatewayId: String? = nil,
                transitGatewayRouteTableId: String? = nil) {
        self.creationTime = creationTime
        self.defaultAssociationRouteTable = defaultAssociationRouteTable
        self.defaultPropagationRouteTable = defaultPropagationRouteTable
        self.state = state
        self.tags = tags
        self.transitGatewayId = transitGatewayId
        self.transitGatewayRouteTableId = transitGatewayRouteTableId
    }

    enum CodingKeys: String, CodingKey {
        case creationTime
        case defaultAssociationRouteTable
        case defaultPropagationRouteTable
        case state
        case tags = "tagSet"
        case transitGatewayId
        case transitGatewayRouteTableId
    }

    public func validate() throws {
    }
}

public struct TransitGatewayRouteTableAssociation: Codable, Equatable {
    public var resourceId: String?
    public var resourceType: TransitGatewayAttachmentResourceType?
    public var state: TransitGatewayAssociationState?
    public var transitGatewayAttachmentId: String?

    public init(resourceId: String? = nil,
                resourceType: TransitGatewayAttachmentResourceType? = nil,
                state: TransitGatewayAssociationState? = nil,
                transitGatewayAttachmentId: String? = nil) {
        self.resourceId = resourceId
        self.resourceType = resourceType
        self.state = state
        self.transitGatewayAttachmentId = transitGatewayAttachmentId
    }

    enum CodingKeys: String, CodingKey {
        case resourceId
        case resourceType
        case state
        case transitGatewayAttachmentId
    }

    public func validate() throws {
    }
}

public struct TransitGatewayRouteTablePropagation: Codable, Equatable {
    public var resourceId: String?
    public var resourceType: TransitGatewayAttachmentResourceType?
    public var state: TransitGatewayPropagationState?
    public var transitGatewayAttachmentId: String?

    public init(resourceId: String? = nil,
                resourceType: TransitGatewayAttachmentResourceType? = nil,
                state: TransitGatewayPropagationState? = nil,
                transitGatewayAttachmentId: String? = nil) {
        self.resourceId = resourceId
        self.resourceType = resourceType
        self.state = state
        self.transitGatewayAttachmentId = transitGatewayAttachmentId
    }

    enum CodingKeys: String, CodingKey {
        case resourceId
        case resourceType
        case state
        case transitGatewayAttachmentId
    }

    public func validate() throws {
    }
}

public struct TransitGatewayVpcAttachment: Codable, Equatable {
    public var creationTime: DateTime?
    public var options: TransitGatewayVpcAttachmentOptions?
    public var state: TransitGatewayAttachmentState?
    public var subnetIds: ValueStringList?
    public var tags: TagList?
    public var transitGatewayAttachmentId: String?
    public var transitGatewayId: String?
    public var vpcId: String?
    public var vpcOwnerId: String?

    public init(creationTime: DateTime? = nil,
                options: TransitGatewayVpcAttachmentOptions? = nil,
                state: TransitGatewayAttachmentState? = nil,
                subnetIds: ValueStringList? = nil,
                tags: TagList? = nil,
                transitGatewayAttachmentId: String? = nil,
                transitGatewayId: String? = nil,
                vpcId: String? = nil,
                vpcOwnerId: String? = nil) {
        self.creationTime = creationTime
        self.options = options
        self.state = state
        self.subnetIds = subnetIds
        self.tags = tags
        self.transitGatewayAttachmentId = transitGatewayAttachmentId
        self.transitGatewayId = transitGatewayId
        self.vpcId = vpcId
        self.vpcOwnerId = vpcOwnerId
    }

    enum CodingKeys: String, CodingKey {
        case creationTime
        case options
        case state
        case subnetIds
        case tags = "tagSet"
        case transitGatewayAttachmentId
        case transitGatewayId
        case vpcId
        case vpcOwnerId
    }

    public func validate() throws {
        try options?.validate()
    }
}

public struct TransitGatewayVpcAttachmentOptions: Codable, Equatable {
    public var dnsSupport: DnsSupportValue?
    public var ipv6Support: Ipv6SupportValue?

    public init(dnsSupport: DnsSupportValue? = nil,
                ipv6Support: Ipv6SupportValue? = nil) {
        self.dnsSupport = dnsSupport
        self.ipv6Support = ipv6Support
    }

    enum CodingKeys: String, CodingKey {
        case dnsSupport
        case ipv6Support
    }

    public func validate() throws {
    }
}

public struct UnassignIpv6AddressesRequest: Codable, Equatable {
    public var ipv6Addresses: Ipv6AddressList
    public var networkInterfaceId: String

    public init(ipv6Addresses: Ipv6AddressList,
                networkInterfaceId: String) {
        self.ipv6Addresses = ipv6Addresses
        self.networkInterfaceId = networkInterfaceId
    }

    enum CodingKeys: String, CodingKey {
        case ipv6Addresses
        case networkInterfaceId
    }

    public func validate() throws {
    }
}

public struct UnassignIpv6AddressesResult: Codable, Equatable {
    public var networkInterfaceId: String?
    public var unassignedIpv6Addresses: Ipv6AddressList?

    public init(networkInterfaceId: String? = nil,
                unassignedIpv6Addresses: Ipv6AddressList? = nil) {
        self.networkInterfaceId = networkInterfaceId
        self.unassignedIpv6Addresses = unassignedIpv6Addresses
    }

    enum CodingKeys: String, CodingKey {
        case networkInterfaceId
        case unassignedIpv6Addresses
    }

    public func validate() throws {
    }
}

public struct UnassignPrivateIpAddressesRequest: Codable, Equatable {
    public var networkInterfaceId: String
    public var privateIpAddresses: PrivateIpAddressStringList

    public init(networkInterfaceId: String,
                privateIpAddresses: PrivateIpAddressStringList) {
        self.networkInterfaceId = networkInterfaceId
        self.privateIpAddresses = privateIpAddresses
    }

    enum CodingKeys: String, CodingKey {
        case networkInterfaceId
        case privateIpAddresses = "privateIpAddress"
    }

    public func validate() throws {
    }
}

public struct UnmonitorInstancesRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var instanceIds: InstanceIdStringList

    public init(dryRun: Boolean? = nil,
                instanceIds: InstanceIdStringList) {
        self.dryRun = dryRun
        self.instanceIds = instanceIds
    }

    enum CodingKeys: String, CodingKey {
        case dryRun
        case instanceIds = "InstanceId"
    }

    public func validate() throws {
    }
}

public struct UnmonitorInstancesResult: Codable, Equatable {
    public var instanceMonitorings: InstanceMonitoringList?

    public init(instanceMonitorings: InstanceMonitoringList? = nil) {
        self.instanceMonitorings = instanceMonitorings
    }

    enum CodingKeys: String, CodingKey {
        case instanceMonitorings = "instancesSet"
    }

    public func validate() throws {
    }
}

public struct UnsuccessfulInstanceCreditSpecificationItem: Codable, Equatable {
    public var error: UnsuccessfulInstanceCreditSpecificationItemError?
    public var instanceId: String?

    public init(error: UnsuccessfulInstanceCreditSpecificationItemError? = nil,
                instanceId: String? = nil) {
        self.error = error
        self.instanceId = instanceId
    }

    enum CodingKeys: String, CodingKey {
        case error
        case instanceId
    }

    public func validate() throws {
        try error?.validate()
    }
}

public struct UnsuccessfulInstanceCreditSpecificationItemError: Codable, Equatable {
    public var code: UnsuccessfulInstanceCreditSpecificationErrorCode?
    public var message: String?

    public init(code: UnsuccessfulInstanceCreditSpecificationErrorCode? = nil,
                message: String? = nil) {
        self.code = code
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case code
        case message
    }

    public func validate() throws {
    }
}

public struct UnsuccessfulItem: Codable, Equatable {
    public var error: UnsuccessfulItemError?
    public var resourceId: String?

    public init(error: UnsuccessfulItemError? = nil,
                resourceId: String? = nil) {
        self.error = error
        self.resourceId = resourceId
    }

    enum CodingKeys: String, CodingKey {
        case error
        case resourceId
    }

    public func validate() throws {
        try error?.validate()
    }
}

public struct UnsuccessfulItemError: Codable, Equatable {
    public var code: String?
    public var message: String?

    public init(code: String? = nil,
                message: String? = nil) {
        self.code = code
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case code
        case message
    }

    public func validate() throws {
    }
}

public struct UpdateSecurityGroupRuleDescriptionsEgressRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var groupId: String?
    public var groupName: String?
    public var ipPermissions: IpPermissionList

    public init(dryRun: Boolean? = nil,
                groupId: String? = nil,
                groupName: String? = nil,
                ipPermissions: IpPermissionList) {
        self.dryRun = dryRun
        self.groupId = groupId
        self.groupName = groupName
        self.ipPermissions = ipPermissions
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case groupId = "GroupId"
        case groupName = "GroupName"
        case ipPermissions = "IpPermissions"
    }

    public func validate() throws {
    }
}

public struct UpdateSecurityGroupRuleDescriptionsEgressResult: Codable, Equatable {
    public var `return`: Boolean?

    public init(`return`: Boolean? = nil) {
        self.`return` = `return`
    }

    enum CodingKeys: String, CodingKey {
        case `return` = "return"
    }

    public func validate() throws {
    }
}

public struct UpdateSecurityGroupRuleDescriptionsIngressRequest: Codable, Equatable {
    public var dryRun: Boolean?
    public var groupId: String?
    public var groupName: String?
    public var ipPermissions: IpPermissionList

    public init(dryRun: Boolean? = nil,
                groupId: String? = nil,
                groupName: String? = nil,
                ipPermissions: IpPermissionList) {
        self.dryRun = dryRun
        self.groupId = groupId
        self.groupName = groupName
        self.ipPermissions = ipPermissions
    }

    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case groupId = "GroupId"
        case groupName = "GroupName"
        case ipPermissions = "IpPermissions"
    }

    public func validate() throws {
    }
}

public struct UpdateSecurityGroupRuleDescriptionsIngressResult: Codable, Equatable {
    public var `return`: Boolean?

    public init(`return`: Boolean? = nil) {
        self.`return` = `return`
    }

    enum CodingKeys: String, CodingKey {
        case `return` = "return"
    }

    public func validate() throws {
    }
}

public struct UserBucket: Codable, Equatable {
    public var s3Bucket: String?
    public var s3Key: String?

    public init(s3Bucket: String? = nil,
                s3Key: String? = nil) {
        self.s3Bucket = s3Bucket
        self.s3Key = s3Key
    }

    enum CodingKeys: String, CodingKey {
        case s3Bucket = "S3Bucket"
        case s3Key = "S3Key"
    }

    public func validate() throws {
    }
}

public struct UserBucketDetails: Codable, Equatable {
    public var s3Bucket: String?
    public var s3Key: String?

    public init(s3Bucket: String? = nil,
                s3Key: String? = nil) {
        self.s3Bucket = s3Bucket
        self.s3Key = s3Key
    }

    enum CodingKeys: String, CodingKey {
        case s3Bucket
        case s3Key
    }

    public func validate() throws {
    }
}

public struct UserData: Codable, Equatable {
    public var data: String?

    public init(data: String? = nil) {
        self.data = data
    }

    enum CodingKeys: String, CodingKey {
        case data
    }

    public func validate() throws {
    }
}

public struct UserIdGroupPair: Codable, Equatable {
    public var description: String?
    public var groupId: String?
    public var groupName: String?
    public var peeringStatus: String?
    public var userId: String?
    public var vpcId: String?
    public var vpcPeeringConnectionId: String?

    public init(description: String? = nil,
                groupId: String? = nil,
                groupName: String? = nil,
                peeringStatus: String? = nil,
                userId: String? = nil,
                vpcId: String? = nil,
                vpcPeeringConnectionId: String? = nil) {
        self.description = description
        self.groupId = groupId
        self.groupName = groupName
        self.peeringStatus = peeringStatus
        self.userId = userId
        self.vpcId = vpcId
        self.vpcPeeringConnectionId = vpcPeeringConnectionId
    }

    enum CodingKeys: String, CodingKey {
        case description
        case groupId
        case groupName
        case peeringStatus
        case userId
        case vpcId
        case vpcPeeringConnectionId
    }

    public func validate() throws {
    }
}

public struct VgwTelemetry: Codable, Equatable {
    public var acceptedRouteCount: Integer?
    public var lastStatusChange: DateTime?
    public var outsideIpAddress: String?
    public var status: TelemetryStatus?
    public var statusMessage: String?

    public init(acceptedRouteCount: Integer? = nil,
                lastStatusChange: DateTime? = nil,
                outsideIpAddress: String? = nil,
                status: TelemetryStatus? = nil,
                statusMessage: String? = nil) {
        self.acceptedRouteCount = acceptedRouteCount
        self.lastStatusChange = lastStatusChange
        self.outsideIpAddress = outsideIpAddress
        self.status = status
        self.statusMessage = statusMessage
    }

    enum CodingKeys: String, CodingKey {
        case acceptedRouteCount
        case lastStatusChange
        case outsideIpAddress
        case status
        case statusMessage
    }

    public func validate() throws {
    }
}

public struct Volume: Codable, Equatable {
    public var attachments: VolumeAttachmentList?
    public var availabilityZone: String?
    public var createTime: DateTime?
    public var encrypted: Boolean?
    public var iops: Integer?
    public var kmsKeyId: String?
    public var size: Integer?
    public var snapshotId: String?
    public var state: VolumeState?
    public var tags: TagList?
    public var volumeId: String?
    public var volumeType: VolumeType?

    public init(attachments: VolumeAttachmentList? = nil,
                availabilityZone: String? = nil,
                createTime: DateTime? = nil,
                encrypted: Boolean? = nil,
                iops: Integer? = nil,
                kmsKeyId: String? = nil,
                size: Integer? = nil,
                snapshotId: String? = nil,
                state: VolumeState? = nil,
                tags: TagList? = nil,
                volumeId: String? = nil,
                volumeType: VolumeType? = nil) {
        self.attachments = attachments
        self.availabilityZone = availabilityZone
        self.createTime = createTime
        self.encrypted = encrypted
        self.iops = iops
        self.kmsKeyId = kmsKeyId
        self.size = size
        self.snapshotId = snapshotId
        self.state = state
        self.tags = tags
        self.volumeId = volumeId
        self.volumeType = volumeType
    }

    enum CodingKeys: String, CodingKey {
        case attachments = "attachmentSet"
        case availabilityZone
        case createTime
        case encrypted
        case iops
        case kmsKeyId
        case size
        case snapshotId
        case state = "status"
        case tags = "tagSet"
        case volumeId
        case volumeType
    }

    public func validate() throws {
    }
}

public struct VolumeAttachment: Codable, Equatable {
    public var attachTime: DateTime?
    public var deleteOnTermination: Boolean?
    public var device: String?
    public var instanceId: String?
    public var state: VolumeAttachmentState?
    public var volumeId: String?

    public init(attachTime: DateTime? = nil,
                deleteOnTermination: Boolean? = nil,
                device: String? = nil,
                instanceId: String? = nil,
                state: VolumeAttachmentState? = nil,
                volumeId: String? = nil) {
        self.attachTime = attachTime
        self.deleteOnTermination = deleteOnTermination
        self.device = device
        self.instanceId = instanceId
        self.state = state
        self.volumeId = volumeId
    }

    enum CodingKeys: String, CodingKey {
        case attachTime
        case deleteOnTermination
        case device
        case instanceId
        case state = "status"
        case volumeId
    }

    public func validate() throws {
    }
}

public struct VolumeDetail: Codable, Equatable {
    public var size: Long

    public init(size: Long) {
        self.size = size
    }

    enum CodingKeys: String, CodingKey {
        case size
    }

    public func validate() throws {
    }
}

public struct VolumeModification: Codable, Equatable {
    public var endTime: DateTime?
    public var modificationState: VolumeModificationState?
    public var originalIops: Integer?
    public var originalSize: Integer?
    public var originalVolumeType: VolumeType?
    public var progress: Long?
    public var startTime: DateTime?
    public var statusMessage: String?
    public var targetIops: Integer?
    public var targetSize: Integer?
    public var targetVolumeType: VolumeType?
    public var volumeId: String?

    public init(endTime: DateTime? = nil,
                modificationState: VolumeModificationState? = nil,
                originalIops: Integer? = nil,
                originalSize: Integer? = nil,
                originalVolumeType: VolumeType? = nil,
                progress: Long? = nil,
                startTime: DateTime? = nil,
                statusMessage: String? = nil,
                targetIops: Integer? = nil,
                targetSize: Integer? = nil,
                targetVolumeType: VolumeType? = nil,
                volumeId: String? = nil) {
        self.endTime = endTime
        self.modificationState = modificationState
        self.originalIops = originalIops
        self.originalSize = originalSize
        self.originalVolumeType = originalVolumeType
        self.progress = progress
        self.startTime = startTime
        self.statusMessage = statusMessage
        self.targetIops = targetIops
        self.targetSize = targetSize
        self.targetVolumeType = targetVolumeType
        self.volumeId = volumeId
    }

    enum CodingKeys: String, CodingKey {
        case endTime
        case modificationState
        case originalIops
        case originalSize
        case originalVolumeType
        case progress
        case startTime
        case statusMessage
        case targetIops
        case targetSize
        case targetVolumeType
        case volumeId
    }

    public func validate() throws {
    }
}

public struct VolumeStatusAction: Codable, Equatable {
    public var code: String?
    public var description: String?
    public var eventId: String?
    public var eventType: String?

    public init(code: String? = nil,
                description: String? = nil,
                eventId: String? = nil,
                eventType: String? = nil) {
        self.code = code
        self.description = description
        self.eventId = eventId
        self.eventType = eventType
    }

    enum CodingKeys: String, CodingKey {
        case code
        case description
        case eventId
        case eventType
    }

    public func validate() throws {
    }
}

public struct VolumeStatusDetails: Codable, Equatable {
    public var name: VolumeStatusName?
    public var status: String?

    public init(name: VolumeStatusName? = nil,
                status: String? = nil) {
        self.name = name
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case name
        case status
    }

    public func validate() throws {
    }
}

public struct VolumeStatusEvent: Codable, Equatable {
    public var description: String?
    public var eventId: String?
    public var eventType: String?
    public var notAfter: DateTime?
    public var notBefore: DateTime?

    public init(description: String? = nil,
                eventId: String? = nil,
                eventType: String? = nil,
                notAfter: DateTime? = nil,
                notBefore: DateTime? = nil) {
        self.description = description
        self.eventId = eventId
        self.eventType = eventType
        self.notAfter = notAfter
        self.notBefore = notBefore
    }

    enum CodingKeys: String, CodingKey {
        case description
        case eventId
        case eventType
        case notAfter
        case notBefore
    }

    public func validate() throws {
    }
}

public struct VolumeStatusInfo: Codable, Equatable {
    public var details: VolumeStatusDetailsList?
    public var status: VolumeStatusInfoStatus?

    public init(details: VolumeStatusDetailsList? = nil,
                status: VolumeStatusInfoStatus? = nil) {
        self.details = details
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case details
        case status
    }

    public func validate() throws {
    }
}

public struct VolumeStatusItem: Codable, Equatable {
    public var actions: VolumeStatusActionsList?
    public var availabilityZone: String?
    public var events: VolumeStatusEventsList?
    public var volumeId: String?
    public var volumeStatus: VolumeStatusInfo?

    public init(actions: VolumeStatusActionsList? = nil,
                availabilityZone: String? = nil,
                events: VolumeStatusEventsList? = nil,
                volumeId: String? = nil,
                volumeStatus: VolumeStatusInfo? = nil) {
        self.actions = actions
        self.availabilityZone = availabilityZone
        self.events = events
        self.volumeId = volumeId
        self.volumeStatus = volumeStatus
    }

    enum CodingKeys: String, CodingKey {
        case actions = "actionsSet"
        case availabilityZone
        case events = "eventsSet"
        case volumeId
        case volumeStatus
    }

    public func validate() throws {
        try volumeStatus?.validate()
    }
}

public struct Vpc: Codable, Equatable {
    public var cidrBlock: String?
    public var cidrBlockAssociationSet: VpcCidrBlockAssociationSet?
    public var dhcpOptionsId: String?
    public var instanceTenancy: Tenancy?
    public var ipv6CidrBlockAssociationSet: VpcIpv6CidrBlockAssociationSet?
    public var isDefault: Boolean?
    public var ownerId: String?
    public var state: VpcState?
    public var tags: TagList?
    public var vpcId: String?

    public init(cidrBlock: String? = nil,
                cidrBlockAssociationSet: VpcCidrBlockAssociationSet? = nil,
                dhcpOptionsId: String? = nil,
                instanceTenancy: Tenancy? = nil,
                ipv6CidrBlockAssociationSet: VpcIpv6CidrBlockAssociationSet? = nil,
                isDefault: Boolean? = nil,
                ownerId: String? = nil,
                state: VpcState? = nil,
                tags: TagList? = nil,
                vpcId: String? = nil) {
        self.cidrBlock = cidrBlock
        self.cidrBlockAssociationSet = cidrBlockAssociationSet
        self.dhcpOptionsId = dhcpOptionsId
        self.instanceTenancy = instanceTenancy
        self.ipv6CidrBlockAssociationSet = ipv6CidrBlockAssociationSet
        self.isDefault = isDefault
        self.ownerId = ownerId
        self.state = state
        self.tags = tags
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case cidrBlock
        case cidrBlockAssociationSet
        case dhcpOptionsId
        case instanceTenancy
        case ipv6CidrBlockAssociationSet
        case isDefault
        case ownerId
        case state
        case tags = "tagSet"
        case vpcId
    }

    public func validate() throws {
    }
}

public struct VpcAttachment: Codable, Equatable {
    public var state: AttachmentStatus?
    public var vpcId: String?

    public init(state: AttachmentStatus? = nil,
                vpcId: String? = nil) {
        self.state = state
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case state
        case vpcId
    }

    public func validate() throws {
    }
}

public struct VpcCidrBlockAssociation: Codable, Equatable {
    public var associationId: String?
    public var cidrBlock: String?
    public var cidrBlockState: VpcCidrBlockState?

    public init(associationId: String? = nil,
                cidrBlock: String? = nil,
                cidrBlockState: VpcCidrBlockState? = nil) {
        self.associationId = associationId
        self.cidrBlock = cidrBlock
        self.cidrBlockState = cidrBlockState
    }

    enum CodingKeys: String, CodingKey {
        case associationId
        case cidrBlock
        case cidrBlockState
    }

    public func validate() throws {
        try cidrBlockState?.validate()
    }
}

public struct VpcCidrBlockState: Codable, Equatable {
    public var state: VpcCidrBlockStateCode?
    public var statusMessage: String?

    public init(state: VpcCidrBlockStateCode? = nil,
                statusMessage: String? = nil) {
        self.state = state
        self.statusMessage = statusMessage
    }

    enum CodingKeys: String, CodingKey {
        case state
        case statusMessage
    }

    public func validate() throws {
    }
}

public struct VpcClassicLink: Codable, Equatable {
    public var classicLinkEnabled: Boolean?
    public var tags: TagList?
    public var vpcId: String?

    public init(classicLinkEnabled: Boolean? = nil,
                tags: TagList? = nil,
                vpcId: String? = nil) {
        self.classicLinkEnabled = classicLinkEnabled
        self.tags = tags
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case classicLinkEnabled
        case tags = "tagSet"
        case vpcId
    }

    public func validate() throws {
    }
}

public struct VpcEndpoint: Codable, Equatable {
    public var creationTimestamp: MillisecondDateTime?
    public var dnsEntries: DnsEntrySet?
    public var groups: GroupIdentifierSet?
    public var networkInterfaceIds: ValueStringList?
    public var ownerId: String?
    public var policyDocument: String?
    public var privateDnsEnabled: Boolean?
    public var requesterManaged: Boolean?
    public var routeTableIds: ValueStringList?
    public var serviceName: String?
    public var state: State?
    public var subnetIds: ValueStringList?
    public var tags: TagList?
    public var vpcEndpointId: String?
    public var vpcEndpointType: VpcEndpointType?
    public var vpcId: String?

    public init(creationTimestamp: MillisecondDateTime? = nil,
                dnsEntries: DnsEntrySet? = nil,
                groups: GroupIdentifierSet? = nil,
                networkInterfaceIds: ValueStringList? = nil,
                ownerId: String? = nil,
                policyDocument: String? = nil,
                privateDnsEnabled: Boolean? = nil,
                requesterManaged: Boolean? = nil,
                routeTableIds: ValueStringList? = nil,
                serviceName: String? = nil,
                state: State? = nil,
                subnetIds: ValueStringList? = nil,
                tags: TagList? = nil,
                vpcEndpointId: String? = nil,
                vpcEndpointType: VpcEndpointType? = nil,
                vpcId: String? = nil) {
        self.creationTimestamp = creationTimestamp
        self.dnsEntries = dnsEntries
        self.groups = groups
        self.networkInterfaceIds = networkInterfaceIds
        self.ownerId = ownerId
        self.policyDocument = policyDocument
        self.privateDnsEnabled = privateDnsEnabled
        self.requesterManaged = requesterManaged
        self.routeTableIds = routeTableIds
        self.serviceName = serviceName
        self.state = state
        self.subnetIds = subnetIds
        self.tags = tags
        self.vpcEndpointId = vpcEndpointId
        self.vpcEndpointType = vpcEndpointType
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case creationTimestamp
        case dnsEntries = "dnsEntrySet"
        case groups = "groupSet"
        case networkInterfaceIds = "networkInterfaceIdSet"
        case ownerId
        case policyDocument
        case privateDnsEnabled
        case requesterManaged
        case routeTableIds = "routeTableIdSet"
        case serviceName
        case state
        case subnetIds = "subnetIdSet"
        case tags = "tagSet"
        case vpcEndpointId
        case vpcEndpointType
        case vpcId
    }

    public func validate() throws {
    }
}

public struct VpcEndpointConnection: Codable, Equatable {
    public var creationTimestamp: MillisecondDateTime?
    public var dnsEntries: DnsEntrySet?
    public var networkLoadBalancerArns: ValueStringList?
    public var serviceId: String?
    public var vpcEndpointId: String?
    public var vpcEndpointOwner: String?
    public var vpcEndpointState: State?

    public init(creationTimestamp: MillisecondDateTime? = nil,
                dnsEntries: DnsEntrySet? = nil,
                networkLoadBalancerArns: ValueStringList? = nil,
                serviceId: String? = nil,
                vpcEndpointId: String? = nil,
                vpcEndpointOwner: String? = nil,
                vpcEndpointState: State? = nil) {
        self.creationTimestamp = creationTimestamp
        self.dnsEntries = dnsEntries
        self.networkLoadBalancerArns = networkLoadBalancerArns
        self.serviceId = serviceId
        self.vpcEndpointId = vpcEndpointId
        self.vpcEndpointOwner = vpcEndpointOwner
        self.vpcEndpointState = vpcEndpointState
    }

    enum CodingKeys: String, CodingKey {
        case creationTimestamp
        case dnsEntries = "dnsEntrySet"
        case networkLoadBalancerArns = "networkLoadBalancerArnSet"
        case serviceId
        case vpcEndpointId
        case vpcEndpointOwner
        case vpcEndpointState
    }

    public func validate() throws {
    }
}

public struct VpcIpv6CidrBlockAssociation: Codable, Equatable {
    public var associationId: String?
    public var ipv6CidrBlock: String?
    public var ipv6CidrBlockState: VpcCidrBlockState?

    public init(associationId: String? = nil,
                ipv6CidrBlock: String? = nil,
                ipv6CidrBlockState: VpcCidrBlockState? = nil) {
        self.associationId = associationId
        self.ipv6CidrBlock = ipv6CidrBlock
        self.ipv6CidrBlockState = ipv6CidrBlockState
    }

    enum CodingKeys: String, CodingKey {
        case associationId
        case ipv6CidrBlock
        case ipv6CidrBlockState
    }

    public func validate() throws {
        try ipv6CidrBlockState?.validate()
    }
}

public struct VpcPeeringConnection: Codable, Equatable {
    public var accepterVpcInfo: VpcPeeringConnectionVpcInfo?
    public var expirationTime: DateTime?
    public var requesterVpcInfo: VpcPeeringConnectionVpcInfo?
    public var status: VpcPeeringConnectionStateReason?
    public var tags: TagList?
    public var vpcPeeringConnectionId: String?

    public init(accepterVpcInfo: VpcPeeringConnectionVpcInfo? = nil,
                expirationTime: DateTime? = nil,
                requesterVpcInfo: VpcPeeringConnectionVpcInfo? = nil,
                status: VpcPeeringConnectionStateReason? = nil,
                tags: TagList? = nil,
                vpcPeeringConnectionId: String? = nil) {
        self.accepterVpcInfo = accepterVpcInfo
        self.expirationTime = expirationTime
        self.requesterVpcInfo = requesterVpcInfo
        self.status = status
        self.tags = tags
        self.vpcPeeringConnectionId = vpcPeeringConnectionId
    }

    enum CodingKeys: String, CodingKey {
        case accepterVpcInfo
        case expirationTime
        case requesterVpcInfo
        case status
        case tags = "tagSet"
        case vpcPeeringConnectionId
    }

    public func validate() throws {
        try accepterVpcInfo?.validate()
        try requesterVpcInfo?.validate()
        try status?.validate()
    }
}

public struct VpcPeeringConnectionOptionsDescription: Codable, Equatable {
    public var allowDnsResolutionFromRemoteVpc: Boolean?
    public var allowEgressFromLocalClassicLinkToRemoteVpc: Boolean?
    public var allowEgressFromLocalVpcToRemoteClassicLink: Boolean?

    public init(allowDnsResolutionFromRemoteVpc: Boolean? = nil,
                allowEgressFromLocalClassicLinkToRemoteVpc: Boolean? = nil,
                allowEgressFromLocalVpcToRemoteClassicLink: Boolean? = nil) {
        self.allowDnsResolutionFromRemoteVpc = allowDnsResolutionFromRemoteVpc
        self.allowEgressFromLocalClassicLinkToRemoteVpc = allowEgressFromLocalClassicLinkToRemoteVpc
        self.allowEgressFromLocalVpcToRemoteClassicLink = allowEgressFromLocalVpcToRemoteClassicLink
    }

    enum CodingKeys: String, CodingKey {
        case allowDnsResolutionFromRemoteVpc
        case allowEgressFromLocalClassicLinkToRemoteVpc
        case allowEgressFromLocalVpcToRemoteClassicLink
    }

    public func validate() throws {
    }
}

public struct VpcPeeringConnectionStateReason: Codable, Equatable {
    public var code: VpcPeeringConnectionStateReasonCode?
    public var message: String?

    public init(code: VpcPeeringConnectionStateReasonCode? = nil,
                message: String? = nil) {
        self.code = code
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case code
        case message
    }

    public func validate() throws {
    }
}

public struct VpcPeeringConnectionVpcInfo: Codable, Equatable {
    public var cidrBlock: String?
    public var cidrBlockSet: CidrBlockSet?
    public var ipv6CidrBlockSet: Ipv6CidrBlockSet?
    public var ownerId: String?
    public var peeringOptions: VpcPeeringConnectionOptionsDescription?
    public var region: String?
    public var vpcId: String?

    public init(cidrBlock: String? = nil,
                cidrBlockSet: CidrBlockSet? = nil,
                ipv6CidrBlockSet: Ipv6CidrBlockSet? = nil,
                ownerId: String? = nil,
                peeringOptions: VpcPeeringConnectionOptionsDescription? = nil,
                region: String? = nil,
                vpcId: String? = nil) {
        self.cidrBlock = cidrBlock
        self.cidrBlockSet = cidrBlockSet
        self.ipv6CidrBlockSet = ipv6CidrBlockSet
        self.ownerId = ownerId
        self.peeringOptions = peeringOptions
        self.region = region
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case cidrBlock
        case cidrBlockSet
        case ipv6CidrBlockSet
        case ownerId
        case peeringOptions
        case region
        case vpcId
    }

    public func validate() throws {
        try peeringOptions?.validate()
    }
}

public struct VpnConnection: Codable, Equatable {
    public var category: String?
    public var customerGatewayConfiguration: String?
    public var customerGatewayId: String?
    public var options: VpnConnectionOptions?
    public var routes: VpnStaticRouteList?
    public var state: VpnState?
    public var tags: TagList?
    public var transitGatewayId: String?
    public var type: GatewayType?
    public var vgwTelemetry: VgwTelemetryList?
    public var vpnConnectionId: String?
    public var vpnGatewayId: String?

    public init(category: String? = nil,
                customerGatewayConfiguration: String? = nil,
                customerGatewayId: String? = nil,
                options: VpnConnectionOptions? = nil,
                routes: VpnStaticRouteList? = nil,
                state: VpnState? = nil,
                tags: TagList? = nil,
                transitGatewayId: String? = nil,
                type: GatewayType? = nil,
                vgwTelemetry: VgwTelemetryList? = nil,
                vpnConnectionId: String? = nil,
                vpnGatewayId: String? = nil) {
        self.category = category
        self.customerGatewayConfiguration = customerGatewayConfiguration
        self.customerGatewayId = customerGatewayId
        self.options = options
        self.routes = routes
        self.state = state
        self.tags = tags
        self.transitGatewayId = transitGatewayId
        self.type = type
        self.vgwTelemetry = vgwTelemetry
        self.vpnConnectionId = vpnConnectionId
        self.vpnGatewayId = vpnGatewayId
    }

    enum CodingKeys: String, CodingKey {
        case category
        case customerGatewayConfiguration
        case customerGatewayId
        case options
        case routes
        case state
        case tags = "tagSet"
        case transitGatewayId
        case type
        case vgwTelemetry
        case vpnConnectionId
        case vpnGatewayId
    }

    public func validate() throws {
        try options?.validate()
    }
}

public struct VpnConnectionOptions: Codable, Equatable {
    public var staticRoutesOnly: Boolean?

    public init(staticRoutesOnly: Boolean? = nil) {
        self.staticRoutesOnly = staticRoutesOnly
    }

    enum CodingKeys: String, CodingKey {
        case staticRoutesOnly
    }

    public func validate() throws {
    }
}

public struct VpnConnectionOptionsSpecification: Codable, Equatable {
    public var staticRoutesOnly: Boolean?
    public var tunnelOptions: TunnelOptionsList?

    public init(staticRoutesOnly: Boolean? = nil,
                tunnelOptions: TunnelOptionsList? = nil) {
        self.staticRoutesOnly = staticRoutesOnly
        self.tunnelOptions = tunnelOptions
    }

    enum CodingKeys: String, CodingKey {
        case staticRoutesOnly
        case tunnelOptions = "TunnelOptions"
    }

    public func validate() throws {
    }
}

public struct VpnGateway: Codable, Equatable {
    public var amazonSideAsn: Long?
    public var availabilityZone: String?
    public var state: VpnState?
    public var tags: TagList?
    public var type: GatewayType?
    public var vpcAttachments: VpcAttachmentList?
    public var vpnGatewayId: String?

    public init(amazonSideAsn: Long? = nil,
                availabilityZone: String? = nil,
                state: VpnState? = nil,
                tags: TagList? = nil,
                type: GatewayType? = nil,
                vpcAttachments: VpcAttachmentList? = nil,
                vpnGatewayId: String? = nil) {
        self.amazonSideAsn = amazonSideAsn
        self.availabilityZone = availabilityZone
        self.state = state
        self.tags = tags
        self.type = type
        self.vpcAttachments = vpcAttachments
        self.vpnGatewayId = vpnGatewayId
    }

    enum CodingKeys: String, CodingKey {
        case amazonSideAsn
        case availabilityZone
        case state
        case tags = "tagSet"
        case type
        case vpcAttachments = "attachments"
        case vpnGatewayId
    }

    public func validate() throws {
    }
}

public struct VpnStaticRoute: Codable, Equatable {
    public var destinationCidrBlock: String?
    public var source: VpnStaticRouteSource?
    public var state: VpnState?

    public init(destinationCidrBlock: String? = nil,
                source: VpnStaticRouteSource? = nil,
                state: VpnState? = nil) {
        self.destinationCidrBlock = destinationCidrBlock
        self.source = source
        self.state = state
    }

    enum CodingKeys: String, CodingKey {
        case destinationCidrBlock
        case source
        case state
    }

    public func validate() throws {
    }
}

public struct VpnTunnelOptionsSpecification: Codable, Equatable {
    public var preSharedKey: String?
    public var tunnelInsideCidr: String?

    public init(preSharedKey: String? = nil,
                tunnelInsideCidr: String? = nil) {
        self.preSharedKey = preSharedKey
        self.tunnelInsideCidr = tunnelInsideCidr
    }

    enum CodingKeys: String, CodingKey {
        case preSharedKey = "PreSharedKey"
        case tunnelInsideCidr = "TunnelInsideCidr"
    }

    public func validate() throws {
    }
}

public struct WithdrawByoipCidrRequest: Codable, Equatable {
    public var cidr: String
    public var dryRun: Boolean?

    public init(cidr: String,
                dryRun: Boolean? = nil) {
        self.cidr = cidr
        self.dryRun = dryRun
    }

    enum CodingKeys: String, CodingKey {
        case cidr = "Cidr"
        case dryRun = "DryRun"
    }

    public func validate() throws {
    }
}

public struct WithdrawByoipCidrResult: Codable, Equatable {
    public var byoipCidr: ByoipCidr?

    public init(byoipCidr: ByoipCidr? = nil) {
        self.byoipCidr = byoipCidr
    }

    enum CodingKeys: String, CodingKey {
        case byoipCidr
    }

    public func validate() throws {
        try byoipCidr?.validate()
    }
}
