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
// ElasticComputeCloudInvocationsReporting.swift
// ElasticComputeCloudClient
//

import Foundation
import SmokeHTTPClient
import SmokeAWSHttp
import ElasticComputeCloudModel

/**
 Invocations reporting for the ElasticComputeCloudModel.
 */
public struct ElasticComputeCloudInvocationsReporting<InvocationReportingType: HTTPClientCoreInvocationReporting> {
    public let acceptReservedInstancesExchangeQuote: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let acceptTransitGatewayMulticastDomainAssociations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let acceptTransitGatewayPeeringAttachment: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let acceptTransitGatewayVpcAttachment: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let acceptVpcEndpointConnections: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let acceptVpcPeeringConnection: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let advertiseByoipCidr: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let allocateAddress: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let allocateHosts: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let applySecurityGroupsToClientVpnTargetNetwork: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let assignIpv6Addresses: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let assignPrivateIpAddresses: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let associateAddress: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let associateClientVpnTargetNetwork: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let associateDhcpOptions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let associateEnclaveCertificateIamRole: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let associateIamInstanceProfile: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let associateInstanceEventWindow: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let associateRouteTable: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let associateSubnetCidrBlock: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let associateTransitGatewayMulticastDomain: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let associateTransitGatewayRouteTable: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let associateTrunkInterface: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let associateVpcCidrBlock: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let attachClassicLinkVpc: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let attachInternetGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let attachNetworkInterface: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let attachVolume: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let attachVpnGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let authorizeClientVpnIngress: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let authorizeSecurityGroupEgress: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let authorizeSecurityGroupIngress: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let bundleInstance: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let cancelBundleTask: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let cancelCapacityReservation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let cancelCapacityReservationFleets: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let cancelConversionTask: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let cancelExportTask: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let cancelImportTask: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let cancelReservedInstancesListing: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let cancelSpotFleetRequests: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let cancelSpotInstanceRequests: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let confirmProductInstance: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let copyFpgaImage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let copyImage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let copySnapshot: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createCapacityReservation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createCapacityReservationFleet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createCarrierGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createClientVpnEndpoint: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createClientVpnRoute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createCustomerGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createDefaultSubnet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createDefaultVpc: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createDhcpOptions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createEgressOnlyInternetGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createFleet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createFlowLogs: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createFpgaImage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createImage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createInstanceEventWindow: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createInstanceExportTask: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createInternetGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createKeyPair: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createLaunchTemplate: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createLaunchTemplateVersion: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createLocalGatewayRoute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createLocalGatewayRouteTableVpcAssociation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createManagedPrefixList: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createNatGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createNetworkAcl: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createNetworkAclEntry: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createNetworkInsightsPath: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createNetworkInterface: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createNetworkInterfacePermission: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createPlacementGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createReplaceRootVolumeTask: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createReservedInstancesListing: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createRestoreImageTask: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createRoute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createRouteTable: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createSecurityGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createSnapshot: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createSnapshots: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createSpotDatafeedSubscription: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createStoreImageTask: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createSubnet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createSubnetCidrReservation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createTags: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createTrafficMirrorFilter: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createTrafficMirrorFilterRule: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createTrafficMirrorSession: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createTrafficMirrorTarget: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createTransitGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createTransitGatewayConnect: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createTransitGatewayConnectPeer: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createTransitGatewayMulticastDomain: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createTransitGatewayPeeringAttachment: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createTransitGatewayPrefixListReference: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createTransitGatewayRoute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createTransitGatewayRouteTable: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createTransitGatewayVpcAttachment: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createVolume: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createVpc: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createVpcEndpoint: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createVpcEndpointConnectionNotification: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createVpcEndpointServiceConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createVpcPeeringConnection: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createVpnConnection: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createVpnConnectionRoute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createVpnGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteCarrierGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteClientVpnEndpoint: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteClientVpnRoute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteCustomerGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteDhcpOptions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteEgressOnlyInternetGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteFleets: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteFlowLogs: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteFpgaImage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteInstanceEventWindow: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteInternetGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteKeyPair: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteLaunchTemplate: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteLaunchTemplateVersions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteLocalGatewayRoute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteLocalGatewayRouteTableVpcAssociation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteManagedPrefixList: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteNatGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteNetworkAcl: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteNetworkAclEntry: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteNetworkInsightsAnalysis: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteNetworkInsightsPath: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteNetworkInterface: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteNetworkInterfacePermission: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deletePlacementGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteQueuedReservedInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteRoute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteRouteTable: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteSecurityGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteSnapshot: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteSpotDatafeedSubscription: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteSubnet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteSubnetCidrReservation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteTags: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteTrafficMirrorFilter: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteTrafficMirrorFilterRule: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteTrafficMirrorSession: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteTrafficMirrorTarget: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteTransitGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteTransitGatewayConnect: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteTransitGatewayConnectPeer: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteTransitGatewayMulticastDomain: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteTransitGatewayPeeringAttachment: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteTransitGatewayPrefixListReference: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteTransitGatewayRoute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteTransitGatewayRouteTable: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteTransitGatewayVpcAttachment: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteVolume: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteVpc: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteVpcEndpointConnectionNotifications: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteVpcEndpointServiceConfigurations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteVpcEndpoints: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteVpcPeeringConnection: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteVpnConnection: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteVpnConnectionRoute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteVpnGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deprovisionByoipCidr: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deregisterImage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deregisterInstanceEventNotificationAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deregisterTransitGatewayMulticastGroupMembers: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deregisterTransitGatewayMulticastGroupSources: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeAccountAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeAddresses: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeAddressesAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeAggregateIdFormat: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeAvailabilityZones: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeBundleTasks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeByoipCidrs: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeCapacityReservationFleets: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeCapacityReservations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeCarrierGateways: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeClassicLinkInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeClientVpnAuthorizationRules: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeClientVpnConnections: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeClientVpnEndpoints: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeClientVpnRoutes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeClientVpnTargetNetworks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeCoipPools: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeConversionTasks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeCustomerGateways: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeDhcpOptions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeEgressOnlyInternetGateways: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeElasticGpus: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeExportImageTasks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeExportTasks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeFastSnapshotRestores: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeFleetHistory: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeFleetInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeFleets: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeFlowLogs: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeFpgaImageAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeFpgaImages: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeHostReservationOfferings: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeHostReservations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeHosts: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeIamInstanceProfileAssociations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeIdFormat: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeIdentityIdFormat: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeImageAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeImages: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeImportImageTasks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeImportSnapshotTasks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeInstanceAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeInstanceCreditSpecifications: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeInstanceEventNotificationAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeInstanceEventWindows: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeInstanceStatus: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeInstanceTypeOfferings: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeInstanceTypes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeInternetGateways: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeIpv6Pools: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeKeyPairs: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeLaunchTemplateVersions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeLaunchTemplates: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeLocalGatewayRouteTableVirtualInterfaceGroupAssociations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeLocalGatewayRouteTableVpcAssociations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeLocalGatewayRouteTables: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeLocalGatewayVirtualInterfaceGroups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeLocalGatewayVirtualInterfaces: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeLocalGateways: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeManagedPrefixLists: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeMovingAddresses: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeNatGateways: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeNetworkAcls: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeNetworkInsightsAnalyses: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeNetworkInsightsPaths: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeNetworkInterfaceAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeNetworkInterfacePermissions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeNetworkInterfaces: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describePlacementGroups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describePrefixLists: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describePrincipalIdFormat: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describePublicIpv4Pools: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeRegions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeReplaceRootVolumeTasks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeReservedInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeReservedInstancesListings: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeReservedInstancesModifications: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeReservedInstancesOfferings: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeRouteTables: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeScheduledInstanceAvailability: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeScheduledInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeSecurityGroupReferences: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeSecurityGroupRules: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeSecurityGroups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeSnapshotAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeSnapshots: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeSpotDatafeedSubscription: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeSpotFleetInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeSpotFleetRequestHistory: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeSpotFleetRequests: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeSpotInstanceRequests: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeSpotPriceHistory: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeStaleSecurityGroups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeStoreImageTasks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeSubnets: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeTags: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeTrafficMirrorFilters: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeTrafficMirrorSessions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeTrafficMirrorTargets: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeTransitGatewayAttachments: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeTransitGatewayConnectPeers: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeTransitGatewayConnects: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeTransitGatewayMulticastDomains: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeTransitGatewayPeeringAttachments: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeTransitGatewayRouteTables: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeTransitGatewayVpcAttachments: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeTransitGateways: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeTrunkInterfaceAssociations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeVolumeAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeVolumeStatus: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeVolumes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeVolumesModifications: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeVpcAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeVpcClassicLink: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeVpcClassicLinkDnsSupport: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeVpcEndpointConnectionNotifications: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeVpcEndpointConnections: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeVpcEndpointServiceConfigurations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeVpcEndpointServicePermissions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeVpcEndpointServices: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeVpcEndpoints: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeVpcPeeringConnections: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeVpcs: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeVpnConnections: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeVpnGateways: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let detachClassicLinkVpc: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let detachInternetGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let detachNetworkInterface: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let detachVolume: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let detachVpnGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let disableEbsEncryptionByDefault: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let disableFastSnapshotRestores: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let disableImageDeprecation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let disableSerialConsoleAccess: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let disableTransitGatewayRouteTablePropagation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let disableVgwRoutePropagation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let disableVpcClassicLink: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let disableVpcClassicLinkDnsSupport: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let disassociateAddress: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let disassociateClientVpnTargetNetwork: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let disassociateEnclaveCertificateIamRole: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let disassociateIamInstanceProfile: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let disassociateInstanceEventWindow: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let disassociateRouteTable: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let disassociateSubnetCidrBlock: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let disassociateTransitGatewayMulticastDomain: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let disassociateTransitGatewayRouteTable: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let disassociateTrunkInterface: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let disassociateVpcCidrBlock: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let enableEbsEncryptionByDefault: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let enableFastSnapshotRestores: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let enableImageDeprecation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let enableSerialConsoleAccess: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let enableTransitGatewayRouteTablePropagation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let enableVgwRoutePropagation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let enableVolumeIO: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let enableVpcClassicLink: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let enableVpcClassicLinkDnsSupport: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let exportClientVpnClientCertificateRevocationList: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let exportClientVpnClientConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let exportImage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let exportTransitGatewayRoutes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getAssociatedEnclaveCertificateIamRoles: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getAssociatedIpv6PoolCidrs: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getCapacityReservationUsage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getCoipPoolUsage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getConsoleOutput: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getConsoleScreenshot: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getDefaultCreditSpecification: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getEbsDefaultKmsKeyId: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getEbsEncryptionByDefault: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getFlowLogsIntegrationTemplate: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getGroupsForCapacityReservation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getHostReservationPurchasePreview: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getInstanceTypesFromInstanceRequirements: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getLaunchTemplateData: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getManagedPrefixListAssociations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getManagedPrefixListEntries: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getPasswordData: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getReservedInstancesExchangeQuote: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getSerialConsoleAccessStatus: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getSpotPlacementScores: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getSubnetCidrReservations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getTransitGatewayAttachmentPropagations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getTransitGatewayMulticastDomainAssociations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getTransitGatewayPrefixListReferences: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getTransitGatewayRouteTableAssociations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getTransitGatewayRouteTablePropagations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getVpnConnectionDeviceSampleConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getVpnConnectionDeviceTypes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let importClientVpnClientCertificateRevocationList: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let importImage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let importInstance: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let importKeyPair: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let importSnapshot: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let importVolume: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyAddressAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyAvailabilityZoneGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyCapacityReservation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyCapacityReservationFleet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyClientVpnEndpoint: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyDefaultCreditSpecification: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyEbsDefaultKmsKeyId: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyFleet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyFpgaImageAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyHosts: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyIdFormat: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyIdentityIdFormat: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyImageAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyInstanceAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyInstanceCapacityReservationAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyInstanceCreditSpecification: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyInstanceEventStartTime: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyInstanceEventWindow: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyInstanceMetadataOptions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyInstancePlacement: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyLaunchTemplate: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyManagedPrefixList: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyNetworkInterfaceAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyReservedInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifySecurityGroupRules: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifySnapshotAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifySpotFleetRequest: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifySubnetAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyTrafficMirrorFilterNetworkServices: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyTrafficMirrorFilterRule: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyTrafficMirrorSession: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyTransitGateway: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyTransitGatewayPrefixListReference: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyTransitGatewayVpcAttachment: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyVolume: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyVolumeAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyVpcAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyVpcEndpoint: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyVpcEndpointConnectionNotification: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyVpcEndpointServiceConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyVpcEndpointServicePermissions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyVpcPeeringConnectionOptions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyVpcTenancy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyVpnConnection: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyVpnConnectionOptions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyVpnTunnelCertificate: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyVpnTunnelOptions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let monitorInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let moveAddressToVpc: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let provisionByoipCidr: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let purchaseHostReservation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let purchaseReservedInstancesOffering: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let purchaseScheduledInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let rebootInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let registerImage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let registerInstanceEventNotificationAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let registerTransitGatewayMulticastGroupMembers: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let registerTransitGatewayMulticastGroupSources: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let rejectTransitGatewayMulticastDomainAssociations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let rejectTransitGatewayPeeringAttachment: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let rejectTransitGatewayVpcAttachment: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let rejectVpcEndpointConnections: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let rejectVpcPeeringConnection: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let releaseAddress: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let releaseHosts: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let replaceIamInstanceProfileAssociation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let replaceNetworkAclAssociation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let replaceNetworkAclEntry: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let replaceRoute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let replaceRouteTableAssociation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let replaceTransitGatewayRoute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let reportInstanceStatus: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let requestSpotFleet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let requestSpotInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let resetAddressAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let resetEbsDefaultKmsKeyId: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let resetFpgaImageAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let resetImageAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let resetInstanceAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let resetNetworkInterfaceAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let resetSnapshotAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let restoreAddressToClassic: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let restoreManagedPrefixListVersion: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let revokeClientVpnIngress: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let revokeSecurityGroupEgress: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let revokeSecurityGroupIngress: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let runInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let runScheduledInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let searchLocalGatewayRoutes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let searchTransitGatewayMulticastGroups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let searchTransitGatewayRoutes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let sendDiagnosticInterrupt: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let startInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let startNetworkInsightsAnalysis: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let startVpcEndpointServicePrivateDnsVerification: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let stopInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let terminateClientVpnConnections: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let terminateInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let unassignIpv6Addresses: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let unassignPrivateIpAddresses: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let unmonitorInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let updateSecurityGroupRuleDescriptionsEgress: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let updateSecurityGroupRuleDescriptionsIngress: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let withdrawByoipCidr: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>

    public init(reporting: InvocationReportingType, operationsReporting: ElasticComputeCloudOperationsReporting) {
        self.acceptReservedInstancesExchangeQuote = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.acceptReservedInstancesExchangeQuote)
        self.acceptTransitGatewayMulticastDomainAssociations = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.acceptTransitGatewayMulticastDomainAssociations)
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
        self.associateEnclaveCertificateIamRole = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.associateEnclaveCertificateIamRole)
        self.associateIamInstanceProfile = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.associateIamInstanceProfile)
        self.associateInstanceEventWindow = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.associateInstanceEventWindow)
        self.associateRouteTable = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.associateRouteTable)
        self.associateSubnetCidrBlock = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.associateSubnetCidrBlock)
        self.associateTransitGatewayMulticastDomain = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.associateTransitGatewayMulticastDomain)
        self.associateTransitGatewayRouteTable = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.associateTransitGatewayRouteTable)
        self.associateTrunkInterface = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.associateTrunkInterface)
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
        self.cancelCapacityReservationFleets = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.cancelCapacityReservationFleets)
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
        self.createCapacityReservationFleet = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createCapacityReservationFleet)
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
        self.createInstanceEventWindow = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createInstanceEventWindow)
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
        self.createNetworkInsightsPath = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createNetworkInsightsPath)
        self.createNetworkInterface = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createNetworkInterface)
        self.createNetworkInterfacePermission = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createNetworkInterfacePermission)
        self.createPlacementGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createPlacementGroup)
        self.createReplaceRootVolumeTask = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createReplaceRootVolumeTask)
        self.createReservedInstancesListing = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createReservedInstancesListing)
        self.createRestoreImageTask = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createRestoreImageTask)
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
        self.createStoreImageTask = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createStoreImageTask)
        self.createSubnet = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createSubnet)
        self.createSubnetCidrReservation = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createSubnetCidrReservation)
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
        self.createTransitGatewayConnect = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createTransitGatewayConnect)
        self.createTransitGatewayConnectPeer = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createTransitGatewayConnectPeer)
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
        self.deleteInstanceEventWindow = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteInstanceEventWindow)
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
        self.deleteNetworkInsightsAnalysis = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteNetworkInsightsAnalysis)
        self.deleteNetworkInsightsPath = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteNetworkInsightsPath)
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
        self.deleteSubnetCidrReservation = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteSubnetCidrReservation)
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
        self.deleteTransitGatewayConnect = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteTransitGatewayConnect)
        self.deleteTransitGatewayConnectPeer = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteTransitGatewayConnectPeer)
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
        self.describeAddressesAttribute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeAddressesAttribute)
        self.describeAggregateIdFormat = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeAggregateIdFormat)
        self.describeAvailabilityZones = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeAvailabilityZones)
        self.describeBundleTasks = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeBundleTasks)
        self.describeByoipCidrs = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeByoipCidrs)
        self.describeCapacityReservationFleets = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeCapacityReservationFleets)
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
        self.describeInstanceEventWindows = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeInstanceEventWindows)
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
        self.describeNetworkInsightsAnalyses = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeNetworkInsightsAnalyses)
        self.describeNetworkInsightsPaths = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeNetworkInsightsPaths)
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
        self.describeReplaceRootVolumeTasks = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeReplaceRootVolumeTasks)
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
        self.describeSecurityGroupRules = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeSecurityGroupRules)
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
        self.describeStoreImageTasks = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeStoreImageTasks)
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
        self.describeTransitGatewayConnectPeers = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeTransitGatewayConnectPeers)
        self.describeTransitGatewayConnects = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeTransitGatewayConnects)
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
        self.describeTrunkInterfaceAssociations = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeTrunkInterfaceAssociations)
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
        self.disableImageDeprecation = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.disableImageDeprecation)
        self.disableSerialConsoleAccess = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.disableSerialConsoleAccess)
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
        self.disassociateEnclaveCertificateIamRole = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.disassociateEnclaveCertificateIamRole)
        self.disassociateIamInstanceProfile = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.disassociateIamInstanceProfile)
        self.disassociateInstanceEventWindow = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.disassociateInstanceEventWindow)
        self.disassociateRouteTable = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.disassociateRouteTable)
        self.disassociateSubnetCidrBlock = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.disassociateSubnetCidrBlock)
        self.disassociateTransitGatewayMulticastDomain = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.disassociateTransitGatewayMulticastDomain)
        self.disassociateTransitGatewayRouteTable = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.disassociateTransitGatewayRouteTable)
        self.disassociateTrunkInterface = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.disassociateTrunkInterface)
        self.disassociateVpcCidrBlock = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.disassociateVpcCidrBlock)
        self.enableEbsEncryptionByDefault = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.enableEbsEncryptionByDefault)
        self.enableFastSnapshotRestores = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.enableFastSnapshotRestores)
        self.enableImageDeprecation = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.enableImageDeprecation)
        self.enableSerialConsoleAccess = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.enableSerialConsoleAccess)
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
        self.getAssociatedEnclaveCertificateIamRoles = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getAssociatedEnclaveCertificateIamRoles)
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
        self.getFlowLogsIntegrationTemplate = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getFlowLogsIntegrationTemplate)
        self.getGroupsForCapacityReservation = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getGroupsForCapacityReservation)
        self.getHostReservationPurchasePreview = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getHostReservationPurchasePreview)
        self.getInstanceTypesFromInstanceRequirements = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getInstanceTypesFromInstanceRequirements)
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
        self.getSerialConsoleAccessStatus = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getSerialConsoleAccessStatus)
        self.getSpotPlacementScores = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getSpotPlacementScores)
        self.getSubnetCidrReservations = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getSubnetCidrReservations)
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
        self.getVpnConnectionDeviceSampleConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getVpnConnectionDeviceSampleConfiguration)
        self.getVpnConnectionDeviceTypes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getVpnConnectionDeviceTypes)
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
        self.modifyAddressAttribute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyAddressAttribute)
        self.modifyAvailabilityZoneGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyAvailabilityZoneGroup)
        self.modifyCapacityReservation = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyCapacityReservation)
        self.modifyCapacityReservationFleet = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyCapacityReservationFleet)
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
        self.modifyInstanceEventWindow = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyInstanceEventWindow)
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
        self.modifySecurityGroupRules = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifySecurityGroupRules)
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
        self.rejectTransitGatewayMulticastDomainAssociations = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.rejectTransitGatewayMulticastDomainAssociations)
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
        self.resetAddressAttribute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.resetAddressAttribute)
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
        self.startNetworkInsightsAnalysis = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.startNetworkInsightsAnalysis)
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
