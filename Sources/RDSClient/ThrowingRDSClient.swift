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
// ThrowingRDSClient.swift
// RDSClient
//

import Foundation
import RDSModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the RDS service that by default always throws from its methods.
 */
public struct ThrowingRDSClient<ClientInvocationReportingType: SmokeAWSInvocationReporting>: RDSClientProtocol {
    let error: HTTPClientError
    let addRoleToDBClusterAsyncOverride: AddRoleToDBClusterAsyncType<ClientInvocationReportingType>?
    let addRoleToDBClusterSyncOverride: AddRoleToDBClusterSyncType<ClientInvocationReportingType>?
    let addRoleToDBInstanceAsyncOverride: AddRoleToDBInstanceAsyncType<ClientInvocationReportingType>?
    let addRoleToDBInstanceSyncOverride: AddRoleToDBInstanceSyncType<ClientInvocationReportingType>?
    let addSourceIdentifierToSubscriptionAsyncOverride: AddSourceIdentifierToSubscriptionAsyncType<ClientInvocationReportingType>?
    let addSourceIdentifierToSubscriptionSyncOverride: AddSourceIdentifierToSubscriptionSyncType<ClientInvocationReportingType>?
    let addTagsToResourceAsyncOverride: AddTagsToResourceAsyncType<ClientInvocationReportingType>?
    let addTagsToResourceSyncOverride: AddTagsToResourceSyncType<ClientInvocationReportingType>?
    let applyPendingMaintenanceActionAsyncOverride: ApplyPendingMaintenanceActionAsyncType<ClientInvocationReportingType>?
    let applyPendingMaintenanceActionSyncOverride: ApplyPendingMaintenanceActionSyncType<ClientInvocationReportingType>?
    let authorizeDBSecurityGroupIngressAsyncOverride: AuthorizeDBSecurityGroupIngressAsyncType<ClientInvocationReportingType>?
    let authorizeDBSecurityGroupIngressSyncOverride: AuthorizeDBSecurityGroupIngressSyncType<ClientInvocationReportingType>?
    let backtrackDBClusterAsyncOverride: BacktrackDBClusterAsyncType<ClientInvocationReportingType>?
    let backtrackDBClusterSyncOverride: BacktrackDBClusterSyncType<ClientInvocationReportingType>?
    let cancelExportTaskAsyncOverride: CancelExportTaskAsyncType<ClientInvocationReportingType>?
    let cancelExportTaskSyncOverride: CancelExportTaskSyncType<ClientInvocationReportingType>?
    let copyDBClusterParameterGroupAsyncOverride: CopyDBClusterParameterGroupAsyncType<ClientInvocationReportingType>?
    let copyDBClusterParameterGroupSyncOverride: CopyDBClusterParameterGroupSyncType<ClientInvocationReportingType>?
    let copyDBClusterSnapshotAsyncOverride: CopyDBClusterSnapshotAsyncType<ClientInvocationReportingType>?
    let copyDBClusterSnapshotSyncOverride: CopyDBClusterSnapshotSyncType<ClientInvocationReportingType>?
    let copyDBParameterGroupAsyncOverride: CopyDBParameterGroupAsyncType<ClientInvocationReportingType>?
    let copyDBParameterGroupSyncOverride: CopyDBParameterGroupSyncType<ClientInvocationReportingType>?
    let copyDBSnapshotAsyncOverride: CopyDBSnapshotAsyncType<ClientInvocationReportingType>?
    let copyDBSnapshotSyncOverride: CopyDBSnapshotSyncType<ClientInvocationReportingType>?
    let copyOptionGroupAsyncOverride: CopyOptionGroupAsyncType<ClientInvocationReportingType>?
    let copyOptionGroupSyncOverride: CopyOptionGroupSyncType<ClientInvocationReportingType>?
    let createCustomAvailabilityZoneAsyncOverride: CreateCustomAvailabilityZoneAsyncType<ClientInvocationReportingType>?
    let createCustomAvailabilityZoneSyncOverride: CreateCustomAvailabilityZoneSyncType<ClientInvocationReportingType>?
    let createDBClusterAsyncOverride: CreateDBClusterAsyncType<ClientInvocationReportingType>?
    let createDBClusterSyncOverride: CreateDBClusterSyncType<ClientInvocationReportingType>?
    let createDBClusterEndpointAsyncOverride: CreateDBClusterEndpointAsyncType<ClientInvocationReportingType>?
    let createDBClusterEndpointSyncOverride: CreateDBClusterEndpointSyncType<ClientInvocationReportingType>?
    let createDBClusterParameterGroupAsyncOverride: CreateDBClusterParameterGroupAsyncType<ClientInvocationReportingType>?
    let createDBClusterParameterGroupSyncOverride: CreateDBClusterParameterGroupSyncType<ClientInvocationReportingType>?
    let createDBClusterSnapshotAsyncOverride: CreateDBClusterSnapshotAsyncType<ClientInvocationReportingType>?
    let createDBClusterSnapshotSyncOverride: CreateDBClusterSnapshotSyncType<ClientInvocationReportingType>?
    let createDBInstanceAsyncOverride: CreateDBInstanceAsyncType<ClientInvocationReportingType>?
    let createDBInstanceSyncOverride: CreateDBInstanceSyncType<ClientInvocationReportingType>?
    let createDBInstanceReadReplicaAsyncOverride: CreateDBInstanceReadReplicaAsyncType<ClientInvocationReportingType>?
    let createDBInstanceReadReplicaSyncOverride: CreateDBInstanceReadReplicaSyncType<ClientInvocationReportingType>?
    let createDBParameterGroupAsyncOverride: CreateDBParameterGroupAsyncType<ClientInvocationReportingType>?
    let createDBParameterGroupSyncOverride: CreateDBParameterGroupSyncType<ClientInvocationReportingType>?
    let createDBProxyAsyncOverride: CreateDBProxyAsyncType<ClientInvocationReportingType>?
    let createDBProxySyncOverride: CreateDBProxySyncType<ClientInvocationReportingType>?
    let createDBSecurityGroupAsyncOverride: CreateDBSecurityGroupAsyncType<ClientInvocationReportingType>?
    let createDBSecurityGroupSyncOverride: CreateDBSecurityGroupSyncType<ClientInvocationReportingType>?
    let createDBSnapshotAsyncOverride: CreateDBSnapshotAsyncType<ClientInvocationReportingType>?
    let createDBSnapshotSyncOverride: CreateDBSnapshotSyncType<ClientInvocationReportingType>?
    let createDBSubnetGroupAsyncOverride: CreateDBSubnetGroupAsyncType<ClientInvocationReportingType>?
    let createDBSubnetGroupSyncOverride: CreateDBSubnetGroupSyncType<ClientInvocationReportingType>?
    let createEventSubscriptionAsyncOverride: CreateEventSubscriptionAsyncType<ClientInvocationReportingType>?
    let createEventSubscriptionSyncOverride: CreateEventSubscriptionSyncType<ClientInvocationReportingType>?
    let createGlobalClusterAsyncOverride: CreateGlobalClusterAsyncType<ClientInvocationReportingType>?
    let createGlobalClusterSyncOverride: CreateGlobalClusterSyncType<ClientInvocationReportingType>?
    let createOptionGroupAsyncOverride: CreateOptionGroupAsyncType<ClientInvocationReportingType>?
    let createOptionGroupSyncOverride: CreateOptionGroupSyncType<ClientInvocationReportingType>?
    let deleteCustomAvailabilityZoneAsyncOverride: DeleteCustomAvailabilityZoneAsyncType<ClientInvocationReportingType>?
    let deleteCustomAvailabilityZoneSyncOverride: DeleteCustomAvailabilityZoneSyncType<ClientInvocationReportingType>?
    let deleteDBClusterAsyncOverride: DeleteDBClusterAsyncType<ClientInvocationReportingType>?
    let deleteDBClusterSyncOverride: DeleteDBClusterSyncType<ClientInvocationReportingType>?
    let deleteDBClusterEndpointAsyncOverride: DeleteDBClusterEndpointAsyncType<ClientInvocationReportingType>?
    let deleteDBClusterEndpointSyncOverride: DeleteDBClusterEndpointSyncType<ClientInvocationReportingType>?
    let deleteDBClusterParameterGroupAsyncOverride: DeleteDBClusterParameterGroupAsyncType<ClientInvocationReportingType>?
    let deleteDBClusterParameterGroupSyncOverride: DeleteDBClusterParameterGroupSyncType<ClientInvocationReportingType>?
    let deleteDBClusterSnapshotAsyncOverride: DeleteDBClusterSnapshotAsyncType<ClientInvocationReportingType>?
    let deleteDBClusterSnapshotSyncOverride: DeleteDBClusterSnapshotSyncType<ClientInvocationReportingType>?
    let deleteDBInstanceAsyncOverride: DeleteDBInstanceAsyncType<ClientInvocationReportingType>?
    let deleteDBInstanceSyncOverride: DeleteDBInstanceSyncType<ClientInvocationReportingType>?
    let deleteDBInstanceAutomatedBackupAsyncOverride: DeleteDBInstanceAutomatedBackupAsyncType<ClientInvocationReportingType>?
    let deleteDBInstanceAutomatedBackupSyncOverride: DeleteDBInstanceAutomatedBackupSyncType<ClientInvocationReportingType>?
    let deleteDBParameterGroupAsyncOverride: DeleteDBParameterGroupAsyncType<ClientInvocationReportingType>?
    let deleteDBParameterGroupSyncOverride: DeleteDBParameterGroupSyncType<ClientInvocationReportingType>?
    let deleteDBProxyAsyncOverride: DeleteDBProxyAsyncType<ClientInvocationReportingType>?
    let deleteDBProxySyncOverride: DeleteDBProxySyncType<ClientInvocationReportingType>?
    let deleteDBSecurityGroupAsyncOverride: DeleteDBSecurityGroupAsyncType<ClientInvocationReportingType>?
    let deleteDBSecurityGroupSyncOverride: DeleteDBSecurityGroupSyncType<ClientInvocationReportingType>?
    let deleteDBSnapshotAsyncOverride: DeleteDBSnapshotAsyncType<ClientInvocationReportingType>?
    let deleteDBSnapshotSyncOverride: DeleteDBSnapshotSyncType<ClientInvocationReportingType>?
    let deleteDBSubnetGroupAsyncOverride: DeleteDBSubnetGroupAsyncType<ClientInvocationReportingType>?
    let deleteDBSubnetGroupSyncOverride: DeleteDBSubnetGroupSyncType<ClientInvocationReportingType>?
    let deleteEventSubscriptionAsyncOverride: DeleteEventSubscriptionAsyncType<ClientInvocationReportingType>?
    let deleteEventSubscriptionSyncOverride: DeleteEventSubscriptionSyncType<ClientInvocationReportingType>?
    let deleteGlobalClusterAsyncOverride: DeleteGlobalClusterAsyncType<ClientInvocationReportingType>?
    let deleteGlobalClusterSyncOverride: DeleteGlobalClusterSyncType<ClientInvocationReportingType>?
    let deleteInstallationMediaAsyncOverride: DeleteInstallationMediaAsyncType<ClientInvocationReportingType>?
    let deleteInstallationMediaSyncOverride: DeleteInstallationMediaSyncType<ClientInvocationReportingType>?
    let deleteOptionGroupAsyncOverride: DeleteOptionGroupAsyncType<ClientInvocationReportingType>?
    let deleteOptionGroupSyncOverride: DeleteOptionGroupSyncType<ClientInvocationReportingType>?
    let deregisterDBProxyTargetsAsyncOverride: DeregisterDBProxyTargetsAsyncType<ClientInvocationReportingType>?
    let deregisterDBProxyTargetsSyncOverride: DeregisterDBProxyTargetsSyncType<ClientInvocationReportingType>?
    let describeAccountAttributesAsyncOverride: DescribeAccountAttributesAsyncType<ClientInvocationReportingType>?
    let describeAccountAttributesSyncOverride: DescribeAccountAttributesSyncType<ClientInvocationReportingType>?
    let describeCertificatesAsyncOverride: DescribeCertificatesAsyncType<ClientInvocationReportingType>?
    let describeCertificatesSyncOverride: DescribeCertificatesSyncType<ClientInvocationReportingType>?
    let describeCustomAvailabilityZonesAsyncOverride: DescribeCustomAvailabilityZonesAsyncType<ClientInvocationReportingType>?
    let describeCustomAvailabilityZonesSyncOverride: DescribeCustomAvailabilityZonesSyncType<ClientInvocationReportingType>?
    let describeDBClusterBacktracksAsyncOverride: DescribeDBClusterBacktracksAsyncType<ClientInvocationReportingType>?
    let describeDBClusterBacktracksSyncOverride: DescribeDBClusterBacktracksSyncType<ClientInvocationReportingType>?
    let describeDBClusterEndpointsAsyncOverride: DescribeDBClusterEndpointsAsyncType<ClientInvocationReportingType>?
    let describeDBClusterEndpointsSyncOverride: DescribeDBClusterEndpointsSyncType<ClientInvocationReportingType>?
    let describeDBClusterParameterGroupsAsyncOverride: DescribeDBClusterParameterGroupsAsyncType<ClientInvocationReportingType>?
    let describeDBClusterParameterGroupsSyncOverride: DescribeDBClusterParameterGroupsSyncType<ClientInvocationReportingType>?
    let describeDBClusterParametersAsyncOverride: DescribeDBClusterParametersAsyncType<ClientInvocationReportingType>?
    let describeDBClusterParametersSyncOverride: DescribeDBClusterParametersSyncType<ClientInvocationReportingType>?
    let describeDBClusterSnapshotAttributesAsyncOverride: DescribeDBClusterSnapshotAttributesAsyncType<ClientInvocationReportingType>?
    let describeDBClusterSnapshotAttributesSyncOverride: DescribeDBClusterSnapshotAttributesSyncType<ClientInvocationReportingType>?
    let describeDBClusterSnapshotsAsyncOverride: DescribeDBClusterSnapshotsAsyncType<ClientInvocationReportingType>?
    let describeDBClusterSnapshotsSyncOverride: DescribeDBClusterSnapshotsSyncType<ClientInvocationReportingType>?
    let describeDBClustersAsyncOverride: DescribeDBClustersAsyncType<ClientInvocationReportingType>?
    let describeDBClustersSyncOverride: DescribeDBClustersSyncType<ClientInvocationReportingType>?
    let describeDBEngineVersionsAsyncOverride: DescribeDBEngineVersionsAsyncType<ClientInvocationReportingType>?
    let describeDBEngineVersionsSyncOverride: DescribeDBEngineVersionsSyncType<ClientInvocationReportingType>?
    let describeDBInstanceAutomatedBackupsAsyncOverride: DescribeDBInstanceAutomatedBackupsAsyncType<ClientInvocationReportingType>?
    let describeDBInstanceAutomatedBackupsSyncOverride: DescribeDBInstanceAutomatedBackupsSyncType<ClientInvocationReportingType>?
    let describeDBInstancesAsyncOverride: DescribeDBInstancesAsyncType<ClientInvocationReportingType>?
    let describeDBInstancesSyncOverride: DescribeDBInstancesSyncType<ClientInvocationReportingType>?
    let describeDBLogFilesAsyncOverride: DescribeDBLogFilesAsyncType<ClientInvocationReportingType>?
    let describeDBLogFilesSyncOverride: DescribeDBLogFilesSyncType<ClientInvocationReportingType>?
    let describeDBParameterGroupsAsyncOverride: DescribeDBParameterGroupsAsyncType<ClientInvocationReportingType>?
    let describeDBParameterGroupsSyncOverride: DescribeDBParameterGroupsSyncType<ClientInvocationReportingType>?
    let describeDBParametersAsyncOverride: DescribeDBParametersAsyncType<ClientInvocationReportingType>?
    let describeDBParametersSyncOverride: DescribeDBParametersSyncType<ClientInvocationReportingType>?
    let describeDBProxiesAsyncOverride: DescribeDBProxiesAsyncType<ClientInvocationReportingType>?
    let describeDBProxiesSyncOverride: DescribeDBProxiesSyncType<ClientInvocationReportingType>?
    let describeDBProxyTargetGroupsAsyncOverride: DescribeDBProxyTargetGroupsAsyncType<ClientInvocationReportingType>?
    let describeDBProxyTargetGroupsSyncOverride: DescribeDBProxyTargetGroupsSyncType<ClientInvocationReportingType>?
    let describeDBProxyTargetsAsyncOverride: DescribeDBProxyTargetsAsyncType<ClientInvocationReportingType>?
    let describeDBProxyTargetsSyncOverride: DescribeDBProxyTargetsSyncType<ClientInvocationReportingType>?
    let describeDBSecurityGroupsAsyncOverride: DescribeDBSecurityGroupsAsyncType<ClientInvocationReportingType>?
    let describeDBSecurityGroupsSyncOverride: DescribeDBSecurityGroupsSyncType<ClientInvocationReportingType>?
    let describeDBSnapshotAttributesAsyncOverride: DescribeDBSnapshotAttributesAsyncType<ClientInvocationReportingType>?
    let describeDBSnapshotAttributesSyncOverride: DescribeDBSnapshotAttributesSyncType<ClientInvocationReportingType>?
    let describeDBSnapshotsAsyncOverride: DescribeDBSnapshotsAsyncType<ClientInvocationReportingType>?
    let describeDBSnapshotsSyncOverride: DescribeDBSnapshotsSyncType<ClientInvocationReportingType>?
    let describeDBSubnetGroupsAsyncOverride: DescribeDBSubnetGroupsAsyncType<ClientInvocationReportingType>?
    let describeDBSubnetGroupsSyncOverride: DescribeDBSubnetGroupsSyncType<ClientInvocationReportingType>?
    let describeEngineDefaultClusterParametersAsyncOverride: DescribeEngineDefaultClusterParametersAsyncType<ClientInvocationReportingType>?
    let describeEngineDefaultClusterParametersSyncOverride: DescribeEngineDefaultClusterParametersSyncType<ClientInvocationReportingType>?
    let describeEngineDefaultParametersAsyncOverride: DescribeEngineDefaultParametersAsyncType<ClientInvocationReportingType>?
    let describeEngineDefaultParametersSyncOverride: DescribeEngineDefaultParametersSyncType<ClientInvocationReportingType>?
    let describeEventCategoriesAsyncOverride: DescribeEventCategoriesAsyncType<ClientInvocationReportingType>?
    let describeEventCategoriesSyncOverride: DescribeEventCategoriesSyncType<ClientInvocationReportingType>?
    let describeEventSubscriptionsAsyncOverride: DescribeEventSubscriptionsAsyncType<ClientInvocationReportingType>?
    let describeEventSubscriptionsSyncOverride: DescribeEventSubscriptionsSyncType<ClientInvocationReportingType>?
    let describeEventsAsyncOverride: DescribeEventsAsyncType<ClientInvocationReportingType>?
    let describeEventsSyncOverride: DescribeEventsSyncType<ClientInvocationReportingType>?
    let describeExportTasksAsyncOverride: DescribeExportTasksAsyncType<ClientInvocationReportingType>?
    let describeExportTasksSyncOverride: DescribeExportTasksSyncType<ClientInvocationReportingType>?
    let describeGlobalClustersAsyncOverride: DescribeGlobalClustersAsyncType<ClientInvocationReportingType>?
    let describeGlobalClustersSyncOverride: DescribeGlobalClustersSyncType<ClientInvocationReportingType>?
    let describeInstallationMediaAsyncOverride: DescribeInstallationMediaAsyncType<ClientInvocationReportingType>?
    let describeInstallationMediaSyncOverride: DescribeInstallationMediaSyncType<ClientInvocationReportingType>?
    let describeOptionGroupOptionsAsyncOverride: DescribeOptionGroupOptionsAsyncType<ClientInvocationReportingType>?
    let describeOptionGroupOptionsSyncOverride: DescribeOptionGroupOptionsSyncType<ClientInvocationReportingType>?
    let describeOptionGroupsAsyncOverride: DescribeOptionGroupsAsyncType<ClientInvocationReportingType>?
    let describeOptionGroupsSyncOverride: DescribeOptionGroupsSyncType<ClientInvocationReportingType>?
    let describeOrderableDBInstanceOptionsAsyncOverride: DescribeOrderableDBInstanceOptionsAsyncType<ClientInvocationReportingType>?
    let describeOrderableDBInstanceOptionsSyncOverride: DescribeOrderableDBInstanceOptionsSyncType<ClientInvocationReportingType>?
    let describePendingMaintenanceActionsAsyncOverride: DescribePendingMaintenanceActionsAsyncType<ClientInvocationReportingType>?
    let describePendingMaintenanceActionsSyncOverride: DescribePendingMaintenanceActionsSyncType<ClientInvocationReportingType>?
    let describeReservedDBInstancesAsyncOverride: DescribeReservedDBInstancesAsyncType<ClientInvocationReportingType>?
    let describeReservedDBInstancesSyncOverride: DescribeReservedDBInstancesSyncType<ClientInvocationReportingType>?
    let describeReservedDBInstancesOfferingsAsyncOverride: DescribeReservedDBInstancesOfferingsAsyncType<ClientInvocationReportingType>?
    let describeReservedDBInstancesOfferingsSyncOverride: DescribeReservedDBInstancesOfferingsSyncType<ClientInvocationReportingType>?
    let describeSourceRegionsAsyncOverride: DescribeSourceRegionsAsyncType<ClientInvocationReportingType>?
    let describeSourceRegionsSyncOverride: DescribeSourceRegionsSyncType<ClientInvocationReportingType>?
    let describeValidDBInstanceModificationsAsyncOverride: DescribeValidDBInstanceModificationsAsyncType<ClientInvocationReportingType>?
    let describeValidDBInstanceModificationsSyncOverride: DescribeValidDBInstanceModificationsSyncType<ClientInvocationReportingType>?
    let downloadDBLogFilePortionAsyncOverride: DownloadDBLogFilePortionAsyncType<ClientInvocationReportingType>?
    let downloadDBLogFilePortionSyncOverride: DownloadDBLogFilePortionSyncType<ClientInvocationReportingType>?
    let failoverDBClusterAsyncOverride: FailoverDBClusterAsyncType<ClientInvocationReportingType>?
    let failoverDBClusterSyncOverride: FailoverDBClusterSyncType<ClientInvocationReportingType>?
    let importInstallationMediaAsyncOverride: ImportInstallationMediaAsyncType<ClientInvocationReportingType>?
    let importInstallationMediaSyncOverride: ImportInstallationMediaSyncType<ClientInvocationReportingType>?
    let listTagsForResourceAsyncOverride: ListTagsForResourceAsyncType<ClientInvocationReportingType>?
    let listTagsForResourceSyncOverride: ListTagsForResourceSyncType<ClientInvocationReportingType>?
    let modifyCertificatesAsyncOverride: ModifyCertificatesAsyncType<ClientInvocationReportingType>?
    let modifyCertificatesSyncOverride: ModifyCertificatesSyncType<ClientInvocationReportingType>?
    let modifyCurrentDBClusterCapacityAsyncOverride: ModifyCurrentDBClusterCapacityAsyncType<ClientInvocationReportingType>?
    let modifyCurrentDBClusterCapacitySyncOverride: ModifyCurrentDBClusterCapacitySyncType<ClientInvocationReportingType>?
    let modifyDBClusterAsyncOverride: ModifyDBClusterAsyncType<ClientInvocationReportingType>?
    let modifyDBClusterSyncOverride: ModifyDBClusterSyncType<ClientInvocationReportingType>?
    let modifyDBClusterEndpointAsyncOverride: ModifyDBClusterEndpointAsyncType<ClientInvocationReportingType>?
    let modifyDBClusterEndpointSyncOverride: ModifyDBClusterEndpointSyncType<ClientInvocationReportingType>?
    let modifyDBClusterParameterGroupAsyncOverride: ModifyDBClusterParameterGroupAsyncType<ClientInvocationReportingType>?
    let modifyDBClusterParameterGroupSyncOverride: ModifyDBClusterParameterGroupSyncType<ClientInvocationReportingType>?
    let modifyDBClusterSnapshotAttributeAsyncOverride: ModifyDBClusterSnapshotAttributeAsyncType<ClientInvocationReportingType>?
    let modifyDBClusterSnapshotAttributeSyncOverride: ModifyDBClusterSnapshotAttributeSyncType<ClientInvocationReportingType>?
    let modifyDBInstanceAsyncOverride: ModifyDBInstanceAsyncType<ClientInvocationReportingType>?
    let modifyDBInstanceSyncOverride: ModifyDBInstanceSyncType<ClientInvocationReportingType>?
    let modifyDBParameterGroupAsyncOverride: ModifyDBParameterGroupAsyncType<ClientInvocationReportingType>?
    let modifyDBParameterGroupSyncOverride: ModifyDBParameterGroupSyncType<ClientInvocationReportingType>?
    let modifyDBProxyAsyncOverride: ModifyDBProxyAsyncType<ClientInvocationReportingType>?
    let modifyDBProxySyncOverride: ModifyDBProxySyncType<ClientInvocationReportingType>?
    let modifyDBProxyTargetGroupAsyncOverride: ModifyDBProxyTargetGroupAsyncType<ClientInvocationReportingType>?
    let modifyDBProxyTargetGroupSyncOverride: ModifyDBProxyTargetGroupSyncType<ClientInvocationReportingType>?
    let modifyDBSnapshotAsyncOverride: ModifyDBSnapshotAsyncType<ClientInvocationReportingType>?
    let modifyDBSnapshotSyncOverride: ModifyDBSnapshotSyncType<ClientInvocationReportingType>?
    let modifyDBSnapshotAttributeAsyncOverride: ModifyDBSnapshotAttributeAsyncType<ClientInvocationReportingType>?
    let modifyDBSnapshotAttributeSyncOverride: ModifyDBSnapshotAttributeSyncType<ClientInvocationReportingType>?
    let modifyDBSubnetGroupAsyncOverride: ModifyDBSubnetGroupAsyncType<ClientInvocationReportingType>?
    let modifyDBSubnetGroupSyncOverride: ModifyDBSubnetGroupSyncType<ClientInvocationReportingType>?
    let modifyEventSubscriptionAsyncOverride: ModifyEventSubscriptionAsyncType<ClientInvocationReportingType>?
    let modifyEventSubscriptionSyncOverride: ModifyEventSubscriptionSyncType<ClientInvocationReportingType>?
    let modifyGlobalClusterAsyncOverride: ModifyGlobalClusterAsyncType<ClientInvocationReportingType>?
    let modifyGlobalClusterSyncOverride: ModifyGlobalClusterSyncType<ClientInvocationReportingType>?
    let modifyOptionGroupAsyncOverride: ModifyOptionGroupAsyncType<ClientInvocationReportingType>?
    let modifyOptionGroupSyncOverride: ModifyOptionGroupSyncType<ClientInvocationReportingType>?
    let promoteReadReplicaAsyncOverride: PromoteReadReplicaAsyncType<ClientInvocationReportingType>?
    let promoteReadReplicaSyncOverride: PromoteReadReplicaSyncType<ClientInvocationReportingType>?
    let promoteReadReplicaDBClusterAsyncOverride: PromoteReadReplicaDBClusterAsyncType<ClientInvocationReportingType>?
    let promoteReadReplicaDBClusterSyncOverride: PromoteReadReplicaDBClusterSyncType<ClientInvocationReportingType>?
    let purchaseReservedDBInstancesOfferingAsyncOverride: PurchaseReservedDBInstancesOfferingAsyncType<ClientInvocationReportingType>?
    let purchaseReservedDBInstancesOfferingSyncOverride: PurchaseReservedDBInstancesOfferingSyncType<ClientInvocationReportingType>?
    let rebootDBInstanceAsyncOverride: RebootDBInstanceAsyncType<ClientInvocationReportingType>?
    let rebootDBInstanceSyncOverride: RebootDBInstanceSyncType<ClientInvocationReportingType>?
    let registerDBProxyTargetsAsyncOverride: RegisterDBProxyTargetsAsyncType<ClientInvocationReportingType>?
    let registerDBProxyTargetsSyncOverride: RegisterDBProxyTargetsSyncType<ClientInvocationReportingType>?
    let removeFromGlobalClusterAsyncOverride: RemoveFromGlobalClusterAsyncType<ClientInvocationReportingType>?
    let removeFromGlobalClusterSyncOverride: RemoveFromGlobalClusterSyncType<ClientInvocationReportingType>?
    let removeRoleFromDBClusterAsyncOverride: RemoveRoleFromDBClusterAsyncType<ClientInvocationReportingType>?
    let removeRoleFromDBClusterSyncOverride: RemoveRoleFromDBClusterSyncType<ClientInvocationReportingType>?
    let removeRoleFromDBInstanceAsyncOverride: RemoveRoleFromDBInstanceAsyncType<ClientInvocationReportingType>?
    let removeRoleFromDBInstanceSyncOverride: RemoveRoleFromDBInstanceSyncType<ClientInvocationReportingType>?
    let removeSourceIdentifierFromSubscriptionAsyncOverride: RemoveSourceIdentifierFromSubscriptionAsyncType<ClientInvocationReportingType>?
    let removeSourceIdentifierFromSubscriptionSyncOverride: RemoveSourceIdentifierFromSubscriptionSyncType<ClientInvocationReportingType>?
    let removeTagsFromResourceAsyncOverride: RemoveTagsFromResourceAsyncType<ClientInvocationReportingType>?
    let removeTagsFromResourceSyncOverride: RemoveTagsFromResourceSyncType<ClientInvocationReportingType>?
    let resetDBClusterParameterGroupAsyncOverride: ResetDBClusterParameterGroupAsyncType<ClientInvocationReportingType>?
    let resetDBClusterParameterGroupSyncOverride: ResetDBClusterParameterGroupSyncType<ClientInvocationReportingType>?
    let resetDBParameterGroupAsyncOverride: ResetDBParameterGroupAsyncType<ClientInvocationReportingType>?
    let resetDBParameterGroupSyncOverride: ResetDBParameterGroupSyncType<ClientInvocationReportingType>?
    let restoreDBClusterFromS3AsyncOverride: RestoreDBClusterFromS3AsyncType<ClientInvocationReportingType>?
    let restoreDBClusterFromS3SyncOverride: RestoreDBClusterFromS3SyncType<ClientInvocationReportingType>?
    let restoreDBClusterFromSnapshotAsyncOverride: RestoreDBClusterFromSnapshotAsyncType<ClientInvocationReportingType>?
    let restoreDBClusterFromSnapshotSyncOverride: RestoreDBClusterFromSnapshotSyncType<ClientInvocationReportingType>?
    let restoreDBClusterToPointInTimeAsyncOverride: RestoreDBClusterToPointInTimeAsyncType<ClientInvocationReportingType>?
    let restoreDBClusterToPointInTimeSyncOverride: RestoreDBClusterToPointInTimeSyncType<ClientInvocationReportingType>?
    let restoreDBInstanceFromDBSnapshotAsyncOverride: RestoreDBInstanceFromDBSnapshotAsyncType<ClientInvocationReportingType>?
    let restoreDBInstanceFromDBSnapshotSyncOverride: RestoreDBInstanceFromDBSnapshotSyncType<ClientInvocationReportingType>?
    let restoreDBInstanceFromS3AsyncOverride: RestoreDBInstanceFromS3AsyncType<ClientInvocationReportingType>?
    let restoreDBInstanceFromS3SyncOverride: RestoreDBInstanceFromS3SyncType<ClientInvocationReportingType>?
    let restoreDBInstanceToPointInTimeAsyncOverride: RestoreDBInstanceToPointInTimeAsyncType<ClientInvocationReportingType>?
    let restoreDBInstanceToPointInTimeSyncOverride: RestoreDBInstanceToPointInTimeSyncType<ClientInvocationReportingType>?
    let revokeDBSecurityGroupIngressAsyncOverride: RevokeDBSecurityGroupIngressAsyncType<ClientInvocationReportingType>?
    let revokeDBSecurityGroupIngressSyncOverride: RevokeDBSecurityGroupIngressSyncType<ClientInvocationReportingType>?
    let startActivityStreamAsyncOverride: StartActivityStreamAsyncType<ClientInvocationReportingType>?
    let startActivityStreamSyncOverride: StartActivityStreamSyncType<ClientInvocationReportingType>?
    let startDBClusterAsyncOverride: StartDBClusterAsyncType<ClientInvocationReportingType>?
    let startDBClusterSyncOverride: StartDBClusterSyncType<ClientInvocationReportingType>?
    let startDBInstanceAsyncOverride: StartDBInstanceAsyncType<ClientInvocationReportingType>?
    let startDBInstanceSyncOverride: StartDBInstanceSyncType<ClientInvocationReportingType>?
    let startExportTaskAsyncOverride: StartExportTaskAsyncType<ClientInvocationReportingType>?
    let startExportTaskSyncOverride: StartExportTaskSyncType<ClientInvocationReportingType>?
    let stopActivityStreamAsyncOverride: StopActivityStreamAsyncType<ClientInvocationReportingType>?
    let stopActivityStreamSyncOverride: StopActivityStreamSyncType<ClientInvocationReportingType>?
    let stopDBClusterAsyncOverride: StopDBClusterAsyncType<ClientInvocationReportingType>?
    let stopDBClusterSyncOverride: StopDBClusterSyncType<ClientInvocationReportingType>?
    let stopDBInstanceAsyncOverride: StopDBInstanceAsyncType<ClientInvocationReportingType>?
    let stopDBInstanceSyncOverride: StopDBInstanceSyncType<ClientInvocationReportingType>?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(error: HTTPClientError,
            addRoleToDBClusterAsync: AddRoleToDBClusterAsyncType<ClientInvocationReportingType>? = nil,
            addRoleToDBClusterSync: AddRoleToDBClusterSyncType<ClientInvocationReportingType>? = nil,
            addRoleToDBInstanceAsync: AddRoleToDBInstanceAsyncType<ClientInvocationReportingType>? = nil,
            addRoleToDBInstanceSync: AddRoleToDBInstanceSyncType<ClientInvocationReportingType>? = nil,
            addSourceIdentifierToSubscriptionAsync: AddSourceIdentifierToSubscriptionAsyncType<ClientInvocationReportingType>? = nil,
            addSourceIdentifierToSubscriptionSync: AddSourceIdentifierToSubscriptionSyncType<ClientInvocationReportingType>? = nil,
            addTagsToResourceAsync: AddTagsToResourceAsyncType<ClientInvocationReportingType>? = nil,
            addTagsToResourceSync: AddTagsToResourceSyncType<ClientInvocationReportingType>? = nil,
            applyPendingMaintenanceActionAsync: ApplyPendingMaintenanceActionAsyncType<ClientInvocationReportingType>? = nil,
            applyPendingMaintenanceActionSync: ApplyPendingMaintenanceActionSyncType<ClientInvocationReportingType>? = nil,
            authorizeDBSecurityGroupIngressAsync: AuthorizeDBSecurityGroupIngressAsyncType<ClientInvocationReportingType>? = nil,
            authorizeDBSecurityGroupIngressSync: AuthorizeDBSecurityGroupIngressSyncType<ClientInvocationReportingType>? = nil,
            backtrackDBClusterAsync: BacktrackDBClusterAsyncType<ClientInvocationReportingType>? = nil,
            backtrackDBClusterSync: BacktrackDBClusterSyncType<ClientInvocationReportingType>? = nil,
            cancelExportTaskAsync: CancelExportTaskAsyncType<ClientInvocationReportingType>? = nil,
            cancelExportTaskSync: CancelExportTaskSyncType<ClientInvocationReportingType>? = nil,
            copyDBClusterParameterGroupAsync: CopyDBClusterParameterGroupAsyncType<ClientInvocationReportingType>? = nil,
            copyDBClusterParameterGroupSync: CopyDBClusterParameterGroupSyncType<ClientInvocationReportingType>? = nil,
            copyDBClusterSnapshotAsync: CopyDBClusterSnapshotAsyncType<ClientInvocationReportingType>? = nil,
            copyDBClusterSnapshotSync: CopyDBClusterSnapshotSyncType<ClientInvocationReportingType>? = nil,
            copyDBParameterGroupAsync: CopyDBParameterGroupAsyncType<ClientInvocationReportingType>? = nil,
            copyDBParameterGroupSync: CopyDBParameterGroupSyncType<ClientInvocationReportingType>? = nil,
            copyDBSnapshotAsync: CopyDBSnapshotAsyncType<ClientInvocationReportingType>? = nil,
            copyDBSnapshotSync: CopyDBSnapshotSyncType<ClientInvocationReportingType>? = nil,
            copyOptionGroupAsync: CopyOptionGroupAsyncType<ClientInvocationReportingType>? = nil,
            copyOptionGroupSync: CopyOptionGroupSyncType<ClientInvocationReportingType>? = nil,
            createCustomAvailabilityZoneAsync: CreateCustomAvailabilityZoneAsyncType<ClientInvocationReportingType>? = nil,
            createCustomAvailabilityZoneSync: CreateCustomAvailabilityZoneSyncType<ClientInvocationReportingType>? = nil,
            createDBClusterAsync: CreateDBClusterAsyncType<ClientInvocationReportingType>? = nil,
            createDBClusterSync: CreateDBClusterSyncType<ClientInvocationReportingType>? = nil,
            createDBClusterEndpointAsync: CreateDBClusterEndpointAsyncType<ClientInvocationReportingType>? = nil,
            createDBClusterEndpointSync: CreateDBClusterEndpointSyncType<ClientInvocationReportingType>? = nil,
            createDBClusterParameterGroupAsync: CreateDBClusterParameterGroupAsyncType<ClientInvocationReportingType>? = nil,
            createDBClusterParameterGroupSync: CreateDBClusterParameterGroupSyncType<ClientInvocationReportingType>? = nil,
            createDBClusterSnapshotAsync: CreateDBClusterSnapshotAsyncType<ClientInvocationReportingType>? = nil,
            createDBClusterSnapshotSync: CreateDBClusterSnapshotSyncType<ClientInvocationReportingType>? = nil,
            createDBInstanceAsync: CreateDBInstanceAsyncType<ClientInvocationReportingType>? = nil,
            createDBInstanceSync: CreateDBInstanceSyncType<ClientInvocationReportingType>? = nil,
            createDBInstanceReadReplicaAsync: CreateDBInstanceReadReplicaAsyncType<ClientInvocationReportingType>? = nil,
            createDBInstanceReadReplicaSync: CreateDBInstanceReadReplicaSyncType<ClientInvocationReportingType>? = nil,
            createDBParameterGroupAsync: CreateDBParameterGroupAsyncType<ClientInvocationReportingType>? = nil,
            createDBParameterGroupSync: CreateDBParameterGroupSyncType<ClientInvocationReportingType>? = nil,
            createDBProxyAsync: CreateDBProxyAsyncType<ClientInvocationReportingType>? = nil,
            createDBProxySync: CreateDBProxySyncType<ClientInvocationReportingType>? = nil,
            createDBSecurityGroupAsync: CreateDBSecurityGroupAsyncType<ClientInvocationReportingType>? = nil,
            createDBSecurityGroupSync: CreateDBSecurityGroupSyncType<ClientInvocationReportingType>? = nil,
            createDBSnapshotAsync: CreateDBSnapshotAsyncType<ClientInvocationReportingType>? = nil,
            createDBSnapshotSync: CreateDBSnapshotSyncType<ClientInvocationReportingType>? = nil,
            createDBSubnetGroupAsync: CreateDBSubnetGroupAsyncType<ClientInvocationReportingType>? = nil,
            createDBSubnetGroupSync: CreateDBSubnetGroupSyncType<ClientInvocationReportingType>? = nil,
            createEventSubscriptionAsync: CreateEventSubscriptionAsyncType<ClientInvocationReportingType>? = nil,
            createEventSubscriptionSync: CreateEventSubscriptionSyncType<ClientInvocationReportingType>? = nil,
            createGlobalClusterAsync: CreateGlobalClusterAsyncType<ClientInvocationReportingType>? = nil,
            createGlobalClusterSync: CreateGlobalClusterSyncType<ClientInvocationReportingType>? = nil,
            createOptionGroupAsync: CreateOptionGroupAsyncType<ClientInvocationReportingType>? = nil,
            createOptionGroupSync: CreateOptionGroupSyncType<ClientInvocationReportingType>? = nil,
            deleteCustomAvailabilityZoneAsync: DeleteCustomAvailabilityZoneAsyncType<ClientInvocationReportingType>? = nil,
            deleteCustomAvailabilityZoneSync: DeleteCustomAvailabilityZoneSyncType<ClientInvocationReportingType>? = nil,
            deleteDBClusterAsync: DeleteDBClusterAsyncType<ClientInvocationReportingType>? = nil,
            deleteDBClusterSync: DeleteDBClusterSyncType<ClientInvocationReportingType>? = nil,
            deleteDBClusterEndpointAsync: DeleteDBClusterEndpointAsyncType<ClientInvocationReportingType>? = nil,
            deleteDBClusterEndpointSync: DeleteDBClusterEndpointSyncType<ClientInvocationReportingType>? = nil,
            deleteDBClusterParameterGroupAsync: DeleteDBClusterParameterGroupAsyncType<ClientInvocationReportingType>? = nil,
            deleteDBClusterParameterGroupSync: DeleteDBClusterParameterGroupSyncType<ClientInvocationReportingType>? = nil,
            deleteDBClusterSnapshotAsync: DeleteDBClusterSnapshotAsyncType<ClientInvocationReportingType>? = nil,
            deleteDBClusterSnapshotSync: DeleteDBClusterSnapshotSyncType<ClientInvocationReportingType>? = nil,
            deleteDBInstanceAsync: DeleteDBInstanceAsyncType<ClientInvocationReportingType>? = nil,
            deleteDBInstanceSync: DeleteDBInstanceSyncType<ClientInvocationReportingType>? = nil,
            deleteDBInstanceAutomatedBackupAsync: DeleteDBInstanceAutomatedBackupAsyncType<ClientInvocationReportingType>? = nil,
            deleteDBInstanceAutomatedBackupSync: DeleteDBInstanceAutomatedBackupSyncType<ClientInvocationReportingType>? = nil,
            deleteDBParameterGroupAsync: DeleteDBParameterGroupAsyncType<ClientInvocationReportingType>? = nil,
            deleteDBParameterGroupSync: DeleteDBParameterGroupSyncType<ClientInvocationReportingType>? = nil,
            deleteDBProxyAsync: DeleteDBProxyAsyncType<ClientInvocationReportingType>? = nil,
            deleteDBProxySync: DeleteDBProxySyncType<ClientInvocationReportingType>? = nil,
            deleteDBSecurityGroupAsync: DeleteDBSecurityGroupAsyncType<ClientInvocationReportingType>? = nil,
            deleteDBSecurityGroupSync: DeleteDBSecurityGroupSyncType<ClientInvocationReportingType>? = nil,
            deleteDBSnapshotAsync: DeleteDBSnapshotAsyncType<ClientInvocationReportingType>? = nil,
            deleteDBSnapshotSync: DeleteDBSnapshotSyncType<ClientInvocationReportingType>? = nil,
            deleteDBSubnetGroupAsync: DeleteDBSubnetGroupAsyncType<ClientInvocationReportingType>? = nil,
            deleteDBSubnetGroupSync: DeleteDBSubnetGroupSyncType<ClientInvocationReportingType>? = nil,
            deleteEventSubscriptionAsync: DeleteEventSubscriptionAsyncType<ClientInvocationReportingType>? = nil,
            deleteEventSubscriptionSync: DeleteEventSubscriptionSyncType<ClientInvocationReportingType>? = nil,
            deleteGlobalClusterAsync: DeleteGlobalClusterAsyncType<ClientInvocationReportingType>? = nil,
            deleteGlobalClusterSync: DeleteGlobalClusterSyncType<ClientInvocationReportingType>? = nil,
            deleteInstallationMediaAsync: DeleteInstallationMediaAsyncType<ClientInvocationReportingType>? = nil,
            deleteInstallationMediaSync: DeleteInstallationMediaSyncType<ClientInvocationReportingType>? = nil,
            deleteOptionGroupAsync: DeleteOptionGroupAsyncType<ClientInvocationReportingType>? = nil,
            deleteOptionGroupSync: DeleteOptionGroupSyncType<ClientInvocationReportingType>? = nil,
            deregisterDBProxyTargetsAsync: DeregisterDBProxyTargetsAsyncType<ClientInvocationReportingType>? = nil,
            deregisterDBProxyTargetsSync: DeregisterDBProxyTargetsSyncType<ClientInvocationReportingType>? = nil,
            describeAccountAttributesAsync: DescribeAccountAttributesAsyncType<ClientInvocationReportingType>? = nil,
            describeAccountAttributesSync: DescribeAccountAttributesSyncType<ClientInvocationReportingType>? = nil,
            describeCertificatesAsync: DescribeCertificatesAsyncType<ClientInvocationReportingType>? = nil,
            describeCertificatesSync: DescribeCertificatesSyncType<ClientInvocationReportingType>? = nil,
            describeCustomAvailabilityZonesAsync: DescribeCustomAvailabilityZonesAsyncType<ClientInvocationReportingType>? = nil,
            describeCustomAvailabilityZonesSync: DescribeCustomAvailabilityZonesSyncType<ClientInvocationReportingType>? = nil,
            describeDBClusterBacktracksAsync: DescribeDBClusterBacktracksAsyncType<ClientInvocationReportingType>? = nil,
            describeDBClusterBacktracksSync: DescribeDBClusterBacktracksSyncType<ClientInvocationReportingType>? = nil,
            describeDBClusterEndpointsAsync: DescribeDBClusterEndpointsAsyncType<ClientInvocationReportingType>? = nil,
            describeDBClusterEndpointsSync: DescribeDBClusterEndpointsSyncType<ClientInvocationReportingType>? = nil,
            describeDBClusterParameterGroupsAsync: DescribeDBClusterParameterGroupsAsyncType<ClientInvocationReportingType>? = nil,
            describeDBClusterParameterGroupsSync: DescribeDBClusterParameterGroupsSyncType<ClientInvocationReportingType>? = nil,
            describeDBClusterParametersAsync: DescribeDBClusterParametersAsyncType<ClientInvocationReportingType>? = nil,
            describeDBClusterParametersSync: DescribeDBClusterParametersSyncType<ClientInvocationReportingType>? = nil,
            describeDBClusterSnapshotAttributesAsync: DescribeDBClusterSnapshotAttributesAsyncType<ClientInvocationReportingType>? = nil,
            describeDBClusterSnapshotAttributesSync: DescribeDBClusterSnapshotAttributesSyncType<ClientInvocationReportingType>? = nil,
            describeDBClusterSnapshotsAsync: DescribeDBClusterSnapshotsAsyncType<ClientInvocationReportingType>? = nil,
            describeDBClusterSnapshotsSync: DescribeDBClusterSnapshotsSyncType<ClientInvocationReportingType>? = nil,
            describeDBClustersAsync: DescribeDBClustersAsyncType<ClientInvocationReportingType>? = nil,
            describeDBClustersSync: DescribeDBClustersSyncType<ClientInvocationReportingType>? = nil,
            describeDBEngineVersionsAsync: DescribeDBEngineVersionsAsyncType<ClientInvocationReportingType>? = nil,
            describeDBEngineVersionsSync: DescribeDBEngineVersionsSyncType<ClientInvocationReportingType>? = nil,
            describeDBInstanceAutomatedBackupsAsync: DescribeDBInstanceAutomatedBackupsAsyncType<ClientInvocationReportingType>? = nil,
            describeDBInstanceAutomatedBackupsSync: DescribeDBInstanceAutomatedBackupsSyncType<ClientInvocationReportingType>? = nil,
            describeDBInstancesAsync: DescribeDBInstancesAsyncType<ClientInvocationReportingType>? = nil,
            describeDBInstancesSync: DescribeDBInstancesSyncType<ClientInvocationReportingType>? = nil,
            describeDBLogFilesAsync: DescribeDBLogFilesAsyncType<ClientInvocationReportingType>? = nil,
            describeDBLogFilesSync: DescribeDBLogFilesSyncType<ClientInvocationReportingType>? = nil,
            describeDBParameterGroupsAsync: DescribeDBParameterGroupsAsyncType<ClientInvocationReportingType>? = nil,
            describeDBParameterGroupsSync: DescribeDBParameterGroupsSyncType<ClientInvocationReportingType>? = nil,
            describeDBParametersAsync: DescribeDBParametersAsyncType<ClientInvocationReportingType>? = nil,
            describeDBParametersSync: DescribeDBParametersSyncType<ClientInvocationReportingType>? = nil,
            describeDBProxiesAsync: DescribeDBProxiesAsyncType<ClientInvocationReportingType>? = nil,
            describeDBProxiesSync: DescribeDBProxiesSyncType<ClientInvocationReportingType>? = nil,
            describeDBProxyTargetGroupsAsync: DescribeDBProxyTargetGroupsAsyncType<ClientInvocationReportingType>? = nil,
            describeDBProxyTargetGroupsSync: DescribeDBProxyTargetGroupsSyncType<ClientInvocationReportingType>? = nil,
            describeDBProxyTargetsAsync: DescribeDBProxyTargetsAsyncType<ClientInvocationReportingType>? = nil,
            describeDBProxyTargetsSync: DescribeDBProxyTargetsSyncType<ClientInvocationReportingType>? = nil,
            describeDBSecurityGroupsAsync: DescribeDBSecurityGroupsAsyncType<ClientInvocationReportingType>? = nil,
            describeDBSecurityGroupsSync: DescribeDBSecurityGroupsSyncType<ClientInvocationReportingType>? = nil,
            describeDBSnapshotAttributesAsync: DescribeDBSnapshotAttributesAsyncType<ClientInvocationReportingType>? = nil,
            describeDBSnapshotAttributesSync: DescribeDBSnapshotAttributesSyncType<ClientInvocationReportingType>? = nil,
            describeDBSnapshotsAsync: DescribeDBSnapshotsAsyncType<ClientInvocationReportingType>? = nil,
            describeDBSnapshotsSync: DescribeDBSnapshotsSyncType<ClientInvocationReportingType>? = nil,
            describeDBSubnetGroupsAsync: DescribeDBSubnetGroupsAsyncType<ClientInvocationReportingType>? = nil,
            describeDBSubnetGroupsSync: DescribeDBSubnetGroupsSyncType<ClientInvocationReportingType>? = nil,
            describeEngineDefaultClusterParametersAsync: DescribeEngineDefaultClusterParametersAsyncType<ClientInvocationReportingType>? = nil,
            describeEngineDefaultClusterParametersSync: DescribeEngineDefaultClusterParametersSyncType<ClientInvocationReportingType>? = nil,
            describeEngineDefaultParametersAsync: DescribeEngineDefaultParametersAsyncType<ClientInvocationReportingType>? = nil,
            describeEngineDefaultParametersSync: DescribeEngineDefaultParametersSyncType<ClientInvocationReportingType>? = nil,
            describeEventCategoriesAsync: DescribeEventCategoriesAsyncType<ClientInvocationReportingType>? = nil,
            describeEventCategoriesSync: DescribeEventCategoriesSyncType<ClientInvocationReportingType>? = nil,
            describeEventSubscriptionsAsync: DescribeEventSubscriptionsAsyncType<ClientInvocationReportingType>? = nil,
            describeEventSubscriptionsSync: DescribeEventSubscriptionsSyncType<ClientInvocationReportingType>? = nil,
            describeEventsAsync: DescribeEventsAsyncType<ClientInvocationReportingType>? = nil,
            describeEventsSync: DescribeEventsSyncType<ClientInvocationReportingType>? = nil,
            describeExportTasksAsync: DescribeExportTasksAsyncType<ClientInvocationReportingType>? = nil,
            describeExportTasksSync: DescribeExportTasksSyncType<ClientInvocationReportingType>? = nil,
            describeGlobalClustersAsync: DescribeGlobalClustersAsyncType<ClientInvocationReportingType>? = nil,
            describeGlobalClustersSync: DescribeGlobalClustersSyncType<ClientInvocationReportingType>? = nil,
            describeInstallationMediaAsync: DescribeInstallationMediaAsyncType<ClientInvocationReportingType>? = nil,
            describeInstallationMediaSync: DescribeInstallationMediaSyncType<ClientInvocationReportingType>? = nil,
            describeOptionGroupOptionsAsync: DescribeOptionGroupOptionsAsyncType<ClientInvocationReportingType>? = nil,
            describeOptionGroupOptionsSync: DescribeOptionGroupOptionsSyncType<ClientInvocationReportingType>? = nil,
            describeOptionGroupsAsync: DescribeOptionGroupsAsyncType<ClientInvocationReportingType>? = nil,
            describeOptionGroupsSync: DescribeOptionGroupsSyncType<ClientInvocationReportingType>? = nil,
            describeOrderableDBInstanceOptionsAsync: DescribeOrderableDBInstanceOptionsAsyncType<ClientInvocationReportingType>? = nil,
            describeOrderableDBInstanceOptionsSync: DescribeOrderableDBInstanceOptionsSyncType<ClientInvocationReportingType>? = nil,
            describePendingMaintenanceActionsAsync: DescribePendingMaintenanceActionsAsyncType<ClientInvocationReportingType>? = nil,
            describePendingMaintenanceActionsSync: DescribePendingMaintenanceActionsSyncType<ClientInvocationReportingType>? = nil,
            describeReservedDBInstancesAsync: DescribeReservedDBInstancesAsyncType<ClientInvocationReportingType>? = nil,
            describeReservedDBInstancesSync: DescribeReservedDBInstancesSyncType<ClientInvocationReportingType>? = nil,
            describeReservedDBInstancesOfferingsAsync: DescribeReservedDBInstancesOfferingsAsyncType<ClientInvocationReportingType>? = nil,
            describeReservedDBInstancesOfferingsSync: DescribeReservedDBInstancesOfferingsSyncType<ClientInvocationReportingType>? = nil,
            describeSourceRegionsAsync: DescribeSourceRegionsAsyncType<ClientInvocationReportingType>? = nil,
            describeSourceRegionsSync: DescribeSourceRegionsSyncType<ClientInvocationReportingType>? = nil,
            describeValidDBInstanceModificationsAsync: DescribeValidDBInstanceModificationsAsyncType<ClientInvocationReportingType>? = nil,
            describeValidDBInstanceModificationsSync: DescribeValidDBInstanceModificationsSyncType<ClientInvocationReportingType>? = nil,
            downloadDBLogFilePortionAsync: DownloadDBLogFilePortionAsyncType<ClientInvocationReportingType>? = nil,
            downloadDBLogFilePortionSync: DownloadDBLogFilePortionSyncType<ClientInvocationReportingType>? = nil,
            failoverDBClusterAsync: FailoverDBClusterAsyncType<ClientInvocationReportingType>? = nil,
            failoverDBClusterSync: FailoverDBClusterSyncType<ClientInvocationReportingType>? = nil,
            importInstallationMediaAsync: ImportInstallationMediaAsyncType<ClientInvocationReportingType>? = nil,
            importInstallationMediaSync: ImportInstallationMediaSyncType<ClientInvocationReportingType>? = nil,
            listTagsForResourceAsync: ListTagsForResourceAsyncType<ClientInvocationReportingType>? = nil,
            listTagsForResourceSync: ListTagsForResourceSyncType<ClientInvocationReportingType>? = nil,
            modifyCertificatesAsync: ModifyCertificatesAsyncType<ClientInvocationReportingType>? = nil,
            modifyCertificatesSync: ModifyCertificatesSyncType<ClientInvocationReportingType>? = nil,
            modifyCurrentDBClusterCapacityAsync: ModifyCurrentDBClusterCapacityAsyncType<ClientInvocationReportingType>? = nil,
            modifyCurrentDBClusterCapacitySync: ModifyCurrentDBClusterCapacitySyncType<ClientInvocationReportingType>? = nil,
            modifyDBClusterAsync: ModifyDBClusterAsyncType<ClientInvocationReportingType>? = nil,
            modifyDBClusterSync: ModifyDBClusterSyncType<ClientInvocationReportingType>? = nil,
            modifyDBClusterEndpointAsync: ModifyDBClusterEndpointAsyncType<ClientInvocationReportingType>? = nil,
            modifyDBClusterEndpointSync: ModifyDBClusterEndpointSyncType<ClientInvocationReportingType>? = nil,
            modifyDBClusterParameterGroupAsync: ModifyDBClusterParameterGroupAsyncType<ClientInvocationReportingType>? = nil,
            modifyDBClusterParameterGroupSync: ModifyDBClusterParameterGroupSyncType<ClientInvocationReportingType>? = nil,
            modifyDBClusterSnapshotAttributeAsync: ModifyDBClusterSnapshotAttributeAsyncType<ClientInvocationReportingType>? = nil,
            modifyDBClusterSnapshotAttributeSync: ModifyDBClusterSnapshotAttributeSyncType<ClientInvocationReportingType>? = nil,
            modifyDBInstanceAsync: ModifyDBInstanceAsyncType<ClientInvocationReportingType>? = nil,
            modifyDBInstanceSync: ModifyDBInstanceSyncType<ClientInvocationReportingType>? = nil,
            modifyDBParameterGroupAsync: ModifyDBParameterGroupAsyncType<ClientInvocationReportingType>? = nil,
            modifyDBParameterGroupSync: ModifyDBParameterGroupSyncType<ClientInvocationReportingType>? = nil,
            modifyDBProxyAsync: ModifyDBProxyAsyncType<ClientInvocationReportingType>? = nil,
            modifyDBProxySync: ModifyDBProxySyncType<ClientInvocationReportingType>? = nil,
            modifyDBProxyTargetGroupAsync: ModifyDBProxyTargetGroupAsyncType<ClientInvocationReportingType>? = nil,
            modifyDBProxyTargetGroupSync: ModifyDBProxyTargetGroupSyncType<ClientInvocationReportingType>? = nil,
            modifyDBSnapshotAsync: ModifyDBSnapshotAsyncType<ClientInvocationReportingType>? = nil,
            modifyDBSnapshotSync: ModifyDBSnapshotSyncType<ClientInvocationReportingType>? = nil,
            modifyDBSnapshotAttributeAsync: ModifyDBSnapshotAttributeAsyncType<ClientInvocationReportingType>? = nil,
            modifyDBSnapshotAttributeSync: ModifyDBSnapshotAttributeSyncType<ClientInvocationReportingType>? = nil,
            modifyDBSubnetGroupAsync: ModifyDBSubnetGroupAsyncType<ClientInvocationReportingType>? = nil,
            modifyDBSubnetGroupSync: ModifyDBSubnetGroupSyncType<ClientInvocationReportingType>? = nil,
            modifyEventSubscriptionAsync: ModifyEventSubscriptionAsyncType<ClientInvocationReportingType>? = nil,
            modifyEventSubscriptionSync: ModifyEventSubscriptionSyncType<ClientInvocationReportingType>? = nil,
            modifyGlobalClusterAsync: ModifyGlobalClusterAsyncType<ClientInvocationReportingType>? = nil,
            modifyGlobalClusterSync: ModifyGlobalClusterSyncType<ClientInvocationReportingType>? = nil,
            modifyOptionGroupAsync: ModifyOptionGroupAsyncType<ClientInvocationReportingType>? = nil,
            modifyOptionGroupSync: ModifyOptionGroupSyncType<ClientInvocationReportingType>? = nil,
            promoteReadReplicaAsync: PromoteReadReplicaAsyncType<ClientInvocationReportingType>? = nil,
            promoteReadReplicaSync: PromoteReadReplicaSyncType<ClientInvocationReportingType>? = nil,
            promoteReadReplicaDBClusterAsync: PromoteReadReplicaDBClusterAsyncType<ClientInvocationReportingType>? = nil,
            promoteReadReplicaDBClusterSync: PromoteReadReplicaDBClusterSyncType<ClientInvocationReportingType>? = nil,
            purchaseReservedDBInstancesOfferingAsync: PurchaseReservedDBInstancesOfferingAsyncType<ClientInvocationReportingType>? = nil,
            purchaseReservedDBInstancesOfferingSync: PurchaseReservedDBInstancesOfferingSyncType<ClientInvocationReportingType>? = nil,
            rebootDBInstanceAsync: RebootDBInstanceAsyncType<ClientInvocationReportingType>? = nil,
            rebootDBInstanceSync: RebootDBInstanceSyncType<ClientInvocationReportingType>? = nil,
            registerDBProxyTargetsAsync: RegisterDBProxyTargetsAsyncType<ClientInvocationReportingType>? = nil,
            registerDBProxyTargetsSync: RegisterDBProxyTargetsSyncType<ClientInvocationReportingType>? = nil,
            removeFromGlobalClusterAsync: RemoveFromGlobalClusterAsyncType<ClientInvocationReportingType>? = nil,
            removeFromGlobalClusterSync: RemoveFromGlobalClusterSyncType<ClientInvocationReportingType>? = nil,
            removeRoleFromDBClusterAsync: RemoveRoleFromDBClusterAsyncType<ClientInvocationReportingType>? = nil,
            removeRoleFromDBClusterSync: RemoveRoleFromDBClusterSyncType<ClientInvocationReportingType>? = nil,
            removeRoleFromDBInstanceAsync: RemoveRoleFromDBInstanceAsyncType<ClientInvocationReportingType>? = nil,
            removeRoleFromDBInstanceSync: RemoveRoleFromDBInstanceSyncType<ClientInvocationReportingType>? = nil,
            removeSourceIdentifierFromSubscriptionAsync: RemoveSourceIdentifierFromSubscriptionAsyncType<ClientInvocationReportingType>? = nil,
            removeSourceIdentifierFromSubscriptionSync: RemoveSourceIdentifierFromSubscriptionSyncType<ClientInvocationReportingType>? = nil,
            removeTagsFromResourceAsync: RemoveTagsFromResourceAsyncType<ClientInvocationReportingType>? = nil,
            removeTagsFromResourceSync: RemoveTagsFromResourceSyncType<ClientInvocationReportingType>? = nil,
            resetDBClusterParameterGroupAsync: ResetDBClusterParameterGroupAsyncType<ClientInvocationReportingType>? = nil,
            resetDBClusterParameterGroupSync: ResetDBClusterParameterGroupSyncType<ClientInvocationReportingType>? = nil,
            resetDBParameterGroupAsync: ResetDBParameterGroupAsyncType<ClientInvocationReportingType>? = nil,
            resetDBParameterGroupSync: ResetDBParameterGroupSyncType<ClientInvocationReportingType>? = nil,
            restoreDBClusterFromS3Async: RestoreDBClusterFromS3AsyncType<ClientInvocationReportingType>? = nil,
            restoreDBClusterFromS3Sync: RestoreDBClusterFromS3SyncType<ClientInvocationReportingType>? = nil,
            restoreDBClusterFromSnapshotAsync: RestoreDBClusterFromSnapshotAsyncType<ClientInvocationReportingType>? = nil,
            restoreDBClusterFromSnapshotSync: RestoreDBClusterFromSnapshotSyncType<ClientInvocationReportingType>? = nil,
            restoreDBClusterToPointInTimeAsync: RestoreDBClusterToPointInTimeAsyncType<ClientInvocationReportingType>? = nil,
            restoreDBClusterToPointInTimeSync: RestoreDBClusterToPointInTimeSyncType<ClientInvocationReportingType>? = nil,
            restoreDBInstanceFromDBSnapshotAsync: RestoreDBInstanceFromDBSnapshotAsyncType<ClientInvocationReportingType>? = nil,
            restoreDBInstanceFromDBSnapshotSync: RestoreDBInstanceFromDBSnapshotSyncType<ClientInvocationReportingType>? = nil,
            restoreDBInstanceFromS3Async: RestoreDBInstanceFromS3AsyncType<ClientInvocationReportingType>? = nil,
            restoreDBInstanceFromS3Sync: RestoreDBInstanceFromS3SyncType<ClientInvocationReportingType>? = nil,
            restoreDBInstanceToPointInTimeAsync: RestoreDBInstanceToPointInTimeAsyncType<ClientInvocationReportingType>? = nil,
            restoreDBInstanceToPointInTimeSync: RestoreDBInstanceToPointInTimeSyncType<ClientInvocationReportingType>? = nil,
            revokeDBSecurityGroupIngressAsync: RevokeDBSecurityGroupIngressAsyncType<ClientInvocationReportingType>? = nil,
            revokeDBSecurityGroupIngressSync: RevokeDBSecurityGroupIngressSyncType<ClientInvocationReportingType>? = nil,
            startActivityStreamAsync: StartActivityStreamAsyncType<ClientInvocationReportingType>? = nil,
            startActivityStreamSync: StartActivityStreamSyncType<ClientInvocationReportingType>? = nil,
            startDBClusterAsync: StartDBClusterAsyncType<ClientInvocationReportingType>? = nil,
            startDBClusterSync: StartDBClusterSyncType<ClientInvocationReportingType>? = nil,
            startDBInstanceAsync: StartDBInstanceAsyncType<ClientInvocationReportingType>? = nil,
            startDBInstanceSync: StartDBInstanceSyncType<ClientInvocationReportingType>? = nil,
            startExportTaskAsync: StartExportTaskAsyncType<ClientInvocationReportingType>? = nil,
            startExportTaskSync: StartExportTaskSyncType<ClientInvocationReportingType>? = nil,
            stopActivityStreamAsync: StopActivityStreamAsyncType<ClientInvocationReportingType>? = nil,
            stopActivityStreamSync: StopActivityStreamSyncType<ClientInvocationReportingType>? = nil,
            stopDBClusterAsync: StopDBClusterAsyncType<ClientInvocationReportingType>? = nil,
            stopDBClusterSync: StopDBClusterSyncType<ClientInvocationReportingType>? = nil,
            stopDBInstanceAsync: StopDBInstanceAsyncType<ClientInvocationReportingType>? = nil,
            stopDBInstanceSync: StopDBInstanceSyncType<ClientInvocationReportingType>? = nil) {
        self.error = error
        self.addRoleToDBClusterAsyncOverride = addRoleToDBClusterAsync
        self.addRoleToDBClusterSyncOverride = addRoleToDBClusterSync
        self.addRoleToDBInstanceAsyncOverride = addRoleToDBInstanceAsync
        self.addRoleToDBInstanceSyncOverride = addRoleToDBInstanceSync
        self.addSourceIdentifierToSubscriptionAsyncOverride = addSourceIdentifierToSubscriptionAsync
        self.addSourceIdentifierToSubscriptionSyncOverride = addSourceIdentifierToSubscriptionSync
        self.addTagsToResourceAsyncOverride = addTagsToResourceAsync
        self.addTagsToResourceSyncOverride = addTagsToResourceSync
        self.applyPendingMaintenanceActionAsyncOverride = applyPendingMaintenanceActionAsync
        self.applyPendingMaintenanceActionSyncOverride = applyPendingMaintenanceActionSync
        self.authorizeDBSecurityGroupIngressAsyncOverride = authorizeDBSecurityGroupIngressAsync
        self.authorizeDBSecurityGroupIngressSyncOverride = authorizeDBSecurityGroupIngressSync
        self.backtrackDBClusterAsyncOverride = backtrackDBClusterAsync
        self.backtrackDBClusterSyncOverride = backtrackDBClusterSync
        self.cancelExportTaskAsyncOverride = cancelExportTaskAsync
        self.cancelExportTaskSyncOverride = cancelExportTaskSync
        self.copyDBClusterParameterGroupAsyncOverride = copyDBClusterParameterGroupAsync
        self.copyDBClusterParameterGroupSyncOverride = copyDBClusterParameterGroupSync
        self.copyDBClusterSnapshotAsyncOverride = copyDBClusterSnapshotAsync
        self.copyDBClusterSnapshotSyncOverride = copyDBClusterSnapshotSync
        self.copyDBParameterGroupAsyncOverride = copyDBParameterGroupAsync
        self.copyDBParameterGroupSyncOverride = copyDBParameterGroupSync
        self.copyDBSnapshotAsyncOverride = copyDBSnapshotAsync
        self.copyDBSnapshotSyncOverride = copyDBSnapshotSync
        self.copyOptionGroupAsyncOverride = copyOptionGroupAsync
        self.copyOptionGroupSyncOverride = copyOptionGroupSync
        self.createCustomAvailabilityZoneAsyncOverride = createCustomAvailabilityZoneAsync
        self.createCustomAvailabilityZoneSyncOverride = createCustomAvailabilityZoneSync
        self.createDBClusterAsyncOverride = createDBClusterAsync
        self.createDBClusterSyncOverride = createDBClusterSync
        self.createDBClusterEndpointAsyncOverride = createDBClusterEndpointAsync
        self.createDBClusterEndpointSyncOverride = createDBClusterEndpointSync
        self.createDBClusterParameterGroupAsyncOverride = createDBClusterParameterGroupAsync
        self.createDBClusterParameterGroupSyncOverride = createDBClusterParameterGroupSync
        self.createDBClusterSnapshotAsyncOverride = createDBClusterSnapshotAsync
        self.createDBClusterSnapshotSyncOverride = createDBClusterSnapshotSync
        self.createDBInstanceAsyncOverride = createDBInstanceAsync
        self.createDBInstanceSyncOverride = createDBInstanceSync
        self.createDBInstanceReadReplicaAsyncOverride = createDBInstanceReadReplicaAsync
        self.createDBInstanceReadReplicaSyncOverride = createDBInstanceReadReplicaSync
        self.createDBParameterGroupAsyncOverride = createDBParameterGroupAsync
        self.createDBParameterGroupSyncOverride = createDBParameterGroupSync
        self.createDBProxyAsyncOverride = createDBProxyAsync
        self.createDBProxySyncOverride = createDBProxySync
        self.createDBSecurityGroupAsyncOverride = createDBSecurityGroupAsync
        self.createDBSecurityGroupSyncOverride = createDBSecurityGroupSync
        self.createDBSnapshotAsyncOverride = createDBSnapshotAsync
        self.createDBSnapshotSyncOverride = createDBSnapshotSync
        self.createDBSubnetGroupAsyncOverride = createDBSubnetGroupAsync
        self.createDBSubnetGroupSyncOverride = createDBSubnetGroupSync
        self.createEventSubscriptionAsyncOverride = createEventSubscriptionAsync
        self.createEventSubscriptionSyncOverride = createEventSubscriptionSync
        self.createGlobalClusterAsyncOverride = createGlobalClusterAsync
        self.createGlobalClusterSyncOverride = createGlobalClusterSync
        self.createOptionGroupAsyncOverride = createOptionGroupAsync
        self.createOptionGroupSyncOverride = createOptionGroupSync
        self.deleteCustomAvailabilityZoneAsyncOverride = deleteCustomAvailabilityZoneAsync
        self.deleteCustomAvailabilityZoneSyncOverride = deleteCustomAvailabilityZoneSync
        self.deleteDBClusterAsyncOverride = deleteDBClusterAsync
        self.deleteDBClusterSyncOverride = deleteDBClusterSync
        self.deleteDBClusterEndpointAsyncOverride = deleteDBClusterEndpointAsync
        self.deleteDBClusterEndpointSyncOverride = deleteDBClusterEndpointSync
        self.deleteDBClusterParameterGroupAsyncOverride = deleteDBClusterParameterGroupAsync
        self.deleteDBClusterParameterGroupSyncOverride = deleteDBClusterParameterGroupSync
        self.deleteDBClusterSnapshotAsyncOverride = deleteDBClusterSnapshotAsync
        self.deleteDBClusterSnapshotSyncOverride = deleteDBClusterSnapshotSync
        self.deleteDBInstanceAsyncOverride = deleteDBInstanceAsync
        self.deleteDBInstanceSyncOverride = deleteDBInstanceSync
        self.deleteDBInstanceAutomatedBackupAsyncOverride = deleteDBInstanceAutomatedBackupAsync
        self.deleteDBInstanceAutomatedBackupSyncOverride = deleteDBInstanceAutomatedBackupSync
        self.deleteDBParameterGroupAsyncOverride = deleteDBParameterGroupAsync
        self.deleteDBParameterGroupSyncOverride = deleteDBParameterGroupSync
        self.deleteDBProxyAsyncOverride = deleteDBProxyAsync
        self.deleteDBProxySyncOverride = deleteDBProxySync
        self.deleteDBSecurityGroupAsyncOverride = deleteDBSecurityGroupAsync
        self.deleteDBSecurityGroupSyncOverride = deleteDBSecurityGroupSync
        self.deleteDBSnapshotAsyncOverride = deleteDBSnapshotAsync
        self.deleteDBSnapshotSyncOverride = deleteDBSnapshotSync
        self.deleteDBSubnetGroupAsyncOverride = deleteDBSubnetGroupAsync
        self.deleteDBSubnetGroupSyncOverride = deleteDBSubnetGroupSync
        self.deleteEventSubscriptionAsyncOverride = deleteEventSubscriptionAsync
        self.deleteEventSubscriptionSyncOverride = deleteEventSubscriptionSync
        self.deleteGlobalClusterAsyncOverride = deleteGlobalClusterAsync
        self.deleteGlobalClusterSyncOverride = deleteGlobalClusterSync
        self.deleteInstallationMediaAsyncOverride = deleteInstallationMediaAsync
        self.deleteInstallationMediaSyncOverride = deleteInstallationMediaSync
        self.deleteOptionGroupAsyncOverride = deleteOptionGroupAsync
        self.deleteOptionGroupSyncOverride = deleteOptionGroupSync
        self.deregisterDBProxyTargetsAsyncOverride = deregisterDBProxyTargetsAsync
        self.deregisterDBProxyTargetsSyncOverride = deregisterDBProxyTargetsSync
        self.describeAccountAttributesAsyncOverride = describeAccountAttributesAsync
        self.describeAccountAttributesSyncOverride = describeAccountAttributesSync
        self.describeCertificatesAsyncOverride = describeCertificatesAsync
        self.describeCertificatesSyncOverride = describeCertificatesSync
        self.describeCustomAvailabilityZonesAsyncOverride = describeCustomAvailabilityZonesAsync
        self.describeCustomAvailabilityZonesSyncOverride = describeCustomAvailabilityZonesSync
        self.describeDBClusterBacktracksAsyncOverride = describeDBClusterBacktracksAsync
        self.describeDBClusterBacktracksSyncOverride = describeDBClusterBacktracksSync
        self.describeDBClusterEndpointsAsyncOverride = describeDBClusterEndpointsAsync
        self.describeDBClusterEndpointsSyncOverride = describeDBClusterEndpointsSync
        self.describeDBClusterParameterGroupsAsyncOverride = describeDBClusterParameterGroupsAsync
        self.describeDBClusterParameterGroupsSyncOverride = describeDBClusterParameterGroupsSync
        self.describeDBClusterParametersAsyncOverride = describeDBClusterParametersAsync
        self.describeDBClusterParametersSyncOverride = describeDBClusterParametersSync
        self.describeDBClusterSnapshotAttributesAsyncOverride = describeDBClusterSnapshotAttributesAsync
        self.describeDBClusterSnapshotAttributesSyncOverride = describeDBClusterSnapshotAttributesSync
        self.describeDBClusterSnapshotsAsyncOverride = describeDBClusterSnapshotsAsync
        self.describeDBClusterSnapshotsSyncOverride = describeDBClusterSnapshotsSync
        self.describeDBClustersAsyncOverride = describeDBClustersAsync
        self.describeDBClustersSyncOverride = describeDBClustersSync
        self.describeDBEngineVersionsAsyncOverride = describeDBEngineVersionsAsync
        self.describeDBEngineVersionsSyncOverride = describeDBEngineVersionsSync
        self.describeDBInstanceAutomatedBackupsAsyncOverride = describeDBInstanceAutomatedBackupsAsync
        self.describeDBInstanceAutomatedBackupsSyncOverride = describeDBInstanceAutomatedBackupsSync
        self.describeDBInstancesAsyncOverride = describeDBInstancesAsync
        self.describeDBInstancesSyncOverride = describeDBInstancesSync
        self.describeDBLogFilesAsyncOverride = describeDBLogFilesAsync
        self.describeDBLogFilesSyncOverride = describeDBLogFilesSync
        self.describeDBParameterGroupsAsyncOverride = describeDBParameterGroupsAsync
        self.describeDBParameterGroupsSyncOverride = describeDBParameterGroupsSync
        self.describeDBParametersAsyncOverride = describeDBParametersAsync
        self.describeDBParametersSyncOverride = describeDBParametersSync
        self.describeDBProxiesAsyncOverride = describeDBProxiesAsync
        self.describeDBProxiesSyncOverride = describeDBProxiesSync
        self.describeDBProxyTargetGroupsAsyncOverride = describeDBProxyTargetGroupsAsync
        self.describeDBProxyTargetGroupsSyncOverride = describeDBProxyTargetGroupsSync
        self.describeDBProxyTargetsAsyncOverride = describeDBProxyTargetsAsync
        self.describeDBProxyTargetsSyncOverride = describeDBProxyTargetsSync
        self.describeDBSecurityGroupsAsyncOverride = describeDBSecurityGroupsAsync
        self.describeDBSecurityGroupsSyncOverride = describeDBSecurityGroupsSync
        self.describeDBSnapshotAttributesAsyncOverride = describeDBSnapshotAttributesAsync
        self.describeDBSnapshotAttributesSyncOverride = describeDBSnapshotAttributesSync
        self.describeDBSnapshotsAsyncOverride = describeDBSnapshotsAsync
        self.describeDBSnapshotsSyncOverride = describeDBSnapshotsSync
        self.describeDBSubnetGroupsAsyncOverride = describeDBSubnetGroupsAsync
        self.describeDBSubnetGroupsSyncOverride = describeDBSubnetGroupsSync
        self.describeEngineDefaultClusterParametersAsyncOverride = describeEngineDefaultClusterParametersAsync
        self.describeEngineDefaultClusterParametersSyncOverride = describeEngineDefaultClusterParametersSync
        self.describeEngineDefaultParametersAsyncOverride = describeEngineDefaultParametersAsync
        self.describeEngineDefaultParametersSyncOverride = describeEngineDefaultParametersSync
        self.describeEventCategoriesAsyncOverride = describeEventCategoriesAsync
        self.describeEventCategoriesSyncOverride = describeEventCategoriesSync
        self.describeEventSubscriptionsAsyncOverride = describeEventSubscriptionsAsync
        self.describeEventSubscriptionsSyncOverride = describeEventSubscriptionsSync
        self.describeEventsAsyncOverride = describeEventsAsync
        self.describeEventsSyncOverride = describeEventsSync
        self.describeExportTasksAsyncOverride = describeExportTasksAsync
        self.describeExportTasksSyncOverride = describeExportTasksSync
        self.describeGlobalClustersAsyncOverride = describeGlobalClustersAsync
        self.describeGlobalClustersSyncOverride = describeGlobalClustersSync
        self.describeInstallationMediaAsyncOverride = describeInstallationMediaAsync
        self.describeInstallationMediaSyncOverride = describeInstallationMediaSync
        self.describeOptionGroupOptionsAsyncOverride = describeOptionGroupOptionsAsync
        self.describeOptionGroupOptionsSyncOverride = describeOptionGroupOptionsSync
        self.describeOptionGroupsAsyncOverride = describeOptionGroupsAsync
        self.describeOptionGroupsSyncOverride = describeOptionGroupsSync
        self.describeOrderableDBInstanceOptionsAsyncOverride = describeOrderableDBInstanceOptionsAsync
        self.describeOrderableDBInstanceOptionsSyncOverride = describeOrderableDBInstanceOptionsSync
        self.describePendingMaintenanceActionsAsyncOverride = describePendingMaintenanceActionsAsync
        self.describePendingMaintenanceActionsSyncOverride = describePendingMaintenanceActionsSync
        self.describeReservedDBInstancesAsyncOverride = describeReservedDBInstancesAsync
        self.describeReservedDBInstancesSyncOverride = describeReservedDBInstancesSync
        self.describeReservedDBInstancesOfferingsAsyncOverride = describeReservedDBInstancesOfferingsAsync
        self.describeReservedDBInstancesOfferingsSyncOverride = describeReservedDBInstancesOfferingsSync
        self.describeSourceRegionsAsyncOverride = describeSourceRegionsAsync
        self.describeSourceRegionsSyncOverride = describeSourceRegionsSync
        self.describeValidDBInstanceModificationsAsyncOverride = describeValidDBInstanceModificationsAsync
        self.describeValidDBInstanceModificationsSyncOverride = describeValidDBInstanceModificationsSync
        self.downloadDBLogFilePortionAsyncOverride = downloadDBLogFilePortionAsync
        self.downloadDBLogFilePortionSyncOverride = downloadDBLogFilePortionSync
        self.failoverDBClusterAsyncOverride = failoverDBClusterAsync
        self.failoverDBClusterSyncOverride = failoverDBClusterSync
        self.importInstallationMediaAsyncOverride = importInstallationMediaAsync
        self.importInstallationMediaSyncOverride = importInstallationMediaSync
        self.listTagsForResourceAsyncOverride = listTagsForResourceAsync
        self.listTagsForResourceSyncOverride = listTagsForResourceSync
        self.modifyCertificatesAsyncOverride = modifyCertificatesAsync
        self.modifyCertificatesSyncOverride = modifyCertificatesSync
        self.modifyCurrentDBClusterCapacityAsyncOverride = modifyCurrentDBClusterCapacityAsync
        self.modifyCurrentDBClusterCapacitySyncOverride = modifyCurrentDBClusterCapacitySync
        self.modifyDBClusterAsyncOverride = modifyDBClusterAsync
        self.modifyDBClusterSyncOverride = modifyDBClusterSync
        self.modifyDBClusterEndpointAsyncOverride = modifyDBClusterEndpointAsync
        self.modifyDBClusterEndpointSyncOverride = modifyDBClusterEndpointSync
        self.modifyDBClusterParameterGroupAsyncOverride = modifyDBClusterParameterGroupAsync
        self.modifyDBClusterParameterGroupSyncOverride = modifyDBClusterParameterGroupSync
        self.modifyDBClusterSnapshotAttributeAsyncOverride = modifyDBClusterSnapshotAttributeAsync
        self.modifyDBClusterSnapshotAttributeSyncOverride = modifyDBClusterSnapshotAttributeSync
        self.modifyDBInstanceAsyncOverride = modifyDBInstanceAsync
        self.modifyDBInstanceSyncOverride = modifyDBInstanceSync
        self.modifyDBParameterGroupAsyncOverride = modifyDBParameterGroupAsync
        self.modifyDBParameterGroupSyncOverride = modifyDBParameterGroupSync
        self.modifyDBProxyAsyncOverride = modifyDBProxyAsync
        self.modifyDBProxySyncOverride = modifyDBProxySync
        self.modifyDBProxyTargetGroupAsyncOverride = modifyDBProxyTargetGroupAsync
        self.modifyDBProxyTargetGroupSyncOverride = modifyDBProxyTargetGroupSync
        self.modifyDBSnapshotAsyncOverride = modifyDBSnapshotAsync
        self.modifyDBSnapshotSyncOverride = modifyDBSnapshotSync
        self.modifyDBSnapshotAttributeAsyncOverride = modifyDBSnapshotAttributeAsync
        self.modifyDBSnapshotAttributeSyncOverride = modifyDBSnapshotAttributeSync
        self.modifyDBSubnetGroupAsyncOverride = modifyDBSubnetGroupAsync
        self.modifyDBSubnetGroupSyncOverride = modifyDBSubnetGroupSync
        self.modifyEventSubscriptionAsyncOverride = modifyEventSubscriptionAsync
        self.modifyEventSubscriptionSyncOverride = modifyEventSubscriptionSync
        self.modifyGlobalClusterAsyncOverride = modifyGlobalClusterAsync
        self.modifyGlobalClusterSyncOverride = modifyGlobalClusterSync
        self.modifyOptionGroupAsyncOverride = modifyOptionGroupAsync
        self.modifyOptionGroupSyncOverride = modifyOptionGroupSync
        self.promoteReadReplicaAsyncOverride = promoteReadReplicaAsync
        self.promoteReadReplicaSyncOverride = promoteReadReplicaSync
        self.promoteReadReplicaDBClusterAsyncOverride = promoteReadReplicaDBClusterAsync
        self.promoteReadReplicaDBClusterSyncOverride = promoteReadReplicaDBClusterSync
        self.purchaseReservedDBInstancesOfferingAsyncOverride = purchaseReservedDBInstancesOfferingAsync
        self.purchaseReservedDBInstancesOfferingSyncOverride = purchaseReservedDBInstancesOfferingSync
        self.rebootDBInstanceAsyncOverride = rebootDBInstanceAsync
        self.rebootDBInstanceSyncOverride = rebootDBInstanceSync
        self.registerDBProxyTargetsAsyncOverride = registerDBProxyTargetsAsync
        self.registerDBProxyTargetsSyncOverride = registerDBProxyTargetsSync
        self.removeFromGlobalClusterAsyncOverride = removeFromGlobalClusterAsync
        self.removeFromGlobalClusterSyncOverride = removeFromGlobalClusterSync
        self.removeRoleFromDBClusterAsyncOverride = removeRoleFromDBClusterAsync
        self.removeRoleFromDBClusterSyncOverride = removeRoleFromDBClusterSync
        self.removeRoleFromDBInstanceAsyncOverride = removeRoleFromDBInstanceAsync
        self.removeRoleFromDBInstanceSyncOverride = removeRoleFromDBInstanceSync
        self.removeSourceIdentifierFromSubscriptionAsyncOverride = removeSourceIdentifierFromSubscriptionAsync
        self.removeSourceIdentifierFromSubscriptionSyncOverride = removeSourceIdentifierFromSubscriptionSync
        self.removeTagsFromResourceAsyncOverride = removeTagsFromResourceAsync
        self.removeTagsFromResourceSyncOverride = removeTagsFromResourceSync
        self.resetDBClusterParameterGroupAsyncOverride = resetDBClusterParameterGroupAsync
        self.resetDBClusterParameterGroupSyncOverride = resetDBClusterParameterGroupSync
        self.resetDBParameterGroupAsyncOverride = resetDBParameterGroupAsync
        self.resetDBParameterGroupSyncOverride = resetDBParameterGroupSync
        self.restoreDBClusterFromS3AsyncOverride = restoreDBClusterFromS3Async
        self.restoreDBClusterFromS3SyncOverride = restoreDBClusterFromS3Sync
        self.restoreDBClusterFromSnapshotAsyncOverride = restoreDBClusterFromSnapshotAsync
        self.restoreDBClusterFromSnapshotSyncOverride = restoreDBClusterFromSnapshotSync
        self.restoreDBClusterToPointInTimeAsyncOverride = restoreDBClusterToPointInTimeAsync
        self.restoreDBClusterToPointInTimeSyncOverride = restoreDBClusterToPointInTimeSync
        self.restoreDBInstanceFromDBSnapshotAsyncOverride = restoreDBInstanceFromDBSnapshotAsync
        self.restoreDBInstanceFromDBSnapshotSyncOverride = restoreDBInstanceFromDBSnapshotSync
        self.restoreDBInstanceFromS3AsyncOverride = restoreDBInstanceFromS3Async
        self.restoreDBInstanceFromS3SyncOverride = restoreDBInstanceFromS3Sync
        self.restoreDBInstanceToPointInTimeAsyncOverride = restoreDBInstanceToPointInTimeAsync
        self.restoreDBInstanceToPointInTimeSyncOverride = restoreDBInstanceToPointInTimeSync
        self.revokeDBSecurityGroupIngressAsyncOverride = revokeDBSecurityGroupIngressAsync
        self.revokeDBSecurityGroupIngressSyncOverride = revokeDBSecurityGroupIngressSync
        self.startActivityStreamAsyncOverride = startActivityStreamAsync
        self.startActivityStreamSyncOverride = startActivityStreamSync
        self.startDBClusterAsyncOverride = startDBClusterAsync
        self.startDBClusterSyncOverride = startDBClusterSync
        self.startDBInstanceAsyncOverride = startDBInstanceAsync
        self.startDBInstanceSyncOverride = startDBInstanceSync
        self.startExportTaskAsyncOverride = startExportTaskAsync
        self.startExportTaskSyncOverride = startExportTaskSync
        self.stopActivityStreamAsyncOverride = stopActivityStreamAsync
        self.stopActivityStreamSyncOverride = stopActivityStreamSync
        self.stopDBClusterAsyncOverride = stopDBClusterAsync
        self.stopDBClusterSyncOverride = stopDBClusterSync
        self.stopDBInstanceAsyncOverride = stopDBInstanceAsync
        self.stopDBInstanceSyncOverride = stopDBInstanceSync
    }

    /**
     Invokes the AddRoleToDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddRoleToDBClusterMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBClusterNotFound, dBClusterRoleAlreadyExists, dBClusterRoleQuotaExceeded, invalidDBClusterState.
     */
    public func addRoleToDBClusterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.AddRoleToDBClusterMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let addRoleToDBClusterAsyncOverrideNonOptional = addRoleToDBClusterAsyncOverride {
            if let addRoleToDBClusterAsyncOverrideTyped = addRoleToDBClusterAsyncOverrideNonOptional
                    as? AddRoleToDBClusterAsyncType<InvocationReportingType> {
                return try addRoleToDBClusterAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the AddRoleToDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddRoleToDBClusterMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBClusterRoleAlreadyExists, dBClusterRoleQuotaExceeded, invalidDBClusterState.
     */
    public func addRoleToDBClusterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.AddRoleToDBClusterMessage,
            reporting: InvocationReportingType) throws {
        if let addRoleToDBClusterSyncOverrideNonOptional = addRoleToDBClusterSyncOverride {
            if let addRoleToDBClusterSyncOverrideTyped = addRoleToDBClusterSyncOverrideNonOptional
                    as? AddRoleToDBClusterSyncType<InvocationReportingType> {
                return try addRoleToDBClusterSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the AddRoleToDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddRoleToDBInstanceMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBInstanceNotFound, dBInstanceRoleAlreadyExists, dBInstanceRoleQuotaExceeded, invalidDBInstanceState.
     */
    public func addRoleToDBInstanceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.AddRoleToDBInstanceMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let addRoleToDBInstanceAsyncOverrideNonOptional = addRoleToDBInstanceAsyncOverride {
            if let addRoleToDBInstanceAsyncOverrideTyped = addRoleToDBInstanceAsyncOverrideNonOptional
                    as? AddRoleToDBInstanceAsyncType<InvocationReportingType> {
                return try addRoleToDBInstanceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the AddRoleToDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddRoleToDBInstanceMessage object being passed to this operation.
     - Throws: dBInstanceNotFound, dBInstanceRoleAlreadyExists, dBInstanceRoleQuotaExceeded, invalidDBInstanceState.
     */
    public func addRoleToDBInstanceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.AddRoleToDBInstanceMessage,
            reporting: InvocationReportingType) throws {
        if let addRoleToDBInstanceSyncOverrideNonOptional = addRoleToDBInstanceSyncOverride {
            if let addRoleToDBInstanceSyncOverrideTyped = addRoleToDBInstanceSyncOverrideNonOptional
                    as? AddRoleToDBInstanceSyncType<InvocationReportingType> {
                return try addRoleToDBInstanceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the AddSourceIdentifierToSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddSourceIdentifierToSubscriptionMessage object being passed to this operation.
         - completion: The AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription object or an error will be passed to this 
           callback when the operation is complete. The AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription
           object will be validated before being returned to caller.
           The possible errors are: sourceNotFound, subscriptionNotFound.
     */
    public func addSourceIdentifierToSubscriptionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.AddSourceIdentifierToSubscriptionMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription, HTTPClientError>) -> ()) throws {
        if let addSourceIdentifierToSubscriptionAsyncOverrideNonOptional = addSourceIdentifierToSubscriptionAsyncOverride {
            if let addSourceIdentifierToSubscriptionAsyncOverrideTyped = addSourceIdentifierToSubscriptionAsyncOverrideNonOptional
                    as? AddSourceIdentifierToSubscriptionAsyncType<InvocationReportingType> {
                return try addSourceIdentifierToSubscriptionAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the AddSourceIdentifierToSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddSourceIdentifierToSubscriptionMessage object being passed to this operation.
     - Returns: The AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: sourceNotFound, subscriptionNotFound.
     */
    public func addSourceIdentifierToSubscriptionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.AddSourceIdentifierToSubscriptionMessage,
            reporting: InvocationReportingType) throws -> RDSModel.AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription {
        if let addSourceIdentifierToSubscriptionSyncOverrideNonOptional = addSourceIdentifierToSubscriptionSyncOverride {
            if let addSourceIdentifierToSubscriptionSyncOverrideTyped = addSourceIdentifierToSubscriptionSyncOverrideNonOptional
                    as? AddSourceIdentifierToSubscriptionSyncType<InvocationReportingType> {
                return try addSourceIdentifierToSubscriptionSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the AddTagsToResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddTagsToResourceMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    public func addTagsToResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.AddTagsToResourceMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let addTagsToResourceAsyncOverrideNonOptional = addTagsToResourceAsyncOverride {
            if let addTagsToResourceAsyncOverrideTyped = addTagsToResourceAsyncOverrideNonOptional
                    as? AddTagsToResourceAsyncType<InvocationReportingType> {
                return try addTagsToResourceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the AddTagsToResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddTagsToResourceMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    public func addTagsToResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.AddTagsToResourceMessage,
            reporting: InvocationReportingType) throws {
        if let addTagsToResourceSyncOverrideNonOptional = addTagsToResourceSyncOverride {
            if let addTagsToResourceSyncOverrideTyped = addTagsToResourceSyncOverrideNonOptional
                    as? AddTagsToResourceSyncType<InvocationReportingType> {
                return try addTagsToResourceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ApplyPendingMaintenanceAction operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ApplyPendingMaintenanceActionMessage object being passed to this operation.
         - completion: The ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction object or an error will be passed to this 
           callback when the operation is complete. The ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction
           object will be validated before being returned to caller.
           The possible errors are: invalidDBClusterState, invalidDBInstanceState, resourceNotFound.
     */
    public func applyPendingMaintenanceActionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ApplyPendingMaintenanceActionMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction, HTTPClientError>) -> ()) throws {
        if let applyPendingMaintenanceActionAsyncOverrideNonOptional = applyPendingMaintenanceActionAsyncOverride {
            if let applyPendingMaintenanceActionAsyncOverrideTyped = applyPendingMaintenanceActionAsyncOverrideNonOptional
                    as? ApplyPendingMaintenanceActionAsyncType<InvocationReportingType> {
                return try applyPendingMaintenanceActionAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ApplyPendingMaintenanceAction operation waiting for the response before returning.

     - Parameters:
         - input: The validated ApplyPendingMaintenanceActionMessage object being passed to this operation.
     - Returns: The ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidDBClusterState, invalidDBInstanceState, resourceNotFound.
     */
    public func applyPendingMaintenanceActionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ApplyPendingMaintenanceActionMessage,
            reporting: InvocationReportingType) throws -> RDSModel.ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction {
        if let applyPendingMaintenanceActionSyncOverrideNonOptional = applyPendingMaintenanceActionSyncOverride {
            if let applyPendingMaintenanceActionSyncOverrideTyped = applyPendingMaintenanceActionSyncOverrideNonOptional
                    as? ApplyPendingMaintenanceActionSyncType<InvocationReportingType> {
                return try applyPendingMaintenanceActionSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the AuthorizeDBSecurityGroupIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AuthorizeDBSecurityGroupIngressMessage object being passed to this operation.
         - completion: The AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress object or an error will be passed to this 
           callback when the operation is complete. The AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress
           object will be validated before being returned to caller.
           The possible errors are: authorizationAlreadyExists, authorizationQuotaExceeded, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    public func authorizeDBSecurityGroupIngressAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.AuthorizeDBSecurityGroupIngressMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress, HTTPClientError>) -> ()) throws {
        if let authorizeDBSecurityGroupIngressAsyncOverrideNonOptional = authorizeDBSecurityGroupIngressAsyncOverride {
            if let authorizeDBSecurityGroupIngressAsyncOverrideTyped = authorizeDBSecurityGroupIngressAsyncOverrideNonOptional
                    as? AuthorizeDBSecurityGroupIngressAsyncType<InvocationReportingType> {
                return try authorizeDBSecurityGroupIngressAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the AuthorizeDBSecurityGroupIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated AuthorizeDBSecurityGroupIngressMessage object being passed to this operation.
     - Returns: The AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationAlreadyExists, authorizationQuotaExceeded, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    public func authorizeDBSecurityGroupIngressSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.AuthorizeDBSecurityGroupIngressMessage,
            reporting: InvocationReportingType) throws -> RDSModel.AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress {
        if let authorizeDBSecurityGroupIngressSyncOverrideNonOptional = authorizeDBSecurityGroupIngressSyncOverride {
            if let authorizeDBSecurityGroupIngressSyncOverrideTyped = authorizeDBSecurityGroupIngressSyncOverrideNonOptional
                    as? AuthorizeDBSecurityGroupIngressSyncType<InvocationReportingType> {
                return try authorizeDBSecurityGroupIngressSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the BacktrackDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BacktrackDBClusterMessage object being passed to this operation.
         - completion: The DBClusterBacktrackForBacktrackDBCluster object or an error will be passed to this 
           callback when the operation is complete. The DBClusterBacktrackForBacktrackDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState.
     */
    public func backtrackDBClusterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.BacktrackDBClusterMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBClusterBacktrackForBacktrackDBCluster, HTTPClientError>) -> ()) throws {
        if let backtrackDBClusterAsyncOverrideNonOptional = backtrackDBClusterAsyncOverride {
            if let backtrackDBClusterAsyncOverrideTyped = backtrackDBClusterAsyncOverrideNonOptional
                    as? BacktrackDBClusterAsyncType<InvocationReportingType> {
                return try backtrackDBClusterAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the BacktrackDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated BacktrackDBClusterMessage object being passed to this operation.
     - Returns: The DBClusterBacktrackForBacktrackDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState.
     */
    public func backtrackDBClusterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.BacktrackDBClusterMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBClusterBacktrackForBacktrackDBCluster {
        if let backtrackDBClusterSyncOverrideNonOptional = backtrackDBClusterSyncOverride {
            if let backtrackDBClusterSyncOverrideTyped = backtrackDBClusterSyncOverrideNonOptional
                    as? BacktrackDBClusterSyncType<InvocationReportingType> {
                return try backtrackDBClusterSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the CancelExportTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelExportTaskMessage object being passed to this operation.
         - completion: The ExportTaskForCancelExportTask object or an error will be passed to this 
           callback when the operation is complete. The ExportTaskForCancelExportTask
           object will be validated before being returned to caller.
           The possible errors are: exportTaskNotFound, invalidExportTaskState.
     */
    public func cancelExportTaskAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CancelExportTaskMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ExportTaskForCancelExportTask, HTTPClientError>) -> ()) throws {
        if let cancelExportTaskAsyncOverrideNonOptional = cancelExportTaskAsyncOverride {
            if let cancelExportTaskAsyncOverrideTyped = cancelExportTaskAsyncOverrideNonOptional
                    as? CancelExportTaskAsyncType<InvocationReportingType> {
                return try cancelExportTaskAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the CancelExportTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelExportTaskMessage object being passed to this operation.
     - Returns: The ExportTaskForCancelExportTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: exportTaskNotFound, invalidExportTaskState.
     */
    public func cancelExportTaskSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CancelExportTaskMessage,
            reporting: InvocationReportingType) throws -> RDSModel.ExportTaskForCancelExportTask {
        if let cancelExportTaskSyncOverrideNonOptional = cancelExportTaskSyncOverride {
            if let cancelExportTaskSyncOverrideTyped = cancelExportTaskSyncOverrideNonOptional
                    as? CancelExportTaskSyncType<InvocationReportingType> {
                return try cancelExportTaskSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the CopyDBClusterParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyDBClusterParameterGroupMessage object being passed to this operation.
         - completion: The CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    public func copyDBClusterParameterGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CopyDBClusterParameterGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup, HTTPClientError>) -> ()) throws {
        if let copyDBClusterParameterGroupAsyncOverrideNonOptional = copyDBClusterParameterGroupAsyncOverride {
            if let copyDBClusterParameterGroupAsyncOverrideTyped = copyDBClusterParameterGroupAsyncOverrideNonOptional
                    as? CopyDBClusterParameterGroupAsyncType<InvocationReportingType> {
                return try copyDBClusterParameterGroupAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the CopyDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    public func copyDBClusterParameterGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CopyDBClusterParameterGroupMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup {
        if let copyDBClusterParameterGroupSyncOverrideNonOptional = copyDBClusterParameterGroupSyncOverride {
            if let copyDBClusterParameterGroupSyncOverrideTyped = copyDBClusterParameterGroupSyncOverrideNonOptional
                    as? CopyDBClusterParameterGroupSyncType<InvocationReportingType> {
                return try copyDBClusterParameterGroupSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the CopyDBClusterSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyDBClusterSnapshotMessage object being passed to this operation.
         - completion: The CopyDBClusterSnapshotResultForCopyDBClusterSnapshot object or an error will be passed to this 
           callback when the operation is complete. The CopyDBClusterSnapshotResultForCopyDBClusterSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotAlreadyExists, dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, invalidDBClusterState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    public func copyDBClusterSnapshotAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CopyDBClusterSnapshotMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CopyDBClusterSnapshotResultForCopyDBClusterSnapshot, HTTPClientError>) -> ()) throws {
        if let copyDBClusterSnapshotAsyncOverrideNonOptional = copyDBClusterSnapshotAsyncOverride {
            if let copyDBClusterSnapshotAsyncOverrideTyped = copyDBClusterSnapshotAsyncOverrideNonOptional
                    as? CopyDBClusterSnapshotAsyncType<InvocationReportingType> {
                return try copyDBClusterSnapshotAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the CopyDBClusterSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyDBClusterSnapshotMessage object being passed to this operation.
     - Returns: The CopyDBClusterSnapshotResultForCopyDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotAlreadyExists, dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, invalidDBClusterState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    public func copyDBClusterSnapshotSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CopyDBClusterSnapshotMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CopyDBClusterSnapshotResultForCopyDBClusterSnapshot {
        if let copyDBClusterSnapshotSyncOverrideNonOptional = copyDBClusterSnapshotSyncOverride {
            if let copyDBClusterSnapshotSyncOverrideTyped = copyDBClusterSnapshotSyncOverrideNonOptional
                    as? CopyDBClusterSnapshotSyncType<InvocationReportingType> {
                return try copyDBClusterSnapshotSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the CopyDBParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyDBParameterGroupMessage object being passed to this operation.
         - completion: The CopyDBParameterGroupResultForCopyDBParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The CopyDBParameterGroupResultForCopyDBParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    public func copyDBParameterGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CopyDBParameterGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CopyDBParameterGroupResultForCopyDBParameterGroup, HTTPClientError>) -> ()) throws {
        if let copyDBParameterGroupAsyncOverrideNonOptional = copyDBParameterGroupAsyncOverride {
            if let copyDBParameterGroupAsyncOverrideTyped = copyDBParameterGroupAsyncOverrideNonOptional
                    as? CopyDBParameterGroupAsyncType<InvocationReportingType> {
                return try copyDBParameterGroupAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the CopyDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyDBParameterGroupMessage object being passed to this operation.
     - Returns: The CopyDBParameterGroupResultForCopyDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    public func copyDBParameterGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CopyDBParameterGroupMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CopyDBParameterGroupResultForCopyDBParameterGroup {
        if let copyDBParameterGroupSyncOverrideNonOptional = copyDBParameterGroupSyncOverride {
            if let copyDBParameterGroupSyncOverrideTyped = copyDBParameterGroupSyncOverrideNonOptional
                    as? CopyDBParameterGroupSyncType<InvocationReportingType> {
                return try copyDBParameterGroupSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the CopyDBSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyDBSnapshotMessage object being passed to this operation.
         - completion: The CopyDBSnapshotResultForCopyDBSnapshot object or an error will be passed to this 
           callback when the operation is complete. The CopyDBSnapshotResultForCopyDBSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBSnapshotAlreadyExists, dBSnapshotNotFound, invalidDBSnapshotState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    public func copyDBSnapshotAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CopyDBSnapshotMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CopyDBSnapshotResultForCopyDBSnapshot, HTTPClientError>) -> ()) throws {
        if let copyDBSnapshotAsyncOverrideNonOptional = copyDBSnapshotAsyncOverride {
            if let copyDBSnapshotAsyncOverrideTyped = copyDBSnapshotAsyncOverrideNonOptional
                    as? CopyDBSnapshotAsyncType<InvocationReportingType> {
                return try copyDBSnapshotAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the CopyDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyDBSnapshotMessage object being passed to this operation.
     - Returns: The CopyDBSnapshotResultForCopyDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotAlreadyExists, dBSnapshotNotFound, invalidDBSnapshotState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    public func copyDBSnapshotSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CopyDBSnapshotMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CopyDBSnapshotResultForCopyDBSnapshot {
        if let copyDBSnapshotSyncOverrideNonOptional = copyDBSnapshotSyncOverride {
            if let copyDBSnapshotSyncOverrideTyped = copyDBSnapshotSyncOverrideNonOptional
                    as? CopyDBSnapshotSyncType<InvocationReportingType> {
                return try copyDBSnapshotSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the CopyOptionGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyOptionGroupMessage object being passed to this operation.
         - completion: The CopyOptionGroupResultForCopyOptionGroup object or an error will be passed to this 
           callback when the operation is complete. The CopyOptionGroupResultForCopyOptionGroup
           object will be validated before being returned to caller.
           The possible errors are: optionGroupAlreadyExists, optionGroupNotFound, optionGroupQuotaExceeded.
     */
    public func copyOptionGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CopyOptionGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CopyOptionGroupResultForCopyOptionGroup, HTTPClientError>) -> ()) throws {
        if let copyOptionGroupAsyncOverrideNonOptional = copyOptionGroupAsyncOverride {
            if let copyOptionGroupAsyncOverrideTyped = copyOptionGroupAsyncOverrideNonOptional
                    as? CopyOptionGroupAsyncType<InvocationReportingType> {
                return try copyOptionGroupAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the CopyOptionGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyOptionGroupMessage object being passed to this operation.
     - Returns: The CopyOptionGroupResultForCopyOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: optionGroupAlreadyExists, optionGroupNotFound, optionGroupQuotaExceeded.
     */
    public func copyOptionGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CopyOptionGroupMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CopyOptionGroupResultForCopyOptionGroup {
        if let copyOptionGroupSyncOverrideNonOptional = copyOptionGroupSyncOverride {
            if let copyOptionGroupSyncOverrideTyped = copyOptionGroupSyncOverrideNonOptional
                    as? CopyOptionGroupSyncType<InvocationReportingType> {
                return try copyOptionGroupSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the CreateCustomAvailabilityZone operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateCustomAvailabilityZoneMessage object being passed to this operation.
         - completion: The CreateCustomAvailabilityZoneResultForCreateCustomAvailabilityZone object or an error will be passed to this 
           callback when the operation is complete. The CreateCustomAvailabilityZoneResultForCreateCustomAvailabilityZone
           object will be validated before being returned to caller.
           The possible errors are: customAvailabilityZoneAlreadyExists, customAvailabilityZoneQuotaExceeded, kMSKeyNotAccessible.
     */
    public func createCustomAvailabilityZoneAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateCustomAvailabilityZoneMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CreateCustomAvailabilityZoneResultForCreateCustomAvailabilityZone, HTTPClientError>) -> ()) throws {
        if let createCustomAvailabilityZoneAsyncOverrideNonOptional = createCustomAvailabilityZoneAsyncOverride {
            if let createCustomAvailabilityZoneAsyncOverrideTyped = createCustomAvailabilityZoneAsyncOverrideNonOptional
                    as? CreateCustomAvailabilityZoneAsyncType<InvocationReportingType> {
                return try createCustomAvailabilityZoneAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateCustomAvailabilityZone operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateCustomAvailabilityZoneMessage object being passed to this operation.
     - Returns: The CreateCustomAvailabilityZoneResultForCreateCustomAvailabilityZone object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: customAvailabilityZoneAlreadyExists, customAvailabilityZoneQuotaExceeded, kMSKeyNotAccessible.
     */
    public func createCustomAvailabilityZoneSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateCustomAvailabilityZoneMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CreateCustomAvailabilityZoneResultForCreateCustomAvailabilityZone {
        if let createCustomAvailabilityZoneSyncOverrideNonOptional = createCustomAvailabilityZoneSyncOverride {
            if let createCustomAvailabilityZoneSyncOverrideTyped = createCustomAvailabilityZoneSyncOverrideNonOptional
                    as? CreateCustomAvailabilityZoneSyncType<InvocationReportingType> {
                return try createCustomAvailabilityZoneSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the CreateDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBClusterMessage object being passed to this operation.
         - completion: The CreateDBClusterResultForCreateDBCluster object or an error will be passed to this 
           callback when the operation is complete. The CreateDBClusterResultForCreateDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, globalClusterNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBInstanceState, invalidDBSubnetGroupState, invalidGlobalClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    public func createDBClusterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBClusterMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CreateDBClusterResultForCreateDBCluster, HTTPClientError>) -> ()) throws {
        if let createDBClusterAsyncOverrideNonOptional = createDBClusterAsyncOverride {
            if let createDBClusterAsyncOverrideTyped = createDBClusterAsyncOverrideNonOptional
                    as? CreateDBClusterAsyncType<InvocationReportingType> {
                return try createDBClusterAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBClusterMessage object being passed to this operation.
     - Returns: The CreateDBClusterResultForCreateDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, globalClusterNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBInstanceState, invalidDBSubnetGroupState, invalidGlobalClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    public func createDBClusterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBClusterMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CreateDBClusterResultForCreateDBCluster {
        if let createDBClusterSyncOverrideNonOptional = createDBClusterSyncOverride {
            if let createDBClusterSyncOverrideTyped = createDBClusterSyncOverrideNonOptional
                    as? CreateDBClusterSyncType<InvocationReportingType> {
                return try createDBClusterSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the CreateDBClusterEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBClusterEndpointMessage object being passed to this operation.
         - completion: The DBClusterEndpointForCreateDBClusterEndpoint object or an error will be passed to this 
           callback when the operation is complete. The DBClusterEndpointForCreateDBClusterEndpoint
           object will be validated before being returned to caller.
           The possible errors are: dBClusterEndpointAlreadyExists, dBClusterEndpointQuotaExceeded, dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func createDBClusterEndpointAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBClusterEndpointMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBClusterEndpointForCreateDBClusterEndpoint, HTTPClientError>) -> ()) throws {
        if let createDBClusterEndpointAsyncOverrideNonOptional = createDBClusterEndpointAsyncOverride {
            if let createDBClusterEndpointAsyncOverrideTyped = createDBClusterEndpointAsyncOverrideNonOptional
                    as? CreateDBClusterEndpointAsyncType<InvocationReportingType> {
                return try createDBClusterEndpointAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateDBClusterEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBClusterEndpointMessage object being passed to this operation.
     - Returns: The DBClusterEndpointForCreateDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterEndpointAlreadyExists, dBClusterEndpointQuotaExceeded, dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func createDBClusterEndpointSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBClusterEndpointMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBClusterEndpointForCreateDBClusterEndpoint {
        if let createDBClusterEndpointSyncOverrideNonOptional = createDBClusterEndpointSyncOverride {
            if let createDBClusterEndpointSyncOverrideTyped = createDBClusterEndpointSyncOverrideNonOptional
                    as? CreateDBClusterEndpointSyncType<InvocationReportingType> {
                return try createDBClusterEndpointSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the CreateDBClusterParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBClusterParameterGroupMessage object being passed to this operation.
         - completion: The CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    public func createDBClusterParameterGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBClusterParameterGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup, HTTPClientError>) -> ()) throws {
        if let createDBClusterParameterGroupAsyncOverrideNonOptional = createDBClusterParameterGroupAsyncOverride {
            if let createDBClusterParameterGroupAsyncOverrideTyped = createDBClusterParameterGroupAsyncOverrideNonOptional
                    as? CreateDBClusterParameterGroupAsyncType<InvocationReportingType> {
                return try createDBClusterParameterGroupAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    public func createDBClusterParameterGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBClusterParameterGroupMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup {
        if let createDBClusterParameterGroupSyncOverrideNonOptional = createDBClusterParameterGroupSyncOverride {
            if let createDBClusterParameterGroupSyncOverrideTyped = createDBClusterParameterGroupSyncOverrideNonOptional
                    as? CreateDBClusterParameterGroupSyncType<InvocationReportingType> {
                return try createDBClusterParameterGroupSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the CreateDBClusterSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBClusterSnapshotMessage object being passed to this operation.
         - completion: The CreateDBClusterSnapshotResultForCreateDBClusterSnapshot object or an error will be passed to this 
           callback when the operation is complete. The CreateDBClusterSnapshotResultForCreateDBClusterSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    public func createDBClusterSnapshotAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBClusterSnapshotMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CreateDBClusterSnapshotResultForCreateDBClusterSnapshot, HTTPClientError>) -> ()) throws {
        if let createDBClusterSnapshotAsyncOverrideNonOptional = createDBClusterSnapshotAsyncOverride {
            if let createDBClusterSnapshotAsyncOverrideTyped = createDBClusterSnapshotAsyncOverrideNonOptional
                    as? CreateDBClusterSnapshotAsyncType<InvocationReportingType> {
                return try createDBClusterSnapshotAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateDBClusterSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBClusterSnapshotMessage object being passed to this operation.
     - Returns: The CreateDBClusterSnapshotResultForCreateDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    public func createDBClusterSnapshotSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBClusterSnapshotMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CreateDBClusterSnapshotResultForCreateDBClusterSnapshot {
        if let createDBClusterSnapshotSyncOverrideNonOptional = createDBClusterSnapshotSyncOverride {
            if let createDBClusterSnapshotSyncOverrideTyped = createDBClusterSnapshotSyncOverrideNonOptional
                    as? CreateDBClusterSnapshotSyncType<InvocationReportingType> {
                return try createDBClusterSnapshotSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the CreateDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBInstanceMessage object being passed to this operation.
         - completion: The CreateDBInstanceResultForCreateDBInstance object or an error will be passed to this 
           callback when the operation is complete. The CreateDBInstanceResultForCreateDBInstance
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBClusterNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func createDBInstanceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBInstanceMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CreateDBInstanceResultForCreateDBInstance, HTTPClientError>) -> ()) throws {
        if let createDBInstanceAsyncOverrideNonOptional = createDBInstanceAsyncOverride {
            if let createDBInstanceAsyncOverrideTyped = createDBInstanceAsyncOverrideNonOptional
                    as? CreateDBInstanceAsyncType<InvocationReportingType> {
                return try createDBInstanceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBInstanceMessage object being passed to this operation.
     - Returns: The CreateDBInstanceResultForCreateDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBClusterNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func createDBInstanceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBInstanceMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CreateDBInstanceResultForCreateDBInstance {
        if let createDBInstanceSyncOverrideNonOptional = createDBInstanceSyncOverride {
            if let createDBInstanceSyncOverrideTyped = createDBInstanceSyncOverrideNonOptional
                    as? CreateDBInstanceSyncType<InvocationReportingType> {
                return try createDBInstanceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the CreateDBInstanceReadReplica operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBInstanceReadReplicaMessage object being passed to this operation.
         - completion: The CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica object or an error will be passed to this 
           callback when the operation is complete. The CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotAllowed, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSubnetGroup, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func createDBInstanceReadReplicaAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBInstanceReadReplicaMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica, HTTPClientError>) -> ()) throws {
        if let createDBInstanceReadReplicaAsyncOverrideNonOptional = createDBInstanceReadReplicaAsyncOverride {
            if let createDBInstanceReadReplicaAsyncOverrideTyped = createDBInstanceReadReplicaAsyncOverrideNonOptional
                    as? CreateDBInstanceReadReplicaAsyncType<InvocationReportingType> {
                return try createDBInstanceReadReplicaAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateDBInstanceReadReplica operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBInstanceReadReplicaMessage object being passed to this operation.
     - Returns: The CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotAllowed, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSubnetGroup, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func createDBInstanceReadReplicaSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBInstanceReadReplicaMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica {
        if let createDBInstanceReadReplicaSyncOverrideNonOptional = createDBInstanceReadReplicaSyncOverride {
            if let createDBInstanceReadReplicaSyncOverrideTyped = createDBInstanceReadReplicaSyncOverrideNonOptional
                    as? CreateDBInstanceReadReplicaSyncType<InvocationReportingType> {
                return try createDBInstanceReadReplicaSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the CreateDBParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBParameterGroupMessage object being passed to this operation.
         - completion: The CreateDBParameterGroupResultForCreateDBParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The CreateDBParameterGroupResultForCreateDBParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    public func createDBParameterGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBParameterGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CreateDBParameterGroupResultForCreateDBParameterGroup, HTTPClientError>) -> ()) throws {
        if let createDBParameterGroupAsyncOverrideNonOptional = createDBParameterGroupAsyncOverride {
            if let createDBParameterGroupAsyncOverrideTyped = createDBParameterGroupAsyncOverrideNonOptional
                    as? CreateDBParameterGroupAsyncType<InvocationReportingType> {
                return try createDBParameterGroupAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBParameterGroupMessage object being passed to this operation.
     - Returns: The CreateDBParameterGroupResultForCreateDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    public func createDBParameterGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBParameterGroupMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CreateDBParameterGroupResultForCreateDBParameterGroup {
        if let createDBParameterGroupSyncOverrideNonOptional = createDBParameterGroupSyncOverride {
            if let createDBParameterGroupSyncOverrideTyped = createDBParameterGroupSyncOverrideNonOptional
                    as? CreateDBParameterGroupSyncType<InvocationReportingType> {
                return try createDBParameterGroupSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the CreateDBProxy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBProxyRequest object being passed to this operation.
         - completion: The CreateDBProxyResponseForCreateDBProxy object or an error will be passed to this 
           callback when the operation is complete. The CreateDBProxyResponseForCreateDBProxy
           object will be validated before being returned to caller.
           The possible errors are: dBProxyAlreadyExists, dBProxyQuotaExceeded, invalidSubnet.
     */
    public func createDBProxyAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBProxyRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CreateDBProxyResponseForCreateDBProxy, HTTPClientError>) -> ()) throws {
        if let createDBProxyAsyncOverrideNonOptional = createDBProxyAsyncOverride {
            if let createDBProxyAsyncOverrideTyped = createDBProxyAsyncOverrideNonOptional
                    as? CreateDBProxyAsyncType<InvocationReportingType> {
                return try createDBProxyAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateDBProxy operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBProxyRequest object being passed to this operation.
     - Returns: The CreateDBProxyResponseForCreateDBProxy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyAlreadyExists, dBProxyQuotaExceeded, invalidSubnet.
     */
    public func createDBProxySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBProxyRequest,
            reporting: InvocationReportingType) throws -> RDSModel.CreateDBProxyResponseForCreateDBProxy {
        if let createDBProxySyncOverrideNonOptional = createDBProxySyncOverride {
            if let createDBProxySyncOverrideTyped = createDBProxySyncOverrideNonOptional
                    as? CreateDBProxySyncType<InvocationReportingType> {
                return try createDBProxySyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the CreateDBSecurityGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBSecurityGroupMessage object being passed to this operation.
         - completion: The CreateDBSecurityGroupResultForCreateDBSecurityGroup object or an error will be passed to this 
           callback when the operation is complete. The CreateDBSecurityGroupResultForCreateDBSecurityGroup
           object will be validated before being returned to caller.
           The possible errors are: dBSecurityGroupAlreadyExists, dBSecurityGroupNotSupported, dBSecurityGroupQuotaExceeded.
     */
    public func createDBSecurityGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBSecurityGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CreateDBSecurityGroupResultForCreateDBSecurityGroup, HTTPClientError>) -> ()) throws {
        if let createDBSecurityGroupAsyncOverrideNonOptional = createDBSecurityGroupAsyncOverride {
            if let createDBSecurityGroupAsyncOverrideTyped = createDBSecurityGroupAsyncOverrideNonOptional
                    as? CreateDBSecurityGroupAsyncType<InvocationReportingType> {
                return try createDBSecurityGroupAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateDBSecurityGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBSecurityGroupMessage object being passed to this operation.
     - Returns: The CreateDBSecurityGroupResultForCreateDBSecurityGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSecurityGroupAlreadyExists, dBSecurityGroupNotSupported, dBSecurityGroupQuotaExceeded.
     */
    public func createDBSecurityGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBSecurityGroupMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CreateDBSecurityGroupResultForCreateDBSecurityGroup {
        if let createDBSecurityGroupSyncOverrideNonOptional = createDBSecurityGroupSyncOverride {
            if let createDBSecurityGroupSyncOverrideTyped = createDBSecurityGroupSyncOverrideNonOptional
                    as? CreateDBSecurityGroupSyncType<InvocationReportingType> {
                return try createDBSecurityGroupSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the CreateDBSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBSnapshotMessage object being passed to this operation.
         - completion: The CreateDBSnapshotResultForCreateDBSnapshot object or an error will be passed to this 
           callback when the operation is complete. The CreateDBSnapshotResultForCreateDBSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    public func createDBSnapshotAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBSnapshotMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CreateDBSnapshotResultForCreateDBSnapshot, HTTPClientError>) -> ()) throws {
        if let createDBSnapshotAsyncOverrideNonOptional = createDBSnapshotAsyncOverride {
            if let createDBSnapshotAsyncOverrideTyped = createDBSnapshotAsyncOverrideNonOptional
                    as? CreateDBSnapshotAsyncType<InvocationReportingType> {
                return try createDBSnapshotAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBSnapshotMessage object being passed to this operation.
     - Returns: The CreateDBSnapshotResultForCreateDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    public func createDBSnapshotSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBSnapshotMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CreateDBSnapshotResultForCreateDBSnapshot {
        if let createDBSnapshotSyncOverrideNonOptional = createDBSnapshotSyncOverride {
            if let createDBSnapshotSyncOverrideTyped = createDBSnapshotSyncOverrideNonOptional
                    as? CreateDBSnapshotSyncType<InvocationReportingType> {
                return try createDBSnapshotSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the CreateDBSubnetGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBSubnetGroupMessage object being passed to this operation.
         - completion: The CreateDBSubnetGroupResultForCreateDBSubnetGroup object or an error will be passed to this 
           callback when the operation is complete. The CreateDBSubnetGroupResultForCreateDBSubnetGroup
           object will be validated before being returned to caller.
           The possible errors are: dBSubnetGroupAlreadyExists, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupQuotaExceeded, dBSubnetQuotaExceeded, invalidSubnet.
     */
    public func createDBSubnetGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBSubnetGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CreateDBSubnetGroupResultForCreateDBSubnetGroup, HTTPClientError>) -> ()) throws {
        if let createDBSubnetGroupAsyncOverrideNonOptional = createDBSubnetGroupAsyncOverride {
            if let createDBSubnetGroupAsyncOverrideTyped = createDBSubnetGroupAsyncOverrideNonOptional
                    as? CreateDBSubnetGroupAsyncType<InvocationReportingType> {
                return try createDBSubnetGroupAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateDBSubnetGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBSubnetGroupMessage object being passed to this operation.
     - Returns: The CreateDBSubnetGroupResultForCreateDBSubnetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSubnetGroupAlreadyExists, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupQuotaExceeded, dBSubnetQuotaExceeded, invalidSubnet.
     */
    public func createDBSubnetGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBSubnetGroupMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CreateDBSubnetGroupResultForCreateDBSubnetGroup {
        if let createDBSubnetGroupSyncOverrideNonOptional = createDBSubnetGroupSyncOverride {
            if let createDBSubnetGroupSyncOverrideTyped = createDBSubnetGroupSyncOverrideNonOptional
                    as? CreateDBSubnetGroupSyncType<InvocationReportingType> {
                return try createDBSubnetGroupSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the CreateEventSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateEventSubscriptionMessage object being passed to this operation.
         - completion: The CreateEventSubscriptionResultForCreateEventSubscription object or an error will be passed to this 
           callback when the operation is complete. The CreateEventSubscriptionResultForCreateEventSubscription
           object will be validated before being returned to caller.
           The possible errors are: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, sourceNotFound, subscriptionAlreadyExist, subscriptionCategoryNotFound.
     */
    public func createEventSubscriptionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateEventSubscriptionMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CreateEventSubscriptionResultForCreateEventSubscription, HTTPClientError>) -> ()) throws {
        if let createEventSubscriptionAsyncOverrideNonOptional = createEventSubscriptionAsyncOverride {
            if let createEventSubscriptionAsyncOverrideTyped = createEventSubscriptionAsyncOverrideNonOptional
                    as? CreateEventSubscriptionAsyncType<InvocationReportingType> {
                return try createEventSubscriptionAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateEventSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateEventSubscriptionMessage object being passed to this operation.
     - Returns: The CreateEventSubscriptionResultForCreateEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, sourceNotFound, subscriptionAlreadyExist, subscriptionCategoryNotFound.
     */
    public func createEventSubscriptionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateEventSubscriptionMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CreateEventSubscriptionResultForCreateEventSubscription {
        if let createEventSubscriptionSyncOverrideNonOptional = createEventSubscriptionSyncOverride {
            if let createEventSubscriptionSyncOverrideTyped = createEventSubscriptionSyncOverrideNonOptional
                    as? CreateEventSubscriptionSyncType<InvocationReportingType> {
                return try createEventSubscriptionSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the CreateGlobalCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateGlobalClusterMessage object being passed to this operation.
         - completion: The CreateGlobalClusterResultForCreateGlobalCluster object or an error will be passed to this 
           callback when the operation is complete. The CreateGlobalClusterResultForCreateGlobalCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, globalClusterAlreadyExists, globalClusterQuotaExceeded, invalidDBClusterState.
     */
    public func createGlobalClusterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateGlobalClusterMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CreateGlobalClusterResultForCreateGlobalCluster, HTTPClientError>) -> ()) throws {
        if let createGlobalClusterAsyncOverrideNonOptional = createGlobalClusterAsyncOverride {
            if let createGlobalClusterAsyncOverrideTyped = createGlobalClusterAsyncOverrideNonOptional
                    as? CreateGlobalClusterAsyncType<InvocationReportingType> {
                return try createGlobalClusterAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateGlobalCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateGlobalClusterMessage object being passed to this operation.
     - Returns: The CreateGlobalClusterResultForCreateGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, globalClusterAlreadyExists, globalClusterQuotaExceeded, invalidDBClusterState.
     */
    public func createGlobalClusterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateGlobalClusterMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CreateGlobalClusterResultForCreateGlobalCluster {
        if let createGlobalClusterSyncOverrideNonOptional = createGlobalClusterSyncOverride {
            if let createGlobalClusterSyncOverrideTyped = createGlobalClusterSyncOverrideNonOptional
                    as? CreateGlobalClusterSyncType<InvocationReportingType> {
                return try createGlobalClusterSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the CreateOptionGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateOptionGroupMessage object being passed to this operation.
         - completion: The CreateOptionGroupResultForCreateOptionGroup object or an error will be passed to this 
           callback when the operation is complete. The CreateOptionGroupResultForCreateOptionGroup
           object will be validated before being returned to caller.
           The possible errors are: optionGroupAlreadyExists, optionGroupQuotaExceeded.
     */
    public func createOptionGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateOptionGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CreateOptionGroupResultForCreateOptionGroup, HTTPClientError>) -> ()) throws {
        if let createOptionGroupAsyncOverrideNonOptional = createOptionGroupAsyncOverride {
            if let createOptionGroupAsyncOverrideTyped = createOptionGroupAsyncOverrideNonOptional
                    as? CreateOptionGroupAsyncType<InvocationReportingType> {
                return try createOptionGroupAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateOptionGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateOptionGroupMessage object being passed to this operation.
     - Returns: The CreateOptionGroupResultForCreateOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: optionGroupAlreadyExists, optionGroupQuotaExceeded.
     */
    public func createOptionGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateOptionGroupMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CreateOptionGroupResultForCreateOptionGroup {
        if let createOptionGroupSyncOverrideNonOptional = createOptionGroupSyncOverride {
            if let createOptionGroupSyncOverrideTyped = createOptionGroupSyncOverrideNonOptional
                    as? CreateOptionGroupSyncType<InvocationReportingType> {
                return try createOptionGroupSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DeleteCustomAvailabilityZone operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteCustomAvailabilityZoneMessage object being passed to this operation.
         - completion: The DeleteCustomAvailabilityZoneResultForDeleteCustomAvailabilityZone object or an error will be passed to this 
           callback when the operation is complete. The DeleteCustomAvailabilityZoneResultForDeleteCustomAvailabilityZone
           object will be validated before being returned to caller.
           The possible errors are: customAvailabilityZoneNotFound, kMSKeyNotAccessible.
     */
    public func deleteCustomAvailabilityZoneAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteCustomAvailabilityZoneMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DeleteCustomAvailabilityZoneResultForDeleteCustomAvailabilityZone, HTTPClientError>) -> ()) throws {
        if let deleteCustomAvailabilityZoneAsyncOverrideNonOptional = deleteCustomAvailabilityZoneAsyncOverride {
            if let deleteCustomAvailabilityZoneAsyncOverrideTyped = deleteCustomAvailabilityZoneAsyncOverrideNonOptional
                    as? DeleteCustomAvailabilityZoneAsyncType<InvocationReportingType> {
                return try deleteCustomAvailabilityZoneAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteCustomAvailabilityZone operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteCustomAvailabilityZoneMessage object being passed to this operation.
     - Returns: The DeleteCustomAvailabilityZoneResultForDeleteCustomAvailabilityZone object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: customAvailabilityZoneNotFound, kMSKeyNotAccessible.
     */
    public func deleteCustomAvailabilityZoneSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteCustomAvailabilityZoneMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DeleteCustomAvailabilityZoneResultForDeleteCustomAvailabilityZone {
        if let deleteCustomAvailabilityZoneSyncOverrideNonOptional = deleteCustomAvailabilityZoneSyncOverride {
            if let deleteCustomAvailabilityZoneSyncOverrideTyped = deleteCustomAvailabilityZoneSyncOverrideNonOptional
                    as? DeleteCustomAvailabilityZoneSyncType<InvocationReportingType> {
                return try deleteCustomAvailabilityZoneSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DeleteDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBClusterMessage object being passed to this operation.
         - completion: The DeleteDBClusterResultForDeleteDBCluster object or an error will be passed to this 
           callback when the operation is complete. The DeleteDBClusterResultForDeleteDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    public func deleteDBClusterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBClusterMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DeleteDBClusterResultForDeleteDBCluster, HTTPClientError>) -> ()) throws {
        if let deleteDBClusterAsyncOverrideNonOptional = deleteDBClusterAsyncOverride {
            if let deleteDBClusterAsyncOverrideTyped = deleteDBClusterAsyncOverrideNonOptional
                    as? DeleteDBClusterAsyncType<InvocationReportingType> {
                return try deleteDBClusterAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBClusterMessage object being passed to this operation.
     - Returns: The DeleteDBClusterResultForDeleteDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    public func deleteDBClusterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBClusterMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DeleteDBClusterResultForDeleteDBCluster {
        if let deleteDBClusterSyncOverrideNonOptional = deleteDBClusterSyncOverride {
            if let deleteDBClusterSyncOverrideTyped = deleteDBClusterSyncOverrideNonOptional
                    as? DeleteDBClusterSyncType<InvocationReportingType> {
                return try deleteDBClusterSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DeleteDBClusterEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBClusterEndpointMessage object being passed to this operation.
         - completion: The DBClusterEndpointForDeleteDBClusterEndpoint object or an error will be passed to this 
           callback when the operation is complete. The DBClusterEndpointForDeleteDBClusterEndpoint
           object will be validated before being returned to caller.
           The possible errors are: dBClusterEndpointNotFound, invalidDBClusterEndpointState, invalidDBClusterState.
     */
    public func deleteDBClusterEndpointAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBClusterEndpointMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBClusterEndpointForDeleteDBClusterEndpoint, HTTPClientError>) -> ()) throws {
        if let deleteDBClusterEndpointAsyncOverrideNonOptional = deleteDBClusterEndpointAsyncOverride {
            if let deleteDBClusterEndpointAsyncOverrideTyped = deleteDBClusterEndpointAsyncOverrideNonOptional
                    as? DeleteDBClusterEndpointAsyncType<InvocationReportingType> {
                return try deleteDBClusterEndpointAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteDBClusterEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBClusterEndpointMessage object being passed to this operation.
     - Returns: The DBClusterEndpointForDeleteDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterEndpointNotFound, invalidDBClusterEndpointState, invalidDBClusterState.
     */
    public func deleteDBClusterEndpointSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBClusterEndpointMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBClusterEndpointForDeleteDBClusterEndpoint {
        if let deleteDBClusterEndpointSyncOverrideNonOptional = deleteDBClusterEndpointSyncOverride {
            if let deleteDBClusterEndpointSyncOverrideTyped = deleteDBClusterEndpointSyncOverrideNonOptional
                    as? DeleteDBClusterEndpointSyncType<InvocationReportingType> {
                return try deleteDBClusterEndpointSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DeleteDBClusterParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBClusterParameterGroupMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func deleteDBClusterParameterGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBClusterParameterGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteDBClusterParameterGroupAsyncOverrideNonOptional = deleteDBClusterParameterGroupAsyncOverride {
            if let deleteDBClusterParameterGroupAsyncOverrideTyped = deleteDBClusterParameterGroupAsyncOverrideNonOptional
                    as? DeleteDBClusterParameterGroupAsyncType<InvocationReportingType> {
                return try deleteDBClusterParameterGroupAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the DeleteDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBClusterParameterGroupMessage object being passed to this operation.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func deleteDBClusterParameterGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBClusterParameterGroupMessage,
            reporting: InvocationReportingType) throws {
        if let deleteDBClusterParameterGroupSyncOverrideNonOptional = deleteDBClusterParameterGroupSyncOverride {
            if let deleteDBClusterParameterGroupSyncOverrideTyped = deleteDBClusterParameterGroupSyncOverrideNonOptional
                    as? DeleteDBClusterParameterGroupSyncType<InvocationReportingType> {
                return try deleteDBClusterParameterGroupSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DeleteDBClusterSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBClusterSnapshotMessage object being passed to this operation.
         - completion: The DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot object or an error will be passed to this 
           callback when the operation is complete. The DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState.
     */
    public func deleteDBClusterSnapshotAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBClusterSnapshotMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot, HTTPClientError>) -> ()) throws {
        if let deleteDBClusterSnapshotAsyncOverrideNonOptional = deleteDBClusterSnapshotAsyncOverride {
            if let deleteDBClusterSnapshotAsyncOverrideTyped = deleteDBClusterSnapshotAsyncOverrideNonOptional
                    as? DeleteDBClusterSnapshotAsyncType<InvocationReportingType> {
                return try deleteDBClusterSnapshotAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteDBClusterSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBClusterSnapshotMessage object being passed to this operation.
     - Returns: The DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState.
     */
    public func deleteDBClusterSnapshotSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBClusterSnapshotMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot {
        if let deleteDBClusterSnapshotSyncOverrideNonOptional = deleteDBClusterSnapshotSyncOverride {
            if let deleteDBClusterSnapshotSyncOverrideTyped = deleteDBClusterSnapshotSyncOverrideNonOptional
                    as? DeleteDBClusterSnapshotSyncType<InvocationReportingType> {
                return try deleteDBClusterSnapshotSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DeleteDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBInstanceMessage object being passed to this operation.
         - completion: The DeleteDBInstanceResultForDeleteDBInstance object or an error will be passed to this 
           callback when the operation is complete. The DeleteDBInstanceResultForDeleteDBInstance
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceAutomatedBackupQuotaExceeded, dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    public func deleteDBInstanceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBInstanceMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DeleteDBInstanceResultForDeleteDBInstance, HTTPClientError>) -> ()) throws {
        if let deleteDBInstanceAsyncOverrideNonOptional = deleteDBInstanceAsyncOverride {
            if let deleteDBInstanceAsyncOverrideTyped = deleteDBInstanceAsyncOverrideNonOptional
                    as? DeleteDBInstanceAsyncType<InvocationReportingType> {
                return try deleteDBInstanceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBInstanceMessage object being passed to this operation.
     - Returns: The DeleteDBInstanceResultForDeleteDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupQuotaExceeded, dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    public func deleteDBInstanceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBInstanceMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DeleteDBInstanceResultForDeleteDBInstance {
        if let deleteDBInstanceSyncOverrideNonOptional = deleteDBInstanceSyncOverride {
            if let deleteDBInstanceSyncOverrideTyped = deleteDBInstanceSyncOverrideNonOptional
                    as? DeleteDBInstanceSyncType<InvocationReportingType> {
                return try deleteDBInstanceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DeleteDBInstanceAutomatedBackup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBInstanceAutomatedBackupMessage object being passed to this operation.
         - completion: The DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup object or an error will be passed to this 
           callback when the operation is complete. The DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceAutomatedBackupNotFound, invalidDBInstanceAutomatedBackupState.
     */
    public func deleteDBInstanceAutomatedBackupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBInstanceAutomatedBackupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup, HTTPClientError>) -> ()) throws {
        if let deleteDBInstanceAutomatedBackupAsyncOverrideNonOptional = deleteDBInstanceAutomatedBackupAsyncOverride {
            if let deleteDBInstanceAutomatedBackupAsyncOverrideTyped = deleteDBInstanceAutomatedBackupAsyncOverrideNonOptional
                    as? DeleteDBInstanceAutomatedBackupAsyncType<InvocationReportingType> {
                return try deleteDBInstanceAutomatedBackupAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteDBInstanceAutomatedBackup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBInstanceAutomatedBackupMessage object being passed to this operation.
     - Returns: The DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupNotFound, invalidDBInstanceAutomatedBackupState.
     */
    public func deleteDBInstanceAutomatedBackupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBInstanceAutomatedBackupMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup {
        if let deleteDBInstanceAutomatedBackupSyncOverrideNonOptional = deleteDBInstanceAutomatedBackupSyncOverride {
            if let deleteDBInstanceAutomatedBackupSyncOverrideTyped = deleteDBInstanceAutomatedBackupSyncOverrideNonOptional
                    as? DeleteDBInstanceAutomatedBackupSyncType<InvocationReportingType> {
                return try deleteDBInstanceAutomatedBackupSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DeleteDBParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBParameterGroupMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func deleteDBParameterGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBParameterGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteDBParameterGroupAsyncOverrideNonOptional = deleteDBParameterGroupAsyncOverride {
            if let deleteDBParameterGroupAsyncOverrideTyped = deleteDBParameterGroupAsyncOverrideNonOptional
                    as? DeleteDBParameterGroupAsyncType<InvocationReportingType> {
                return try deleteDBParameterGroupAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the DeleteDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBParameterGroupMessage object being passed to this operation.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func deleteDBParameterGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBParameterGroupMessage,
            reporting: InvocationReportingType) throws {
        if let deleteDBParameterGroupSyncOverrideNonOptional = deleteDBParameterGroupSyncOverride {
            if let deleteDBParameterGroupSyncOverrideTyped = deleteDBParameterGroupSyncOverrideNonOptional
                    as? DeleteDBParameterGroupSyncType<InvocationReportingType> {
                return try deleteDBParameterGroupSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DeleteDBProxy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBProxyRequest object being passed to this operation.
         - completion: The DeleteDBProxyResponseForDeleteDBProxy object or an error will be passed to this 
           callback when the operation is complete. The DeleteDBProxyResponseForDeleteDBProxy
           object will be validated before being returned to caller.
           The possible errors are: dBProxyNotFound, invalidDBProxyState.
     */
    public func deleteDBProxyAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBProxyRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DeleteDBProxyResponseForDeleteDBProxy, HTTPClientError>) -> ()) throws {
        if let deleteDBProxyAsyncOverrideNonOptional = deleteDBProxyAsyncOverride {
            if let deleteDBProxyAsyncOverrideTyped = deleteDBProxyAsyncOverrideNonOptional
                    as? DeleteDBProxyAsyncType<InvocationReportingType> {
                return try deleteDBProxyAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteDBProxy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBProxyRequest object being passed to this operation.
     - Returns: The DeleteDBProxyResponseForDeleteDBProxy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound, invalidDBProxyState.
     */
    public func deleteDBProxySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBProxyRequest,
            reporting: InvocationReportingType) throws -> RDSModel.DeleteDBProxyResponseForDeleteDBProxy {
        if let deleteDBProxySyncOverrideNonOptional = deleteDBProxySyncOverride {
            if let deleteDBProxySyncOverrideTyped = deleteDBProxySyncOverrideNonOptional
                    as? DeleteDBProxySyncType<InvocationReportingType> {
                return try deleteDBProxySyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DeleteDBSecurityGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBSecurityGroupMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    public func deleteDBSecurityGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBSecurityGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteDBSecurityGroupAsyncOverrideNonOptional = deleteDBSecurityGroupAsyncOverride {
            if let deleteDBSecurityGroupAsyncOverrideTyped = deleteDBSecurityGroupAsyncOverrideNonOptional
                    as? DeleteDBSecurityGroupAsyncType<InvocationReportingType> {
                return try deleteDBSecurityGroupAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the DeleteDBSecurityGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBSecurityGroupMessage object being passed to this operation.
     - Throws: dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    public func deleteDBSecurityGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBSecurityGroupMessage,
            reporting: InvocationReportingType) throws {
        if let deleteDBSecurityGroupSyncOverrideNonOptional = deleteDBSecurityGroupSyncOverride {
            if let deleteDBSecurityGroupSyncOverrideTyped = deleteDBSecurityGroupSyncOverrideNonOptional
                    as? DeleteDBSecurityGroupSyncType<InvocationReportingType> {
                return try deleteDBSecurityGroupSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DeleteDBSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBSnapshotMessage object being passed to this operation.
         - completion: The DeleteDBSnapshotResultForDeleteDBSnapshot object or an error will be passed to this 
           callback when the operation is complete. The DeleteDBSnapshotResultForDeleteDBSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound, invalidDBSnapshotState.
     */
    public func deleteDBSnapshotAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBSnapshotMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DeleteDBSnapshotResultForDeleteDBSnapshot, HTTPClientError>) -> ()) throws {
        if let deleteDBSnapshotAsyncOverrideNonOptional = deleteDBSnapshotAsyncOverride {
            if let deleteDBSnapshotAsyncOverrideTyped = deleteDBSnapshotAsyncOverrideNonOptional
                    as? DeleteDBSnapshotAsyncType<InvocationReportingType> {
                return try deleteDBSnapshotAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBSnapshotMessage object being passed to this operation.
     - Returns: The DeleteDBSnapshotResultForDeleteDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound, invalidDBSnapshotState.
     */
    public func deleteDBSnapshotSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBSnapshotMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DeleteDBSnapshotResultForDeleteDBSnapshot {
        if let deleteDBSnapshotSyncOverrideNonOptional = deleteDBSnapshotSyncOverride {
            if let deleteDBSnapshotSyncOverrideTyped = deleteDBSnapshotSyncOverrideNonOptional
                    as? DeleteDBSnapshotSyncType<InvocationReportingType> {
                return try deleteDBSnapshotSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DeleteDBSubnetGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBSubnetGroupMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBSubnetGroupNotFound, invalidDBSubnetGroupState, invalidDBSubnetState.
     */
    public func deleteDBSubnetGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBSubnetGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteDBSubnetGroupAsyncOverrideNonOptional = deleteDBSubnetGroupAsyncOverride {
            if let deleteDBSubnetGroupAsyncOverrideTyped = deleteDBSubnetGroupAsyncOverrideNonOptional
                    as? DeleteDBSubnetGroupAsyncType<InvocationReportingType> {
                return try deleteDBSubnetGroupAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the DeleteDBSubnetGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBSubnetGroupMessage object being passed to this operation.
     - Throws: dBSubnetGroupNotFound, invalidDBSubnetGroupState, invalidDBSubnetState.
     */
    public func deleteDBSubnetGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBSubnetGroupMessage,
            reporting: InvocationReportingType) throws {
        if let deleteDBSubnetGroupSyncOverrideNonOptional = deleteDBSubnetGroupSyncOverride {
            if let deleteDBSubnetGroupSyncOverrideTyped = deleteDBSubnetGroupSyncOverrideNonOptional
                    as? DeleteDBSubnetGroupSyncType<InvocationReportingType> {
                return try deleteDBSubnetGroupSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DeleteEventSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteEventSubscriptionMessage object being passed to this operation.
         - completion: The DeleteEventSubscriptionResultForDeleteEventSubscription object or an error will be passed to this 
           callback when the operation is complete. The DeleteEventSubscriptionResultForDeleteEventSubscription
           object will be validated before being returned to caller.
           The possible errors are: invalidEventSubscriptionState, subscriptionNotFound.
     */
    public func deleteEventSubscriptionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteEventSubscriptionMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DeleteEventSubscriptionResultForDeleteEventSubscription, HTTPClientError>) -> ()) throws {
        if let deleteEventSubscriptionAsyncOverrideNonOptional = deleteEventSubscriptionAsyncOverride {
            if let deleteEventSubscriptionAsyncOverrideTyped = deleteEventSubscriptionAsyncOverrideNonOptional
                    as? DeleteEventSubscriptionAsyncType<InvocationReportingType> {
                return try deleteEventSubscriptionAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteEventSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteEventSubscriptionMessage object being passed to this operation.
     - Returns: The DeleteEventSubscriptionResultForDeleteEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidEventSubscriptionState, subscriptionNotFound.
     */
    public func deleteEventSubscriptionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteEventSubscriptionMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DeleteEventSubscriptionResultForDeleteEventSubscription {
        if let deleteEventSubscriptionSyncOverrideNonOptional = deleteEventSubscriptionSyncOverride {
            if let deleteEventSubscriptionSyncOverrideTyped = deleteEventSubscriptionSyncOverrideNonOptional
                    as? DeleteEventSubscriptionSyncType<InvocationReportingType> {
                return try deleteEventSubscriptionSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DeleteGlobalCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteGlobalClusterMessage object being passed to this operation.
         - completion: The DeleteGlobalClusterResultForDeleteGlobalCluster object or an error will be passed to this 
           callback when the operation is complete. The DeleteGlobalClusterResultForDeleteGlobalCluster
           object will be validated before being returned to caller.
           The possible errors are: globalClusterNotFound, invalidGlobalClusterState.
     */
    public func deleteGlobalClusterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteGlobalClusterMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DeleteGlobalClusterResultForDeleteGlobalCluster, HTTPClientError>) -> ()) throws {
        if let deleteGlobalClusterAsyncOverrideNonOptional = deleteGlobalClusterAsyncOverride {
            if let deleteGlobalClusterAsyncOverrideTyped = deleteGlobalClusterAsyncOverrideNonOptional
                    as? DeleteGlobalClusterAsyncType<InvocationReportingType> {
                return try deleteGlobalClusterAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteGlobalCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteGlobalClusterMessage object being passed to this operation.
     - Returns: The DeleteGlobalClusterResultForDeleteGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalClusterNotFound, invalidGlobalClusterState.
     */
    public func deleteGlobalClusterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteGlobalClusterMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DeleteGlobalClusterResultForDeleteGlobalCluster {
        if let deleteGlobalClusterSyncOverrideNonOptional = deleteGlobalClusterSyncOverride {
            if let deleteGlobalClusterSyncOverrideTyped = deleteGlobalClusterSyncOverrideNonOptional
                    as? DeleteGlobalClusterSyncType<InvocationReportingType> {
                return try deleteGlobalClusterSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DeleteInstallationMedia operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteInstallationMediaMessage object being passed to this operation.
         - completion: The InstallationMediaForDeleteInstallationMedia object or an error will be passed to this 
           callback when the operation is complete. The InstallationMediaForDeleteInstallationMedia
           object will be validated before being returned to caller.
           The possible errors are: installationMediaNotFound.
     */
    public func deleteInstallationMediaAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteInstallationMediaMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.InstallationMediaForDeleteInstallationMedia, HTTPClientError>) -> ()) throws {
        if let deleteInstallationMediaAsyncOverrideNonOptional = deleteInstallationMediaAsyncOverride {
            if let deleteInstallationMediaAsyncOverrideTyped = deleteInstallationMediaAsyncOverrideNonOptional
                    as? DeleteInstallationMediaAsyncType<InvocationReportingType> {
                return try deleteInstallationMediaAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteInstallationMedia operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteInstallationMediaMessage object being passed to this operation.
     - Returns: The InstallationMediaForDeleteInstallationMedia object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: installationMediaNotFound.
     */
    public func deleteInstallationMediaSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteInstallationMediaMessage,
            reporting: InvocationReportingType) throws -> RDSModel.InstallationMediaForDeleteInstallationMedia {
        if let deleteInstallationMediaSyncOverrideNonOptional = deleteInstallationMediaSyncOverride {
            if let deleteInstallationMediaSyncOverrideTyped = deleteInstallationMediaSyncOverrideNonOptional
                    as? DeleteInstallationMediaSyncType<InvocationReportingType> {
                return try deleteInstallationMediaSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DeleteOptionGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteOptionGroupMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidOptionGroupState, optionGroupNotFound.
     */
    public func deleteOptionGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteOptionGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteOptionGroupAsyncOverrideNonOptional = deleteOptionGroupAsyncOverride {
            if let deleteOptionGroupAsyncOverrideTyped = deleteOptionGroupAsyncOverrideNonOptional
                    as? DeleteOptionGroupAsyncType<InvocationReportingType> {
                return try deleteOptionGroupAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the DeleteOptionGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteOptionGroupMessage object being passed to this operation.
     - Throws: invalidOptionGroupState, optionGroupNotFound.
     */
    public func deleteOptionGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteOptionGroupMessage,
            reporting: InvocationReportingType) throws {
        if let deleteOptionGroupSyncOverrideNonOptional = deleteOptionGroupSyncOverride {
            if let deleteOptionGroupSyncOverrideTyped = deleteOptionGroupSyncOverrideNonOptional
                    as? DeleteOptionGroupSyncType<InvocationReportingType> {
                return try deleteOptionGroupSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DeregisterDBProxyTargets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeregisterDBProxyTargetsRequest object being passed to this operation.
         - completion: The DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets object or an error will be passed to this 
           callback when the operation is complete. The DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets
           object will be validated before being returned to caller.
           The possible errors are: dBProxyNotFound, dBProxyTargetGroupNotFound, dBProxyTargetNotFound.
     */
    public func deregisterDBProxyTargetsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeregisterDBProxyTargetsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets, HTTPClientError>) -> ()) throws {
        if let deregisterDBProxyTargetsAsyncOverrideNonOptional = deregisterDBProxyTargetsAsyncOverride {
            if let deregisterDBProxyTargetsAsyncOverrideTyped = deregisterDBProxyTargetsAsyncOverrideNonOptional
                    as? DeregisterDBProxyTargetsAsyncType<InvocationReportingType> {
                return try deregisterDBProxyTargetsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeregisterDBProxyTargets operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterDBProxyTargetsRequest object being passed to this operation.
     - Returns: The DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound, dBProxyTargetGroupNotFound, dBProxyTargetNotFound.
     */
    public func deregisterDBProxyTargetsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeregisterDBProxyTargetsRequest,
            reporting: InvocationReportingType) throws -> RDSModel.DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets {
        if let deregisterDBProxyTargetsSyncOverrideNonOptional = deregisterDBProxyTargetsSyncOverride {
            if let deregisterDBProxyTargetsSyncOverrideTyped = deregisterDBProxyTargetsSyncOverrideNonOptional
                    as? DeregisterDBProxyTargetsSyncType<InvocationReportingType> {
                return try deregisterDBProxyTargetsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeAccountAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAccountAttributesMessage object being passed to this operation.
         - completion: The AccountAttributesMessageForDescribeAccountAttributes object or an error will be passed to this 
           callback when the operation is complete. The AccountAttributesMessageForDescribeAccountAttributes
           object will be validated before being returned to caller.
     */
    public func describeAccountAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeAccountAttributesMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.AccountAttributesMessageForDescribeAccountAttributes, HTTPClientError>) -> ()) throws {
        if let describeAccountAttributesAsyncOverrideNonOptional = describeAccountAttributesAsyncOverride {
            if let describeAccountAttributesAsyncOverrideTyped = describeAccountAttributesAsyncOverrideNonOptional
                    as? DescribeAccountAttributesAsyncType<InvocationReportingType> {
                return try describeAccountAttributesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeAccountAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAccountAttributesMessage object being passed to this operation.
     - Returns: The AccountAttributesMessageForDescribeAccountAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAccountAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeAccountAttributesMessage,
            reporting: InvocationReportingType) throws -> RDSModel.AccountAttributesMessageForDescribeAccountAttributes {
        if let describeAccountAttributesSyncOverrideNonOptional = describeAccountAttributesSyncOverride {
            if let describeAccountAttributesSyncOverrideTyped = describeAccountAttributesSyncOverrideNonOptional
                    as? DescribeAccountAttributesSyncType<InvocationReportingType> {
                return try describeAccountAttributesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeCertificates operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCertificatesMessage object being passed to this operation.
         - completion: The CertificateMessageForDescribeCertificates object or an error will be passed to this 
           callback when the operation is complete. The CertificateMessageForDescribeCertificates
           object will be validated before being returned to caller.
           The possible errors are: certificateNotFound.
     */
    public func describeCertificatesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeCertificatesMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CertificateMessageForDescribeCertificates, HTTPClientError>) -> ()) throws {
        if let describeCertificatesAsyncOverrideNonOptional = describeCertificatesAsyncOverride {
            if let describeCertificatesAsyncOverrideTyped = describeCertificatesAsyncOverrideNonOptional
                    as? DescribeCertificatesAsyncType<InvocationReportingType> {
                return try describeCertificatesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeCertificates operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCertificatesMessage object being passed to this operation.
     - Returns: The CertificateMessageForDescribeCertificates object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: certificateNotFound.
     */
    public func describeCertificatesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeCertificatesMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CertificateMessageForDescribeCertificates {
        if let describeCertificatesSyncOverrideNonOptional = describeCertificatesSyncOverride {
            if let describeCertificatesSyncOverrideTyped = describeCertificatesSyncOverrideNonOptional
                    as? DescribeCertificatesSyncType<InvocationReportingType> {
                return try describeCertificatesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeCustomAvailabilityZones operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCustomAvailabilityZonesMessage object being passed to this operation.
         - completion: The CustomAvailabilityZoneMessageForDescribeCustomAvailabilityZones object or an error will be passed to this 
           callback when the operation is complete. The CustomAvailabilityZoneMessageForDescribeCustomAvailabilityZones
           object will be validated before being returned to caller.
           The possible errors are: customAvailabilityZoneNotFound.
     */
    public func describeCustomAvailabilityZonesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeCustomAvailabilityZonesMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CustomAvailabilityZoneMessageForDescribeCustomAvailabilityZones, HTTPClientError>) -> ()) throws {
        if let describeCustomAvailabilityZonesAsyncOverrideNonOptional = describeCustomAvailabilityZonesAsyncOverride {
            if let describeCustomAvailabilityZonesAsyncOverrideTyped = describeCustomAvailabilityZonesAsyncOverrideNonOptional
                    as? DescribeCustomAvailabilityZonesAsyncType<InvocationReportingType> {
                return try describeCustomAvailabilityZonesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeCustomAvailabilityZones operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCustomAvailabilityZonesMessage object being passed to this operation.
     - Returns: The CustomAvailabilityZoneMessageForDescribeCustomAvailabilityZones object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: customAvailabilityZoneNotFound.
     */
    public func describeCustomAvailabilityZonesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeCustomAvailabilityZonesMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CustomAvailabilityZoneMessageForDescribeCustomAvailabilityZones {
        if let describeCustomAvailabilityZonesSyncOverrideNonOptional = describeCustomAvailabilityZonesSyncOverride {
            if let describeCustomAvailabilityZonesSyncOverrideTyped = describeCustomAvailabilityZonesSyncOverrideNonOptional
                    as? DescribeCustomAvailabilityZonesSyncType<InvocationReportingType> {
                return try describeCustomAvailabilityZonesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeDBClusterBacktracks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClusterBacktracksMessage object being passed to this operation.
         - completion: The DBClusterBacktrackMessageForDescribeDBClusterBacktracks object or an error will be passed to this 
           callback when the operation is complete. The DBClusterBacktrackMessageForDescribeDBClusterBacktracks
           object will be validated before being returned to caller.
           The possible errors are: dBClusterBacktrackNotFound, dBClusterNotFound.
     */
    public func describeDBClusterBacktracksAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBClusterBacktracksMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBClusterBacktrackMessageForDescribeDBClusterBacktracks, HTTPClientError>) -> ()) throws {
        if let describeDBClusterBacktracksAsyncOverrideNonOptional = describeDBClusterBacktracksAsyncOverride {
            if let describeDBClusterBacktracksAsyncOverrideTyped = describeDBClusterBacktracksAsyncOverrideNonOptional
                    as? DescribeDBClusterBacktracksAsyncType<InvocationReportingType> {
                return try describeDBClusterBacktracksAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBClusterBacktracks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterBacktracksMessage object being passed to this operation.
     - Returns: The DBClusterBacktrackMessageForDescribeDBClusterBacktracks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterBacktrackNotFound, dBClusterNotFound.
     */
    public func describeDBClusterBacktracksSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBClusterBacktracksMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBClusterBacktrackMessageForDescribeDBClusterBacktracks {
        if let describeDBClusterBacktracksSyncOverrideNonOptional = describeDBClusterBacktracksSyncOverride {
            if let describeDBClusterBacktracksSyncOverrideTyped = describeDBClusterBacktracksSyncOverrideNonOptional
                    as? DescribeDBClusterBacktracksSyncType<InvocationReportingType> {
                return try describeDBClusterBacktracksSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeDBClusterEndpoints operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClusterEndpointsMessage object being passed to this operation.
         - completion: The DBClusterEndpointMessageForDescribeDBClusterEndpoints object or an error will be passed to this 
           callback when the operation is complete. The DBClusterEndpointMessageForDescribeDBClusterEndpoints
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound.
     */
    public func describeDBClusterEndpointsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBClusterEndpointsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBClusterEndpointMessageForDescribeDBClusterEndpoints, HTTPClientError>) -> ()) throws {
        if let describeDBClusterEndpointsAsyncOverrideNonOptional = describeDBClusterEndpointsAsyncOverride {
            if let describeDBClusterEndpointsAsyncOverrideTyped = describeDBClusterEndpointsAsyncOverrideNonOptional
                    as? DescribeDBClusterEndpointsAsyncType<InvocationReportingType> {
                return try describeDBClusterEndpointsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBClusterEndpoints operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterEndpointsMessage object being passed to this operation.
     - Returns: The DBClusterEndpointMessageForDescribeDBClusterEndpoints object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound.
     */
    public func describeDBClusterEndpointsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBClusterEndpointsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBClusterEndpointMessageForDescribeDBClusterEndpoints {
        if let describeDBClusterEndpointsSyncOverrideNonOptional = describeDBClusterEndpointsSyncOverride {
            if let describeDBClusterEndpointsSyncOverrideTyped = describeDBClusterEndpointsSyncOverrideNonOptional
                    as? DescribeDBClusterEndpointsSyncType<InvocationReportingType> {
                return try describeDBClusterEndpointsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeDBClusterParameterGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClusterParameterGroupsMessage object being passed to this operation.
         - completion: The DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups object or an error will be passed to this 
           callback when the operation is complete. The DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound.
     */
    public func describeDBClusterParameterGroupsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBClusterParameterGroupsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups, HTTPClientError>) -> ()) throws {
        if let describeDBClusterParameterGroupsAsyncOverrideNonOptional = describeDBClusterParameterGroupsAsyncOverride {
            if let describeDBClusterParameterGroupsAsyncOverrideTyped = describeDBClusterParameterGroupsAsyncOverrideNonOptional
                    as? DescribeDBClusterParameterGroupsAsyncType<InvocationReportingType> {
                return try describeDBClusterParameterGroupsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBClusterParameterGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterParameterGroupsMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    public func describeDBClusterParameterGroupsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBClusterParameterGroupsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups {
        if let describeDBClusterParameterGroupsSyncOverrideNonOptional = describeDBClusterParameterGroupsSyncOverride {
            if let describeDBClusterParameterGroupsSyncOverrideTyped = describeDBClusterParameterGroupsSyncOverrideNonOptional
                    as? DescribeDBClusterParameterGroupsSyncType<InvocationReportingType> {
                return try describeDBClusterParameterGroupsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeDBClusterParameters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClusterParametersMessage object being passed to this operation.
         - completion: The DBClusterParameterGroupDetailsForDescribeDBClusterParameters object or an error will be passed to this 
           callback when the operation is complete. The DBClusterParameterGroupDetailsForDescribeDBClusterParameters
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound.
     */
    public func describeDBClusterParametersAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBClusterParametersMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBClusterParameterGroupDetailsForDescribeDBClusterParameters, HTTPClientError>) -> ()) throws {
        if let describeDBClusterParametersAsyncOverrideNonOptional = describeDBClusterParametersAsyncOverride {
            if let describeDBClusterParametersAsyncOverrideTyped = describeDBClusterParametersAsyncOverrideNonOptional
                    as? DescribeDBClusterParametersAsyncType<InvocationReportingType> {
                return try describeDBClusterParametersAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBClusterParameters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterParametersMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupDetailsForDescribeDBClusterParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    public func describeDBClusterParametersSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBClusterParametersMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBClusterParameterGroupDetailsForDescribeDBClusterParameters {
        if let describeDBClusterParametersSyncOverrideNonOptional = describeDBClusterParametersSyncOverride {
            if let describeDBClusterParametersSyncOverrideTyped = describeDBClusterParametersSyncOverrideNonOptional
                    as? DescribeDBClusterParametersSyncType<InvocationReportingType> {
                return try describeDBClusterParametersSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeDBClusterSnapshotAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotAttributesMessage object being passed to this operation.
         - completion: The DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes object or an error will be passed to this 
           callback when the operation is complete. The DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes
           object will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound.
     */
    public func describeDBClusterSnapshotAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBClusterSnapshotAttributesMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes, HTTPClientError>) -> ()) throws {
        if let describeDBClusterSnapshotAttributesAsyncOverrideNonOptional = describeDBClusterSnapshotAttributesAsyncOverride {
            if let describeDBClusterSnapshotAttributesAsyncOverrideTyped = describeDBClusterSnapshotAttributesAsyncOverrideNonOptional
                    as? DescribeDBClusterSnapshotAttributesAsyncType<InvocationReportingType> {
                return try describeDBClusterSnapshotAttributesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBClusterSnapshotAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotAttributesMessage object being passed to this operation.
     - Returns: The DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound.
     */
    public func describeDBClusterSnapshotAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBClusterSnapshotAttributesMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes {
        if let describeDBClusterSnapshotAttributesSyncOverrideNonOptional = describeDBClusterSnapshotAttributesSyncOverride {
            if let describeDBClusterSnapshotAttributesSyncOverrideTyped = describeDBClusterSnapshotAttributesSyncOverrideNonOptional
                    as? DescribeDBClusterSnapshotAttributesSyncType<InvocationReportingType> {
                return try describeDBClusterSnapshotAttributesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeDBClusterSnapshots operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotsMessage object being passed to this operation.
         - completion: The DBClusterSnapshotMessageForDescribeDBClusterSnapshots object or an error will be passed to this 
           callback when the operation is complete. The DBClusterSnapshotMessageForDescribeDBClusterSnapshots
           object will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound.
     */
    public func describeDBClusterSnapshotsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBClusterSnapshotsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBClusterSnapshotMessageForDescribeDBClusterSnapshots, HTTPClientError>) -> ()) throws {
        if let describeDBClusterSnapshotsAsyncOverrideNonOptional = describeDBClusterSnapshotsAsyncOverride {
            if let describeDBClusterSnapshotsAsyncOverrideTyped = describeDBClusterSnapshotsAsyncOverrideNonOptional
                    as? DescribeDBClusterSnapshotsAsyncType<InvocationReportingType> {
                return try describeDBClusterSnapshotsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBClusterSnapshots operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotsMessage object being passed to this operation.
     - Returns: The DBClusterSnapshotMessageForDescribeDBClusterSnapshots object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound.
     */
    public func describeDBClusterSnapshotsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBClusterSnapshotsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBClusterSnapshotMessageForDescribeDBClusterSnapshots {
        if let describeDBClusterSnapshotsSyncOverrideNonOptional = describeDBClusterSnapshotsSyncOverride {
            if let describeDBClusterSnapshotsSyncOverrideTyped = describeDBClusterSnapshotsSyncOverrideNonOptional
                    as? DescribeDBClusterSnapshotsSyncType<InvocationReportingType> {
                return try describeDBClusterSnapshotsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeDBClusters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClustersMessage object being passed to this operation.
         - completion: The DBClusterMessageForDescribeDBClusters object or an error will be passed to this 
           callback when the operation is complete. The DBClusterMessageForDescribeDBClusters
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound.
     */
    public func describeDBClustersAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBClustersMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBClusterMessageForDescribeDBClusters, HTTPClientError>) -> ()) throws {
        if let describeDBClustersAsyncOverrideNonOptional = describeDBClustersAsyncOverride {
            if let describeDBClustersAsyncOverrideTyped = describeDBClustersAsyncOverrideNonOptional
                    as? DescribeDBClustersAsyncType<InvocationReportingType> {
                return try describeDBClustersAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBClusters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClustersMessage object being passed to this operation.
     - Returns: The DBClusterMessageForDescribeDBClusters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound.
     */
    public func describeDBClustersSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBClustersMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBClusterMessageForDescribeDBClusters {
        if let describeDBClustersSyncOverrideNonOptional = describeDBClustersSyncOverride {
            if let describeDBClustersSyncOverrideTyped = describeDBClustersSyncOverrideNonOptional
                    as? DescribeDBClustersSyncType<InvocationReportingType> {
                return try describeDBClustersSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeDBEngineVersions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBEngineVersionsMessage object being passed to this operation.
         - completion: The DBEngineVersionMessageForDescribeDBEngineVersions object or an error will be passed to this 
           callback when the operation is complete. The DBEngineVersionMessageForDescribeDBEngineVersions
           object will be validated before being returned to caller.
     */
    public func describeDBEngineVersionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBEngineVersionsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBEngineVersionMessageForDescribeDBEngineVersions, HTTPClientError>) -> ()) throws {
        if let describeDBEngineVersionsAsyncOverrideNonOptional = describeDBEngineVersionsAsyncOverride {
            if let describeDBEngineVersionsAsyncOverrideTyped = describeDBEngineVersionsAsyncOverrideNonOptional
                    as? DescribeDBEngineVersionsAsyncType<InvocationReportingType> {
                return try describeDBEngineVersionsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBEngineVersions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBEngineVersionsMessage object being passed to this operation.
     - Returns: The DBEngineVersionMessageForDescribeDBEngineVersions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeDBEngineVersionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBEngineVersionsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBEngineVersionMessageForDescribeDBEngineVersions {
        if let describeDBEngineVersionsSyncOverrideNonOptional = describeDBEngineVersionsSyncOverride {
            if let describeDBEngineVersionsSyncOverrideTyped = describeDBEngineVersionsSyncOverrideNonOptional
                    as? DescribeDBEngineVersionsSyncType<InvocationReportingType> {
                return try describeDBEngineVersionsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeDBInstanceAutomatedBackups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBInstanceAutomatedBackupsMessage object being passed to this operation.
         - completion: The DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups object or an error will be passed to this 
           callback when the operation is complete. The DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceAutomatedBackupNotFound.
     */
    public func describeDBInstanceAutomatedBackupsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBInstanceAutomatedBackupsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups, HTTPClientError>) -> ()) throws {
        if let describeDBInstanceAutomatedBackupsAsyncOverrideNonOptional = describeDBInstanceAutomatedBackupsAsyncOverride {
            if let describeDBInstanceAutomatedBackupsAsyncOverrideTyped = describeDBInstanceAutomatedBackupsAsyncOverrideNonOptional
                    as? DescribeDBInstanceAutomatedBackupsAsyncType<InvocationReportingType> {
                return try describeDBInstanceAutomatedBackupsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBInstanceAutomatedBackups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBInstanceAutomatedBackupsMessage object being passed to this operation.
     - Returns: The DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupNotFound.
     */
    public func describeDBInstanceAutomatedBackupsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBInstanceAutomatedBackupsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups {
        if let describeDBInstanceAutomatedBackupsSyncOverrideNonOptional = describeDBInstanceAutomatedBackupsSyncOverride {
            if let describeDBInstanceAutomatedBackupsSyncOverrideTyped = describeDBInstanceAutomatedBackupsSyncOverrideNonOptional
                    as? DescribeDBInstanceAutomatedBackupsSyncType<InvocationReportingType> {
                return try describeDBInstanceAutomatedBackupsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeDBInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBInstancesMessage object being passed to this operation.
         - completion: The DBInstanceMessageForDescribeDBInstances object or an error will be passed to this 
           callback when the operation is complete. The DBInstanceMessageForDescribeDBInstances
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound.
     */
    public func describeDBInstancesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBInstancesMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBInstanceMessageForDescribeDBInstances, HTTPClientError>) -> ()) throws {
        if let describeDBInstancesAsyncOverrideNonOptional = describeDBInstancesAsyncOverride {
            if let describeDBInstancesAsyncOverrideTyped = describeDBInstancesAsyncOverrideNonOptional
                    as? DescribeDBInstancesAsyncType<InvocationReportingType> {
                return try describeDBInstancesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBInstancesMessage object being passed to this operation.
     - Returns: The DBInstanceMessageForDescribeDBInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound.
     */
    public func describeDBInstancesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBInstancesMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBInstanceMessageForDescribeDBInstances {
        if let describeDBInstancesSyncOverrideNonOptional = describeDBInstancesSyncOverride {
            if let describeDBInstancesSyncOverrideTyped = describeDBInstancesSyncOverrideNonOptional
                    as? DescribeDBInstancesSyncType<InvocationReportingType> {
                return try describeDBInstancesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeDBLogFiles operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBLogFilesMessage object being passed to this operation.
         - completion: The DescribeDBLogFilesResponseForDescribeDBLogFiles object or an error will be passed to this 
           callback when the operation is complete. The DescribeDBLogFilesResponseForDescribeDBLogFiles
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound.
     */
    public func describeDBLogFilesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBLogFilesMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DescribeDBLogFilesResponseForDescribeDBLogFiles, HTTPClientError>) -> ()) throws {
        if let describeDBLogFilesAsyncOverrideNonOptional = describeDBLogFilesAsyncOverride {
            if let describeDBLogFilesAsyncOverrideTyped = describeDBLogFilesAsyncOverrideNonOptional
                    as? DescribeDBLogFilesAsyncType<InvocationReportingType> {
                return try describeDBLogFilesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBLogFiles operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBLogFilesMessage object being passed to this operation.
     - Returns: The DescribeDBLogFilesResponseForDescribeDBLogFiles object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound.
     */
    public func describeDBLogFilesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBLogFilesMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DescribeDBLogFilesResponseForDescribeDBLogFiles {
        if let describeDBLogFilesSyncOverrideNonOptional = describeDBLogFilesSyncOverride {
            if let describeDBLogFilesSyncOverrideTyped = describeDBLogFilesSyncOverrideNonOptional
                    as? DescribeDBLogFilesSyncType<InvocationReportingType> {
                return try describeDBLogFilesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeDBParameterGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBParameterGroupsMessage object being passed to this operation.
         - completion: The DBParameterGroupsMessageForDescribeDBParameterGroups object or an error will be passed to this 
           callback when the operation is complete. The DBParameterGroupsMessageForDescribeDBParameterGroups
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound.
     */
    public func describeDBParameterGroupsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBParameterGroupsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBParameterGroupsMessageForDescribeDBParameterGroups, HTTPClientError>) -> ()) throws {
        if let describeDBParameterGroupsAsyncOverrideNonOptional = describeDBParameterGroupsAsyncOverride {
            if let describeDBParameterGroupsAsyncOverrideTyped = describeDBParameterGroupsAsyncOverrideNonOptional
                    as? DescribeDBParameterGroupsAsyncType<InvocationReportingType> {
                return try describeDBParameterGroupsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBParameterGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBParameterGroupsMessage object being passed to this operation.
     - Returns: The DBParameterGroupsMessageForDescribeDBParameterGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    public func describeDBParameterGroupsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBParameterGroupsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBParameterGroupsMessageForDescribeDBParameterGroups {
        if let describeDBParameterGroupsSyncOverrideNonOptional = describeDBParameterGroupsSyncOverride {
            if let describeDBParameterGroupsSyncOverrideTyped = describeDBParameterGroupsSyncOverrideNonOptional
                    as? DescribeDBParameterGroupsSyncType<InvocationReportingType> {
                return try describeDBParameterGroupsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeDBParameters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBParametersMessage object being passed to this operation.
         - completion: The DBParameterGroupDetailsForDescribeDBParameters object or an error will be passed to this 
           callback when the operation is complete. The DBParameterGroupDetailsForDescribeDBParameters
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound.
     */
    public func describeDBParametersAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBParametersMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBParameterGroupDetailsForDescribeDBParameters, HTTPClientError>) -> ()) throws {
        if let describeDBParametersAsyncOverrideNonOptional = describeDBParametersAsyncOverride {
            if let describeDBParametersAsyncOverrideTyped = describeDBParametersAsyncOverrideNonOptional
                    as? DescribeDBParametersAsyncType<InvocationReportingType> {
                return try describeDBParametersAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBParameters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBParametersMessage object being passed to this operation.
     - Returns: The DBParameterGroupDetailsForDescribeDBParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    public func describeDBParametersSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBParametersMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBParameterGroupDetailsForDescribeDBParameters {
        if let describeDBParametersSyncOverrideNonOptional = describeDBParametersSyncOverride {
            if let describeDBParametersSyncOverrideTyped = describeDBParametersSyncOverrideNonOptional
                    as? DescribeDBParametersSyncType<InvocationReportingType> {
                return try describeDBParametersSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeDBProxies operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBProxiesRequest object being passed to this operation.
         - completion: The DescribeDBProxiesResponseForDescribeDBProxies object or an error will be passed to this 
           callback when the operation is complete. The DescribeDBProxiesResponseForDescribeDBProxies
           object will be validated before being returned to caller.
           The possible errors are: dBProxyNotFound.
     */
    public func describeDBProxiesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBProxiesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DescribeDBProxiesResponseForDescribeDBProxies, HTTPClientError>) -> ()) throws {
        if let describeDBProxiesAsyncOverrideNonOptional = describeDBProxiesAsyncOverride {
            if let describeDBProxiesAsyncOverrideTyped = describeDBProxiesAsyncOverrideNonOptional
                    as? DescribeDBProxiesAsyncType<InvocationReportingType> {
                return try describeDBProxiesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBProxies operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBProxiesRequest object being passed to this operation.
     - Returns: The DescribeDBProxiesResponseForDescribeDBProxies object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound.
     */
    public func describeDBProxiesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBProxiesRequest,
            reporting: InvocationReportingType) throws -> RDSModel.DescribeDBProxiesResponseForDescribeDBProxies {
        if let describeDBProxiesSyncOverrideNonOptional = describeDBProxiesSyncOverride {
            if let describeDBProxiesSyncOverrideTyped = describeDBProxiesSyncOverrideNonOptional
                    as? DescribeDBProxiesSyncType<InvocationReportingType> {
                return try describeDBProxiesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeDBProxyTargetGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBProxyTargetGroupsRequest object being passed to this operation.
         - completion: The DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups object or an error will be passed to this 
           callback when the operation is complete. The DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups
           object will be validated before being returned to caller.
           The possible errors are: dBProxyTargetGroupNotFound.
     */
    public func describeDBProxyTargetGroupsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBProxyTargetGroupsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups, HTTPClientError>) -> ()) throws {
        if let describeDBProxyTargetGroupsAsyncOverrideNonOptional = describeDBProxyTargetGroupsAsyncOverride {
            if let describeDBProxyTargetGroupsAsyncOverrideTyped = describeDBProxyTargetGroupsAsyncOverrideNonOptional
                    as? DescribeDBProxyTargetGroupsAsyncType<InvocationReportingType> {
                return try describeDBProxyTargetGroupsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBProxyTargetGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBProxyTargetGroupsRequest object being passed to this operation.
     - Returns: The DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyTargetGroupNotFound.
     */
    public func describeDBProxyTargetGroupsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBProxyTargetGroupsRequest,
            reporting: InvocationReportingType) throws -> RDSModel.DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups {
        if let describeDBProxyTargetGroupsSyncOverrideNonOptional = describeDBProxyTargetGroupsSyncOverride {
            if let describeDBProxyTargetGroupsSyncOverrideTyped = describeDBProxyTargetGroupsSyncOverrideNonOptional
                    as? DescribeDBProxyTargetGroupsSyncType<InvocationReportingType> {
                return try describeDBProxyTargetGroupsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeDBProxyTargets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBProxyTargetsRequest object being passed to this operation.
         - completion: The DescribeDBProxyTargetsResponseForDescribeDBProxyTargets object or an error will be passed to this 
           callback when the operation is complete. The DescribeDBProxyTargetsResponseForDescribeDBProxyTargets
           object will be validated before being returned to caller.
           The possible errors are: dBProxyNotFound, dBProxyTargetGroupNotFound, dBProxyTargetNotFound.
     */
    public func describeDBProxyTargetsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBProxyTargetsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DescribeDBProxyTargetsResponseForDescribeDBProxyTargets, HTTPClientError>) -> ()) throws {
        if let describeDBProxyTargetsAsyncOverrideNonOptional = describeDBProxyTargetsAsyncOverride {
            if let describeDBProxyTargetsAsyncOverrideTyped = describeDBProxyTargetsAsyncOverrideNonOptional
                    as? DescribeDBProxyTargetsAsyncType<InvocationReportingType> {
                return try describeDBProxyTargetsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBProxyTargets operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBProxyTargetsRequest object being passed to this operation.
     - Returns: The DescribeDBProxyTargetsResponseForDescribeDBProxyTargets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound, dBProxyTargetGroupNotFound, dBProxyTargetNotFound.
     */
    public func describeDBProxyTargetsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBProxyTargetsRequest,
            reporting: InvocationReportingType) throws -> RDSModel.DescribeDBProxyTargetsResponseForDescribeDBProxyTargets {
        if let describeDBProxyTargetsSyncOverrideNonOptional = describeDBProxyTargetsSyncOverride {
            if let describeDBProxyTargetsSyncOverrideTyped = describeDBProxyTargetsSyncOverrideNonOptional
                    as? DescribeDBProxyTargetsSyncType<InvocationReportingType> {
                return try describeDBProxyTargetsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeDBSecurityGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBSecurityGroupsMessage object being passed to this operation.
         - completion: The DBSecurityGroupMessageForDescribeDBSecurityGroups object or an error will be passed to this 
           callback when the operation is complete. The DBSecurityGroupMessageForDescribeDBSecurityGroups
           object will be validated before being returned to caller.
           The possible errors are: dBSecurityGroupNotFound.
     */
    public func describeDBSecurityGroupsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBSecurityGroupsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBSecurityGroupMessageForDescribeDBSecurityGroups, HTTPClientError>) -> ()) throws {
        if let describeDBSecurityGroupsAsyncOverrideNonOptional = describeDBSecurityGroupsAsyncOverride {
            if let describeDBSecurityGroupsAsyncOverrideTyped = describeDBSecurityGroupsAsyncOverrideNonOptional
                    as? DescribeDBSecurityGroupsAsyncType<InvocationReportingType> {
                return try describeDBSecurityGroupsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBSecurityGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBSecurityGroupsMessage object being passed to this operation.
     - Returns: The DBSecurityGroupMessageForDescribeDBSecurityGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSecurityGroupNotFound.
     */
    public func describeDBSecurityGroupsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBSecurityGroupsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBSecurityGroupMessageForDescribeDBSecurityGroups {
        if let describeDBSecurityGroupsSyncOverrideNonOptional = describeDBSecurityGroupsSyncOverride {
            if let describeDBSecurityGroupsSyncOverrideTyped = describeDBSecurityGroupsSyncOverrideNonOptional
                    as? DescribeDBSecurityGroupsSyncType<InvocationReportingType> {
                return try describeDBSecurityGroupsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeDBSnapshotAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBSnapshotAttributesMessage object being passed to this operation.
         - completion: The DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes object or an error will be passed to this 
           callback when the operation is complete. The DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes
           object will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound.
     */
    public func describeDBSnapshotAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBSnapshotAttributesMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes, HTTPClientError>) -> ()) throws {
        if let describeDBSnapshotAttributesAsyncOverrideNonOptional = describeDBSnapshotAttributesAsyncOverride {
            if let describeDBSnapshotAttributesAsyncOverrideTyped = describeDBSnapshotAttributesAsyncOverrideNonOptional
                    as? DescribeDBSnapshotAttributesAsyncType<InvocationReportingType> {
                return try describeDBSnapshotAttributesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBSnapshotAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBSnapshotAttributesMessage object being passed to this operation.
     - Returns: The DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound.
     */
    public func describeDBSnapshotAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBSnapshotAttributesMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes {
        if let describeDBSnapshotAttributesSyncOverrideNonOptional = describeDBSnapshotAttributesSyncOverride {
            if let describeDBSnapshotAttributesSyncOverrideTyped = describeDBSnapshotAttributesSyncOverrideNonOptional
                    as? DescribeDBSnapshotAttributesSyncType<InvocationReportingType> {
                return try describeDBSnapshotAttributesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeDBSnapshots operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBSnapshotsMessage object being passed to this operation.
         - completion: The DBSnapshotMessageForDescribeDBSnapshots object or an error will be passed to this 
           callback when the operation is complete. The DBSnapshotMessageForDescribeDBSnapshots
           object will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound.
     */
    public func describeDBSnapshotsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBSnapshotsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBSnapshotMessageForDescribeDBSnapshots, HTTPClientError>) -> ()) throws {
        if let describeDBSnapshotsAsyncOverrideNonOptional = describeDBSnapshotsAsyncOverride {
            if let describeDBSnapshotsAsyncOverrideTyped = describeDBSnapshotsAsyncOverrideNonOptional
                    as? DescribeDBSnapshotsAsyncType<InvocationReportingType> {
                return try describeDBSnapshotsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBSnapshots operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBSnapshotsMessage object being passed to this operation.
     - Returns: The DBSnapshotMessageForDescribeDBSnapshots object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound.
     */
    public func describeDBSnapshotsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBSnapshotsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBSnapshotMessageForDescribeDBSnapshots {
        if let describeDBSnapshotsSyncOverrideNonOptional = describeDBSnapshotsSyncOverride {
            if let describeDBSnapshotsSyncOverrideTyped = describeDBSnapshotsSyncOverrideNonOptional
                    as? DescribeDBSnapshotsSyncType<InvocationReportingType> {
                return try describeDBSnapshotsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeDBSubnetGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBSubnetGroupsMessage object being passed to this operation.
         - completion: The DBSubnetGroupMessageForDescribeDBSubnetGroups object or an error will be passed to this 
           callback when the operation is complete. The DBSubnetGroupMessageForDescribeDBSubnetGroups
           object will be validated before being returned to caller.
           The possible errors are: dBSubnetGroupNotFound.
     */
    public func describeDBSubnetGroupsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBSubnetGroupsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBSubnetGroupMessageForDescribeDBSubnetGroups, HTTPClientError>) -> ()) throws {
        if let describeDBSubnetGroupsAsyncOverrideNonOptional = describeDBSubnetGroupsAsyncOverride {
            if let describeDBSubnetGroupsAsyncOverrideTyped = describeDBSubnetGroupsAsyncOverrideNonOptional
                    as? DescribeDBSubnetGroupsAsyncType<InvocationReportingType> {
                return try describeDBSubnetGroupsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBSubnetGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBSubnetGroupsMessage object being passed to this operation.
     - Returns: The DBSubnetGroupMessageForDescribeDBSubnetGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSubnetGroupNotFound.
     */
    public func describeDBSubnetGroupsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBSubnetGroupsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBSubnetGroupMessageForDescribeDBSubnetGroups {
        if let describeDBSubnetGroupsSyncOverrideNonOptional = describeDBSubnetGroupsSyncOverride {
            if let describeDBSubnetGroupsSyncOverrideTyped = describeDBSubnetGroupsSyncOverrideNonOptional
                    as? DescribeDBSubnetGroupsSyncType<InvocationReportingType> {
                return try describeDBSubnetGroupsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeEngineDefaultClusterParameters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEngineDefaultClusterParametersMessage object being passed to this operation.
         - completion: The DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters object or an error will be passed to this 
           callback when the operation is complete. The DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters
           object will be validated before being returned to caller.
     */
    public func describeEngineDefaultClusterParametersAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeEngineDefaultClusterParametersMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters, HTTPClientError>) -> ()) throws {
        if let describeEngineDefaultClusterParametersAsyncOverrideNonOptional = describeEngineDefaultClusterParametersAsyncOverride {
            if let describeEngineDefaultClusterParametersAsyncOverrideTyped = describeEngineDefaultClusterParametersAsyncOverrideNonOptional
                    as? DescribeEngineDefaultClusterParametersAsyncType<InvocationReportingType> {
                return try describeEngineDefaultClusterParametersAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeEngineDefaultClusterParameters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEngineDefaultClusterParametersMessage object being passed to this operation.
     - Returns: The DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeEngineDefaultClusterParametersSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeEngineDefaultClusterParametersMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters {
        if let describeEngineDefaultClusterParametersSyncOverrideNonOptional = describeEngineDefaultClusterParametersSyncOverride {
            if let describeEngineDefaultClusterParametersSyncOverrideTyped = describeEngineDefaultClusterParametersSyncOverrideNonOptional
                    as? DescribeEngineDefaultClusterParametersSyncType<InvocationReportingType> {
                return try describeEngineDefaultClusterParametersSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeEngineDefaultParameters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEngineDefaultParametersMessage object being passed to this operation.
         - completion: The DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters object or an error will be passed to this 
           callback when the operation is complete. The DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters
           object will be validated before being returned to caller.
     */
    public func describeEngineDefaultParametersAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeEngineDefaultParametersMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters, HTTPClientError>) -> ()) throws {
        if let describeEngineDefaultParametersAsyncOverrideNonOptional = describeEngineDefaultParametersAsyncOverride {
            if let describeEngineDefaultParametersAsyncOverrideTyped = describeEngineDefaultParametersAsyncOverrideNonOptional
                    as? DescribeEngineDefaultParametersAsyncType<InvocationReportingType> {
                return try describeEngineDefaultParametersAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeEngineDefaultParameters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEngineDefaultParametersMessage object being passed to this operation.
     - Returns: The DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeEngineDefaultParametersSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeEngineDefaultParametersMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters {
        if let describeEngineDefaultParametersSyncOverrideNonOptional = describeEngineDefaultParametersSyncOverride {
            if let describeEngineDefaultParametersSyncOverrideTyped = describeEngineDefaultParametersSyncOverrideNonOptional
                    as? DescribeEngineDefaultParametersSyncType<InvocationReportingType> {
                return try describeEngineDefaultParametersSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeEventCategories operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEventCategoriesMessage object being passed to this operation.
         - completion: The EventCategoriesMessageForDescribeEventCategories object or an error will be passed to this 
           callback when the operation is complete. The EventCategoriesMessageForDescribeEventCategories
           object will be validated before being returned to caller.
     */
    public func describeEventCategoriesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeEventCategoriesMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.EventCategoriesMessageForDescribeEventCategories, HTTPClientError>) -> ()) throws {
        if let describeEventCategoriesAsyncOverrideNonOptional = describeEventCategoriesAsyncOverride {
            if let describeEventCategoriesAsyncOverrideTyped = describeEventCategoriesAsyncOverrideNonOptional
                    as? DescribeEventCategoriesAsyncType<InvocationReportingType> {
                return try describeEventCategoriesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeEventCategories operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEventCategoriesMessage object being passed to this operation.
     - Returns: The EventCategoriesMessageForDescribeEventCategories object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeEventCategoriesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeEventCategoriesMessage,
            reporting: InvocationReportingType) throws -> RDSModel.EventCategoriesMessageForDescribeEventCategories {
        if let describeEventCategoriesSyncOverrideNonOptional = describeEventCategoriesSyncOverride {
            if let describeEventCategoriesSyncOverrideTyped = describeEventCategoriesSyncOverrideNonOptional
                    as? DescribeEventCategoriesSyncType<InvocationReportingType> {
                return try describeEventCategoriesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeEventSubscriptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEventSubscriptionsMessage object being passed to this operation.
         - completion: The EventSubscriptionsMessageForDescribeEventSubscriptions object or an error will be passed to this 
           callback when the operation is complete. The EventSubscriptionsMessageForDescribeEventSubscriptions
           object will be validated before being returned to caller.
           The possible errors are: subscriptionNotFound.
     */
    public func describeEventSubscriptionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeEventSubscriptionsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.EventSubscriptionsMessageForDescribeEventSubscriptions, HTTPClientError>) -> ()) throws {
        if let describeEventSubscriptionsAsyncOverrideNonOptional = describeEventSubscriptionsAsyncOverride {
            if let describeEventSubscriptionsAsyncOverrideTyped = describeEventSubscriptionsAsyncOverrideNonOptional
                    as? DescribeEventSubscriptionsAsyncType<InvocationReportingType> {
                return try describeEventSubscriptionsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeEventSubscriptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEventSubscriptionsMessage object being passed to this operation.
     - Returns: The EventSubscriptionsMessageForDescribeEventSubscriptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: subscriptionNotFound.
     */
    public func describeEventSubscriptionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeEventSubscriptionsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.EventSubscriptionsMessageForDescribeEventSubscriptions {
        if let describeEventSubscriptionsSyncOverrideNonOptional = describeEventSubscriptionsSyncOverride {
            if let describeEventSubscriptionsSyncOverrideTyped = describeEventSubscriptionsSyncOverrideNonOptional
                    as? DescribeEventSubscriptionsSyncType<InvocationReportingType> {
                return try describeEventSubscriptionsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeEvents operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEventsMessage object being passed to this operation.
         - completion: The EventsMessageForDescribeEvents object or an error will be passed to this 
           callback when the operation is complete. The EventsMessageForDescribeEvents
           object will be validated before being returned to caller.
     */
    public func describeEventsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeEventsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.EventsMessageForDescribeEvents, HTTPClientError>) -> ()) throws {
        if let describeEventsAsyncOverrideNonOptional = describeEventsAsyncOverride {
            if let describeEventsAsyncOverrideTyped = describeEventsAsyncOverrideNonOptional
                    as? DescribeEventsAsyncType<InvocationReportingType> {
                return try describeEventsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeEvents operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEventsMessage object being passed to this operation.
     - Returns: The EventsMessageForDescribeEvents object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeEventsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeEventsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.EventsMessageForDescribeEvents {
        if let describeEventsSyncOverrideNonOptional = describeEventsSyncOverride {
            if let describeEventsSyncOverrideTyped = describeEventsSyncOverrideNonOptional
                    as? DescribeEventsSyncType<InvocationReportingType> {
                return try describeEventsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeExportTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeExportTasksMessage object being passed to this operation.
         - completion: The ExportTasksMessageForDescribeExportTasks object or an error will be passed to this 
           callback when the operation is complete. The ExportTasksMessageForDescribeExportTasks
           object will be validated before being returned to caller.
           The possible errors are: exportTaskNotFound.
     */
    public func describeExportTasksAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeExportTasksMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ExportTasksMessageForDescribeExportTasks, HTTPClientError>) -> ()) throws {
        if let describeExportTasksAsyncOverrideNonOptional = describeExportTasksAsyncOverride {
            if let describeExportTasksAsyncOverrideTyped = describeExportTasksAsyncOverrideNonOptional
                    as? DescribeExportTasksAsyncType<InvocationReportingType> {
                return try describeExportTasksAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeExportTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeExportTasksMessage object being passed to this operation.
     - Returns: The ExportTasksMessageForDescribeExportTasks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: exportTaskNotFound.
     */
    public func describeExportTasksSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeExportTasksMessage,
            reporting: InvocationReportingType) throws -> RDSModel.ExportTasksMessageForDescribeExportTasks {
        if let describeExportTasksSyncOverrideNonOptional = describeExportTasksSyncOverride {
            if let describeExportTasksSyncOverrideTyped = describeExportTasksSyncOverrideNonOptional
                    as? DescribeExportTasksSyncType<InvocationReportingType> {
                return try describeExportTasksSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeGlobalClusters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeGlobalClustersMessage object being passed to this operation.
         - completion: The GlobalClustersMessageForDescribeGlobalClusters object or an error will be passed to this 
           callback when the operation is complete. The GlobalClustersMessageForDescribeGlobalClusters
           object will be validated before being returned to caller.
           The possible errors are: globalClusterNotFound.
     */
    public func describeGlobalClustersAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeGlobalClustersMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.GlobalClustersMessageForDescribeGlobalClusters, HTTPClientError>) -> ()) throws {
        if let describeGlobalClustersAsyncOverrideNonOptional = describeGlobalClustersAsyncOverride {
            if let describeGlobalClustersAsyncOverrideTyped = describeGlobalClustersAsyncOverrideNonOptional
                    as? DescribeGlobalClustersAsyncType<InvocationReportingType> {
                return try describeGlobalClustersAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeGlobalClusters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeGlobalClustersMessage object being passed to this operation.
     - Returns: The GlobalClustersMessageForDescribeGlobalClusters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalClusterNotFound.
     */
    public func describeGlobalClustersSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeGlobalClustersMessage,
            reporting: InvocationReportingType) throws -> RDSModel.GlobalClustersMessageForDescribeGlobalClusters {
        if let describeGlobalClustersSyncOverrideNonOptional = describeGlobalClustersSyncOverride {
            if let describeGlobalClustersSyncOverrideTyped = describeGlobalClustersSyncOverrideNonOptional
                    as? DescribeGlobalClustersSyncType<InvocationReportingType> {
                return try describeGlobalClustersSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeInstallationMedia operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInstallationMediaMessage object being passed to this operation.
         - completion: The InstallationMediaMessageForDescribeInstallationMedia object or an error will be passed to this 
           callback when the operation is complete. The InstallationMediaMessageForDescribeInstallationMedia
           object will be validated before being returned to caller.
           The possible errors are: installationMediaNotFound.
     */
    public func describeInstallationMediaAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeInstallationMediaMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.InstallationMediaMessageForDescribeInstallationMedia, HTTPClientError>) -> ()) throws {
        if let describeInstallationMediaAsyncOverrideNonOptional = describeInstallationMediaAsyncOverride {
            if let describeInstallationMediaAsyncOverrideTyped = describeInstallationMediaAsyncOverrideNonOptional
                    as? DescribeInstallationMediaAsyncType<InvocationReportingType> {
                return try describeInstallationMediaAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeInstallationMedia operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInstallationMediaMessage object being passed to this operation.
     - Returns: The InstallationMediaMessageForDescribeInstallationMedia object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: installationMediaNotFound.
     */
    public func describeInstallationMediaSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeInstallationMediaMessage,
            reporting: InvocationReportingType) throws -> RDSModel.InstallationMediaMessageForDescribeInstallationMedia {
        if let describeInstallationMediaSyncOverrideNonOptional = describeInstallationMediaSyncOverride {
            if let describeInstallationMediaSyncOverrideTyped = describeInstallationMediaSyncOverrideNonOptional
                    as? DescribeInstallationMediaSyncType<InvocationReportingType> {
                return try describeInstallationMediaSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeOptionGroupOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeOptionGroupOptionsMessage object being passed to this operation.
         - completion: The OptionGroupOptionsMessageForDescribeOptionGroupOptions object or an error will be passed to this 
           callback when the operation is complete. The OptionGroupOptionsMessageForDescribeOptionGroupOptions
           object will be validated before being returned to caller.
     */
    public func describeOptionGroupOptionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeOptionGroupOptionsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.OptionGroupOptionsMessageForDescribeOptionGroupOptions, HTTPClientError>) -> ()) throws {
        if let describeOptionGroupOptionsAsyncOverrideNonOptional = describeOptionGroupOptionsAsyncOverride {
            if let describeOptionGroupOptionsAsyncOverrideTyped = describeOptionGroupOptionsAsyncOverrideNonOptional
                    as? DescribeOptionGroupOptionsAsyncType<InvocationReportingType> {
                return try describeOptionGroupOptionsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeOptionGroupOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeOptionGroupOptionsMessage object being passed to this operation.
     - Returns: The OptionGroupOptionsMessageForDescribeOptionGroupOptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeOptionGroupOptionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeOptionGroupOptionsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.OptionGroupOptionsMessageForDescribeOptionGroupOptions {
        if let describeOptionGroupOptionsSyncOverrideNonOptional = describeOptionGroupOptionsSyncOverride {
            if let describeOptionGroupOptionsSyncOverrideTyped = describeOptionGroupOptionsSyncOverrideNonOptional
                    as? DescribeOptionGroupOptionsSyncType<InvocationReportingType> {
                return try describeOptionGroupOptionsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeOptionGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeOptionGroupsMessage object being passed to this operation.
         - completion: The OptionGroupsForDescribeOptionGroups object or an error will be passed to this 
           callback when the operation is complete. The OptionGroupsForDescribeOptionGroups
           object will be validated before being returned to caller.
           The possible errors are: optionGroupNotFound.
     */
    public func describeOptionGroupsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeOptionGroupsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.OptionGroupsForDescribeOptionGroups, HTTPClientError>) -> ()) throws {
        if let describeOptionGroupsAsyncOverrideNonOptional = describeOptionGroupsAsyncOverride {
            if let describeOptionGroupsAsyncOverrideTyped = describeOptionGroupsAsyncOverrideNonOptional
                    as? DescribeOptionGroupsAsyncType<InvocationReportingType> {
                return try describeOptionGroupsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeOptionGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeOptionGroupsMessage object being passed to this operation.
     - Returns: The OptionGroupsForDescribeOptionGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: optionGroupNotFound.
     */
    public func describeOptionGroupsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeOptionGroupsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.OptionGroupsForDescribeOptionGroups {
        if let describeOptionGroupsSyncOverrideNonOptional = describeOptionGroupsSyncOverride {
            if let describeOptionGroupsSyncOverrideTyped = describeOptionGroupsSyncOverrideNonOptional
                    as? DescribeOptionGroupsSyncType<InvocationReportingType> {
                return try describeOptionGroupsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeOrderableDBInstanceOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeOrderableDBInstanceOptionsMessage object being passed to this operation.
         - completion: The OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions object or an error will be passed to this 
           callback when the operation is complete. The OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions
           object will be validated before being returned to caller.
     */
    public func describeOrderableDBInstanceOptionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeOrderableDBInstanceOptionsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions, HTTPClientError>) -> ()) throws {
        if let describeOrderableDBInstanceOptionsAsyncOverrideNonOptional = describeOrderableDBInstanceOptionsAsyncOverride {
            if let describeOrderableDBInstanceOptionsAsyncOverrideTyped = describeOrderableDBInstanceOptionsAsyncOverrideNonOptional
                    as? DescribeOrderableDBInstanceOptionsAsyncType<InvocationReportingType> {
                return try describeOrderableDBInstanceOptionsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeOrderableDBInstanceOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeOrderableDBInstanceOptionsMessage object being passed to this operation.
     - Returns: The OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeOrderableDBInstanceOptionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeOrderableDBInstanceOptionsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions {
        if let describeOrderableDBInstanceOptionsSyncOverrideNonOptional = describeOrderableDBInstanceOptionsSyncOverride {
            if let describeOrderableDBInstanceOptionsSyncOverrideTyped = describeOrderableDBInstanceOptionsSyncOverrideNonOptional
                    as? DescribeOrderableDBInstanceOptionsSyncType<InvocationReportingType> {
                return try describeOrderableDBInstanceOptionsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribePendingMaintenanceActions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribePendingMaintenanceActionsMessage object being passed to this operation.
         - completion: The PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions object or an error will be passed to this 
           callback when the operation is complete. The PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions
           object will be validated before being returned to caller.
           The possible errors are: resourceNotFound.
     */
    public func describePendingMaintenanceActionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribePendingMaintenanceActionsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions, HTTPClientError>) -> ()) throws {
        if let describePendingMaintenanceActionsAsyncOverrideNonOptional = describePendingMaintenanceActionsAsyncOverride {
            if let describePendingMaintenanceActionsAsyncOverrideTyped = describePendingMaintenanceActionsAsyncOverrideNonOptional
                    as? DescribePendingMaintenanceActionsAsyncType<InvocationReportingType> {
                return try describePendingMaintenanceActionsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribePendingMaintenanceActions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribePendingMaintenanceActionsMessage object being passed to this operation.
     - Returns: The PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: resourceNotFound.
     */
    public func describePendingMaintenanceActionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribePendingMaintenanceActionsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions {
        if let describePendingMaintenanceActionsSyncOverrideNonOptional = describePendingMaintenanceActionsSyncOverride {
            if let describePendingMaintenanceActionsSyncOverrideTyped = describePendingMaintenanceActionsSyncOverrideNonOptional
                    as? DescribePendingMaintenanceActionsSyncType<InvocationReportingType> {
                return try describePendingMaintenanceActionsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeReservedDBInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesMessage object being passed to this operation.
         - completion: The ReservedDBInstanceMessageForDescribeReservedDBInstances object or an error will be passed to this 
           callback when the operation is complete. The ReservedDBInstanceMessageForDescribeReservedDBInstances
           object will be validated before being returned to caller.
           The possible errors are: reservedDBInstanceNotFound.
     */
    public func describeReservedDBInstancesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeReservedDBInstancesMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ReservedDBInstanceMessageForDescribeReservedDBInstances, HTTPClientError>) -> ()) throws {
        if let describeReservedDBInstancesAsyncOverrideNonOptional = describeReservedDBInstancesAsyncOverride {
            if let describeReservedDBInstancesAsyncOverrideTyped = describeReservedDBInstancesAsyncOverrideNonOptional
                    as? DescribeReservedDBInstancesAsyncType<InvocationReportingType> {
                return try describeReservedDBInstancesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeReservedDBInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesMessage object being passed to this operation.
     - Returns: The ReservedDBInstanceMessageForDescribeReservedDBInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: reservedDBInstanceNotFound.
     */
    public func describeReservedDBInstancesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeReservedDBInstancesMessage,
            reporting: InvocationReportingType) throws -> RDSModel.ReservedDBInstanceMessageForDescribeReservedDBInstances {
        if let describeReservedDBInstancesSyncOverrideNonOptional = describeReservedDBInstancesSyncOverride {
            if let describeReservedDBInstancesSyncOverrideTyped = describeReservedDBInstancesSyncOverrideNonOptional
                    as? DescribeReservedDBInstancesSyncType<InvocationReportingType> {
                return try describeReservedDBInstancesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeReservedDBInstancesOfferings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesOfferingsMessage object being passed to this operation.
         - completion: The ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings object or an error will be passed to this 
           callback when the operation is complete. The ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings
           object will be validated before being returned to caller.
           The possible errors are: reservedDBInstancesOfferingNotFound.
     */
    public func describeReservedDBInstancesOfferingsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeReservedDBInstancesOfferingsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings, HTTPClientError>) -> ()) throws {
        if let describeReservedDBInstancesOfferingsAsyncOverrideNonOptional = describeReservedDBInstancesOfferingsAsyncOverride {
            if let describeReservedDBInstancesOfferingsAsyncOverrideTyped = describeReservedDBInstancesOfferingsAsyncOverrideNonOptional
                    as? DescribeReservedDBInstancesOfferingsAsyncType<InvocationReportingType> {
                return try describeReservedDBInstancesOfferingsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeReservedDBInstancesOfferings operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesOfferingsMessage object being passed to this operation.
     - Returns: The ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: reservedDBInstancesOfferingNotFound.
     */
    public func describeReservedDBInstancesOfferingsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeReservedDBInstancesOfferingsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings {
        if let describeReservedDBInstancesOfferingsSyncOverrideNonOptional = describeReservedDBInstancesOfferingsSyncOverride {
            if let describeReservedDBInstancesOfferingsSyncOverrideTyped = describeReservedDBInstancesOfferingsSyncOverrideNonOptional
                    as? DescribeReservedDBInstancesOfferingsSyncType<InvocationReportingType> {
                return try describeReservedDBInstancesOfferingsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeSourceRegions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSourceRegionsMessage object being passed to this operation.
         - completion: The SourceRegionMessageForDescribeSourceRegions object or an error will be passed to this 
           callback when the operation is complete. The SourceRegionMessageForDescribeSourceRegions
           object will be validated before being returned to caller.
     */
    public func describeSourceRegionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeSourceRegionsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.SourceRegionMessageForDescribeSourceRegions, HTTPClientError>) -> ()) throws {
        if let describeSourceRegionsAsyncOverrideNonOptional = describeSourceRegionsAsyncOverride {
            if let describeSourceRegionsAsyncOverrideTyped = describeSourceRegionsAsyncOverrideNonOptional
                    as? DescribeSourceRegionsAsyncType<InvocationReportingType> {
                return try describeSourceRegionsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeSourceRegions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSourceRegionsMessage object being passed to this operation.
     - Returns: The SourceRegionMessageForDescribeSourceRegions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSourceRegionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeSourceRegionsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.SourceRegionMessageForDescribeSourceRegions {
        if let describeSourceRegionsSyncOverrideNonOptional = describeSourceRegionsSyncOverride {
            if let describeSourceRegionsSyncOverrideTyped = describeSourceRegionsSyncOverrideNonOptional
                    as? DescribeSourceRegionsSyncType<InvocationReportingType> {
                return try describeSourceRegionsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeValidDBInstanceModifications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeValidDBInstanceModificationsMessage object being passed to this operation.
         - completion: The DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications object or an error will be passed to this 
           callback when the operation is complete. The DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, invalidDBInstanceState.
     */
    public func describeValidDBInstanceModificationsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeValidDBInstanceModificationsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications, HTTPClientError>) -> ()) throws {
        if let describeValidDBInstanceModificationsAsyncOverrideNonOptional = describeValidDBInstanceModificationsAsyncOverride {
            if let describeValidDBInstanceModificationsAsyncOverrideTyped = describeValidDBInstanceModificationsAsyncOverrideNonOptional
                    as? DescribeValidDBInstanceModificationsAsyncType<InvocationReportingType> {
                return try describeValidDBInstanceModificationsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeValidDBInstanceModifications operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeValidDBInstanceModificationsMessage object being passed to this operation.
     - Returns: The DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    public func describeValidDBInstanceModificationsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeValidDBInstanceModificationsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications {
        if let describeValidDBInstanceModificationsSyncOverrideNonOptional = describeValidDBInstanceModificationsSyncOverride {
            if let describeValidDBInstanceModificationsSyncOverrideTyped = describeValidDBInstanceModificationsSyncOverrideNonOptional
                    as? DescribeValidDBInstanceModificationsSyncType<InvocationReportingType> {
                return try describeValidDBInstanceModificationsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DownloadDBLogFilePortion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DownloadDBLogFilePortionMessage object being passed to this operation.
         - completion: The DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion object or an error will be passed to this 
           callback when the operation is complete. The DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, dBLogFileNotFound.
     */
    public func downloadDBLogFilePortionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DownloadDBLogFilePortionMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion, HTTPClientError>) -> ()) throws {
        if let downloadDBLogFilePortionAsyncOverrideNonOptional = downloadDBLogFilePortionAsyncOverride {
            if let downloadDBLogFilePortionAsyncOverrideTyped = downloadDBLogFilePortionAsyncOverrideNonOptional
                    as? DownloadDBLogFilePortionAsyncType<InvocationReportingType> {
                return try downloadDBLogFilePortionAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DownloadDBLogFilePortion operation waiting for the response before returning.

     - Parameters:
         - input: The validated DownloadDBLogFilePortionMessage object being passed to this operation.
     - Returns: The DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, dBLogFileNotFound.
     */
    public func downloadDBLogFilePortionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DownloadDBLogFilePortionMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion {
        if let downloadDBLogFilePortionSyncOverrideNonOptional = downloadDBLogFilePortionSyncOverride {
            if let downloadDBLogFilePortionSyncOverrideTyped = downloadDBLogFilePortionSyncOverrideNonOptional
                    as? DownloadDBLogFilePortionSyncType<InvocationReportingType> {
                return try downloadDBLogFilePortionSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the FailoverDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated FailoverDBClusterMessage object being passed to this operation.
         - completion: The FailoverDBClusterResultForFailoverDBCluster object or an error will be passed to this 
           callback when the operation is complete. The FailoverDBClusterResultForFailoverDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func failoverDBClusterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.FailoverDBClusterMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.FailoverDBClusterResultForFailoverDBCluster, HTTPClientError>) -> ()) throws {
        if let failoverDBClusterAsyncOverrideNonOptional = failoverDBClusterAsyncOverride {
            if let failoverDBClusterAsyncOverrideTyped = failoverDBClusterAsyncOverrideNonOptional
                    as? FailoverDBClusterAsyncType<InvocationReportingType> {
                return try failoverDBClusterAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the FailoverDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated FailoverDBClusterMessage object being passed to this operation.
     - Returns: The FailoverDBClusterResultForFailoverDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func failoverDBClusterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.FailoverDBClusterMessage,
            reporting: InvocationReportingType) throws -> RDSModel.FailoverDBClusterResultForFailoverDBCluster {
        if let failoverDBClusterSyncOverrideNonOptional = failoverDBClusterSyncOverride {
            if let failoverDBClusterSyncOverrideTyped = failoverDBClusterSyncOverrideNonOptional
                    as? FailoverDBClusterSyncType<InvocationReportingType> {
                return try failoverDBClusterSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ImportInstallationMedia operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportInstallationMediaMessage object being passed to this operation.
         - completion: The InstallationMediaForImportInstallationMedia object or an error will be passed to this 
           callback when the operation is complete. The InstallationMediaForImportInstallationMedia
           object will be validated before being returned to caller.
           The possible errors are: customAvailabilityZoneNotFound, installationMediaAlreadyExists.
     */
    public func importInstallationMediaAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ImportInstallationMediaMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.InstallationMediaForImportInstallationMedia, HTTPClientError>) -> ()) throws {
        if let importInstallationMediaAsyncOverrideNonOptional = importInstallationMediaAsyncOverride {
            if let importInstallationMediaAsyncOverrideTyped = importInstallationMediaAsyncOverrideNonOptional
                    as? ImportInstallationMediaAsyncType<InvocationReportingType> {
                return try importInstallationMediaAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ImportInstallationMedia operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportInstallationMediaMessage object being passed to this operation.
     - Returns: The InstallationMediaForImportInstallationMedia object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: customAvailabilityZoneNotFound, installationMediaAlreadyExists.
     */
    public func importInstallationMediaSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ImportInstallationMediaMessage,
            reporting: InvocationReportingType) throws -> RDSModel.InstallationMediaForImportInstallationMedia {
        if let importInstallationMediaSyncOverrideNonOptional = importInstallationMediaSyncOverride {
            if let importInstallationMediaSyncOverrideTyped = importInstallationMediaSyncOverrideNonOptional
                    as? ImportInstallationMediaSyncType<InvocationReportingType> {
                return try importInstallationMediaSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceMessage object being passed to this operation.
         - completion: The TagListMessageForListTagsForResource object or an error will be passed to this 
           callback when the operation is complete. The TagListMessageForListTagsForResource
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    public func listTagsForResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ListTagsForResourceMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.TagListMessageForListTagsForResource, HTTPClientError>) -> ()) throws {
        if let listTagsForResourceAsyncOverrideNonOptional = listTagsForResourceAsyncOverride {
            if let listTagsForResourceAsyncOverrideTyped = listTagsForResourceAsyncOverrideNonOptional
                    as? ListTagsForResourceAsyncType<InvocationReportingType> {
                return try listTagsForResourceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceMessage object being passed to this operation.
     - Returns: The TagListMessageForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    public func listTagsForResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ListTagsForResourceMessage,
            reporting: InvocationReportingType) throws -> RDSModel.TagListMessageForListTagsForResource {
        if let listTagsForResourceSyncOverrideNonOptional = listTagsForResourceSyncOverride {
            if let listTagsForResourceSyncOverrideTyped = listTagsForResourceSyncOverrideNonOptional
                    as? ListTagsForResourceSyncType<InvocationReportingType> {
                return try listTagsForResourceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ModifyCertificates operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyCertificatesMessage object being passed to this operation.
         - completion: The ModifyCertificatesResultForModifyCertificates object or an error will be passed to this 
           callback when the operation is complete. The ModifyCertificatesResultForModifyCertificates
           object will be validated before being returned to caller.
           The possible errors are: certificateNotFound.
     */
    public func modifyCertificatesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyCertificatesMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ModifyCertificatesResultForModifyCertificates, HTTPClientError>) -> ()) throws {
        if let modifyCertificatesAsyncOverrideNonOptional = modifyCertificatesAsyncOverride {
            if let modifyCertificatesAsyncOverrideTyped = modifyCertificatesAsyncOverrideNonOptional
                    as? ModifyCertificatesAsyncType<InvocationReportingType> {
                return try modifyCertificatesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyCertificates operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyCertificatesMessage object being passed to this operation.
     - Returns: The ModifyCertificatesResultForModifyCertificates object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: certificateNotFound.
     */
    public func modifyCertificatesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyCertificatesMessage,
            reporting: InvocationReportingType) throws -> RDSModel.ModifyCertificatesResultForModifyCertificates {
        if let modifyCertificatesSyncOverrideNonOptional = modifyCertificatesSyncOverride {
            if let modifyCertificatesSyncOverrideTyped = modifyCertificatesSyncOverrideNonOptional
                    as? ModifyCertificatesSyncType<InvocationReportingType> {
                return try modifyCertificatesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ModifyCurrentDBClusterCapacity operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyCurrentDBClusterCapacityMessage object being passed to this operation.
         - completion: The DBClusterCapacityInfoForModifyCurrentDBClusterCapacity object or an error will be passed to this 
           callback when the operation is complete. The DBClusterCapacityInfoForModifyCurrentDBClusterCapacity
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterCapacity, invalidDBClusterState.
     */
    public func modifyCurrentDBClusterCapacityAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyCurrentDBClusterCapacityMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBClusterCapacityInfoForModifyCurrentDBClusterCapacity, HTTPClientError>) -> ()) throws {
        if let modifyCurrentDBClusterCapacityAsyncOverrideNonOptional = modifyCurrentDBClusterCapacityAsyncOverride {
            if let modifyCurrentDBClusterCapacityAsyncOverrideTyped = modifyCurrentDBClusterCapacityAsyncOverrideNonOptional
                    as? ModifyCurrentDBClusterCapacityAsyncType<InvocationReportingType> {
                return try modifyCurrentDBClusterCapacityAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyCurrentDBClusterCapacity operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyCurrentDBClusterCapacityMessage object being passed to this operation.
     - Returns: The DBClusterCapacityInfoForModifyCurrentDBClusterCapacity object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterCapacity, invalidDBClusterState.
     */
    public func modifyCurrentDBClusterCapacitySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyCurrentDBClusterCapacityMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBClusterCapacityInfoForModifyCurrentDBClusterCapacity {
        if let modifyCurrentDBClusterCapacitySyncOverrideNonOptional = modifyCurrentDBClusterCapacitySyncOverride {
            if let modifyCurrentDBClusterCapacitySyncOverrideTyped = modifyCurrentDBClusterCapacitySyncOverrideNonOptional
                    as? ModifyCurrentDBClusterCapacitySyncType<InvocationReportingType> {
                return try modifyCurrentDBClusterCapacitySyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ModifyDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBClusterMessage object being passed to this operation.
         - completion: The ModifyDBClusterResultForModifyDBCluster object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBClusterResultForModifyDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBSubnetGroupNotFound, domainNotFound, invalidDBClusterState, invalidDBInstanceState, invalidDBSecurityGroupState, invalidDBSubnetGroupState, invalidSubnet, invalidVPCNetworkState, storageQuotaExceeded.
     */
    public func modifyDBClusterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBClusterMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ModifyDBClusterResultForModifyDBCluster, HTTPClientError>) -> ()) throws {
        if let modifyDBClusterAsyncOverrideNonOptional = modifyDBClusterAsyncOverride {
            if let modifyDBClusterAsyncOverrideTyped = modifyDBClusterAsyncOverrideNonOptional
                    as? ModifyDBClusterAsyncType<InvocationReportingType> {
                return try modifyDBClusterAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBClusterMessage object being passed to this operation.
     - Returns: The ModifyDBClusterResultForModifyDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBSubnetGroupNotFound, domainNotFound, invalidDBClusterState, invalidDBInstanceState, invalidDBSecurityGroupState, invalidDBSubnetGroupState, invalidSubnet, invalidVPCNetworkState, storageQuotaExceeded.
     */
    public func modifyDBClusterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBClusterMessage,
            reporting: InvocationReportingType) throws -> RDSModel.ModifyDBClusterResultForModifyDBCluster {
        if let modifyDBClusterSyncOverrideNonOptional = modifyDBClusterSyncOverride {
            if let modifyDBClusterSyncOverrideTyped = modifyDBClusterSyncOverrideNonOptional
                    as? ModifyDBClusterSyncType<InvocationReportingType> {
                return try modifyDBClusterSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ModifyDBClusterEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBClusterEndpointMessage object being passed to this operation.
         - completion: The DBClusterEndpointForModifyDBClusterEndpoint object or an error will be passed to this 
           callback when the operation is complete. The DBClusterEndpointForModifyDBClusterEndpoint
           object will be validated before being returned to caller.
           The possible errors are: dBClusterEndpointNotFound, dBInstanceNotFound, invalidDBClusterEndpointState, invalidDBClusterState, invalidDBInstanceState.
     */
    public func modifyDBClusterEndpointAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBClusterEndpointMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBClusterEndpointForModifyDBClusterEndpoint, HTTPClientError>) -> ()) throws {
        if let modifyDBClusterEndpointAsyncOverrideNonOptional = modifyDBClusterEndpointAsyncOverride {
            if let modifyDBClusterEndpointAsyncOverrideTyped = modifyDBClusterEndpointAsyncOverrideNonOptional
                    as? ModifyDBClusterEndpointAsyncType<InvocationReportingType> {
                return try modifyDBClusterEndpointAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyDBClusterEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBClusterEndpointMessage object being passed to this operation.
     - Returns: The DBClusterEndpointForModifyDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterEndpointNotFound, dBInstanceNotFound, invalidDBClusterEndpointState, invalidDBClusterState, invalidDBInstanceState.
     */
    public func modifyDBClusterEndpointSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBClusterEndpointMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBClusterEndpointForModifyDBClusterEndpoint {
        if let modifyDBClusterEndpointSyncOverrideNonOptional = modifyDBClusterEndpointSyncOverride {
            if let modifyDBClusterEndpointSyncOverrideTyped = modifyDBClusterEndpointSyncOverrideNonOptional
                    as? ModifyDBClusterEndpointSyncType<InvocationReportingType> {
                return try modifyDBClusterEndpointSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ModifyDBClusterParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBClusterParameterGroupMessage object being passed to this operation.
         - completion: The DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func modifyDBClusterParameterGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBClusterParameterGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup, HTTPClientError>) -> ()) throws {
        if let modifyDBClusterParameterGroupAsyncOverrideNonOptional = modifyDBClusterParameterGroupAsyncOverride {
            if let modifyDBClusterParameterGroupAsyncOverrideTyped = modifyDBClusterParameterGroupAsyncOverrideNonOptional
                    as? ModifyDBClusterParameterGroupAsyncType<InvocationReportingType> {
                return try modifyDBClusterParameterGroupAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func modifyDBClusterParameterGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBClusterParameterGroupMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup {
        if let modifyDBClusterParameterGroupSyncOverrideNonOptional = modifyDBClusterParameterGroupSyncOverride {
            if let modifyDBClusterParameterGroupSyncOverrideTyped = modifyDBClusterParameterGroupSyncOverrideNonOptional
                    as? ModifyDBClusterParameterGroupSyncType<InvocationReportingType> {
                return try modifyDBClusterParameterGroupSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ModifyDBClusterSnapshotAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBClusterSnapshotAttributeMessage object being passed to this operation.
         - completion: The ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute
           object will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, sharedSnapshotQuotaExceeded.
     */
    public func modifyDBClusterSnapshotAttributeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBClusterSnapshotAttributeMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute, HTTPClientError>) -> ()) throws {
        if let modifyDBClusterSnapshotAttributeAsyncOverrideNonOptional = modifyDBClusterSnapshotAttributeAsyncOverride {
            if let modifyDBClusterSnapshotAttributeAsyncOverrideTyped = modifyDBClusterSnapshotAttributeAsyncOverrideNonOptional
                    as? ModifyDBClusterSnapshotAttributeAsyncType<InvocationReportingType> {
                return try modifyDBClusterSnapshotAttributeAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyDBClusterSnapshotAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBClusterSnapshotAttributeMessage object being passed to this operation.
     - Returns: The ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, sharedSnapshotQuotaExceeded.
     */
    public func modifyDBClusterSnapshotAttributeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBClusterSnapshotAttributeMessage,
            reporting: InvocationReportingType) throws -> RDSModel.ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute {
        if let modifyDBClusterSnapshotAttributeSyncOverrideNonOptional = modifyDBClusterSnapshotAttributeSyncOverride {
            if let modifyDBClusterSnapshotAttributeSyncOverrideTyped = modifyDBClusterSnapshotAttributeSyncOverrideNonOptional
                    as? ModifyDBClusterSnapshotAttributeSyncType<InvocationReportingType> {
                return try modifyDBClusterSnapshotAttributeSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ModifyDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBInstanceMessage object being passed to this operation.
         - completion: The ModifyDBInstanceResultForModifyDBInstance object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBInstanceResultForModifyDBInstance
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, certificateNotFound, dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBUpgradeDependencyFailure, domainNotFound, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSecurityGroupState, invalidVPCNetworkState, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func modifyDBInstanceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBInstanceMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ModifyDBInstanceResultForModifyDBInstance, HTTPClientError>) -> ()) throws {
        if let modifyDBInstanceAsyncOverrideNonOptional = modifyDBInstanceAsyncOverride {
            if let modifyDBInstanceAsyncOverrideTyped = modifyDBInstanceAsyncOverrideNonOptional
                    as? ModifyDBInstanceAsyncType<InvocationReportingType> {
                return try modifyDBInstanceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBInstanceMessage object being passed to this operation.
     - Returns: The ModifyDBInstanceResultForModifyDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, certificateNotFound, dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBUpgradeDependencyFailure, domainNotFound, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSecurityGroupState, invalidVPCNetworkState, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func modifyDBInstanceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBInstanceMessage,
            reporting: InvocationReportingType) throws -> RDSModel.ModifyDBInstanceResultForModifyDBInstance {
        if let modifyDBInstanceSyncOverrideNonOptional = modifyDBInstanceSyncOverride {
            if let modifyDBInstanceSyncOverrideTyped = modifyDBInstanceSyncOverrideNonOptional
                    as? ModifyDBInstanceSyncType<InvocationReportingType> {
                return try modifyDBInstanceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ModifyDBParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBParameterGroupMessage object being passed to this operation.
         - completion: The DBParameterGroupNameMessageForModifyDBParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The DBParameterGroupNameMessageForModifyDBParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func modifyDBParameterGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBParameterGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBParameterGroupNameMessageForModifyDBParameterGroup, HTTPClientError>) -> ()) throws {
        if let modifyDBParameterGroupAsyncOverrideNonOptional = modifyDBParameterGroupAsyncOverride {
            if let modifyDBParameterGroupAsyncOverrideTyped = modifyDBParameterGroupAsyncOverrideNonOptional
                    as? ModifyDBParameterGroupAsyncType<InvocationReportingType> {
                return try modifyDBParameterGroupAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBParameterGroupMessage object being passed to this operation.
     - Returns: The DBParameterGroupNameMessageForModifyDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func modifyDBParameterGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBParameterGroupMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBParameterGroupNameMessageForModifyDBParameterGroup {
        if let modifyDBParameterGroupSyncOverrideNonOptional = modifyDBParameterGroupSyncOverride {
            if let modifyDBParameterGroupSyncOverrideTyped = modifyDBParameterGroupSyncOverrideNonOptional
                    as? ModifyDBParameterGroupSyncType<InvocationReportingType> {
                return try modifyDBParameterGroupSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ModifyDBProxy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBProxyRequest object being passed to this operation.
         - completion: The ModifyDBProxyResponseForModifyDBProxy object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBProxyResponseForModifyDBProxy
           object will be validated before being returned to caller.
           The possible errors are: dBProxyAlreadyExists, dBProxyNotFound, invalidDBProxyState.
     */
    public func modifyDBProxyAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBProxyRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ModifyDBProxyResponseForModifyDBProxy, HTTPClientError>) -> ()) throws {
        if let modifyDBProxyAsyncOverrideNonOptional = modifyDBProxyAsyncOverride {
            if let modifyDBProxyAsyncOverrideTyped = modifyDBProxyAsyncOverrideNonOptional
                    as? ModifyDBProxyAsyncType<InvocationReportingType> {
                return try modifyDBProxyAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyDBProxy operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBProxyRequest object being passed to this operation.
     - Returns: The ModifyDBProxyResponseForModifyDBProxy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyAlreadyExists, dBProxyNotFound, invalidDBProxyState.
     */
    public func modifyDBProxySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBProxyRequest,
            reporting: InvocationReportingType) throws -> RDSModel.ModifyDBProxyResponseForModifyDBProxy {
        if let modifyDBProxySyncOverrideNonOptional = modifyDBProxySyncOverride {
            if let modifyDBProxySyncOverrideTyped = modifyDBProxySyncOverrideNonOptional
                    as? ModifyDBProxySyncType<InvocationReportingType> {
                return try modifyDBProxySyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ModifyDBProxyTargetGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBProxyTargetGroupRequest object being passed to this operation.
         - completion: The ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup
           object will be validated before being returned to caller.
           The possible errors are: dBProxyNotFound, dBProxyTargetGroupNotFound.
     */
    public func modifyDBProxyTargetGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBProxyTargetGroupRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup, HTTPClientError>) -> ()) throws {
        if let modifyDBProxyTargetGroupAsyncOverrideNonOptional = modifyDBProxyTargetGroupAsyncOverride {
            if let modifyDBProxyTargetGroupAsyncOverrideTyped = modifyDBProxyTargetGroupAsyncOverrideNonOptional
                    as? ModifyDBProxyTargetGroupAsyncType<InvocationReportingType> {
                return try modifyDBProxyTargetGroupAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyDBProxyTargetGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBProxyTargetGroupRequest object being passed to this operation.
     - Returns: The ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound, dBProxyTargetGroupNotFound.
     */
    public func modifyDBProxyTargetGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBProxyTargetGroupRequest,
            reporting: InvocationReportingType) throws -> RDSModel.ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup {
        if let modifyDBProxyTargetGroupSyncOverrideNonOptional = modifyDBProxyTargetGroupSyncOverride {
            if let modifyDBProxyTargetGroupSyncOverrideTyped = modifyDBProxyTargetGroupSyncOverrideNonOptional
                    as? ModifyDBProxyTargetGroupSyncType<InvocationReportingType> {
                return try modifyDBProxyTargetGroupSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ModifyDBSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBSnapshotMessage object being passed to this operation.
         - completion: The ModifyDBSnapshotResultForModifyDBSnapshot object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBSnapshotResultForModifyDBSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound.
     */
    public func modifyDBSnapshotAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBSnapshotMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ModifyDBSnapshotResultForModifyDBSnapshot, HTTPClientError>) -> ()) throws {
        if let modifyDBSnapshotAsyncOverrideNonOptional = modifyDBSnapshotAsyncOverride {
            if let modifyDBSnapshotAsyncOverrideTyped = modifyDBSnapshotAsyncOverrideNonOptional
                    as? ModifyDBSnapshotAsyncType<InvocationReportingType> {
                return try modifyDBSnapshotAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBSnapshotMessage object being passed to this operation.
     - Returns: The ModifyDBSnapshotResultForModifyDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound.
     */
    public func modifyDBSnapshotSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBSnapshotMessage,
            reporting: InvocationReportingType) throws -> RDSModel.ModifyDBSnapshotResultForModifyDBSnapshot {
        if let modifyDBSnapshotSyncOverrideNonOptional = modifyDBSnapshotSyncOverride {
            if let modifyDBSnapshotSyncOverrideTyped = modifyDBSnapshotSyncOverrideNonOptional
                    as? ModifyDBSnapshotSyncType<InvocationReportingType> {
                return try modifyDBSnapshotSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ModifyDBSnapshotAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBSnapshotAttributeMessage object being passed to this operation.
         - completion: The ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute
           object will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound, invalidDBSnapshotState, sharedSnapshotQuotaExceeded.
     */
    public func modifyDBSnapshotAttributeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBSnapshotAttributeMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute, HTTPClientError>) -> ()) throws {
        if let modifyDBSnapshotAttributeAsyncOverrideNonOptional = modifyDBSnapshotAttributeAsyncOverride {
            if let modifyDBSnapshotAttributeAsyncOverrideTyped = modifyDBSnapshotAttributeAsyncOverrideNonOptional
                    as? ModifyDBSnapshotAttributeAsyncType<InvocationReportingType> {
                return try modifyDBSnapshotAttributeAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyDBSnapshotAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBSnapshotAttributeMessage object being passed to this operation.
     - Returns: The ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound, invalidDBSnapshotState, sharedSnapshotQuotaExceeded.
     */
    public func modifyDBSnapshotAttributeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBSnapshotAttributeMessage,
            reporting: InvocationReportingType) throws -> RDSModel.ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute {
        if let modifyDBSnapshotAttributeSyncOverrideNonOptional = modifyDBSnapshotAttributeSyncOverride {
            if let modifyDBSnapshotAttributeSyncOverrideTyped = modifyDBSnapshotAttributeSyncOverrideNonOptional
                    as? ModifyDBSnapshotAttributeSyncType<InvocationReportingType> {
                return try modifyDBSnapshotAttributeSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ModifyDBSubnetGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBSubnetGroupMessage object being passed to this operation.
         - completion: The ModifyDBSubnetGroupResultForModifyDBSubnetGroup object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBSubnetGroupResultForModifyDBSubnetGroup
           object will be validated before being returned to caller.
           The possible errors are: dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, dBSubnetQuotaExceeded, invalidSubnet, subnetAlreadyInUse.
     */
    public func modifyDBSubnetGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBSubnetGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ModifyDBSubnetGroupResultForModifyDBSubnetGroup, HTTPClientError>) -> ()) throws {
        if let modifyDBSubnetGroupAsyncOverrideNonOptional = modifyDBSubnetGroupAsyncOverride {
            if let modifyDBSubnetGroupAsyncOverrideTyped = modifyDBSubnetGroupAsyncOverrideNonOptional
                    as? ModifyDBSubnetGroupAsyncType<InvocationReportingType> {
                return try modifyDBSubnetGroupAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyDBSubnetGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBSubnetGroupMessage object being passed to this operation.
     - Returns: The ModifyDBSubnetGroupResultForModifyDBSubnetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, dBSubnetQuotaExceeded, invalidSubnet, subnetAlreadyInUse.
     */
    public func modifyDBSubnetGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBSubnetGroupMessage,
            reporting: InvocationReportingType) throws -> RDSModel.ModifyDBSubnetGroupResultForModifyDBSubnetGroup {
        if let modifyDBSubnetGroupSyncOverrideNonOptional = modifyDBSubnetGroupSyncOverride {
            if let modifyDBSubnetGroupSyncOverrideTyped = modifyDBSubnetGroupSyncOverrideNonOptional
                    as? ModifyDBSubnetGroupSyncType<InvocationReportingType> {
                return try modifyDBSubnetGroupSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ModifyEventSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyEventSubscriptionMessage object being passed to this operation.
         - completion: The ModifyEventSubscriptionResultForModifyEventSubscription object or an error will be passed to this 
           callback when the operation is complete. The ModifyEventSubscriptionResultForModifyEventSubscription
           object will be validated before being returned to caller.
           The possible errors are: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, subscriptionCategoryNotFound, subscriptionNotFound.
     */
    public func modifyEventSubscriptionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyEventSubscriptionMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ModifyEventSubscriptionResultForModifyEventSubscription, HTTPClientError>) -> ()) throws {
        if let modifyEventSubscriptionAsyncOverrideNonOptional = modifyEventSubscriptionAsyncOverride {
            if let modifyEventSubscriptionAsyncOverrideTyped = modifyEventSubscriptionAsyncOverrideNonOptional
                    as? ModifyEventSubscriptionAsyncType<InvocationReportingType> {
                return try modifyEventSubscriptionAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyEventSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyEventSubscriptionMessage object being passed to this operation.
     - Returns: The ModifyEventSubscriptionResultForModifyEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, subscriptionCategoryNotFound, subscriptionNotFound.
     */
    public func modifyEventSubscriptionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyEventSubscriptionMessage,
            reporting: InvocationReportingType) throws -> RDSModel.ModifyEventSubscriptionResultForModifyEventSubscription {
        if let modifyEventSubscriptionSyncOverrideNonOptional = modifyEventSubscriptionSyncOverride {
            if let modifyEventSubscriptionSyncOverrideTyped = modifyEventSubscriptionSyncOverrideNonOptional
                    as? ModifyEventSubscriptionSyncType<InvocationReportingType> {
                return try modifyEventSubscriptionSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ModifyGlobalCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyGlobalClusterMessage object being passed to this operation.
         - completion: The ModifyGlobalClusterResultForModifyGlobalCluster object or an error will be passed to this 
           callback when the operation is complete. The ModifyGlobalClusterResultForModifyGlobalCluster
           object will be validated before being returned to caller.
           The possible errors are: globalClusterNotFound, invalidGlobalClusterState.
     */
    public func modifyGlobalClusterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyGlobalClusterMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ModifyGlobalClusterResultForModifyGlobalCluster, HTTPClientError>) -> ()) throws {
        if let modifyGlobalClusterAsyncOverrideNonOptional = modifyGlobalClusterAsyncOverride {
            if let modifyGlobalClusterAsyncOverrideTyped = modifyGlobalClusterAsyncOverrideNonOptional
                    as? ModifyGlobalClusterAsyncType<InvocationReportingType> {
                return try modifyGlobalClusterAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyGlobalCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyGlobalClusterMessage object being passed to this operation.
     - Returns: The ModifyGlobalClusterResultForModifyGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalClusterNotFound, invalidGlobalClusterState.
     */
    public func modifyGlobalClusterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyGlobalClusterMessage,
            reporting: InvocationReportingType) throws -> RDSModel.ModifyGlobalClusterResultForModifyGlobalCluster {
        if let modifyGlobalClusterSyncOverrideNonOptional = modifyGlobalClusterSyncOverride {
            if let modifyGlobalClusterSyncOverrideTyped = modifyGlobalClusterSyncOverrideNonOptional
                    as? ModifyGlobalClusterSyncType<InvocationReportingType> {
                return try modifyGlobalClusterSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ModifyOptionGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyOptionGroupMessage object being passed to this operation.
         - completion: The ModifyOptionGroupResultForModifyOptionGroup object or an error will be passed to this 
           callback when the operation is complete. The ModifyOptionGroupResultForModifyOptionGroup
           object will be validated before being returned to caller.
           The possible errors are: invalidOptionGroupState, optionGroupNotFound.
     */
    public func modifyOptionGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyOptionGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ModifyOptionGroupResultForModifyOptionGroup, HTTPClientError>) -> ()) throws {
        if let modifyOptionGroupAsyncOverrideNonOptional = modifyOptionGroupAsyncOverride {
            if let modifyOptionGroupAsyncOverrideTyped = modifyOptionGroupAsyncOverrideNonOptional
                    as? ModifyOptionGroupAsyncType<InvocationReportingType> {
                return try modifyOptionGroupAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyOptionGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyOptionGroupMessage object being passed to this operation.
     - Returns: The ModifyOptionGroupResultForModifyOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOptionGroupState, optionGroupNotFound.
     */
    public func modifyOptionGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyOptionGroupMessage,
            reporting: InvocationReportingType) throws -> RDSModel.ModifyOptionGroupResultForModifyOptionGroup {
        if let modifyOptionGroupSyncOverrideNonOptional = modifyOptionGroupSyncOverride {
            if let modifyOptionGroupSyncOverrideTyped = modifyOptionGroupSyncOverrideNonOptional
                    as? ModifyOptionGroupSyncType<InvocationReportingType> {
                return try modifyOptionGroupSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the PromoteReadReplica operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PromoteReadReplicaMessage object being passed to this operation.
         - completion: The PromoteReadReplicaResultForPromoteReadReplica object or an error will be passed to this 
           callback when the operation is complete. The PromoteReadReplicaResultForPromoteReadReplica
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, invalidDBInstanceState.
     */
    public func promoteReadReplicaAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.PromoteReadReplicaMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.PromoteReadReplicaResultForPromoteReadReplica, HTTPClientError>) -> ()) throws {
        if let promoteReadReplicaAsyncOverrideNonOptional = promoteReadReplicaAsyncOverride {
            if let promoteReadReplicaAsyncOverrideTyped = promoteReadReplicaAsyncOverrideNonOptional
                    as? PromoteReadReplicaAsyncType<InvocationReportingType> {
                return try promoteReadReplicaAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the PromoteReadReplica operation waiting for the response before returning.

     - Parameters:
         - input: The validated PromoteReadReplicaMessage object being passed to this operation.
     - Returns: The PromoteReadReplicaResultForPromoteReadReplica object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    public func promoteReadReplicaSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.PromoteReadReplicaMessage,
            reporting: InvocationReportingType) throws -> RDSModel.PromoteReadReplicaResultForPromoteReadReplica {
        if let promoteReadReplicaSyncOverrideNonOptional = promoteReadReplicaSyncOverride {
            if let promoteReadReplicaSyncOverrideTyped = promoteReadReplicaSyncOverrideNonOptional
                    as? PromoteReadReplicaSyncType<InvocationReportingType> {
                return try promoteReadReplicaSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the PromoteReadReplicaDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PromoteReadReplicaDBClusterMessage object being passed to this operation.
         - completion: The PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster object or an error will be passed to this 
           callback when the operation is complete. The PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState.
     */
    public func promoteReadReplicaDBClusterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.PromoteReadReplicaDBClusterMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster, HTTPClientError>) -> ()) throws {
        if let promoteReadReplicaDBClusterAsyncOverrideNonOptional = promoteReadReplicaDBClusterAsyncOverride {
            if let promoteReadReplicaDBClusterAsyncOverrideTyped = promoteReadReplicaDBClusterAsyncOverrideNonOptional
                    as? PromoteReadReplicaDBClusterAsyncType<InvocationReportingType> {
                return try promoteReadReplicaDBClusterAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the PromoteReadReplicaDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated PromoteReadReplicaDBClusterMessage object being passed to this operation.
     - Returns: The PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState.
     */
    public func promoteReadReplicaDBClusterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.PromoteReadReplicaDBClusterMessage,
            reporting: InvocationReportingType) throws -> RDSModel.PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster {
        if let promoteReadReplicaDBClusterSyncOverrideNonOptional = promoteReadReplicaDBClusterSyncOverride {
            if let promoteReadReplicaDBClusterSyncOverrideTyped = promoteReadReplicaDBClusterSyncOverrideNonOptional
                    as? PromoteReadReplicaDBClusterSyncType<InvocationReportingType> {
                return try promoteReadReplicaDBClusterSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the PurchaseReservedDBInstancesOffering operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PurchaseReservedDBInstancesOfferingMessage object being passed to this operation.
         - completion: The PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering object or an error will be passed to this 
           callback when the operation is complete. The PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering
           object will be validated before being returned to caller.
           The possible errors are: reservedDBInstanceAlreadyExists, reservedDBInstanceQuotaExceeded, reservedDBInstancesOfferingNotFound.
     */
    public func purchaseReservedDBInstancesOfferingAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.PurchaseReservedDBInstancesOfferingMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering, HTTPClientError>) -> ()) throws {
        if let purchaseReservedDBInstancesOfferingAsyncOverrideNonOptional = purchaseReservedDBInstancesOfferingAsyncOverride {
            if let purchaseReservedDBInstancesOfferingAsyncOverrideTyped = purchaseReservedDBInstancesOfferingAsyncOverrideNonOptional
                    as? PurchaseReservedDBInstancesOfferingAsyncType<InvocationReportingType> {
                return try purchaseReservedDBInstancesOfferingAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the PurchaseReservedDBInstancesOffering operation waiting for the response before returning.

     - Parameters:
         - input: The validated PurchaseReservedDBInstancesOfferingMessage object being passed to this operation.
     - Returns: The PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: reservedDBInstanceAlreadyExists, reservedDBInstanceQuotaExceeded, reservedDBInstancesOfferingNotFound.
     */
    public func purchaseReservedDBInstancesOfferingSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.PurchaseReservedDBInstancesOfferingMessage,
            reporting: InvocationReportingType) throws -> RDSModel.PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering {
        if let purchaseReservedDBInstancesOfferingSyncOverrideNonOptional = purchaseReservedDBInstancesOfferingSyncOverride {
            if let purchaseReservedDBInstancesOfferingSyncOverrideTyped = purchaseReservedDBInstancesOfferingSyncOverrideNonOptional
                    as? PurchaseReservedDBInstancesOfferingSyncType<InvocationReportingType> {
                return try purchaseReservedDBInstancesOfferingSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the RebootDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RebootDBInstanceMessage object being passed to this operation.
         - completion: The RebootDBInstanceResultForRebootDBInstance object or an error will be passed to this 
           callback when the operation is complete. The RebootDBInstanceResultForRebootDBInstance
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, invalidDBInstanceState.
     */
    public func rebootDBInstanceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RebootDBInstanceMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.RebootDBInstanceResultForRebootDBInstance, HTTPClientError>) -> ()) throws {
        if let rebootDBInstanceAsyncOverrideNonOptional = rebootDBInstanceAsyncOverride {
            if let rebootDBInstanceAsyncOverrideTyped = rebootDBInstanceAsyncOverrideNonOptional
                    as? RebootDBInstanceAsyncType<InvocationReportingType> {
                return try rebootDBInstanceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the RebootDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated RebootDBInstanceMessage object being passed to this operation.
     - Returns: The RebootDBInstanceResultForRebootDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    public func rebootDBInstanceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RebootDBInstanceMessage,
            reporting: InvocationReportingType) throws -> RDSModel.RebootDBInstanceResultForRebootDBInstance {
        if let rebootDBInstanceSyncOverrideNonOptional = rebootDBInstanceSyncOverride {
            if let rebootDBInstanceSyncOverrideTyped = rebootDBInstanceSyncOverrideNonOptional
                    as? RebootDBInstanceSyncType<InvocationReportingType> {
                return try rebootDBInstanceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the RegisterDBProxyTargets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterDBProxyTargetsRequest object being passed to this operation.
         - completion: The RegisterDBProxyTargetsResponseForRegisterDBProxyTargets object or an error will be passed to this 
           callback when the operation is complete. The RegisterDBProxyTargetsResponseForRegisterDBProxyTargets
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetAlreadyRegistered, dBProxyTargetGroupNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func registerDBProxyTargetsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RegisterDBProxyTargetsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.RegisterDBProxyTargetsResponseForRegisterDBProxyTargets, HTTPClientError>) -> ()) throws {
        if let registerDBProxyTargetsAsyncOverrideNonOptional = registerDBProxyTargetsAsyncOverride {
            if let registerDBProxyTargetsAsyncOverrideTyped = registerDBProxyTargetsAsyncOverrideNonOptional
                    as? RegisterDBProxyTargetsAsyncType<InvocationReportingType> {
                return try registerDBProxyTargetsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the RegisterDBProxyTargets operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterDBProxyTargetsRequest object being passed to this operation.
     - Returns: The RegisterDBProxyTargetsResponseForRegisterDBProxyTargets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetAlreadyRegistered, dBProxyTargetGroupNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func registerDBProxyTargetsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RegisterDBProxyTargetsRequest,
            reporting: InvocationReportingType) throws -> RDSModel.RegisterDBProxyTargetsResponseForRegisterDBProxyTargets {
        if let registerDBProxyTargetsSyncOverrideNonOptional = registerDBProxyTargetsSyncOverride {
            if let registerDBProxyTargetsSyncOverrideTyped = registerDBProxyTargetsSyncOverrideNonOptional
                    as? RegisterDBProxyTargetsSyncType<InvocationReportingType> {
                return try registerDBProxyTargetsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the RemoveFromGlobalCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveFromGlobalClusterMessage object being passed to this operation.
         - completion: The RemoveFromGlobalClusterResultForRemoveFromGlobalCluster object or an error will be passed to this 
           callback when the operation is complete. The RemoveFromGlobalClusterResultForRemoveFromGlobalCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, globalClusterNotFound, invalidGlobalClusterState.
     */
    public func removeFromGlobalClusterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RemoveFromGlobalClusterMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.RemoveFromGlobalClusterResultForRemoveFromGlobalCluster, HTTPClientError>) -> ()) throws {
        if let removeFromGlobalClusterAsyncOverrideNonOptional = removeFromGlobalClusterAsyncOverride {
            if let removeFromGlobalClusterAsyncOverrideTyped = removeFromGlobalClusterAsyncOverrideNonOptional
                    as? RemoveFromGlobalClusterAsyncType<InvocationReportingType> {
                return try removeFromGlobalClusterAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the RemoveFromGlobalCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveFromGlobalClusterMessage object being passed to this operation.
     - Returns: The RemoveFromGlobalClusterResultForRemoveFromGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, globalClusterNotFound, invalidGlobalClusterState.
     */
    public func removeFromGlobalClusterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RemoveFromGlobalClusterMessage,
            reporting: InvocationReportingType) throws -> RDSModel.RemoveFromGlobalClusterResultForRemoveFromGlobalCluster {
        if let removeFromGlobalClusterSyncOverrideNonOptional = removeFromGlobalClusterSyncOverride {
            if let removeFromGlobalClusterSyncOverrideTyped = removeFromGlobalClusterSyncOverrideNonOptional
                    as? RemoveFromGlobalClusterSyncType<InvocationReportingType> {
                return try removeFromGlobalClusterSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the RemoveRoleFromDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveRoleFromDBClusterMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBClusterNotFound, dBClusterRoleNotFound, invalidDBClusterState.
     */
    public func removeRoleFromDBClusterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RemoveRoleFromDBClusterMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let removeRoleFromDBClusterAsyncOverrideNonOptional = removeRoleFromDBClusterAsyncOverride {
            if let removeRoleFromDBClusterAsyncOverrideTyped = removeRoleFromDBClusterAsyncOverrideNonOptional
                    as? RemoveRoleFromDBClusterAsyncType<InvocationReportingType> {
                return try removeRoleFromDBClusterAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the RemoveRoleFromDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveRoleFromDBClusterMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBClusterRoleNotFound, invalidDBClusterState.
     */
    public func removeRoleFromDBClusterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RemoveRoleFromDBClusterMessage,
            reporting: InvocationReportingType) throws {
        if let removeRoleFromDBClusterSyncOverrideNonOptional = removeRoleFromDBClusterSyncOverride {
            if let removeRoleFromDBClusterSyncOverrideTyped = removeRoleFromDBClusterSyncOverrideNonOptional
                    as? RemoveRoleFromDBClusterSyncType<InvocationReportingType> {
                return try removeRoleFromDBClusterSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the RemoveRoleFromDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveRoleFromDBInstanceMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBInstanceNotFound, dBInstanceRoleNotFound, invalidDBInstanceState.
     */
    public func removeRoleFromDBInstanceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RemoveRoleFromDBInstanceMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let removeRoleFromDBInstanceAsyncOverrideNonOptional = removeRoleFromDBInstanceAsyncOverride {
            if let removeRoleFromDBInstanceAsyncOverrideTyped = removeRoleFromDBInstanceAsyncOverrideNonOptional
                    as? RemoveRoleFromDBInstanceAsyncType<InvocationReportingType> {
                return try removeRoleFromDBInstanceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the RemoveRoleFromDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveRoleFromDBInstanceMessage object being passed to this operation.
     - Throws: dBInstanceNotFound, dBInstanceRoleNotFound, invalidDBInstanceState.
     */
    public func removeRoleFromDBInstanceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RemoveRoleFromDBInstanceMessage,
            reporting: InvocationReportingType) throws {
        if let removeRoleFromDBInstanceSyncOverrideNonOptional = removeRoleFromDBInstanceSyncOverride {
            if let removeRoleFromDBInstanceSyncOverrideTyped = removeRoleFromDBInstanceSyncOverrideNonOptional
                    as? RemoveRoleFromDBInstanceSyncType<InvocationReportingType> {
                return try removeRoleFromDBInstanceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the RemoveSourceIdentifierFromSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveSourceIdentifierFromSubscriptionMessage object being passed to this operation.
         - completion: The RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription object or an error will be passed to this 
           callback when the operation is complete. The RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription
           object will be validated before being returned to caller.
           The possible errors are: sourceNotFound, subscriptionNotFound.
     */
    public func removeSourceIdentifierFromSubscriptionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RemoveSourceIdentifierFromSubscriptionMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription, HTTPClientError>) -> ()) throws {
        if let removeSourceIdentifierFromSubscriptionAsyncOverrideNonOptional = removeSourceIdentifierFromSubscriptionAsyncOverride {
            if let removeSourceIdentifierFromSubscriptionAsyncOverrideTyped = removeSourceIdentifierFromSubscriptionAsyncOverrideNonOptional
                    as? RemoveSourceIdentifierFromSubscriptionAsyncType<InvocationReportingType> {
                return try removeSourceIdentifierFromSubscriptionAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the RemoveSourceIdentifierFromSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveSourceIdentifierFromSubscriptionMessage object being passed to this operation.
     - Returns: The RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: sourceNotFound, subscriptionNotFound.
     */
    public func removeSourceIdentifierFromSubscriptionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RemoveSourceIdentifierFromSubscriptionMessage,
            reporting: InvocationReportingType) throws -> RDSModel.RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription {
        if let removeSourceIdentifierFromSubscriptionSyncOverrideNonOptional = removeSourceIdentifierFromSubscriptionSyncOverride {
            if let removeSourceIdentifierFromSubscriptionSyncOverrideTyped = removeSourceIdentifierFromSubscriptionSyncOverrideNonOptional
                    as? RemoveSourceIdentifierFromSubscriptionSyncType<InvocationReportingType> {
                return try removeSourceIdentifierFromSubscriptionSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the RemoveTagsFromResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveTagsFromResourceMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    public func removeTagsFromResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RemoveTagsFromResourceMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let removeTagsFromResourceAsyncOverrideNonOptional = removeTagsFromResourceAsyncOverride {
            if let removeTagsFromResourceAsyncOverrideTyped = removeTagsFromResourceAsyncOverrideNonOptional
                    as? RemoveTagsFromResourceAsyncType<InvocationReportingType> {
                return try removeTagsFromResourceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the RemoveTagsFromResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveTagsFromResourceMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    public func removeTagsFromResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RemoveTagsFromResourceMessage,
            reporting: InvocationReportingType) throws {
        if let removeTagsFromResourceSyncOverrideNonOptional = removeTagsFromResourceSyncOverride {
            if let removeTagsFromResourceSyncOverrideTyped = removeTagsFromResourceSyncOverrideNonOptional
                    as? RemoveTagsFromResourceSyncType<InvocationReportingType> {
                return try removeTagsFromResourceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ResetDBClusterParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetDBClusterParameterGroupMessage object being passed to this operation.
         - completion: The DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func resetDBClusterParameterGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ResetDBClusterParameterGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup, HTTPClientError>) -> ()) throws {
        if let resetDBClusterParameterGroupAsyncOverrideNonOptional = resetDBClusterParameterGroupAsyncOverride {
            if let resetDBClusterParameterGroupAsyncOverrideTyped = resetDBClusterParameterGroupAsyncOverrideNonOptional
                    as? ResetDBClusterParameterGroupAsyncType<InvocationReportingType> {
                return try resetDBClusterParameterGroupAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ResetDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func resetDBClusterParameterGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ResetDBClusterParameterGroupMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup {
        if let resetDBClusterParameterGroupSyncOverrideNonOptional = resetDBClusterParameterGroupSyncOverride {
            if let resetDBClusterParameterGroupSyncOverrideTyped = resetDBClusterParameterGroupSyncOverrideNonOptional
                    as? ResetDBClusterParameterGroupSyncType<InvocationReportingType> {
                return try resetDBClusterParameterGroupSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ResetDBParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetDBParameterGroupMessage object being passed to this operation.
         - completion: The DBParameterGroupNameMessageForResetDBParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The DBParameterGroupNameMessageForResetDBParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func resetDBParameterGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ResetDBParameterGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBParameterGroupNameMessageForResetDBParameterGroup, HTTPClientError>) -> ()) throws {
        if let resetDBParameterGroupAsyncOverrideNonOptional = resetDBParameterGroupAsyncOverride {
            if let resetDBParameterGroupAsyncOverrideTyped = resetDBParameterGroupAsyncOverrideNonOptional
                    as? ResetDBParameterGroupAsyncType<InvocationReportingType> {
                return try resetDBParameterGroupAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ResetDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetDBParameterGroupMessage object being passed to this operation.
     - Returns: The DBParameterGroupNameMessageForResetDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func resetDBParameterGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ResetDBParameterGroupMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBParameterGroupNameMessageForResetDBParameterGroup {
        if let resetDBParameterGroupSyncOverrideNonOptional = resetDBParameterGroupSyncOverride {
            if let resetDBParameterGroupSyncOverrideTyped = resetDBParameterGroupSyncOverrideNonOptional
                    as? ResetDBParameterGroupSyncType<InvocationReportingType> {
                return try resetDBParameterGroupSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the RestoreDBClusterFromS3 operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBClusterFromS3Message object being passed to this operation.
         - completion: The RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3 object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3
           object will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBSubnetGroupNotFound, domainNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBSubnetGroupState, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    public func restoreDBClusterFromS3Async<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RestoreDBClusterFromS3Message, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3, HTTPClientError>) -> ()) throws {
        if let restoreDBClusterFromS3AsyncOverrideNonOptional = restoreDBClusterFromS3AsyncOverride {
            if let restoreDBClusterFromS3AsyncOverrideTyped = restoreDBClusterFromS3AsyncOverrideNonOptional
                    as? RestoreDBClusterFromS3AsyncType<InvocationReportingType> {
                return try restoreDBClusterFromS3AsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the RestoreDBClusterFromS3 operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBClusterFromS3Message object being passed to this operation.
     - Returns: The RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3 object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBSubnetGroupNotFound, domainNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBSubnetGroupState, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    public func restoreDBClusterFromS3Sync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RestoreDBClusterFromS3Message,
            reporting: InvocationReportingType) throws -> RDSModel.RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3 {
        if let restoreDBClusterFromS3SyncOverrideNonOptional = restoreDBClusterFromS3SyncOverride {
            if let restoreDBClusterFromS3SyncOverrideTyped = restoreDBClusterFromS3SyncOverrideNonOptional
                    as? RestoreDBClusterFromS3SyncType<InvocationReportingType> {
                return try restoreDBClusterFromS3SyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the RestoreDBClusterFromSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBClusterFromSnapshotMessage object being passed to this operation.
         - completion: The RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSnapshotNotFound, dBSubnetGroupNotFound, dBSubnetGroupNotFound, domainNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded, storageQuotaExceeded.
     */
    public func restoreDBClusterFromSnapshotAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RestoreDBClusterFromSnapshotMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot, HTTPClientError>) -> ()) throws {
        if let restoreDBClusterFromSnapshotAsyncOverrideNonOptional = restoreDBClusterFromSnapshotAsyncOverride {
            if let restoreDBClusterFromSnapshotAsyncOverrideTyped = restoreDBClusterFromSnapshotAsyncOverrideNonOptional
                    as? RestoreDBClusterFromSnapshotAsyncType<InvocationReportingType> {
                return try restoreDBClusterFromSnapshotAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the RestoreDBClusterFromSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBClusterFromSnapshotMessage object being passed to this operation.
     - Returns: The RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSnapshotNotFound, dBSubnetGroupNotFound, dBSubnetGroupNotFound, domainNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded, storageQuotaExceeded.
     */
    public func restoreDBClusterFromSnapshotSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RestoreDBClusterFromSnapshotMessage,
            reporting: InvocationReportingType) throws -> RDSModel.RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot {
        if let restoreDBClusterFromSnapshotSyncOverrideNonOptional = restoreDBClusterFromSnapshotSyncOverride {
            if let restoreDBClusterFromSnapshotSyncOverrideTyped = restoreDBClusterFromSnapshotSyncOverrideNonOptional
                    as? RestoreDBClusterFromSnapshotSyncType<InvocationReportingType> {
                return try restoreDBClusterFromSnapshotSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the RestoreDBClusterToPointInTime operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBClusterToPointInTimeMessage object being passed to this operation.
         - completion: The RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime
           object will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSubnetGroupNotFound, domainNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBClusterState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded.
     */
    public func restoreDBClusterToPointInTimeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RestoreDBClusterToPointInTimeMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime, HTTPClientError>) -> ()) throws {
        if let restoreDBClusterToPointInTimeAsyncOverrideNonOptional = restoreDBClusterToPointInTimeAsyncOverride {
            if let restoreDBClusterToPointInTimeAsyncOverrideTyped = restoreDBClusterToPointInTimeAsyncOverrideNonOptional
                    as? RestoreDBClusterToPointInTimeAsyncType<InvocationReportingType> {
                return try restoreDBClusterToPointInTimeAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the RestoreDBClusterToPointInTime operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBClusterToPointInTimeMessage object being passed to this operation.
     - Returns: The RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSubnetGroupNotFound, domainNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBClusterState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded.
     */
    public func restoreDBClusterToPointInTimeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RestoreDBClusterToPointInTimeMessage,
            reporting: InvocationReportingType) throws -> RDSModel.RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime {
        if let restoreDBClusterToPointInTimeSyncOverrideNonOptional = restoreDBClusterToPointInTimeSyncOverride {
            if let restoreDBClusterToPointInTimeSyncOverrideTyped = restoreDBClusterToPointInTimeSyncOverrideNonOptional
                    as? RestoreDBClusterToPointInTimeSyncType<InvocationReportingType> {
                return try restoreDBClusterToPointInTimeSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the RestoreDBInstanceFromDBSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBInstanceFromDBSnapshotMessage object being passed to this operation.
         - completion: The RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSnapshotNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceFromDBSnapshotAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RestoreDBInstanceFromDBSnapshotMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot, HTTPClientError>) -> ()) throws {
        if let restoreDBInstanceFromDBSnapshotAsyncOverrideNonOptional = restoreDBInstanceFromDBSnapshotAsyncOverride {
            if let restoreDBInstanceFromDBSnapshotAsyncOverrideTyped = restoreDBInstanceFromDBSnapshotAsyncOverrideNonOptional
                    as? RestoreDBInstanceFromDBSnapshotAsyncType<InvocationReportingType> {
                return try restoreDBInstanceFromDBSnapshotAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the RestoreDBInstanceFromDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBInstanceFromDBSnapshotMessage object being passed to this operation.
     - Returns: The RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSnapshotNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceFromDBSnapshotSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RestoreDBInstanceFromDBSnapshotMessage,
            reporting: InvocationReportingType) throws -> RDSModel.RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot {
        if let restoreDBInstanceFromDBSnapshotSyncOverrideNonOptional = restoreDBInstanceFromDBSnapshotSyncOverride {
            if let restoreDBInstanceFromDBSnapshotSyncOverrideTyped = restoreDBInstanceFromDBSnapshotSyncOverrideNonOptional
                    as? RestoreDBInstanceFromDBSnapshotSyncType<InvocationReportingType> {
                return try restoreDBInstanceFromDBSnapshotSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the RestoreDBInstanceFromS3 operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBInstanceFromS3Message object being passed to this operation.
         - completion: The RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3 object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceFromS3Async<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RestoreDBInstanceFromS3Message, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3, HTTPClientError>) -> ()) throws {
        if let restoreDBInstanceFromS3AsyncOverrideNonOptional = restoreDBInstanceFromS3AsyncOverride {
            if let restoreDBInstanceFromS3AsyncOverrideTyped = restoreDBInstanceFromS3AsyncOverrideNonOptional
                    as? RestoreDBInstanceFromS3AsyncType<InvocationReportingType> {
                return try restoreDBInstanceFromS3AsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the RestoreDBInstanceFromS3 operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBInstanceFromS3Message object being passed to this operation.
     - Returns: The RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3 object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceFromS3Sync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RestoreDBInstanceFromS3Message,
            reporting: InvocationReportingType) throws -> RDSModel.RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3 {
        if let restoreDBInstanceFromS3SyncOverrideNonOptional = restoreDBInstanceFromS3SyncOverride {
            if let restoreDBInstanceFromS3SyncOverrideTyped = restoreDBInstanceFromS3SyncOverrideNonOptional
                    as? RestoreDBInstanceFromS3SyncType<InvocationReportingType> {
                return try restoreDBInstanceFromS3SyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the RestoreDBInstanceToPointInTime operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBInstanceToPointInTimeMessage object being passed to this operation.
         - completion: The RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBInstanceAutomatedBackupNotFound, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, pointInTimeRestoreNotEnabled, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceToPointInTimeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RestoreDBInstanceToPointInTimeMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime, HTTPClientError>) -> ()) throws {
        if let restoreDBInstanceToPointInTimeAsyncOverrideNonOptional = restoreDBInstanceToPointInTimeAsyncOverride {
            if let restoreDBInstanceToPointInTimeAsyncOverrideTyped = restoreDBInstanceToPointInTimeAsyncOverrideNonOptional
                    as? RestoreDBInstanceToPointInTimeAsyncType<InvocationReportingType> {
                return try restoreDBInstanceToPointInTimeAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the RestoreDBInstanceToPointInTime operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBInstanceToPointInTimeMessage object being passed to this operation.
     - Returns: The RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBInstanceAutomatedBackupNotFound, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, pointInTimeRestoreNotEnabled, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceToPointInTimeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RestoreDBInstanceToPointInTimeMessage,
            reporting: InvocationReportingType) throws -> RDSModel.RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime {
        if let restoreDBInstanceToPointInTimeSyncOverrideNonOptional = restoreDBInstanceToPointInTimeSyncOverride {
            if let restoreDBInstanceToPointInTimeSyncOverrideTyped = restoreDBInstanceToPointInTimeSyncOverrideNonOptional
                    as? RestoreDBInstanceToPointInTimeSyncType<InvocationReportingType> {
                return try restoreDBInstanceToPointInTimeSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the RevokeDBSecurityGroupIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RevokeDBSecurityGroupIngressMessage object being passed to this operation.
         - completion: The RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress object or an error will be passed to this 
           callback when the operation is complete. The RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    public func revokeDBSecurityGroupIngressAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RevokeDBSecurityGroupIngressMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress, HTTPClientError>) -> ()) throws {
        if let revokeDBSecurityGroupIngressAsyncOverrideNonOptional = revokeDBSecurityGroupIngressAsyncOverride {
            if let revokeDBSecurityGroupIngressAsyncOverrideTyped = revokeDBSecurityGroupIngressAsyncOverrideNonOptional
                    as? RevokeDBSecurityGroupIngressAsyncType<InvocationReportingType> {
                return try revokeDBSecurityGroupIngressAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the RevokeDBSecurityGroupIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated RevokeDBSecurityGroupIngressMessage object being passed to this operation.
     - Returns: The RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    public func revokeDBSecurityGroupIngressSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RevokeDBSecurityGroupIngressMessage,
            reporting: InvocationReportingType) throws -> RDSModel.RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress {
        if let revokeDBSecurityGroupIngressSyncOverrideNonOptional = revokeDBSecurityGroupIngressSyncOverride {
            if let revokeDBSecurityGroupIngressSyncOverrideTyped = revokeDBSecurityGroupIngressSyncOverrideNonOptional
                    as? RevokeDBSecurityGroupIngressSyncType<InvocationReportingType> {
                return try revokeDBSecurityGroupIngressSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the StartActivityStream operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartActivityStreamRequest object being passed to this operation.
         - completion: The StartActivityStreamResponseForStartActivityStream object or an error will be passed to this 
           callback when the operation is complete. The StartActivityStreamResponseForStartActivityStream
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState, kMSKeyNotAccessible, resourceNotFound.
     */
    public func startActivityStreamAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.StartActivityStreamRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.StartActivityStreamResponseForStartActivityStream, HTTPClientError>) -> ()) throws {
        if let startActivityStreamAsyncOverrideNonOptional = startActivityStreamAsyncOverride {
            if let startActivityStreamAsyncOverrideTyped = startActivityStreamAsyncOverrideNonOptional
                    as? StartActivityStreamAsyncType<InvocationReportingType> {
                return try startActivityStreamAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the StartActivityStream operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartActivityStreamRequest object being passed to this operation.
     - Returns: The StartActivityStreamResponseForStartActivityStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState, kMSKeyNotAccessible, resourceNotFound.
     */
    public func startActivityStreamSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.StartActivityStreamRequest,
            reporting: InvocationReportingType) throws -> RDSModel.StartActivityStreamResponseForStartActivityStream {
        if let startActivityStreamSyncOverrideNonOptional = startActivityStreamSyncOverride {
            if let startActivityStreamSyncOverrideTyped = startActivityStreamSyncOverrideNonOptional
                    as? StartActivityStreamSyncType<InvocationReportingType> {
                return try startActivityStreamSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the StartDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartDBClusterMessage object being passed to this operation.
         - completion: The StartDBClusterResultForStartDBCluster object or an error will be passed to this 
           callback when the operation is complete. The StartDBClusterResultForStartDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func startDBClusterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.StartDBClusterMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.StartDBClusterResultForStartDBCluster, HTTPClientError>) -> ()) throws {
        if let startDBClusterAsyncOverrideNonOptional = startDBClusterAsyncOverride {
            if let startDBClusterAsyncOverrideTyped = startDBClusterAsyncOverrideNonOptional
                    as? StartDBClusterAsyncType<InvocationReportingType> {
                return try startDBClusterAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the StartDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartDBClusterMessage object being passed to this operation.
     - Returns: The StartDBClusterResultForStartDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func startDBClusterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.StartDBClusterMessage,
            reporting: InvocationReportingType) throws -> RDSModel.StartDBClusterResultForStartDBCluster {
        if let startDBClusterSyncOverrideNonOptional = startDBClusterSyncOverride {
            if let startDBClusterSyncOverrideTyped = startDBClusterSyncOverrideNonOptional
                    as? StartDBClusterSyncType<InvocationReportingType> {
                return try startDBClusterSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the StartDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartDBInstanceMessage object being passed to this operation.
         - completion: The StartDBInstanceResultForStartDBInstance object or an error will be passed to this 
           callback when the operation is complete. The StartDBInstanceResultForStartDBInstance
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, dBClusterNotFound, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, insufficientDBInstanceCapacity, invalidDBClusterState, invalidDBInstanceState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible.
     */
    public func startDBInstanceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.StartDBInstanceMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.StartDBInstanceResultForStartDBInstance, HTTPClientError>) -> ()) throws {
        if let startDBInstanceAsyncOverrideNonOptional = startDBInstanceAsyncOverride {
            if let startDBInstanceAsyncOverrideTyped = startDBInstanceAsyncOverrideNonOptional
                    as? StartDBInstanceAsyncType<InvocationReportingType> {
                return try startDBInstanceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the StartDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartDBInstanceMessage object being passed to this operation.
     - Returns: The StartDBInstanceResultForStartDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, dBClusterNotFound, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, insufficientDBInstanceCapacity, invalidDBClusterState, invalidDBInstanceState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible.
     */
    public func startDBInstanceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.StartDBInstanceMessage,
            reporting: InvocationReportingType) throws -> RDSModel.StartDBInstanceResultForStartDBInstance {
        if let startDBInstanceSyncOverrideNonOptional = startDBInstanceSyncOverride {
            if let startDBInstanceSyncOverrideTyped = startDBInstanceSyncOverrideNonOptional
                    as? StartDBInstanceSyncType<InvocationReportingType> {
                return try startDBInstanceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the StartExportTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartExportTaskMessage object being passed to this operation.
         - completion: The ExportTaskForStartExportTask object or an error will be passed to this 
           callback when the operation is complete. The ExportTaskForStartExportTask
           object will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound, dBSnapshotNotFound, exportTaskAlreadyExists, iamRoleMissingPermissions, iamRoleNotFound, invalidExportOnly, invalidExportSourceState, invalidS3Bucket, kMSKeyNotAccessible.
     */
    public func startExportTaskAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.StartExportTaskMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ExportTaskForStartExportTask, HTTPClientError>) -> ()) throws {
        if let startExportTaskAsyncOverrideNonOptional = startExportTaskAsyncOverride {
            if let startExportTaskAsyncOverrideTyped = startExportTaskAsyncOverrideNonOptional
                    as? StartExportTaskAsyncType<InvocationReportingType> {
                return try startExportTaskAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the StartExportTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartExportTaskMessage object being passed to this operation.
     - Returns: The ExportTaskForStartExportTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound, dBSnapshotNotFound, exportTaskAlreadyExists, iamRoleMissingPermissions, iamRoleNotFound, invalidExportOnly, invalidExportSourceState, invalidS3Bucket, kMSKeyNotAccessible.
     */
    public func startExportTaskSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.StartExportTaskMessage,
            reporting: InvocationReportingType) throws -> RDSModel.ExportTaskForStartExportTask {
        if let startExportTaskSyncOverrideNonOptional = startExportTaskSyncOverride {
            if let startExportTaskSyncOverrideTyped = startExportTaskSyncOverrideNonOptional
                    as? StartExportTaskSyncType<InvocationReportingType> {
                return try startExportTaskSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the StopActivityStream operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopActivityStreamRequest object being passed to this operation.
         - completion: The StopActivityStreamResponseForStopActivityStream object or an error will be passed to this 
           callback when the operation is complete. The StopActivityStreamResponseForStopActivityStream
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState, resourceNotFound.
     */
    public func stopActivityStreamAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.StopActivityStreamRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.StopActivityStreamResponseForStopActivityStream, HTTPClientError>) -> ()) throws {
        if let stopActivityStreamAsyncOverrideNonOptional = stopActivityStreamAsyncOverride {
            if let stopActivityStreamAsyncOverrideTyped = stopActivityStreamAsyncOverrideNonOptional
                    as? StopActivityStreamAsyncType<InvocationReportingType> {
                return try stopActivityStreamAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the StopActivityStream operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopActivityStreamRequest object being passed to this operation.
     - Returns: The StopActivityStreamResponseForStopActivityStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState, resourceNotFound.
     */
    public func stopActivityStreamSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.StopActivityStreamRequest,
            reporting: InvocationReportingType) throws -> RDSModel.StopActivityStreamResponseForStopActivityStream {
        if let stopActivityStreamSyncOverrideNonOptional = stopActivityStreamSyncOverride {
            if let stopActivityStreamSyncOverrideTyped = stopActivityStreamSyncOverrideNonOptional
                    as? StopActivityStreamSyncType<InvocationReportingType> {
                return try stopActivityStreamSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the StopDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopDBClusterMessage object being passed to this operation.
         - completion: The StopDBClusterResultForStopDBCluster object or an error will be passed to this 
           callback when the operation is complete. The StopDBClusterResultForStopDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func stopDBClusterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.StopDBClusterMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.StopDBClusterResultForStopDBCluster, HTTPClientError>) -> ()) throws {
        if let stopDBClusterAsyncOverrideNonOptional = stopDBClusterAsyncOverride {
            if let stopDBClusterAsyncOverrideTyped = stopDBClusterAsyncOverrideNonOptional
                    as? StopDBClusterAsyncType<InvocationReportingType> {
                return try stopDBClusterAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the StopDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopDBClusterMessage object being passed to this operation.
     - Returns: The StopDBClusterResultForStopDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func stopDBClusterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.StopDBClusterMessage,
            reporting: InvocationReportingType) throws -> RDSModel.StopDBClusterResultForStopDBCluster {
        if let stopDBClusterSyncOverrideNonOptional = stopDBClusterSyncOverride {
            if let stopDBClusterSyncOverrideTyped = stopDBClusterSyncOverrideNonOptional
                    as? StopDBClusterSyncType<InvocationReportingType> {
                return try stopDBClusterSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the StopDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopDBInstanceMessage object being passed to this operation.
         - completion: The StopDBInstanceResultForStopDBInstance object or an error will be passed to this 
           callback when the operation is complete. The StopDBInstanceResultForStopDBInstance
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    public func stopDBInstanceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.StopDBInstanceMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.StopDBInstanceResultForStopDBInstance, HTTPClientError>) -> ()) throws {
        if let stopDBInstanceAsyncOverrideNonOptional = stopDBInstanceAsyncOverride {
            if let stopDBInstanceAsyncOverrideTyped = stopDBInstanceAsyncOverrideNonOptional
                    as? StopDBInstanceAsyncType<InvocationReportingType> {
                return try stopDBInstanceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the StopDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopDBInstanceMessage object being passed to this operation.
     - Returns: The StopDBInstanceResultForStopDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    public func stopDBInstanceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.StopDBInstanceMessage,
            reporting: InvocationReportingType) throws -> RDSModel.StopDBInstanceResultForStopDBInstance {
        if let stopDBInstanceSyncOverrideNonOptional = stopDBInstanceSyncOverride {
            if let stopDBInstanceSyncOverrideTyped = stopDBInstanceSyncOverrideNonOptional
                    as? StopDBInstanceSyncType<InvocationReportingType> {
                return try stopDBInstanceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }
}
