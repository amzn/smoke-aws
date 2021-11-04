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
// ElasticComputeCloudOperationsReporting.swift
// ElasticComputeCloudClient
//

import Foundation
import SmokeAWSCore
import ElasticComputeCloudModel

/**
 Operation reporting for the ElasticComputeCloudModel.
 */
public struct ElasticComputeCloudOperationsReporting {
    public let acceptReservedInstancesExchangeQuote: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let acceptTransitGatewayMulticastDomainAssociations: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let acceptTransitGatewayPeeringAttachment: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let acceptTransitGatewayVpcAttachment: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let acceptVpcEndpointConnections: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let acceptVpcPeeringConnection: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let advertiseByoipCidr: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let allocateAddress: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let allocateHosts: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let applySecurityGroupsToClientVpnTargetNetwork: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let assignIpv6Addresses: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let assignPrivateIpAddresses: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let associateAddress: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let associateClientVpnTargetNetwork: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let associateDhcpOptions: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let associateEnclaveCertificateIamRole: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let associateIamInstanceProfile: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let associateInstanceEventWindow: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let associateRouteTable: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let associateSubnetCidrBlock: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let associateTransitGatewayMulticastDomain: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let associateTransitGatewayRouteTable: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let associateTrunkInterface: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let associateVpcCidrBlock: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let attachClassicLinkVpc: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let attachInternetGateway: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let attachNetworkInterface: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let attachVolume: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let attachVpnGateway: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let authorizeClientVpnIngress: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let authorizeSecurityGroupEgress: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let authorizeSecurityGroupIngress: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let bundleInstance: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let cancelBundleTask: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let cancelCapacityReservation: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let cancelCapacityReservationFleets: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let cancelConversionTask: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let cancelExportTask: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let cancelImportTask: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let cancelReservedInstancesListing: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let cancelSpotFleetRequests: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let cancelSpotInstanceRequests: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let confirmProductInstance: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let copyFpgaImage: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let copyImage: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let copySnapshot: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createCapacityReservation: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createCapacityReservationFleet: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createCarrierGateway: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createClientVpnEndpoint: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createClientVpnRoute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createCustomerGateway: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createDefaultSubnet: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createDefaultVpc: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createDhcpOptions: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createEgressOnlyInternetGateway: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createFleet: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createFlowLogs: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createFpgaImage: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createImage: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createInstanceEventWindow: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createInstanceExportTask: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createInternetGateway: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createKeyPair: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createLaunchTemplate: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createLaunchTemplateVersion: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createLocalGatewayRoute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createLocalGatewayRouteTableVpcAssociation: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createManagedPrefixList: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createNatGateway: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createNetworkAcl: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createNetworkAclEntry: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createNetworkInsightsPath: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createNetworkInterface: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createNetworkInterfacePermission: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createPlacementGroup: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createReplaceRootVolumeTask: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createReservedInstancesListing: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createRestoreImageTask: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createRoute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createRouteTable: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createSecurityGroup: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createSnapshot: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createSnapshots: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createSpotDatafeedSubscription: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createStoreImageTask: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createSubnet: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createSubnetCidrReservation: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createTags: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createTrafficMirrorFilter: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createTrafficMirrorFilterRule: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createTrafficMirrorSession: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createTrafficMirrorTarget: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createTransitGateway: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createTransitGatewayConnect: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createTransitGatewayConnectPeer: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createTransitGatewayMulticastDomain: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createTransitGatewayPeeringAttachment: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createTransitGatewayPrefixListReference: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createTransitGatewayRoute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createTransitGatewayRouteTable: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createTransitGatewayVpcAttachment: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createVolume: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createVpc: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createVpcEndpoint: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createVpcEndpointConnectionNotification: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createVpcEndpointServiceConfiguration: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createVpcPeeringConnection: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createVpnConnection: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createVpnConnectionRoute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let createVpnGateway: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteCarrierGateway: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteClientVpnEndpoint: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteClientVpnRoute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteCustomerGateway: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteDhcpOptions: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteEgressOnlyInternetGateway: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteFleets: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteFlowLogs: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteFpgaImage: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteInstanceEventWindow: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteInternetGateway: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteKeyPair: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteLaunchTemplate: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteLaunchTemplateVersions: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteLocalGatewayRoute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteLocalGatewayRouteTableVpcAssociation: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteManagedPrefixList: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteNatGateway: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteNetworkAcl: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteNetworkAclEntry: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteNetworkInsightsAnalysis: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteNetworkInsightsPath: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteNetworkInterface: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteNetworkInterfacePermission: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deletePlacementGroup: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteQueuedReservedInstances: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteRoute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteRouteTable: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteSecurityGroup: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteSnapshot: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteSpotDatafeedSubscription: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteSubnet: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteSubnetCidrReservation: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteTags: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteTrafficMirrorFilter: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteTrafficMirrorFilterRule: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteTrafficMirrorSession: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteTrafficMirrorTarget: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteTransitGateway: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteTransitGatewayConnect: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteTransitGatewayConnectPeer: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteTransitGatewayMulticastDomain: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteTransitGatewayPeeringAttachment: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteTransitGatewayPrefixListReference: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteTransitGatewayRoute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteTransitGatewayRouteTable: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteTransitGatewayVpcAttachment: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteVolume: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteVpc: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteVpcEndpointConnectionNotifications: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteVpcEndpointServiceConfigurations: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteVpcEndpoints: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteVpcPeeringConnection: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteVpnConnection: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteVpnConnectionRoute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deleteVpnGateway: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deprovisionByoipCidr: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deregisterImage: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deregisterInstanceEventNotificationAttributes: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deregisterTransitGatewayMulticastGroupMembers: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let deregisterTransitGatewayMulticastGroupSources: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeAccountAttributes: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeAddresses: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeAddressesAttribute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeAggregateIdFormat: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeAvailabilityZones: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeBundleTasks: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeByoipCidrs: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeCapacityReservationFleets: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeCapacityReservations: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeCarrierGateways: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeClassicLinkInstances: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeClientVpnAuthorizationRules: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeClientVpnConnections: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeClientVpnEndpoints: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeClientVpnRoutes: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeClientVpnTargetNetworks: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeCoipPools: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeConversionTasks: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeCustomerGateways: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeDhcpOptions: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeEgressOnlyInternetGateways: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeElasticGpus: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeExportImageTasks: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeExportTasks: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeFastSnapshotRestores: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeFleetHistory: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeFleetInstances: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeFleets: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeFlowLogs: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeFpgaImageAttribute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeFpgaImages: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeHostReservationOfferings: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeHostReservations: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeHosts: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeIamInstanceProfileAssociations: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeIdFormat: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeIdentityIdFormat: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeImageAttribute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeImages: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeImportImageTasks: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeImportSnapshotTasks: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeInstanceAttribute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeInstanceCreditSpecifications: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeInstanceEventNotificationAttributes: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeInstanceEventWindows: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeInstanceStatus: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeInstanceTypeOfferings: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeInstanceTypes: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeInstances: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeInternetGateways: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeIpv6Pools: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeKeyPairs: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeLaunchTemplateVersions: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeLaunchTemplates: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeLocalGatewayRouteTableVirtualInterfaceGroupAssociations: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeLocalGatewayRouteTableVpcAssociations: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeLocalGatewayRouteTables: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeLocalGatewayVirtualInterfaceGroups: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeLocalGatewayVirtualInterfaces: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeLocalGateways: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeManagedPrefixLists: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeMovingAddresses: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeNatGateways: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeNetworkAcls: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeNetworkInsightsAnalyses: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeNetworkInsightsPaths: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeNetworkInterfaceAttribute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeNetworkInterfacePermissions: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeNetworkInterfaces: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describePlacementGroups: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describePrefixLists: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describePrincipalIdFormat: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describePublicIpv4Pools: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeRegions: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeReplaceRootVolumeTasks: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeReservedInstances: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeReservedInstancesListings: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeReservedInstancesModifications: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeReservedInstancesOfferings: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeRouteTables: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeScheduledInstanceAvailability: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeScheduledInstances: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeSecurityGroupReferences: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeSecurityGroupRules: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeSecurityGroups: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeSnapshotAttribute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeSnapshots: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeSpotDatafeedSubscription: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeSpotFleetInstances: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeSpotFleetRequestHistory: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeSpotFleetRequests: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeSpotInstanceRequests: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeSpotPriceHistory: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeStaleSecurityGroups: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeStoreImageTasks: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeSubnets: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeTags: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeTrafficMirrorFilters: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeTrafficMirrorSessions: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeTrafficMirrorTargets: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeTransitGatewayAttachments: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeTransitGatewayConnectPeers: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeTransitGatewayConnects: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeTransitGatewayMulticastDomains: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeTransitGatewayPeeringAttachments: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeTransitGatewayRouteTables: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeTransitGatewayVpcAttachments: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeTransitGateways: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeTrunkInterfaceAssociations: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeVolumeAttribute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeVolumeStatus: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeVolumes: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeVolumesModifications: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeVpcAttribute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeVpcClassicLink: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeVpcClassicLinkDnsSupport: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeVpcEndpointConnectionNotifications: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeVpcEndpointConnections: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeVpcEndpointServiceConfigurations: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeVpcEndpointServicePermissions: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeVpcEndpointServices: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeVpcEndpoints: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeVpcPeeringConnections: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeVpcs: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeVpnConnections: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let describeVpnGateways: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let detachClassicLinkVpc: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let detachInternetGateway: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let detachNetworkInterface: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let detachVolume: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let detachVpnGateway: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let disableEbsEncryptionByDefault: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let disableFastSnapshotRestores: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let disableImageDeprecation: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let disableSerialConsoleAccess: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let disableTransitGatewayRouteTablePropagation: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let disableVgwRoutePropagation: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let disableVpcClassicLink: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let disableVpcClassicLinkDnsSupport: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let disassociateAddress: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let disassociateClientVpnTargetNetwork: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let disassociateEnclaveCertificateIamRole: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let disassociateIamInstanceProfile: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let disassociateInstanceEventWindow: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let disassociateRouteTable: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let disassociateSubnetCidrBlock: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let disassociateTransitGatewayMulticastDomain: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let disassociateTransitGatewayRouteTable: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let disassociateTrunkInterface: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let disassociateVpcCidrBlock: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let enableEbsEncryptionByDefault: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let enableFastSnapshotRestores: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let enableImageDeprecation: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let enableSerialConsoleAccess: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let enableTransitGatewayRouteTablePropagation: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let enableVgwRoutePropagation: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let enableVolumeIO: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let enableVpcClassicLink: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let enableVpcClassicLinkDnsSupport: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let exportClientVpnClientCertificateRevocationList: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let exportClientVpnClientConfiguration: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let exportImage: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let exportTransitGatewayRoutes: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let getAssociatedEnclaveCertificateIamRoles: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let getAssociatedIpv6PoolCidrs: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let getCapacityReservationUsage: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let getCoipPoolUsage: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let getConsoleOutput: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let getConsoleScreenshot: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let getDefaultCreditSpecification: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let getEbsDefaultKmsKeyId: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let getEbsEncryptionByDefault: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let getFlowLogsIntegrationTemplate: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let getGroupsForCapacityReservation: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let getHostReservationPurchasePreview: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let getInstanceTypesFromInstanceRequirements: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let getLaunchTemplateData: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let getManagedPrefixListAssociations: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let getManagedPrefixListEntries: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let getPasswordData: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let getReservedInstancesExchangeQuote: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let getSerialConsoleAccessStatus: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let getSpotPlacementScores: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let getSubnetCidrReservations: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let getTransitGatewayAttachmentPropagations: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let getTransitGatewayMulticastDomainAssociations: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let getTransitGatewayPrefixListReferences: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let getTransitGatewayRouteTableAssociations: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let getTransitGatewayRouteTablePropagations: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let getVpnConnectionDeviceSampleConfiguration: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let getVpnConnectionDeviceTypes: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let importClientVpnClientCertificateRevocationList: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let importImage: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let importInstance: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let importKeyPair: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let importSnapshot: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let importVolume: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyAddressAttribute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyAvailabilityZoneGroup: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyCapacityReservation: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyCapacityReservationFleet: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyClientVpnEndpoint: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyDefaultCreditSpecification: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyEbsDefaultKmsKeyId: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyFleet: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyFpgaImageAttribute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyHosts: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyIdFormat: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyIdentityIdFormat: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyImageAttribute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyInstanceAttribute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyInstanceCapacityReservationAttributes: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyInstanceCreditSpecification: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyInstanceEventStartTime: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyInstanceEventWindow: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyInstanceMetadataOptions: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyInstancePlacement: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyLaunchTemplate: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyManagedPrefixList: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyNetworkInterfaceAttribute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyReservedInstances: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifySecurityGroupRules: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifySnapshotAttribute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifySpotFleetRequest: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifySubnetAttribute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyTrafficMirrorFilterNetworkServices: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyTrafficMirrorFilterRule: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyTrafficMirrorSession: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyTransitGateway: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyTransitGatewayPrefixListReference: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyTransitGatewayVpcAttachment: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyVolume: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyVolumeAttribute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyVpcAttribute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyVpcEndpoint: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyVpcEndpointConnectionNotification: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyVpcEndpointServiceConfiguration: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyVpcEndpointServicePermissions: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyVpcPeeringConnectionOptions: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyVpcTenancy: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyVpnConnection: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyVpnConnectionOptions: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyVpnTunnelCertificate: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let modifyVpnTunnelOptions: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let monitorInstances: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let moveAddressToVpc: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let provisionByoipCidr: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let purchaseHostReservation: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let purchaseReservedInstancesOffering: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let purchaseScheduledInstances: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let rebootInstances: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let registerImage: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let registerInstanceEventNotificationAttributes: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let registerTransitGatewayMulticastGroupMembers: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let registerTransitGatewayMulticastGroupSources: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let rejectTransitGatewayMulticastDomainAssociations: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let rejectTransitGatewayPeeringAttachment: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let rejectTransitGatewayVpcAttachment: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let rejectVpcEndpointConnections: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let rejectVpcPeeringConnection: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let releaseAddress: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let releaseHosts: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let replaceIamInstanceProfileAssociation: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let replaceNetworkAclAssociation: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let replaceNetworkAclEntry: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let replaceRoute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let replaceRouteTableAssociation: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let replaceTransitGatewayRoute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let reportInstanceStatus: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let requestSpotFleet: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let requestSpotInstances: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let resetAddressAttribute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let resetEbsDefaultKmsKeyId: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let resetFpgaImageAttribute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let resetImageAttribute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let resetInstanceAttribute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let resetNetworkInterfaceAttribute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let resetSnapshotAttribute: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let restoreAddressToClassic: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let restoreManagedPrefixListVersion: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let revokeClientVpnIngress: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let revokeSecurityGroupEgress: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let revokeSecurityGroupIngress: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let runInstances: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let runScheduledInstances: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let searchLocalGatewayRoutes: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let searchTransitGatewayMulticastGroups: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let searchTransitGatewayRoutes: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let sendDiagnosticInterrupt: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let startInstances: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let startNetworkInsightsAnalysis: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let startVpcEndpointServicePrivateDnsVerification: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let stopInstances: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let terminateClientVpnConnections: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let terminateInstances: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let unassignIpv6Addresses: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let unassignPrivateIpAddresses: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let unmonitorInstances: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let updateSecurityGroupRuleDescriptionsEgress: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let updateSecurityGroupRuleDescriptionsIngress: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>
    public let withdrawByoipCidr: StandardSmokeAWSOperationReporting<ElasticComputeCloudModelOperations>

    public init(clientName: String, reportingConfiguration: SmokeAWSClientReportingConfiguration<ElasticComputeCloudModelOperations>) {
        self.acceptReservedInstancesExchangeQuote = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .acceptReservedInstancesExchangeQuote, configuration: reportingConfiguration)
        self.acceptTransitGatewayMulticastDomainAssociations = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .acceptTransitGatewayMulticastDomainAssociations, configuration: reportingConfiguration)
        self.acceptTransitGatewayPeeringAttachment = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .acceptTransitGatewayPeeringAttachment, configuration: reportingConfiguration)
        self.acceptTransitGatewayVpcAttachment = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .acceptTransitGatewayVpcAttachment, configuration: reportingConfiguration)
        self.acceptVpcEndpointConnections = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .acceptVpcEndpointConnections, configuration: reportingConfiguration)
        self.acceptVpcPeeringConnection = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .acceptVpcPeeringConnection, configuration: reportingConfiguration)
        self.advertiseByoipCidr = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .advertiseByoipCidr, configuration: reportingConfiguration)
        self.allocateAddress = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .allocateAddress, configuration: reportingConfiguration)
        self.allocateHosts = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .allocateHosts, configuration: reportingConfiguration)
        self.applySecurityGroupsToClientVpnTargetNetwork = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .applySecurityGroupsToClientVpnTargetNetwork, configuration: reportingConfiguration)
        self.assignIpv6Addresses = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .assignIpv6Addresses, configuration: reportingConfiguration)
        self.assignPrivateIpAddresses = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .assignPrivateIpAddresses, configuration: reportingConfiguration)
        self.associateAddress = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .associateAddress, configuration: reportingConfiguration)
        self.associateClientVpnTargetNetwork = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .associateClientVpnTargetNetwork, configuration: reportingConfiguration)
        self.associateDhcpOptions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .associateDhcpOptions, configuration: reportingConfiguration)
        self.associateEnclaveCertificateIamRole = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .associateEnclaveCertificateIamRole, configuration: reportingConfiguration)
        self.associateIamInstanceProfile = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .associateIamInstanceProfile, configuration: reportingConfiguration)
        self.associateInstanceEventWindow = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .associateInstanceEventWindow, configuration: reportingConfiguration)
        self.associateRouteTable = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .associateRouteTable, configuration: reportingConfiguration)
        self.associateSubnetCidrBlock = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .associateSubnetCidrBlock, configuration: reportingConfiguration)
        self.associateTransitGatewayMulticastDomain = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .associateTransitGatewayMulticastDomain, configuration: reportingConfiguration)
        self.associateTransitGatewayRouteTable = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .associateTransitGatewayRouteTable, configuration: reportingConfiguration)
        self.associateTrunkInterface = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .associateTrunkInterface, configuration: reportingConfiguration)
        self.associateVpcCidrBlock = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .associateVpcCidrBlock, configuration: reportingConfiguration)
        self.attachClassicLinkVpc = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .attachClassicLinkVpc, configuration: reportingConfiguration)
        self.attachInternetGateway = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .attachInternetGateway, configuration: reportingConfiguration)
        self.attachNetworkInterface = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .attachNetworkInterface, configuration: reportingConfiguration)
        self.attachVolume = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .attachVolume, configuration: reportingConfiguration)
        self.attachVpnGateway = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .attachVpnGateway, configuration: reportingConfiguration)
        self.authorizeClientVpnIngress = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .authorizeClientVpnIngress, configuration: reportingConfiguration)
        self.authorizeSecurityGroupEgress = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .authorizeSecurityGroupEgress, configuration: reportingConfiguration)
        self.authorizeSecurityGroupIngress = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .authorizeSecurityGroupIngress, configuration: reportingConfiguration)
        self.bundleInstance = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .bundleInstance, configuration: reportingConfiguration)
        self.cancelBundleTask = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .cancelBundleTask, configuration: reportingConfiguration)
        self.cancelCapacityReservation = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .cancelCapacityReservation, configuration: reportingConfiguration)
        self.cancelCapacityReservationFleets = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .cancelCapacityReservationFleets, configuration: reportingConfiguration)
        self.cancelConversionTask = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .cancelConversionTask, configuration: reportingConfiguration)
        self.cancelExportTask = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .cancelExportTask, configuration: reportingConfiguration)
        self.cancelImportTask = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .cancelImportTask, configuration: reportingConfiguration)
        self.cancelReservedInstancesListing = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .cancelReservedInstancesListing, configuration: reportingConfiguration)
        self.cancelSpotFleetRequests = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .cancelSpotFleetRequests, configuration: reportingConfiguration)
        self.cancelSpotInstanceRequests = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .cancelSpotInstanceRequests, configuration: reportingConfiguration)
        self.confirmProductInstance = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .confirmProductInstance, configuration: reportingConfiguration)
        self.copyFpgaImage = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .copyFpgaImage, configuration: reportingConfiguration)
        self.copyImage = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .copyImage, configuration: reportingConfiguration)
        self.copySnapshot = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .copySnapshot, configuration: reportingConfiguration)
        self.createCapacityReservation = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createCapacityReservation, configuration: reportingConfiguration)
        self.createCapacityReservationFleet = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createCapacityReservationFleet, configuration: reportingConfiguration)
        self.createCarrierGateway = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createCarrierGateway, configuration: reportingConfiguration)
        self.createClientVpnEndpoint = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createClientVpnEndpoint, configuration: reportingConfiguration)
        self.createClientVpnRoute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createClientVpnRoute, configuration: reportingConfiguration)
        self.createCustomerGateway = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createCustomerGateway, configuration: reportingConfiguration)
        self.createDefaultSubnet = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createDefaultSubnet, configuration: reportingConfiguration)
        self.createDefaultVpc = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createDefaultVpc, configuration: reportingConfiguration)
        self.createDhcpOptions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createDhcpOptions, configuration: reportingConfiguration)
        self.createEgressOnlyInternetGateway = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createEgressOnlyInternetGateway, configuration: reportingConfiguration)
        self.createFleet = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createFleet, configuration: reportingConfiguration)
        self.createFlowLogs = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createFlowLogs, configuration: reportingConfiguration)
        self.createFpgaImage = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createFpgaImage, configuration: reportingConfiguration)
        self.createImage = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createImage, configuration: reportingConfiguration)
        self.createInstanceEventWindow = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createInstanceEventWindow, configuration: reportingConfiguration)
        self.createInstanceExportTask = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createInstanceExportTask, configuration: reportingConfiguration)
        self.createInternetGateway = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createInternetGateway, configuration: reportingConfiguration)
        self.createKeyPair = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createKeyPair, configuration: reportingConfiguration)
        self.createLaunchTemplate = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createLaunchTemplate, configuration: reportingConfiguration)
        self.createLaunchTemplateVersion = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createLaunchTemplateVersion, configuration: reportingConfiguration)
        self.createLocalGatewayRoute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createLocalGatewayRoute, configuration: reportingConfiguration)
        self.createLocalGatewayRouteTableVpcAssociation = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createLocalGatewayRouteTableVpcAssociation, configuration: reportingConfiguration)
        self.createManagedPrefixList = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createManagedPrefixList, configuration: reportingConfiguration)
        self.createNatGateway = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createNatGateway, configuration: reportingConfiguration)
        self.createNetworkAcl = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createNetworkAcl, configuration: reportingConfiguration)
        self.createNetworkAclEntry = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createNetworkAclEntry, configuration: reportingConfiguration)
        self.createNetworkInsightsPath = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createNetworkInsightsPath, configuration: reportingConfiguration)
        self.createNetworkInterface = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createNetworkInterface, configuration: reportingConfiguration)
        self.createNetworkInterfacePermission = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createNetworkInterfacePermission, configuration: reportingConfiguration)
        self.createPlacementGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createPlacementGroup, configuration: reportingConfiguration)
        self.createReplaceRootVolumeTask = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createReplaceRootVolumeTask, configuration: reportingConfiguration)
        self.createReservedInstancesListing = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createReservedInstancesListing, configuration: reportingConfiguration)
        self.createRestoreImageTask = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createRestoreImageTask, configuration: reportingConfiguration)
        self.createRoute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createRoute, configuration: reportingConfiguration)
        self.createRouteTable = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createRouteTable, configuration: reportingConfiguration)
        self.createSecurityGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createSecurityGroup, configuration: reportingConfiguration)
        self.createSnapshot = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createSnapshot, configuration: reportingConfiguration)
        self.createSnapshots = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createSnapshots, configuration: reportingConfiguration)
        self.createSpotDatafeedSubscription = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createSpotDatafeedSubscription, configuration: reportingConfiguration)
        self.createStoreImageTask = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createStoreImageTask, configuration: reportingConfiguration)
        self.createSubnet = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createSubnet, configuration: reportingConfiguration)
        self.createSubnetCidrReservation = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createSubnetCidrReservation, configuration: reportingConfiguration)
        self.createTags = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createTags, configuration: reportingConfiguration)
        self.createTrafficMirrorFilter = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createTrafficMirrorFilter, configuration: reportingConfiguration)
        self.createTrafficMirrorFilterRule = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createTrafficMirrorFilterRule, configuration: reportingConfiguration)
        self.createTrafficMirrorSession = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createTrafficMirrorSession, configuration: reportingConfiguration)
        self.createTrafficMirrorTarget = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createTrafficMirrorTarget, configuration: reportingConfiguration)
        self.createTransitGateway = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createTransitGateway, configuration: reportingConfiguration)
        self.createTransitGatewayConnect = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createTransitGatewayConnect, configuration: reportingConfiguration)
        self.createTransitGatewayConnectPeer = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createTransitGatewayConnectPeer, configuration: reportingConfiguration)
        self.createTransitGatewayMulticastDomain = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createTransitGatewayMulticastDomain, configuration: reportingConfiguration)
        self.createTransitGatewayPeeringAttachment = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createTransitGatewayPeeringAttachment, configuration: reportingConfiguration)
        self.createTransitGatewayPrefixListReference = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createTransitGatewayPrefixListReference, configuration: reportingConfiguration)
        self.createTransitGatewayRoute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createTransitGatewayRoute, configuration: reportingConfiguration)
        self.createTransitGatewayRouteTable = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createTransitGatewayRouteTable, configuration: reportingConfiguration)
        self.createTransitGatewayVpcAttachment = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createTransitGatewayVpcAttachment, configuration: reportingConfiguration)
        self.createVolume = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createVolume, configuration: reportingConfiguration)
        self.createVpc = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createVpc, configuration: reportingConfiguration)
        self.createVpcEndpoint = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createVpcEndpoint, configuration: reportingConfiguration)
        self.createVpcEndpointConnectionNotification = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createVpcEndpointConnectionNotification, configuration: reportingConfiguration)
        self.createVpcEndpointServiceConfiguration = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createVpcEndpointServiceConfiguration, configuration: reportingConfiguration)
        self.createVpcPeeringConnection = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createVpcPeeringConnection, configuration: reportingConfiguration)
        self.createVpnConnection = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createVpnConnection, configuration: reportingConfiguration)
        self.createVpnConnectionRoute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createVpnConnectionRoute, configuration: reportingConfiguration)
        self.createVpnGateway = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createVpnGateway, configuration: reportingConfiguration)
        self.deleteCarrierGateway = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteCarrierGateway, configuration: reportingConfiguration)
        self.deleteClientVpnEndpoint = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteClientVpnEndpoint, configuration: reportingConfiguration)
        self.deleteClientVpnRoute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteClientVpnRoute, configuration: reportingConfiguration)
        self.deleteCustomerGateway = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteCustomerGateway, configuration: reportingConfiguration)
        self.deleteDhcpOptions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteDhcpOptions, configuration: reportingConfiguration)
        self.deleteEgressOnlyInternetGateway = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteEgressOnlyInternetGateway, configuration: reportingConfiguration)
        self.deleteFleets = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteFleets, configuration: reportingConfiguration)
        self.deleteFlowLogs = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteFlowLogs, configuration: reportingConfiguration)
        self.deleteFpgaImage = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteFpgaImage, configuration: reportingConfiguration)
        self.deleteInstanceEventWindow = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteInstanceEventWindow, configuration: reportingConfiguration)
        self.deleteInternetGateway = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteInternetGateway, configuration: reportingConfiguration)
        self.deleteKeyPair = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteKeyPair, configuration: reportingConfiguration)
        self.deleteLaunchTemplate = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteLaunchTemplate, configuration: reportingConfiguration)
        self.deleteLaunchTemplateVersions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteLaunchTemplateVersions, configuration: reportingConfiguration)
        self.deleteLocalGatewayRoute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteLocalGatewayRoute, configuration: reportingConfiguration)
        self.deleteLocalGatewayRouteTableVpcAssociation = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteLocalGatewayRouteTableVpcAssociation, configuration: reportingConfiguration)
        self.deleteManagedPrefixList = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteManagedPrefixList, configuration: reportingConfiguration)
        self.deleteNatGateway = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteNatGateway, configuration: reportingConfiguration)
        self.deleteNetworkAcl = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteNetworkAcl, configuration: reportingConfiguration)
        self.deleteNetworkAclEntry = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteNetworkAclEntry, configuration: reportingConfiguration)
        self.deleteNetworkInsightsAnalysis = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteNetworkInsightsAnalysis, configuration: reportingConfiguration)
        self.deleteNetworkInsightsPath = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteNetworkInsightsPath, configuration: reportingConfiguration)
        self.deleteNetworkInterface = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteNetworkInterface, configuration: reportingConfiguration)
        self.deleteNetworkInterfacePermission = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteNetworkInterfacePermission, configuration: reportingConfiguration)
        self.deletePlacementGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deletePlacementGroup, configuration: reportingConfiguration)
        self.deleteQueuedReservedInstances = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteQueuedReservedInstances, configuration: reportingConfiguration)
        self.deleteRoute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteRoute, configuration: reportingConfiguration)
        self.deleteRouteTable = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteRouteTable, configuration: reportingConfiguration)
        self.deleteSecurityGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteSecurityGroup, configuration: reportingConfiguration)
        self.deleteSnapshot = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteSnapshot, configuration: reportingConfiguration)
        self.deleteSpotDatafeedSubscription = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteSpotDatafeedSubscription, configuration: reportingConfiguration)
        self.deleteSubnet = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteSubnet, configuration: reportingConfiguration)
        self.deleteSubnetCidrReservation = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteSubnetCidrReservation, configuration: reportingConfiguration)
        self.deleteTags = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteTags, configuration: reportingConfiguration)
        self.deleteTrafficMirrorFilter = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteTrafficMirrorFilter, configuration: reportingConfiguration)
        self.deleteTrafficMirrorFilterRule = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteTrafficMirrorFilterRule, configuration: reportingConfiguration)
        self.deleteTrafficMirrorSession = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteTrafficMirrorSession, configuration: reportingConfiguration)
        self.deleteTrafficMirrorTarget = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteTrafficMirrorTarget, configuration: reportingConfiguration)
        self.deleteTransitGateway = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteTransitGateway, configuration: reportingConfiguration)
        self.deleteTransitGatewayConnect = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteTransitGatewayConnect, configuration: reportingConfiguration)
        self.deleteTransitGatewayConnectPeer = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteTransitGatewayConnectPeer, configuration: reportingConfiguration)
        self.deleteTransitGatewayMulticastDomain = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteTransitGatewayMulticastDomain, configuration: reportingConfiguration)
        self.deleteTransitGatewayPeeringAttachment = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteTransitGatewayPeeringAttachment, configuration: reportingConfiguration)
        self.deleteTransitGatewayPrefixListReference = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteTransitGatewayPrefixListReference, configuration: reportingConfiguration)
        self.deleteTransitGatewayRoute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteTransitGatewayRoute, configuration: reportingConfiguration)
        self.deleteTransitGatewayRouteTable = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteTransitGatewayRouteTable, configuration: reportingConfiguration)
        self.deleteTransitGatewayVpcAttachment = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteTransitGatewayVpcAttachment, configuration: reportingConfiguration)
        self.deleteVolume = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteVolume, configuration: reportingConfiguration)
        self.deleteVpc = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteVpc, configuration: reportingConfiguration)
        self.deleteVpcEndpointConnectionNotifications = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteVpcEndpointConnectionNotifications, configuration: reportingConfiguration)
        self.deleteVpcEndpointServiceConfigurations = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteVpcEndpointServiceConfigurations, configuration: reportingConfiguration)
        self.deleteVpcEndpoints = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteVpcEndpoints, configuration: reportingConfiguration)
        self.deleteVpcPeeringConnection = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteVpcPeeringConnection, configuration: reportingConfiguration)
        self.deleteVpnConnection = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteVpnConnection, configuration: reportingConfiguration)
        self.deleteVpnConnectionRoute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteVpnConnectionRoute, configuration: reportingConfiguration)
        self.deleteVpnGateway = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteVpnGateway, configuration: reportingConfiguration)
        self.deprovisionByoipCidr = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deprovisionByoipCidr, configuration: reportingConfiguration)
        self.deregisterImage = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deregisterImage, configuration: reportingConfiguration)
        self.deregisterInstanceEventNotificationAttributes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deregisterInstanceEventNotificationAttributes, configuration: reportingConfiguration)
        self.deregisterTransitGatewayMulticastGroupMembers = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deregisterTransitGatewayMulticastGroupMembers, configuration: reportingConfiguration)
        self.deregisterTransitGatewayMulticastGroupSources = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deregisterTransitGatewayMulticastGroupSources, configuration: reportingConfiguration)
        self.describeAccountAttributes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeAccountAttributes, configuration: reportingConfiguration)
        self.describeAddresses = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeAddresses, configuration: reportingConfiguration)
        self.describeAddressesAttribute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeAddressesAttribute, configuration: reportingConfiguration)
        self.describeAggregateIdFormat = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeAggregateIdFormat, configuration: reportingConfiguration)
        self.describeAvailabilityZones = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeAvailabilityZones, configuration: reportingConfiguration)
        self.describeBundleTasks = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeBundleTasks, configuration: reportingConfiguration)
        self.describeByoipCidrs = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeByoipCidrs, configuration: reportingConfiguration)
        self.describeCapacityReservationFleets = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeCapacityReservationFleets, configuration: reportingConfiguration)
        self.describeCapacityReservations = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeCapacityReservations, configuration: reportingConfiguration)
        self.describeCarrierGateways = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeCarrierGateways, configuration: reportingConfiguration)
        self.describeClassicLinkInstances = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeClassicLinkInstances, configuration: reportingConfiguration)
        self.describeClientVpnAuthorizationRules = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeClientVpnAuthorizationRules, configuration: reportingConfiguration)
        self.describeClientVpnConnections = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeClientVpnConnections, configuration: reportingConfiguration)
        self.describeClientVpnEndpoints = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeClientVpnEndpoints, configuration: reportingConfiguration)
        self.describeClientVpnRoutes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeClientVpnRoutes, configuration: reportingConfiguration)
        self.describeClientVpnTargetNetworks = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeClientVpnTargetNetworks, configuration: reportingConfiguration)
        self.describeCoipPools = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeCoipPools, configuration: reportingConfiguration)
        self.describeConversionTasks = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeConversionTasks, configuration: reportingConfiguration)
        self.describeCustomerGateways = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeCustomerGateways, configuration: reportingConfiguration)
        self.describeDhcpOptions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeDhcpOptions, configuration: reportingConfiguration)
        self.describeEgressOnlyInternetGateways = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeEgressOnlyInternetGateways, configuration: reportingConfiguration)
        self.describeElasticGpus = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeElasticGpus, configuration: reportingConfiguration)
        self.describeExportImageTasks = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeExportImageTasks, configuration: reportingConfiguration)
        self.describeExportTasks = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeExportTasks, configuration: reportingConfiguration)
        self.describeFastSnapshotRestores = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeFastSnapshotRestores, configuration: reportingConfiguration)
        self.describeFleetHistory = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeFleetHistory, configuration: reportingConfiguration)
        self.describeFleetInstances = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeFleetInstances, configuration: reportingConfiguration)
        self.describeFleets = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeFleets, configuration: reportingConfiguration)
        self.describeFlowLogs = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeFlowLogs, configuration: reportingConfiguration)
        self.describeFpgaImageAttribute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeFpgaImageAttribute, configuration: reportingConfiguration)
        self.describeFpgaImages = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeFpgaImages, configuration: reportingConfiguration)
        self.describeHostReservationOfferings = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeHostReservationOfferings, configuration: reportingConfiguration)
        self.describeHostReservations = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeHostReservations, configuration: reportingConfiguration)
        self.describeHosts = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeHosts, configuration: reportingConfiguration)
        self.describeIamInstanceProfileAssociations = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeIamInstanceProfileAssociations, configuration: reportingConfiguration)
        self.describeIdFormat = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeIdFormat, configuration: reportingConfiguration)
        self.describeIdentityIdFormat = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeIdentityIdFormat, configuration: reportingConfiguration)
        self.describeImageAttribute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeImageAttribute, configuration: reportingConfiguration)
        self.describeImages = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeImages, configuration: reportingConfiguration)
        self.describeImportImageTasks = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeImportImageTasks, configuration: reportingConfiguration)
        self.describeImportSnapshotTasks = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeImportSnapshotTasks, configuration: reportingConfiguration)
        self.describeInstanceAttribute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeInstanceAttribute, configuration: reportingConfiguration)
        self.describeInstanceCreditSpecifications = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeInstanceCreditSpecifications, configuration: reportingConfiguration)
        self.describeInstanceEventNotificationAttributes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeInstanceEventNotificationAttributes, configuration: reportingConfiguration)
        self.describeInstanceEventWindows = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeInstanceEventWindows, configuration: reportingConfiguration)
        self.describeInstanceStatus = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeInstanceStatus, configuration: reportingConfiguration)
        self.describeInstanceTypeOfferings = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeInstanceTypeOfferings, configuration: reportingConfiguration)
        self.describeInstanceTypes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeInstanceTypes, configuration: reportingConfiguration)
        self.describeInstances = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeInstances, configuration: reportingConfiguration)
        self.describeInternetGateways = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeInternetGateways, configuration: reportingConfiguration)
        self.describeIpv6Pools = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeIpv6Pools, configuration: reportingConfiguration)
        self.describeKeyPairs = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeKeyPairs, configuration: reportingConfiguration)
        self.describeLaunchTemplateVersions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeLaunchTemplateVersions, configuration: reportingConfiguration)
        self.describeLaunchTemplates = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeLaunchTemplates, configuration: reportingConfiguration)
        self.describeLocalGatewayRouteTableVirtualInterfaceGroupAssociations = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeLocalGatewayRouteTableVirtualInterfaceGroupAssociations, configuration: reportingConfiguration)
        self.describeLocalGatewayRouteTableVpcAssociations = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeLocalGatewayRouteTableVpcAssociations, configuration: reportingConfiguration)
        self.describeLocalGatewayRouteTables = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeLocalGatewayRouteTables, configuration: reportingConfiguration)
        self.describeLocalGatewayVirtualInterfaceGroups = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeLocalGatewayVirtualInterfaceGroups, configuration: reportingConfiguration)
        self.describeLocalGatewayVirtualInterfaces = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeLocalGatewayVirtualInterfaces, configuration: reportingConfiguration)
        self.describeLocalGateways = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeLocalGateways, configuration: reportingConfiguration)
        self.describeManagedPrefixLists = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeManagedPrefixLists, configuration: reportingConfiguration)
        self.describeMovingAddresses = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeMovingAddresses, configuration: reportingConfiguration)
        self.describeNatGateways = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeNatGateways, configuration: reportingConfiguration)
        self.describeNetworkAcls = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeNetworkAcls, configuration: reportingConfiguration)
        self.describeNetworkInsightsAnalyses = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeNetworkInsightsAnalyses, configuration: reportingConfiguration)
        self.describeNetworkInsightsPaths = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeNetworkInsightsPaths, configuration: reportingConfiguration)
        self.describeNetworkInterfaceAttribute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeNetworkInterfaceAttribute, configuration: reportingConfiguration)
        self.describeNetworkInterfacePermissions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeNetworkInterfacePermissions, configuration: reportingConfiguration)
        self.describeNetworkInterfaces = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeNetworkInterfaces, configuration: reportingConfiguration)
        self.describePlacementGroups = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describePlacementGroups, configuration: reportingConfiguration)
        self.describePrefixLists = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describePrefixLists, configuration: reportingConfiguration)
        self.describePrincipalIdFormat = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describePrincipalIdFormat, configuration: reportingConfiguration)
        self.describePublicIpv4Pools = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describePublicIpv4Pools, configuration: reportingConfiguration)
        self.describeRegions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeRegions, configuration: reportingConfiguration)
        self.describeReplaceRootVolumeTasks = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeReplaceRootVolumeTasks, configuration: reportingConfiguration)
        self.describeReservedInstances = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeReservedInstances, configuration: reportingConfiguration)
        self.describeReservedInstancesListings = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeReservedInstancesListings, configuration: reportingConfiguration)
        self.describeReservedInstancesModifications = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeReservedInstancesModifications, configuration: reportingConfiguration)
        self.describeReservedInstancesOfferings = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeReservedInstancesOfferings, configuration: reportingConfiguration)
        self.describeRouteTables = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeRouteTables, configuration: reportingConfiguration)
        self.describeScheduledInstanceAvailability = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeScheduledInstanceAvailability, configuration: reportingConfiguration)
        self.describeScheduledInstances = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeScheduledInstances, configuration: reportingConfiguration)
        self.describeSecurityGroupReferences = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeSecurityGroupReferences, configuration: reportingConfiguration)
        self.describeSecurityGroupRules = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeSecurityGroupRules, configuration: reportingConfiguration)
        self.describeSecurityGroups = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeSecurityGroups, configuration: reportingConfiguration)
        self.describeSnapshotAttribute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeSnapshotAttribute, configuration: reportingConfiguration)
        self.describeSnapshots = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeSnapshots, configuration: reportingConfiguration)
        self.describeSpotDatafeedSubscription = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeSpotDatafeedSubscription, configuration: reportingConfiguration)
        self.describeSpotFleetInstances = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeSpotFleetInstances, configuration: reportingConfiguration)
        self.describeSpotFleetRequestHistory = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeSpotFleetRequestHistory, configuration: reportingConfiguration)
        self.describeSpotFleetRequests = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeSpotFleetRequests, configuration: reportingConfiguration)
        self.describeSpotInstanceRequests = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeSpotInstanceRequests, configuration: reportingConfiguration)
        self.describeSpotPriceHistory = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeSpotPriceHistory, configuration: reportingConfiguration)
        self.describeStaleSecurityGroups = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeStaleSecurityGroups, configuration: reportingConfiguration)
        self.describeStoreImageTasks = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeStoreImageTasks, configuration: reportingConfiguration)
        self.describeSubnets = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeSubnets, configuration: reportingConfiguration)
        self.describeTags = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeTags, configuration: reportingConfiguration)
        self.describeTrafficMirrorFilters = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeTrafficMirrorFilters, configuration: reportingConfiguration)
        self.describeTrafficMirrorSessions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeTrafficMirrorSessions, configuration: reportingConfiguration)
        self.describeTrafficMirrorTargets = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeTrafficMirrorTargets, configuration: reportingConfiguration)
        self.describeTransitGatewayAttachments = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeTransitGatewayAttachments, configuration: reportingConfiguration)
        self.describeTransitGatewayConnectPeers = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeTransitGatewayConnectPeers, configuration: reportingConfiguration)
        self.describeTransitGatewayConnects = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeTransitGatewayConnects, configuration: reportingConfiguration)
        self.describeTransitGatewayMulticastDomains = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeTransitGatewayMulticastDomains, configuration: reportingConfiguration)
        self.describeTransitGatewayPeeringAttachments = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeTransitGatewayPeeringAttachments, configuration: reportingConfiguration)
        self.describeTransitGatewayRouteTables = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeTransitGatewayRouteTables, configuration: reportingConfiguration)
        self.describeTransitGatewayVpcAttachments = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeTransitGatewayVpcAttachments, configuration: reportingConfiguration)
        self.describeTransitGateways = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeTransitGateways, configuration: reportingConfiguration)
        self.describeTrunkInterfaceAssociations = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeTrunkInterfaceAssociations, configuration: reportingConfiguration)
        self.describeVolumeAttribute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeVolumeAttribute, configuration: reportingConfiguration)
        self.describeVolumeStatus = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeVolumeStatus, configuration: reportingConfiguration)
        self.describeVolumes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeVolumes, configuration: reportingConfiguration)
        self.describeVolumesModifications = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeVolumesModifications, configuration: reportingConfiguration)
        self.describeVpcAttribute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeVpcAttribute, configuration: reportingConfiguration)
        self.describeVpcClassicLink = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeVpcClassicLink, configuration: reportingConfiguration)
        self.describeVpcClassicLinkDnsSupport = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeVpcClassicLinkDnsSupport, configuration: reportingConfiguration)
        self.describeVpcEndpointConnectionNotifications = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeVpcEndpointConnectionNotifications, configuration: reportingConfiguration)
        self.describeVpcEndpointConnections = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeVpcEndpointConnections, configuration: reportingConfiguration)
        self.describeVpcEndpointServiceConfigurations = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeVpcEndpointServiceConfigurations, configuration: reportingConfiguration)
        self.describeVpcEndpointServicePermissions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeVpcEndpointServicePermissions, configuration: reportingConfiguration)
        self.describeVpcEndpointServices = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeVpcEndpointServices, configuration: reportingConfiguration)
        self.describeVpcEndpoints = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeVpcEndpoints, configuration: reportingConfiguration)
        self.describeVpcPeeringConnections = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeVpcPeeringConnections, configuration: reportingConfiguration)
        self.describeVpcs = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeVpcs, configuration: reportingConfiguration)
        self.describeVpnConnections = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeVpnConnections, configuration: reportingConfiguration)
        self.describeVpnGateways = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeVpnGateways, configuration: reportingConfiguration)
        self.detachClassicLinkVpc = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .detachClassicLinkVpc, configuration: reportingConfiguration)
        self.detachInternetGateway = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .detachInternetGateway, configuration: reportingConfiguration)
        self.detachNetworkInterface = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .detachNetworkInterface, configuration: reportingConfiguration)
        self.detachVolume = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .detachVolume, configuration: reportingConfiguration)
        self.detachVpnGateway = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .detachVpnGateway, configuration: reportingConfiguration)
        self.disableEbsEncryptionByDefault = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .disableEbsEncryptionByDefault, configuration: reportingConfiguration)
        self.disableFastSnapshotRestores = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .disableFastSnapshotRestores, configuration: reportingConfiguration)
        self.disableImageDeprecation = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .disableImageDeprecation, configuration: reportingConfiguration)
        self.disableSerialConsoleAccess = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .disableSerialConsoleAccess, configuration: reportingConfiguration)
        self.disableTransitGatewayRouteTablePropagation = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .disableTransitGatewayRouteTablePropagation, configuration: reportingConfiguration)
        self.disableVgwRoutePropagation = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .disableVgwRoutePropagation, configuration: reportingConfiguration)
        self.disableVpcClassicLink = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .disableVpcClassicLink, configuration: reportingConfiguration)
        self.disableVpcClassicLinkDnsSupport = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .disableVpcClassicLinkDnsSupport, configuration: reportingConfiguration)
        self.disassociateAddress = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .disassociateAddress, configuration: reportingConfiguration)
        self.disassociateClientVpnTargetNetwork = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .disassociateClientVpnTargetNetwork, configuration: reportingConfiguration)
        self.disassociateEnclaveCertificateIamRole = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .disassociateEnclaveCertificateIamRole, configuration: reportingConfiguration)
        self.disassociateIamInstanceProfile = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .disassociateIamInstanceProfile, configuration: reportingConfiguration)
        self.disassociateInstanceEventWindow = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .disassociateInstanceEventWindow, configuration: reportingConfiguration)
        self.disassociateRouteTable = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .disassociateRouteTable, configuration: reportingConfiguration)
        self.disassociateSubnetCidrBlock = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .disassociateSubnetCidrBlock, configuration: reportingConfiguration)
        self.disassociateTransitGatewayMulticastDomain = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .disassociateTransitGatewayMulticastDomain, configuration: reportingConfiguration)
        self.disassociateTransitGatewayRouteTable = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .disassociateTransitGatewayRouteTable, configuration: reportingConfiguration)
        self.disassociateTrunkInterface = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .disassociateTrunkInterface, configuration: reportingConfiguration)
        self.disassociateVpcCidrBlock = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .disassociateVpcCidrBlock, configuration: reportingConfiguration)
        self.enableEbsEncryptionByDefault = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .enableEbsEncryptionByDefault, configuration: reportingConfiguration)
        self.enableFastSnapshotRestores = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .enableFastSnapshotRestores, configuration: reportingConfiguration)
        self.enableImageDeprecation = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .enableImageDeprecation, configuration: reportingConfiguration)
        self.enableSerialConsoleAccess = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .enableSerialConsoleAccess, configuration: reportingConfiguration)
        self.enableTransitGatewayRouteTablePropagation = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .enableTransitGatewayRouteTablePropagation, configuration: reportingConfiguration)
        self.enableVgwRoutePropagation = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .enableVgwRoutePropagation, configuration: reportingConfiguration)
        self.enableVolumeIO = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .enableVolumeIO, configuration: reportingConfiguration)
        self.enableVpcClassicLink = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .enableVpcClassicLink, configuration: reportingConfiguration)
        self.enableVpcClassicLinkDnsSupport = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .enableVpcClassicLinkDnsSupport, configuration: reportingConfiguration)
        self.exportClientVpnClientCertificateRevocationList = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .exportClientVpnClientCertificateRevocationList, configuration: reportingConfiguration)
        self.exportClientVpnClientConfiguration = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .exportClientVpnClientConfiguration, configuration: reportingConfiguration)
        self.exportImage = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .exportImage, configuration: reportingConfiguration)
        self.exportTransitGatewayRoutes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .exportTransitGatewayRoutes, configuration: reportingConfiguration)
        self.getAssociatedEnclaveCertificateIamRoles = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getAssociatedEnclaveCertificateIamRoles, configuration: reportingConfiguration)
        self.getAssociatedIpv6PoolCidrs = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getAssociatedIpv6PoolCidrs, configuration: reportingConfiguration)
        self.getCapacityReservationUsage = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getCapacityReservationUsage, configuration: reportingConfiguration)
        self.getCoipPoolUsage = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getCoipPoolUsage, configuration: reportingConfiguration)
        self.getConsoleOutput = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getConsoleOutput, configuration: reportingConfiguration)
        self.getConsoleScreenshot = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getConsoleScreenshot, configuration: reportingConfiguration)
        self.getDefaultCreditSpecification = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getDefaultCreditSpecification, configuration: reportingConfiguration)
        self.getEbsDefaultKmsKeyId = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getEbsDefaultKmsKeyId, configuration: reportingConfiguration)
        self.getEbsEncryptionByDefault = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getEbsEncryptionByDefault, configuration: reportingConfiguration)
        self.getFlowLogsIntegrationTemplate = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getFlowLogsIntegrationTemplate, configuration: reportingConfiguration)
        self.getGroupsForCapacityReservation = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getGroupsForCapacityReservation, configuration: reportingConfiguration)
        self.getHostReservationPurchasePreview = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getHostReservationPurchasePreview, configuration: reportingConfiguration)
        self.getInstanceTypesFromInstanceRequirements = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getInstanceTypesFromInstanceRequirements, configuration: reportingConfiguration)
        self.getLaunchTemplateData = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getLaunchTemplateData, configuration: reportingConfiguration)
        self.getManagedPrefixListAssociations = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getManagedPrefixListAssociations, configuration: reportingConfiguration)
        self.getManagedPrefixListEntries = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getManagedPrefixListEntries, configuration: reportingConfiguration)
        self.getPasswordData = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getPasswordData, configuration: reportingConfiguration)
        self.getReservedInstancesExchangeQuote = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getReservedInstancesExchangeQuote, configuration: reportingConfiguration)
        self.getSerialConsoleAccessStatus = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getSerialConsoleAccessStatus, configuration: reportingConfiguration)
        self.getSpotPlacementScores = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getSpotPlacementScores, configuration: reportingConfiguration)
        self.getSubnetCidrReservations = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getSubnetCidrReservations, configuration: reportingConfiguration)
        self.getTransitGatewayAttachmentPropagations = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getTransitGatewayAttachmentPropagations, configuration: reportingConfiguration)
        self.getTransitGatewayMulticastDomainAssociations = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getTransitGatewayMulticastDomainAssociations, configuration: reportingConfiguration)
        self.getTransitGatewayPrefixListReferences = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getTransitGatewayPrefixListReferences, configuration: reportingConfiguration)
        self.getTransitGatewayRouteTableAssociations = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getTransitGatewayRouteTableAssociations, configuration: reportingConfiguration)
        self.getTransitGatewayRouteTablePropagations = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getTransitGatewayRouteTablePropagations, configuration: reportingConfiguration)
        self.getVpnConnectionDeviceSampleConfiguration = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getVpnConnectionDeviceSampleConfiguration, configuration: reportingConfiguration)
        self.getVpnConnectionDeviceTypes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getVpnConnectionDeviceTypes, configuration: reportingConfiguration)
        self.importClientVpnClientCertificateRevocationList = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .importClientVpnClientCertificateRevocationList, configuration: reportingConfiguration)
        self.importImage = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .importImage, configuration: reportingConfiguration)
        self.importInstance = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .importInstance, configuration: reportingConfiguration)
        self.importKeyPair = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .importKeyPair, configuration: reportingConfiguration)
        self.importSnapshot = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .importSnapshot, configuration: reportingConfiguration)
        self.importVolume = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .importVolume, configuration: reportingConfiguration)
        self.modifyAddressAttribute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyAddressAttribute, configuration: reportingConfiguration)
        self.modifyAvailabilityZoneGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyAvailabilityZoneGroup, configuration: reportingConfiguration)
        self.modifyCapacityReservation = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyCapacityReservation, configuration: reportingConfiguration)
        self.modifyCapacityReservationFleet = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyCapacityReservationFleet, configuration: reportingConfiguration)
        self.modifyClientVpnEndpoint = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyClientVpnEndpoint, configuration: reportingConfiguration)
        self.modifyDefaultCreditSpecification = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyDefaultCreditSpecification, configuration: reportingConfiguration)
        self.modifyEbsDefaultKmsKeyId = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyEbsDefaultKmsKeyId, configuration: reportingConfiguration)
        self.modifyFleet = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyFleet, configuration: reportingConfiguration)
        self.modifyFpgaImageAttribute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyFpgaImageAttribute, configuration: reportingConfiguration)
        self.modifyHosts = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyHosts, configuration: reportingConfiguration)
        self.modifyIdFormat = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyIdFormat, configuration: reportingConfiguration)
        self.modifyIdentityIdFormat = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyIdentityIdFormat, configuration: reportingConfiguration)
        self.modifyImageAttribute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyImageAttribute, configuration: reportingConfiguration)
        self.modifyInstanceAttribute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyInstanceAttribute, configuration: reportingConfiguration)
        self.modifyInstanceCapacityReservationAttributes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyInstanceCapacityReservationAttributes, configuration: reportingConfiguration)
        self.modifyInstanceCreditSpecification = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyInstanceCreditSpecification, configuration: reportingConfiguration)
        self.modifyInstanceEventStartTime = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyInstanceEventStartTime, configuration: reportingConfiguration)
        self.modifyInstanceEventWindow = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyInstanceEventWindow, configuration: reportingConfiguration)
        self.modifyInstanceMetadataOptions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyInstanceMetadataOptions, configuration: reportingConfiguration)
        self.modifyInstancePlacement = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyInstancePlacement, configuration: reportingConfiguration)
        self.modifyLaunchTemplate = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyLaunchTemplate, configuration: reportingConfiguration)
        self.modifyManagedPrefixList = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyManagedPrefixList, configuration: reportingConfiguration)
        self.modifyNetworkInterfaceAttribute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyNetworkInterfaceAttribute, configuration: reportingConfiguration)
        self.modifyReservedInstances = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyReservedInstances, configuration: reportingConfiguration)
        self.modifySecurityGroupRules = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifySecurityGroupRules, configuration: reportingConfiguration)
        self.modifySnapshotAttribute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifySnapshotAttribute, configuration: reportingConfiguration)
        self.modifySpotFleetRequest = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifySpotFleetRequest, configuration: reportingConfiguration)
        self.modifySubnetAttribute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifySubnetAttribute, configuration: reportingConfiguration)
        self.modifyTrafficMirrorFilterNetworkServices = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyTrafficMirrorFilterNetworkServices, configuration: reportingConfiguration)
        self.modifyTrafficMirrorFilterRule = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyTrafficMirrorFilterRule, configuration: reportingConfiguration)
        self.modifyTrafficMirrorSession = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyTrafficMirrorSession, configuration: reportingConfiguration)
        self.modifyTransitGateway = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyTransitGateway, configuration: reportingConfiguration)
        self.modifyTransitGatewayPrefixListReference = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyTransitGatewayPrefixListReference, configuration: reportingConfiguration)
        self.modifyTransitGatewayVpcAttachment = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyTransitGatewayVpcAttachment, configuration: reportingConfiguration)
        self.modifyVolume = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyVolume, configuration: reportingConfiguration)
        self.modifyVolumeAttribute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyVolumeAttribute, configuration: reportingConfiguration)
        self.modifyVpcAttribute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyVpcAttribute, configuration: reportingConfiguration)
        self.modifyVpcEndpoint = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyVpcEndpoint, configuration: reportingConfiguration)
        self.modifyVpcEndpointConnectionNotification = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyVpcEndpointConnectionNotification, configuration: reportingConfiguration)
        self.modifyVpcEndpointServiceConfiguration = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyVpcEndpointServiceConfiguration, configuration: reportingConfiguration)
        self.modifyVpcEndpointServicePermissions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyVpcEndpointServicePermissions, configuration: reportingConfiguration)
        self.modifyVpcPeeringConnectionOptions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyVpcPeeringConnectionOptions, configuration: reportingConfiguration)
        self.modifyVpcTenancy = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyVpcTenancy, configuration: reportingConfiguration)
        self.modifyVpnConnection = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyVpnConnection, configuration: reportingConfiguration)
        self.modifyVpnConnectionOptions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyVpnConnectionOptions, configuration: reportingConfiguration)
        self.modifyVpnTunnelCertificate = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyVpnTunnelCertificate, configuration: reportingConfiguration)
        self.modifyVpnTunnelOptions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyVpnTunnelOptions, configuration: reportingConfiguration)
        self.monitorInstances = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .monitorInstances, configuration: reportingConfiguration)
        self.moveAddressToVpc = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .moveAddressToVpc, configuration: reportingConfiguration)
        self.provisionByoipCidr = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .provisionByoipCidr, configuration: reportingConfiguration)
        self.purchaseHostReservation = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .purchaseHostReservation, configuration: reportingConfiguration)
        self.purchaseReservedInstancesOffering = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .purchaseReservedInstancesOffering, configuration: reportingConfiguration)
        self.purchaseScheduledInstances = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .purchaseScheduledInstances, configuration: reportingConfiguration)
        self.rebootInstances = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .rebootInstances, configuration: reportingConfiguration)
        self.registerImage = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .registerImage, configuration: reportingConfiguration)
        self.registerInstanceEventNotificationAttributes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .registerInstanceEventNotificationAttributes, configuration: reportingConfiguration)
        self.registerTransitGatewayMulticastGroupMembers = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .registerTransitGatewayMulticastGroupMembers, configuration: reportingConfiguration)
        self.registerTransitGatewayMulticastGroupSources = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .registerTransitGatewayMulticastGroupSources, configuration: reportingConfiguration)
        self.rejectTransitGatewayMulticastDomainAssociations = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .rejectTransitGatewayMulticastDomainAssociations, configuration: reportingConfiguration)
        self.rejectTransitGatewayPeeringAttachment = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .rejectTransitGatewayPeeringAttachment, configuration: reportingConfiguration)
        self.rejectTransitGatewayVpcAttachment = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .rejectTransitGatewayVpcAttachment, configuration: reportingConfiguration)
        self.rejectVpcEndpointConnections = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .rejectVpcEndpointConnections, configuration: reportingConfiguration)
        self.rejectVpcPeeringConnection = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .rejectVpcPeeringConnection, configuration: reportingConfiguration)
        self.releaseAddress = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .releaseAddress, configuration: reportingConfiguration)
        self.releaseHosts = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .releaseHosts, configuration: reportingConfiguration)
        self.replaceIamInstanceProfileAssociation = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .replaceIamInstanceProfileAssociation, configuration: reportingConfiguration)
        self.replaceNetworkAclAssociation = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .replaceNetworkAclAssociation, configuration: reportingConfiguration)
        self.replaceNetworkAclEntry = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .replaceNetworkAclEntry, configuration: reportingConfiguration)
        self.replaceRoute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .replaceRoute, configuration: reportingConfiguration)
        self.replaceRouteTableAssociation = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .replaceRouteTableAssociation, configuration: reportingConfiguration)
        self.replaceTransitGatewayRoute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .replaceTransitGatewayRoute, configuration: reportingConfiguration)
        self.reportInstanceStatus = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .reportInstanceStatus, configuration: reportingConfiguration)
        self.requestSpotFleet = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .requestSpotFleet, configuration: reportingConfiguration)
        self.requestSpotInstances = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .requestSpotInstances, configuration: reportingConfiguration)
        self.resetAddressAttribute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .resetAddressAttribute, configuration: reportingConfiguration)
        self.resetEbsDefaultKmsKeyId = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .resetEbsDefaultKmsKeyId, configuration: reportingConfiguration)
        self.resetFpgaImageAttribute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .resetFpgaImageAttribute, configuration: reportingConfiguration)
        self.resetImageAttribute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .resetImageAttribute, configuration: reportingConfiguration)
        self.resetInstanceAttribute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .resetInstanceAttribute, configuration: reportingConfiguration)
        self.resetNetworkInterfaceAttribute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .resetNetworkInterfaceAttribute, configuration: reportingConfiguration)
        self.resetSnapshotAttribute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .resetSnapshotAttribute, configuration: reportingConfiguration)
        self.restoreAddressToClassic = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .restoreAddressToClassic, configuration: reportingConfiguration)
        self.restoreManagedPrefixListVersion = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .restoreManagedPrefixListVersion, configuration: reportingConfiguration)
        self.revokeClientVpnIngress = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .revokeClientVpnIngress, configuration: reportingConfiguration)
        self.revokeSecurityGroupEgress = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .revokeSecurityGroupEgress, configuration: reportingConfiguration)
        self.revokeSecurityGroupIngress = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .revokeSecurityGroupIngress, configuration: reportingConfiguration)
        self.runInstances = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .runInstances, configuration: reportingConfiguration)
        self.runScheduledInstances = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .runScheduledInstances, configuration: reportingConfiguration)
        self.searchLocalGatewayRoutes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .searchLocalGatewayRoutes, configuration: reportingConfiguration)
        self.searchTransitGatewayMulticastGroups = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .searchTransitGatewayMulticastGroups, configuration: reportingConfiguration)
        self.searchTransitGatewayRoutes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .searchTransitGatewayRoutes, configuration: reportingConfiguration)
        self.sendDiagnosticInterrupt = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .sendDiagnosticInterrupt, configuration: reportingConfiguration)
        self.startInstances = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .startInstances, configuration: reportingConfiguration)
        self.startNetworkInsightsAnalysis = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .startNetworkInsightsAnalysis, configuration: reportingConfiguration)
        self.startVpcEndpointServicePrivateDnsVerification = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .startVpcEndpointServicePrivateDnsVerification, configuration: reportingConfiguration)
        self.stopInstances = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .stopInstances, configuration: reportingConfiguration)
        self.terminateClientVpnConnections = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .terminateClientVpnConnections, configuration: reportingConfiguration)
        self.terminateInstances = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .terminateInstances, configuration: reportingConfiguration)
        self.unassignIpv6Addresses = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .unassignIpv6Addresses, configuration: reportingConfiguration)
        self.unassignPrivateIpAddresses = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .unassignPrivateIpAddresses, configuration: reportingConfiguration)
        self.unmonitorInstances = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .unmonitorInstances, configuration: reportingConfiguration)
        self.updateSecurityGroupRuleDescriptionsEgress = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .updateSecurityGroupRuleDescriptionsEgress, configuration: reportingConfiguration)
        self.updateSecurityGroupRuleDescriptionsIngress = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .updateSecurityGroupRuleDescriptionsIngress, configuration: reportingConfiguration)
        self.withdrawByoipCidr = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .withdrawByoipCidr, configuration: reportingConfiguration)
    }
}
