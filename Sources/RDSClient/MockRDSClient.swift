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
// MockRDSClient.swift
// RDSClient
//

import Foundation
import RDSModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the RDS service by default returns the `__default` property of its return type.
 */
public struct MockRDSClient: RDSClientProtocol {
    let addRoleToDBClusterAsyncOverride: AddRoleToDBClusterAsyncType?
    let addRoleToDBClusterSyncOverride: AddRoleToDBClusterSyncType?
    let addRoleToDBInstanceAsyncOverride: AddRoleToDBInstanceAsyncType?
    let addRoleToDBInstanceSyncOverride: AddRoleToDBInstanceSyncType?
    let addSourceIdentifierToSubscriptionAsyncOverride: AddSourceIdentifierToSubscriptionAsyncType?
    let addSourceIdentifierToSubscriptionSyncOverride: AddSourceIdentifierToSubscriptionSyncType?
    let addTagsToResourceAsyncOverride: AddTagsToResourceAsyncType?
    let addTagsToResourceSyncOverride: AddTagsToResourceSyncType?
    let applyPendingMaintenanceActionAsyncOverride: ApplyPendingMaintenanceActionAsyncType?
    let applyPendingMaintenanceActionSyncOverride: ApplyPendingMaintenanceActionSyncType?
    let authorizeDBSecurityGroupIngressAsyncOverride: AuthorizeDBSecurityGroupIngressAsyncType?
    let authorizeDBSecurityGroupIngressSyncOverride: AuthorizeDBSecurityGroupIngressSyncType?
    let backtrackDBClusterAsyncOverride: BacktrackDBClusterAsyncType?
    let backtrackDBClusterSyncOverride: BacktrackDBClusterSyncType?
    let cancelExportTaskAsyncOverride: CancelExportTaskAsyncType?
    let cancelExportTaskSyncOverride: CancelExportTaskSyncType?
    let copyDBClusterParameterGroupAsyncOverride: CopyDBClusterParameterGroupAsyncType?
    let copyDBClusterParameterGroupSyncOverride: CopyDBClusterParameterGroupSyncType?
    let copyDBClusterSnapshotAsyncOverride: CopyDBClusterSnapshotAsyncType?
    let copyDBClusterSnapshotSyncOverride: CopyDBClusterSnapshotSyncType?
    let copyDBParameterGroupAsyncOverride: CopyDBParameterGroupAsyncType?
    let copyDBParameterGroupSyncOverride: CopyDBParameterGroupSyncType?
    let copyDBSnapshotAsyncOverride: CopyDBSnapshotAsyncType?
    let copyDBSnapshotSyncOverride: CopyDBSnapshotSyncType?
    let copyOptionGroupAsyncOverride: CopyOptionGroupAsyncType?
    let copyOptionGroupSyncOverride: CopyOptionGroupSyncType?
    let createCustomDBEngineVersionAsyncOverride: CreateCustomDBEngineVersionAsyncType?
    let createCustomDBEngineVersionSyncOverride: CreateCustomDBEngineVersionSyncType?
    let createDBClusterAsyncOverride: CreateDBClusterAsyncType?
    let createDBClusterSyncOverride: CreateDBClusterSyncType?
    let createDBClusterEndpointAsyncOverride: CreateDBClusterEndpointAsyncType?
    let createDBClusterEndpointSyncOverride: CreateDBClusterEndpointSyncType?
    let createDBClusterParameterGroupAsyncOverride: CreateDBClusterParameterGroupAsyncType?
    let createDBClusterParameterGroupSyncOverride: CreateDBClusterParameterGroupSyncType?
    let createDBClusterSnapshotAsyncOverride: CreateDBClusterSnapshotAsyncType?
    let createDBClusterSnapshotSyncOverride: CreateDBClusterSnapshotSyncType?
    let createDBInstanceAsyncOverride: CreateDBInstanceAsyncType?
    let createDBInstanceSyncOverride: CreateDBInstanceSyncType?
    let createDBInstanceReadReplicaAsyncOverride: CreateDBInstanceReadReplicaAsyncType?
    let createDBInstanceReadReplicaSyncOverride: CreateDBInstanceReadReplicaSyncType?
    let createDBParameterGroupAsyncOverride: CreateDBParameterGroupAsyncType?
    let createDBParameterGroupSyncOverride: CreateDBParameterGroupSyncType?
    let createDBProxyAsyncOverride: CreateDBProxyAsyncType?
    let createDBProxySyncOverride: CreateDBProxySyncType?
    let createDBProxyEndpointAsyncOverride: CreateDBProxyEndpointAsyncType?
    let createDBProxyEndpointSyncOverride: CreateDBProxyEndpointSyncType?
    let createDBSecurityGroupAsyncOverride: CreateDBSecurityGroupAsyncType?
    let createDBSecurityGroupSyncOverride: CreateDBSecurityGroupSyncType?
    let createDBSnapshotAsyncOverride: CreateDBSnapshotAsyncType?
    let createDBSnapshotSyncOverride: CreateDBSnapshotSyncType?
    let createDBSubnetGroupAsyncOverride: CreateDBSubnetGroupAsyncType?
    let createDBSubnetGroupSyncOverride: CreateDBSubnetGroupSyncType?
    let createEventSubscriptionAsyncOverride: CreateEventSubscriptionAsyncType?
    let createEventSubscriptionSyncOverride: CreateEventSubscriptionSyncType?
    let createGlobalClusterAsyncOverride: CreateGlobalClusterAsyncType?
    let createGlobalClusterSyncOverride: CreateGlobalClusterSyncType?
    let createOptionGroupAsyncOverride: CreateOptionGroupAsyncType?
    let createOptionGroupSyncOverride: CreateOptionGroupSyncType?
    let deleteCustomDBEngineVersionAsyncOverride: DeleteCustomDBEngineVersionAsyncType?
    let deleteCustomDBEngineVersionSyncOverride: DeleteCustomDBEngineVersionSyncType?
    let deleteDBClusterAsyncOverride: DeleteDBClusterAsyncType?
    let deleteDBClusterSyncOverride: DeleteDBClusterSyncType?
    let deleteDBClusterEndpointAsyncOverride: DeleteDBClusterEndpointAsyncType?
    let deleteDBClusterEndpointSyncOverride: DeleteDBClusterEndpointSyncType?
    let deleteDBClusterParameterGroupAsyncOverride: DeleteDBClusterParameterGroupAsyncType?
    let deleteDBClusterParameterGroupSyncOverride: DeleteDBClusterParameterGroupSyncType?
    let deleteDBClusterSnapshotAsyncOverride: DeleteDBClusterSnapshotAsyncType?
    let deleteDBClusterSnapshotSyncOverride: DeleteDBClusterSnapshotSyncType?
    let deleteDBInstanceAsyncOverride: DeleteDBInstanceAsyncType?
    let deleteDBInstanceSyncOverride: DeleteDBInstanceSyncType?
    let deleteDBInstanceAutomatedBackupAsyncOverride: DeleteDBInstanceAutomatedBackupAsyncType?
    let deleteDBInstanceAutomatedBackupSyncOverride: DeleteDBInstanceAutomatedBackupSyncType?
    let deleteDBParameterGroupAsyncOverride: DeleteDBParameterGroupAsyncType?
    let deleteDBParameterGroupSyncOverride: DeleteDBParameterGroupSyncType?
    let deleteDBProxyAsyncOverride: DeleteDBProxyAsyncType?
    let deleteDBProxySyncOverride: DeleteDBProxySyncType?
    let deleteDBProxyEndpointAsyncOverride: DeleteDBProxyEndpointAsyncType?
    let deleteDBProxyEndpointSyncOverride: DeleteDBProxyEndpointSyncType?
    let deleteDBSecurityGroupAsyncOverride: DeleteDBSecurityGroupAsyncType?
    let deleteDBSecurityGroupSyncOverride: DeleteDBSecurityGroupSyncType?
    let deleteDBSnapshotAsyncOverride: DeleteDBSnapshotAsyncType?
    let deleteDBSnapshotSyncOverride: DeleteDBSnapshotSyncType?
    let deleteDBSubnetGroupAsyncOverride: DeleteDBSubnetGroupAsyncType?
    let deleteDBSubnetGroupSyncOverride: DeleteDBSubnetGroupSyncType?
    let deleteEventSubscriptionAsyncOverride: DeleteEventSubscriptionAsyncType?
    let deleteEventSubscriptionSyncOverride: DeleteEventSubscriptionSyncType?
    let deleteGlobalClusterAsyncOverride: DeleteGlobalClusterAsyncType?
    let deleteGlobalClusterSyncOverride: DeleteGlobalClusterSyncType?
    let deleteOptionGroupAsyncOverride: DeleteOptionGroupAsyncType?
    let deleteOptionGroupSyncOverride: DeleteOptionGroupSyncType?
    let deregisterDBProxyTargetsAsyncOverride: DeregisterDBProxyTargetsAsyncType?
    let deregisterDBProxyTargetsSyncOverride: DeregisterDBProxyTargetsSyncType?
    let describeAccountAttributesAsyncOverride: DescribeAccountAttributesAsyncType?
    let describeAccountAttributesSyncOverride: DescribeAccountAttributesSyncType?
    let describeCertificatesAsyncOverride: DescribeCertificatesAsyncType?
    let describeCertificatesSyncOverride: DescribeCertificatesSyncType?
    let describeDBClusterBacktracksAsyncOverride: DescribeDBClusterBacktracksAsyncType?
    let describeDBClusterBacktracksSyncOverride: DescribeDBClusterBacktracksSyncType?
    let describeDBClusterEndpointsAsyncOverride: DescribeDBClusterEndpointsAsyncType?
    let describeDBClusterEndpointsSyncOverride: DescribeDBClusterEndpointsSyncType?
    let describeDBClusterParameterGroupsAsyncOverride: DescribeDBClusterParameterGroupsAsyncType?
    let describeDBClusterParameterGroupsSyncOverride: DescribeDBClusterParameterGroupsSyncType?
    let describeDBClusterParametersAsyncOverride: DescribeDBClusterParametersAsyncType?
    let describeDBClusterParametersSyncOverride: DescribeDBClusterParametersSyncType?
    let describeDBClusterSnapshotAttributesAsyncOverride: DescribeDBClusterSnapshotAttributesAsyncType?
    let describeDBClusterSnapshotAttributesSyncOverride: DescribeDBClusterSnapshotAttributesSyncType?
    let describeDBClusterSnapshotsAsyncOverride: DescribeDBClusterSnapshotsAsyncType?
    let describeDBClusterSnapshotsSyncOverride: DescribeDBClusterSnapshotsSyncType?
    let describeDBClustersAsyncOverride: DescribeDBClustersAsyncType?
    let describeDBClustersSyncOverride: DescribeDBClustersSyncType?
    let describeDBEngineVersionsAsyncOverride: DescribeDBEngineVersionsAsyncType?
    let describeDBEngineVersionsSyncOverride: DescribeDBEngineVersionsSyncType?
    let describeDBInstanceAutomatedBackupsAsyncOverride: DescribeDBInstanceAutomatedBackupsAsyncType?
    let describeDBInstanceAutomatedBackupsSyncOverride: DescribeDBInstanceAutomatedBackupsSyncType?
    let describeDBInstancesAsyncOverride: DescribeDBInstancesAsyncType?
    let describeDBInstancesSyncOverride: DescribeDBInstancesSyncType?
    let describeDBLogFilesAsyncOverride: DescribeDBLogFilesAsyncType?
    let describeDBLogFilesSyncOverride: DescribeDBLogFilesSyncType?
    let describeDBParameterGroupsAsyncOverride: DescribeDBParameterGroupsAsyncType?
    let describeDBParameterGroupsSyncOverride: DescribeDBParameterGroupsSyncType?
    let describeDBParametersAsyncOverride: DescribeDBParametersAsyncType?
    let describeDBParametersSyncOverride: DescribeDBParametersSyncType?
    let describeDBProxiesAsyncOverride: DescribeDBProxiesAsyncType?
    let describeDBProxiesSyncOverride: DescribeDBProxiesSyncType?
    let describeDBProxyEndpointsAsyncOverride: DescribeDBProxyEndpointsAsyncType?
    let describeDBProxyEndpointsSyncOverride: DescribeDBProxyEndpointsSyncType?
    let describeDBProxyTargetGroupsAsyncOverride: DescribeDBProxyTargetGroupsAsyncType?
    let describeDBProxyTargetGroupsSyncOverride: DescribeDBProxyTargetGroupsSyncType?
    let describeDBProxyTargetsAsyncOverride: DescribeDBProxyTargetsAsyncType?
    let describeDBProxyTargetsSyncOverride: DescribeDBProxyTargetsSyncType?
    let describeDBSecurityGroupsAsyncOverride: DescribeDBSecurityGroupsAsyncType?
    let describeDBSecurityGroupsSyncOverride: DescribeDBSecurityGroupsSyncType?
    let describeDBSnapshotAttributesAsyncOverride: DescribeDBSnapshotAttributesAsyncType?
    let describeDBSnapshotAttributesSyncOverride: DescribeDBSnapshotAttributesSyncType?
    let describeDBSnapshotsAsyncOverride: DescribeDBSnapshotsAsyncType?
    let describeDBSnapshotsSyncOverride: DescribeDBSnapshotsSyncType?
    let describeDBSubnetGroupsAsyncOverride: DescribeDBSubnetGroupsAsyncType?
    let describeDBSubnetGroupsSyncOverride: DescribeDBSubnetGroupsSyncType?
    let describeEngineDefaultClusterParametersAsyncOverride: DescribeEngineDefaultClusterParametersAsyncType?
    let describeEngineDefaultClusterParametersSyncOverride: DescribeEngineDefaultClusterParametersSyncType?
    let describeEngineDefaultParametersAsyncOverride: DescribeEngineDefaultParametersAsyncType?
    let describeEngineDefaultParametersSyncOverride: DescribeEngineDefaultParametersSyncType?
    let describeEventCategoriesAsyncOverride: DescribeEventCategoriesAsyncType?
    let describeEventCategoriesSyncOverride: DescribeEventCategoriesSyncType?
    let describeEventSubscriptionsAsyncOverride: DescribeEventSubscriptionsAsyncType?
    let describeEventSubscriptionsSyncOverride: DescribeEventSubscriptionsSyncType?
    let describeEventsAsyncOverride: DescribeEventsAsyncType?
    let describeEventsSyncOverride: DescribeEventsSyncType?
    let describeExportTasksAsyncOverride: DescribeExportTasksAsyncType?
    let describeExportTasksSyncOverride: DescribeExportTasksSyncType?
    let describeGlobalClustersAsyncOverride: DescribeGlobalClustersAsyncType?
    let describeGlobalClustersSyncOverride: DescribeGlobalClustersSyncType?
    let describeOptionGroupOptionsAsyncOverride: DescribeOptionGroupOptionsAsyncType?
    let describeOptionGroupOptionsSyncOverride: DescribeOptionGroupOptionsSyncType?
    let describeOptionGroupsAsyncOverride: DescribeOptionGroupsAsyncType?
    let describeOptionGroupsSyncOverride: DescribeOptionGroupsSyncType?
    let describeOrderableDBInstanceOptionsAsyncOverride: DescribeOrderableDBInstanceOptionsAsyncType?
    let describeOrderableDBInstanceOptionsSyncOverride: DescribeOrderableDBInstanceOptionsSyncType?
    let describePendingMaintenanceActionsAsyncOverride: DescribePendingMaintenanceActionsAsyncType?
    let describePendingMaintenanceActionsSyncOverride: DescribePendingMaintenanceActionsSyncType?
    let describeReservedDBInstancesAsyncOverride: DescribeReservedDBInstancesAsyncType?
    let describeReservedDBInstancesSyncOverride: DescribeReservedDBInstancesSyncType?
    let describeReservedDBInstancesOfferingsAsyncOverride: DescribeReservedDBInstancesOfferingsAsyncType?
    let describeReservedDBInstancesOfferingsSyncOverride: DescribeReservedDBInstancesOfferingsSyncType?
    let describeSourceRegionsAsyncOverride: DescribeSourceRegionsAsyncType?
    let describeSourceRegionsSyncOverride: DescribeSourceRegionsSyncType?
    let describeValidDBInstanceModificationsAsyncOverride: DescribeValidDBInstanceModificationsAsyncType?
    let describeValidDBInstanceModificationsSyncOverride: DescribeValidDBInstanceModificationsSyncType?
    let downloadDBLogFilePortionAsyncOverride: DownloadDBLogFilePortionAsyncType?
    let downloadDBLogFilePortionSyncOverride: DownloadDBLogFilePortionSyncType?
    let failoverDBClusterAsyncOverride: FailoverDBClusterAsyncType?
    let failoverDBClusterSyncOverride: FailoverDBClusterSyncType?
    let failoverGlobalClusterAsyncOverride: FailoverGlobalClusterAsyncType?
    let failoverGlobalClusterSyncOverride: FailoverGlobalClusterSyncType?
    let listTagsForResourceAsyncOverride: ListTagsForResourceAsyncType?
    let listTagsForResourceSyncOverride: ListTagsForResourceSyncType?
    let modifyActivityStreamAsyncOverride: ModifyActivityStreamAsyncType?
    let modifyActivityStreamSyncOverride: ModifyActivityStreamSyncType?
    let modifyCertificatesAsyncOverride: ModifyCertificatesAsyncType?
    let modifyCertificatesSyncOverride: ModifyCertificatesSyncType?
    let modifyCurrentDBClusterCapacityAsyncOverride: ModifyCurrentDBClusterCapacityAsyncType?
    let modifyCurrentDBClusterCapacitySyncOverride: ModifyCurrentDBClusterCapacitySyncType?
    let modifyCustomDBEngineVersionAsyncOverride: ModifyCustomDBEngineVersionAsyncType?
    let modifyCustomDBEngineVersionSyncOverride: ModifyCustomDBEngineVersionSyncType?
    let modifyDBClusterAsyncOverride: ModifyDBClusterAsyncType?
    let modifyDBClusterSyncOverride: ModifyDBClusterSyncType?
    let modifyDBClusterEndpointAsyncOverride: ModifyDBClusterEndpointAsyncType?
    let modifyDBClusterEndpointSyncOverride: ModifyDBClusterEndpointSyncType?
    let modifyDBClusterParameterGroupAsyncOverride: ModifyDBClusterParameterGroupAsyncType?
    let modifyDBClusterParameterGroupSyncOverride: ModifyDBClusterParameterGroupSyncType?
    let modifyDBClusterSnapshotAttributeAsyncOverride: ModifyDBClusterSnapshotAttributeAsyncType?
    let modifyDBClusterSnapshotAttributeSyncOverride: ModifyDBClusterSnapshotAttributeSyncType?
    let modifyDBInstanceAsyncOverride: ModifyDBInstanceAsyncType?
    let modifyDBInstanceSyncOverride: ModifyDBInstanceSyncType?
    let modifyDBParameterGroupAsyncOverride: ModifyDBParameterGroupAsyncType?
    let modifyDBParameterGroupSyncOverride: ModifyDBParameterGroupSyncType?
    let modifyDBProxyAsyncOverride: ModifyDBProxyAsyncType?
    let modifyDBProxySyncOverride: ModifyDBProxySyncType?
    let modifyDBProxyEndpointAsyncOverride: ModifyDBProxyEndpointAsyncType?
    let modifyDBProxyEndpointSyncOverride: ModifyDBProxyEndpointSyncType?
    let modifyDBProxyTargetGroupAsyncOverride: ModifyDBProxyTargetGroupAsyncType?
    let modifyDBProxyTargetGroupSyncOverride: ModifyDBProxyTargetGroupSyncType?
    let modifyDBSnapshotAsyncOverride: ModifyDBSnapshotAsyncType?
    let modifyDBSnapshotSyncOverride: ModifyDBSnapshotSyncType?
    let modifyDBSnapshotAttributeAsyncOverride: ModifyDBSnapshotAttributeAsyncType?
    let modifyDBSnapshotAttributeSyncOverride: ModifyDBSnapshotAttributeSyncType?
    let modifyDBSubnetGroupAsyncOverride: ModifyDBSubnetGroupAsyncType?
    let modifyDBSubnetGroupSyncOverride: ModifyDBSubnetGroupSyncType?
    let modifyEventSubscriptionAsyncOverride: ModifyEventSubscriptionAsyncType?
    let modifyEventSubscriptionSyncOverride: ModifyEventSubscriptionSyncType?
    let modifyGlobalClusterAsyncOverride: ModifyGlobalClusterAsyncType?
    let modifyGlobalClusterSyncOverride: ModifyGlobalClusterSyncType?
    let modifyOptionGroupAsyncOverride: ModifyOptionGroupAsyncType?
    let modifyOptionGroupSyncOverride: ModifyOptionGroupSyncType?
    let promoteReadReplicaAsyncOverride: PromoteReadReplicaAsyncType?
    let promoteReadReplicaSyncOverride: PromoteReadReplicaSyncType?
    let promoteReadReplicaDBClusterAsyncOverride: PromoteReadReplicaDBClusterAsyncType?
    let promoteReadReplicaDBClusterSyncOverride: PromoteReadReplicaDBClusterSyncType?
    let purchaseReservedDBInstancesOfferingAsyncOverride: PurchaseReservedDBInstancesOfferingAsyncType?
    let purchaseReservedDBInstancesOfferingSyncOverride: PurchaseReservedDBInstancesOfferingSyncType?
    let rebootDBClusterAsyncOverride: RebootDBClusterAsyncType?
    let rebootDBClusterSyncOverride: RebootDBClusterSyncType?
    let rebootDBInstanceAsyncOverride: RebootDBInstanceAsyncType?
    let rebootDBInstanceSyncOverride: RebootDBInstanceSyncType?
    let registerDBProxyTargetsAsyncOverride: RegisterDBProxyTargetsAsyncType?
    let registerDBProxyTargetsSyncOverride: RegisterDBProxyTargetsSyncType?
    let removeFromGlobalClusterAsyncOverride: RemoveFromGlobalClusterAsyncType?
    let removeFromGlobalClusterSyncOverride: RemoveFromGlobalClusterSyncType?
    let removeRoleFromDBClusterAsyncOverride: RemoveRoleFromDBClusterAsyncType?
    let removeRoleFromDBClusterSyncOverride: RemoveRoleFromDBClusterSyncType?
    let removeRoleFromDBInstanceAsyncOverride: RemoveRoleFromDBInstanceAsyncType?
    let removeRoleFromDBInstanceSyncOverride: RemoveRoleFromDBInstanceSyncType?
    let removeSourceIdentifierFromSubscriptionAsyncOverride: RemoveSourceIdentifierFromSubscriptionAsyncType?
    let removeSourceIdentifierFromSubscriptionSyncOverride: RemoveSourceIdentifierFromSubscriptionSyncType?
    let removeTagsFromResourceAsyncOverride: RemoveTagsFromResourceAsyncType?
    let removeTagsFromResourceSyncOverride: RemoveTagsFromResourceSyncType?
    let resetDBClusterParameterGroupAsyncOverride: ResetDBClusterParameterGroupAsyncType?
    let resetDBClusterParameterGroupSyncOverride: ResetDBClusterParameterGroupSyncType?
    let resetDBParameterGroupAsyncOverride: ResetDBParameterGroupAsyncType?
    let resetDBParameterGroupSyncOverride: ResetDBParameterGroupSyncType?
    let restoreDBClusterFromS3AsyncOverride: RestoreDBClusterFromS3AsyncType?
    let restoreDBClusterFromS3SyncOverride: RestoreDBClusterFromS3SyncType?
    let restoreDBClusterFromSnapshotAsyncOverride: RestoreDBClusterFromSnapshotAsyncType?
    let restoreDBClusterFromSnapshotSyncOverride: RestoreDBClusterFromSnapshotSyncType?
    let restoreDBClusterToPointInTimeAsyncOverride: RestoreDBClusterToPointInTimeAsyncType?
    let restoreDBClusterToPointInTimeSyncOverride: RestoreDBClusterToPointInTimeSyncType?
    let restoreDBInstanceFromDBSnapshotAsyncOverride: RestoreDBInstanceFromDBSnapshotAsyncType?
    let restoreDBInstanceFromDBSnapshotSyncOverride: RestoreDBInstanceFromDBSnapshotSyncType?
    let restoreDBInstanceFromS3AsyncOverride: RestoreDBInstanceFromS3AsyncType?
    let restoreDBInstanceFromS3SyncOverride: RestoreDBInstanceFromS3SyncType?
    let restoreDBInstanceToPointInTimeAsyncOverride: RestoreDBInstanceToPointInTimeAsyncType?
    let restoreDBInstanceToPointInTimeSyncOverride: RestoreDBInstanceToPointInTimeSyncType?
    let revokeDBSecurityGroupIngressAsyncOverride: RevokeDBSecurityGroupIngressAsyncType?
    let revokeDBSecurityGroupIngressSyncOverride: RevokeDBSecurityGroupIngressSyncType?
    let startActivityStreamAsyncOverride: StartActivityStreamAsyncType?
    let startActivityStreamSyncOverride: StartActivityStreamSyncType?
    let startDBClusterAsyncOverride: StartDBClusterAsyncType?
    let startDBClusterSyncOverride: StartDBClusterSyncType?
    let startDBInstanceAsyncOverride: StartDBInstanceAsyncType?
    let startDBInstanceSyncOverride: StartDBInstanceSyncType?
    let startDBInstanceAutomatedBackupsReplicationAsyncOverride: StartDBInstanceAutomatedBackupsReplicationAsyncType?
    let startDBInstanceAutomatedBackupsReplicationSyncOverride: StartDBInstanceAutomatedBackupsReplicationSyncType?
    let startExportTaskAsyncOverride: StartExportTaskAsyncType?
    let startExportTaskSyncOverride: StartExportTaskSyncType?
    let stopActivityStreamAsyncOverride: StopActivityStreamAsyncType?
    let stopActivityStreamSyncOverride: StopActivityStreamSyncType?
    let stopDBClusterAsyncOverride: StopDBClusterAsyncType?
    let stopDBClusterSyncOverride: StopDBClusterSyncType?
    let stopDBInstanceAsyncOverride: StopDBInstanceAsyncType?
    let stopDBInstanceSyncOverride: StopDBInstanceSyncType?
    let stopDBInstanceAutomatedBackupsReplicationAsyncOverride: StopDBInstanceAutomatedBackupsReplicationAsyncType?
    let stopDBInstanceAutomatedBackupsReplicationSyncOverride: StopDBInstanceAutomatedBackupsReplicationSyncType?
    let switchoverReadReplicaAsyncOverride: SwitchoverReadReplicaAsyncType?
    let switchoverReadReplicaSyncOverride: SwitchoverReadReplicaSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            addRoleToDBClusterAsync: AddRoleToDBClusterAsyncType? = nil,
            addRoleToDBClusterSync: AddRoleToDBClusterSyncType? = nil,
            addRoleToDBInstanceAsync: AddRoleToDBInstanceAsyncType? = nil,
            addRoleToDBInstanceSync: AddRoleToDBInstanceSyncType? = nil,
            addSourceIdentifierToSubscriptionAsync: AddSourceIdentifierToSubscriptionAsyncType? = nil,
            addSourceIdentifierToSubscriptionSync: AddSourceIdentifierToSubscriptionSyncType? = nil,
            addTagsToResourceAsync: AddTagsToResourceAsyncType? = nil,
            addTagsToResourceSync: AddTagsToResourceSyncType? = nil,
            applyPendingMaintenanceActionAsync: ApplyPendingMaintenanceActionAsyncType? = nil,
            applyPendingMaintenanceActionSync: ApplyPendingMaintenanceActionSyncType? = nil,
            authorizeDBSecurityGroupIngressAsync: AuthorizeDBSecurityGroupIngressAsyncType? = nil,
            authorizeDBSecurityGroupIngressSync: AuthorizeDBSecurityGroupIngressSyncType? = nil,
            backtrackDBClusterAsync: BacktrackDBClusterAsyncType? = nil,
            backtrackDBClusterSync: BacktrackDBClusterSyncType? = nil,
            cancelExportTaskAsync: CancelExportTaskAsyncType? = nil,
            cancelExportTaskSync: CancelExportTaskSyncType? = nil,
            copyDBClusterParameterGroupAsync: CopyDBClusterParameterGroupAsyncType? = nil,
            copyDBClusterParameterGroupSync: CopyDBClusterParameterGroupSyncType? = nil,
            copyDBClusterSnapshotAsync: CopyDBClusterSnapshotAsyncType? = nil,
            copyDBClusterSnapshotSync: CopyDBClusterSnapshotSyncType? = nil,
            copyDBParameterGroupAsync: CopyDBParameterGroupAsyncType? = nil,
            copyDBParameterGroupSync: CopyDBParameterGroupSyncType? = nil,
            copyDBSnapshotAsync: CopyDBSnapshotAsyncType? = nil,
            copyDBSnapshotSync: CopyDBSnapshotSyncType? = nil,
            copyOptionGroupAsync: CopyOptionGroupAsyncType? = nil,
            copyOptionGroupSync: CopyOptionGroupSyncType? = nil,
            createCustomDBEngineVersionAsync: CreateCustomDBEngineVersionAsyncType? = nil,
            createCustomDBEngineVersionSync: CreateCustomDBEngineVersionSyncType? = nil,
            createDBClusterAsync: CreateDBClusterAsyncType? = nil,
            createDBClusterSync: CreateDBClusterSyncType? = nil,
            createDBClusterEndpointAsync: CreateDBClusterEndpointAsyncType? = nil,
            createDBClusterEndpointSync: CreateDBClusterEndpointSyncType? = nil,
            createDBClusterParameterGroupAsync: CreateDBClusterParameterGroupAsyncType? = nil,
            createDBClusterParameterGroupSync: CreateDBClusterParameterGroupSyncType? = nil,
            createDBClusterSnapshotAsync: CreateDBClusterSnapshotAsyncType? = nil,
            createDBClusterSnapshotSync: CreateDBClusterSnapshotSyncType? = nil,
            createDBInstanceAsync: CreateDBInstanceAsyncType? = nil,
            createDBInstanceSync: CreateDBInstanceSyncType? = nil,
            createDBInstanceReadReplicaAsync: CreateDBInstanceReadReplicaAsyncType? = nil,
            createDBInstanceReadReplicaSync: CreateDBInstanceReadReplicaSyncType? = nil,
            createDBParameterGroupAsync: CreateDBParameterGroupAsyncType? = nil,
            createDBParameterGroupSync: CreateDBParameterGroupSyncType? = nil,
            createDBProxyAsync: CreateDBProxyAsyncType? = nil,
            createDBProxySync: CreateDBProxySyncType? = nil,
            createDBProxyEndpointAsync: CreateDBProxyEndpointAsyncType? = nil,
            createDBProxyEndpointSync: CreateDBProxyEndpointSyncType? = nil,
            createDBSecurityGroupAsync: CreateDBSecurityGroupAsyncType? = nil,
            createDBSecurityGroupSync: CreateDBSecurityGroupSyncType? = nil,
            createDBSnapshotAsync: CreateDBSnapshotAsyncType? = nil,
            createDBSnapshotSync: CreateDBSnapshotSyncType? = nil,
            createDBSubnetGroupAsync: CreateDBSubnetGroupAsyncType? = nil,
            createDBSubnetGroupSync: CreateDBSubnetGroupSyncType? = nil,
            createEventSubscriptionAsync: CreateEventSubscriptionAsyncType? = nil,
            createEventSubscriptionSync: CreateEventSubscriptionSyncType? = nil,
            createGlobalClusterAsync: CreateGlobalClusterAsyncType? = nil,
            createGlobalClusterSync: CreateGlobalClusterSyncType? = nil,
            createOptionGroupAsync: CreateOptionGroupAsyncType? = nil,
            createOptionGroupSync: CreateOptionGroupSyncType? = nil,
            deleteCustomDBEngineVersionAsync: DeleteCustomDBEngineVersionAsyncType? = nil,
            deleteCustomDBEngineVersionSync: DeleteCustomDBEngineVersionSyncType? = nil,
            deleteDBClusterAsync: DeleteDBClusterAsyncType? = nil,
            deleteDBClusterSync: DeleteDBClusterSyncType? = nil,
            deleteDBClusterEndpointAsync: DeleteDBClusterEndpointAsyncType? = nil,
            deleteDBClusterEndpointSync: DeleteDBClusterEndpointSyncType? = nil,
            deleteDBClusterParameterGroupAsync: DeleteDBClusterParameterGroupAsyncType? = nil,
            deleteDBClusterParameterGroupSync: DeleteDBClusterParameterGroupSyncType? = nil,
            deleteDBClusterSnapshotAsync: DeleteDBClusterSnapshotAsyncType? = nil,
            deleteDBClusterSnapshotSync: DeleteDBClusterSnapshotSyncType? = nil,
            deleteDBInstanceAsync: DeleteDBInstanceAsyncType? = nil,
            deleteDBInstanceSync: DeleteDBInstanceSyncType? = nil,
            deleteDBInstanceAutomatedBackupAsync: DeleteDBInstanceAutomatedBackupAsyncType? = nil,
            deleteDBInstanceAutomatedBackupSync: DeleteDBInstanceAutomatedBackupSyncType? = nil,
            deleteDBParameterGroupAsync: DeleteDBParameterGroupAsyncType? = nil,
            deleteDBParameterGroupSync: DeleteDBParameterGroupSyncType? = nil,
            deleteDBProxyAsync: DeleteDBProxyAsyncType? = nil,
            deleteDBProxySync: DeleteDBProxySyncType? = nil,
            deleteDBProxyEndpointAsync: DeleteDBProxyEndpointAsyncType? = nil,
            deleteDBProxyEndpointSync: DeleteDBProxyEndpointSyncType? = nil,
            deleteDBSecurityGroupAsync: DeleteDBSecurityGroupAsyncType? = nil,
            deleteDBSecurityGroupSync: DeleteDBSecurityGroupSyncType? = nil,
            deleteDBSnapshotAsync: DeleteDBSnapshotAsyncType? = nil,
            deleteDBSnapshotSync: DeleteDBSnapshotSyncType? = nil,
            deleteDBSubnetGroupAsync: DeleteDBSubnetGroupAsyncType? = nil,
            deleteDBSubnetGroupSync: DeleteDBSubnetGroupSyncType? = nil,
            deleteEventSubscriptionAsync: DeleteEventSubscriptionAsyncType? = nil,
            deleteEventSubscriptionSync: DeleteEventSubscriptionSyncType? = nil,
            deleteGlobalClusterAsync: DeleteGlobalClusterAsyncType? = nil,
            deleteGlobalClusterSync: DeleteGlobalClusterSyncType? = nil,
            deleteOptionGroupAsync: DeleteOptionGroupAsyncType? = nil,
            deleteOptionGroupSync: DeleteOptionGroupSyncType? = nil,
            deregisterDBProxyTargetsAsync: DeregisterDBProxyTargetsAsyncType? = nil,
            deregisterDBProxyTargetsSync: DeregisterDBProxyTargetsSyncType? = nil,
            describeAccountAttributesAsync: DescribeAccountAttributesAsyncType? = nil,
            describeAccountAttributesSync: DescribeAccountAttributesSyncType? = nil,
            describeCertificatesAsync: DescribeCertificatesAsyncType? = nil,
            describeCertificatesSync: DescribeCertificatesSyncType? = nil,
            describeDBClusterBacktracksAsync: DescribeDBClusterBacktracksAsyncType? = nil,
            describeDBClusterBacktracksSync: DescribeDBClusterBacktracksSyncType? = nil,
            describeDBClusterEndpointsAsync: DescribeDBClusterEndpointsAsyncType? = nil,
            describeDBClusterEndpointsSync: DescribeDBClusterEndpointsSyncType? = nil,
            describeDBClusterParameterGroupsAsync: DescribeDBClusterParameterGroupsAsyncType? = nil,
            describeDBClusterParameterGroupsSync: DescribeDBClusterParameterGroupsSyncType? = nil,
            describeDBClusterParametersAsync: DescribeDBClusterParametersAsyncType? = nil,
            describeDBClusterParametersSync: DescribeDBClusterParametersSyncType? = nil,
            describeDBClusterSnapshotAttributesAsync: DescribeDBClusterSnapshotAttributesAsyncType? = nil,
            describeDBClusterSnapshotAttributesSync: DescribeDBClusterSnapshotAttributesSyncType? = nil,
            describeDBClusterSnapshotsAsync: DescribeDBClusterSnapshotsAsyncType? = nil,
            describeDBClusterSnapshotsSync: DescribeDBClusterSnapshotsSyncType? = nil,
            describeDBClustersAsync: DescribeDBClustersAsyncType? = nil,
            describeDBClustersSync: DescribeDBClustersSyncType? = nil,
            describeDBEngineVersionsAsync: DescribeDBEngineVersionsAsyncType? = nil,
            describeDBEngineVersionsSync: DescribeDBEngineVersionsSyncType? = nil,
            describeDBInstanceAutomatedBackupsAsync: DescribeDBInstanceAutomatedBackupsAsyncType? = nil,
            describeDBInstanceAutomatedBackupsSync: DescribeDBInstanceAutomatedBackupsSyncType? = nil,
            describeDBInstancesAsync: DescribeDBInstancesAsyncType? = nil,
            describeDBInstancesSync: DescribeDBInstancesSyncType? = nil,
            describeDBLogFilesAsync: DescribeDBLogFilesAsyncType? = nil,
            describeDBLogFilesSync: DescribeDBLogFilesSyncType? = nil,
            describeDBParameterGroupsAsync: DescribeDBParameterGroupsAsyncType? = nil,
            describeDBParameterGroupsSync: DescribeDBParameterGroupsSyncType? = nil,
            describeDBParametersAsync: DescribeDBParametersAsyncType? = nil,
            describeDBParametersSync: DescribeDBParametersSyncType? = nil,
            describeDBProxiesAsync: DescribeDBProxiesAsyncType? = nil,
            describeDBProxiesSync: DescribeDBProxiesSyncType? = nil,
            describeDBProxyEndpointsAsync: DescribeDBProxyEndpointsAsyncType? = nil,
            describeDBProxyEndpointsSync: DescribeDBProxyEndpointsSyncType? = nil,
            describeDBProxyTargetGroupsAsync: DescribeDBProxyTargetGroupsAsyncType? = nil,
            describeDBProxyTargetGroupsSync: DescribeDBProxyTargetGroupsSyncType? = nil,
            describeDBProxyTargetsAsync: DescribeDBProxyTargetsAsyncType? = nil,
            describeDBProxyTargetsSync: DescribeDBProxyTargetsSyncType? = nil,
            describeDBSecurityGroupsAsync: DescribeDBSecurityGroupsAsyncType? = nil,
            describeDBSecurityGroupsSync: DescribeDBSecurityGroupsSyncType? = nil,
            describeDBSnapshotAttributesAsync: DescribeDBSnapshotAttributesAsyncType? = nil,
            describeDBSnapshotAttributesSync: DescribeDBSnapshotAttributesSyncType? = nil,
            describeDBSnapshotsAsync: DescribeDBSnapshotsAsyncType? = nil,
            describeDBSnapshotsSync: DescribeDBSnapshotsSyncType? = nil,
            describeDBSubnetGroupsAsync: DescribeDBSubnetGroupsAsyncType? = nil,
            describeDBSubnetGroupsSync: DescribeDBSubnetGroupsSyncType? = nil,
            describeEngineDefaultClusterParametersAsync: DescribeEngineDefaultClusterParametersAsyncType? = nil,
            describeEngineDefaultClusterParametersSync: DescribeEngineDefaultClusterParametersSyncType? = nil,
            describeEngineDefaultParametersAsync: DescribeEngineDefaultParametersAsyncType? = nil,
            describeEngineDefaultParametersSync: DescribeEngineDefaultParametersSyncType? = nil,
            describeEventCategoriesAsync: DescribeEventCategoriesAsyncType? = nil,
            describeEventCategoriesSync: DescribeEventCategoriesSyncType? = nil,
            describeEventSubscriptionsAsync: DescribeEventSubscriptionsAsyncType? = nil,
            describeEventSubscriptionsSync: DescribeEventSubscriptionsSyncType? = nil,
            describeEventsAsync: DescribeEventsAsyncType? = nil,
            describeEventsSync: DescribeEventsSyncType? = nil,
            describeExportTasksAsync: DescribeExportTasksAsyncType? = nil,
            describeExportTasksSync: DescribeExportTasksSyncType? = nil,
            describeGlobalClustersAsync: DescribeGlobalClustersAsyncType? = nil,
            describeGlobalClustersSync: DescribeGlobalClustersSyncType? = nil,
            describeOptionGroupOptionsAsync: DescribeOptionGroupOptionsAsyncType? = nil,
            describeOptionGroupOptionsSync: DescribeOptionGroupOptionsSyncType? = nil,
            describeOptionGroupsAsync: DescribeOptionGroupsAsyncType? = nil,
            describeOptionGroupsSync: DescribeOptionGroupsSyncType? = nil,
            describeOrderableDBInstanceOptionsAsync: DescribeOrderableDBInstanceOptionsAsyncType? = nil,
            describeOrderableDBInstanceOptionsSync: DescribeOrderableDBInstanceOptionsSyncType? = nil,
            describePendingMaintenanceActionsAsync: DescribePendingMaintenanceActionsAsyncType? = nil,
            describePendingMaintenanceActionsSync: DescribePendingMaintenanceActionsSyncType? = nil,
            describeReservedDBInstancesAsync: DescribeReservedDBInstancesAsyncType? = nil,
            describeReservedDBInstancesSync: DescribeReservedDBInstancesSyncType? = nil,
            describeReservedDBInstancesOfferingsAsync: DescribeReservedDBInstancesOfferingsAsyncType? = nil,
            describeReservedDBInstancesOfferingsSync: DescribeReservedDBInstancesOfferingsSyncType? = nil,
            describeSourceRegionsAsync: DescribeSourceRegionsAsyncType? = nil,
            describeSourceRegionsSync: DescribeSourceRegionsSyncType? = nil,
            describeValidDBInstanceModificationsAsync: DescribeValidDBInstanceModificationsAsyncType? = nil,
            describeValidDBInstanceModificationsSync: DescribeValidDBInstanceModificationsSyncType? = nil,
            downloadDBLogFilePortionAsync: DownloadDBLogFilePortionAsyncType? = nil,
            downloadDBLogFilePortionSync: DownloadDBLogFilePortionSyncType? = nil,
            failoverDBClusterAsync: FailoverDBClusterAsyncType? = nil,
            failoverDBClusterSync: FailoverDBClusterSyncType? = nil,
            failoverGlobalClusterAsync: FailoverGlobalClusterAsyncType? = nil,
            failoverGlobalClusterSync: FailoverGlobalClusterSyncType? = nil,
            listTagsForResourceAsync: ListTagsForResourceAsyncType? = nil,
            listTagsForResourceSync: ListTagsForResourceSyncType? = nil,
            modifyActivityStreamAsync: ModifyActivityStreamAsyncType? = nil,
            modifyActivityStreamSync: ModifyActivityStreamSyncType? = nil,
            modifyCertificatesAsync: ModifyCertificatesAsyncType? = nil,
            modifyCertificatesSync: ModifyCertificatesSyncType? = nil,
            modifyCurrentDBClusterCapacityAsync: ModifyCurrentDBClusterCapacityAsyncType? = nil,
            modifyCurrentDBClusterCapacitySync: ModifyCurrentDBClusterCapacitySyncType? = nil,
            modifyCustomDBEngineVersionAsync: ModifyCustomDBEngineVersionAsyncType? = nil,
            modifyCustomDBEngineVersionSync: ModifyCustomDBEngineVersionSyncType? = nil,
            modifyDBClusterAsync: ModifyDBClusterAsyncType? = nil,
            modifyDBClusterSync: ModifyDBClusterSyncType? = nil,
            modifyDBClusterEndpointAsync: ModifyDBClusterEndpointAsyncType? = nil,
            modifyDBClusterEndpointSync: ModifyDBClusterEndpointSyncType? = nil,
            modifyDBClusterParameterGroupAsync: ModifyDBClusterParameterGroupAsyncType? = nil,
            modifyDBClusterParameterGroupSync: ModifyDBClusterParameterGroupSyncType? = nil,
            modifyDBClusterSnapshotAttributeAsync: ModifyDBClusterSnapshotAttributeAsyncType? = nil,
            modifyDBClusterSnapshotAttributeSync: ModifyDBClusterSnapshotAttributeSyncType? = nil,
            modifyDBInstanceAsync: ModifyDBInstanceAsyncType? = nil,
            modifyDBInstanceSync: ModifyDBInstanceSyncType? = nil,
            modifyDBParameterGroupAsync: ModifyDBParameterGroupAsyncType? = nil,
            modifyDBParameterGroupSync: ModifyDBParameterGroupSyncType? = nil,
            modifyDBProxyAsync: ModifyDBProxyAsyncType? = nil,
            modifyDBProxySync: ModifyDBProxySyncType? = nil,
            modifyDBProxyEndpointAsync: ModifyDBProxyEndpointAsyncType? = nil,
            modifyDBProxyEndpointSync: ModifyDBProxyEndpointSyncType? = nil,
            modifyDBProxyTargetGroupAsync: ModifyDBProxyTargetGroupAsyncType? = nil,
            modifyDBProxyTargetGroupSync: ModifyDBProxyTargetGroupSyncType? = nil,
            modifyDBSnapshotAsync: ModifyDBSnapshotAsyncType? = nil,
            modifyDBSnapshotSync: ModifyDBSnapshotSyncType? = nil,
            modifyDBSnapshotAttributeAsync: ModifyDBSnapshotAttributeAsyncType? = nil,
            modifyDBSnapshotAttributeSync: ModifyDBSnapshotAttributeSyncType? = nil,
            modifyDBSubnetGroupAsync: ModifyDBSubnetGroupAsyncType? = nil,
            modifyDBSubnetGroupSync: ModifyDBSubnetGroupSyncType? = nil,
            modifyEventSubscriptionAsync: ModifyEventSubscriptionAsyncType? = nil,
            modifyEventSubscriptionSync: ModifyEventSubscriptionSyncType? = nil,
            modifyGlobalClusterAsync: ModifyGlobalClusterAsyncType? = nil,
            modifyGlobalClusterSync: ModifyGlobalClusterSyncType? = nil,
            modifyOptionGroupAsync: ModifyOptionGroupAsyncType? = nil,
            modifyOptionGroupSync: ModifyOptionGroupSyncType? = nil,
            promoteReadReplicaAsync: PromoteReadReplicaAsyncType? = nil,
            promoteReadReplicaSync: PromoteReadReplicaSyncType? = nil,
            promoteReadReplicaDBClusterAsync: PromoteReadReplicaDBClusterAsyncType? = nil,
            promoteReadReplicaDBClusterSync: PromoteReadReplicaDBClusterSyncType? = nil,
            purchaseReservedDBInstancesOfferingAsync: PurchaseReservedDBInstancesOfferingAsyncType? = nil,
            purchaseReservedDBInstancesOfferingSync: PurchaseReservedDBInstancesOfferingSyncType? = nil,
            rebootDBClusterAsync: RebootDBClusterAsyncType? = nil,
            rebootDBClusterSync: RebootDBClusterSyncType? = nil,
            rebootDBInstanceAsync: RebootDBInstanceAsyncType? = nil,
            rebootDBInstanceSync: RebootDBInstanceSyncType? = nil,
            registerDBProxyTargetsAsync: RegisterDBProxyTargetsAsyncType? = nil,
            registerDBProxyTargetsSync: RegisterDBProxyTargetsSyncType? = nil,
            removeFromGlobalClusterAsync: RemoveFromGlobalClusterAsyncType? = nil,
            removeFromGlobalClusterSync: RemoveFromGlobalClusterSyncType? = nil,
            removeRoleFromDBClusterAsync: RemoveRoleFromDBClusterAsyncType? = nil,
            removeRoleFromDBClusterSync: RemoveRoleFromDBClusterSyncType? = nil,
            removeRoleFromDBInstanceAsync: RemoveRoleFromDBInstanceAsyncType? = nil,
            removeRoleFromDBInstanceSync: RemoveRoleFromDBInstanceSyncType? = nil,
            removeSourceIdentifierFromSubscriptionAsync: RemoveSourceIdentifierFromSubscriptionAsyncType? = nil,
            removeSourceIdentifierFromSubscriptionSync: RemoveSourceIdentifierFromSubscriptionSyncType? = nil,
            removeTagsFromResourceAsync: RemoveTagsFromResourceAsyncType? = nil,
            removeTagsFromResourceSync: RemoveTagsFromResourceSyncType? = nil,
            resetDBClusterParameterGroupAsync: ResetDBClusterParameterGroupAsyncType? = nil,
            resetDBClusterParameterGroupSync: ResetDBClusterParameterGroupSyncType? = nil,
            resetDBParameterGroupAsync: ResetDBParameterGroupAsyncType? = nil,
            resetDBParameterGroupSync: ResetDBParameterGroupSyncType? = nil,
            restoreDBClusterFromS3Async: RestoreDBClusterFromS3AsyncType? = nil,
            restoreDBClusterFromS3Sync: RestoreDBClusterFromS3SyncType? = nil,
            restoreDBClusterFromSnapshotAsync: RestoreDBClusterFromSnapshotAsyncType? = nil,
            restoreDBClusterFromSnapshotSync: RestoreDBClusterFromSnapshotSyncType? = nil,
            restoreDBClusterToPointInTimeAsync: RestoreDBClusterToPointInTimeAsyncType? = nil,
            restoreDBClusterToPointInTimeSync: RestoreDBClusterToPointInTimeSyncType? = nil,
            restoreDBInstanceFromDBSnapshotAsync: RestoreDBInstanceFromDBSnapshotAsyncType? = nil,
            restoreDBInstanceFromDBSnapshotSync: RestoreDBInstanceFromDBSnapshotSyncType? = nil,
            restoreDBInstanceFromS3Async: RestoreDBInstanceFromS3AsyncType? = nil,
            restoreDBInstanceFromS3Sync: RestoreDBInstanceFromS3SyncType? = nil,
            restoreDBInstanceToPointInTimeAsync: RestoreDBInstanceToPointInTimeAsyncType? = nil,
            restoreDBInstanceToPointInTimeSync: RestoreDBInstanceToPointInTimeSyncType? = nil,
            revokeDBSecurityGroupIngressAsync: RevokeDBSecurityGroupIngressAsyncType? = nil,
            revokeDBSecurityGroupIngressSync: RevokeDBSecurityGroupIngressSyncType? = nil,
            startActivityStreamAsync: StartActivityStreamAsyncType? = nil,
            startActivityStreamSync: StartActivityStreamSyncType? = nil,
            startDBClusterAsync: StartDBClusterAsyncType? = nil,
            startDBClusterSync: StartDBClusterSyncType? = nil,
            startDBInstanceAsync: StartDBInstanceAsyncType? = nil,
            startDBInstanceSync: StartDBInstanceSyncType? = nil,
            startDBInstanceAutomatedBackupsReplicationAsync: StartDBInstanceAutomatedBackupsReplicationAsyncType? = nil,
            startDBInstanceAutomatedBackupsReplicationSync: StartDBInstanceAutomatedBackupsReplicationSyncType? = nil,
            startExportTaskAsync: StartExportTaskAsyncType? = nil,
            startExportTaskSync: StartExportTaskSyncType? = nil,
            stopActivityStreamAsync: StopActivityStreamAsyncType? = nil,
            stopActivityStreamSync: StopActivityStreamSyncType? = nil,
            stopDBClusterAsync: StopDBClusterAsyncType? = nil,
            stopDBClusterSync: StopDBClusterSyncType? = nil,
            stopDBInstanceAsync: StopDBInstanceAsyncType? = nil,
            stopDBInstanceSync: StopDBInstanceSyncType? = nil,
            stopDBInstanceAutomatedBackupsReplicationAsync: StopDBInstanceAutomatedBackupsReplicationAsyncType? = nil,
            stopDBInstanceAutomatedBackupsReplicationSync: StopDBInstanceAutomatedBackupsReplicationSyncType? = nil,
            switchoverReadReplicaAsync: SwitchoverReadReplicaAsyncType? = nil,
            switchoverReadReplicaSync: SwitchoverReadReplicaSyncType? = nil) {
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
        self.createCustomDBEngineVersionAsyncOverride = createCustomDBEngineVersionAsync
        self.createCustomDBEngineVersionSyncOverride = createCustomDBEngineVersionSync
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
        self.createDBProxyEndpointAsyncOverride = createDBProxyEndpointAsync
        self.createDBProxyEndpointSyncOverride = createDBProxyEndpointSync
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
        self.deleteCustomDBEngineVersionAsyncOverride = deleteCustomDBEngineVersionAsync
        self.deleteCustomDBEngineVersionSyncOverride = deleteCustomDBEngineVersionSync
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
        self.deleteDBProxyEndpointAsyncOverride = deleteDBProxyEndpointAsync
        self.deleteDBProxyEndpointSyncOverride = deleteDBProxyEndpointSync
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
        self.deleteOptionGroupAsyncOverride = deleteOptionGroupAsync
        self.deleteOptionGroupSyncOverride = deleteOptionGroupSync
        self.deregisterDBProxyTargetsAsyncOverride = deregisterDBProxyTargetsAsync
        self.deregisterDBProxyTargetsSyncOverride = deregisterDBProxyTargetsSync
        self.describeAccountAttributesAsyncOverride = describeAccountAttributesAsync
        self.describeAccountAttributesSyncOverride = describeAccountAttributesSync
        self.describeCertificatesAsyncOverride = describeCertificatesAsync
        self.describeCertificatesSyncOverride = describeCertificatesSync
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
        self.describeDBProxyEndpointsAsyncOverride = describeDBProxyEndpointsAsync
        self.describeDBProxyEndpointsSyncOverride = describeDBProxyEndpointsSync
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
        self.failoverGlobalClusterAsyncOverride = failoverGlobalClusterAsync
        self.failoverGlobalClusterSyncOverride = failoverGlobalClusterSync
        self.listTagsForResourceAsyncOverride = listTagsForResourceAsync
        self.listTagsForResourceSyncOverride = listTagsForResourceSync
        self.modifyActivityStreamAsyncOverride = modifyActivityStreamAsync
        self.modifyActivityStreamSyncOverride = modifyActivityStreamSync
        self.modifyCertificatesAsyncOverride = modifyCertificatesAsync
        self.modifyCertificatesSyncOverride = modifyCertificatesSync
        self.modifyCurrentDBClusterCapacityAsyncOverride = modifyCurrentDBClusterCapacityAsync
        self.modifyCurrentDBClusterCapacitySyncOverride = modifyCurrentDBClusterCapacitySync
        self.modifyCustomDBEngineVersionAsyncOverride = modifyCustomDBEngineVersionAsync
        self.modifyCustomDBEngineVersionSyncOverride = modifyCustomDBEngineVersionSync
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
        self.modifyDBProxyEndpointAsyncOverride = modifyDBProxyEndpointAsync
        self.modifyDBProxyEndpointSyncOverride = modifyDBProxyEndpointSync
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
        self.rebootDBClusterAsyncOverride = rebootDBClusterAsync
        self.rebootDBClusterSyncOverride = rebootDBClusterSync
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
        self.startDBInstanceAutomatedBackupsReplicationAsyncOverride = startDBInstanceAutomatedBackupsReplicationAsync
        self.startDBInstanceAutomatedBackupsReplicationSyncOverride = startDBInstanceAutomatedBackupsReplicationSync
        self.startExportTaskAsyncOverride = startExportTaskAsync
        self.startExportTaskSyncOverride = startExportTaskSync
        self.stopActivityStreamAsyncOverride = stopActivityStreamAsync
        self.stopActivityStreamSyncOverride = stopActivityStreamSync
        self.stopDBClusterAsyncOverride = stopDBClusterAsync
        self.stopDBClusterSyncOverride = stopDBClusterSync
        self.stopDBInstanceAsyncOverride = stopDBInstanceAsync
        self.stopDBInstanceSyncOverride = stopDBInstanceSync
        self.stopDBInstanceAutomatedBackupsReplicationAsyncOverride = stopDBInstanceAutomatedBackupsReplicationAsync
        self.stopDBInstanceAutomatedBackupsReplicationSyncOverride = stopDBInstanceAutomatedBackupsReplicationSync
        self.switchoverReadReplicaAsyncOverride = switchoverReadReplicaAsync
        self.switchoverReadReplicaSyncOverride = switchoverReadReplicaSync
    }

    /**
     Invokes the AddRoleToDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddRoleToDBClusterMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBClusterNotFound, dBClusterRoleAlreadyExists, dBClusterRoleQuotaExceeded, invalidDBClusterState.
     */
    public func addRoleToDBClusterAsync(
            input: RDSModel.AddRoleToDBClusterMessage, 
            completion: @escaping (RDSError?) -> ()) throws {
        if let addRoleToDBClusterAsyncOverride = addRoleToDBClusterAsyncOverride {
            return try addRoleToDBClusterAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the AddRoleToDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddRoleToDBClusterMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBClusterRoleAlreadyExists, dBClusterRoleQuotaExceeded, invalidDBClusterState.
     */
    public func addRoleToDBClusterSync(
            input: RDSModel.AddRoleToDBClusterMessage) throws {
        if let addRoleToDBClusterSyncOverride = addRoleToDBClusterSyncOverride {
            return try addRoleToDBClusterSyncOverride(input)
        }

    }

    /**
     Invokes the AddRoleToDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddRoleToDBInstanceMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBInstanceNotFound, dBInstanceRoleAlreadyExists, dBInstanceRoleQuotaExceeded, invalidDBInstanceState.
     */
    public func addRoleToDBInstanceAsync(
            input: RDSModel.AddRoleToDBInstanceMessage, 
            completion: @escaping (RDSError?) -> ()) throws {
        if let addRoleToDBInstanceAsyncOverride = addRoleToDBInstanceAsyncOverride {
            return try addRoleToDBInstanceAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the AddRoleToDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddRoleToDBInstanceMessage object being passed to this operation.
     - Throws: dBInstanceNotFound, dBInstanceRoleAlreadyExists, dBInstanceRoleQuotaExceeded, invalidDBInstanceState.
     */
    public func addRoleToDBInstanceSync(
            input: RDSModel.AddRoleToDBInstanceMessage) throws {
        if let addRoleToDBInstanceSyncOverride = addRoleToDBInstanceSyncOverride {
            return try addRoleToDBInstanceSyncOverride(input)
        }

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
    public func addSourceIdentifierToSubscriptionAsync(
            input: RDSModel.AddSourceIdentifierToSubscriptionMessage, 
            completion: @escaping (Result<RDSModel.AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription, RDSError>) -> ()) throws {
        if let addSourceIdentifierToSubscriptionAsyncOverride = addSourceIdentifierToSubscriptionAsyncOverride {
            return try addSourceIdentifierToSubscriptionAsyncOverride(input, completion)
        }

        let result = AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription.__default
        
        completion(.success(result))
    }

    /**
     Invokes the AddSourceIdentifierToSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddSourceIdentifierToSubscriptionMessage object being passed to this operation.
     - Returns: The AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: sourceNotFound, subscriptionNotFound.
     */
    public func addSourceIdentifierToSubscriptionSync(
            input: RDSModel.AddSourceIdentifierToSubscriptionMessage) throws -> RDSModel.AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription {
        if let addSourceIdentifierToSubscriptionSyncOverride = addSourceIdentifierToSubscriptionSyncOverride {
            return try addSourceIdentifierToSubscriptionSyncOverride(input)
        }

        return AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription.__default
    }

    /**
     Invokes the AddTagsToResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddTagsToResourceMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetGroupNotFound, dBSnapshotNotFound.
     */
    public func addTagsToResourceAsync(
            input: RDSModel.AddTagsToResourceMessage, 
            completion: @escaping (RDSError?) -> ()) throws {
        if let addTagsToResourceAsyncOverride = addTagsToResourceAsyncOverride {
            return try addTagsToResourceAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the AddTagsToResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddTagsToResourceMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetGroupNotFound, dBSnapshotNotFound.
     */
    public func addTagsToResourceSync(
            input: RDSModel.AddTagsToResourceMessage) throws {
        if let addTagsToResourceSyncOverride = addTagsToResourceSyncOverride {
            return try addTagsToResourceSyncOverride(input)
        }

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
    public func applyPendingMaintenanceActionAsync(
            input: RDSModel.ApplyPendingMaintenanceActionMessage, 
            completion: @escaping (Result<RDSModel.ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction, RDSError>) -> ()) throws {
        if let applyPendingMaintenanceActionAsyncOverride = applyPendingMaintenanceActionAsyncOverride {
            return try applyPendingMaintenanceActionAsyncOverride(input, completion)
        }

        let result = ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ApplyPendingMaintenanceAction operation waiting for the response before returning.

     - Parameters:
         - input: The validated ApplyPendingMaintenanceActionMessage object being passed to this operation.
     - Returns: The ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidDBClusterState, invalidDBInstanceState, resourceNotFound.
     */
    public func applyPendingMaintenanceActionSync(
            input: RDSModel.ApplyPendingMaintenanceActionMessage) throws -> RDSModel.ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction {
        if let applyPendingMaintenanceActionSyncOverride = applyPendingMaintenanceActionSyncOverride {
            return try applyPendingMaintenanceActionSyncOverride(input)
        }

        return ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction.__default
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
    public func authorizeDBSecurityGroupIngressAsync(
            input: RDSModel.AuthorizeDBSecurityGroupIngressMessage, 
            completion: @escaping (Result<RDSModel.AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress, RDSError>) -> ()) throws {
        if let authorizeDBSecurityGroupIngressAsyncOverride = authorizeDBSecurityGroupIngressAsyncOverride {
            return try authorizeDBSecurityGroupIngressAsyncOverride(input, completion)
        }

        let result = AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress.__default
        
        completion(.success(result))
    }

    /**
     Invokes the AuthorizeDBSecurityGroupIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated AuthorizeDBSecurityGroupIngressMessage object being passed to this operation.
     - Returns: The AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationAlreadyExists, authorizationQuotaExceeded, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    public func authorizeDBSecurityGroupIngressSync(
            input: RDSModel.AuthorizeDBSecurityGroupIngressMessage) throws -> RDSModel.AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress {
        if let authorizeDBSecurityGroupIngressSyncOverride = authorizeDBSecurityGroupIngressSyncOverride {
            return try authorizeDBSecurityGroupIngressSyncOverride(input)
        }

        return AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress.__default
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
    public func backtrackDBClusterAsync(
            input: RDSModel.BacktrackDBClusterMessage, 
            completion: @escaping (Result<RDSModel.DBClusterBacktrackForBacktrackDBCluster, RDSError>) -> ()) throws {
        if let backtrackDBClusterAsyncOverride = backtrackDBClusterAsyncOverride {
            return try backtrackDBClusterAsyncOverride(input, completion)
        }

        let result = DBClusterBacktrackForBacktrackDBCluster.__default
        
        completion(.success(result))
    }

    /**
     Invokes the BacktrackDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated BacktrackDBClusterMessage object being passed to this operation.
     - Returns: The DBClusterBacktrackForBacktrackDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState.
     */
    public func backtrackDBClusterSync(
            input: RDSModel.BacktrackDBClusterMessage) throws -> RDSModel.DBClusterBacktrackForBacktrackDBCluster {
        if let backtrackDBClusterSyncOverride = backtrackDBClusterSyncOverride {
            return try backtrackDBClusterSyncOverride(input)
        }

        return DBClusterBacktrackForBacktrackDBCluster.__default
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
    public func cancelExportTaskAsync(
            input: RDSModel.CancelExportTaskMessage, 
            completion: @escaping (Result<RDSModel.ExportTaskForCancelExportTask, RDSError>) -> ()) throws {
        if let cancelExportTaskAsyncOverride = cancelExportTaskAsyncOverride {
            return try cancelExportTaskAsyncOverride(input, completion)
        }

        let result = ExportTaskForCancelExportTask.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CancelExportTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelExportTaskMessage object being passed to this operation.
     - Returns: The ExportTaskForCancelExportTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: exportTaskNotFound, invalidExportTaskState.
     */
    public func cancelExportTaskSync(
            input: RDSModel.CancelExportTaskMessage) throws -> RDSModel.ExportTaskForCancelExportTask {
        if let cancelExportTaskSyncOverride = cancelExportTaskSyncOverride {
            return try cancelExportTaskSyncOverride(input)
        }

        return ExportTaskForCancelExportTask.__default
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
    public func copyDBClusterParameterGroupAsync(
            input: RDSModel.CopyDBClusterParameterGroupMessage, 
            completion: @escaping (Result<RDSModel.CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup, RDSError>) -> ()) throws {
        if let copyDBClusterParameterGroupAsyncOverride = copyDBClusterParameterGroupAsyncOverride {
            return try copyDBClusterParameterGroupAsyncOverride(input, completion)
        }

        let result = CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CopyDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    public func copyDBClusterParameterGroupSync(
            input: RDSModel.CopyDBClusterParameterGroupMessage) throws -> RDSModel.CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup {
        if let copyDBClusterParameterGroupSyncOverride = copyDBClusterParameterGroupSyncOverride {
            return try copyDBClusterParameterGroupSyncOverride(input)
        }

        return CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup.__default
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
    public func copyDBClusterSnapshotAsync(
            input: RDSModel.CopyDBClusterSnapshotMessage, 
            completion: @escaping (Result<RDSModel.CopyDBClusterSnapshotResultForCopyDBClusterSnapshot, RDSError>) -> ()) throws {
        if let copyDBClusterSnapshotAsyncOverride = copyDBClusterSnapshotAsyncOverride {
            return try copyDBClusterSnapshotAsyncOverride(input, completion)
        }

        let result = CopyDBClusterSnapshotResultForCopyDBClusterSnapshot.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CopyDBClusterSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyDBClusterSnapshotMessage object being passed to this operation.
     - Returns: The CopyDBClusterSnapshotResultForCopyDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotAlreadyExists, dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, invalidDBClusterState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    public func copyDBClusterSnapshotSync(
            input: RDSModel.CopyDBClusterSnapshotMessage) throws -> RDSModel.CopyDBClusterSnapshotResultForCopyDBClusterSnapshot {
        if let copyDBClusterSnapshotSyncOverride = copyDBClusterSnapshotSyncOverride {
            return try copyDBClusterSnapshotSyncOverride(input)
        }

        return CopyDBClusterSnapshotResultForCopyDBClusterSnapshot.__default
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
    public func copyDBParameterGroupAsync(
            input: RDSModel.CopyDBParameterGroupMessage, 
            completion: @escaping (Result<RDSModel.CopyDBParameterGroupResultForCopyDBParameterGroup, RDSError>) -> ()) throws {
        if let copyDBParameterGroupAsyncOverride = copyDBParameterGroupAsyncOverride {
            return try copyDBParameterGroupAsyncOverride(input, completion)
        }

        let result = CopyDBParameterGroupResultForCopyDBParameterGroup.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CopyDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyDBParameterGroupMessage object being passed to this operation.
     - Returns: The CopyDBParameterGroupResultForCopyDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    public func copyDBParameterGroupSync(
            input: RDSModel.CopyDBParameterGroupMessage) throws -> RDSModel.CopyDBParameterGroupResultForCopyDBParameterGroup {
        if let copyDBParameterGroupSyncOverride = copyDBParameterGroupSyncOverride {
            return try copyDBParameterGroupSyncOverride(input)
        }

        return CopyDBParameterGroupResultForCopyDBParameterGroup.__default
    }

    /**
     Invokes the CopyDBSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyDBSnapshotMessage object being passed to this operation.
         - completion: The CopyDBSnapshotResultForCopyDBSnapshot object or an error will be passed to this 
           callback when the operation is complete. The CopyDBSnapshotResultForCopyDBSnapshot
           object will be validated before being returned to caller.
           The possible errors are: customAvailabilityZoneNotFound, dBSnapshotAlreadyExists, dBSnapshotNotFound, invalidDBSnapshotState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    public func copyDBSnapshotAsync(
            input: RDSModel.CopyDBSnapshotMessage, 
            completion: @escaping (Result<RDSModel.CopyDBSnapshotResultForCopyDBSnapshot, RDSError>) -> ()) throws {
        if let copyDBSnapshotAsyncOverride = copyDBSnapshotAsyncOverride {
            return try copyDBSnapshotAsyncOverride(input, completion)
        }

        let result = CopyDBSnapshotResultForCopyDBSnapshot.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CopyDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyDBSnapshotMessage object being passed to this operation.
     - Returns: The CopyDBSnapshotResultForCopyDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: customAvailabilityZoneNotFound, dBSnapshotAlreadyExists, dBSnapshotNotFound, invalidDBSnapshotState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    public func copyDBSnapshotSync(
            input: RDSModel.CopyDBSnapshotMessage) throws -> RDSModel.CopyDBSnapshotResultForCopyDBSnapshot {
        if let copyDBSnapshotSyncOverride = copyDBSnapshotSyncOverride {
            return try copyDBSnapshotSyncOverride(input)
        }

        return CopyDBSnapshotResultForCopyDBSnapshot.__default
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
    public func copyOptionGroupAsync(
            input: RDSModel.CopyOptionGroupMessage, 
            completion: @escaping (Result<RDSModel.CopyOptionGroupResultForCopyOptionGroup, RDSError>) -> ()) throws {
        if let copyOptionGroupAsyncOverride = copyOptionGroupAsyncOverride {
            return try copyOptionGroupAsyncOverride(input, completion)
        }

        let result = CopyOptionGroupResultForCopyOptionGroup.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CopyOptionGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyOptionGroupMessage object being passed to this operation.
     - Returns: The CopyOptionGroupResultForCopyOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: optionGroupAlreadyExists, optionGroupNotFound, optionGroupQuotaExceeded.
     */
    public func copyOptionGroupSync(
            input: RDSModel.CopyOptionGroupMessage) throws -> RDSModel.CopyOptionGroupResultForCopyOptionGroup {
        if let copyOptionGroupSyncOverride = copyOptionGroupSyncOverride {
            return try copyOptionGroupSyncOverride(input)
        }

        return CopyOptionGroupResultForCopyOptionGroup.__default
    }

    /**
     Invokes the CreateCustomDBEngineVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateCustomDBEngineVersionMessage object being passed to this operation.
         - completion: The DBEngineVersionForCreateCustomDBEngineVersion object or an error will be passed to this 
           callback when the operation is complete. The DBEngineVersionForCreateCustomDBEngineVersion
           object will be validated before being returned to caller.
           The possible errors are: customDBEngineVersionAlreadyExists, customDBEngineVersionQuotaExceeded, kMSKeyNotAccessible.
     */
    public func createCustomDBEngineVersionAsync(
            input: RDSModel.CreateCustomDBEngineVersionMessage, 
            completion: @escaping (Result<RDSModel.DBEngineVersionForCreateCustomDBEngineVersion, RDSError>) -> ()) throws {
        if let createCustomDBEngineVersionAsyncOverride = createCustomDBEngineVersionAsyncOverride {
            return try createCustomDBEngineVersionAsyncOverride(input, completion)
        }

        let result = DBEngineVersionForCreateCustomDBEngineVersion.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CreateCustomDBEngineVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateCustomDBEngineVersionMessage object being passed to this operation.
     - Returns: The DBEngineVersionForCreateCustomDBEngineVersion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: customDBEngineVersionAlreadyExists, customDBEngineVersionQuotaExceeded, kMSKeyNotAccessible.
     */
    public func createCustomDBEngineVersionSync(
            input: RDSModel.CreateCustomDBEngineVersionMessage) throws -> RDSModel.DBEngineVersionForCreateCustomDBEngineVersion {
        if let createCustomDBEngineVersionSyncOverride = createCustomDBEngineVersionSyncOverride {
            return try createCustomDBEngineVersionSyncOverride(input)
        }

        return DBEngineVersionForCreateCustomDBEngineVersion.__default
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
    public func createDBClusterAsync(
            input: RDSModel.CreateDBClusterMessage, 
            completion: @escaping (Result<RDSModel.CreateDBClusterResultForCreateDBCluster, RDSError>) -> ()) throws {
        if let createDBClusterAsyncOverride = createDBClusterAsyncOverride {
            return try createDBClusterAsyncOverride(input, completion)
        }

        let result = CreateDBClusterResultForCreateDBCluster.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CreateDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBClusterMessage object being passed to this operation.
     - Returns: The CreateDBClusterResultForCreateDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, globalClusterNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBInstanceState, invalidDBSubnetGroupState, invalidGlobalClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    public func createDBClusterSync(
            input: RDSModel.CreateDBClusterMessage) throws -> RDSModel.CreateDBClusterResultForCreateDBCluster {
        if let createDBClusterSyncOverride = createDBClusterSyncOverride {
            return try createDBClusterSyncOverride(input)
        }

        return CreateDBClusterResultForCreateDBCluster.__default
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
    public func createDBClusterEndpointAsync(
            input: RDSModel.CreateDBClusterEndpointMessage, 
            completion: @escaping (Result<RDSModel.DBClusterEndpointForCreateDBClusterEndpoint, RDSError>) -> ()) throws {
        if let createDBClusterEndpointAsyncOverride = createDBClusterEndpointAsyncOverride {
            return try createDBClusterEndpointAsyncOverride(input, completion)
        }

        let result = DBClusterEndpointForCreateDBClusterEndpoint.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CreateDBClusterEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBClusterEndpointMessage object being passed to this operation.
     - Returns: The DBClusterEndpointForCreateDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterEndpointAlreadyExists, dBClusterEndpointQuotaExceeded, dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func createDBClusterEndpointSync(
            input: RDSModel.CreateDBClusterEndpointMessage) throws -> RDSModel.DBClusterEndpointForCreateDBClusterEndpoint {
        if let createDBClusterEndpointSyncOverride = createDBClusterEndpointSyncOverride {
            return try createDBClusterEndpointSyncOverride(input)
        }

        return DBClusterEndpointForCreateDBClusterEndpoint.__default
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
    public func createDBClusterParameterGroupAsync(
            input: RDSModel.CreateDBClusterParameterGroupMessage, 
            completion: @escaping (Result<RDSModel.CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup, RDSError>) -> ()) throws {
        if let createDBClusterParameterGroupAsyncOverride = createDBClusterParameterGroupAsyncOverride {
            return try createDBClusterParameterGroupAsyncOverride(input, completion)
        }

        let result = CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CreateDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    public func createDBClusterParameterGroupSync(
            input: RDSModel.CreateDBClusterParameterGroupMessage) throws -> RDSModel.CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup {
        if let createDBClusterParameterGroupSyncOverride = createDBClusterParameterGroupSyncOverride {
            return try createDBClusterParameterGroupSyncOverride(input)
        }

        return CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup.__default
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
    public func createDBClusterSnapshotAsync(
            input: RDSModel.CreateDBClusterSnapshotMessage, 
            completion: @escaping (Result<RDSModel.CreateDBClusterSnapshotResultForCreateDBClusterSnapshot, RDSError>) -> ()) throws {
        if let createDBClusterSnapshotAsyncOverride = createDBClusterSnapshotAsyncOverride {
            return try createDBClusterSnapshotAsyncOverride(input, completion)
        }

        let result = CreateDBClusterSnapshotResultForCreateDBClusterSnapshot.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CreateDBClusterSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBClusterSnapshotMessage object being passed to this operation.
     - Returns: The CreateDBClusterSnapshotResultForCreateDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    public func createDBClusterSnapshotSync(
            input: RDSModel.CreateDBClusterSnapshotMessage) throws -> RDSModel.CreateDBClusterSnapshotResultForCreateDBClusterSnapshot {
        if let createDBClusterSnapshotSyncOverride = createDBClusterSnapshotSyncOverride {
            return try createDBClusterSnapshotSyncOverride(input)
        }

        return CreateDBClusterSnapshotResultForCreateDBClusterSnapshot.__default
    }

    /**
     Invokes the CreateDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBInstanceMessage object being passed to this operation.
         - completion: The CreateDBInstanceResultForCreateDBInstance object or an error will be passed to this 
           callback when the operation is complete. The CreateDBInstanceResultForCreateDBInstance
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBClusterNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, networkTypeNotSupported, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func createDBInstanceAsync(
            input: RDSModel.CreateDBInstanceMessage, 
            completion: @escaping (Result<RDSModel.CreateDBInstanceResultForCreateDBInstance, RDSError>) -> ()) throws {
        if let createDBInstanceAsyncOverride = createDBInstanceAsyncOverride {
            return try createDBInstanceAsyncOverride(input, completion)
        }

        let result = CreateDBInstanceResultForCreateDBInstance.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CreateDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBInstanceMessage object being passed to this operation.
     - Returns: The CreateDBInstanceResultForCreateDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBClusterNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, networkTypeNotSupported, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func createDBInstanceSync(
            input: RDSModel.CreateDBInstanceMessage) throws -> RDSModel.CreateDBInstanceResultForCreateDBInstance {
        if let createDBInstanceSyncOverride = createDBInstanceSyncOverride {
            return try createDBInstanceSyncOverride(input)
        }

        return CreateDBInstanceResultForCreateDBInstance.__default
    }

    /**
     Invokes the CreateDBInstanceReadReplica operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBInstanceReadReplicaMessage object being passed to this operation.
         - completion: The CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica object or an error will be passed to this 
           callback when the operation is complete. The CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotAllowed, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSubnetGroup, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, networkTypeNotSupported, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func createDBInstanceReadReplicaAsync(
            input: RDSModel.CreateDBInstanceReadReplicaMessage, 
            completion: @escaping (Result<RDSModel.CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica, RDSError>) -> ()) throws {
        if let createDBInstanceReadReplicaAsyncOverride = createDBInstanceReadReplicaAsyncOverride {
            return try createDBInstanceReadReplicaAsyncOverride(input, completion)
        }

        let result = CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CreateDBInstanceReadReplica operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBInstanceReadReplicaMessage object being passed to this operation.
     - Returns: The CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotAllowed, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSubnetGroup, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, networkTypeNotSupported, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func createDBInstanceReadReplicaSync(
            input: RDSModel.CreateDBInstanceReadReplicaMessage) throws -> RDSModel.CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica {
        if let createDBInstanceReadReplicaSyncOverride = createDBInstanceReadReplicaSyncOverride {
            return try createDBInstanceReadReplicaSyncOverride(input)
        }

        return CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica.__default
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
    public func createDBParameterGroupAsync(
            input: RDSModel.CreateDBParameterGroupMessage, 
            completion: @escaping (Result<RDSModel.CreateDBParameterGroupResultForCreateDBParameterGroup, RDSError>) -> ()) throws {
        if let createDBParameterGroupAsyncOverride = createDBParameterGroupAsyncOverride {
            return try createDBParameterGroupAsyncOverride(input, completion)
        }

        let result = CreateDBParameterGroupResultForCreateDBParameterGroup.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CreateDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBParameterGroupMessage object being passed to this operation.
     - Returns: The CreateDBParameterGroupResultForCreateDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    public func createDBParameterGroupSync(
            input: RDSModel.CreateDBParameterGroupMessage) throws -> RDSModel.CreateDBParameterGroupResultForCreateDBParameterGroup {
        if let createDBParameterGroupSyncOverride = createDBParameterGroupSyncOverride {
            return try createDBParameterGroupSyncOverride(input)
        }

        return CreateDBParameterGroupResultForCreateDBParameterGroup.__default
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
    public func createDBProxyAsync(
            input: RDSModel.CreateDBProxyRequest, 
            completion: @escaping (Result<RDSModel.CreateDBProxyResponseForCreateDBProxy, RDSError>) -> ()) throws {
        if let createDBProxyAsyncOverride = createDBProxyAsyncOverride {
            return try createDBProxyAsyncOverride(input, completion)
        }

        let result = CreateDBProxyResponseForCreateDBProxy.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CreateDBProxy operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBProxyRequest object being passed to this operation.
     - Returns: The CreateDBProxyResponseForCreateDBProxy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyAlreadyExists, dBProxyQuotaExceeded, invalidSubnet.
     */
    public func createDBProxySync(
            input: RDSModel.CreateDBProxyRequest) throws -> RDSModel.CreateDBProxyResponseForCreateDBProxy {
        if let createDBProxySyncOverride = createDBProxySyncOverride {
            return try createDBProxySyncOverride(input)
        }

        return CreateDBProxyResponseForCreateDBProxy.__default
    }

    /**
     Invokes the CreateDBProxyEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBProxyEndpointRequest object being passed to this operation.
         - completion: The CreateDBProxyEndpointResponseForCreateDBProxyEndpoint object or an error will be passed to this 
           callback when the operation is complete. The CreateDBProxyEndpointResponseForCreateDBProxyEndpoint
           object will be validated before being returned to caller.
           The possible errors are: dBProxyEndpointAlreadyExists, dBProxyEndpointQuotaExceeded, dBProxyNotFound, invalidDBProxyState, invalidSubnet.
     */
    public func createDBProxyEndpointAsync(
            input: RDSModel.CreateDBProxyEndpointRequest, 
            completion: @escaping (Result<RDSModel.CreateDBProxyEndpointResponseForCreateDBProxyEndpoint, RDSError>) -> ()) throws {
        if let createDBProxyEndpointAsyncOverride = createDBProxyEndpointAsyncOverride {
            return try createDBProxyEndpointAsyncOverride(input, completion)
        }

        let result = CreateDBProxyEndpointResponseForCreateDBProxyEndpoint.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CreateDBProxyEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBProxyEndpointRequest object being passed to this operation.
     - Returns: The CreateDBProxyEndpointResponseForCreateDBProxyEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyEndpointAlreadyExists, dBProxyEndpointQuotaExceeded, dBProxyNotFound, invalidDBProxyState, invalidSubnet.
     */
    public func createDBProxyEndpointSync(
            input: RDSModel.CreateDBProxyEndpointRequest) throws -> RDSModel.CreateDBProxyEndpointResponseForCreateDBProxyEndpoint {
        if let createDBProxyEndpointSyncOverride = createDBProxyEndpointSyncOverride {
            return try createDBProxyEndpointSyncOverride(input)
        }

        return CreateDBProxyEndpointResponseForCreateDBProxyEndpoint.__default
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
    public func createDBSecurityGroupAsync(
            input: RDSModel.CreateDBSecurityGroupMessage, 
            completion: @escaping (Result<RDSModel.CreateDBSecurityGroupResultForCreateDBSecurityGroup, RDSError>) -> ()) throws {
        if let createDBSecurityGroupAsyncOverride = createDBSecurityGroupAsyncOverride {
            return try createDBSecurityGroupAsyncOverride(input, completion)
        }

        let result = CreateDBSecurityGroupResultForCreateDBSecurityGroup.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CreateDBSecurityGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBSecurityGroupMessage object being passed to this operation.
     - Returns: The CreateDBSecurityGroupResultForCreateDBSecurityGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSecurityGroupAlreadyExists, dBSecurityGroupNotSupported, dBSecurityGroupQuotaExceeded.
     */
    public func createDBSecurityGroupSync(
            input: RDSModel.CreateDBSecurityGroupMessage) throws -> RDSModel.CreateDBSecurityGroupResultForCreateDBSecurityGroup {
        if let createDBSecurityGroupSyncOverride = createDBSecurityGroupSyncOverride {
            return try createDBSecurityGroupSyncOverride(input)
        }

        return CreateDBSecurityGroupResultForCreateDBSecurityGroup.__default
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
    public func createDBSnapshotAsync(
            input: RDSModel.CreateDBSnapshotMessage, 
            completion: @escaping (Result<RDSModel.CreateDBSnapshotResultForCreateDBSnapshot, RDSError>) -> ()) throws {
        if let createDBSnapshotAsyncOverride = createDBSnapshotAsyncOverride {
            return try createDBSnapshotAsyncOverride(input, completion)
        }

        let result = CreateDBSnapshotResultForCreateDBSnapshot.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CreateDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBSnapshotMessage object being passed to this operation.
     - Returns: The CreateDBSnapshotResultForCreateDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    public func createDBSnapshotSync(
            input: RDSModel.CreateDBSnapshotMessage) throws -> RDSModel.CreateDBSnapshotResultForCreateDBSnapshot {
        if let createDBSnapshotSyncOverride = createDBSnapshotSyncOverride {
            return try createDBSnapshotSyncOverride(input)
        }

        return CreateDBSnapshotResultForCreateDBSnapshot.__default
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
    public func createDBSubnetGroupAsync(
            input: RDSModel.CreateDBSubnetGroupMessage, 
            completion: @escaping (Result<RDSModel.CreateDBSubnetGroupResultForCreateDBSubnetGroup, RDSError>) -> ()) throws {
        if let createDBSubnetGroupAsyncOverride = createDBSubnetGroupAsyncOverride {
            return try createDBSubnetGroupAsyncOverride(input, completion)
        }

        let result = CreateDBSubnetGroupResultForCreateDBSubnetGroup.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CreateDBSubnetGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBSubnetGroupMessage object being passed to this operation.
     - Returns: The CreateDBSubnetGroupResultForCreateDBSubnetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSubnetGroupAlreadyExists, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupQuotaExceeded, dBSubnetQuotaExceeded, invalidSubnet.
     */
    public func createDBSubnetGroupSync(
            input: RDSModel.CreateDBSubnetGroupMessage) throws -> RDSModel.CreateDBSubnetGroupResultForCreateDBSubnetGroup {
        if let createDBSubnetGroupSyncOverride = createDBSubnetGroupSyncOverride {
            return try createDBSubnetGroupSyncOverride(input)
        }

        return CreateDBSubnetGroupResultForCreateDBSubnetGroup.__default
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
    public func createEventSubscriptionAsync(
            input: RDSModel.CreateEventSubscriptionMessage, 
            completion: @escaping (Result<RDSModel.CreateEventSubscriptionResultForCreateEventSubscription, RDSError>) -> ()) throws {
        if let createEventSubscriptionAsyncOverride = createEventSubscriptionAsyncOverride {
            return try createEventSubscriptionAsyncOverride(input, completion)
        }

        let result = CreateEventSubscriptionResultForCreateEventSubscription.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CreateEventSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateEventSubscriptionMessage object being passed to this operation.
     - Returns: The CreateEventSubscriptionResultForCreateEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, sourceNotFound, subscriptionAlreadyExist, subscriptionCategoryNotFound.
     */
    public func createEventSubscriptionSync(
            input: RDSModel.CreateEventSubscriptionMessage) throws -> RDSModel.CreateEventSubscriptionResultForCreateEventSubscription {
        if let createEventSubscriptionSyncOverride = createEventSubscriptionSyncOverride {
            return try createEventSubscriptionSyncOverride(input)
        }

        return CreateEventSubscriptionResultForCreateEventSubscription.__default
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
    public func createGlobalClusterAsync(
            input: RDSModel.CreateGlobalClusterMessage, 
            completion: @escaping (Result<RDSModel.CreateGlobalClusterResultForCreateGlobalCluster, RDSError>) -> ()) throws {
        if let createGlobalClusterAsyncOverride = createGlobalClusterAsyncOverride {
            return try createGlobalClusterAsyncOverride(input, completion)
        }

        let result = CreateGlobalClusterResultForCreateGlobalCluster.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CreateGlobalCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateGlobalClusterMessage object being passed to this operation.
     - Returns: The CreateGlobalClusterResultForCreateGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, globalClusterAlreadyExists, globalClusterQuotaExceeded, invalidDBClusterState.
     */
    public func createGlobalClusterSync(
            input: RDSModel.CreateGlobalClusterMessage) throws -> RDSModel.CreateGlobalClusterResultForCreateGlobalCluster {
        if let createGlobalClusterSyncOverride = createGlobalClusterSyncOverride {
            return try createGlobalClusterSyncOverride(input)
        }

        return CreateGlobalClusterResultForCreateGlobalCluster.__default
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
    public func createOptionGroupAsync(
            input: RDSModel.CreateOptionGroupMessage, 
            completion: @escaping (Result<RDSModel.CreateOptionGroupResultForCreateOptionGroup, RDSError>) -> ()) throws {
        if let createOptionGroupAsyncOverride = createOptionGroupAsyncOverride {
            return try createOptionGroupAsyncOverride(input, completion)
        }

        let result = CreateOptionGroupResultForCreateOptionGroup.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CreateOptionGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateOptionGroupMessage object being passed to this operation.
     - Returns: The CreateOptionGroupResultForCreateOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: optionGroupAlreadyExists, optionGroupQuotaExceeded.
     */
    public func createOptionGroupSync(
            input: RDSModel.CreateOptionGroupMessage) throws -> RDSModel.CreateOptionGroupResultForCreateOptionGroup {
        if let createOptionGroupSyncOverride = createOptionGroupSyncOverride {
            return try createOptionGroupSyncOverride(input)
        }

        return CreateOptionGroupResultForCreateOptionGroup.__default
    }

    /**
     Invokes the DeleteCustomDBEngineVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteCustomDBEngineVersionMessage object being passed to this operation.
         - completion: The DBEngineVersionForDeleteCustomDBEngineVersion object or an error will be passed to this 
           callback when the operation is complete. The DBEngineVersionForDeleteCustomDBEngineVersion
           object will be validated before being returned to caller.
           The possible errors are: customDBEngineVersionNotFound, invalidCustomDBEngineVersionState.
     */
    public func deleteCustomDBEngineVersionAsync(
            input: RDSModel.DeleteCustomDBEngineVersionMessage, 
            completion: @escaping (Result<RDSModel.DBEngineVersionForDeleteCustomDBEngineVersion, RDSError>) -> ()) throws {
        if let deleteCustomDBEngineVersionAsyncOverride = deleteCustomDBEngineVersionAsyncOverride {
            return try deleteCustomDBEngineVersionAsyncOverride(input, completion)
        }

        let result = DBEngineVersionForDeleteCustomDBEngineVersion.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DeleteCustomDBEngineVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteCustomDBEngineVersionMessage object being passed to this operation.
     - Returns: The DBEngineVersionForDeleteCustomDBEngineVersion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: customDBEngineVersionNotFound, invalidCustomDBEngineVersionState.
     */
    public func deleteCustomDBEngineVersionSync(
            input: RDSModel.DeleteCustomDBEngineVersionMessage) throws -> RDSModel.DBEngineVersionForDeleteCustomDBEngineVersion {
        if let deleteCustomDBEngineVersionSyncOverride = deleteCustomDBEngineVersionSyncOverride {
            return try deleteCustomDBEngineVersionSyncOverride(input)
        }

        return DBEngineVersionForDeleteCustomDBEngineVersion.__default
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
    public func deleteDBClusterAsync(
            input: RDSModel.DeleteDBClusterMessage, 
            completion: @escaping (Result<RDSModel.DeleteDBClusterResultForDeleteDBCluster, RDSError>) -> ()) throws {
        if let deleteDBClusterAsyncOverride = deleteDBClusterAsyncOverride {
            return try deleteDBClusterAsyncOverride(input, completion)
        }

        let result = DeleteDBClusterResultForDeleteDBCluster.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DeleteDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBClusterMessage object being passed to this operation.
     - Returns: The DeleteDBClusterResultForDeleteDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    public func deleteDBClusterSync(
            input: RDSModel.DeleteDBClusterMessage) throws -> RDSModel.DeleteDBClusterResultForDeleteDBCluster {
        if let deleteDBClusterSyncOverride = deleteDBClusterSyncOverride {
            return try deleteDBClusterSyncOverride(input)
        }

        return DeleteDBClusterResultForDeleteDBCluster.__default
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
    public func deleteDBClusterEndpointAsync(
            input: RDSModel.DeleteDBClusterEndpointMessage, 
            completion: @escaping (Result<RDSModel.DBClusterEndpointForDeleteDBClusterEndpoint, RDSError>) -> ()) throws {
        if let deleteDBClusterEndpointAsyncOverride = deleteDBClusterEndpointAsyncOverride {
            return try deleteDBClusterEndpointAsyncOverride(input, completion)
        }

        let result = DBClusterEndpointForDeleteDBClusterEndpoint.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DeleteDBClusterEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBClusterEndpointMessage object being passed to this operation.
     - Returns: The DBClusterEndpointForDeleteDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterEndpointNotFound, invalidDBClusterEndpointState, invalidDBClusterState.
     */
    public func deleteDBClusterEndpointSync(
            input: RDSModel.DeleteDBClusterEndpointMessage) throws -> RDSModel.DBClusterEndpointForDeleteDBClusterEndpoint {
        if let deleteDBClusterEndpointSyncOverride = deleteDBClusterEndpointSyncOverride {
            return try deleteDBClusterEndpointSyncOverride(input)
        }

        return DBClusterEndpointForDeleteDBClusterEndpoint.__default
    }

    /**
     Invokes the DeleteDBClusterParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBClusterParameterGroupMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func deleteDBClusterParameterGroupAsync(
            input: RDSModel.DeleteDBClusterParameterGroupMessage, 
            completion: @escaping (RDSError?) -> ()) throws {
        if let deleteDBClusterParameterGroupAsyncOverride = deleteDBClusterParameterGroupAsyncOverride {
            return try deleteDBClusterParameterGroupAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the DeleteDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBClusterParameterGroupMessage object being passed to this operation.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func deleteDBClusterParameterGroupSync(
            input: RDSModel.DeleteDBClusterParameterGroupMessage) throws {
        if let deleteDBClusterParameterGroupSyncOverride = deleteDBClusterParameterGroupSyncOverride {
            return try deleteDBClusterParameterGroupSyncOverride(input)
        }

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
    public func deleteDBClusterSnapshotAsync(
            input: RDSModel.DeleteDBClusterSnapshotMessage, 
            completion: @escaping (Result<RDSModel.DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot, RDSError>) -> ()) throws {
        if let deleteDBClusterSnapshotAsyncOverride = deleteDBClusterSnapshotAsyncOverride {
            return try deleteDBClusterSnapshotAsyncOverride(input, completion)
        }

        let result = DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DeleteDBClusterSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBClusterSnapshotMessage object being passed to this operation.
     - Returns: The DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState.
     */
    public func deleteDBClusterSnapshotSync(
            input: RDSModel.DeleteDBClusterSnapshotMessage) throws -> RDSModel.DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot {
        if let deleteDBClusterSnapshotSyncOverride = deleteDBClusterSnapshotSyncOverride {
            return try deleteDBClusterSnapshotSyncOverride(input)
        }

        return DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot.__default
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
    public func deleteDBInstanceAsync(
            input: RDSModel.DeleteDBInstanceMessage, 
            completion: @escaping (Result<RDSModel.DeleteDBInstanceResultForDeleteDBInstance, RDSError>) -> ()) throws {
        if let deleteDBInstanceAsyncOverride = deleteDBInstanceAsyncOverride {
            return try deleteDBInstanceAsyncOverride(input, completion)
        }

        let result = DeleteDBInstanceResultForDeleteDBInstance.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DeleteDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBInstanceMessage object being passed to this operation.
     - Returns: The DeleteDBInstanceResultForDeleteDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupQuotaExceeded, dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    public func deleteDBInstanceSync(
            input: RDSModel.DeleteDBInstanceMessage) throws -> RDSModel.DeleteDBInstanceResultForDeleteDBInstance {
        if let deleteDBInstanceSyncOverride = deleteDBInstanceSyncOverride {
            return try deleteDBInstanceSyncOverride(input)
        }

        return DeleteDBInstanceResultForDeleteDBInstance.__default
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
    public func deleteDBInstanceAutomatedBackupAsync(
            input: RDSModel.DeleteDBInstanceAutomatedBackupMessage, 
            completion: @escaping (Result<RDSModel.DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup, RDSError>) -> ()) throws {
        if let deleteDBInstanceAutomatedBackupAsyncOverride = deleteDBInstanceAutomatedBackupAsyncOverride {
            return try deleteDBInstanceAutomatedBackupAsyncOverride(input, completion)
        }

        let result = DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DeleteDBInstanceAutomatedBackup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBInstanceAutomatedBackupMessage object being passed to this operation.
     - Returns: The DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupNotFound, invalidDBInstanceAutomatedBackupState.
     */
    public func deleteDBInstanceAutomatedBackupSync(
            input: RDSModel.DeleteDBInstanceAutomatedBackupMessage) throws -> RDSModel.DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup {
        if let deleteDBInstanceAutomatedBackupSyncOverride = deleteDBInstanceAutomatedBackupSyncOverride {
            return try deleteDBInstanceAutomatedBackupSyncOverride(input)
        }

        return DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup.__default
    }

    /**
     Invokes the DeleteDBParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBParameterGroupMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func deleteDBParameterGroupAsync(
            input: RDSModel.DeleteDBParameterGroupMessage, 
            completion: @escaping (RDSError?) -> ()) throws {
        if let deleteDBParameterGroupAsyncOverride = deleteDBParameterGroupAsyncOverride {
            return try deleteDBParameterGroupAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the DeleteDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBParameterGroupMessage object being passed to this operation.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func deleteDBParameterGroupSync(
            input: RDSModel.DeleteDBParameterGroupMessage) throws {
        if let deleteDBParameterGroupSyncOverride = deleteDBParameterGroupSyncOverride {
            return try deleteDBParameterGroupSyncOverride(input)
        }

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
    public func deleteDBProxyAsync(
            input: RDSModel.DeleteDBProxyRequest, 
            completion: @escaping (Result<RDSModel.DeleteDBProxyResponseForDeleteDBProxy, RDSError>) -> ()) throws {
        if let deleteDBProxyAsyncOverride = deleteDBProxyAsyncOverride {
            return try deleteDBProxyAsyncOverride(input, completion)
        }

        let result = DeleteDBProxyResponseForDeleteDBProxy.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DeleteDBProxy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBProxyRequest object being passed to this operation.
     - Returns: The DeleteDBProxyResponseForDeleteDBProxy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound, invalidDBProxyState.
     */
    public func deleteDBProxySync(
            input: RDSModel.DeleteDBProxyRequest) throws -> RDSModel.DeleteDBProxyResponseForDeleteDBProxy {
        if let deleteDBProxySyncOverride = deleteDBProxySyncOverride {
            return try deleteDBProxySyncOverride(input)
        }

        return DeleteDBProxyResponseForDeleteDBProxy.__default
    }

    /**
     Invokes the DeleteDBProxyEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBProxyEndpointRequest object being passed to this operation.
         - completion: The DeleteDBProxyEndpointResponseForDeleteDBProxyEndpoint object or an error will be passed to this 
           callback when the operation is complete. The DeleteDBProxyEndpointResponseForDeleteDBProxyEndpoint
           object will be validated before being returned to caller.
           The possible errors are: dBProxyEndpointNotFound, invalidDBProxyEndpointState.
     */
    public func deleteDBProxyEndpointAsync(
            input: RDSModel.DeleteDBProxyEndpointRequest, 
            completion: @escaping (Result<RDSModel.DeleteDBProxyEndpointResponseForDeleteDBProxyEndpoint, RDSError>) -> ()) throws {
        if let deleteDBProxyEndpointAsyncOverride = deleteDBProxyEndpointAsyncOverride {
            return try deleteDBProxyEndpointAsyncOverride(input, completion)
        }

        let result = DeleteDBProxyEndpointResponseForDeleteDBProxyEndpoint.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DeleteDBProxyEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBProxyEndpointRequest object being passed to this operation.
     - Returns: The DeleteDBProxyEndpointResponseForDeleteDBProxyEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyEndpointNotFound, invalidDBProxyEndpointState.
     */
    public func deleteDBProxyEndpointSync(
            input: RDSModel.DeleteDBProxyEndpointRequest) throws -> RDSModel.DeleteDBProxyEndpointResponseForDeleteDBProxyEndpoint {
        if let deleteDBProxyEndpointSyncOverride = deleteDBProxyEndpointSyncOverride {
            return try deleteDBProxyEndpointSyncOverride(input)
        }

        return DeleteDBProxyEndpointResponseForDeleteDBProxyEndpoint.__default
    }

    /**
     Invokes the DeleteDBSecurityGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBSecurityGroupMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    public func deleteDBSecurityGroupAsync(
            input: RDSModel.DeleteDBSecurityGroupMessage, 
            completion: @escaping (RDSError?) -> ()) throws {
        if let deleteDBSecurityGroupAsyncOverride = deleteDBSecurityGroupAsyncOverride {
            return try deleteDBSecurityGroupAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the DeleteDBSecurityGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBSecurityGroupMessage object being passed to this operation.
     - Throws: dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    public func deleteDBSecurityGroupSync(
            input: RDSModel.DeleteDBSecurityGroupMessage) throws {
        if let deleteDBSecurityGroupSyncOverride = deleteDBSecurityGroupSyncOverride {
            return try deleteDBSecurityGroupSyncOverride(input)
        }

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
    public func deleteDBSnapshotAsync(
            input: RDSModel.DeleteDBSnapshotMessage, 
            completion: @escaping (Result<RDSModel.DeleteDBSnapshotResultForDeleteDBSnapshot, RDSError>) -> ()) throws {
        if let deleteDBSnapshotAsyncOverride = deleteDBSnapshotAsyncOverride {
            return try deleteDBSnapshotAsyncOverride(input, completion)
        }

        let result = DeleteDBSnapshotResultForDeleteDBSnapshot.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DeleteDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBSnapshotMessage object being passed to this operation.
     - Returns: The DeleteDBSnapshotResultForDeleteDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound, invalidDBSnapshotState.
     */
    public func deleteDBSnapshotSync(
            input: RDSModel.DeleteDBSnapshotMessage) throws -> RDSModel.DeleteDBSnapshotResultForDeleteDBSnapshot {
        if let deleteDBSnapshotSyncOverride = deleteDBSnapshotSyncOverride {
            return try deleteDBSnapshotSyncOverride(input)
        }

        return DeleteDBSnapshotResultForDeleteDBSnapshot.__default
    }

    /**
     Invokes the DeleteDBSubnetGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBSubnetGroupMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBSubnetGroupNotFound, invalidDBSubnetGroupState, invalidDBSubnetState.
     */
    public func deleteDBSubnetGroupAsync(
            input: RDSModel.DeleteDBSubnetGroupMessage, 
            completion: @escaping (RDSError?) -> ()) throws {
        if let deleteDBSubnetGroupAsyncOverride = deleteDBSubnetGroupAsyncOverride {
            return try deleteDBSubnetGroupAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the DeleteDBSubnetGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBSubnetGroupMessage object being passed to this operation.
     - Throws: dBSubnetGroupNotFound, invalidDBSubnetGroupState, invalidDBSubnetState.
     */
    public func deleteDBSubnetGroupSync(
            input: RDSModel.DeleteDBSubnetGroupMessage) throws {
        if let deleteDBSubnetGroupSyncOverride = deleteDBSubnetGroupSyncOverride {
            return try deleteDBSubnetGroupSyncOverride(input)
        }

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
    public func deleteEventSubscriptionAsync(
            input: RDSModel.DeleteEventSubscriptionMessage, 
            completion: @escaping (Result<RDSModel.DeleteEventSubscriptionResultForDeleteEventSubscription, RDSError>) -> ()) throws {
        if let deleteEventSubscriptionAsyncOverride = deleteEventSubscriptionAsyncOverride {
            return try deleteEventSubscriptionAsyncOverride(input, completion)
        }

        let result = DeleteEventSubscriptionResultForDeleteEventSubscription.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DeleteEventSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteEventSubscriptionMessage object being passed to this operation.
     - Returns: The DeleteEventSubscriptionResultForDeleteEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidEventSubscriptionState, subscriptionNotFound.
     */
    public func deleteEventSubscriptionSync(
            input: RDSModel.DeleteEventSubscriptionMessage) throws -> RDSModel.DeleteEventSubscriptionResultForDeleteEventSubscription {
        if let deleteEventSubscriptionSyncOverride = deleteEventSubscriptionSyncOverride {
            return try deleteEventSubscriptionSyncOverride(input)
        }

        return DeleteEventSubscriptionResultForDeleteEventSubscription.__default
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
    public func deleteGlobalClusterAsync(
            input: RDSModel.DeleteGlobalClusterMessage, 
            completion: @escaping (Result<RDSModel.DeleteGlobalClusterResultForDeleteGlobalCluster, RDSError>) -> ()) throws {
        if let deleteGlobalClusterAsyncOverride = deleteGlobalClusterAsyncOverride {
            return try deleteGlobalClusterAsyncOverride(input, completion)
        }

        let result = DeleteGlobalClusterResultForDeleteGlobalCluster.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DeleteGlobalCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteGlobalClusterMessage object being passed to this operation.
     - Returns: The DeleteGlobalClusterResultForDeleteGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalClusterNotFound, invalidGlobalClusterState.
     */
    public func deleteGlobalClusterSync(
            input: RDSModel.DeleteGlobalClusterMessage) throws -> RDSModel.DeleteGlobalClusterResultForDeleteGlobalCluster {
        if let deleteGlobalClusterSyncOverride = deleteGlobalClusterSyncOverride {
            return try deleteGlobalClusterSyncOverride(input)
        }

        return DeleteGlobalClusterResultForDeleteGlobalCluster.__default
    }

    /**
     Invokes the DeleteOptionGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteOptionGroupMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidOptionGroupState, optionGroupNotFound.
     */
    public func deleteOptionGroupAsync(
            input: RDSModel.DeleteOptionGroupMessage, 
            completion: @escaping (RDSError?) -> ()) throws {
        if let deleteOptionGroupAsyncOverride = deleteOptionGroupAsyncOverride {
            return try deleteOptionGroupAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the DeleteOptionGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteOptionGroupMessage object being passed to this operation.
     - Throws: invalidOptionGroupState, optionGroupNotFound.
     */
    public func deleteOptionGroupSync(
            input: RDSModel.DeleteOptionGroupMessage) throws {
        if let deleteOptionGroupSyncOverride = deleteOptionGroupSyncOverride {
            return try deleteOptionGroupSyncOverride(input)
        }

    }

    /**
     Invokes the DeregisterDBProxyTargets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeregisterDBProxyTargetsRequest object being passed to this operation.
         - completion: The DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets object or an error will be passed to this 
           callback when the operation is complete. The DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets
           object will be validated before being returned to caller.
           The possible errors are: dBProxyNotFound, dBProxyTargetGroupNotFound, dBProxyTargetNotFound, invalidDBProxyState.
     */
    public func deregisterDBProxyTargetsAsync(
            input: RDSModel.DeregisterDBProxyTargetsRequest, 
            completion: @escaping (Result<RDSModel.DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets, RDSError>) -> ()) throws {
        if let deregisterDBProxyTargetsAsyncOverride = deregisterDBProxyTargetsAsyncOverride {
            return try deregisterDBProxyTargetsAsyncOverride(input, completion)
        }

        let result = DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DeregisterDBProxyTargets operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterDBProxyTargetsRequest object being passed to this operation.
     - Returns: The DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound, dBProxyTargetGroupNotFound, dBProxyTargetNotFound, invalidDBProxyState.
     */
    public func deregisterDBProxyTargetsSync(
            input: RDSModel.DeregisterDBProxyTargetsRequest) throws -> RDSModel.DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets {
        if let deregisterDBProxyTargetsSyncOverride = deregisterDBProxyTargetsSyncOverride {
            return try deregisterDBProxyTargetsSyncOverride(input)
        }

        return DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets.__default
    }

    /**
     Invokes the DescribeAccountAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAccountAttributesMessage object being passed to this operation.
         - completion: The AccountAttributesMessageForDescribeAccountAttributes object or an error will be passed to this 
           callback when the operation is complete. The AccountAttributesMessageForDescribeAccountAttributes
           object will be validated before being returned to caller.
     */
    public func describeAccountAttributesAsync(
            input: RDSModel.DescribeAccountAttributesMessage, 
            completion: @escaping (Result<RDSModel.AccountAttributesMessageForDescribeAccountAttributes, RDSError>) -> ()) throws {
        if let describeAccountAttributesAsyncOverride = describeAccountAttributesAsyncOverride {
            return try describeAccountAttributesAsyncOverride(input, completion)
        }

        let result = AccountAttributesMessageForDescribeAccountAttributes.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeAccountAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAccountAttributesMessage object being passed to this operation.
     - Returns: The AccountAttributesMessageForDescribeAccountAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAccountAttributesSync(
            input: RDSModel.DescribeAccountAttributesMessage) throws -> RDSModel.AccountAttributesMessageForDescribeAccountAttributes {
        if let describeAccountAttributesSyncOverride = describeAccountAttributesSyncOverride {
            return try describeAccountAttributesSyncOverride(input)
        }

        return AccountAttributesMessageForDescribeAccountAttributes.__default
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
    public func describeCertificatesAsync(
            input: RDSModel.DescribeCertificatesMessage, 
            completion: @escaping (Result<RDSModel.CertificateMessageForDescribeCertificates, RDSError>) -> ()) throws {
        if let describeCertificatesAsyncOverride = describeCertificatesAsyncOverride {
            return try describeCertificatesAsyncOverride(input, completion)
        }

        let result = CertificateMessageForDescribeCertificates.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeCertificates operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCertificatesMessage object being passed to this operation.
     - Returns: The CertificateMessageForDescribeCertificates object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: certificateNotFound.
     */
    public func describeCertificatesSync(
            input: RDSModel.DescribeCertificatesMessage) throws -> RDSModel.CertificateMessageForDescribeCertificates {
        if let describeCertificatesSyncOverride = describeCertificatesSyncOverride {
            return try describeCertificatesSyncOverride(input)
        }

        return CertificateMessageForDescribeCertificates.__default
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
    public func describeDBClusterBacktracksAsync(
            input: RDSModel.DescribeDBClusterBacktracksMessage, 
            completion: @escaping (Result<RDSModel.DBClusterBacktrackMessageForDescribeDBClusterBacktracks, RDSError>) -> ()) throws {
        if let describeDBClusterBacktracksAsyncOverride = describeDBClusterBacktracksAsyncOverride {
            return try describeDBClusterBacktracksAsyncOverride(input, completion)
        }

        let result = DBClusterBacktrackMessageForDescribeDBClusterBacktracks.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeDBClusterBacktracks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterBacktracksMessage object being passed to this operation.
     - Returns: The DBClusterBacktrackMessageForDescribeDBClusterBacktracks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterBacktrackNotFound, dBClusterNotFound.
     */
    public func describeDBClusterBacktracksSync(
            input: RDSModel.DescribeDBClusterBacktracksMessage) throws -> RDSModel.DBClusterBacktrackMessageForDescribeDBClusterBacktracks {
        if let describeDBClusterBacktracksSyncOverride = describeDBClusterBacktracksSyncOverride {
            return try describeDBClusterBacktracksSyncOverride(input)
        }

        return DBClusterBacktrackMessageForDescribeDBClusterBacktracks.__default
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
    public func describeDBClusterEndpointsAsync(
            input: RDSModel.DescribeDBClusterEndpointsMessage, 
            completion: @escaping (Result<RDSModel.DBClusterEndpointMessageForDescribeDBClusterEndpoints, RDSError>) -> ()) throws {
        if let describeDBClusterEndpointsAsyncOverride = describeDBClusterEndpointsAsyncOverride {
            return try describeDBClusterEndpointsAsyncOverride(input, completion)
        }

        let result = DBClusterEndpointMessageForDescribeDBClusterEndpoints.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeDBClusterEndpoints operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterEndpointsMessage object being passed to this operation.
     - Returns: The DBClusterEndpointMessageForDescribeDBClusterEndpoints object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound.
     */
    public func describeDBClusterEndpointsSync(
            input: RDSModel.DescribeDBClusterEndpointsMessage) throws -> RDSModel.DBClusterEndpointMessageForDescribeDBClusterEndpoints {
        if let describeDBClusterEndpointsSyncOverride = describeDBClusterEndpointsSyncOverride {
            return try describeDBClusterEndpointsSyncOverride(input)
        }

        return DBClusterEndpointMessageForDescribeDBClusterEndpoints.__default
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
    public func describeDBClusterParameterGroupsAsync(
            input: RDSModel.DescribeDBClusterParameterGroupsMessage, 
            completion: @escaping (Result<RDSModel.DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups, RDSError>) -> ()) throws {
        if let describeDBClusterParameterGroupsAsyncOverride = describeDBClusterParameterGroupsAsyncOverride {
            return try describeDBClusterParameterGroupsAsyncOverride(input, completion)
        }

        let result = DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeDBClusterParameterGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterParameterGroupsMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    public func describeDBClusterParameterGroupsSync(
            input: RDSModel.DescribeDBClusterParameterGroupsMessage) throws -> RDSModel.DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups {
        if let describeDBClusterParameterGroupsSyncOverride = describeDBClusterParameterGroupsSyncOverride {
            return try describeDBClusterParameterGroupsSyncOverride(input)
        }

        return DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups.__default
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
    public func describeDBClusterParametersAsync(
            input: RDSModel.DescribeDBClusterParametersMessage, 
            completion: @escaping (Result<RDSModel.DBClusterParameterGroupDetailsForDescribeDBClusterParameters, RDSError>) -> ()) throws {
        if let describeDBClusterParametersAsyncOverride = describeDBClusterParametersAsyncOverride {
            return try describeDBClusterParametersAsyncOverride(input, completion)
        }

        let result = DBClusterParameterGroupDetailsForDescribeDBClusterParameters.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeDBClusterParameters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterParametersMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupDetailsForDescribeDBClusterParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    public func describeDBClusterParametersSync(
            input: RDSModel.DescribeDBClusterParametersMessage) throws -> RDSModel.DBClusterParameterGroupDetailsForDescribeDBClusterParameters {
        if let describeDBClusterParametersSyncOverride = describeDBClusterParametersSyncOverride {
            return try describeDBClusterParametersSyncOverride(input)
        }

        return DBClusterParameterGroupDetailsForDescribeDBClusterParameters.__default
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
    public func describeDBClusterSnapshotAttributesAsync(
            input: RDSModel.DescribeDBClusterSnapshotAttributesMessage, 
            completion: @escaping (Result<RDSModel.DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes, RDSError>) -> ()) throws {
        if let describeDBClusterSnapshotAttributesAsyncOverride = describeDBClusterSnapshotAttributesAsyncOverride {
            return try describeDBClusterSnapshotAttributesAsyncOverride(input, completion)
        }

        let result = DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeDBClusterSnapshotAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotAttributesMessage object being passed to this operation.
     - Returns: The DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound.
     */
    public func describeDBClusterSnapshotAttributesSync(
            input: RDSModel.DescribeDBClusterSnapshotAttributesMessage) throws -> RDSModel.DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes {
        if let describeDBClusterSnapshotAttributesSyncOverride = describeDBClusterSnapshotAttributesSyncOverride {
            return try describeDBClusterSnapshotAttributesSyncOverride(input)
        }

        return DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes.__default
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
    public func describeDBClusterSnapshotsAsync(
            input: RDSModel.DescribeDBClusterSnapshotsMessage, 
            completion: @escaping (Result<RDSModel.DBClusterSnapshotMessageForDescribeDBClusterSnapshots, RDSError>) -> ()) throws {
        if let describeDBClusterSnapshotsAsyncOverride = describeDBClusterSnapshotsAsyncOverride {
            return try describeDBClusterSnapshotsAsyncOverride(input, completion)
        }

        let result = DBClusterSnapshotMessageForDescribeDBClusterSnapshots.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeDBClusterSnapshots operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotsMessage object being passed to this operation.
     - Returns: The DBClusterSnapshotMessageForDescribeDBClusterSnapshots object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound.
     */
    public func describeDBClusterSnapshotsSync(
            input: RDSModel.DescribeDBClusterSnapshotsMessage) throws -> RDSModel.DBClusterSnapshotMessageForDescribeDBClusterSnapshots {
        if let describeDBClusterSnapshotsSyncOverride = describeDBClusterSnapshotsSyncOverride {
            return try describeDBClusterSnapshotsSyncOverride(input)
        }

        return DBClusterSnapshotMessageForDescribeDBClusterSnapshots.__default
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
    public func describeDBClustersAsync(
            input: RDSModel.DescribeDBClustersMessage, 
            completion: @escaping (Result<RDSModel.DBClusterMessageForDescribeDBClusters, RDSError>) -> ()) throws {
        if let describeDBClustersAsyncOverride = describeDBClustersAsyncOverride {
            return try describeDBClustersAsyncOverride(input, completion)
        }

        let result = DBClusterMessageForDescribeDBClusters.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeDBClusters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClustersMessage object being passed to this operation.
     - Returns: The DBClusterMessageForDescribeDBClusters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound.
     */
    public func describeDBClustersSync(
            input: RDSModel.DescribeDBClustersMessage) throws -> RDSModel.DBClusterMessageForDescribeDBClusters {
        if let describeDBClustersSyncOverride = describeDBClustersSyncOverride {
            return try describeDBClustersSyncOverride(input)
        }

        return DBClusterMessageForDescribeDBClusters.__default
    }

    /**
     Invokes the DescribeDBEngineVersions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBEngineVersionsMessage object being passed to this operation.
         - completion: The DBEngineVersionMessageForDescribeDBEngineVersions object or an error will be passed to this 
           callback when the operation is complete. The DBEngineVersionMessageForDescribeDBEngineVersions
           object will be validated before being returned to caller.
     */
    public func describeDBEngineVersionsAsync(
            input: RDSModel.DescribeDBEngineVersionsMessage, 
            completion: @escaping (Result<RDSModel.DBEngineVersionMessageForDescribeDBEngineVersions, RDSError>) -> ()) throws {
        if let describeDBEngineVersionsAsyncOverride = describeDBEngineVersionsAsyncOverride {
            return try describeDBEngineVersionsAsyncOverride(input, completion)
        }

        let result = DBEngineVersionMessageForDescribeDBEngineVersions.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeDBEngineVersions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBEngineVersionsMessage object being passed to this operation.
     - Returns: The DBEngineVersionMessageForDescribeDBEngineVersions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeDBEngineVersionsSync(
            input: RDSModel.DescribeDBEngineVersionsMessage) throws -> RDSModel.DBEngineVersionMessageForDescribeDBEngineVersions {
        if let describeDBEngineVersionsSyncOverride = describeDBEngineVersionsSyncOverride {
            return try describeDBEngineVersionsSyncOverride(input)
        }

        return DBEngineVersionMessageForDescribeDBEngineVersions.__default
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
    public func describeDBInstanceAutomatedBackupsAsync(
            input: RDSModel.DescribeDBInstanceAutomatedBackupsMessage, 
            completion: @escaping (Result<RDSModel.DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups, RDSError>) -> ()) throws {
        if let describeDBInstanceAutomatedBackupsAsyncOverride = describeDBInstanceAutomatedBackupsAsyncOverride {
            return try describeDBInstanceAutomatedBackupsAsyncOverride(input, completion)
        }

        let result = DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeDBInstanceAutomatedBackups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBInstanceAutomatedBackupsMessage object being passed to this operation.
     - Returns: The DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupNotFound.
     */
    public func describeDBInstanceAutomatedBackupsSync(
            input: RDSModel.DescribeDBInstanceAutomatedBackupsMessage) throws -> RDSModel.DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups {
        if let describeDBInstanceAutomatedBackupsSyncOverride = describeDBInstanceAutomatedBackupsSyncOverride {
            return try describeDBInstanceAutomatedBackupsSyncOverride(input)
        }

        return DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups.__default
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
    public func describeDBInstancesAsync(
            input: RDSModel.DescribeDBInstancesMessage, 
            completion: @escaping (Result<RDSModel.DBInstanceMessageForDescribeDBInstances, RDSError>) -> ()) throws {
        if let describeDBInstancesAsyncOverride = describeDBInstancesAsyncOverride {
            return try describeDBInstancesAsyncOverride(input, completion)
        }

        let result = DBInstanceMessageForDescribeDBInstances.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeDBInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBInstancesMessage object being passed to this operation.
     - Returns: The DBInstanceMessageForDescribeDBInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound.
     */
    public func describeDBInstancesSync(
            input: RDSModel.DescribeDBInstancesMessage) throws -> RDSModel.DBInstanceMessageForDescribeDBInstances {
        if let describeDBInstancesSyncOverride = describeDBInstancesSyncOverride {
            return try describeDBInstancesSyncOverride(input)
        }

        return DBInstanceMessageForDescribeDBInstances.__default
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
    public func describeDBLogFilesAsync(
            input: RDSModel.DescribeDBLogFilesMessage, 
            completion: @escaping (Result<RDSModel.DescribeDBLogFilesResponseForDescribeDBLogFiles, RDSError>) -> ()) throws {
        if let describeDBLogFilesAsyncOverride = describeDBLogFilesAsyncOverride {
            return try describeDBLogFilesAsyncOverride(input, completion)
        }

        let result = DescribeDBLogFilesResponseForDescribeDBLogFiles.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeDBLogFiles operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBLogFilesMessage object being passed to this operation.
     - Returns: The DescribeDBLogFilesResponseForDescribeDBLogFiles object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound.
     */
    public func describeDBLogFilesSync(
            input: RDSModel.DescribeDBLogFilesMessage) throws -> RDSModel.DescribeDBLogFilesResponseForDescribeDBLogFiles {
        if let describeDBLogFilesSyncOverride = describeDBLogFilesSyncOverride {
            return try describeDBLogFilesSyncOverride(input)
        }

        return DescribeDBLogFilesResponseForDescribeDBLogFiles.__default
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
    public func describeDBParameterGroupsAsync(
            input: RDSModel.DescribeDBParameterGroupsMessage, 
            completion: @escaping (Result<RDSModel.DBParameterGroupsMessageForDescribeDBParameterGroups, RDSError>) -> ()) throws {
        if let describeDBParameterGroupsAsyncOverride = describeDBParameterGroupsAsyncOverride {
            return try describeDBParameterGroupsAsyncOverride(input, completion)
        }

        let result = DBParameterGroupsMessageForDescribeDBParameterGroups.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeDBParameterGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBParameterGroupsMessage object being passed to this operation.
     - Returns: The DBParameterGroupsMessageForDescribeDBParameterGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    public func describeDBParameterGroupsSync(
            input: RDSModel.DescribeDBParameterGroupsMessage) throws -> RDSModel.DBParameterGroupsMessageForDescribeDBParameterGroups {
        if let describeDBParameterGroupsSyncOverride = describeDBParameterGroupsSyncOverride {
            return try describeDBParameterGroupsSyncOverride(input)
        }

        return DBParameterGroupsMessageForDescribeDBParameterGroups.__default
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
    public func describeDBParametersAsync(
            input: RDSModel.DescribeDBParametersMessage, 
            completion: @escaping (Result<RDSModel.DBParameterGroupDetailsForDescribeDBParameters, RDSError>) -> ()) throws {
        if let describeDBParametersAsyncOverride = describeDBParametersAsyncOverride {
            return try describeDBParametersAsyncOverride(input, completion)
        }

        let result = DBParameterGroupDetailsForDescribeDBParameters.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeDBParameters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBParametersMessage object being passed to this operation.
     - Returns: The DBParameterGroupDetailsForDescribeDBParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    public func describeDBParametersSync(
            input: RDSModel.DescribeDBParametersMessage) throws -> RDSModel.DBParameterGroupDetailsForDescribeDBParameters {
        if let describeDBParametersSyncOverride = describeDBParametersSyncOverride {
            return try describeDBParametersSyncOverride(input)
        }

        return DBParameterGroupDetailsForDescribeDBParameters.__default
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
    public func describeDBProxiesAsync(
            input: RDSModel.DescribeDBProxiesRequest, 
            completion: @escaping (Result<RDSModel.DescribeDBProxiesResponseForDescribeDBProxies, RDSError>) -> ()) throws {
        if let describeDBProxiesAsyncOverride = describeDBProxiesAsyncOverride {
            return try describeDBProxiesAsyncOverride(input, completion)
        }

        let result = DescribeDBProxiesResponseForDescribeDBProxies.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeDBProxies operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBProxiesRequest object being passed to this operation.
     - Returns: The DescribeDBProxiesResponseForDescribeDBProxies object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound.
     */
    public func describeDBProxiesSync(
            input: RDSModel.DescribeDBProxiesRequest) throws -> RDSModel.DescribeDBProxiesResponseForDescribeDBProxies {
        if let describeDBProxiesSyncOverride = describeDBProxiesSyncOverride {
            return try describeDBProxiesSyncOverride(input)
        }

        return DescribeDBProxiesResponseForDescribeDBProxies.__default
    }

    /**
     Invokes the DescribeDBProxyEndpoints operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBProxyEndpointsRequest object being passed to this operation.
         - completion: The DescribeDBProxyEndpointsResponseForDescribeDBProxyEndpoints object or an error will be passed to this 
           callback when the operation is complete. The DescribeDBProxyEndpointsResponseForDescribeDBProxyEndpoints
           object will be validated before being returned to caller.
           The possible errors are: dBProxyEndpointNotFound, dBProxyNotFound.
     */
    public func describeDBProxyEndpointsAsync(
            input: RDSModel.DescribeDBProxyEndpointsRequest, 
            completion: @escaping (Result<RDSModel.DescribeDBProxyEndpointsResponseForDescribeDBProxyEndpoints, RDSError>) -> ()) throws {
        if let describeDBProxyEndpointsAsyncOverride = describeDBProxyEndpointsAsyncOverride {
            return try describeDBProxyEndpointsAsyncOverride(input, completion)
        }

        let result = DescribeDBProxyEndpointsResponseForDescribeDBProxyEndpoints.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeDBProxyEndpoints operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBProxyEndpointsRequest object being passed to this operation.
     - Returns: The DescribeDBProxyEndpointsResponseForDescribeDBProxyEndpoints object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyEndpointNotFound, dBProxyNotFound.
     */
    public func describeDBProxyEndpointsSync(
            input: RDSModel.DescribeDBProxyEndpointsRequest) throws -> RDSModel.DescribeDBProxyEndpointsResponseForDescribeDBProxyEndpoints {
        if let describeDBProxyEndpointsSyncOverride = describeDBProxyEndpointsSyncOverride {
            return try describeDBProxyEndpointsSyncOverride(input)
        }

        return DescribeDBProxyEndpointsResponseForDescribeDBProxyEndpoints.__default
    }

    /**
     Invokes the DescribeDBProxyTargetGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBProxyTargetGroupsRequest object being passed to this operation.
         - completion: The DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups object or an error will be passed to this 
           callback when the operation is complete. The DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups
           object will be validated before being returned to caller.
           The possible errors are: dBProxyNotFound, dBProxyTargetGroupNotFound, invalidDBProxyState.
     */
    public func describeDBProxyTargetGroupsAsync(
            input: RDSModel.DescribeDBProxyTargetGroupsRequest, 
            completion: @escaping (Result<RDSModel.DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups, RDSError>) -> ()) throws {
        if let describeDBProxyTargetGroupsAsyncOverride = describeDBProxyTargetGroupsAsyncOverride {
            return try describeDBProxyTargetGroupsAsyncOverride(input, completion)
        }

        let result = DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeDBProxyTargetGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBProxyTargetGroupsRequest object being passed to this operation.
     - Returns: The DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound, dBProxyTargetGroupNotFound, invalidDBProxyState.
     */
    public func describeDBProxyTargetGroupsSync(
            input: RDSModel.DescribeDBProxyTargetGroupsRequest) throws -> RDSModel.DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups {
        if let describeDBProxyTargetGroupsSyncOverride = describeDBProxyTargetGroupsSyncOverride {
            return try describeDBProxyTargetGroupsSyncOverride(input)
        }

        return DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups.__default
    }

    /**
     Invokes the DescribeDBProxyTargets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBProxyTargetsRequest object being passed to this operation.
         - completion: The DescribeDBProxyTargetsResponseForDescribeDBProxyTargets object or an error will be passed to this 
           callback when the operation is complete. The DescribeDBProxyTargetsResponseForDescribeDBProxyTargets
           object will be validated before being returned to caller.
           The possible errors are: dBProxyNotFound, dBProxyTargetGroupNotFound, dBProxyTargetNotFound, invalidDBProxyState.
     */
    public func describeDBProxyTargetsAsync(
            input: RDSModel.DescribeDBProxyTargetsRequest, 
            completion: @escaping (Result<RDSModel.DescribeDBProxyTargetsResponseForDescribeDBProxyTargets, RDSError>) -> ()) throws {
        if let describeDBProxyTargetsAsyncOverride = describeDBProxyTargetsAsyncOverride {
            return try describeDBProxyTargetsAsyncOverride(input, completion)
        }

        let result = DescribeDBProxyTargetsResponseForDescribeDBProxyTargets.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeDBProxyTargets operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBProxyTargetsRequest object being passed to this operation.
     - Returns: The DescribeDBProxyTargetsResponseForDescribeDBProxyTargets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound, dBProxyTargetGroupNotFound, dBProxyTargetNotFound, invalidDBProxyState.
     */
    public func describeDBProxyTargetsSync(
            input: RDSModel.DescribeDBProxyTargetsRequest) throws -> RDSModel.DescribeDBProxyTargetsResponseForDescribeDBProxyTargets {
        if let describeDBProxyTargetsSyncOverride = describeDBProxyTargetsSyncOverride {
            return try describeDBProxyTargetsSyncOverride(input)
        }

        return DescribeDBProxyTargetsResponseForDescribeDBProxyTargets.__default
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
    public func describeDBSecurityGroupsAsync(
            input: RDSModel.DescribeDBSecurityGroupsMessage, 
            completion: @escaping (Result<RDSModel.DBSecurityGroupMessageForDescribeDBSecurityGroups, RDSError>) -> ()) throws {
        if let describeDBSecurityGroupsAsyncOverride = describeDBSecurityGroupsAsyncOverride {
            return try describeDBSecurityGroupsAsyncOverride(input, completion)
        }

        let result = DBSecurityGroupMessageForDescribeDBSecurityGroups.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeDBSecurityGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBSecurityGroupsMessage object being passed to this operation.
     - Returns: The DBSecurityGroupMessageForDescribeDBSecurityGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSecurityGroupNotFound.
     */
    public func describeDBSecurityGroupsSync(
            input: RDSModel.DescribeDBSecurityGroupsMessage) throws -> RDSModel.DBSecurityGroupMessageForDescribeDBSecurityGroups {
        if let describeDBSecurityGroupsSyncOverride = describeDBSecurityGroupsSyncOverride {
            return try describeDBSecurityGroupsSyncOverride(input)
        }

        return DBSecurityGroupMessageForDescribeDBSecurityGroups.__default
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
    public func describeDBSnapshotAttributesAsync(
            input: RDSModel.DescribeDBSnapshotAttributesMessage, 
            completion: @escaping (Result<RDSModel.DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes, RDSError>) -> ()) throws {
        if let describeDBSnapshotAttributesAsyncOverride = describeDBSnapshotAttributesAsyncOverride {
            return try describeDBSnapshotAttributesAsyncOverride(input, completion)
        }

        let result = DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeDBSnapshotAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBSnapshotAttributesMessage object being passed to this operation.
     - Returns: The DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound.
     */
    public func describeDBSnapshotAttributesSync(
            input: RDSModel.DescribeDBSnapshotAttributesMessage) throws -> RDSModel.DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes {
        if let describeDBSnapshotAttributesSyncOverride = describeDBSnapshotAttributesSyncOverride {
            return try describeDBSnapshotAttributesSyncOverride(input)
        }

        return DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes.__default
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
    public func describeDBSnapshotsAsync(
            input: RDSModel.DescribeDBSnapshotsMessage, 
            completion: @escaping (Result<RDSModel.DBSnapshotMessageForDescribeDBSnapshots, RDSError>) -> ()) throws {
        if let describeDBSnapshotsAsyncOverride = describeDBSnapshotsAsyncOverride {
            return try describeDBSnapshotsAsyncOverride(input, completion)
        }

        let result = DBSnapshotMessageForDescribeDBSnapshots.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeDBSnapshots operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBSnapshotsMessage object being passed to this operation.
     - Returns: The DBSnapshotMessageForDescribeDBSnapshots object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound.
     */
    public func describeDBSnapshotsSync(
            input: RDSModel.DescribeDBSnapshotsMessage) throws -> RDSModel.DBSnapshotMessageForDescribeDBSnapshots {
        if let describeDBSnapshotsSyncOverride = describeDBSnapshotsSyncOverride {
            return try describeDBSnapshotsSyncOverride(input)
        }

        return DBSnapshotMessageForDescribeDBSnapshots.__default
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
    public func describeDBSubnetGroupsAsync(
            input: RDSModel.DescribeDBSubnetGroupsMessage, 
            completion: @escaping (Result<RDSModel.DBSubnetGroupMessageForDescribeDBSubnetGroups, RDSError>) -> ()) throws {
        if let describeDBSubnetGroupsAsyncOverride = describeDBSubnetGroupsAsyncOverride {
            return try describeDBSubnetGroupsAsyncOverride(input, completion)
        }

        let result = DBSubnetGroupMessageForDescribeDBSubnetGroups.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeDBSubnetGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBSubnetGroupsMessage object being passed to this operation.
     - Returns: The DBSubnetGroupMessageForDescribeDBSubnetGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSubnetGroupNotFound.
     */
    public func describeDBSubnetGroupsSync(
            input: RDSModel.DescribeDBSubnetGroupsMessage) throws -> RDSModel.DBSubnetGroupMessageForDescribeDBSubnetGroups {
        if let describeDBSubnetGroupsSyncOverride = describeDBSubnetGroupsSyncOverride {
            return try describeDBSubnetGroupsSyncOverride(input)
        }

        return DBSubnetGroupMessageForDescribeDBSubnetGroups.__default
    }

    /**
     Invokes the DescribeEngineDefaultClusterParameters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEngineDefaultClusterParametersMessage object being passed to this operation.
         - completion: The DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters object or an error will be passed to this 
           callback when the operation is complete. The DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters
           object will be validated before being returned to caller.
     */
    public func describeEngineDefaultClusterParametersAsync(
            input: RDSModel.DescribeEngineDefaultClusterParametersMessage, 
            completion: @escaping (Result<RDSModel.DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters, RDSError>) -> ()) throws {
        if let describeEngineDefaultClusterParametersAsyncOverride = describeEngineDefaultClusterParametersAsyncOverride {
            return try describeEngineDefaultClusterParametersAsyncOverride(input, completion)
        }

        let result = DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeEngineDefaultClusterParameters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEngineDefaultClusterParametersMessage object being passed to this operation.
     - Returns: The DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeEngineDefaultClusterParametersSync(
            input: RDSModel.DescribeEngineDefaultClusterParametersMessage) throws -> RDSModel.DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters {
        if let describeEngineDefaultClusterParametersSyncOverride = describeEngineDefaultClusterParametersSyncOverride {
            return try describeEngineDefaultClusterParametersSyncOverride(input)
        }

        return DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters.__default
    }

    /**
     Invokes the DescribeEngineDefaultParameters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEngineDefaultParametersMessage object being passed to this operation.
         - completion: The DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters object or an error will be passed to this 
           callback when the operation is complete. The DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters
           object will be validated before being returned to caller.
     */
    public func describeEngineDefaultParametersAsync(
            input: RDSModel.DescribeEngineDefaultParametersMessage, 
            completion: @escaping (Result<RDSModel.DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters, RDSError>) -> ()) throws {
        if let describeEngineDefaultParametersAsyncOverride = describeEngineDefaultParametersAsyncOverride {
            return try describeEngineDefaultParametersAsyncOverride(input, completion)
        }

        let result = DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeEngineDefaultParameters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEngineDefaultParametersMessage object being passed to this operation.
     - Returns: The DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeEngineDefaultParametersSync(
            input: RDSModel.DescribeEngineDefaultParametersMessage) throws -> RDSModel.DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters {
        if let describeEngineDefaultParametersSyncOverride = describeEngineDefaultParametersSyncOverride {
            return try describeEngineDefaultParametersSyncOverride(input)
        }

        return DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters.__default
    }

    /**
     Invokes the DescribeEventCategories operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEventCategoriesMessage object being passed to this operation.
         - completion: The EventCategoriesMessageForDescribeEventCategories object or an error will be passed to this 
           callback when the operation is complete. The EventCategoriesMessageForDescribeEventCategories
           object will be validated before being returned to caller.
     */
    public func describeEventCategoriesAsync(
            input: RDSModel.DescribeEventCategoriesMessage, 
            completion: @escaping (Result<RDSModel.EventCategoriesMessageForDescribeEventCategories, RDSError>) -> ()) throws {
        if let describeEventCategoriesAsyncOverride = describeEventCategoriesAsyncOverride {
            return try describeEventCategoriesAsyncOverride(input, completion)
        }

        let result = EventCategoriesMessageForDescribeEventCategories.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeEventCategories operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEventCategoriesMessage object being passed to this operation.
     - Returns: The EventCategoriesMessageForDescribeEventCategories object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeEventCategoriesSync(
            input: RDSModel.DescribeEventCategoriesMessage) throws -> RDSModel.EventCategoriesMessageForDescribeEventCategories {
        if let describeEventCategoriesSyncOverride = describeEventCategoriesSyncOverride {
            return try describeEventCategoriesSyncOverride(input)
        }

        return EventCategoriesMessageForDescribeEventCategories.__default
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
    public func describeEventSubscriptionsAsync(
            input: RDSModel.DescribeEventSubscriptionsMessage, 
            completion: @escaping (Result<RDSModel.EventSubscriptionsMessageForDescribeEventSubscriptions, RDSError>) -> ()) throws {
        if let describeEventSubscriptionsAsyncOverride = describeEventSubscriptionsAsyncOverride {
            return try describeEventSubscriptionsAsyncOverride(input, completion)
        }

        let result = EventSubscriptionsMessageForDescribeEventSubscriptions.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeEventSubscriptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEventSubscriptionsMessage object being passed to this operation.
     - Returns: The EventSubscriptionsMessageForDescribeEventSubscriptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: subscriptionNotFound.
     */
    public func describeEventSubscriptionsSync(
            input: RDSModel.DescribeEventSubscriptionsMessage) throws -> RDSModel.EventSubscriptionsMessageForDescribeEventSubscriptions {
        if let describeEventSubscriptionsSyncOverride = describeEventSubscriptionsSyncOverride {
            return try describeEventSubscriptionsSyncOverride(input)
        }

        return EventSubscriptionsMessageForDescribeEventSubscriptions.__default
    }

    /**
     Invokes the DescribeEvents operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEventsMessage object being passed to this operation.
         - completion: The EventsMessageForDescribeEvents object or an error will be passed to this 
           callback when the operation is complete. The EventsMessageForDescribeEvents
           object will be validated before being returned to caller.
     */
    public func describeEventsAsync(
            input: RDSModel.DescribeEventsMessage, 
            completion: @escaping (Result<RDSModel.EventsMessageForDescribeEvents, RDSError>) -> ()) throws {
        if let describeEventsAsyncOverride = describeEventsAsyncOverride {
            return try describeEventsAsyncOverride(input, completion)
        }

        let result = EventsMessageForDescribeEvents.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeEvents operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEventsMessage object being passed to this operation.
     - Returns: The EventsMessageForDescribeEvents object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeEventsSync(
            input: RDSModel.DescribeEventsMessage) throws -> RDSModel.EventsMessageForDescribeEvents {
        if let describeEventsSyncOverride = describeEventsSyncOverride {
            return try describeEventsSyncOverride(input)
        }

        return EventsMessageForDescribeEvents.__default
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
    public func describeExportTasksAsync(
            input: RDSModel.DescribeExportTasksMessage, 
            completion: @escaping (Result<RDSModel.ExportTasksMessageForDescribeExportTasks, RDSError>) -> ()) throws {
        if let describeExportTasksAsyncOverride = describeExportTasksAsyncOverride {
            return try describeExportTasksAsyncOverride(input, completion)
        }

        let result = ExportTasksMessageForDescribeExportTasks.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeExportTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeExportTasksMessage object being passed to this operation.
     - Returns: The ExportTasksMessageForDescribeExportTasks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: exportTaskNotFound.
     */
    public func describeExportTasksSync(
            input: RDSModel.DescribeExportTasksMessage) throws -> RDSModel.ExportTasksMessageForDescribeExportTasks {
        if let describeExportTasksSyncOverride = describeExportTasksSyncOverride {
            return try describeExportTasksSyncOverride(input)
        }

        return ExportTasksMessageForDescribeExportTasks.__default
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
    public func describeGlobalClustersAsync(
            input: RDSModel.DescribeGlobalClustersMessage, 
            completion: @escaping (Result<RDSModel.GlobalClustersMessageForDescribeGlobalClusters, RDSError>) -> ()) throws {
        if let describeGlobalClustersAsyncOverride = describeGlobalClustersAsyncOverride {
            return try describeGlobalClustersAsyncOverride(input, completion)
        }

        let result = GlobalClustersMessageForDescribeGlobalClusters.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeGlobalClusters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeGlobalClustersMessage object being passed to this operation.
     - Returns: The GlobalClustersMessageForDescribeGlobalClusters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalClusterNotFound.
     */
    public func describeGlobalClustersSync(
            input: RDSModel.DescribeGlobalClustersMessage) throws -> RDSModel.GlobalClustersMessageForDescribeGlobalClusters {
        if let describeGlobalClustersSyncOverride = describeGlobalClustersSyncOverride {
            return try describeGlobalClustersSyncOverride(input)
        }

        return GlobalClustersMessageForDescribeGlobalClusters.__default
    }

    /**
     Invokes the DescribeOptionGroupOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeOptionGroupOptionsMessage object being passed to this operation.
         - completion: The OptionGroupOptionsMessageForDescribeOptionGroupOptions object or an error will be passed to this 
           callback when the operation is complete. The OptionGroupOptionsMessageForDescribeOptionGroupOptions
           object will be validated before being returned to caller.
     */
    public func describeOptionGroupOptionsAsync(
            input: RDSModel.DescribeOptionGroupOptionsMessage, 
            completion: @escaping (Result<RDSModel.OptionGroupOptionsMessageForDescribeOptionGroupOptions, RDSError>) -> ()) throws {
        if let describeOptionGroupOptionsAsyncOverride = describeOptionGroupOptionsAsyncOverride {
            return try describeOptionGroupOptionsAsyncOverride(input, completion)
        }

        let result = OptionGroupOptionsMessageForDescribeOptionGroupOptions.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeOptionGroupOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeOptionGroupOptionsMessage object being passed to this operation.
     - Returns: The OptionGroupOptionsMessageForDescribeOptionGroupOptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeOptionGroupOptionsSync(
            input: RDSModel.DescribeOptionGroupOptionsMessage) throws -> RDSModel.OptionGroupOptionsMessageForDescribeOptionGroupOptions {
        if let describeOptionGroupOptionsSyncOverride = describeOptionGroupOptionsSyncOverride {
            return try describeOptionGroupOptionsSyncOverride(input)
        }

        return OptionGroupOptionsMessageForDescribeOptionGroupOptions.__default
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
    public func describeOptionGroupsAsync(
            input: RDSModel.DescribeOptionGroupsMessage, 
            completion: @escaping (Result<RDSModel.OptionGroupsForDescribeOptionGroups, RDSError>) -> ()) throws {
        if let describeOptionGroupsAsyncOverride = describeOptionGroupsAsyncOverride {
            return try describeOptionGroupsAsyncOverride(input, completion)
        }

        let result = OptionGroupsForDescribeOptionGroups.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeOptionGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeOptionGroupsMessage object being passed to this operation.
     - Returns: The OptionGroupsForDescribeOptionGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: optionGroupNotFound.
     */
    public func describeOptionGroupsSync(
            input: RDSModel.DescribeOptionGroupsMessage) throws -> RDSModel.OptionGroupsForDescribeOptionGroups {
        if let describeOptionGroupsSyncOverride = describeOptionGroupsSyncOverride {
            return try describeOptionGroupsSyncOverride(input)
        }

        return OptionGroupsForDescribeOptionGroups.__default
    }

    /**
     Invokes the DescribeOrderableDBInstanceOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeOrderableDBInstanceOptionsMessage object being passed to this operation.
         - completion: The OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions object or an error will be passed to this 
           callback when the operation is complete. The OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions
           object will be validated before being returned to caller.
     */
    public func describeOrderableDBInstanceOptionsAsync(
            input: RDSModel.DescribeOrderableDBInstanceOptionsMessage, 
            completion: @escaping (Result<RDSModel.OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions, RDSError>) -> ()) throws {
        if let describeOrderableDBInstanceOptionsAsyncOverride = describeOrderableDBInstanceOptionsAsyncOverride {
            return try describeOrderableDBInstanceOptionsAsyncOverride(input, completion)
        }

        let result = OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeOrderableDBInstanceOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeOrderableDBInstanceOptionsMessage object being passed to this operation.
     - Returns: The OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeOrderableDBInstanceOptionsSync(
            input: RDSModel.DescribeOrderableDBInstanceOptionsMessage) throws -> RDSModel.OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions {
        if let describeOrderableDBInstanceOptionsSyncOverride = describeOrderableDBInstanceOptionsSyncOverride {
            return try describeOrderableDBInstanceOptionsSyncOverride(input)
        }

        return OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions.__default
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
    public func describePendingMaintenanceActionsAsync(
            input: RDSModel.DescribePendingMaintenanceActionsMessage, 
            completion: @escaping (Result<RDSModel.PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions, RDSError>) -> ()) throws {
        if let describePendingMaintenanceActionsAsyncOverride = describePendingMaintenanceActionsAsyncOverride {
            return try describePendingMaintenanceActionsAsyncOverride(input, completion)
        }

        let result = PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribePendingMaintenanceActions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribePendingMaintenanceActionsMessage object being passed to this operation.
     - Returns: The PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: resourceNotFound.
     */
    public func describePendingMaintenanceActionsSync(
            input: RDSModel.DescribePendingMaintenanceActionsMessage) throws -> RDSModel.PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions {
        if let describePendingMaintenanceActionsSyncOverride = describePendingMaintenanceActionsSyncOverride {
            return try describePendingMaintenanceActionsSyncOverride(input)
        }

        return PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions.__default
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
    public func describeReservedDBInstancesAsync(
            input: RDSModel.DescribeReservedDBInstancesMessage, 
            completion: @escaping (Result<RDSModel.ReservedDBInstanceMessageForDescribeReservedDBInstances, RDSError>) -> ()) throws {
        if let describeReservedDBInstancesAsyncOverride = describeReservedDBInstancesAsyncOverride {
            return try describeReservedDBInstancesAsyncOverride(input, completion)
        }

        let result = ReservedDBInstanceMessageForDescribeReservedDBInstances.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeReservedDBInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesMessage object being passed to this operation.
     - Returns: The ReservedDBInstanceMessageForDescribeReservedDBInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: reservedDBInstanceNotFound.
     */
    public func describeReservedDBInstancesSync(
            input: RDSModel.DescribeReservedDBInstancesMessage) throws -> RDSModel.ReservedDBInstanceMessageForDescribeReservedDBInstances {
        if let describeReservedDBInstancesSyncOverride = describeReservedDBInstancesSyncOverride {
            return try describeReservedDBInstancesSyncOverride(input)
        }

        return ReservedDBInstanceMessageForDescribeReservedDBInstances.__default
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
    public func describeReservedDBInstancesOfferingsAsync(
            input: RDSModel.DescribeReservedDBInstancesOfferingsMessage, 
            completion: @escaping (Result<RDSModel.ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings, RDSError>) -> ()) throws {
        if let describeReservedDBInstancesOfferingsAsyncOverride = describeReservedDBInstancesOfferingsAsyncOverride {
            return try describeReservedDBInstancesOfferingsAsyncOverride(input, completion)
        }

        let result = ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeReservedDBInstancesOfferings operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesOfferingsMessage object being passed to this operation.
     - Returns: The ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: reservedDBInstancesOfferingNotFound.
     */
    public func describeReservedDBInstancesOfferingsSync(
            input: RDSModel.DescribeReservedDBInstancesOfferingsMessage) throws -> RDSModel.ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings {
        if let describeReservedDBInstancesOfferingsSyncOverride = describeReservedDBInstancesOfferingsSyncOverride {
            return try describeReservedDBInstancesOfferingsSyncOverride(input)
        }

        return ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings.__default
    }

    /**
     Invokes the DescribeSourceRegions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSourceRegionsMessage object being passed to this operation.
         - completion: The SourceRegionMessageForDescribeSourceRegions object or an error will be passed to this 
           callback when the operation is complete. The SourceRegionMessageForDescribeSourceRegions
           object will be validated before being returned to caller.
     */
    public func describeSourceRegionsAsync(
            input: RDSModel.DescribeSourceRegionsMessage, 
            completion: @escaping (Result<RDSModel.SourceRegionMessageForDescribeSourceRegions, RDSError>) -> ()) throws {
        if let describeSourceRegionsAsyncOverride = describeSourceRegionsAsyncOverride {
            return try describeSourceRegionsAsyncOverride(input, completion)
        }

        let result = SourceRegionMessageForDescribeSourceRegions.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeSourceRegions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSourceRegionsMessage object being passed to this operation.
     - Returns: The SourceRegionMessageForDescribeSourceRegions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSourceRegionsSync(
            input: RDSModel.DescribeSourceRegionsMessage) throws -> RDSModel.SourceRegionMessageForDescribeSourceRegions {
        if let describeSourceRegionsSyncOverride = describeSourceRegionsSyncOverride {
            return try describeSourceRegionsSyncOverride(input)
        }

        return SourceRegionMessageForDescribeSourceRegions.__default
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
    public func describeValidDBInstanceModificationsAsync(
            input: RDSModel.DescribeValidDBInstanceModificationsMessage, 
            completion: @escaping (Result<RDSModel.DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications, RDSError>) -> ()) throws {
        if let describeValidDBInstanceModificationsAsyncOverride = describeValidDBInstanceModificationsAsyncOverride {
            return try describeValidDBInstanceModificationsAsyncOverride(input, completion)
        }

        let result = DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeValidDBInstanceModifications operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeValidDBInstanceModificationsMessage object being passed to this operation.
     - Returns: The DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    public func describeValidDBInstanceModificationsSync(
            input: RDSModel.DescribeValidDBInstanceModificationsMessage) throws -> RDSModel.DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications {
        if let describeValidDBInstanceModificationsSyncOverride = describeValidDBInstanceModificationsSyncOverride {
            return try describeValidDBInstanceModificationsSyncOverride(input)
        }

        return DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications.__default
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
    public func downloadDBLogFilePortionAsync(
            input: RDSModel.DownloadDBLogFilePortionMessage, 
            completion: @escaping (Result<RDSModel.DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion, RDSError>) -> ()) throws {
        if let downloadDBLogFilePortionAsyncOverride = downloadDBLogFilePortionAsyncOverride {
            return try downloadDBLogFilePortionAsyncOverride(input, completion)
        }

        let result = DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DownloadDBLogFilePortion operation waiting for the response before returning.

     - Parameters:
         - input: The validated DownloadDBLogFilePortionMessage object being passed to this operation.
     - Returns: The DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, dBLogFileNotFound.
     */
    public func downloadDBLogFilePortionSync(
            input: RDSModel.DownloadDBLogFilePortionMessage) throws -> RDSModel.DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion {
        if let downloadDBLogFilePortionSyncOverride = downloadDBLogFilePortionSyncOverride {
            return try downloadDBLogFilePortionSyncOverride(input)
        }

        return DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion.__default
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
    public func failoverDBClusterAsync(
            input: RDSModel.FailoverDBClusterMessage, 
            completion: @escaping (Result<RDSModel.FailoverDBClusterResultForFailoverDBCluster, RDSError>) -> ()) throws {
        if let failoverDBClusterAsyncOverride = failoverDBClusterAsyncOverride {
            return try failoverDBClusterAsyncOverride(input, completion)
        }

        let result = FailoverDBClusterResultForFailoverDBCluster.__default
        
        completion(.success(result))
    }

    /**
     Invokes the FailoverDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated FailoverDBClusterMessage object being passed to this operation.
     - Returns: The FailoverDBClusterResultForFailoverDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func failoverDBClusterSync(
            input: RDSModel.FailoverDBClusterMessage) throws -> RDSModel.FailoverDBClusterResultForFailoverDBCluster {
        if let failoverDBClusterSyncOverride = failoverDBClusterSyncOverride {
            return try failoverDBClusterSyncOverride(input)
        }

        return FailoverDBClusterResultForFailoverDBCluster.__default
    }

    /**
     Invokes the FailoverGlobalCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated FailoverGlobalClusterMessage object being passed to this operation.
         - completion: The FailoverGlobalClusterResultForFailoverGlobalCluster object or an error will be passed to this 
           callback when the operation is complete. The FailoverGlobalClusterResultForFailoverGlobalCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, globalClusterNotFound, invalidDBClusterState, invalidGlobalClusterState.
     */
    public func failoverGlobalClusterAsync(
            input: RDSModel.FailoverGlobalClusterMessage, 
            completion: @escaping (Result<RDSModel.FailoverGlobalClusterResultForFailoverGlobalCluster, RDSError>) -> ()) throws {
        if let failoverGlobalClusterAsyncOverride = failoverGlobalClusterAsyncOverride {
            return try failoverGlobalClusterAsyncOverride(input, completion)
        }

        let result = FailoverGlobalClusterResultForFailoverGlobalCluster.__default
        
        completion(.success(result))
    }

    /**
     Invokes the FailoverGlobalCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated FailoverGlobalClusterMessage object being passed to this operation.
     - Returns: The FailoverGlobalClusterResultForFailoverGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, globalClusterNotFound, invalidDBClusterState, invalidGlobalClusterState.
     */
    public func failoverGlobalClusterSync(
            input: RDSModel.FailoverGlobalClusterMessage) throws -> RDSModel.FailoverGlobalClusterResultForFailoverGlobalCluster {
        if let failoverGlobalClusterSyncOverride = failoverGlobalClusterSyncOverride {
            return try failoverGlobalClusterSyncOverride(input)
        }

        return FailoverGlobalClusterResultForFailoverGlobalCluster.__default
    }

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceMessage object being passed to this operation.
         - completion: The TagListMessageForListTagsForResource object or an error will be passed to this 
           callback when the operation is complete. The TagListMessageForListTagsForResource
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetGroupNotFound, dBSnapshotNotFound.
     */
    public func listTagsForResourceAsync(
            input: RDSModel.ListTagsForResourceMessage, 
            completion: @escaping (Result<RDSModel.TagListMessageForListTagsForResource, RDSError>) -> ()) throws {
        if let listTagsForResourceAsyncOverride = listTagsForResourceAsyncOverride {
            return try listTagsForResourceAsyncOverride(input, completion)
        }

        let result = TagListMessageForListTagsForResource.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceMessage object being passed to this operation.
     - Returns: The TagListMessageForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetGroupNotFound, dBSnapshotNotFound.
     */
    public func listTagsForResourceSync(
            input: RDSModel.ListTagsForResourceMessage) throws -> RDSModel.TagListMessageForListTagsForResource {
        if let listTagsForResourceSyncOverride = listTagsForResourceSyncOverride {
            return try listTagsForResourceSyncOverride(input)
        }

        return TagListMessageForListTagsForResource.__default
    }

    /**
     Invokes the ModifyActivityStream operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyActivityStreamRequest object being passed to this operation.
         - completion: The ModifyActivityStreamResponseForModifyActivityStream object or an error will be passed to this 
           callback when the operation is complete. The ModifyActivityStreamResponseForModifyActivityStream
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, invalidDBInstanceState, resourceNotFound.
     */
    public func modifyActivityStreamAsync(
            input: RDSModel.ModifyActivityStreamRequest, 
            completion: @escaping (Result<RDSModel.ModifyActivityStreamResponseForModifyActivityStream, RDSError>) -> ()) throws {
        if let modifyActivityStreamAsyncOverride = modifyActivityStreamAsyncOverride {
            return try modifyActivityStreamAsyncOverride(input, completion)
        }

        let result = ModifyActivityStreamResponseForModifyActivityStream.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ModifyActivityStream operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyActivityStreamRequest object being passed to this operation.
     - Returns: The ModifyActivityStreamResponseForModifyActivityStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState, resourceNotFound.
     */
    public func modifyActivityStreamSync(
            input: RDSModel.ModifyActivityStreamRequest) throws -> RDSModel.ModifyActivityStreamResponseForModifyActivityStream {
        if let modifyActivityStreamSyncOverride = modifyActivityStreamSyncOverride {
            return try modifyActivityStreamSyncOverride(input)
        }

        return ModifyActivityStreamResponseForModifyActivityStream.__default
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
    public func modifyCertificatesAsync(
            input: RDSModel.ModifyCertificatesMessage, 
            completion: @escaping (Result<RDSModel.ModifyCertificatesResultForModifyCertificates, RDSError>) -> ()) throws {
        if let modifyCertificatesAsyncOverride = modifyCertificatesAsyncOverride {
            return try modifyCertificatesAsyncOverride(input, completion)
        }

        let result = ModifyCertificatesResultForModifyCertificates.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ModifyCertificates operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyCertificatesMessage object being passed to this operation.
     - Returns: The ModifyCertificatesResultForModifyCertificates object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: certificateNotFound.
     */
    public func modifyCertificatesSync(
            input: RDSModel.ModifyCertificatesMessage) throws -> RDSModel.ModifyCertificatesResultForModifyCertificates {
        if let modifyCertificatesSyncOverride = modifyCertificatesSyncOverride {
            return try modifyCertificatesSyncOverride(input)
        }

        return ModifyCertificatesResultForModifyCertificates.__default
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
    public func modifyCurrentDBClusterCapacityAsync(
            input: RDSModel.ModifyCurrentDBClusterCapacityMessage, 
            completion: @escaping (Result<RDSModel.DBClusterCapacityInfoForModifyCurrentDBClusterCapacity, RDSError>) -> ()) throws {
        if let modifyCurrentDBClusterCapacityAsyncOverride = modifyCurrentDBClusterCapacityAsyncOverride {
            return try modifyCurrentDBClusterCapacityAsyncOverride(input, completion)
        }

        let result = DBClusterCapacityInfoForModifyCurrentDBClusterCapacity.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ModifyCurrentDBClusterCapacity operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyCurrentDBClusterCapacityMessage object being passed to this operation.
     - Returns: The DBClusterCapacityInfoForModifyCurrentDBClusterCapacity object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterCapacity, invalidDBClusterState.
     */
    public func modifyCurrentDBClusterCapacitySync(
            input: RDSModel.ModifyCurrentDBClusterCapacityMessage) throws -> RDSModel.DBClusterCapacityInfoForModifyCurrentDBClusterCapacity {
        if let modifyCurrentDBClusterCapacitySyncOverride = modifyCurrentDBClusterCapacitySyncOverride {
            return try modifyCurrentDBClusterCapacitySyncOverride(input)
        }

        return DBClusterCapacityInfoForModifyCurrentDBClusterCapacity.__default
    }

    /**
     Invokes the ModifyCustomDBEngineVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyCustomDBEngineVersionMessage object being passed to this operation.
         - completion: The DBEngineVersionForModifyCustomDBEngineVersion object or an error will be passed to this 
           callback when the operation is complete. The DBEngineVersionForModifyCustomDBEngineVersion
           object will be validated before being returned to caller.
           The possible errors are: customDBEngineVersionNotFound, invalidCustomDBEngineVersionState.
     */
    public func modifyCustomDBEngineVersionAsync(
            input: RDSModel.ModifyCustomDBEngineVersionMessage, 
            completion: @escaping (Result<RDSModel.DBEngineVersionForModifyCustomDBEngineVersion, RDSError>) -> ()) throws {
        if let modifyCustomDBEngineVersionAsyncOverride = modifyCustomDBEngineVersionAsyncOverride {
            return try modifyCustomDBEngineVersionAsyncOverride(input, completion)
        }

        let result = DBEngineVersionForModifyCustomDBEngineVersion.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ModifyCustomDBEngineVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyCustomDBEngineVersionMessage object being passed to this operation.
     - Returns: The DBEngineVersionForModifyCustomDBEngineVersion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: customDBEngineVersionNotFound, invalidCustomDBEngineVersionState.
     */
    public func modifyCustomDBEngineVersionSync(
            input: RDSModel.ModifyCustomDBEngineVersionMessage) throws -> RDSModel.DBEngineVersionForModifyCustomDBEngineVersion {
        if let modifyCustomDBEngineVersionSyncOverride = modifyCustomDBEngineVersionSyncOverride {
            return try modifyCustomDBEngineVersionSyncOverride(input)
        }

        return DBEngineVersionForModifyCustomDBEngineVersion.__default
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
    public func modifyDBClusterAsync(
            input: RDSModel.ModifyDBClusterMessage, 
            completion: @escaping (Result<RDSModel.ModifyDBClusterResultForModifyDBCluster, RDSError>) -> ()) throws {
        if let modifyDBClusterAsyncOverride = modifyDBClusterAsyncOverride {
            return try modifyDBClusterAsyncOverride(input, completion)
        }

        let result = ModifyDBClusterResultForModifyDBCluster.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ModifyDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBClusterMessage object being passed to this operation.
     - Returns: The ModifyDBClusterResultForModifyDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBSubnetGroupNotFound, domainNotFound, invalidDBClusterState, invalidDBInstanceState, invalidDBSecurityGroupState, invalidDBSubnetGroupState, invalidSubnet, invalidVPCNetworkState, storageQuotaExceeded.
     */
    public func modifyDBClusterSync(
            input: RDSModel.ModifyDBClusterMessage) throws -> RDSModel.ModifyDBClusterResultForModifyDBCluster {
        if let modifyDBClusterSyncOverride = modifyDBClusterSyncOverride {
            return try modifyDBClusterSyncOverride(input)
        }

        return ModifyDBClusterResultForModifyDBCluster.__default
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
    public func modifyDBClusterEndpointAsync(
            input: RDSModel.ModifyDBClusterEndpointMessage, 
            completion: @escaping (Result<RDSModel.DBClusterEndpointForModifyDBClusterEndpoint, RDSError>) -> ()) throws {
        if let modifyDBClusterEndpointAsyncOverride = modifyDBClusterEndpointAsyncOverride {
            return try modifyDBClusterEndpointAsyncOverride(input, completion)
        }

        let result = DBClusterEndpointForModifyDBClusterEndpoint.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ModifyDBClusterEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBClusterEndpointMessage object being passed to this operation.
     - Returns: The DBClusterEndpointForModifyDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterEndpointNotFound, dBInstanceNotFound, invalidDBClusterEndpointState, invalidDBClusterState, invalidDBInstanceState.
     */
    public func modifyDBClusterEndpointSync(
            input: RDSModel.ModifyDBClusterEndpointMessage) throws -> RDSModel.DBClusterEndpointForModifyDBClusterEndpoint {
        if let modifyDBClusterEndpointSyncOverride = modifyDBClusterEndpointSyncOverride {
            return try modifyDBClusterEndpointSyncOverride(input)
        }

        return DBClusterEndpointForModifyDBClusterEndpoint.__default
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
    public func modifyDBClusterParameterGroupAsync(
            input: RDSModel.ModifyDBClusterParameterGroupMessage, 
            completion: @escaping (Result<RDSModel.DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup, RDSError>) -> ()) throws {
        if let modifyDBClusterParameterGroupAsyncOverride = modifyDBClusterParameterGroupAsyncOverride {
            return try modifyDBClusterParameterGroupAsyncOverride(input, completion)
        }

        let result = DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ModifyDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func modifyDBClusterParameterGroupSync(
            input: RDSModel.ModifyDBClusterParameterGroupMessage) throws -> RDSModel.DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup {
        if let modifyDBClusterParameterGroupSyncOverride = modifyDBClusterParameterGroupSyncOverride {
            return try modifyDBClusterParameterGroupSyncOverride(input)
        }

        return DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup.__default
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
    public func modifyDBClusterSnapshotAttributeAsync(
            input: RDSModel.ModifyDBClusterSnapshotAttributeMessage, 
            completion: @escaping (Result<RDSModel.ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute, RDSError>) -> ()) throws {
        if let modifyDBClusterSnapshotAttributeAsyncOverride = modifyDBClusterSnapshotAttributeAsyncOverride {
            return try modifyDBClusterSnapshotAttributeAsyncOverride(input, completion)
        }

        let result = ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ModifyDBClusterSnapshotAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBClusterSnapshotAttributeMessage object being passed to this operation.
     - Returns: The ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, sharedSnapshotQuotaExceeded.
     */
    public func modifyDBClusterSnapshotAttributeSync(
            input: RDSModel.ModifyDBClusterSnapshotAttributeMessage) throws -> RDSModel.ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute {
        if let modifyDBClusterSnapshotAttributeSyncOverride = modifyDBClusterSnapshotAttributeSyncOverride {
            return try modifyDBClusterSnapshotAttributeSyncOverride(input)
        }

        return ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute.__default
    }

    /**
     Invokes the ModifyDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBInstanceMessage object being passed to this operation.
         - completion: The ModifyDBInstanceResultForModifyDBInstance object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBInstanceResultForModifyDBInstance
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, certificateNotFound, dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBUpgradeDependencyFailure, domainNotFound, insufficientDBInstanceCapacity, invalidDBClusterState, invalidDBInstanceState, invalidDBSecurityGroupState, invalidVPCNetworkState, kMSKeyNotAccessible, networkTypeNotSupported, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func modifyDBInstanceAsync(
            input: RDSModel.ModifyDBInstanceMessage, 
            completion: @escaping (Result<RDSModel.ModifyDBInstanceResultForModifyDBInstance, RDSError>) -> ()) throws {
        if let modifyDBInstanceAsyncOverride = modifyDBInstanceAsyncOverride {
            return try modifyDBInstanceAsyncOverride(input, completion)
        }

        let result = ModifyDBInstanceResultForModifyDBInstance.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ModifyDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBInstanceMessage object being passed to this operation.
     - Returns: The ModifyDBInstanceResultForModifyDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, certificateNotFound, dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBUpgradeDependencyFailure, domainNotFound, insufficientDBInstanceCapacity, invalidDBClusterState, invalidDBInstanceState, invalidDBSecurityGroupState, invalidVPCNetworkState, kMSKeyNotAccessible, networkTypeNotSupported, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func modifyDBInstanceSync(
            input: RDSModel.ModifyDBInstanceMessage) throws -> RDSModel.ModifyDBInstanceResultForModifyDBInstance {
        if let modifyDBInstanceSyncOverride = modifyDBInstanceSyncOverride {
            return try modifyDBInstanceSyncOverride(input)
        }

        return ModifyDBInstanceResultForModifyDBInstance.__default
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
    public func modifyDBParameterGroupAsync(
            input: RDSModel.ModifyDBParameterGroupMessage, 
            completion: @escaping (Result<RDSModel.DBParameterGroupNameMessageForModifyDBParameterGroup, RDSError>) -> ()) throws {
        if let modifyDBParameterGroupAsyncOverride = modifyDBParameterGroupAsyncOverride {
            return try modifyDBParameterGroupAsyncOverride(input, completion)
        }

        let result = DBParameterGroupNameMessageForModifyDBParameterGroup.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ModifyDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBParameterGroupMessage object being passed to this operation.
     - Returns: The DBParameterGroupNameMessageForModifyDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func modifyDBParameterGroupSync(
            input: RDSModel.ModifyDBParameterGroupMessage) throws -> RDSModel.DBParameterGroupNameMessageForModifyDBParameterGroup {
        if let modifyDBParameterGroupSyncOverride = modifyDBParameterGroupSyncOverride {
            return try modifyDBParameterGroupSyncOverride(input)
        }

        return DBParameterGroupNameMessageForModifyDBParameterGroup.__default
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
    public func modifyDBProxyAsync(
            input: RDSModel.ModifyDBProxyRequest, 
            completion: @escaping (Result<RDSModel.ModifyDBProxyResponseForModifyDBProxy, RDSError>) -> ()) throws {
        if let modifyDBProxyAsyncOverride = modifyDBProxyAsyncOverride {
            return try modifyDBProxyAsyncOverride(input, completion)
        }

        let result = ModifyDBProxyResponseForModifyDBProxy.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ModifyDBProxy operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBProxyRequest object being passed to this operation.
     - Returns: The ModifyDBProxyResponseForModifyDBProxy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyAlreadyExists, dBProxyNotFound, invalidDBProxyState.
     */
    public func modifyDBProxySync(
            input: RDSModel.ModifyDBProxyRequest) throws -> RDSModel.ModifyDBProxyResponseForModifyDBProxy {
        if let modifyDBProxySyncOverride = modifyDBProxySyncOverride {
            return try modifyDBProxySyncOverride(input)
        }

        return ModifyDBProxyResponseForModifyDBProxy.__default
    }

    /**
     Invokes the ModifyDBProxyEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBProxyEndpointRequest object being passed to this operation.
         - completion: The ModifyDBProxyEndpointResponseForModifyDBProxyEndpoint object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBProxyEndpointResponseForModifyDBProxyEndpoint
           object will be validated before being returned to caller.
           The possible errors are: dBProxyEndpointAlreadyExists, dBProxyEndpointNotFound, invalidDBProxyEndpointState, invalidDBProxyState.
     */
    public func modifyDBProxyEndpointAsync(
            input: RDSModel.ModifyDBProxyEndpointRequest, 
            completion: @escaping (Result<RDSModel.ModifyDBProxyEndpointResponseForModifyDBProxyEndpoint, RDSError>) -> ()) throws {
        if let modifyDBProxyEndpointAsyncOverride = modifyDBProxyEndpointAsyncOverride {
            return try modifyDBProxyEndpointAsyncOverride(input, completion)
        }

        let result = ModifyDBProxyEndpointResponseForModifyDBProxyEndpoint.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ModifyDBProxyEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBProxyEndpointRequest object being passed to this operation.
     - Returns: The ModifyDBProxyEndpointResponseForModifyDBProxyEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyEndpointAlreadyExists, dBProxyEndpointNotFound, invalidDBProxyEndpointState, invalidDBProxyState.
     */
    public func modifyDBProxyEndpointSync(
            input: RDSModel.ModifyDBProxyEndpointRequest) throws -> RDSModel.ModifyDBProxyEndpointResponseForModifyDBProxyEndpoint {
        if let modifyDBProxyEndpointSyncOverride = modifyDBProxyEndpointSyncOverride {
            return try modifyDBProxyEndpointSyncOverride(input)
        }

        return ModifyDBProxyEndpointResponseForModifyDBProxyEndpoint.__default
    }

    /**
     Invokes the ModifyDBProxyTargetGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBProxyTargetGroupRequest object being passed to this operation.
         - completion: The ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup
           object will be validated before being returned to caller.
           The possible errors are: dBProxyNotFound, dBProxyTargetGroupNotFound, invalidDBProxyState.
     */
    public func modifyDBProxyTargetGroupAsync(
            input: RDSModel.ModifyDBProxyTargetGroupRequest, 
            completion: @escaping (Result<RDSModel.ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup, RDSError>) -> ()) throws {
        if let modifyDBProxyTargetGroupAsyncOverride = modifyDBProxyTargetGroupAsyncOverride {
            return try modifyDBProxyTargetGroupAsyncOverride(input, completion)
        }

        let result = ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ModifyDBProxyTargetGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBProxyTargetGroupRequest object being passed to this operation.
     - Returns: The ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound, dBProxyTargetGroupNotFound, invalidDBProxyState.
     */
    public func modifyDBProxyTargetGroupSync(
            input: RDSModel.ModifyDBProxyTargetGroupRequest) throws -> RDSModel.ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup {
        if let modifyDBProxyTargetGroupSyncOverride = modifyDBProxyTargetGroupSyncOverride {
            return try modifyDBProxyTargetGroupSyncOverride(input)
        }

        return ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup.__default
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
    public func modifyDBSnapshotAsync(
            input: RDSModel.ModifyDBSnapshotMessage, 
            completion: @escaping (Result<RDSModel.ModifyDBSnapshotResultForModifyDBSnapshot, RDSError>) -> ()) throws {
        if let modifyDBSnapshotAsyncOverride = modifyDBSnapshotAsyncOverride {
            return try modifyDBSnapshotAsyncOverride(input, completion)
        }

        let result = ModifyDBSnapshotResultForModifyDBSnapshot.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ModifyDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBSnapshotMessage object being passed to this operation.
     - Returns: The ModifyDBSnapshotResultForModifyDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound.
     */
    public func modifyDBSnapshotSync(
            input: RDSModel.ModifyDBSnapshotMessage) throws -> RDSModel.ModifyDBSnapshotResultForModifyDBSnapshot {
        if let modifyDBSnapshotSyncOverride = modifyDBSnapshotSyncOverride {
            return try modifyDBSnapshotSyncOverride(input)
        }

        return ModifyDBSnapshotResultForModifyDBSnapshot.__default
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
    public func modifyDBSnapshotAttributeAsync(
            input: RDSModel.ModifyDBSnapshotAttributeMessage, 
            completion: @escaping (Result<RDSModel.ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute, RDSError>) -> ()) throws {
        if let modifyDBSnapshotAttributeAsyncOverride = modifyDBSnapshotAttributeAsyncOverride {
            return try modifyDBSnapshotAttributeAsyncOverride(input, completion)
        }

        let result = ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ModifyDBSnapshotAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBSnapshotAttributeMessage object being passed to this operation.
     - Returns: The ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound, invalidDBSnapshotState, sharedSnapshotQuotaExceeded.
     */
    public func modifyDBSnapshotAttributeSync(
            input: RDSModel.ModifyDBSnapshotAttributeMessage) throws -> RDSModel.ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute {
        if let modifyDBSnapshotAttributeSyncOverride = modifyDBSnapshotAttributeSyncOverride {
            return try modifyDBSnapshotAttributeSyncOverride(input)
        }

        return ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute.__default
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
    public func modifyDBSubnetGroupAsync(
            input: RDSModel.ModifyDBSubnetGroupMessage, 
            completion: @escaping (Result<RDSModel.ModifyDBSubnetGroupResultForModifyDBSubnetGroup, RDSError>) -> ()) throws {
        if let modifyDBSubnetGroupAsyncOverride = modifyDBSubnetGroupAsyncOverride {
            return try modifyDBSubnetGroupAsyncOverride(input, completion)
        }

        let result = ModifyDBSubnetGroupResultForModifyDBSubnetGroup.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ModifyDBSubnetGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBSubnetGroupMessage object being passed to this operation.
     - Returns: The ModifyDBSubnetGroupResultForModifyDBSubnetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, dBSubnetQuotaExceeded, invalidSubnet, subnetAlreadyInUse.
     */
    public func modifyDBSubnetGroupSync(
            input: RDSModel.ModifyDBSubnetGroupMessage) throws -> RDSModel.ModifyDBSubnetGroupResultForModifyDBSubnetGroup {
        if let modifyDBSubnetGroupSyncOverride = modifyDBSubnetGroupSyncOverride {
            return try modifyDBSubnetGroupSyncOverride(input)
        }

        return ModifyDBSubnetGroupResultForModifyDBSubnetGroup.__default
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
    public func modifyEventSubscriptionAsync(
            input: RDSModel.ModifyEventSubscriptionMessage, 
            completion: @escaping (Result<RDSModel.ModifyEventSubscriptionResultForModifyEventSubscription, RDSError>) -> ()) throws {
        if let modifyEventSubscriptionAsyncOverride = modifyEventSubscriptionAsyncOverride {
            return try modifyEventSubscriptionAsyncOverride(input, completion)
        }

        let result = ModifyEventSubscriptionResultForModifyEventSubscription.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ModifyEventSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyEventSubscriptionMessage object being passed to this operation.
     - Returns: The ModifyEventSubscriptionResultForModifyEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, subscriptionCategoryNotFound, subscriptionNotFound.
     */
    public func modifyEventSubscriptionSync(
            input: RDSModel.ModifyEventSubscriptionMessage) throws -> RDSModel.ModifyEventSubscriptionResultForModifyEventSubscription {
        if let modifyEventSubscriptionSyncOverride = modifyEventSubscriptionSyncOverride {
            return try modifyEventSubscriptionSyncOverride(input)
        }

        return ModifyEventSubscriptionResultForModifyEventSubscription.__default
    }

    /**
     Invokes the ModifyGlobalCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyGlobalClusterMessage object being passed to this operation.
         - completion: The ModifyGlobalClusterResultForModifyGlobalCluster object or an error will be passed to this 
           callback when the operation is complete. The ModifyGlobalClusterResultForModifyGlobalCluster
           object will be validated before being returned to caller.
           The possible errors are: globalClusterNotFound, invalidDBClusterState, invalidDBInstanceState, invalidGlobalClusterState.
     */
    public func modifyGlobalClusterAsync(
            input: RDSModel.ModifyGlobalClusterMessage, 
            completion: @escaping (Result<RDSModel.ModifyGlobalClusterResultForModifyGlobalCluster, RDSError>) -> ()) throws {
        if let modifyGlobalClusterAsyncOverride = modifyGlobalClusterAsyncOverride {
            return try modifyGlobalClusterAsyncOverride(input, completion)
        }

        let result = ModifyGlobalClusterResultForModifyGlobalCluster.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ModifyGlobalCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyGlobalClusterMessage object being passed to this operation.
     - Returns: The ModifyGlobalClusterResultForModifyGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalClusterNotFound, invalidDBClusterState, invalidDBInstanceState, invalidGlobalClusterState.
     */
    public func modifyGlobalClusterSync(
            input: RDSModel.ModifyGlobalClusterMessage) throws -> RDSModel.ModifyGlobalClusterResultForModifyGlobalCluster {
        if let modifyGlobalClusterSyncOverride = modifyGlobalClusterSyncOverride {
            return try modifyGlobalClusterSyncOverride(input)
        }

        return ModifyGlobalClusterResultForModifyGlobalCluster.__default
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
    public func modifyOptionGroupAsync(
            input: RDSModel.ModifyOptionGroupMessage, 
            completion: @escaping (Result<RDSModel.ModifyOptionGroupResultForModifyOptionGroup, RDSError>) -> ()) throws {
        if let modifyOptionGroupAsyncOverride = modifyOptionGroupAsyncOverride {
            return try modifyOptionGroupAsyncOverride(input, completion)
        }

        let result = ModifyOptionGroupResultForModifyOptionGroup.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ModifyOptionGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyOptionGroupMessage object being passed to this operation.
     - Returns: The ModifyOptionGroupResultForModifyOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOptionGroupState, optionGroupNotFound.
     */
    public func modifyOptionGroupSync(
            input: RDSModel.ModifyOptionGroupMessage) throws -> RDSModel.ModifyOptionGroupResultForModifyOptionGroup {
        if let modifyOptionGroupSyncOverride = modifyOptionGroupSyncOverride {
            return try modifyOptionGroupSyncOverride(input)
        }

        return ModifyOptionGroupResultForModifyOptionGroup.__default
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
    public func promoteReadReplicaAsync(
            input: RDSModel.PromoteReadReplicaMessage, 
            completion: @escaping (Result<RDSModel.PromoteReadReplicaResultForPromoteReadReplica, RDSError>) -> ()) throws {
        if let promoteReadReplicaAsyncOverride = promoteReadReplicaAsyncOverride {
            return try promoteReadReplicaAsyncOverride(input, completion)
        }

        let result = PromoteReadReplicaResultForPromoteReadReplica.__default
        
        completion(.success(result))
    }

    /**
     Invokes the PromoteReadReplica operation waiting for the response before returning.

     - Parameters:
         - input: The validated PromoteReadReplicaMessage object being passed to this operation.
     - Returns: The PromoteReadReplicaResultForPromoteReadReplica object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    public func promoteReadReplicaSync(
            input: RDSModel.PromoteReadReplicaMessage) throws -> RDSModel.PromoteReadReplicaResultForPromoteReadReplica {
        if let promoteReadReplicaSyncOverride = promoteReadReplicaSyncOverride {
            return try promoteReadReplicaSyncOverride(input)
        }

        return PromoteReadReplicaResultForPromoteReadReplica.__default
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
    public func promoteReadReplicaDBClusterAsync(
            input: RDSModel.PromoteReadReplicaDBClusterMessage, 
            completion: @escaping (Result<RDSModel.PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster, RDSError>) -> ()) throws {
        if let promoteReadReplicaDBClusterAsyncOverride = promoteReadReplicaDBClusterAsyncOverride {
            return try promoteReadReplicaDBClusterAsyncOverride(input, completion)
        }

        let result = PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster.__default
        
        completion(.success(result))
    }

    /**
     Invokes the PromoteReadReplicaDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated PromoteReadReplicaDBClusterMessage object being passed to this operation.
     - Returns: The PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState.
     */
    public func promoteReadReplicaDBClusterSync(
            input: RDSModel.PromoteReadReplicaDBClusterMessage) throws -> RDSModel.PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster {
        if let promoteReadReplicaDBClusterSyncOverride = promoteReadReplicaDBClusterSyncOverride {
            return try promoteReadReplicaDBClusterSyncOverride(input)
        }

        return PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster.__default
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
    public func purchaseReservedDBInstancesOfferingAsync(
            input: RDSModel.PurchaseReservedDBInstancesOfferingMessage, 
            completion: @escaping (Result<RDSModel.PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering, RDSError>) -> ()) throws {
        if let purchaseReservedDBInstancesOfferingAsyncOverride = purchaseReservedDBInstancesOfferingAsyncOverride {
            return try purchaseReservedDBInstancesOfferingAsyncOverride(input, completion)
        }

        let result = PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering.__default
        
        completion(.success(result))
    }

    /**
     Invokes the PurchaseReservedDBInstancesOffering operation waiting for the response before returning.

     - Parameters:
         - input: The validated PurchaseReservedDBInstancesOfferingMessage object being passed to this operation.
     - Returns: The PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: reservedDBInstanceAlreadyExists, reservedDBInstanceQuotaExceeded, reservedDBInstancesOfferingNotFound.
     */
    public func purchaseReservedDBInstancesOfferingSync(
            input: RDSModel.PurchaseReservedDBInstancesOfferingMessage) throws -> RDSModel.PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering {
        if let purchaseReservedDBInstancesOfferingSyncOverride = purchaseReservedDBInstancesOfferingSyncOverride {
            return try purchaseReservedDBInstancesOfferingSyncOverride(input)
        }

        return PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering.__default
    }

    /**
     Invokes the RebootDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RebootDBClusterMessage object being passed to this operation.
         - completion: The RebootDBClusterResultForRebootDBCluster object or an error will be passed to this 
           callback when the operation is complete. The RebootDBClusterResultForRebootDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func rebootDBClusterAsync(
            input: RDSModel.RebootDBClusterMessage, 
            completion: @escaping (Result<RDSModel.RebootDBClusterResultForRebootDBCluster, RDSError>) -> ()) throws {
        if let rebootDBClusterAsyncOverride = rebootDBClusterAsyncOverride {
            return try rebootDBClusterAsyncOverride(input, completion)
        }

        let result = RebootDBClusterResultForRebootDBCluster.__default
        
        completion(.success(result))
    }

    /**
     Invokes the RebootDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated RebootDBClusterMessage object being passed to this operation.
     - Returns: The RebootDBClusterResultForRebootDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func rebootDBClusterSync(
            input: RDSModel.RebootDBClusterMessage) throws -> RDSModel.RebootDBClusterResultForRebootDBCluster {
        if let rebootDBClusterSyncOverride = rebootDBClusterSyncOverride {
            return try rebootDBClusterSyncOverride(input)
        }

        return RebootDBClusterResultForRebootDBCluster.__default
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
    public func rebootDBInstanceAsync(
            input: RDSModel.RebootDBInstanceMessage, 
            completion: @escaping (Result<RDSModel.RebootDBInstanceResultForRebootDBInstance, RDSError>) -> ()) throws {
        if let rebootDBInstanceAsyncOverride = rebootDBInstanceAsyncOverride {
            return try rebootDBInstanceAsyncOverride(input, completion)
        }

        let result = RebootDBInstanceResultForRebootDBInstance.__default
        
        completion(.success(result))
    }

    /**
     Invokes the RebootDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated RebootDBInstanceMessage object being passed to this operation.
     - Returns: The RebootDBInstanceResultForRebootDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    public func rebootDBInstanceSync(
            input: RDSModel.RebootDBInstanceMessage) throws -> RDSModel.RebootDBInstanceResultForRebootDBInstance {
        if let rebootDBInstanceSyncOverride = rebootDBInstanceSyncOverride {
            return try rebootDBInstanceSyncOverride(input)
        }

        return RebootDBInstanceResultForRebootDBInstance.__default
    }

    /**
     Invokes the RegisterDBProxyTargets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterDBProxyTargetsRequest object being passed to this operation.
         - completion: The RegisterDBProxyTargetsResponseForRegisterDBProxyTargets object or an error will be passed to this 
           callback when the operation is complete. The RegisterDBProxyTargetsResponseForRegisterDBProxyTargets
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetAlreadyRegistered, dBProxyTargetGroupNotFound, insufficientAvailableIPsInSubnet, invalidDBClusterState, invalidDBInstanceState, invalidDBProxyState.
     */
    public func registerDBProxyTargetsAsync(
            input: RDSModel.RegisterDBProxyTargetsRequest, 
            completion: @escaping (Result<RDSModel.RegisterDBProxyTargetsResponseForRegisterDBProxyTargets, RDSError>) -> ()) throws {
        if let registerDBProxyTargetsAsyncOverride = registerDBProxyTargetsAsyncOverride {
            return try registerDBProxyTargetsAsyncOverride(input, completion)
        }

        let result = RegisterDBProxyTargetsResponseForRegisterDBProxyTargets.__default
        
        completion(.success(result))
    }

    /**
     Invokes the RegisterDBProxyTargets operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterDBProxyTargetsRequest object being passed to this operation.
     - Returns: The RegisterDBProxyTargetsResponseForRegisterDBProxyTargets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetAlreadyRegistered, dBProxyTargetGroupNotFound, insufficientAvailableIPsInSubnet, invalidDBClusterState, invalidDBInstanceState, invalidDBProxyState.
     */
    public func registerDBProxyTargetsSync(
            input: RDSModel.RegisterDBProxyTargetsRequest) throws -> RDSModel.RegisterDBProxyTargetsResponseForRegisterDBProxyTargets {
        if let registerDBProxyTargetsSyncOverride = registerDBProxyTargetsSyncOverride {
            return try registerDBProxyTargetsSyncOverride(input)
        }

        return RegisterDBProxyTargetsResponseForRegisterDBProxyTargets.__default
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
    public func removeFromGlobalClusterAsync(
            input: RDSModel.RemoveFromGlobalClusterMessage, 
            completion: @escaping (Result<RDSModel.RemoveFromGlobalClusterResultForRemoveFromGlobalCluster, RDSError>) -> ()) throws {
        if let removeFromGlobalClusterAsyncOverride = removeFromGlobalClusterAsyncOverride {
            return try removeFromGlobalClusterAsyncOverride(input, completion)
        }

        let result = RemoveFromGlobalClusterResultForRemoveFromGlobalCluster.__default
        
        completion(.success(result))
    }

    /**
     Invokes the RemoveFromGlobalCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveFromGlobalClusterMessage object being passed to this operation.
     - Returns: The RemoveFromGlobalClusterResultForRemoveFromGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, globalClusterNotFound, invalidGlobalClusterState.
     */
    public func removeFromGlobalClusterSync(
            input: RDSModel.RemoveFromGlobalClusterMessage) throws -> RDSModel.RemoveFromGlobalClusterResultForRemoveFromGlobalCluster {
        if let removeFromGlobalClusterSyncOverride = removeFromGlobalClusterSyncOverride {
            return try removeFromGlobalClusterSyncOverride(input)
        }

        return RemoveFromGlobalClusterResultForRemoveFromGlobalCluster.__default
    }

    /**
     Invokes the RemoveRoleFromDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveRoleFromDBClusterMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBClusterNotFound, dBClusterRoleNotFound, invalidDBClusterState.
     */
    public func removeRoleFromDBClusterAsync(
            input: RDSModel.RemoveRoleFromDBClusterMessage, 
            completion: @escaping (RDSError?) -> ()) throws {
        if let removeRoleFromDBClusterAsyncOverride = removeRoleFromDBClusterAsyncOverride {
            return try removeRoleFromDBClusterAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the RemoveRoleFromDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveRoleFromDBClusterMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBClusterRoleNotFound, invalidDBClusterState.
     */
    public func removeRoleFromDBClusterSync(
            input: RDSModel.RemoveRoleFromDBClusterMessage) throws {
        if let removeRoleFromDBClusterSyncOverride = removeRoleFromDBClusterSyncOverride {
            return try removeRoleFromDBClusterSyncOverride(input)
        }

    }

    /**
     Invokes the RemoveRoleFromDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveRoleFromDBInstanceMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBInstanceNotFound, dBInstanceRoleNotFound, invalidDBInstanceState.
     */
    public func removeRoleFromDBInstanceAsync(
            input: RDSModel.RemoveRoleFromDBInstanceMessage, 
            completion: @escaping (RDSError?) -> ()) throws {
        if let removeRoleFromDBInstanceAsyncOverride = removeRoleFromDBInstanceAsyncOverride {
            return try removeRoleFromDBInstanceAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the RemoveRoleFromDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveRoleFromDBInstanceMessage object being passed to this operation.
     - Throws: dBInstanceNotFound, dBInstanceRoleNotFound, invalidDBInstanceState.
     */
    public func removeRoleFromDBInstanceSync(
            input: RDSModel.RemoveRoleFromDBInstanceMessage) throws {
        if let removeRoleFromDBInstanceSyncOverride = removeRoleFromDBInstanceSyncOverride {
            return try removeRoleFromDBInstanceSyncOverride(input)
        }

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
    public func removeSourceIdentifierFromSubscriptionAsync(
            input: RDSModel.RemoveSourceIdentifierFromSubscriptionMessage, 
            completion: @escaping (Result<RDSModel.RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription, RDSError>) -> ()) throws {
        if let removeSourceIdentifierFromSubscriptionAsyncOverride = removeSourceIdentifierFromSubscriptionAsyncOverride {
            return try removeSourceIdentifierFromSubscriptionAsyncOverride(input, completion)
        }

        let result = RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription.__default
        
        completion(.success(result))
    }

    /**
     Invokes the RemoveSourceIdentifierFromSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveSourceIdentifierFromSubscriptionMessage object being passed to this operation.
     - Returns: The RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: sourceNotFound, subscriptionNotFound.
     */
    public func removeSourceIdentifierFromSubscriptionSync(
            input: RDSModel.RemoveSourceIdentifierFromSubscriptionMessage) throws -> RDSModel.RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription {
        if let removeSourceIdentifierFromSubscriptionSyncOverride = removeSourceIdentifierFromSubscriptionSyncOverride {
            return try removeSourceIdentifierFromSubscriptionSyncOverride(input)
        }

        return RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription.__default
    }

    /**
     Invokes the RemoveTagsFromResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveTagsFromResourceMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetGroupNotFound, dBSnapshotNotFound.
     */
    public func removeTagsFromResourceAsync(
            input: RDSModel.RemoveTagsFromResourceMessage, 
            completion: @escaping (RDSError?) -> ()) throws {
        if let removeTagsFromResourceAsyncOverride = removeTagsFromResourceAsyncOverride {
            return try removeTagsFromResourceAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the RemoveTagsFromResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveTagsFromResourceMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetGroupNotFound, dBSnapshotNotFound.
     */
    public func removeTagsFromResourceSync(
            input: RDSModel.RemoveTagsFromResourceMessage) throws {
        if let removeTagsFromResourceSyncOverride = removeTagsFromResourceSyncOverride {
            return try removeTagsFromResourceSyncOverride(input)
        }

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
    public func resetDBClusterParameterGroupAsync(
            input: RDSModel.ResetDBClusterParameterGroupMessage, 
            completion: @escaping (Result<RDSModel.DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup, RDSError>) -> ()) throws {
        if let resetDBClusterParameterGroupAsyncOverride = resetDBClusterParameterGroupAsyncOverride {
            return try resetDBClusterParameterGroupAsyncOverride(input, completion)
        }

        let result = DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ResetDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func resetDBClusterParameterGroupSync(
            input: RDSModel.ResetDBClusterParameterGroupMessage) throws -> RDSModel.DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup {
        if let resetDBClusterParameterGroupSyncOverride = resetDBClusterParameterGroupSyncOverride {
            return try resetDBClusterParameterGroupSyncOverride(input)
        }

        return DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup.__default
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
    public func resetDBParameterGroupAsync(
            input: RDSModel.ResetDBParameterGroupMessage, 
            completion: @escaping (Result<RDSModel.DBParameterGroupNameMessageForResetDBParameterGroup, RDSError>) -> ()) throws {
        if let resetDBParameterGroupAsyncOverride = resetDBParameterGroupAsyncOverride {
            return try resetDBParameterGroupAsyncOverride(input, completion)
        }

        let result = DBParameterGroupNameMessageForResetDBParameterGroup.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ResetDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetDBParameterGroupMessage object being passed to this operation.
     - Returns: The DBParameterGroupNameMessageForResetDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func resetDBParameterGroupSync(
            input: RDSModel.ResetDBParameterGroupMessage) throws -> RDSModel.DBParameterGroupNameMessageForResetDBParameterGroup {
        if let resetDBParameterGroupSyncOverride = resetDBParameterGroupSyncOverride {
            return try resetDBParameterGroupSyncOverride(input)
        }

        return DBParameterGroupNameMessageForResetDBParameterGroup.__default
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
    public func restoreDBClusterFromS3Async(
            input: RDSModel.RestoreDBClusterFromS3Message, 
            completion: @escaping (Result<RDSModel.RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3, RDSError>) -> ()) throws {
        if let restoreDBClusterFromS3AsyncOverride = restoreDBClusterFromS3AsyncOverride {
            return try restoreDBClusterFromS3AsyncOverride(input, completion)
        }

        let result = RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3.__default
        
        completion(.success(result))
    }

    /**
     Invokes the RestoreDBClusterFromS3 operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBClusterFromS3Message object being passed to this operation.
     - Returns: The RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3 object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBSubnetGroupNotFound, domainNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBSubnetGroupState, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    public func restoreDBClusterFromS3Sync(
            input: RDSModel.RestoreDBClusterFromS3Message) throws -> RDSModel.RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3 {
        if let restoreDBClusterFromS3SyncOverride = restoreDBClusterFromS3SyncOverride {
            return try restoreDBClusterFromS3SyncOverride(input)
        }

        return RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3.__default
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
    public func restoreDBClusterFromSnapshotAsync(
            input: RDSModel.RestoreDBClusterFromSnapshotMessage, 
            completion: @escaping (Result<RDSModel.RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot, RDSError>) -> ()) throws {
        if let restoreDBClusterFromSnapshotAsyncOverride = restoreDBClusterFromSnapshotAsyncOverride {
            return try restoreDBClusterFromSnapshotAsyncOverride(input, completion)
        }

        let result = RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot.__default
        
        completion(.success(result))
    }

    /**
     Invokes the RestoreDBClusterFromSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBClusterFromSnapshotMessage object being passed to this operation.
     - Returns: The RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSnapshotNotFound, dBSubnetGroupNotFound, dBSubnetGroupNotFound, domainNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded, storageQuotaExceeded.
     */
    public func restoreDBClusterFromSnapshotSync(
            input: RDSModel.RestoreDBClusterFromSnapshotMessage) throws -> RDSModel.RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot {
        if let restoreDBClusterFromSnapshotSyncOverride = restoreDBClusterFromSnapshotSyncOverride {
            return try restoreDBClusterFromSnapshotSyncOverride(input)
        }

        return RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot.__default
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
    public func restoreDBClusterToPointInTimeAsync(
            input: RDSModel.RestoreDBClusterToPointInTimeMessage, 
            completion: @escaping (Result<RDSModel.RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime, RDSError>) -> ()) throws {
        if let restoreDBClusterToPointInTimeAsyncOverride = restoreDBClusterToPointInTimeAsyncOverride {
            return try restoreDBClusterToPointInTimeAsyncOverride(input, completion)
        }

        let result = RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime.__default
        
        completion(.success(result))
    }

    /**
     Invokes the RestoreDBClusterToPointInTime operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBClusterToPointInTimeMessage object being passed to this operation.
     - Returns: The RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSubnetGroupNotFound, domainNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBClusterState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded.
     */
    public func restoreDBClusterToPointInTimeSync(
            input: RDSModel.RestoreDBClusterToPointInTimeMessage) throws -> RDSModel.RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime {
        if let restoreDBClusterToPointInTimeSyncOverride = restoreDBClusterToPointInTimeSyncOverride {
            return try restoreDBClusterToPointInTimeSyncOverride(input)
        }

        return RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime.__default
    }

    /**
     Invokes the RestoreDBInstanceFromDBSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBInstanceFromDBSnapshotMessage object being passed to this operation.
         - completion: The RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSnapshotNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, networkTypeNotSupported, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceFromDBSnapshotAsync(
            input: RDSModel.RestoreDBInstanceFromDBSnapshotMessage, 
            completion: @escaping (Result<RDSModel.RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot, RDSError>) -> ()) throws {
        if let restoreDBInstanceFromDBSnapshotAsyncOverride = restoreDBInstanceFromDBSnapshotAsyncOverride {
            return try restoreDBInstanceFromDBSnapshotAsyncOverride(input, completion)
        }

        let result = RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot.__default
        
        completion(.success(result))
    }

    /**
     Invokes the RestoreDBInstanceFromDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBInstanceFromDBSnapshotMessage object being passed to this operation.
     - Returns: The RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSnapshotNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, networkTypeNotSupported, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceFromDBSnapshotSync(
            input: RDSModel.RestoreDBInstanceFromDBSnapshotMessage) throws -> RDSModel.RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot {
        if let restoreDBInstanceFromDBSnapshotSyncOverride = restoreDBInstanceFromDBSnapshotSyncOverride {
            return try restoreDBInstanceFromDBSnapshotSyncOverride(input)
        }

        return RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot.__default
    }

    /**
     Invokes the RestoreDBInstanceFromS3 operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBInstanceFromS3Message object being passed to this operation.
         - completion: The RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3 object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, networkTypeNotSupported, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceFromS3Async(
            input: RDSModel.RestoreDBInstanceFromS3Message, 
            completion: @escaping (Result<RDSModel.RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3, RDSError>) -> ()) throws {
        if let restoreDBInstanceFromS3AsyncOverride = restoreDBInstanceFromS3AsyncOverride {
            return try restoreDBInstanceFromS3AsyncOverride(input, completion)
        }

        let result = RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3.__default
        
        completion(.success(result))
    }

    /**
     Invokes the RestoreDBInstanceFromS3 operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBInstanceFromS3Message object being passed to this operation.
     - Returns: The RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3 object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, networkTypeNotSupported, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceFromS3Sync(
            input: RDSModel.RestoreDBInstanceFromS3Message) throws -> RDSModel.RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3 {
        if let restoreDBInstanceFromS3SyncOverride = restoreDBInstanceFromS3SyncOverride {
            return try restoreDBInstanceFromS3SyncOverride(input)
        }

        return RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3.__default
    }

    /**
     Invokes the RestoreDBInstanceToPointInTime operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBInstanceToPointInTimeMessage object being passed to this operation.
         - completion: The RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBInstanceAutomatedBackupNotFound, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, networkTypeNotSupported, optionGroupNotFound, pointInTimeRestoreNotEnabled, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceToPointInTimeAsync(
            input: RDSModel.RestoreDBInstanceToPointInTimeMessage, 
            completion: @escaping (Result<RDSModel.RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime, RDSError>) -> ()) throws {
        if let restoreDBInstanceToPointInTimeAsyncOverride = restoreDBInstanceToPointInTimeAsyncOverride {
            return try restoreDBInstanceToPointInTimeAsyncOverride(input, completion)
        }

        let result = RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime.__default
        
        completion(.success(result))
    }

    /**
     Invokes the RestoreDBInstanceToPointInTime operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBInstanceToPointInTimeMessage object being passed to this operation.
     - Returns: The RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBInstanceAutomatedBackupNotFound, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, networkTypeNotSupported, optionGroupNotFound, pointInTimeRestoreNotEnabled, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceToPointInTimeSync(
            input: RDSModel.RestoreDBInstanceToPointInTimeMessage) throws -> RDSModel.RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime {
        if let restoreDBInstanceToPointInTimeSyncOverride = restoreDBInstanceToPointInTimeSyncOverride {
            return try restoreDBInstanceToPointInTimeSyncOverride(input)
        }

        return RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime.__default
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
    public func revokeDBSecurityGroupIngressAsync(
            input: RDSModel.RevokeDBSecurityGroupIngressMessage, 
            completion: @escaping (Result<RDSModel.RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress, RDSError>) -> ()) throws {
        if let revokeDBSecurityGroupIngressAsyncOverride = revokeDBSecurityGroupIngressAsyncOverride {
            return try revokeDBSecurityGroupIngressAsyncOverride(input, completion)
        }

        let result = RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress.__default
        
        completion(.success(result))
    }

    /**
     Invokes the RevokeDBSecurityGroupIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated RevokeDBSecurityGroupIngressMessage object being passed to this operation.
     - Returns: The RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    public func revokeDBSecurityGroupIngressSync(
            input: RDSModel.RevokeDBSecurityGroupIngressMessage) throws -> RDSModel.RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress {
        if let revokeDBSecurityGroupIngressSyncOverride = revokeDBSecurityGroupIngressSyncOverride {
            return try revokeDBSecurityGroupIngressSyncOverride(input)
        }

        return RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress.__default
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
    public func startActivityStreamAsync(
            input: RDSModel.StartActivityStreamRequest, 
            completion: @escaping (Result<RDSModel.StartActivityStreamResponseForStartActivityStream, RDSError>) -> ()) throws {
        if let startActivityStreamAsyncOverride = startActivityStreamAsyncOverride {
            return try startActivityStreamAsyncOverride(input, completion)
        }

        let result = StartActivityStreamResponseForStartActivityStream.__default
        
        completion(.success(result))
    }

    /**
     Invokes the StartActivityStream operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartActivityStreamRequest object being passed to this operation.
     - Returns: The StartActivityStreamResponseForStartActivityStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState, kMSKeyNotAccessible, resourceNotFound.
     */
    public func startActivityStreamSync(
            input: RDSModel.StartActivityStreamRequest) throws -> RDSModel.StartActivityStreamResponseForStartActivityStream {
        if let startActivityStreamSyncOverride = startActivityStreamSyncOverride {
            return try startActivityStreamSyncOverride(input)
        }

        return StartActivityStreamResponseForStartActivityStream.__default
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
    public func startDBClusterAsync(
            input: RDSModel.StartDBClusterMessage, 
            completion: @escaping (Result<RDSModel.StartDBClusterResultForStartDBCluster, RDSError>) -> ()) throws {
        if let startDBClusterAsyncOverride = startDBClusterAsyncOverride {
            return try startDBClusterAsyncOverride(input, completion)
        }

        let result = StartDBClusterResultForStartDBCluster.__default
        
        completion(.success(result))
    }

    /**
     Invokes the StartDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartDBClusterMessage object being passed to this operation.
     - Returns: The StartDBClusterResultForStartDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func startDBClusterSync(
            input: RDSModel.StartDBClusterMessage) throws -> RDSModel.StartDBClusterResultForStartDBCluster {
        if let startDBClusterSyncOverride = startDBClusterSyncOverride {
            return try startDBClusterSyncOverride(input)
        }

        return StartDBClusterResultForStartDBCluster.__default
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
    public func startDBInstanceAsync(
            input: RDSModel.StartDBInstanceMessage, 
            completion: @escaping (Result<RDSModel.StartDBInstanceResultForStartDBInstance, RDSError>) -> ()) throws {
        if let startDBInstanceAsyncOverride = startDBInstanceAsyncOverride {
            return try startDBInstanceAsyncOverride(input, completion)
        }

        let result = StartDBInstanceResultForStartDBInstance.__default
        
        completion(.success(result))
    }

    /**
     Invokes the StartDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartDBInstanceMessage object being passed to this operation.
     - Returns: The StartDBInstanceResultForStartDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, dBClusterNotFound, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, insufficientDBInstanceCapacity, invalidDBClusterState, invalidDBInstanceState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible.
     */
    public func startDBInstanceSync(
            input: RDSModel.StartDBInstanceMessage) throws -> RDSModel.StartDBInstanceResultForStartDBInstance {
        if let startDBInstanceSyncOverride = startDBInstanceSyncOverride {
            return try startDBInstanceSyncOverride(input)
        }

        return StartDBInstanceResultForStartDBInstance.__default
    }

    /**
     Invokes the StartDBInstanceAutomatedBackupsReplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartDBInstanceAutomatedBackupsReplicationMessage object being passed to this operation.
         - completion: The StartDBInstanceAutomatedBackupsReplicationResultForStartDBInstanceAutomatedBackupsReplication object or an error will be passed to this 
           callback when the operation is complete. The StartDBInstanceAutomatedBackupsReplicationResultForStartDBInstanceAutomatedBackupsReplication
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceAutomatedBackupQuotaExceeded, dBInstanceNotFound, invalidDBInstanceState, kMSKeyNotAccessible, storageTypeNotSupported.
     */
    public func startDBInstanceAutomatedBackupsReplicationAsync(
            input: RDSModel.StartDBInstanceAutomatedBackupsReplicationMessage, 
            completion: @escaping (Result<RDSModel.StartDBInstanceAutomatedBackupsReplicationResultForStartDBInstanceAutomatedBackupsReplication, RDSError>) -> ()) throws {
        if let startDBInstanceAutomatedBackupsReplicationAsyncOverride = startDBInstanceAutomatedBackupsReplicationAsyncOverride {
            return try startDBInstanceAutomatedBackupsReplicationAsyncOverride(input, completion)
        }

        let result = StartDBInstanceAutomatedBackupsReplicationResultForStartDBInstanceAutomatedBackupsReplication.__default
        
        completion(.success(result))
    }

    /**
     Invokes the StartDBInstanceAutomatedBackupsReplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartDBInstanceAutomatedBackupsReplicationMessage object being passed to this operation.
     - Returns: The StartDBInstanceAutomatedBackupsReplicationResultForStartDBInstanceAutomatedBackupsReplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupQuotaExceeded, dBInstanceNotFound, invalidDBInstanceState, kMSKeyNotAccessible, storageTypeNotSupported.
     */
    public func startDBInstanceAutomatedBackupsReplicationSync(
            input: RDSModel.StartDBInstanceAutomatedBackupsReplicationMessage) throws -> RDSModel.StartDBInstanceAutomatedBackupsReplicationResultForStartDBInstanceAutomatedBackupsReplication {
        if let startDBInstanceAutomatedBackupsReplicationSyncOverride = startDBInstanceAutomatedBackupsReplicationSyncOverride {
            return try startDBInstanceAutomatedBackupsReplicationSyncOverride(input)
        }

        return StartDBInstanceAutomatedBackupsReplicationResultForStartDBInstanceAutomatedBackupsReplication.__default
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
    public func startExportTaskAsync(
            input: RDSModel.StartExportTaskMessage, 
            completion: @escaping (Result<RDSModel.ExportTaskForStartExportTask, RDSError>) -> ()) throws {
        if let startExportTaskAsyncOverride = startExportTaskAsyncOverride {
            return try startExportTaskAsyncOverride(input, completion)
        }

        let result = ExportTaskForStartExportTask.__default
        
        completion(.success(result))
    }

    /**
     Invokes the StartExportTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartExportTaskMessage object being passed to this operation.
     - Returns: The ExportTaskForStartExportTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound, dBSnapshotNotFound, exportTaskAlreadyExists, iamRoleMissingPermissions, iamRoleNotFound, invalidExportOnly, invalidExportSourceState, invalidS3Bucket, kMSKeyNotAccessible.
     */
    public func startExportTaskSync(
            input: RDSModel.StartExportTaskMessage) throws -> RDSModel.ExportTaskForStartExportTask {
        if let startExportTaskSyncOverride = startExportTaskSyncOverride {
            return try startExportTaskSyncOverride(input)
        }

        return ExportTaskForStartExportTask.__default
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
    public func stopActivityStreamAsync(
            input: RDSModel.StopActivityStreamRequest, 
            completion: @escaping (Result<RDSModel.StopActivityStreamResponseForStopActivityStream, RDSError>) -> ()) throws {
        if let stopActivityStreamAsyncOverride = stopActivityStreamAsyncOverride {
            return try stopActivityStreamAsyncOverride(input, completion)
        }

        let result = StopActivityStreamResponseForStopActivityStream.__default
        
        completion(.success(result))
    }

    /**
     Invokes the StopActivityStream operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopActivityStreamRequest object being passed to this operation.
     - Returns: The StopActivityStreamResponseForStopActivityStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState, resourceNotFound.
     */
    public func stopActivityStreamSync(
            input: RDSModel.StopActivityStreamRequest) throws -> RDSModel.StopActivityStreamResponseForStopActivityStream {
        if let stopActivityStreamSyncOverride = stopActivityStreamSyncOverride {
            return try stopActivityStreamSyncOverride(input)
        }

        return StopActivityStreamResponseForStopActivityStream.__default
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
    public func stopDBClusterAsync(
            input: RDSModel.StopDBClusterMessage, 
            completion: @escaping (Result<RDSModel.StopDBClusterResultForStopDBCluster, RDSError>) -> ()) throws {
        if let stopDBClusterAsyncOverride = stopDBClusterAsyncOverride {
            return try stopDBClusterAsyncOverride(input, completion)
        }

        let result = StopDBClusterResultForStopDBCluster.__default
        
        completion(.success(result))
    }

    /**
     Invokes the StopDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopDBClusterMessage object being passed to this operation.
     - Returns: The StopDBClusterResultForStopDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func stopDBClusterSync(
            input: RDSModel.StopDBClusterMessage) throws -> RDSModel.StopDBClusterResultForStopDBCluster {
        if let stopDBClusterSyncOverride = stopDBClusterSyncOverride {
            return try stopDBClusterSyncOverride(input)
        }

        return StopDBClusterResultForStopDBCluster.__default
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
    public func stopDBInstanceAsync(
            input: RDSModel.StopDBInstanceMessage, 
            completion: @escaping (Result<RDSModel.StopDBInstanceResultForStopDBInstance, RDSError>) -> ()) throws {
        if let stopDBInstanceAsyncOverride = stopDBInstanceAsyncOverride {
            return try stopDBInstanceAsyncOverride(input, completion)
        }

        let result = StopDBInstanceResultForStopDBInstance.__default
        
        completion(.success(result))
    }

    /**
     Invokes the StopDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopDBInstanceMessage object being passed to this operation.
     - Returns: The StopDBInstanceResultForStopDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    public func stopDBInstanceSync(
            input: RDSModel.StopDBInstanceMessage) throws -> RDSModel.StopDBInstanceResultForStopDBInstance {
        if let stopDBInstanceSyncOverride = stopDBInstanceSyncOverride {
            return try stopDBInstanceSyncOverride(input)
        }

        return StopDBInstanceResultForStopDBInstance.__default
    }

    /**
     Invokes the StopDBInstanceAutomatedBackupsReplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopDBInstanceAutomatedBackupsReplicationMessage object being passed to this operation.
         - completion: The StopDBInstanceAutomatedBackupsReplicationResultForStopDBInstanceAutomatedBackupsReplication object or an error will be passed to this 
           callback when the operation is complete. The StopDBInstanceAutomatedBackupsReplicationResultForStopDBInstanceAutomatedBackupsReplication
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, invalidDBInstanceState.
     */
    public func stopDBInstanceAutomatedBackupsReplicationAsync(
            input: RDSModel.StopDBInstanceAutomatedBackupsReplicationMessage, 
            completion: @escaping (Result<RDSModel.StopDBInstanceAutomatedBackupsReplicationResultForStopDBInstanceAutomatedBackupsReplication, RDSError>) -> ()) throws {
        if let stopDBInstanceAutomatedBackupsReplicationAsyncOverride = stopDBInstanceAutomatedBackupsReplicationAsyncOverride {
            return try stopDBInstanceAutomatedBackupsReplicationAsyncOverride(input, completion)
        }

        let result = StopDBInstanceAutomatedBackupsReplicationResultForStopDBInstanceAutomatedBackupsReplication.__default
        
        completion(.success(result))
    }

    /**
     Invokes the StopDBInstanceAutomatedBackupsReplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopDBInstanceAutomatedBackupsReplicationMessage object being passed to this operation.
     - Returns: The StopDBInstanceAutomatedBackupsReplicationResultForStopDBInstanceAutomatedBackupsReplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    public func stopDBInstanceAutomatedBackupsReplicationSync(
            input: RDSModel.StopDBInstanceAutomatedBackupsReplicationMessage) throws -> RDSModel.StopDBInstanceAutomatedBackupsReplicationResultForStopDBInstanceAutomatedBackupsReplication {
        if let stopDBInstanceAutomatedBackupsReplicationSyncOverride = stopDBInstanceAutomatedBackupsReplicationSyncOverride {
            return try stopDBInstanceAutomatedBackupsReplicationSyncOverride(input)
        }

        return StopDBInstanceAutomatedBackupsReplicationResultForStopDBInstanceAutomatedBackupsReplication.__default
    }

    /**
     Invokes the SwitchoverReadReplica operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SwitchoverReadReplicaMessage object being passed to this operation.
         - completion: The SwitchoverReadReplicaResultForSwitchoverReadReplica object or an error will be passed to this 
           callback when the operation is complete. The SwitchoverReadReplicaResultForSwitchoverReadReplica
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, invalidDBInstanceState.
     */
    public func switchoverReadReplicaAsync(
            input: RDSModel.SwitchoverReadReplicaMessage, 
            completion: @escaping (Result<RDSModel.SwitchoverReadReplicaResultForSwitchoverReadReplica, RDSError>) -> ()) throws {
        if let switchoverReadReplicaAsyncOverride = switchoverReadReplicaAsyncOverride {
            return try switchoverReadReplicaAsyncOverride(input, completion)
        }

        let result = SwitchoverReadReplicaResultForSwitchoverReadReplica.__default
        
        completion(.success(result))
    }

    /**
     Invokes the SwitchoverReadReplica operation waiting for the response before returning.

     - Parameters:
         - input: The validated SwitchoverReadReplicaMessage object being passed to this operation.
     - Returns: The SwitchoverReadReplicaResultForSwitchoverReadReplica object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    public func switchoverReadReplicaSync(
            input: RDSModel.SwitchoverReadReplicaMessage) throws -> RDSModel.SwitchoverReadReplicaResultForSwitchoverReadReplica {
        if let switchoverReadReplicaSyncOverride = switchoverReadReplicaSyncOverride {
            return try switchoverReadReplicaSyncOverride(input)
        }

        return SwitchoverReadReplicaResultForSwitchoverReadReplica.__default
    }
}
