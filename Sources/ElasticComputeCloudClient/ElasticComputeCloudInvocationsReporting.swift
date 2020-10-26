// Copyright 2018-2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// ElasticComputeCloudInvocationsReporting.swift
// ElasticComputeCloudClient
//

import Foundation
import SmokeHTTPClient
import SmokeAWSHttp
import ElasticComputeCloudModel

/**
 Operation reporting for the ElasticComputeCloudModel.
 */
public struct ElasticComputeCloudInvocationsReporting<InvocationReportingType: HTTPClientCoreInvocationReporting> {
    let acceptReservedInstancesExchangeQuote: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let acceptTransitGatewayPeeringAttachment: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let acceptTransitGatewayVpcAttachment: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let acceptVpcEndpointConnections: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let acceptVpcPeeringConnection: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let advertiseByoipCidr: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let allocateAddress: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let allocateHosts: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let applySecurityGroupsToClientVpnTargetNetwork: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let assignIpv6Addresses: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let assignPrivateIpAddresses: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let associateAddress: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let associateClientVpnTargetNetwork: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let associateDhcpOptions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let associateIamInstanceProfile: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let associateRouteTable: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let associateSubnetCidrBlock: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let associateTransitGatewayMulticastDomain: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let associateTransitGatewayRouteTable: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let associateVpcCidrBlock: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let attachClassicLinkVpc: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let attachInternetGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let attachNetworkInterface: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let attachVolume: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let attachVpnGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let authorizeClientVpnIngress: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let authorizeSecurityGroupEgress: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let authorizeSecurityGroupIngress: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let bundleInstance: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let cancelBundleTask: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let cancelCapacityReservation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let cancelConversionTask: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let cancelExportTask: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let cancelImportTask: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let cancelReservedInstancesListing: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let cancelSpotFleetRequests: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let cancelSpotInstanceRequests: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let confirmProductInstance: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let copyFpgaImage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let copyImage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let copySnapshot: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createCapacityReservation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createCarrierGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createClientVpnEndpoint: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createClientVpnRoute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createCustomerGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createDefaultSubnet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createDefaultVpc: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createDhcpOptions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createEgressOnlyInternetGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createFleet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createFlowLogs: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createFpgaImage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createImage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createInstanceExportTask: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createInternetGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createKeyPair: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createLaunchTemplate: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createLaunchTemplateVersion: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createLocalGatewayRoute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createLocalGatewayRouteTableVpcAssociation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createManagedPrefixList: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createNatGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createNetworkAcl: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createNetworkAclEntry: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createNetworkInterface: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createNetworkInterfacePermission: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createPlacementGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createReservedInstancesListing: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createRoute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createRouteTable: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createSecurityGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createSnapshot: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createSnapshots: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createSpotDatafeedSubscription: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createSubnet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createTags: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createTrafficMirrorFilter: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createTrafficMirrorFilterRule: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createTrafficMirrorSession: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createTrafficMirrorTarget: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createTransitGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createTransitGatewayMulticastDomain: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createTransitGatewayPeeringAttachment: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createTransitGatewayPrefixListReference: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createTransitGatewayRoute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createTransitGatewayRouteTable: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createTransitGatewayVpcAttachment: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createVolume: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createVpc: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createVpcEndpoint: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createVpcEndpointConnectionNotification: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createVpcEndpointServiceConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createVpcPeeringConnection: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createVpnConnection: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createVpnConnectionRoute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createVpnGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteCarrierGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteClientVpnEndpoint: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteClientVpnRoute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteCustomerGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteDhcpOptions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteEgressOnlyInternetGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteFleets: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteFlowLogs: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteFpgaImage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteInternetGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteKeyPair: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteLaunchTemplate: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteLaunchTemplateVersions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteLocalGatewayRoute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteLocalGatewayRouteTableVpcAssociation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteManagedPrefixList: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteNatGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteNetworkAcl: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteNetworkAclEntry: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteNetworkInterface: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteNetworkInterfacePermission: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deletePlacementGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteQueuedReservedInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteRoute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteRouteTable: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteSecurityGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteSnapshot: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteSpotDatafeedSubscription: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteSubnet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteTags: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteTrafficMirrorFilter: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteTrafficMirrorFilterRule: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteTrafficMirrorSession: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteTrafficMirrorTarget: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteTransitGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteTransitGatewayMulticastDomain: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteTransitGatewayPeeringAttachment: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteTransitGatewayPrefixListReference: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteTransitGatewayRoute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteTransitGatewayRouteTable: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteTransitGatewayVpcAttachment: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteVolume: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteVpc: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteVpcEndpointConnectionNotifications: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteVpcEndpointServiceConfigurations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteVpcEndpoints: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteVpcPeeringConnection: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteVpnConnection: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteVpnConnectionRoute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteVpnGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deprovisionByoipCidr: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deregisterImage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deregisterInstanceEventNotificationAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deregisterTransitGatewayMulticastGroupMembers: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deregisterTransitGatewayMulticastGroupSources: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeAccountAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeAddresses: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeAggregateIdFormat: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeAvailabilityZones: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeBundleTasks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeByoipCidrs: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeCapacityReservations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeCarrierGateways: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeClassicLinkInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeClientVpnAuthorizationRules: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeClientVpnConnections: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeClientVpnEndpoints: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeClientVpnRoutes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeClientVpnTargetNetworks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeCoipPools: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeConversionTasks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeCustomerGateways: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeDhcpOptions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeEgressOnlyInternetGateways: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeElasticGpus: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeExportImageTasks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeExportTasks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeFastSnapshotRestores: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeFleetHistory: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeFleetInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeFleets: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeFlowLogs: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeFpgaImageAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeFpgaImages: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeHostReservationOfferings: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeHostReservations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeHosts: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeIamInstanceProfileAssociations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeIdFormat: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeIdentityIdFormat: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeImageAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeImages: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeImportImageTasks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeImportSnapshotTasks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeInstanceAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeInstanceCreditSpecifications: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeInstanceEventNotificationAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeInstanceStatus: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeInstanceTypeOfferings: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeInstanceTypes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeInternetGateways: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeIpv6Pools: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeKeyPairs: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeLaunchTemplateVersions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeLaunchTemplates: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeLocalGatewayRouteTableVirtualInterfaceGroupAssociations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeLocalGatewayRouteTableVpcAssociations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeLocalGatewayRouteTables: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeLocalGatewayVirtualInterfaceGroups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeLocalGatewayVirtualInterfaces: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeLocalGateways: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeManagedPrefixLists: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeMovingAddresses: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeNatGateways: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeNetworkAcls: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeNetworkInterfaceAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeNetworkInterfacePermissions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeNetworkInterfaces: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describePlacementGroups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describePrefixLists: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describePrincipalIdFormat: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describePublicIpv4Pools: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeRegions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeReservedInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeReservedInstancesListings: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeReservedInstancesModifications: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeReservedInstancesOfferings: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeRouteTables: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeScheduledInstanceAvailability: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeScheduledInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeSecurityGroupReferences: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeSecurityGroups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeSnapshotAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeSnapshots: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeSpotDatafeedSubscription: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeSpotFleetInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeSpotFleetRequestHistory: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeSpotFleetRequests: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeSpotInstanceRequests: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeSpotPriceHistory: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeStaleSecurityGroups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeSubnets: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeTags: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeTrafficMirrorFilters: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeTrafficMirrorSessions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeTrafficMirrorTargets: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeTransitGatewayAttachments: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeTransitGatewayMulticastDomains: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeTransitGatewayPeeringAttachments: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeTransitGatewayRouteTables: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeTransitGatewayVpcAttachments: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeTransitGateways: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeVolumeAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeVolumeStatus: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeVolumes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeVolumesModifications: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeVpcAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeVpcClassicLink: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeVpcClassicLinkDnsSupport: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeVpcEndpointConnectionNotifications: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeVpcEndpointConnections: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeVpcEndpointServiceConfigurations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeVpcEndpointServicePermissions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeVpcEndpointServices: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeVpcEndpoints: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeVpcPeeringConnections: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeVpcs: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeVpnConnections: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeVpnGateways: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let detachClassicLinkVpc: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let detachInternetGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let detachNetworkInterface: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let detachVolume: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let detachVpnGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let disableEbsEncryptionByDefault: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let disableFastSnapshotRestores: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let disableTransitGatewayRouteTablePropagation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let disableVgwRoutePropagation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let disableVpcClassicLink: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let disableVpcClassicLinkDnsSupport: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let disassociateAddress: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let disassociateClientVpnTargetNetwork: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let disassociateIamInstanceProfile: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let disassociateRouteTable: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let disassociateSubnetCidrBlock: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let disassociateTransitGatewayMulticastDomain: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let disassociateTransitGatewayRouteTable: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let disassociateVpcCidrBlock: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let enableEbsEncryptionByDefault: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let enableFastSnapshotRestores: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let enableTransitGatewayRouteTablePropagation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let enableVgwRoutePropagation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let enableVolumeIO: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let enableVpcClassicLink: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let enableVpcClassicLinkDnsSupport: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let exportClientVpnClientCertificateRevocationList: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let exportClientVpnClientConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let exportImage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let exportTransitGatewayRoutes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getAssociatedIpv6PoolCidrs: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getCapacityReservationUsage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getCoipPoolUsage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getConsoleOutput: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getConsoleScreenshot: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getDefaultCreditSpecification: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getEbsDefaultKmsKeyId: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getEbsEncryptionByDefault: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getGroupsForCapacityReservation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getHostReservationPurchasePreview: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getLaunchTemplateData: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getManagedPrefixListAssociations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getManagedPrefixListEntries: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getPasswordData: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getReservedInstancesExchangeQuote: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getTransitGatewayAttachmentPropagations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getTransitGatewayMulticastDomainAssociations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getTransitGatewayPrefixListReferences: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getTransitGatewayRouteTableAssociations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getTransitGatewayRouteTablePropagations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let importClientVpnClientCertificateRevocationList: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let importImage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let importInstance: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let importKeyPair: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let importSnapshot: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let importVolume: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyAvailabilityZoneGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyCapacityReservation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyClientVpnEndpoint: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyDefaultCreditSpecification: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyEbsDefaultKmsKeyId: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyFleet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyFpgaImageAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyHosts: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyIdFormat: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyIdentityIdFormat: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyImageAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyInstanceAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyInstanceCapacityReservationAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyInstanceCreditSpecification: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyInstanceEventStartTime: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyInstanceMetadataOptions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyInstancePlacement: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyLaunchTemplate: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyManagedPrefixList: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyNetworkInterfaceAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyReservedInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifySnapshotAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifySpotFleetRequest: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifySubnetAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyTrafficMirrorFilterNetworkServices: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyTrafficMirrorFilterRule: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyTrafficMirrorSession: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyTransitGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyTransitGatewayPrefixListReference: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyTransitGatewayVpcAttachment: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyVolume: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyVolumeAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyVpcAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyVpcEndpoint: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyVpcEndpointConnectionNotification: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyVpcEndpointServiceConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyVpcEndpointServicePermissions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyVpcPeeringConnectionOptions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyVpcTenancy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyVpnConnection: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyVpnConnectionOptions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyVpnTunnelCertificate: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyVpnTunnelOptions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let monitorInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let moveAddressToVpc: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let provisionByoipCidr: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let purchaseHostReservation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let purchaseReservedInstancesOffering: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let purchaseScheduledInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let rebootInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let registerImage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let registerInstanceEventNotificationAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let registerTransitGatewayMulticastGroupMembers: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let registerTransitGatewayMulticastGroupSources: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let rejectTransitGatewayPeeringAttachment: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let rejectTransitGatewayVpcAttachment: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let rejectVpcEndpointConnections: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let rejectVpcPeeringConnection: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let releaseAddress: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let releaseHosts: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let replaceIamInstanceProfileAssociation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let replaceNetworkAclAssociation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let replaceNetworkAclEntry: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let replaceRoute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let replaceRouteTableAssociation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let replaceTransitGatewayRoute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let reportInstanceStatus: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let requestSpotFleet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let requestSpotInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let resetEbsDefaultKmsKeyId: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let resetFpgaImageAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let resetImageAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let resetInstanceAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let resetNetworkInterfaceAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let resetSnapshotAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let restoreAddressToClassic: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let restoreManagedPrefixListVersion: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let revokeClientVpnIngress: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let revokeSecurityGroupEgress: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let revokeSecurityGroupIngress: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let runInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let runScheduledInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let searchLocalGatewayRoutes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let searchTransitGatewayMulticastGroups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let searchTransitGatewayRoutes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let sendDiagnosticInterrupt: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let startInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let startVpcEndpointServicePrivateDnsVerification: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let stopInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let terminateClientVpnConnections: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let terminateInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let unassignIpv6Addresses: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let unassignPrivateIpAddresses: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let unmonitorInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let updateSecurityGroupRuleDescriptionsEgress: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let updateSecurityGroupRuleDescriptionsIngress: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let withdrawByoipCidr: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>

    public init(reporting: InvocationReportingType, operationsReporting: ElasticComputeCloudOperationsReporting) {
        self.acceptReservedInstancesExchangeQuote = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.acceptReservedInstancesExchangeQuote)
        self.acceptTransitGatewayPeeringAttachment = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.acceptTransitGatewayPeeringAttachment)
        self.acceptTransitGatewayVpcAttachment = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.acceptTransitGatewayVpcAttachment)
        self.acceptVpcEndpointConnections = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.acceptVpcEndpointConnections)
        self.acceptVpcPeeringConnection = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.acceptVpcPeeringConnection)
        self.advertiseByoipCidr = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.advertiseByoipCidr)
        self.allocateAddress = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.allocateAddress)
        self.allocateHosts = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.allocateHosts)
        self.applySecurityGroupsToClientVpnTargetNetwork = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.applySecurityGroupsToClientVpnTargetNetwork)
        self.assignIpv6Addresses = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.assignIpv6Addresses)
        self.assignPrivateIpAddresses = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.assignPrivateIpAddresses)
        self.associateAddress = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.associateAddress)
        self.associateClientVpnTargetNetwork = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.associateClientVpnTargetNetwork)
        self.associateDhcpOptions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.associateDhcpOptions)
        self.associateIamInstanceProfile = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.associateIamInstanceProfile)
        self.associateRouteTable = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.associateRouteTable)
        self.associateSubnetCidrBlock = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.associateSubnetCidrBlock)
        self.associateTransitGatewayMulticastDomain = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.associateTransitGatewayMulticastDomain)
        self.associateTransitGatewayRouteTable = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.associateTransitGatewayRouteTable)
        self.associateVpcCidrBlock = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.associateVpcCidrBlock)
        self.attachClassicLinkVpc = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.attachClassicLinkVpc)
        self.attachInternetGateway = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.attachInternetGateway)
        self.attachNetworkInterface = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.attachNetworkInterface)
        self.attachVolume = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.attachVolume)
        self.attachVpnGateway = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.attachVpnGateway)
        self.authorizeClientVpnIngress = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.authorizeClientVpnIngress)
        self.authorizeSecurityGroupEgress = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.authorizeSecurityGroupEgress)
        self.authorizeSecurityGroupIngress = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.authorizeSecurityGroupIngress)
        self.bundleInstance = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.bundleInstance)
        self.cancelBundleTask = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.cancelBundleTask)
        self.cancelCapacityReservation = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.cancelCapacityReservation)
        self.cancelConversionTask = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.cancelConversionTask)
        self.cancelExportTask = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.cancelExportTask)
        self.cancelImportTask = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.cancelImportTask)
        self.cancelReservedInstancesListing = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.cancelReservedInstancesListing)
        self.cancelSpotFleetRequests = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.cancelSpotFleetRequests)
        self.cancelSpotInstanceRequests = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.cancelSpotInstanceRequests)
        self.confirmProductInstance = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.confirmProductInstance)
        self.copyFpgaImage = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.copyFpgaImage)
        self.copyImage = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.copyImage)
        self.copySnapshot = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.copySnapshot)
        self.createCapacityReservation = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createCapacityReservation)
        self.createCarrierGateway = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createCarrierGateway)
        self.createClientVpnEndpoint = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createClientVpnEndpoint)
        self.createClientVpnRoute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createClientVpnRoute)
        self.createCustomerGateway = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createCustomerGateway)
        self.createDefaultSubnet = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createDefaultSubnet)
        self.createDefaultVpc = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createDefaultVpc)
        self.createDhcpOptions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createDhcpOptions)
        self.createEgressOnlyInternetGateway = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createEgressOnlyInternetGateway)
        self.createFleet = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createFleet)
        self.createFlowLogs = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createFlowLogs)
        self.createFpgaImage = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createFpgaImage)
        self.createImage = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createImage)
        self.createInstanceExportTask = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createInstanceExportTask)
        self.createInternetGateway = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createInternetGateway)
        self.createKeyPair = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createKeyPair)
        self.createLaunchTemplate = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createLaunchTemplate)
        self.createLaunchTemplateVersion = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createLaunchTemplateVersion)
        self.createLocalGatewayRoute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createLocalGatewayRoute)
        self.createLocalGatewayRouteTableVpcAssociation = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createLocalGatewayRouteTableVpcAssociation)
        self.createManagedPrefixList = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createManagedPrefixList)
        self.createNatGateway = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createNatGateway)
        self.createNetworkAcl = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createNetworkAcl)
        self.createNetworkAclEntry = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createNetworkAclEntry)
        self.createNetworkInterface = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createNetworkInterface)
        self.createNetworkInterfacePermission = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createNetworkInterfacePermission)
        self.createPlacementGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createPlacementGroup)
        self.createReservedInstancesListing = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createReservedInstancesListing)
        self.createRoute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createRoute)
        self.createRouteTable = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createRouteTable)
        self.createSecurityGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createSecurityGroup)
        self.createSnapshot = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createSnapshot)
        self.createSnapshots = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createSnapshots)
        self.createSpotDatafeedSubscription = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createSpotDatafeedSubscription)
        self.createSubnet = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createSubnet)
        self.createTags = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createTags)
        self.createTrafficMirrorFilter = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createTrafficMirrorFilter)
        self.createTrafficMirrorFilterRule = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createTrafficMirrorFilterRule)
        self.createTrafficMirrorSession = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createTrafficMirrorSession)
        self.createTrafficMirrorTarget = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createTrafficMirrorTarget)
        self.createTransitGateway = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createTransitGateway)
        self.createTransitGatewayMulticastDomain = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createTransitGatewayMulticastDomain)
        self.createTransitGatewayPeeringAttachment = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createTransitGatewayPeeringAttachment)
        self.createTransitGatewayPrefixListReference = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createTransitGatewayPrefixListReference)
        self.createTransitGatewayRoute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createTransitGatewayRoute)
        self.createTransitGatewayRouteTable = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createTransitGatewayRouteTable)
        self.createTransitGatewayVpcAttachment = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createTransitGatewayVpcAttachment)
        self.createVolume = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createVolume)
        self.createVpc = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createVpc)
        self.createVpcEndpoint = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createVpcEndpoint)
        self.createVpcEndpointConnectionNotification = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createVpcEndpointConnectionNotification)
        self.createVpcEndpointServiceConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createVpcEndpointServiceConfiguration)
        self.createVpcPeeringConnection = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createVpcPeeringConnection)
        self.createVpnConnection = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createVpnConnection)
        self.createVpnConnectionRoute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createVpnConnectionRoute)
        self.createVpnGateway = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createVpnGateway)
        self.deleteCarrierGateway = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteCarrierGateway)
        self.deleteClientVpnEndpoint = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteClientVpnEndpoint)
        self.deleteClientVpnRoute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteClientVpnRoute)
        self.deleteCustomerGateway = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteCustomerGateway)
        self.deleteDhcpOptions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteDhcpOptions)
        self.deleteEgressOnlyInternetGateway = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteEgressOnlyInternetGateway)
        self.deleteFleets = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteFleets)
        self.deleteFlowLogs = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteFlowLogs)
        self.deleteFpgaImage = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteFpgaImage)
        self.deleteInternetGateway = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteInternetGateway)
        self.deleteKeyPair = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteKeyPair)
        self.deleteLaunchTemplate = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteLaunchTemplate)
        self.deleteLaunchTemplateVersions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteLaunchTemplateVersions)
        self.deleteLocalGatewayRoute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteLocalGatewayRoute)
        self.deleteLocalGatewayRouteTableVpcAssociation = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteLocalGatewayRouteTableVpcAssociation)
        self.deleteManagedPrefixList = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteManagedPrefixList)
        self.deleteNatGateway = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteNatGateway)
        self.deleteNetworkAcl = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteNetworkAcl)
        self.deleteNetworkAclEntry = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteNetworkAclEntry)
        self.deleteNetworkInterface = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteNetworkInterface)
        self.deleteNetworkInterfacePermission = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteNetworkInterfacePermission)
        self.deletePlacementGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deletePlacementGroup)
        self.deleteQueuedReservedInstances = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteQueuedReservedInstances)
        self.deleteRoute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteRoute)
        self.deleteRouteTable = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteRouteTable)
        self.deleteSecurityGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteSecurityGroup)
        self.deleteSnapshot = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteSnapshot)
        self.deleteSpotDatafeedSubscription = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteSpotDatafeedSubscription)
        self.deleteSubnet = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteSubnet)
        self.deleteTags = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteTags)
        self.deleteTrafficMirrorFilter = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteTrafficMirrorFilter)
        self.deleteTrafficMirrorFilterRule = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteTrafficMirrorFilterRule)
        self.deleteTrafficMirrorSession = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteTrafficMirrorSession)
        self.deleteTrafficMirrorTarget = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteTrafficMirrorTarget)
        self.deleteTransitGateway = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteTransitGateway)
        self.deleteTransitGatewayMulticastDomain = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteTransitGatewayMulticastDomain)
        self.deleteTransitGatewayPeeringAttachment = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteTransitGatewayPeeringAttachment)
        self.deleteTransitGatewayPrefixListReference = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteTransitGatewayPrefixListReference)
        self.deleteTransitGatewayRoute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteTransitGatewayRoute)
        self.deleteTransitGatewayRouteTable = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteTransitGatewayRouteTable)
        self.deleteTransitGatewayVpcAttachment = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteTransitGatewayVpcAttachment)
        self.deleteVolume = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteVolume)
        self.deleteVpc = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteVpc)
        self.deleteVpcEndpointConnectionNotifications = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteVpcEndpointConnectionNotifications)
        self.deleteVpcEndpointServiceConfigurations = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteVpcEndpointServiceConfigurations)
        self.deleteVpcEndpoints = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteVpcEndpoints)
        self.deleteVpcPeeringConnection = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteVpcPeeringConnection)
        self.deleteVpnConnection = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteVpnConnection)
        self.deleteVpnConnectionRoute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteVpnConnectionRoute)
        self.deleteVpnGateway = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteVpnGateway)
        self.deprovisionByoipCidr = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deprovisionByoipCidr)
        self.deregisterImage = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deregisterImage)
        self.deregisterInstanceEventNotificationAttributes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deregisterInstanceEventNotificationAttributes)
        self.deregisterTransitGatewayMulticastGroupMembers = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deregisterTransitGatewayMulticastGroupMembers)
        self.deregisterTransitGatewayMulticastGroupSources = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deregisterTransitGatewayMulticastGroupSources)
        self.describeAccountAttributes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeAccountAttributes)
        self.describeAddresses = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeAddresses)
        self.describeAggregateIdFormat = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeAggregateIdFormat)
        self.describeAvailabilityZones = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeAvailabilityZones)
        self.describeBundleTasks = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeBundleTasks)
        self.describeByoipCidrs = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeByoipCidrs)
        self.describeCapacityReservations = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeCapacityReservations)
        self.describeCarrierGateways = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeCarrierGateways)
        self.describeClassicLinkInstances = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeClassicLinkInstances)
        self.describeClientVpnAuthorizationRules = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeClientVpnAuthorizationRules)
        self.describeClientVpnConnections = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeClientVpnConnections)
        self.describeClientVpnEndpoints = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeClientVpnEndpoints)
        self.describeClientVpnRoutes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeClientVpnRoutes)
        self.describeClientVpnTargetNetworks = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeClientVpnTargetNetworks)
        self.describeCoipPools = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeCoipPools)
        self.describeConversionTasks = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeConversionTasks)
        self.describeCustomerGateways = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeCustomerGateways)
        self.describeDhcpOptions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeDhcpOptions)
        self.describeEgressOnlyInternetGateways = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeEgressOnlyInternetGateways)
        self.describeElasticGpus = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeElasticGpus)
        self.describeExportImageTasks = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeExportImageTasks)
        self.describeExportTasks = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeExportTasks)
        self.describeFastSnapshotRestores = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeFastSnapshotRestores)
        self.describeFleetHistory = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeFleetHistory)
        self.describeFleetInstances = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeFleetInstances)
        self.describeFleets = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeFleets)
        self.describeFlowLogs = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeFlowLogs)
        self.describeFpgaImageAttribute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeFpgaImageAttribute)
        self.describeFpgaImages = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeFpgaImages)
        self.describeHostReservationOfferings = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeHostReservationOfferings)
        self.describeHostReservations = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeHostReservations)
        self.describeHosts = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeHosts)
        self.describeIamInstanceProfileAssociations = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeIamInstanceProfileAssociations)
        self.describeIdFormat = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeIdFormat)
        self.describeIdentityIdFormat = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeIdentityIdFormat)
        self.describeImageAttribute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeImageAttribute)
        self.describeImages = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeImages)
        self.describeImportImageTasks = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeImportImageTasks)
        self.describeImportSnapshotTasks = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeImportSnapshotTasks)
        self.describeInstanceAttribute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeInstanceAttribute)
        self.describeInstanceCreditSpecifications = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeInstanceCreditSpecifications)
        self.describeInstanceEventNotificationAttributes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeInstanceEventNotificationAttributes)
        self.describeInstanceStatus = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeInstanceStatus)
        self.describeInstanceTypeOfferings = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeInstanceTypeOfferings)
        self.describeInstanceTypes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeInstanceTypes)
        self.describeInstances = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeInstances)
        self.describeInternetGateways = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeInternetGateways)
        self.describeIpv6Pools = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeIpv6Pools)
        self.describeKeyPairs = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeKeyPairs)
        self.describeLaunchTemplateVersions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeLaunchTemplateVersions)
        self.describeLaunchTemplates = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeLaunchTemplates)
        self.describeLocalGatewayRouteTableVirtualInterfaceGroupAssociations = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeLocalGatewayRouteTableVirtualInterfaceGroupAssociations)
        self.describeLocalGatewayRouteTableVpcAssociations = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeLocalGatewayRouteTableVpcAssociations)
        self.describeLocalGatewayRouteTables = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeLocalGatewayRouteTables)
        self.describeLocalGatewayVirtualInterfaceGroups = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeLocalGatewayVirtualInterfaceGroups)
        self.describeLocalGatewayVirtualInterfaces = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeLocalGatewayVirtualInterfaces)
        self.describeLocalGateways = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeLocalGateways)
        self.describeManagedPrefixLists = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeManagedPrefixLists)
        self.describeMovingAddresses = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeMovingAddresses)
        self.describeNatGateways = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeNatGateways)
        self.describeNetworkAcls = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeNetworkAcls)
        self.describeNetworkInterfaceAttribute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeNetworkInterfaceAttribute)
        self.describeNetworkInterfacePermissions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeNetworkInterfacePermissions)
        self.describeNetworkInterfaces = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeNetworkInterfaces)
        self.describePlacementGroups = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describePlacementGroups)
        self.describePrefixLists = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describePrefixLists)
        self.describePrincipalIdFormat = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describePrincipalIdFormat)
        self.describePublicIpv4Pools = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describePublicIpv4Pools)
        self.describeRegions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeRegions)
        self.describeReservedInstances = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeReservedInstances)
        self.describeReservedInstancesListings = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeReservedInstancesListings)
        self.describeReservedInstancesModifications = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeReservedInstancesModifications)
        self.describeReservedInstancesOfferings = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeReservedInstancesOfferings)
        self.describeRouteTables = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeRouteTables)
        self.describeScheduledInstanceAvailability = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeScheduledInstanceAvailability)
        self.describeScheduledInstances = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeScheduledInstances)
        self.describeSecurityGroupReferences = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeSecurityGroupReferences)
        self.describeSecurityGroups = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeSecurityGroups)
        self.describeSnapshotAttribute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeSnapshotAttribute)
        self.describeSnapshots = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeSnapshots)
        self.describeSpotDatafeedSubscription = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeSpotDatafeedSubscription)
        self.describeSpotFleetInstances = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeSpotFleetInstances)
        self.describeSpotFleetRequestHistory = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeSpotFleetRequestHistory)
        self.describeSpotFleetRequests = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeSpotFleetRequests)
        self.describeSpotInstanceRequests = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeSpotInstanceRequests)
        self.describeSpotPriceHistory = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeSpotPriceHistory)
        self.describeStaleSecurityGroups = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeStaleSecurityGroups)
        self.describeSubnets = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeSubnets)
        self.describeTags = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeTags)
        self.describeTrafficMirrorFilters = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeTrafficMirrorFilters)
        self.describeTrafficMirrorSessions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeTrafficMirrorSessions)
        self.describeTrafficMirrorTargets = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeTrafficMirrorTargets)
        self.describeTransitGatewayAttachments = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeTransitGatewayAttachments)
        self.describeTransitGatewayMulticastDomains = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeTransitGatewayMulticastDomains)
        self.describeTransitGatewayPeeringAttachments = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeTransitGatewayPeeringAttachments)
        self.describeTransitGatewayRouteTables = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeTransitGatewayRouteTables)
        self.describeTransitGatewayVpcAttachments = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeTransitGatewayVpcAttachments)
        self.describeTransitGateways = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeTransitGateways)
        self.describeVolumeAttribute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeVolumeAttribute)
        self.describeVolumeStatus = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeVolumeStatus)
        self.describeVolumes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeVolumes)
        self.describeVolumesModifications = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeVolumesModifications)
        self.describeVpcAttribute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeVpcAttribute)
        self.describeVpcClassicLink = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeVpcClassicLink)
        self.describeVpcClassicLinkDnsSupport = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeVpcClassicLinkDnsSupport)
        self.describeVpcEndpointConnectionNotifications = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeVpcEndpointConnectionNotifications)
        self.describeVpcEndpointConnections = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeVpcEndpointConnections)
        self.describeVpcEndpointServiceConfigurations = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeVpcEndpointServiceConfigurations)
        self.describeVpcEndpointServicePermissions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeVpcEndpointServicePermissions)
        self.describeVpcEndpointServices = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeVpcEndpointServices)
        self.describeVpcEndpoints = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeVpcEndpoints)
        self.describeVpcPeeringConnections = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeVpcPeeringConnections)
        self.describeVpcs = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeVpcs)
        self.describeVpnConnections = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeVpnConnections)
        self.describeVpnGateways = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeVpnGateways)
        self.detachClassicLinkVpc = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.detachClassicLinkVpc)
        self.detachInternetGateway = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.detachInternetGateway)
        self.detachNetworkInterface = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.detachNetworkInterface)
        self.detachVolume = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.detachVolume)
        self.detachVpnGateway = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.detachVpnGateway)
        self.disableEbsEncryptionByDefault = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.disableEbsEncryptionByDefault)
        self.disableFastSnapshotRestores = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.disableFastSnapshotRestores)
        self.disableTransitGatewayRouteTablePropagation = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.disableTransitGatewayRouteTablePropagation)
        self.disableVgwRoutePropagation = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.disableVgwRoutePropagation)
        self.disableVpcClassicLink = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.disableVpcClassicLink)
        self.disableVpcClassicLinkDnsSupport = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.disableVpcClassicLinkDnsSupport)
        self.disassociateAddress = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.disassociateAddress)
        self.disassociateClientVpnTargetNetwork = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.disassociateClientVpnTargetNetwork)
        self.disassociateIamInstanceProfile = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.disassociateIamInstanceProfile)
        self.disassociateRouteTable = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.disassociateRouteTable)
        self.disassociateSubnetCidrBlock = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.disassociateSubnetCidrBlock)
        self.disassociateTransitGatewayMulticastDomain = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.disassociateTransitGatewayMulticastDomain)
        self.disassociateTransitGatewayRouteTable = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.disassociateTransitGatewayRouteTable)
        self.disassociateVpcCidrBlock = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.disassociateVpcCidrBlock)
        self.enableEbsEncryptionByDefault = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.enableEbsEncryptionByDefault)
        self.enableFastSnapshotRestores = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.enableFastSnapshotRestores)
        self.enableTransitGatewayRouteTablePropagation = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.enableTransitGatewayRouteTablePropagation)
        self.enableVgwRoutePropagation = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.enableVgwRoutePropagation)
        self.enableVolumeIO = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.enableVolumeIO)
        self.enableVpcClassicLink = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.enableVpcClassicLink)
        self.enableVpcClassicLinkDnsSupport = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.enableVpcClassicLinkDnsSupport)
        self.exportClientVpnClientCertificateRevocationList = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.exportClientVpnClientCertificateRevocationList)
        self.exportClientVpnClientConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.exportClientVpnClientConfiguration)
        self.exportImage = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.exportImage)
        self.exportTransitGatewayRoutes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.exportTransitGatewayRoutes)
        self.getAssociatedIpv6PoolCidrs = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getAssociatedIpv6PoolCidrs)
        self.getCapacityReservationUsage = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getCapacityReservationUsage)
        self.getCoipPoolUsage = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getCoipPoolUsage)
        self.getConsoleOutput = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getConsoleOutput)
        self.getConsoleScreenshot = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getConsoleScreenshot)
        self.getDefaultCreditSpecification = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getDefaultCreditSpecification)
        self.getEbsDefaultKmsKeyId = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getEbsDefaultKmsKeyId)
        self.getEbsEncryptionByDefault = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getEbsEncryptionByDefault)
        self.getGroupsForCapacityReservation = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getGroupsForCapacityReservation)
        self.getHostReservationPurchasePreview = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getHostReservationPurchasePreview)
        self.getLaunchTemplateData = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getLaunchTemplateData)
        self.getManagedPrefixListAssociations = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getManagedPrefixListAssociations)
        self.getManagedPrefixListEntries = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getManagedPrefixListEntries)
        self.getPasswordData = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getPasswordData)
        self.getReservedInstancesExchangeQuote = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getReservedInstancesExchangeQuote)
        self.getTransitGatewayAttachmentPropagations = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getTransitGatewayAttachmentPropagations)
        self.getTransitGatewayMulticastDomainAssociations = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getTransitGatewayMulticastDomainAssociations)
        self.getTransitGatewayPrefixListReferences = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getTransitGatewayPrefixListReferences)
        self.getTransitGatewayRouteTableAssociations = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getTransitGatewayRouteTableAssociations)
        self.getTransitGatewayRouteTablePropagations = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getTransitGatewayRouteTablePropagations)
        self.importClientVpnClientCertificateRevocationList = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.importClientVpnClientCertificateRevocationList)
        self.importImage = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.importImage)
        self.importInstance = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.importInstance)
        self.importKeyPair = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.importKeyPair)
        self.importSnapshot = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.importSnapshot)
        self.importVolume = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.importVolume)
        self.modifyAvailabilityZoneGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyAvailabilityZoneGroup)
        self.modifyCapacityReservation = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyCapacityReservation)
        self.modifyClientVpnEndpoint = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyClientVpnEndpoint)
        self.modifyDefaultCreditSpecification = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyDefaultCreditSpecification)
        self.modifyEbsDefaultKmsKeyId = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyEbsDefaultKmsKeyId)
        self.modifyFleet = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyFleet)
        self.modifyFpgaImageAttribute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyFpgaImageAttribute)
        self.modifyHosts = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyHosts)
        self.modifyIdFormat = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyIdFormat)
        self.modifyIdentityIdFormat = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyIdentityIdFormat)
        self.modifyImageAttribute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyImageAttribute)
        self.modifyInstanceAttribute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyInstanceAttribute)
        self.modifyInstanceCapacityReservationAttributes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyInstanceCapacityReservationAttributes)
        self.modifyInstanceCreditSpecification = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyInstanceCreditSpecification)
        self.modifyInstanceEventStartTime = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyInstanceEventStartTime)
        self.modifyInstanceMetadataOptions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyInstanceMetadataOptions)
        self.modifyInstancePlacement = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyInstancePlacement)
        self.modifyLaunchTemplate = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyLaunchTemplate)
        self.modifyManagedPrefixList = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyManagedPrefixList)
        self.modifyNetworkInterfaceAttribute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyNetworkInterfaceAttribute)
        self.modifyReservedInstances = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyReservedInstances)
        self.modifySnapshotAttribute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifySnapshotAttribute)
        self.modifySpotFleetRequest = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifySpotFleetRequest)
        self.modifySubnetAttribute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifySubnetAttribute)
        self.modifyTrafficMirrorFilterNetworkServices = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyTrafficMirrorFilterNetworkServices)
        self.modifyTrafficMirrorFilterRule = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyTrafficMirrorFilterRule)
        self.modifyTrafficMirrorSession = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyTrafficMirrorSession)
        self.modifyTransitGateway = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyTransitGateway)
        self.modifyTransitGatewayPrefixListReference = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyTransitGatewayPrefixListReference)
        self.modifyTransitGatewayVpcAttachment = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyTransitGatewayVpcAttachment)
        self.modifyVolume = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyVolume)
        self.modifyVolumeAttribute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyVolumeAttribute)
        self.modifyVpcAttribute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyVpcAttribute)
        self.modifyVpcEndpoint = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyVpcEndpoint)
        self.modifyVpcEndpointConnectionNotification = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyVpcEndpointConnectionNotification)
        self.modifyVpcEndpointServiceConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyVpcEndpointServiceConfiguration)
        self.modifyVpcEndpointServicePermissions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyVpcEndpointServicePermissions)
        self.modifyVpcPeeringConnectionOptions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyVpcPeeringConnectionOptions)
        self.modifyVpcTenancy = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyVpcTenancy)
        self.modifyVpnConnection = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyVpnConnection)
        self.modifyVpnConnectionOptions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyVpnConnectionOptions)
        self.modifyVpnTunnelCertificate = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyVpnTunnelCertificate)
        self.modifyVpnTunnelOptions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyVpnTunnelOptions)
        self.monitorInstances = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.monitorInstances)
        self.moveAddressToVpc = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.moveAddressToVpc)
        self.provisionByoipCidr = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.provisionByoipCidr)
        self.purchaseHostReservation = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.purchaseHostReservation)
        self.purchaseReservedInstancesOffering = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.purchaseReservedInstancesOffering)
        self.purchaseScheduledInstances = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.purchaseScheduledInstances)
        self.rebootInstances = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.rebootInstances)
        self.registerImage = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.registerImage)
        self.registerInstanceEventNotificationAttributes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.registerInstanceEventNotificationAttributes)
        self.registerTransitGatewayMulticastGroupMembers = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.registerTransitGatewayMulticastGroupMembers)
        self.registerTransitGatewayMulticastGroupSources = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.registerTransitGatewayMulticastGroupSources)
        self.rejectTransitGatewayPeeringAttachment = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.rejectTransitGatewayPeeringAttachment)
        self.rejectTransitGatewayVpcAttachment = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.rejectTransitGatewayVpcAttachment)
        self.rejectVpcEndpointConnections = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.rejectVpcEndpointConnections)
        self.rejectVpcPeeringConnection = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.rejectVpcPeeringConnection)
        self.releaseAddress = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.releaseAddress)
        self.releaseHosts = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.releaseHosts)
        self.replaceIamInstanceProfileAssociation = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.replaceIamInstanceProfileAssociation)
        self.replaceNetworkAclAssociation = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.replaceNetworkAclAssociation)
        self.replaceNetworkAclEntry = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.replaceNetworkAclEntry)
        self.replaceRoute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.replaceRoute)
        self.replaceRouteTableAssociation = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.replaceRouteTableAssociation)
        self.replaceTransitGatewayRoute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.replaceTransitGatewayRoute)
        self.reportInstanceStatus = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.reportInstanceStatus)
        self.requestSpotFleet = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.requestSpotFleet)
        self.requestSpotInstances = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.requestSpotInstances)
        self.resetEbsDefaultKmsKeyId = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.resetEbsDefaultKmsKeyId)
        self.resetFpgaImageAttribute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.resetFpgaImageAttribute)
        self.resetImageAttribute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.resetImageAttribute)
        self.resetInstanceAttribute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.resetInstanceAttribute)
        self.resetNetworkInterfaceAttribute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.resetNetworkInterfaceAttribute)
        self.resetSnapshotAttribute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.resetSnapshotAttribute)
        self.restoreAddressToClassic = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.restoreAddressToClassic)
        self.restoreManagedPrefixListVersion = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.restoreManagedPrefixListVersion)
        self.revokeClientVpnIngress = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.revokeClientVpnIngress)
        self.revokeSecurityGroupEgress = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.revokeSecurityGroupEgress)
        self.revokeSecurityGroupIngress = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.revokeSecurityGroupIngress)
        self.runInstances = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.runInstances)
        self.runScheduledInstances = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.runScheduledInstances)
        self.searchLocalGatewayRoutes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.searchLocalGatewayRoutes)
        self.searchTransitGatewayMulticastGroups = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.searchTransitGatewayMulticastGroups)
        self.searchTransitGatewayRoutes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.searchTransitGatewayRoutes)
        self.sendDiagnosticInterrupt = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.sendDiagnosticInterrupt)
        self.startInstances = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.startInstances)
        self.startVpcEndpointServicePrivateDnsVerification = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.startVpcEndpointServicePrivateDnsVerification)
        self.stopInstances = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.stopInstances)
        self.terminateClientVpnConnections = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.terminateClientVpnConnections)
        self.terminateInstances = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.terminateInstances)
        self.unassignIpv6Addresses = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.unassignIpv6Addresses)
        self.unassignPrivateIpAddresses = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.unassignPrivateIpAddresses)
        self.unmonitorInstances = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.unmonitorInstances)
        self.updateSecurityGroupRuleDescriptionsEgress = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateSecurityGroupRuleDescriptionsEgress)
        self.updateSecurityGroupRuleDescriptionsIngress = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateSecurityGroupRuleDescriptionsIngress)
        self.withdrawByoipCidr = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.withdrawByoipCidr)
    }
}
