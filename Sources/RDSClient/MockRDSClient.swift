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
    let addRoleToDBClusterAsyncOverride: RDSClientProtocol.AddRoleToDBClusterAsyncType?
    let addRoleToDBClusterSyncOverride: RDSClientProtocol.AddRoleToDBClusterSyncType?
    let addRoleToDBInstanceAsyncOverride: RDSClientProtocol.AddRoleToDBInstanceAsyncType?
    let addRoleToDBInstanceSyncOverride: RDSClientProtocol.AddRoleToDBInstanceSyncType?
    let addSourceIdentifierToSubscriptionAsyncOverride: RDSClientProtocol.AddSourceIdentifierToSubscriptionAsyncType?
    let addSourceIdentifierToSubscriptionSyncOverride: RDSClientProtocol.AddSourceIdentifierToSubscriptionSyncType?
    let addTagsToResourceAsyncOverride: RDSClientProtocol.AddTagsToResourceAsyncType?
    let addTagsToResourceSyncOverride: RDSClientProtocol.AddTagsToResourceSyncType?
    let applyPendingMaintenanceActionAsyncOverride: RDSClientProtocol.ApplyPendingMaintenanceActionAsyncType?
    let applyPendingMaintenanceActionSyncOverride: RDSClientProtocol.ApplyPendingMaintenanceActionSyncType?
    let authorizeDBSecurityGroupIngressAsyncOverride: RDSClientProtocol.AuthorizeDBSecurityGroupIngressAsyncType?
    let authorizeDBSecurityGroupIngressSyncOverride: RDSClientProtocol.AuthorizeDBSecurityGroupIngressSyncType?
    let backtrackDBClusterAsyncOverride: RDSClientProtocol.BacktrackDBClusterAsyncType?
    let backtrackDBClusterSyncOverride: RDSClientProtocol.BacktrackDBClusterSyncType?
    let copyDBClusterParameterGroupAsyncOverride: RDSClientProtocol.CopyDBClusterParameterGroupAsyncType?
    let copyDBClusterParameterGroupSyncOverride: RDSClientProtocol.CopyDBClusterParameterGroupSyncType?
    let copyDBClusterSnapshotAsyncOverride: RDSClientProtocol.CopyDBClusterSnapshotAsyncType?
    let copyDBClusterSnapshotSyncOverride: RDSClientProtocol.CopyDBClusterSnapshotSyncType?
    let copyDBParameterGroupAsyncOverride: RDSClientProtocol.CopyDBParameterGroupAsyncType?
    let copyDBParameterGroupSyncOverride: RDSClientProtocol.CopyDBParameterGroupSyncType?
    let copyDBSnapshotAsyncOverride: RDSClientProtocol.CopyDBSnapshotAsyncType?
    let copyDBSnapshotSyncOverride: RDSClientProtocol.CopyDBSnapshotSyncType?
    let copyOptionGroupAsyncOverride: RDSClientProtocol.CopyOptionGroupAsyncType?
    let copyOptionGroupSyncOverride: RDSClientProtocol.CopyOptionGroupSyncType?
    let createDBClusterAsyncOverride: RDSClientProtocol.CreateDBClusterAsyncType?
    let createDBClusterSyncOverride: RDSClientProtocol.CreateDBClusterSyncType?
    let createDBClusterEndpointAsyncOverride: RDSClientProtocol.CreateDBClusterEndpointAsyncType?
    let createDBClusterEndpointSyncOverride: RDSClientProtocol.CreateDBClusterEndpointSyncType?
    let createDBClusterParameterGroupAsyncOverride: RDSClientProtocol.CreateDBClusterParameterGroupAsyncType?
    let createDBClusterParameterGroupSyncOverride: RDSClientProtocol.CreateDBClusterParameterGroupSyncType?
    let createDBClusterSnapshotAsyncOverride: RDSClientProtocol.CreateDBClusterSnapshotAsyncType?
    let createDBClusterSnapshotSyncOverride: RDSClientProtocol.CreateDBClusterSnapshotSyncType?
    let createDBInstanceAsyncOverride: RDSClientProtocol.CreateDBInstanceAsyncType?
    let createDBInstanceSyncOverride: RDSClientProtocol.CreateDBInstanceSyncType?
    let createDBInstanceReadReplicaAsyncOverride: RDSClientProtocol.CreateDBInstanceReadReplicaAsyncType?
    let createDBInstanceReadReplicaSyncOverride: RDSClientProtocol.CreateDBInstanceReadReplicaSyncType?
    let createDBParameterGroupAsyncOverride: RDSClientProtocol.CreateDBParameterGroupAsyncType?
    let createDBParameterGroupSyncOverride: RDSClientProtocol.CreateDBParameterGroupSyncType?
    let createDBSecurityGroupAsyncOverride: RDSClientProtocol.CreateDBSecurityGroupAsyncType?
    let createDBSecurityGroupSyncOverride: RDSClientProtocol.CreateDBSecurityGroupSyncType?
    let createDBSnapshotAsyncOverride: RDSClientProtocol.CreateDBSnapshotAsyncType?
    let createDBSnapshotSyncOverride: RDSClientProtocol.CreateDBSnapshotSyncType?
    let createDBSubnetGroupAsyncOverride: RDSClientProtocol.CreateDBSubnetGroupAsyncType?
    let createDBSubnetGroupSyncOverride: RDSClientProtocol.CreateDBSubnetGroupSyncType?
    let createEventSubscriptionAsyncOverride: RDSClientProtocol.CreateEventSubscriptionAsyncType?
    let createEventSubscriptionSyncOverride: RDSClientProtocol.CreateEventSubscriptionSyncType?
    let createGlobalClusterAsyncOverride: RDSClientProtocol.CreateGlobalClusterAsyncType?
    let createGlobalClusterSyncOverride: RDSClientProtocol.CreateGlobalClusterSyncType?
    let createOptionGroupAsyncOverride: RDSClientProtocol.CreateOptionGroupAsyncType?
    let createOptionGroupSyncOverride: RDSClientProtocol.CreateOptionGroupSyncType?
    let deleteDBClusterAsyncOverride: RDSClientProtocol.DeleteDBClusterAsyncType?
    let deleteDBClusterSyncOverride: RDSClientProtocol.DeleteDBClusterSyncType?
    let deleteDBClusterEndpointAsyncOverride: RDSClientProtocol.DeleteDBClusterEndpointAsyncType?
    let deleteDBClusterEndpointSyncOverride: RDSClientProtocol.DeleteDBClusterEndpointSyncType?
    let deleteDBClusterParameterGroupAsyncOverride: RDSClientProtocol.DeleteDBClusterParameterGroupAsyncType?
    let deleteDBClusterParameterGroupSyncOverride: RDSClientProtocol.DeleteDBClusterParameterGroupSyncType?
    let deleteDBClusterSnapshotAsyncOverride: RDSClientProtocol.DeleteDBClusterSnapshotAsyncType?
    let deleteDBClusterSnapshotSyncOverride: RDSClientProtocol.DeleteDBClusterSnapshotSyncType?
    let deleteDBInstanceAsyncOverride: RDSClientProtocol.DeleteDBInstanceAsyncType?
    let deleteDBInstanceSyncOverride: RDSClientProtocol.DeleteDBInstanceSyncType?
    let deleteDBInstanceAutomatedBackupAsyncOverride: RDSClientProtocol.DeleteDBInstanceAutomatedBackupAsyncType?
    let deleteDBInstanceAutomatedBackupSyncOverride: RDSClientProtocol.DeleteDBInstanceAutomatedBackupSyncType?
    let deleteDBParameterGroupAsyncOverride: RDSClientProtocol.DeleteDBParameterGroupAsyncType?
    let deleteDBParameterGroupSyncOverride: RDSClientProtocol.DeleteDBParameterGroupSyncType?
    let deleteDBSecurityGroupAsyncOverride: RDSClientProtocol.DeleteDBSecurityGroupAsyncType?
    let deleteDBSecurityGroupSyncOverride: RDSClientProtocol.DeleteDBSecurityGroupSyncType?
    let deleteDBSnapshotAsyncOverride: RDSClientProtocol.DeleteDBSnapshotAsyncType?
    let deleteDBSnapshotSyncOverride: RDSClientProtocol.DeleteDBSnapshotSyncType?
    let deleteDBSubnetGroupAsyncOverride: RDSClientProtocol.DeleteDBSubnetGroupAsyncType?
    let deleteDBSubnetGroupSyncOverride: RDSClientProtocol.DeleteDBSubnetGroupSyncType?
    let deleteEventSubscriptionAsyncOverride: RDSClientProtocol.DeleteEventSubscriptionAsyncType?
    let deleteEventSubscriptionSyncOverride: RDSClientProtocol.DeleteEventSubscriptionSyncType?
    let deleteGlobalClusterAsyncOverride: RDSClientProtocol.DeleteGlobalClusterAsyncType?
    let deleteGlobalClusterSyncOverride: RDSClientProtocol.DeleteGlobalClusterSyncType?
    let deleteOptionGroupAsyncOverride: RDSClientProtocol.DeleteOptionGroupAsyncType?
    let deleteOptionGroupSyncOverride: RDSClientProtocol.DeleteOptionGroupSyncType?
    let describeAccountAttributesAsyncOverride: RDSClientProtocol.DescribeAccountAttributesAsyncType?
    let describeAccountAttributesSyncOverride: RDSClientProtocol.DescribeAccountAttributesSyncType?
    let describeCertificatesAsyncOverride: RDSClientProtocol.DescribeCertificatesAsyncType?
    let describeCertificatesSyncOverride: RDSClientProtocol.DescribeCertificatesSyncType?
    let describeDBClusterBacktracksAsyncOverride: RDSClientProtocol.DescribeDBClusterBacktracksAsyncType?
    let describeDBClusterBacktracksSyncOverride: RDSClientProtocol.DescribeDBClusterBacktracksSyncType?
    let describeDBClusterEndpointsAsyncOverride: RDSClientProtocol.DescribeDBClusterEndpointsAsyncType?
    let describeDBClusterEndpointsSyncOverride: RDSClientProtocol.DescribeDBClusterEndpointsSyncType?
    let describeDBClusterParameterGroupsAsyncOverride: RDSClientProtocol.DescribeDBClusterParameterGroupsAsyncType?
    let describeDBClusterParameterGroupsSyncOverride: RDSClientProtocol.DescribeDBClusterParameterGroupsSyncType?
    let describeDBClusterParametersAsyncOverride: RDSClientProtocol.DescribeDBClusterParametersAsyncType?
    let describeDBClusterParametersSyncOverride: RDSClientProtocol.DescribeDBClusterParametersSyncType?
    let describeDBClusterSnapshotAttributesAsyncOverride: RDSClientProtocol.DescribeDBClusterSnapshotAttributesAsyncType?
    let describeDBClusterSnapshotAttributesSyncOverride: RDSClientProtocol.DescribeDBClusterSnapshotAttributesSyncType?
    let describeDBClusterSnapshotsAsyncOverride: RDSClientProtocol.DescribeDBClusterSnapshotsAsyncType?
    let describeDBClusterSnapshotsSyncOverride: RDSClientProtocol.DescribeDBClusterSnapshotsSyncType?
    let describeDBClustersAsyncOverride: RDSClientProtocol.DescribeDBClustersAsyncType?
    let describeDBClustersSyncOverride: RDSClientProtocol.DescribeDBClustersSyncType?
    let describeDBEngineVersionsAsyncOverride: RDSClientProtocol.DescribeDBEngineVersionsAsyncType?
    let describeDBEngineVersionsSyncOverride: RDSClientProtocol.DescribeDBEngineVersionsSyncType?
    let describeDBInstanceAutomatedBackupsAsyncOverride: RDSClientProtocol.DescribeDBInstanceAutomatedBackupsAsyncType?
    let describeDBInstanceAutomatedBackupsSyncOverride: RDSClientProtocol.DescribeDBInstanceAutomatedBackupsSyncType?
    let describeDBInstancesAsyncOverride: RDSClientProtocol.DescribeDBInstancesAsyncType?
    let describeDBInstancesSyncOverride: RDSClientProtocol.DescribeDBInstancesSyncType?
    let describeDBLogFilesAsyncOverride: RDSClientProtocol.DescribeDBLogFilesAsyncType?
    let describeDBLogFilesSyncOverride: RDSClientProtocol.DescribeDBLogFilesSyncType?
    let describeDBParameterGroupsAsyncOverride: RDSClientProtocol.DescribeDBParameterGroupsAsyncType?
    let describeDBParameterGroupsSyncOverride: RDSClientProtocol.DescribeDBParameterGroupsSyncType?
    let describeDBParametersAsyncOverride: RDSClientProtocol.DescribeDBParametersAsyncType?
    let describeDBParametersSyncOverride: RDSClientProtocol.DescribeDBParametersSyncType?
    let describeDBSecurityGroupsAsyncOverride: RDSClientProtocol.DescribeDBSecurityGroupsAsyncType?
    let describeDBSecurityGroupsSyncOverride: RDSClientProtocol.DescribeDBSecurityGroupsSyncType?
    let describeDBSnapshotAttributesAsyncOverride: RDSClientProtocol.DescribeDBSnapshotAttributesAsyncType?
    let describeDBSnapshotAttributesSyncOverride: RDSClientProtocol.DescribeDBSnapshotAttributesSyncType?
    let describeDBSnapshotsAsyncOverride: RDSClientProtocol.DescribeDBSnapshotsAsyncType?
    let describeDBSnapshotsSyncOverride: RDSClientProtocol.DescribeDBSnapshotsSyncType?
    let describeDBSubnetGroupsAsyncOverride: RDSClientProtocol.DescribeDBSubnetGroupsAsyncType?
    let describeDBSubnetGroupsSyncOverride: RDSClientProtocol.DescribeDBSubnetGroupsSyncType?
    let describeEngineDefaultClusterParametersAsyncOverride: RDSClientProtocol.DescribeEngineDefaultClusterParametersAsyncType?
    let describeEngineDefaultClusterParametersSyncOverride: RDSClientProtocol.DescribeEngineDefaultClusterParametersSyncType?
    let describeEngineDefaultParametersAsyncOverride: RDSClientProtocol.DescribeEngineDefaultParametersAsyncType?
    let describeEngineDefaultParametersSyncOverride: RDSClientProtocol.DescribeEngineDefaultParametersSyncType?
    let describeEventCategoriesAsyncOverride: RDSClientProtocol.DescribeEventCategoriesAsyncType?
    let describeEventCategoriesSyncOverride: RDSClientProtocol.DescribeEventCategoriesSyncType?
    let describeEventSubscriptionsAsyncOverride: RDSClientProtocol.DescribeEventSubscriptionsAsyncType?
    let describeEventSubscriptionsSyncOverride: RDSClientProtocol.DescribeEventSubscriptionsSyncType?
    let describeEventsAsyncOverride: RDSClientProtocol.DescribeEventsAsyncType?
    let describeEventsSyncOverride: RDSClientProtocol.DescribeEventsSyncType?
    let describeGlobalClustersAsyncOverride: RDSClientProtocol.DescribeGlobalClustersAsyncType?
    let describeGlobalClustersSyncOverride: RDSClientProtocol.DescribeGlobalClustersSyncType?
    let describeOptionGroupOptionsAsyncOverride: RDSClientProtocol.DescribeOptionGroupOptionsAsyncType?
    let describeOptionGroupOptionsSyncOverride: RDSClientProtocol.DescribeOptionGroupOptionsSyncType?
    let describeOptionGroupsAsyncOverride: RDSClientProtocol.DescribeOptionGroupsAsyncType?
    let describeOptionGroupsSyncOverride: RDSClientProtocol.DescribeOptionGroupsSyncType?
    let describeOrderableDBInstanceOptionsAsyncOverride: RDSClientProtocol.DescribeOrderableDBInstanceOptionsAsyncType?
    let describeOrderableDBInstanceOptionsSyncOverride: RDSClientProtocol.DescribeOrderableDBInstanceOptionsSyncType?
    let describePendingMaintenanceActionsAsyncOverride: RDSClientProtocol.DescribePendingMaintenanceActionsAsyncType?
    let describePendingMaintenanceActionsSyncOverride: RDSClientProtocol.DescribePendingMaintenanceActionsSyncType?
    let describeReservedDBInstancesAsyncOverride: RDSClientProtocol.DescribeReservedDBInstancesAsyncType?
    let describeReservedDBInstancesSyncOverride: RDSClientProtocol.DescribeReservedDBInstancesSyncType?
    let describeReservedDBInstancesOfferingsAsyncOverride: RDSClientProtocol.DescribeReservedDBInstancesOfferingsAsyncType?
    let describeReservedDBInstancesOfferingsSyncOverride: RDSClientProtocol.DescribeReservedDBInstancesOfferingsSyncType?
    let describeSourceRegionsAsyncOverride: RDSClientProtocol.DescribeSourceRegionsAsyncType?
    let describeSourceRegionsSyncOverride: RDSClientProtocol.DescribeSourceRegionsSyncType?
    let describeValidDBInstanceModificationsAsyncOverride: RDSClientProtocol.DescribeValidDBInstanceModificationsAsyncType?
    let describeValidDBInstanceModificationsSyncOverride: RDSClientProtocol.DescribeValidDBInstanceModificationsSyncType?
    let downloadDBLogFilePortionAsyncOverride: RDSClientProtocol.DownloadDBLogFilePortionAsyncType?
    let downloadDBLogFilePortionSyncOverride: RDSClientProtocol.DownloadDBLogFilePortionSyncType?
    let failoverDBClusterAsyncOverride: RDSClientProtocol.FailoverDBClusterAsyncType?
    let failoverDBClusterSyncOverride: RDSClientProtocol.FailoverDBClusterSyncType?
    let listTagsForResourceAsyncOverride: RDSClientProtocol.ListTagsForResourceAsyncType?
    let listTagsForResourceSyncOverride: RDSClientProtocol.ListTagsForResourceSyncType?
    let modifyCurrentDBClusterCapacityAsyncOverride: RDSClientProtocol.ModifyCurrentDBClusterCapacityAsyncType?
    let modifyCurrentDBClusterCapacitySyncOverride: RDSClientProtocol.ModifyCurrentDBClusterCapacitySyncType?
    let modifyDBClusterAsyncOverride: RDSClientProtocol.ModifyDBClusterAsyncType?
    let modifyDBClusterSyncOverride: RDSClientProtocol.ModifyDBClusterSyncType?
    let modifyDBClusterEndpointAsyncOverride: RDSClientProtocol.ModifyDBClusterEndpointAsyncType?
    let modifyDBClusterEndpointSyncOverride: RDSClientProtocol.ModifyDBClusterEndpointSyncType?
    let modifyDBClusterParameterGroupAsyncOverride: RDSClientProtocol.ModifyDBClusterParameterGroupAsyncType?
    let modifyDBClusterParameterGroupSyncOverride: RDSClientProtocol.ModifyDBClusterParameterGroupSyncType?
    let modifyDBClusterSnapshotAttributeAsyncOverride: RDSClientProtocol.ModifyDBClusterSnapshotAttributeAsyncType?
    let modifyDBClusterSnapshotAttributeSyncOverride: RDSClientProtocol.ModifyDBClusterSnapshotAttributeSyncType?
    let modifyDBInstanceAsyncOverride: RDSClientProtocol.ModifyDBInstanceAsyncType?
    let modifyDBInstanceSyncOverride: RDSClientProtocol.ModifyDBInstanceSyncType?
    let modifyDBParameterGroupAsyncOverride: RDSClientProtocol.ModifyDBParameterGroupAsyncType?
    let modifyDBParameterGroupSyncOverride: RDSClientProtocol.ModifyDBParameterGroupSyncType?
    let modifyDBSnapshotAsyncOverride: RDSClientProtocol.ModifyDBSnapshotAsyncType?
    let modifyDBSnapshotSyncOverride: RDSClientProtocol.ModifyDBSnapshotSyncType?
    let modifyDBSnapshotAttributeAsyncOverride: RDSClientProtocol.ModifyDBSnapshotAttributeAsyncType?
    let modifyDBSnapshotAttributeSyncOverride: RDSClientProtocol.ModifyDBSnapshotAttributeSyncType?
    let modifyDBSubnetGroupAsyncOverride: RDSClientProtocol.ModifyDBSubnetGroupAsyncType?
    let modifyDBSubnetGroupSyncOverride: RDSClientProtocol.ModifyDBSubnetGroupSyncType?
    let modifyEventSubscriptionAsyncOverride: RDSClientProtocol.ModifyEventSubscriptionAsyncType?
    let modifyEventSubscriptionSyncOverride: RDSClientProtocol.ModifyEventSubscriptionSyncType?
    let modifyGlobalClusterAsyncOverride: RDSClientProtocol.ModifyGlobalClusterAsyncType?
    let modifyGlobalClusterSyncOverride: RDSClientProtocol.ModifyGlobalClusterSyncType?
    let modifyOptionGroupAsyncOverride: RDSClientProtocol.ModifyOptionGroupAsyncType?
    let modifyOptionGroupSyncOverride: RDSClientProtocol.ModifyOptionGroupSyncType?
    let promoteReadReplicaAsyncOverride: RDSClientProtocol.PromoteReadReplicaAsyncType?
    let promoteReadReplicaSyncOverride: RDSClientProtocol.PromoteReadReplicaSyncType?
    let promoteReadReplicaDBClusterAsyncOverride: RDSClientProtocol.PromoteReadReplicaDBClusterAsyncType?
    let promoteReadReplicaDBClusterSyncOverride: RDSClientProtocol.PromoteReadReplicaDBClusterSyncType?
    let purchaseReservedDBInstancesOfferingAsyncOverride: RDSClientProtocol.PurchaseReservedDBInstancesOfferingAsyncType?
    let purchaseReservedDBInstancesOfferingSyncOverride: RDSClientProtocol.PurchaseReservedDBInstancesOfferingSyncType?
    let rebootDBInstanceAsyncOverride: RDSClientProtocol.RebootDBInstanceAsyncType?
    let rebootDBInstanceSyncOverride: RDSClientProtocol.RebootDBInstanceSyncType?
    let removeFromGlobalClusterAsyncOverride: RDSClientProtocol.RemoveFromGlobalClusterAsyncType?
    let removeFromGlobalClusterSyncOverride: RDSClientProtocol.RemoveFromGlobalClusterSyncType?
    let removeRoleFromDBClusterAsyncOverride: RDSClientProtocol.RemoveRoleFromDBClusterAsyncType?
    let removeRoleFromDBClusterSyncOverride: RDSClientProtocol.RemoveRoleFromDBClusterSyncType?
    let removeRoleFromDBInstanceAsyncOverride: RDSClientProtocol.RemoveRoleFromDBInstanceAsyncType?
    let removeRoleFromDBInstanceSyncOverride: RDSClientProtocol.RemoveRoleFromDBInstanceSyncType?
    let removeSourceIdentifierFromSubscriptionAsyncOverride: RDSClientProtocol.RemoveSourceIdentifierFromSubscriptionAsyncType?
    let removeSourceIdentifierFromSubscriptionSyncOverride: RDSClientProtocol.RemoveSourceIdentifierFromSubscriptionSyncType?
    let removeTagsFromResourceAsyncOverride: RDSClientProtocol.RemoveTagsFromResourceAsyncType?
    let removeTagsFromResourceSyncOverride: RDSClientProtocol.RemoveTagsFromResourceSyncType?
    let resetDBClusterParameterGroupAsyncOverride: RDSClientProtocol.ResetDBClusterParameterGroupAsyncType?
    let resetDBClusterParameterGroupSyncOverride: RDSClientProtocol.ResetDBClusterParameterGroupSyncType?
    let resetDBParameterGroupAsyncOverride: RDSClientProtocol.ResetDBParameterGroupAsyncType?
    let resetDBParameterGroupSyncOverride: RDSClientProtocol.ResetDBParameterGroupSyncType?
    let restoreDBClusterFromS3AsyncOverride: RDSClientProtocol.RestoreDBClusterFromS3AsyncType?
    let restoreDBClusterFromS3SyncOverride: RDSClientProtocol.RestoreDBClusterFromS3SyncType?
    let restoreDBClusterFromSnapshotAsyncOverride: RDSClientProtocol.RestoreDBClusterFromSnapshotAsyncType?
    let restoreDBClusterFromSnapshotSyncOverride: RDSClientProtocol.RestoreDBClusterFromSnapshotSyncType?
    let restoreDBClusterToPointInTimeAsyncOverride: RDSClientProtocol.RestoreDBClusterToPointInTimeAsyncType?
    let restoreDBClusterToPointInTimeSyncOverride: RDSClientProtocol.RestoreDBClusterToPointInTimeSyncType?
    let restoreDBInstanceFromDBSnapshotAsyncOverride: RDSClientProtocol.RestoreDBInstanceFromDBSnapshotAsyncType?
    let restoreDBInstanceFromDBSnapshotSyncOverride: RDSClientProtocol.RestoreDBInstanceFromDBSnapshotSyncType?
    let restoreDBInstanceFromS3AsyncOverride: RDSClientProtocol.RestoreDBInstanceFromS3AsyncType?
    let restoreDBInstanceFromS3SyncOverride: RDSClientProtocol.RestoreDBInstanceFromS3SyncType?
    let restoreDBInstanceToPointInTimeAsyncOverride: RDSClientProtocol.RestoreDBInstanceToPointInTimeAsyncType?
    let restoreDBInstanceToPointInTimeSyncOverride: RDSClientProtocol.RestoreDBInstanceToPointInTimeSyncType?
    let revokeDBSecurityGroupIngressAsyncOverride: RDSClientProtocol.RevokeDBSecurityGroupIngressAsyncType?
    let revokeDBSecurityGroupIngressSyncOverride: RDSClientProtocol.RevokeDBSecurityGroupIngressSyncType?
    let startActivityStreamAsyncOverride: RDSClientProtocol.StartActivityStreamAsyncType?
    let startActivityStreamSyncOverride: RDSClientProtocol.StartActivityStreamSyncType?
    let startDBClusterAsyncOverride: RDSClientProtocol.StartDBClusterAsyncType?
    let startDBClusterSyncOverride: RDSClientProtocol.StartDBClusterSyncType?
    let startDBInstanceAsyncOverride: RDSClientProtocol.StartDBInstanceAsyncType?
    let startDBInstanceSyncOverride: RDSClientProtocol.StartDBInstanceSyncType?
    let stopActivityStreamAsyncOverride: RDSClientProtocol.StopActivityStreamAsyncType?
    let stopActivityStreamSyncOverride: RDSClientProtocol.StopActivityStreamSyncType?
    let stopDBClusterAsyncOverride: RDSClientProtocol.StopDBClusterAsyncType?
    let stopDBClusterSyncOverride: RDSClientProtocol.StopDBClusterSyncType?
    let stopDBInstanceAsyncOverride: RDSClientProtocol.StopDBInstanceAsyncType?
    let stopDBInstanceSyncOverride: RDSClientProtocol.StopDBInstanceSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            addRoleToDBClusterAsync: RDSClientProtocol.AddRoleToDBClusterAsyncType? = nil,
            addRoleToDBClusterSync: RDSClientProtocol.AddRoleToDBClusterSyncType? = nil,
            addRoleToDBInstanceAsync: RDSClientProtocol.AddRoleToDBInstanceAsyncType? = nil,
            addRoleToDBInstanceSync: RDSClientProtocol.AddRoleToDBInstanceSyncType? = nil,
            addSourceIdentifierToSubscriptionAsync: RDSClientProtocol.AddSourceIdentifierToSubscriptionAsyncType? = nil,
            addSourceIdentifierToSubscriptionSync: RDSClientProtocol.AddSourceIdentifierToSubscriptionSyncType? = nil,
            addTagsToResourceAsync: RDSClientProtocol.AddTagsToResourceAsyncType? = nil,
            addTagsToResourceSync: RDSClientProtocol.AddTagsToResourceSyncType? = nil,
            applyPendingMaintenanceActionAsync: RDSClientProtocol.ApplyPendingMaintenanceActionAsyncType? = nil,
            applyPendingMaintenanceActionSync: RDSClientProtocol.ApplyPendingMaintenanceActionSyncType? = nil,
            authorizeDBSecurityGroupIngressAsync: RDSClientProtocol.AuthorizeDBSecurityGroupIngressAsyncType? = nil,
            authorizeDBSecurityGroupIngressSync: RDSClientProtocol.AuthorizeDBSecurityGroupIngressSyncType? = nil,
            backtrackDBClusterAsync: RDSClientProtocol.BacktrackDBClusterAsyncType? = nil,
            backtrackDBClusterSync: RDSClientProtocol.BacktrackDBClusterSyncType? = nil,
            copyDBClusterParameterGroupAsync: RDSClientProtocol.CopyDBClusterParameterGroupAsyncType? = nil,
            copyDBClusterParameterGroupSync: RDSClientProtocol.CopyDBClusterParameterGroupSyncType? = nil,
            copyDBClusterSnapshotAsync: RDSClientProtocol.CopyDBClusterSnapshotAsyncType? = nil,
            copyDBClusterSnapshotSync: RDSClientProtocol.CopyDBClusterSnapshotSyncType? = nil,
            copyDBParameterGroupAsync: RDSClientProtocol.CopyDBParameterGroupAsyncType? = nil,
            copyDBParameterGroupSync: RDSClientProtocol.CopyDBParameterGroupSyncType? = nil,
            copyDBSnapshotAsync: RDSClientProtocol.CopyDBSnapshotAsyncType? = nil,
            copyDBSnapshotSync: RDSClientProtocol.CopyDBSnapshotSyncType? = nil,
            copyOptionGroupAsync: RDSClientProtocol.CopyOptionGroupAsyncType? = nil,
            copyOptionGroupSync: RDSClientProtocol.CopyOptionGroupSyncType? = nil,
            createDBClusterAsync: RDSClientProtocol.CreateDBClusterAsyncType? = nil,
            createDBClusterSync: RDSClientProtocol.CreateDBClusterSyncType? = nil,
            createDBClusterEndpointAsync: RDSClientProtocol.CreateDBClusterEndpointAsyncType? = nil,
            createDBClusterEndpointSync: RDSClientProtocol.CreateDBClusterEndpointSyncType? = nil,
            createDBClusterParameterGroupAsync: RDSClientProtocol.CreateDBClusterParameterGroupAsyncType? = nil,
            createDBClusterParameterGroupSync: RDSClientProtocol.CreateDBClusterParameterGroupSyncType? = nil,
            createDBClusterSnapshotAsync: RDSClientProtocol.CreateDBClusterSnapshotAsyncType? = nil,
            createDBClusterSnapshotSync: RDSClientProtocol.CreateDBClusterSnapshotSyncType? = nil,
            createDBInstanceAsync: RDSClientProtocol.CreateDBInstanceAsyncType? = nil,
            createDBInstanceSync: RDSClientProtocol.CreateDBInstanceSyncType? = nil,
            createDBInstanceReadReplicaAsync: RDSClientProtocol.CreateDBInstanceReadReplicaAsyncType? = nil,
            createDBInstanceReadReplicaSync: RDSClientProtocol.CreateDBInstanceReadReplicaSyncType? = nil,
            createDBParameterGroupAsync: RDSClientProtocol.CreateDBParameterGroupAsyncType? = nil,
            createDBParameterGroupSync: RDSClientProtocol.CreateDBParameterGroupSyncType? = nil,
            createDBSecurityGroupAsync: RDSClientProtocol.CreateDBSecurityGroupAsyncType? = nil,
            createDBSecurityGroupSync: RDSClientProtocol.CreateDBSecurityGroupSyncType? = nil,
            createDBSnapshotAsync: RDSClientProtocol.CreateDBSnapshotAsyncType? = nil,
            createDBSnapshotSync: RDSClientProtocol.CreateDBSnapshotSyncType? = nil,
            createDBSubnetGroupAsync: RDSClientProtocol.CreateDBSubnetGroupAsyncType? = nil,
            createDBSubnetGroupSync: RDSClientProtocol.CreateDBSubnetGroupSyncType? = nil,
            createEventSubscriptionAsync: RDSClientProtocol.CreateEventSubscriptionAsyncType? = nil,
            createEventSubscriptionSync: RDSClientProtocol.CreateEventSubscriptionSyncType? = nil,
            createGlobalClusterAsync: RDSClientProtocol.CreateGlobalClusterAsyncType? = nil,
            createGlobalClusterSync: RDSClientProtocol.CreateGlobalClusterSyncType? = nil,
            createOptionGroupAsync: RDSClientProtocol.CreateOptionGroupAsyncType? = nil,
            createOptionGroupSync: RDSClientProtocol.CreateOptionGroupSyncType? = nil,
            deleteDBClusterAsync: RDSClientProtocol.DeleteDBClusterAsyncType? = nil,
            deleteDBClusterSync: RDSClientProtocol.DeleteDBClusterSyncType? = nil,
            deleteDBClusterEndpointAsync: RDSClientProtocol.DeleteDBClusterEndpointAsyncType? = nil,
            deleteDBClusterEndpointSync: RDSClientProtocol.DeleteDBClusterEndpointSyncType? = nil,
            deleteDBClusterParameterGroupAsync: RDSClientProtocol.DeleteDBClusterParameterGroupAsyncType? = nil,
            deleteDBClusterParameterGroupSync: RDSClientProtocol.DeleteDBClusterParameterGroupSyncType? = nil,
            deleteDBClusterSnapshotAsync: RDSClientProtocol.DeleteDBClusterSnapshotAsyncType? = nil,
            deleteDBClusterSnapshotSync: RDSClientProtocol.DeleteDBClusterSnapshotSyncType? = nil,
            deleteDBInstanceAsync: RDSClientProtocol.DeleteDBInstanceAsyncType? = nil,
            deleteDBInstanceSync: RDSClientProtocol.DeleteDBInstanceSyncType? = nil,
            deleteDBInstanceAutomatedBackupAsync: RDSClientProtocol.DeleteDBInstanceAutomatedBackupAsyncType? = nil,
            deleteDBInstanceAutomatedBackupSync: RDSClientProtocol.DeleteDBInstanceAutomatedBackupSyncType? = nil,
            deleteDBParameterGroupAsync: RDSClientProtocol.DeleteDBParameterGroupAsyncType? = nil,
            deleteDBParameterGroupSync: RDSClientProtocol.DeleteDBParameterGroupSyncType? = nil,
            deleteDBSecurityGroupAsync: RDSClientProtocol.DeleteDBSecurityGroupAsyncType? = nil,
            deleteDBSecurityGroupSync: RDSClientProtocol.DeleteDBSecurityGroupSyncType? = nil,
            deleteDBSnapshotAsync: RDSClientProtocol.DeleteDBSnapshotAsyncType? = nil,
            deleteDBSnapshotSync: RDSClientProtocol.DeleteDBSnapshotSyncType? = nil,
            deleteDBSubnetGroupAsync: RDSClientProtocol.DeleteDBSubnetGroupAsyncType? = nil,
            deleteDBSubnetGroupSync: RDSClientProtocol.DeleteDBSubnetGroupSyncType? = nil,
            deleteEventSubscriptionAsync: RDSClientProtocol.DeleteEventSubscriptionAsyncType? = nil,
            deleteEventSubscriptionSync: RDSClientProtocol.DeleteEventSubscriptionSyncType? = nil,
            deleteGlobalClusterAsync: RDSClientProtocol.DeleteGlobalClusterAsyncType? = nil,
            deleteGlobalClusterSync: RDSClientProtocol.DeleteGlobalClusterSyncType? = nil,
            deleteOptionGroupAsync: RDSClientProtocol.DeleteOptionGroupAsyncType? = nil,
            deleteOptionGroupSync: RDSClientProtocol.DeleteOptionGroupSyncType? = nil,
            describeAccountAttributesAsync: RDSClientProtocol.DescribeAccountAttributesAsyncType? = nil,
            describeAccountAttributesSync: RDSClientProtocol.DescribeAccountAttributesSyncType? = nil,
            describeCertificatesAsync: RDSClientProtocol.DescribeCertificatesAsyncType? = nil,
            describeCertificatesSync: RDSClientProtocol.DescribeCertificatesSyncType? = nil,
            describeDBClusterBacktracksAsync: RDSClientProtocol.DescribeDBClusterBacktracksAsyncType? = nil,
            describeDBClusterBacktracksSync: RDSClientProtocol.DescribeDBClusterBacktracksSyncType? = nil,
            describeDBClusterEndpointsAsync: RDSClientProtocol.DescribeDBClusterEndpointsAsyncType? = nil,
            describeDBClusterEndpointsSync: RDSClientProtocol.DescribeDBClusterEndpointsSyncType? = nil,
            describeDBClusterParameterGroupsAsync: RDSClientProtocol.DescribeDBClusterParameterGroupsAsyncType? = nil,
            describeDBClusterParameterGroupsSync: RDSClientProtocol.DescribeDBClusterParameterGroupsSyncType? = nil,
            describeDBClusterParametersAsync: RDSClientProtocol.DescribeDBClusterParametersAsyncType? = nil,
            describeDBClusterParametersSync: RDSClientProtocol.DescribeDBClusterParametersSyncType? = nil,
            describeDBClusterSnapshotAttributesAsync: RDSClientProtocol.DescribeDBClusterSnapshotAttributesAsyncType? = nil,
            describeDBClusterSnapshotAttributesSync: RDSClientProtocol.DescribeDBClusterSnapshotAttributesSyncType? = nil,
            describeDBClusterSnapshotsAsync: RDSClientProtocol.DescribeDBClusterSnapshotsAsyncType? = nil,
            describeDBClusterSnapshotsSync: RDSClientProtocol.DescribeDBClusterSnapshotsSyncType? = nil,
            describeDBClustersAsync: RDSClientProtocol.DescribeDBClustersAsyncType? = nil,
            describeDBClustersSync: RDSClientProtocol.DescribeDBClustersSyncType? = nil,
            describeDBEngineVersionsAsync: RDSClientProtocol.DescribeDBEngineVersionsAsyncType? = nil,
            describeDBEngineVersionsSync: RDSClientProtocol.DescribeDBEngineVersionsSyncType? = nil,
            describeDBInstanceAutomatedBackupsAsync: RDSClientProtocol.DescribeDBInstanceAutomatedBackupsAsyncType? = nil,
            describeDBInstanceAutomatedBackupsSync: RDSClientProtocol.DescribeDBInstanceAutomatedBackupsSyncType? = nil,
            describeDBInstancesAsync: RDSClientProtocol.DescribeDBInstancesAsyncType? = nil,
            describeDBInstancesSync: RDSClientProtocol.DescribeDBInstancesSyncType? = nil,
            describeDBLogFilesAsync: RDSClientProtocol.DescribeDBLogFilesAsyncType? = nil,
            describeDBLogFilesSync: RDSClientProtocol.DescribeDBLogFilesSyncType? = nil,
            describeDBParameterGroupsAsync: RDSClientProtocol.DescribeDBParameterGroupsAsyncType? = nil,
            describeDBParameterGroupsSync: RDSClientProtocol.DescribeDBParameterGroupsSyncType? = nil,
            describeDBParametersAsync: RDSClientProtocol.DescribeDBParametersAsyncType? = nil,
            describeDBParametersSync: RDSClientProtocol.DescribeDBParametersSyncType? = nil,
            describeDBSecurityGroupsAsync: RDSClientProtocol.DescribeDBSecurityGroupsAsyncType? = nil,
            describeDBSecurityGroupsSync: RDSClientProtocol.DescribeDBSecurityGroupsSyncType? = nil,
            describeDBSnapshotAttributesAsync: RDSClientProtocol.DescribeDBSnapshotAttributesAsyncType? = nil,
            describeDBSnapshotAttributesSync: RDSClientProtocol.DescribeDBSnapshotAttributesSyncType? = nil,
            describeDBSnapshotsAsync: RDSClientProtocol.DescribeDBSnapshotsAsyncType? = nil,
            describeDBSnapshotsSync: RDSClientProtocol.DescribeDBSnapshotsSyncType? = nil,
            describeDBSubnetGroupsAsync: RDSClientProtocol.DescribeDBSubnetGroupsAsyncType? = nil,
            describeDBSubnetGroupsSync: RDSClientProtocol.DescribeDBSubnetGroupsSyncType? = nil,
            describeEngineDefaultClusterParametersAsync: RDSClientProtocol.DescribeEngineDefaultClusterParametersAsyncType? = nil,
            describeEngineDefaultClusterParametersSync: RDSClientProtocol.DescribeEngineDefaultClusterParametersSyncType? = nil,
            describeEngineDefaultParametersAsync: RDSClientProtocol.DescribeEngineDefaultParametersAsyncType? = nil,
            describeEngineDefaultParametersSync: RDSClientProtocol.DescribeEngineDefaultParametersSyncType? = nil,
            describeEventCategoriesAsync: RDSClientProtocol.DescribeEventCategoriesAsyncType? = nil,
            describeEventCategoriesSync: RDSClientProtocol.DescribeEventCategoriesSyncType? = nil,
            describeEventSubscriptionsAsync: RDSClientProtocol.DescribeEventSubscriptionsAsyncType? = nil,
            describeEventSubscriptionsSync: RDSClientProtocol.DescribeEventSubscriptionsSyncType? = nil,
            describeEventsAsync: RDSClientProtocol.DescribeEventsAsyncType? = nil,
            describeEventsSync: RDSClientProtocol.DescribeEventsSyncType? = nil,
            describeGlobalClustersAsync: RDSClientProtocol.DescribeGlobalClustersAsyncType? = nil,
            describeGlobalClustersSync: RDSClientProtocol.DescribeGlobalClustersSyncType? = nil,
            describeOptionGroupOptionsAsync: RDSClientProtocol.DescribeOptionGroupOptionsAsyncType? = nil,
            describeOptionGroupOptionsSync: RDSClientProtocol.DescribeOptionGroupOptionsSyncType? = nil,
            describeOptionGroupsAsync: RDSClientProtocol.DescribeOptionGroupsAsyncType? = nil,
            describeOptionGroupsSync: RDSClientProtocol.DescribeOptionGroupsSyncType? = nil,
            describeOrderableDBInstanceOptionsAsync: RDSClientProtocol.DescribeOrderableDBInstanceOptionsAsyncType? = nil,
            describeOrderableDBInstanceOptionsSync: RDSClientProtocol.DescribeOrderableDBInstanceOptionsSyncType? = nil,
            describePendingMaintenanceActionsAsync: RDSClientProtocol.DescribePendingMaintenanceActionsAsyncType? = nil,
            describePendingMaintenanceActionsSync: RDSClientProtocol.DescribePendingMaintenanceActionsSyncType? = nil,
            describeReservedDBInstancesAsync: RDSClientProtocol.DescribeReservedDBInstancesAsyncType? = nil,
            describeReservedDBInstancesSync: RDSClientProtocol.DescribeReservedDBInstancesSyncType? = nil,
            describeReservedDBInstancesOfferingsAsync: RDSClientProtocol.DescribeReservedDBInstancesOfferingsAsyncType? = nil,
            describeReservedDBInstancesOfferingsSync: RDSClientProtocol.DescribeReservedDBInstancesOfferingsSyncType? = nil,
            describeSourceRegionsAsync: RDSClientProtocol.DescribeSourceRegionsAsyncType? = nil,
            describeSourceRegionsSync: RDSClientProtocol.DescribeSourceRegionsSyncType? = nil,
            describeValidDBInstanceModificationsAsync: RDSClientProtocol.DescribeValidDBInstanceModificationsAsyncType? = nil,
            describeValidDBInstanceModificationsSync: RDSClientProtocol.DescribeValidDBInstanceModificationsSyncType? = nil,
            downloadDBLogFilePortionAsync: RDSClientProtocol.DownloadDBLogFilePortionAsyncType? = nil,
            downloadDBLogFilePortionSync: RDSClientProtocol.DownloadDBLogFilePortionSyncType? = nil,
            failoverDBClusterAsync: RDSClientProtocol.FailoverDBClusterAsyncType? = nil,
            failoverDBClusterSync: RDSClientProtocol.FailoverDBClusterSyncType? = nil,
            listTagsForResourceAsync: RDSClientProtocol.ListTagsForResourceAsyncType? = nil,
            listTagsForResourceSync: RDSClientProtocol.ListTagsForResourceSyncType? = nil,
            modifyCurrentDBClusterCapacityAsync: RDSClientProtocol.ModifyCurrentDBClusterCapacityAsyncType? = nil,
            modifyCurrentDBClusterCapacitySync: RDSClientProtocol.ModifyCurrentDBClusterCapacitySyncType? = nil,
            modifyDBClusterAsync: RDSClientProtocol.ModifyDBClusterAsyncType? = nil,
            modifyDBClusterSync: RDSClientProtocol.ModifyDBClusterSyncType? = nil,
            modifyDBClusterEndpointAsync: RDSClientProtocol.ModifyDBClusterEndpointAsyncType? = nil,
            modifyDBClusterEndpointSync: RDSClientProtocol.ModifyDBClusterEndpointSyncType? = nil,
            modifyDBClusterParameterGroupAsync: RDSClientProtocol.ModifyDBClusterParameterGroupAsyncType? = nil,
            modifyDBClusterParameterGroupSync: RDSClientProtocol.ModifyDBClusterParameterGroupSyncType? = nil,
            modifyDBClusterSnapshotAttributeAsync: RDSClientProtocol.ModifyDBClusterSnapshotAttributeAsyncType? = nil,
            modifyDBClusterSnapshotAttributeSync: RDSClientProtocol.ModifyDBClusterSnapshotAttributeSyncType? = nil,
            modifyDBInstanceAsync: RDSClientProtocol.ModifyDBInstanceAsyncType? = nil,
            modifyDBInstanceSync: RDSClientProtocol.ModifyDBInstanceSyncType? = nil,
            modifyDBParameterGroupAsync: RDSClientProtocol.ModifyDBParameterGroupAsyncType? = nil,
            modifyDBParameterGroupSync: RDSClientProtocol.ModifyDBParameterGroupSyncType? = nil,
            modifyDBSnapshotAsync: RDSClientProtocol.ModifyDBSnapshotAsyncType? = nil,
            modifyDBSnapshotSync: RDSClientProtocol.ModifyDBSnapshotSyncType? = nil,
            modifyDBSnapshotAttributeAsync: RDSClientProtocol.ModifyDBSnapshotAttributeAsyncType? = nil,
            modifyDBSnapshotAttributeSync: RDSClientProtocol.ModifyDBSnapshotAttributeSyncType? = nil,
            modifyDBSubnetGroupAsync: RDSClientProtocol.ModifyDBSubnetGroupAsyncType? = nil,
            modifyDBSubnetGroupSync: RDSClientProtocol.ModifyDBSubnetGroupSyncType? = nil,
            modifyEventSubscriptionAsync: RDSClientProtocol.ModifyEventSubscriptionAsyncType? = nil,
            modifyEventSubscriptionSync: RDSClientProtocol.ModifyEventSubscriptionSyncType? = nil,
            modifyGlobalClusterAsync: RDSClientProtocol.ModifyGlobalClusterAsyncType? = nil,
            modifyGlobalClusterSync: RDSClientProtocol.ModifyGlobalClusterSyncType? = nil,
            modifyOptionGroupAsync: RDSClientProtocol.ModifyOptionGroupAsyncType? = nil,
            modifyOptionGroupSync: RDSClientProtocol.ModifyOptionGroupSyncType? = nil,
            promoteReadReplicaAsync: RDSClientProtocol.PromoteReadReplicaAsyncType? = nil,
            promoteReadReplicaSync: RDSClientProtocol.PromoteReadReplicaSyncType? = nil,
            promoteReadReplicaDBClusterAsync: RDSClientProtocol.PromoteReadReplicaDBClusterAsyncType? = nil,
            promoteReadReplicaDBClusterSync: RDSClientProtocol.PromoteReadReplicaDBClusterSyncType? = nil,
            purchaseReservedDBInstancesOfferingAsync: RDSClientProtocol.PurchaseReservedDBInstancesOfferingAsyncType? = nil,
            purchaseReservedDBInstancesOfferingSync: RDSClientProtocol.PurchaseReservedDBInstancesOfferingSyncType? = nil,
            rebootDBInstanceAsync: RDSClientProtocol.RebootDBInstanceAsyncType? = nil,
            rebootDBInstanceSync: RDSClientProtocol.RebootDBInstanceSyncType? = nil,
            removeFromGlobalClusterAsync: RDSClientProtocol.RemoveFromGlobalClusterAsyncType? = nil,
            removeFromGlobalClusterSync: RDSClientProtocol.RemoveFromGlobalClusterSyncType? = nil,
            removeRoleFromDBClusterAsync: RDSClientProtocol.RemoveRoleFromDBClusterAsyncType? = nil,
            removeRoleFromDBClusterSync: RDSClientProtocol.RemoveRoleFromDBClusterSyncType? = nil,
            removeRoleFromDBInstanceAsync: RDSClientProtocol.RemoveRoleFromDBInstanceAsyncType? = nil,
            removeRoleFromDBInstanceSync: RDSClientProtocol.RemoveRoleFromDBInstanceSyncType? = nil,
            removeSourceIdentifierFromSubscriptionAsync: RDSClientProtocol.RemoveSourceIdentifierFromSubscriptionAsyncType? = nil,
            removeSourceIdentifierFromSubscriptionSync: RDSClientProtocol.RemoveSourceIdentifierFromSubscriptionSyncType? = nil,
            removeTagsFromResourceAsync: RDSClientProtocol.RemoveTagsFromResourceAsyncType? = nil,
            removeTagsFromResourceSync: RDSClientProtocol.RemoveTagsFromResourceSyncType? = nil,
            resetDBClusterParameterGroupAsync: RDSClientProtocol.ResetDBClusterParameterGroupAsyncType? = nil,
            resetDBClusterParameterGroupSync: RDSClientProtocol.ResetDBClusterParameterGroupSyncType? = nil,
            resetDBParameterGroupAsync: RDSClientProtocol.ResetDBParameterGroupAsyncType? = nil,
            resetDBParameterGroupSync: RDSClientProtocol.ResetDBParameterGroupSyncType? = nil,
            restoreDBClusterFromS3Async: RDSClientProtocol.RestoreDBClusterFromS3AsyncType? = nil,
            restoreDBClusterFromS3Sync: RDSClientProtocol.RestoreDBClusterFromS3SyncType? = nil,
            restoreDBClusterFromSnapshotAsync: RDSClientProtocol.RestoreDBClusterFromSnapshotAsyncType? = nil,
            restoreDBClusterFromSnapshotSync: RDSClientProtocol.RestoreDBClusterFromSnapshotSyncType? = nil,
            restoreDBClusterToPointInTimeAsync: RDSClientProtocol.RestoreDBClusterToPointInTimeAsyncType? = nil,
            restoreDBClusterToPointInTimeSync: RDSClientProtocol.RestoreDBClusterToPointInTimeSyncType? = nil,
            restoreDBInstanceFromDBSnapshotAsync: RDSClientProtocol.RestoreDBInstanceFromDBSnapshotAsyncType? = nil,
            restoreDBInstanceFromDBSnapshotSync: RDSClientProtocol.RestoreDBInstanceFromDBSnapshotSyncType? = nil,
            restoreDBInstanceFromS3Async: RDSClientProtocol.RestoreDBInstanceFromS3AsyncType? = nil,
            restoreDBInstanceFromS3Sync: RDSClientProtocol.RestoreDBInstanceFromS3SyncType? = nil,
            restoreDBInstanceToPointInTimeAsync: RDSClientProtocol.RestoreDBInstanceToPointInTimeAsyncType? = nil,
            restoreDBInstanceToPointInTimeSync: RDSClientProtocol.RestoreDBInstanceToPointInTimeSyncType? = nil,
            revokeDBSecurityGroupIngressAsync: RDSClientProtocol.RevokeDBSecurityGroupIngressAsyncType? = nil,
            revokeDBSecurityGroupIngressSync: RDSClientProtocol.RevokeDBSecurityGroupIngressSyncType? = nil,
            startActivityStreamAsync: RDSClientProtocol.StartActivityStreamAsyncType? = nil,
            startActivityStreamSync: RDSClientProtocol.StartActivityStreamSyncType? = nil,
            startDBClusterAsync: RDSClientProtocol.StartDBClusterAsyncType? = nil,
            startDBClusterSync: RDSClientProtocol.StartDBClusterSyncType? = nil,
            startDBInstanceAsync: RDSClientProtocol.StartDBInstanceAsyncType? = nil,
            startDBInstanceSync: RDSClientProtocol.StartDBInstanceSyncType? = nil,
            stopActivityStreamAsync: RDSClientProtocol.StopActivityStreamAsyncType? = nil,
            stopActivityStreamSync: RDSClientProtocol.StopActivityStreamSyncType? = nil,
            stopDBClusterAsync: RDSClientProtocol.StopDBClusterAsyncType? = nil,
            stopDBClusterSync: RDSClientProtocol.StopDBClusterSyncType? = nil,
            stopDBInstanceAsync: RDSClientProtocol.StopDBInstanceAsyncType? = nil,
            stopDBInstanceSync: RDSClientProtocol.StopDBInstanceSyncType? = nil) {
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
        self.listTagsForResourceAsyncOverride = listTagsForResourceAsync
        self.listTagsForResourceSyncOverride = listTagsForResourceSync
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
    public func addRoleToDBClusterAsync(
            input: RDSModel.AddRoleToDBClusterMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let addRoleToDBClusterAsyncOverride = addRoleToDBClusterAsyncOverride {
            return try addRoleToDBClusterAsyncOverride(input, reporting, completion)
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
            input: RDSModel.AddRoleToDBClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws {
        if let addRoleToDBClusterSyncOverride = addRoleToDBClusterSyncOverride {
            return try addRoleToDBClusterSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let addRoleToDBInstanceAsyncOverride = addRoleToDBInstanceAsyncOverride {
            return try addRoleToDBInstanceAsyncOverride(input, reporting, completion)
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
            input: RDSModel.AddRoleToDBInstanceMessage,
            reporting: SmokeAWSInvocationReporting) throws {
        if let addRoleToDBInstanceSyncOverride = addRoleToDBInstanceSyncOverride {
            return try addRoleToDBInstanceSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription, HTTPClientError>) -> ()) throws {
        if let addSourceIdentifierToSubscriptionAsyncOverride = addSourceIdentifierToSubscriptionAsyncOverride {
            return try addSourceIdentifierToSubscriptionAsyncOverride(input, reporting, completion)
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
            input: RDSModel.AddSourceIdentifierToSubscriptionMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription {
        if let addSourceIdentifierToSubscriptionSyncOverride = addSourceIdentifierToSubscriptionSyncOverride {
            return try addSourceIdentifierToSubscriptionSyncOverride(input, reporting)
        }

        return AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription.__default
    }

    /**
     Invokes the AddTagsToResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddTagsToResourceMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    public func addTagsToResourceAsync(
            input: RDSModel.AddTagsToResourceMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let addTagsToResourceAsyncOverride = addTagsToResourceAsyncOverride {
            return try addTagsToResourceAsyncOverride(input, reporting, completion)
        }

        completion(nil)
    }

    /**
     Invokes the AddTagsToResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddTagsToResourceMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    public func addTagsToResourceSync(
            input: RDSModel.AddTagsToResourceMessage,
            reporting: SmokeAWSInvocationReporting) throws {
        if let addTagsToResourceSyncOverride = addTagsToResourceSyncOverride {
            return try addTagsToResourceSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction, HTTPClientError>) -> ()) throws {
        if let applyPendingMaintenanceActionAsyncOverride = applyPendingMaintenanceActionAsyncOverride {
            return try applyPendingMaintenanceActionAsyncOverride(input, reporting, completion)
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
            input: RDSModel.ApplyPendingMaintenanceActionMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction {
        if let applyPendingMaintenanceActionSyncOverride = applyPendingMaintenanceActionSyncOverride {
            return try applyPendingMaintenanceActionSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress, HTTPClientError>) -> ()) throws {
        if let authorizeDBSecurityGroupIngressAsyncOverride = authorizeDBSecurityGroupIngressAsyncOverride {
            return try authorizeDBSecurityGroupIngressAsyncOverride(input, reporting, completion)
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
            input: RDSModel.AuthorizeDBSecurityGroupIngressMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress {
        if let authorizeDBSecurityGroupIngressSyncOverride = authorizeDBSecurityGroupIngressSyncOverride {
            return try authorizeDBSecurityGroupIngressSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterBacktrackForBacktrackDBCluster, HTTPClientError>) -> ()) throws {
        if let backtrackDBClusterAsyncOverride = backtrackDBClusterAsyncOverride {
            return try backtrackDBClusterAsyncOverride(input, reporting, completion)
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
            input: RDSModel.BacktrackDBClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterBacktrackForBacktrackDBCluster {
        if let backtrackDBClusterSyncOverride = backtrackDBClusterSyncOverride {
            return try backtrackDBClusterSyncOverride(input, reporting)
        }

        return DBClusterBacktrackForBacktrackDBCluster.__default
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup, HTTPClientError>) -> ()) throws {
        if let copyDBClusterParameterGroupAsyncOverride = copyDBClusterParameterGroupAsyncOverride {
            return try copyDBClusterParameterGroupAsyncOverride(input, reporting, completion)
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
            input: RDSModel.CopyDBClusterParameterGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup {
        if let copyDBClusterParameterGroupSyncOverride = copyDBClusterParameterGroupSyncOverride {
            return try copyDBClusterParameterGroupSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CopyDBClusterSnapshotResultForCopyDBClusterSnapshot, HTTPClientError>) -> ()) throws {
        if let copyDBClusterSnapshotAsyncOverride = copyDBClusterSnapshotAsyncOverride {
            return try copyDBClusterSnapshotAsyncOverride(input, reporting, completion)
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
            input: RDSModel.CopyDBClusterSnapshotMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CopyDBClusterSnapshotResultForCopyDBClusterSnapshot {
        if let copyDBClusterSnapshotSyncOverride = copyDBClusterSnapshotSyncOverride {
            return try copyDBClusterSnapshotSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CopyDBParameterGroupResultForCopyDBParameterGroup, HTTPClientError>) -> ()) throws {
        if let copyDBParameterGroupAsyncOverride = copyDBParameterGroupAsyncOverride {
            return try copyDBParameterGroupAsyncOverride(input, reporting, completion)
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
            input: RDSModel.CopyDBParameterGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CopyDBParameterGroupResultForCopyDBParameterGroup {
        if let copyDBParameterGroupSyncOverride = copyDBParameterGroupSyncOverride {
            return try copyDBParameterGroupSyncOverride(input, reporting)
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
           The possible errors are: dBSnapshotAlreadyExists, dBSnapshotNotFound, invalidDBSnapshotState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    public func copyDBSnapshotAsync(
            input: RDSModel.CopyDBSnapshotMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CopyDBSnapshotResultForCopyDBSnapshot, HTTPClientError>) -> ()) throws {
        if let copyDBSnapshotAsyncOverride = copyDBSnapshotAsyncOverride {
            return try copyDBSnapshotAsyncOverride(input, reporting, completion)
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
     - Throws: dBSnapshotAlreadyExists, dBSnapshotNotFound, invalidDBSnapshotState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    public func copyDBSnapshotSync(
            input: RDSModel.CopyDBSnapshotMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CopyDBSnapshotResultForCopyDBSnapshot {
        if let copyDBSnapshotSyncOverride = copyDBSnapshotSyncOverride {
            return try copyDBSnapshotSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CopyOptionGroupResultForCopyOptionGroup, HTTPClientError>) -> ()) throws {
        if let copyOptionGroupAsyncOverride = copyOptionGroupAsyncOverride {
            return try copyOptionGroupAsyncOverride(input, reporting, completion)
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
            input: RDSModel.CopyOptionGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CopyOptionGroupResultForCopyOptionGroup {
        if let copyOptionGroupSyncOverride = copyOptionGroupSyncOverride {
            return try copyOptionGroupSyncOverride(input, reporting)
        }

        return CopyOptionGroupResultForCopyOptionGroup.__default
    }

    /**
     Invokes the CreateDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBClusterMessage object being passed to this operation.
         - completion: The CreateDBClusterResultForCreateDBCluster object or an error will be passed to this 
           callback when the operation is complete. The CreateDBClusterResultForCreateDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, globalClusterNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBInstanceState, invalidDBSubnetGroupState, invalidGlobalClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    public func createDBClusterAsync(
            input: RDSModel.CreateDBClusterMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateDBClusterResultForCreateDBCluster, HTTPClientError>) -> ()) throws {
        if let createDBClusterAsyncOverride = createDBClusterAsyncOverride {
            return try createDBClusterAsyncOverride(input, reporting, completion)
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
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, globalClusterNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBInstanceState, invalidDBSubnetGroupState, invalidGlobalClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    public func createDBClusterSync(
            input: RDSModel.CreateDBClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBClusterResultForCreateDBCluster {
        if let createDBClusterSyncOverride = createDBClusterSyncOverride {
            return try createDBClusterSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterEndpointForCreateDBClusterEndpoint, HTTPClientError>) -> ()) throws {
        if let createDBClusterEndpointAsyncOverride = createDBClusterEndpointAsyncOverride {
            return try createDBClusterEndpointAsyncOverride(input, reporting, completion)
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
            input: RDSModel.CreateDBClusterEndpointMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterEndpointForCreateDBClusterEndpoint {
        if let createDBClusterEndpointSyncOverride = createDBClusterEndpointSyncOverride {
            return try createDBClusterEndpointSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup, HTTPClientError>) -> ()) throws {
        if let createDBClusterParameterGroupAsyncOverride = createDBClusterParameterGroupAsyncOverride {
            return try createDBClusterParameterGroupAsyncOverride(input, reporting, completion)
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
            input: RDSModel.CreateDBClusterParameterGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup {
        if let createDBClusterParameterGroupSyncOverride = createDBClusterParameterGroupSyncOverride {
            return try createDBClusterParameterGroupSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateDBClusterSnapshotResultForCreateDBClusterSnapshot, HTTPClientError>) -> ()) throws {
        if let createDBClusterSnapshotAsyncOverride = createDBClusterSnapshotAsyncOverride {
            return try createDBClusterSnapshotAsyncOverride(input, reporting, completion)
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
            input: RDSModel.CreateDBClusterSnapshotMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBClusterSnapshotResultForCreateDBClusterSnapshot {
        if let createDBClusterSnapshotSyncOverride = createDBClusterSnapshotSyncOverride {
            return try createDBClusterSnapshotSyncOverride(input, reporting)
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
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBClusterNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func createDBInstanceAsync(
            input: RDSModel.CreateDBInstanceMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateDBInstanceResultForCreateDBInstance, HTTPClientError>) -> ()) throws {
        if let createDBInstanceAsyncOverride = createDBInstanceAsyncOverride {
            return try createDBInstanceAsyncOverride(input, reporting, completion)
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
     - Throws: authorizationNotFound, backupPolicyNotFound, dBClusterNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func createDBInstanceSync(
            input: RDSModel.CreateDBInstanceMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBInstanceResultForCreateDBInstance {
        if let createDBInstanceSyncOverride = createDBInstanceSyncOverride {
            return try createDBInstanceSyncOverride(input, reporting)
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
           The possible errors are: dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotAllowed, dBSubnetGroupNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSubnetGroup, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func createDBInstanceReadReplicaAsync(
            input: RDSModel.CreateDBInstanceReadReplicaMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica, HTTPClientError>) -> ()) throws {
        if let createDBInstanceReadReplicaAsyncOverride = createDBInstanceReadReplicaAsyncOverride {
            return try createDBInstanceReadReplicaAsyncOverride(input, reporting, completion)
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
     - Throws: dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotAllowed, dBSubnetGroupNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSubnetGroup, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func createDBInstanceReadReplicaSync(
            input: RDSModel.CreateDBInstanceReadReplicaMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica {
        if let createDBInstanceReadReplicaSyncOverride = createDBInstanceReadReplicaSyncOverride {
            return try createDBInstanceReadReplicaSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateDBParameterGroupResultForCreateDBParameterGroup, HTTPClientError>) -> ()) throws {
        if let createDBParameterGroupAsyncOverride = createDBParameterGroupAsyncOverride {
            return try createDBParameterGroupAsyncOverride(input, reporting, completion)
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
            input: RDSModel.CreateDBParameterGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBParameterGroupResultForCreateDBParameterGroup {
        if let createDBParameterGroupSyncOverride = createDBParameterGroupSyncOverride {
            return try createDBParameterGroupSyncOverride(input, reporting)
        }

        return CreateDBParameterGroupResultForCreateDBParameterGroup.__default
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateDBSecurityGroupResultForCreateDBSecurityGroup, HTTPClientError>) -> ()) throws {
        if let createDBSecurityGroupAsyncOverride = createDBSecurityGroupAsyncOverride {
            return try createDBSecurityGroupAsyncOverride(input, reporting, completion)
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
            input: RDSModel.CreateDBSecurityGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBSecurityGroupResultForCreateDBSecurityGroup {
        if let createDBSecurityGroupSyncOverride = createDBSecurityGroupSyncOverride {
            return try createDBSecurityGroupSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateDBSnapshotResultForCreateDBSnapshot, HTTPClientError>) -> ()) throws {
        if let createDBSnapshotAsyncOverride = createDBSnapshotAsyncOverride {
            return try createDBSnapshotAsyncOverride(input, reporting, completion)
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
            input: RDSModel.CreateDBSnapshotMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBSnapshotResultForCreateDBSnapshot {
        if let createDBSnapshotSyncOverride = createDBSnapshotSyncOverride {
            return try createDBSnapshotSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateDBSubnetGroupResultForCreateDBSubnetGroup, HTTPClientError>) -> ()) throws {
        if let createDBSubnetGroupAsyncOverride = createDBSubnetGroupAsyncOverride {
            return try createDBSubnetGroupAsyncOverride(input, reporting, completion)
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
            input: RDSModel.CreateDBSubnetGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBSubnetGroupResultForCreateDBSubnetGroup {
        if let createDBSubnetGroupSyncOverride = createDBSubnetGroupSyncOverride {
            return try createDBSubnetGroupSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateEventSubscriptionResultForCreateEventSubscription, HTTPClientError>) -> ()) throws {
        if let createEventSubscriptionAsyncOverride = createEventSubscriptionAsyncOverride {
            return try createEventSubscriptionAsyncOverride(input, reporting, completion)
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
            input: RDSModel.CreateEventSubscriptionMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateEventSubscriptionResultForCreateEventSubscription {
        if let createEventSubscriptionSyncOverride = createEventSubscriptionSyncOverride {
            return try createEventSubscriptionSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateGlobalClusterResultForCreateGlobalCluster, HTTPClientError>) -> ()) throws {
        if let createGlobalClusterAsyncOverride = createGlobalClusterAsyncOverride {
            return try createGlobalClusterAsyncOverride(input, reporting, completion)
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
            input: RDSModel.CreateGlobalClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateGlobalClusterResultForCreateGlobalCluster {
        if let createGlobalClusterSyncOverride = createGlobalClusterSyncOverride {
            return try createGlobalClusterSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateOptionGroupResultForCreateOptionGroup, HTTPClientError>) -> ()) throws {
        if let createOptionGroupAsyncOverride = createOptionGroupAsyncOverride {
            return try createOptionGroupAsyncOverride(input, reporting, completion)
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
            input: RDSModel.CreateOptionGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateOptionGroupResultForCreateOptionGroup {
        if let createOptionGroupSyncOverride = createOptionGroupSyncOverride {
            return try createOptionGroupSyncOverride(input, reporting)
        }

        return CreateOptionGroupResultForCreateOptionGroup.__default
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DeleteDBClusterResultForDeleteDBCluster, HTTPClientError>) -> ()) throws {
        if let deleteDBClusterAsyncOverride = deleteDBClusterAsyncOverride {
            return try deleteDBClusterAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DeleteDBClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DeleteDBClusterResultForDeleteDBCluster {
        if let deleteDBClusterSyncOverride = deleteDBClusterSyncOverride {
            return try deleteDBClusterSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterEndpointForDeleteDBClusterEndpoint, HTTPClientError>) -> ()) throws {
        if let deleteDBClusterEndpointAsyncOverride = deleteDBClusterEndpointAsyncOverride {
            return try deleteDBClusterEndpointAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DeleteDBClusterEndpointMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterEndpointForDeleteDBClusterEndpoint {
        if let deleteDBClusterEndpointSyncOverride = deleteDBClusterEndpointSyncOverride {
            return try deleteDBClusterEndpointSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteDBClusterParameterGroupAsyncOverride = deleteDBClusterParameterGroupAsyncOverride {
            return try deleteDBClusterParameterGroupAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DeleteDBClusterParameterGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws {
        if let deleteDBClusterParameterGroupSyncOverride = deleteDBClusterParameterGroupSyncOverride {
            return try deleteDBClusterParameterGroupSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot, HTTPClientError>) -> ()) throws {
        if let deleteDBClusterSnapshotAsyncOverride = deleteDBClusterSnapshotAsyncOverride {
            return try deleteDBClusterSnapshotAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DeleteDBClusterSnapshotMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot {
        if let deleteDBClusterSnapshotSyncOverride = deleteDBClusterSnapshotSyncOverride {
            return try deleteDBClusterSnapshotSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DeleteDBInstanceResultForDeleteDBInstance, HTTPClientError>) -> ()) throws {
        if let deleteDBInstanceAsyncOverride = deleteDBInstanceAsyncOverride {
            return try deleteDBInstanceAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DeleteDBInstanceMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DeleteDBInstanceResultForDeleteDBInstance {
        if let deleteDBInstanceSyncOverride = deleteDBInstanceSyncOverride {
            return try deleteDBInstanceSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup, HTTPClientError>) -> ()) throws {
        if let deleteDBInstanceAutomatedBackupAsyncOverride = deleteDBInstanceAutomatedBackupAsyncOverride {
            return try deleteDBInstanceAutomatedBackupAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DeleteDBInstanceAutomatedBackupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup {
        if let deleteDBInstanceAutomatedBackupSyncOverride = deleteDBInstanceAutomatedBackupSyncOverride {
            return try deleteDBInstanceAutomatedBackupSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteDBParameterGroupAsyncOverride = deleteDBParameterGroupAsyncOverride {
            return try deleteDBParameterGroupAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DeleteDBParameterGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws {
        if let deleteDBParameterGroupSyncOverride = deleteDBParameterGroupSyncOverride {
            return try deleteDBParameterGroupSyncOverride(input, reporting)
        }

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteDBSecurityGroupAsyncOverride = deleteDBSecurityGroupAsyncOverride {
            return try deleteDBSecurityGroupAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DeleteDBSecurityGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws {
        if let deleteDBSecurityGroupSyncOverride = deleteDBSecurityGroupSyncOverride {
            return try deleteDBSecurityGroupSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DeleteDBSnapshotResultForDeleteDBSnapshot, HTTPClientError>) -> ()) throws {
        if let deleteDBSnapshotAsyncOverride = deleteDBSnapshotAsyncOverride {
            return try deleteDBSnapshotAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DeleteDBSnapshotMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DeleteDBSnapshotResultForDeleteDBSnapshot {
        if let deleteDBSnapshotSyncOverride = deleteDBSnapshotSyncOverride {
            return try deleteDBSnapshotSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteDBSubnetGroupAsyncOverride = deleteDBSubnetGroupAsyncOverride {
            return try deleteDBSubnetGroupAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DeleteDBSubnetGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws {
        if let deleteDBSubnetGroupSyncOverride = deleteDBSubnetGroupSyncOverride {
            return try deleteDBSubnetGroupSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DeleteEventSubscriptionResultForDeleteEventSubscription, HTTPClientError>) -> ()) throws {
        if let deleteEventSubscriptionAsyncOverride = deleteEventSubscriptionAsyncOverride {
            return try deleteEventSubscriptionAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DeleteEventSubscriptionMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DeleteEventSubscriptionResultForDeleteEventSubscription {
        if let deleteEventSubscriptionSyncOverride = deleteEventSubscriptionSyncOverride {
            return try deleteEventSubscriptionSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DeleteGlobalClusterResultForDeleteGlobalCluster, HTTPClientError>) -> ()) throws {
        if let deleteGlobalClusterAsyncOverride = deleteGlobalClusterAsyncOverride {
            return try deleteGlobalClusterAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DeleteGlobalClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DeleteGlobalClusterResultForDeleteGlobalCluster {
        if let deleteGlobalClusterSyncOverride = deleteGlobalClusterSyncOverride {
            return try deleteGlobalClusterSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteOptionGroupAsyncOverride = deleteOptionGroupAsyncOverride {
            return try deleteOptionGroupAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DeleteOptionGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws {
        if let deleteOptionGroupSyncOverride = deleteOptionGroupSyncOverride {
            return try deleteOptionGroupSyncOverride(input, reporting)
        }

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.AccountAttributesMessageForDescribeAccountAttributes, HTTPClientError>) -> ()) throws {
        if let describeAccountAttributesAsyncOverride = describeAccountAttributesAsyncOverride {
            return try describeAccountAttributesAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribeAccountAttributesMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.AccountAttributesMessageForDescribeAccountAttributes {
        if let describeAccountAttributesSyncOverride = describeAccountAttributesSyncOverride {
            return try describeAccountAttributesSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CertificateMessageForDescribeCertificates, HTTPClientError>) -> ()) throws {
        if let describeCertificatesAsyncOverride = describeCertificatesAsyncOverride {
            return try describeCertificatesAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribeCertificatesMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CertificateMessageForDescribeCertificates {
        if let describeCertificatesSyncOverride = describeCertificatesSyncOverride {
            return try describeCertificatesSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterBacktrackMessageForDescribeDBClusterBacktracks, HTTPClientError>) -> ()) throws {
        if let describeDBClusterBacktracksAsyncOverride = describeDBClusterBacktracksAsyncOverride {
            return try describeDBClusterBacktracksAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribeDBClusterBacktracksMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterBacktrackMessageForDescribeDBClusterBacktracks {
        if let describeDBClusterBacktracksSyncOverride = describeDBClusterBacktracksSyncOverride {
            return try describeDBClusterBacktracksSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterEndpointMessageForDescribeDBClusterEndpoints, HTTPClientError>) -> ()) throws {
        if let describeDBClusterEndpointsAsyncOverride = describeDBClusterEndpointsAsyncOverride {
            return try describeDBClusterEndpointsAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribeDBClusterEndpointsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterEndpointMessageForDescribeDBClusterEndpoints {
        if let describeDBClusterEndpointsSyncOverride = describeDBClusterEndpointsSyncOverride {
            return try describeDBClusterEndpointsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups, HTTPClientError>) -> ()) throws {
        if let describeDBClusterParameterGroupsAsyncOverride = describeDBClusterParameterGroupsAsyncOverride {
            return try describeDBClusterParameterGroupsAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribeDBClusterParameterGroupsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups {
        if let describeDBClusterParameterGroupsSyncOverride = describeDBClusterParameterGroupsSyncOverride {
            return try describeDBClusterParameterGroupsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterParameterGroupDetailsForDescribeDBClusterParameters, HTTPClientError>) -> ()) throws {
        if let describeDBClusterParametersAsyncOverride = describeDBClusterParametersAsyncOverride {
            return try describeDBClusterParametersAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribeDBClusterParametersMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterParameterGroupDetailsForDescribeDBClusterParameters {
        if let describeDBClusterParametersSyncOverride = describeDBClusterParametersSyncOverride {
            return try describeDBClusterParametersSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes, HTTPClientError>) -> ()) throws {
        if let describeDBClusterSnapshotAttributesAsyncOverride = describeDBClusterSnapshotAttributesAsyncOverride {
            return try describeDBClusterSnapshotAttributesAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribeDBClusterSnapshotAttributesMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes {
        if let describeDBClusterSnapshotAttributesSyncOverride = describeDBClusterSnapshotAttributesSyncOverride {
            return try describeDBClusterSnapshotAttributesSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterSnapshotMessageForDescribeDBClusterSnapshots, HTTPClientError>) -> ()) throws {
        if let describeDBClusterSnapshotsAsyncOverride = describeDBClusterSnapshotsAsyncOverride {
            return try describeDBClusterSnapshotsAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribeDBClusterSnapshotsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterSnapshotMessageForDescribeDBClusterSnapshots {
        if let describeDBClusterSnapshotsSyncOverride = describeDBClusterSnapshotsSyncOverride {
            return try describeDBClusterSnapshotsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterMessageForDescribeDBClusters, HTTPClientError>) -> ()) throws {
        if let describeDBClustersAsyncOverride = describeDBClustersAsyncOverride {
            return try describeDBClustersAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribeDBClustersMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterMessageForDescribeDBClusters {
        if let describeDBClustersSyncOverride = describeDBClustersSyncOverride {
            return try describeDBClustersSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBEngineVersionMessageForDescribeDBEngineVersions, HTTPClientError>) -> ()) throws {
        if let describeDBEngineVersionsAsyncOverride = describeDBEngineVersionsAsyncOverride {
            return try describeDBEngineVersionsAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribeDBEngineVersionsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBEngineVersionMessageForDescribeDBEngineVersions {
        if let describeDBEngineVersionsSyncOverride = describeDBEngineVersionsSyncOverride {
            return try describeDBEngineVersionsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups, HTTPClientError>) -> ()) throws {
        if let describeDBInstanceAutomatedBackupsAsyncOverride = describeDBInstanceAutomatedBackupsAsyncOverride {
            return try describeDBInstanceAutomatedBackupsAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribeDBInstanceAutomatedBackupsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups {
        if let describeDBInstanceAutomatedBackupsSyncOverride = describeDBInstanceAutomatedBackupsSyncOverride {
            return try describeDBInstanceAutomatedBackupsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBInstanceMessageForDescribeDBInstances, HTTPClientError>) -> ()) throws {
        if let describeDBInstancesAsyncOverride = describeDBInstancesAsyncOverride {
            return try describeDBInstancesAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribeDBInstancesMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBInstanceMessageForDescribeDBInstances {
        if let describeDBInstancesSyncOverride = describeDBInstancesSyncOverride {
            return try describeDBInstancesSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DescribeDBLogFilesResponseForDescribeDBLogFiles, HTTPClientError>) -> ()) throws {
        if let describeDBLogFilesAsyncOverride = describeDBLogFilesAsyncOverride {
            return try describeDBLogFilesAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribeDBLogFilesMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DescribeDBLogFilesResponseForDescribeDBLogFiles {
        if let describeDBLogFilesSyncOverride = describeDBLogFilesSyncOverride {
            return try describeDBLogFilesSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBParameterGroupsMessageForDescribeDBParameterGroups, HTTPClientError>) -> ()) throws {
        if let describeDBParameterGroupsAsyncOverride = describeDBParameterGroupsAsyncOverride {
            return try describeDBParameterGroupsAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribeDBParameterGroupsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBParameterGroupsMessageForDescribeDBParameterGroups {
        if let describeDBParameterGroupsSyncOverride = describeDBParameterGroupsSyncOverride {
            return try describeDBParameterGroupsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBParameterGroupDetailsForDescribeDBParameters, HTTPClientError>) -> ()) throws {
        if let describeDBParametersAsyncOverride = describeDBParametersAsyncOverride {
            return try describeDBParametersAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribeDBParametersMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBParameterGroupDetailsForDescribeDBParameters {
        if let describeDBParametersSyncOverride = describeDBParametersSyncOverride {
            return try describeDBParametersSyncOverride(input, reporting)
        }

        return DBParameterGroupDetailsForDescribeDBParameters.__default
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBSecurityGroupMessageForDescribeDBSecurityGroups, HTTPClientError>) -> ()) throws {
        if let describeDBSecurityGroupsAsyncOverride = describeDBSecurityGroupsAsyncOverride {
            return try describeDBSecurityGroupsAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribeDBSecurityGroupsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBSecurityGroupMessageForDescribeDBSecurityGroups {
        if let describeDBSecurityGroupsSyncOverride = describeDBSecurityGroupsSyncOverride {
            return try describeDBSecurityGroupsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes, HTTPClientError>) -> ()) throws {
        if let describeDBSnapshotAttributesAsyncOverride = describeDBSnapshotAttributesAsyncOverride {
            return try describeDBSnapshotAttributesAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribeDBSnapshotAttributesMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes {
        if let describeDBSnapshotAttributesSyncOverride = describeDBSnapshotAttributesSyncOverride {
            return try describeDBSnapshotAttributesSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBSnapshotMessageForDescribeDBSnapshots, HTTPClientError>) -> ()) throws {
        if let describeDBSnapshotsAsyncOverride = describeDBSnapshotsAsyncOverride {
            return try describeDBSnapshotsAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribeDBSnapshotsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBSnapshotMessageForDescribeDBSnapshots {
        if let describeDBSnapshotsSyncOverride = describeDBSnapshotsSyncOverride {
            return try describeDBSnapshotsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBSubnetGroupMessageForDescribeDBSubnetGroups, HTTPClientError>) -> ()) throws {
        if let describeDBSubnetGroupsAsyncOverride = describeDBSubnetGroupsAsyncOverride {
            return try describeDBSubnetGroupsAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribeDBSubnetGroupsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBSubnetGroupMessageForDescribeDBSubnetGroups {
        if let describeDBSubnetGroupsSyncOverride = describeDBSubnetGroupsSyncOverride {
            return try describeDBSubnetGroupsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters, HTTPClientError>) -> ()) throws {
        if let describeEngineDefaultClusterParametersAsyncOverride = describeEngineDefaultClusterParametersAsyncOverride {
            return try describeEngineDefaultClusterParametersAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribeEngineDefaultClusterParametersMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters {
        if let describeEngineDefaultClusterParametersSyncOverride = describeEngineDefaultClusterParametersSyncOverride {
            return try describeEngineDefaultClusterParametersSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters, HTTPClientError>) -> ()) throws {
        if let describeEngineDefaultParametersAsyncOverride = describeEngineDefaultParametersAsyncOverride {
            return try describeEngineDefaultParametersAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribeEngineDefaultParametersMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters {
        if let describeEngineDefaultParametersSyncOverride = describeEngineDefaultParametersSyncOverride {
            return try describeEngineDefaultParametersSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.EventCategoriesMessageForDescribeEventCategories, HTTPClientError>) -> ()) throws {
        if let describeEventCategoriesAsyncOverride = describeEventCategoriesAsyncOverride {
            return try describeEventCategoriesAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribeEventCategoriesMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.EventCategoriesMessageForDescribeEventCategories {
        if let describeEventCategoriesSyncOverride = describeEventCategoriesSyncOverride {
            return try describeEventCategoriesSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.EventSubscriptionsMessageForDescribeEventSubscriptions, HTTPClientError>) -> ()) throws {
        if let describeEventSubscriptionsAsyncOverride = describeEventSubscriptionsAsyncOverride {
            return try describeEventSubscriptionsAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribeEventSubscriptionsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.EventSubscriptionsMessageForDescribeEventSubscriptions {
        if let describeEventSubscriptionsSyncOverride = describeEventSubscriptionsSyncOverride {
            return try describeEventSubscriptionsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.EventsMessageForDescribeEvents, HTTPClientError>) -> ()) throws {
        if let describeEventsAsyncOverride = describeEventsAsyncOverride {
            return try describeEventsAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribeEventsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.EventsMessageForDescribeEvents {
        if let describeEventsSyncOverride = describeEventsSyncOverride {
            return try describeEventsSyncOverride(input, reporting)
        }

        return EventsMessageForDescribeEvents.__default
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.GlobalClustersMessageForDescribeGlobalClusters, HTTPClientError>) -> ()) throws {
        if let describeGlobalClustersAsyncOverride = describeGlobalClustersAsyncOverride {
            return try describeGlobalClustersAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribeGlobalClustersMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.GlobalClustersMessageForDescribeGlobalClusters {
        if let describeGlobalClustersSyncOverride = describeGlobalClustersSyncOverride {
            return try describeGlobalClustersSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.OptionGroupOptionsMessageForDescribeOptionGroupOptions, HTTPClientError>) -> ()) throws {
        if let describeOptionGroupOptionsAsyncOverride = describeOptionGroupOptionsAsyncOverride {
            return try describeOptionGroupOptionsAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribeOptionGroupOptionsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.OptionGroupOptionsMessageForDescribeOptionGroupOptions {
        if let describeOptionGroupOptionsSyncOverride = describeOptionGroupOptionsSyncOverride {
            return try describeOptionGroupOptionsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.OptionGroupsForDescribeOptionGroups, HTTPClientError>) -> ()) throws {
        if let describeOptionGroupsAsyncOverride = describeOptionGroupsAsyncOverride {
            return try describeOptionGroupsAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribeOptionGroupsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.OptionGroupsForDescribeOptionGroups {
        if let describeOptionGroupsSyncOverride = describeOptionGroupsSyncOverride {
            return try describeOptionGroupsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions, HTTPClientError>) -> ()) throws {
        if let describeOrderableDBInstanceOptionsAsyncOverride = describeOrderableDBInstanceOptionsAsyncOverride {
            return try describeOrderableDBInstanceOptionsAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribeOrderableDBInstanceOptionsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions {
        if let describeOrderableDBInstanceOptionsSyncOverride = describeOrderableDBInstanceOptionsSyncOverride {
            return try describeOrderableDBInstanceOptionsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions, HTTPClientError>) -> ()) throws {
        if let describePendingMaintenanceActionsAsyncOverride = describePendingMaintenanceActionsAsyncOverride {
            return try describePendingMaintenanceActionsAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribePendingMaintenanceActionsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions {
        if let describePendingMaintenanceActionsSyncOverride = describePendingMaintenanceActionsSyncOverride {
            return try describePendingMaintenanceActionsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ReservedDBInstanceMessageForDescribeReservedDBInstances, HTTPClientError>) -> ()) throws {
        if let describeReservedDBInstancesAsyncOverride = describeReservedDBInstancesAsyncOverride {
            return try describeReservedDBInstancesAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribeReservedDBInstancesMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ReservedDBInstanceMessageForDescribeReservedDBInstances {
        if let describeReservedDBInstancesSyncOverride = describeReservedDBInstancesSyncOverride {
            return try describeReservedDBInstancesSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings, HTTPClientError>) -> ()) throws {
        if let describeReservedDBInstancesOfferingsAsyncOverride = describeReservedDBInstancesOfferingsAsyncOverride {
            return try describeReservedDBInstancesOfferingsAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribeReservedDBInstancesOfferingsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings {
        if let describeReservedDBInstancesOfferingsSyncOverride = describeReservedDBInstancesOfferingsSyncOverride {
            return try describeReservedDBInstancesOfferingsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.SourceRegionMessageForDescribeSourceRegions, HTTPClientError>) -> ()) throws {
        if let describeSourceRegionsAsyncOverride = describeSourceRegionsAsyncOverride {
            return try describeSourceRegionsAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribeSourceRegionsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.SourceRegionMessageForDescribeSourceRegions {
        if let describeSourceRegionsSyncOverride = describeSourceRegionsSyncOverride {
            return try describeSourceRegionsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications, HTTPClientError>) -> ()) throws {
        if let describeValidDBInstanceModificationsAsyncOverride = describeValidDBInstanceModificationsAsyncOverride {
            return try describeValidDBInstanceModificationsAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DescribeValidDBInstanceModificationsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications {
        if let describeValidDBInstanceModificationsSyncOverride = describeValidDBInstanceModificationsSyncOverride {
            return try describeValidDBInstanceModificationsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion, HTTPClientError>) -> ()) throws {
        if let downloadDBLogFilePortionAsyncOverride = downloadDBLogFilePortionAsyncOverride {
            return try downloadDBLogFilePortionAsyncOverride(input, reporting, completion)
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
            input: RDSModel.DownloadDBLogFilePortionMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion {
        if let downloadDBLogFilePortionSyncOverride = downloadDBLogFilePortionSyncOverride {
            return try downloadDBLogFilePortionSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.FailoverDBClusterResultForFailoverDBCluster, HTTPClientError>) -> ()) throws {
        if let failoverDBClusterAsyncOverride = failoverDBClusterAsyncOverride {
            return try failoverDBClusterAsyncOverride(input, reporting, completion)
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
            input: RDSModel.FailoverDBClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.FailoverDBClusterResultForFailoverDBCluster {
        if let failoverDBClusterSyncOverride = failoverDBClusterSyncOverride {
            return try failoverDBClusterSyncOverride(input, reporting)
        }

        return FailoverDBClusterResultForFailoverDBCluster.__default
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
    public func listTagsForResourceAsync(
            input: RDSModel.ListTagsForResourceMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.TagListMessageForListTagsForResource, HTTPClientError>) -> ()) throws {
        if let listTagsForResourceAsyncOverride = listTagsForResourceAsyncOverride {
            return try listTagsForResourceAsyncOverride(input, reporting, completion)
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
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    public func listTagsForResourceSync(
            input: RDSModel.ListTagsForResourceMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.TagListMessageForListTagsForResource {
        if let listTagsForResourceSyncOverride = listTagsForResourceSyncOverride {
            return try listTagsForResourceSyncOverride(input, reporting)
        }

        return TagListMessageForListTagsForResource.__default
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterCapacityInfoForModifyCurrentDBClusterCapacity, HTTPClientError>) -> ()) throws {
        if let modifyCurrentDBClusterCapacityAsyncOverride = modifyCurrentDBClusterCapacityAsyncOverride {
            return try modifyCurrentDBClusterCapacityAsyncOverride(input, reporting, completion)
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
            input: RDSModel.ModifyCurrentDBClusterCapacityMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterCapacityInfoForModifyCurrentDBClusterCapacity {
        if let modifyCurrentDBClusterCapacitySyncOverride = modifyCurrentDBClusterCapacitySyncOverride {
            return try modifyCurrentDBClusterCapacitySyncOverride(input, reporting)
        }

        return DBClusterCapacityInfoForModifyCurrentDBClusterCapacity.__default
    }

    /**
     Invokes the ModifyDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBClusterMessage object being passed to this operation.
         - completion: The ModifyDBClusterResultForModifyDBCluster object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBClusterResultForModifyDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBSubnetGroupNotFound, invalidDBClusterState, invalidDBInstanceState, invalidDBSecurityGroupState, invalidDBSubnetGroupState, invalidSubnet, invalidVPCNetworkState, storageQuotaExceeded.
     */
    public func modifyDBClusterAsync(
            input: RDSModel.ModifyDBClusterMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ModifyDBClusterResultForModifyDBCluster, HTTPClientError>) -> ()) throws {
        if let modifyDBClusterAsyncOverride = modifyDBClusterAsyncOverride {
            return try modifyDBClusterAsyncOverride(input, reporting, completion)
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
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBSubnetGroupNotFound, invalidDBClusterState, invalidDBInstanceState, invalidDBSecurityGroupState, invalidDBSubnetGroupState, invalidSubnet, invalidVPCNetworkState, storageQuotaExceeded.
     */
    public func modifyDBClusterSync(
            input: RDSModel.ModifyDBClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyDBClusterResultForModifyDBCluster {
        if let modifyDBClusterSyncOverride = modifyDBClusterSyncOverride {
            return try modifyDBClusterSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterEndpointForModifyDBClusterEndpoint, HTTPClientError>) -> ()) throws {
        if let modifyDBClusterEndpointAsyncOverride = modifyDBClusterEndpointAsyncOverride {
            return try modifyDBClusterEndpointAsyncOverride(input, reporting, completion)
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
            input: RDSModel.ModifyDBClusterEndpointMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterEndpointForModifyDBClusterEndpoint {
        if let modifyDBClusterEndpointSyncOverride = modifyDBClusterEndpointSyncOverride {
            return try modifyDBClusterEndpointSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup, HTTPClientError>) -> ()) throws {
        if let modifyDBClusterParameterGroupAsyncOverride = modifyDBClusterParameterGroupAsyncOverride {
            return try modifyDBClusterParameterGroupAsyncOverride(input, reporting, completion)
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
            input: RDSModel.ModifyDBClusterParameterGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup {
        if let modifyDBClusterParameterGroupSyncOverride = modifyDBClusterParameterGroupSyncOverride {
            return try modifyDBClusterParameterGroupSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute, HTTPClientError>) -> ()) throws {
        if let modifyDBClusterSnapshotAttributeAsyncOverride = modifyDBClusterSnapshotAttributeAsyncOverride {
            return try modifyDBClusterSnapshotAttributeAsyncOverride(input, reporting, completion)
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
            input: RDSModel.ModifyDBClusterSnapshotAttributeMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute {
        if let modifyDBClusterSnapshotAttributeSyncOverride = modifyDBClusterSnapshotAttributeSyncOverride {
            return try modifyDBClusterSnapshotAttributeSyncOverride(input, reporting)
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
           The possible errors are: authorizationNotFound, backupPolicyNotFound, certificateNotFound, dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBUpgradeDependencyFailure, domainNotFound, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSecurityGroupState, invalidVPCNetworkState, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func modifyDBInstanceAsync(
            input: RDSModel.ModifyDBInstanceMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ModifyDBInstanceResultForModifyDBInstance, HTTPClientError>) -> ()) throws {
        if let modifyDBInstanceAsyncOverride = modifyDBInstanceAsyncOverride {
            return try modifyDBInstanceAsyncOverride(input, reporting, completion)
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
     - Throws: authorizationNotFound, backupPolicyNotFound, certificateNotFound, dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBUpgradeDependencyFailure, domainNotFound, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSecurityGroupState, invalidVPCNetworkState, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func modifyDBInstanceSync(
            input: RDSModel.ModifyDBInstanceMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyDBInstanceResultForModifyDBInstance {
        if let modifyDBInstanceSyncOverride = modifyDBInstanceSyncOverride {
            return try modifyDBInstanceSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBParameterGroupNameMessageForModifyDBParameterGroup, HTTPClientError>) -> ()) throws {
        if let modifyDBParameterGroupAsyncOverride = modifyDBParameterGroupAsyncOverride {
            return try modifyDBParameterGroupAsyncOverride(input, reporting, completion)
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
            input: RDSModel.ModifyDBParameterGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBParameterGroupNameMessageForModifyDBParameterGroup {
        if let modifyDBParameterGroupSyncOverride = modifyDBParameterGroupSyncOverride {
            return try modifyDBParameterGroupSyncOverride(input, reporting)
        }

        return DBParameterGroupNameMessageForModifyDBParameterGroup.__default
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ModifyDBSnapshotResultForModifyDBSnapshot, HTTPClientError>) -> ()) throws {
        if let modifyDBSnapshotAsyncOverride = modifyDBSnapshotAsyncOverride {
            return try modifyDBSnapshotAsyncOverride(input, reporting, completion)
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
            input: RDSModel.ModifyDBSnapshotMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyDBSnapshotResultForModifyDBSnapshot {
        if let modifyDBSnapshotSyncOverride = modifyDBSnapshotSyncOverride {
            return try modifyDBSnapshotSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute, HTTPClientError>) -> ()) throws {
        if let modifyDBSnapshotAttributeAsyncOverride = modifyDBSnapshotAttributeAsyncOverride {
            return try modifyDBSnapshotAttributeAsyncOverride(input, reporting, completion)
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
            input: RDSModel.ModifyDBSnapshotAttributeMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute {
        if let modifyDBSnapshotAttributeSyncOverride = modifyDBSnapshotAttributeSyncOverride {
            return try modifyDBSnapshotAttributeSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ModifyDBSubnetGroupResultForModifyDBSubnetGroup, HTTPClientError>) -> ()) throws {
        if let modifyDBSubnetGroupAsyncOverride = modifyDBSubnetGroupAsyncOverride {
            return try modifyDBSubnetGroupAsyncOverride(input, reporting, completion)
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
            input: RDSModel.ModifyDBSubnetGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyDBSubnetGroupResultForModifyDBSubnetGroup {
        if let modifyDBSubnetGroupSyncOverride = modifyDBSubnetGroupSyncOverride {
            return try modifyDBSubnetGroupSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ModifyEventSubscriptionResultForModifyEventSubscription, HTTPClientError>) -> ()) throws {
        if let modifyEventSubscriptionAsyncOverride = modifyEventSubscriptionAsyncOverride {
            return try modifyEventSubscriptionAsyncOverride(input, reporting, completion)
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
            input: RDSModel.ModifyEventSubscriptionMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyEventSubscriptionResultForModifyEventSubscription {
        if let modifyEventSubscriptionSyncOverride = modifyEventSubscriptionSyncOverride {
            return try modifyEventSubscriptionSyncOverride(input, reporting)
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
           The possible errors are: globalClusterNotFound, invalidGlobalClusterState.
     */
    public func modifyGlobalClusterAsync(
            input: RDSModel.ModifyGlobalClusterMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ModifyGlobalClusterResultForModifyGlobalCluster, HTTPClientError>) -> ()) throws {
        if let modifyGlobalClusterAsyncOverride = modifyGlobalClusterAsyncOverride {
            return try modifyGlobalClusterAsyncOverride(input, reporting, completion)
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
     - Throws: globalClusterNotFound, invalidGlobalClusterState.
     */
    public func modifyGlobalClusterSync(
            input: RDSModel.ModifyGlobalClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyGlobalClusterResultForModifyGlobalCluster {
        if let modifyGlobalClusterSyncOverride = modifyGlobalClusterSyncOverride {
            return try modifyGlobalClusterSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ModifyOptionGroupResultForModifyOptionGroup, HTTPClientError>) -> ()) throws {
        if let modifyOptionGroupAsyncOverride = modifyOptionGroupAsyncOverride {
            return try modifyOptionGroupAsyncOverride(input, reporting, completion)
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
            input: RDSModel.ModifyOptionGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyOptionGroupResultForModifyOptionGroup {
        if let modifyOptionGroupSyncOverride = modifyOptionGroupSyncOverride {
            return try modifyOptionGroupSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.PromoteReadReplicaResultForPromoteReadReplica, HTTPClientError>) -> ()) throws {
        if let promoteReadReplicaAsyncOverride = promoteReadReplicaAsyncOverride {
            return try promoteReadReplicaAsyncOverride(input, reporting, completion)
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
            input: RDSModel.PromoteReadReplicaMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.PromoteReadReplicaResultForPromoteReadReplica {
        if let promoteReadReplicaSyncOverride = promoteReadReplicaSyncOverride {
            return try promoteReadReplicaSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster, HTTPClientError>) -> ()) throws {
        if let promoteReadReplicaDBClusterAsyncOverride = promoteReadReplicaDBClusterAsyncOverride {
            return try promoteReadReplicaDBClusterAsyncOverride(input, reporting, completion)
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
            input: RDSModel.PromoteReadReplicaDBClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster {
        if let promoteReadReplicaDBClusterSyncOverride = promoteReadReplicaDBClusterSyncOverride {
            return try promoteReadReplicaDBClusterSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering, HTTPClientError>) -> ()) throws {
        if let purchaseReservedDBInstancesOfferingAsyncOverride = purchaseReservedDBInstancesOfferingAsyncOverride {
            return try purchaseReservedDBInstancesOfferingAsyncOverride(input, reporting, completion)
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
            input: RDSModel.PurchaseReservedDBInstancesOfferingMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering {
        if let purchaseReservedDBInstancesOfferingSyncOverride = purchaseReservedDBInstancesOfferingSyncOverride {
            return try purchaseReservedDBInstancesOfferingSyncOverride(input, reporting)
        }

        return PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering.__default
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.RebootDBInstanceResultForRebootDBInstance, HTTPClientError>) -> ()) throws {
        if let rebootDBInstanceAsyncOverride = rebootDBInstanceAsyncOverride {
            return try rebootDBInstanceAsyncOverride(input, reporting, completion)
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
            input: RDSModel.RebootDBInstanceMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RebootDBInstanceResultForRebootDBInstance {
        if let rebootDBInstanceSyncOverride = rebootDBInstanceSyncOverride {
            return try rebootDBInstanceSyncOverride(input, reporting)
        }

        return RebootDBInstanceResultForRebootDBInstance.__default
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.RemoveFromGlobalClusterResultForRemoveFromGlobalCluster, HTTPClientError>) -> ()) throws {
        if let removeFromGlobalClusterAsyncOverride = removeFromGlobalClusterAsyncOverride {
            return try removeFromGlobalClusterAsyncOverride(input, reporting, completion)
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
            input: RDSModel.RemoveFromGlobalClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RemoveFromGlobalClusterResultForRemoveFromGlobalCluster {
        if let removeFromGlobalClusterSyncOverride = removeFromGlobalClusterSyncOverride {
            return try removeFromGlobalClusterSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let removeRoleFromDBClusterAsyncOverride = removeRoleFromDBClusterAsyncOverride {
            return try removeRoleFromDBClusterAsyncOverride(input, reporting, completion)
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
            input: RDSModel.RemoveRoleFromDBClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws {
        if let removeRoleFromDBClusterSyncOverride = removeRoleFromDBClusterSyncOverride {
            return try removeRoleFromDBClusterSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let removeRoleFromDBInstanceAsyncOverride = removeRoleFromDBInstanceAsyncOverride {
            return try removeRoleFromDBInstanceAsyncOverride(input, reporting, completion)
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
            input: RDSModel.RemoveRoleFromDBInstanceMessage,
            reporting: SmokeAWSInvocationReporting) throws {
        if let removeRoleFromDBInstanceSyncOverride = removeRoleFromDBInstanceSyncOverride {
            return try removeRoleFromDBInstanceSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription, HTTPClientError>) -> ()) throws {
        if let removeSourceIdentifierFromSubscriptionAsyncOverride = removeSourceIdentifierFromSubscriptionAsyncOverride {
            return try removeSourceIdentifierFromSubscriptionAsyncOverride(input, reporting, completion)
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
            input: RDSModel.RemoveSourceIdentifierFromSubscriptionMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription {
        if let removeSourceIdentifierFromSubscriptionSyncOverride = removeSourceIdentifierFromSubscriptionSyncOverride {
            return try removeSourceIdentifierFromSubscriptionSyncOverride(input, reporting)
        }

        return RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription.__default
    }

    /**
     Invokes the RemoveTagsFromResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveTagsFromResourceMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    public func removeTagsFromResourceAsync(
            input: RDSModel.RemoveTagsFromResourceMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let removeTagsFromResourceAsyncOverride = removeTagsFromResourceAsyncOverride {
            return try removeTagsFromResourceAsyncOverride(input, reporting, completion)
        }

        completion(nil)
    }

    /**
     Invokes the RemoveTagsFromResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveTagsFromResourceMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    public func removeTagsFromResourceSync(
            input: RDSModel.RemoveTagsFromResourceMessage,
            reporting: SmokeAWSInvocationReporting) throws {
        if let removeTagsFromResourceSyncOverride = removeTagsFromResourceSyncOverride {
            return try removeTagsFromResourceSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup, HTTPClientError>) -> ()) throws {
        if let resetDBClusterParameterGroupAsyncOverride = resetDBClusterParameterGroupAsyncOverride {
            return try resetDBClusterParameterGroupAsyncOverride(input, reporting, completion)
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
            input: RDSModel.ResetDBClusterParameterGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup {
        if let resetDBClusterParameterGroupSyncOverride = resetDBClusterParameterGroupSyncOverride {
            return try resetDBClusterParameterGroupSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBParameterGroupNameMessageForResetDBParameterGroup, HTTPClientError>) -> ()) throws {
        if let resetDBParameterGroupAsyncOverride = resetDBParameterGroupAsyncOverride {
            return try resetDBParameterGroupAsyncOverride(input, reporting, completion)
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
            input: RDSModel.ResetDBParameterGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBParameterGroupNameMessageForResetDBParameterGroup {
        if let resetDBParameterGroupSyncOverride = resetDBParameterGroupSyncOverride {
            return try resetDBParameterGroupSyncOverride(input, reporting)
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
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBSubnetGroupNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBSubnetGroupState, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    public func restoreDBClusterFromS3Async(
            input: RDSModel.RestoreDBClusterFromS3Message, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3, HTTPClientError>) -> ()) throws {
        if let restoreDBClusterFromS3AsyncOverride = restoreDBClusterFromS3AsyncOverride {
            return try restoreDBClusterFromS3AsyncOverride(input, reporting, completion)
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
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBSubnetGroupNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBSubnetGroupState, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    public func restoreDBClusterFromS3Sync(
            input: RDSModel.RestoreDBClusterFromS3Message,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3 {
        if let restoreDBClusterFromS3SyncOverride = restoreDBClusterFromS3SyncOverride {
            return try restoreDBClusterFromS3SyncOverride(input, reporting)
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
           The possible errors are: dBClusterAlreadyExists, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSnapshotNotFound, dBSubnetGroupNotFound, dBSubnetGroupNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded, storageQuotaExceeded.
     */
    public func restoreDBClusterFromSnapshotAsync(
            input: RDSModel.RestoreDBClusterFromSnapshotMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot, HTTPClientError>) -> ()) throws {
        if let restoreDBClusterFromSnapshotAsyncOverride = restoreDBClusterFromSnapshotAsyncOverride {
            return try restoreDBClusterFromSnapshotAsyncOverride(input, reporting, completion)
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
     - Throws: dBClusterAlreadyExists, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSnapshotNotFound, dBSubnetGroupNotFound, dBSubnetGroupNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded, storageQuotaExceeded.
     */
    public func restoreDBClusterFromSnapshotSync(
            input: RDSModel.RestoreDBClusterFromSnapshotMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot {
        if let restoreDBClusterFromSnapshotSyncOverride = restoreDBClusterFromSnapshotSyncOverride {
            return try restoreDBClusterFromSnapshotSyncOverride(input, reporting)
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
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSubnetGroupNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBClusterState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded.
     */
    public func restoreDBClusterToPointInTimeAsync(
            input: RDSModel.RestoreDBClusterToPointInTimeMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime, HTTPClientError>) -> ()) throws {
        if let restoreDBClusterToPointInTimeAsyncOverride = restoreDBClusterToPointInTimeAsyncOverride {
            return try restoreDBClusterToPointInTimeAsyncOverride(input, reporting, completion)
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
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSubnetGroupNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBClusterState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded.
     */
    public func restoreDBClusterToPointInTimeSync(
            input: RDSModel.RestoreDBClusterToPointInTimeMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime {
        if let restoreDBClusterToPointInTimeSyncOverride = restoreDBClusterToPointInTimeSyncOverride {
            return try restoreDBClusterToPointInTimeSyncOverride(input, reporting)
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
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSnapshotNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceFromDBSnapshotAsync(
            input: RDSModel.RestoreDBInstanceFromDBSnapshotMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot, HTTPClientError>) -> ()) throws {
        if let restoreDBInstanceFromDBSnapshotAsyncOverride = restoreDBInstanceFromDBSnapshotAsyncOverride {
            return try restoreDBInstanceFromDBSnapshotAsyncOverride(input, reporting, completion)
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
     - Throws: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSnapshotNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceFromDBSnapshotSync(
            input: RDSModel.RestoreDBInstanceFromDBSnapshotMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot {
        if let restoreDBInstanceFromDBSnapshotSyncOverride = restoreDBInstanceFromDBSnapshotSyncOverride {
            return try restoreDBInstanceFromDBSnapshotSyncOverride(input, reporting)
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
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceFromS3Async(
            input: RDSModel.RestoreDBInstanceFromS3Message, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3, HTTPClientError>) -> ()) throws {
        if let restoreDBInstanceFromS3AsyncOverride = restoreDBInstanceFromS3AsyncOverride {
            return try restoreDBInstanceFromS3AsyncOverride(input, reporting, completion)
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
     - Throws: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceFromS3Sync(
            input: RDSModel.RestoreDBInstanceFromS3Message,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3 {
        if let restoreDBInstanceFromS3SyncOverride = restoreDBInstanceFromS3SyncOverride {
            return try restoreDBInstanceFromS3SyncOverride(input, reporting)
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
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBInstanceAutomatedBackupNotFound, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, pointInTimeRestoreNotEnabled, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceToPointInTimeAsync(
            input: RDSModel.RestoreDBInstanceToPointInTimeMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime, HTTPClientError>) -> ()) throws {
        if let restoreDBInstanceToPointInTimeAsyncOverride = restoreDBInstanceToPointInTimeAsyncOverride {
            return try restoreDBInstanceToPointInTimeAsyncOverride(input, reporting, completion)
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
     - Throws: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBInstanceAutomatedBackupNotFound, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, pointInTimeRestoreNotEnabled, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceToPointInTimeSync(
            input: RDSModel.RestoreDBInstanceToPointInTimeMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime {
        if let restoreDBInstanceToPointInTimeSyncOverride = restoreDBInstanceToPointInTimeSyncOverride {
            return try restoreDBInstanceToPointInTimeSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress, HTTPClientError>) -> ()) throws {
        if let revokeDBSecurityGroupIngressAsyncOverride = revokeDBSecurityGroupIngressAsyncOverride {
            return try revokeDBSecurityGroupIngressAsyncOverride(input, reporting, completion)
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
            input: RDSModel.RevokeDBSecurityGroupIngressMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress {
        if let revokeDBSecurityGroupIngressSyncOverride = revokeDBSecurityGroupIngressSyncOverride {
            return try revokeDBSecurityGroupIngressSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.StartActivityStreamResponseForStartActivityStream, HTTPClientError>) -> ()) throws {
        if let startActivityStreamAsyncOverride = startActivityStreamAsyncOverride {
            return try startActivityStreamAsyncOverride(input, reporting, completion)
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
            input: RDSModel.StartActivityStreamRequest,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.StartActivityStreamResponseForStartActivityStream {
        if let startActivityStreamSyncOverride = startActivityStreamSyncOverride {
            return try startActivityStreamSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.StartDBClusterResultForStartDBCluster, HTTPClientError>) -> ()) throws {
        if let startDBClusterAsyncOverride = startDBClusterAsyncOverride {
            return try startDBClusterAsyncOverride(input, reporting, completion)
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
            input: RDSModel.StartDBClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.StartDBClusterResultForStartDBCluster {
        if let startDBClusterSyncOverride = startDBClusterSyncOverride {
            return try startDBClusterSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.StartDBInstanceResultForStartDBInstance, HTTPClientError>) -> ()) throws {
        if let startDBInstanceAsyncOverride = startDBInstanceAsyncOverride {
            return try startDBInstanceAsyncOverride(input, reporting, completion)
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
            input: RDSModel.StartDBInstanceMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.StartDBInstanceResultForStartDBInstance {
        if let startDBInstanceSyncOverride = startDBInstanceSyncOverride {
            return try startDBInstanceSyncOverride(input, reporting)
        }

        return StartDBInstanceResultForStartDBInstance.__default
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.StopActivityStreamResponseForStopActivityStream, HTTPClientError>) -> ()) throws {
        if let stopActivityStreamAsyncOverride = stopActivityStreamAsyncOverride {
            return try stopActivityStreamAsyncOverride(input, reporting, completion)
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
            input: RDSModel.StopActivityStreamRequest,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.StopActivityStreamResponseForStopActivityStream {
        if let stopActivityStreamSyncOverride = stopActivityStreamSyncOverride {
            return try stopActivityStreamSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.StopDBClusterResultForStopDBCluster, HTTPClientError>) -> ()) throws {
        if let stopDBClusterAsyncOverride = stopDBClusterAsyncOverride {
            return try stopDBClusterAsyncOverride(input, reporting, completion)
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
            input: RDSModel.StopDBClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.StopDBClusterResultForStopDBCluster {
        if let stopDBClusterSyncOverride = stopDBClusterSyncOverride {
            return try stopDBClusterSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.StopDBInstanceResultForStopDBInstance, HTTPClientError>) -> ()) throws {
        if let stopDBInstanceAsyncOverride = stopDBInstanceAsyncOverride {
            return try stopDBInstanceAsyncOverride(input, reporting, completion)
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
            input: RDSModel.StopDBInstanceMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.StopDBInstanceResultForStopDBInstance {
        if let stopDBInstanceSyncOverride = stopDBInstanceSyncOverride {
            return try stopDBInstanceSyncOverride(input, reporting)
        }

        return StopDBInstanceResultForStopDBInstance.__default
    }
}
