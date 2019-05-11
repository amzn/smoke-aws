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
import SmokeHTTPClient

/**
 Mock Client for the RDS service that by default always throws from its methods.
 */
public struct ThrowingRDSClient: RDSClientProtocol {
    let error: Swift.Error
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
    let startDBClusterAsyncOverride: RDSClientProtocol.StartDBClusterAsyncType?
    let startDBClusterSyncOverride: RDSClientProtocol.StartDBClusterSyncType?
    let startDBInstanceAsyncOverride: RDSClientProtocol.StartDBInstanceAsyncType?
    let startDBInstanceSyncOverride: RDSClientProtocol.StartDBInstanceSyncType?
    let stopDBClusterAsyncOverride: RDSClientProtocol.StopDBClusterAsyncType?
    let stopDBClusterSyncOverride: RDSClientProtocol.StopDBClusterSyncType?
    let stopDBInstanceAsyncOverride: RDSClientProtocol.StopDBInstanceAsyncType?
    let stopDBInstanceSyncOverride: RDSClientProtocol.StopDBInstanceSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(error: Swift.Error,
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
            startDBClusterAsync: RDSClientProtocol.StartDBClusterAsyncType? = nil,
            startDBClusterSync: RDSClientProtocol.StartDBClusterSyncType? = nil,
            startDBInstanceAsync: RDSClientProtocol.StartDBInstanceAsyncType? = nil,
            startDBInstanceSync: RDSClientProtocol.StartDBInstanceSyncType? = nil,
            stopDBClusterAsync: RDSClientProtocol.StopDBClusterAsyncType? = nil,
            stopDBClusterSync: RDSClientProtocol.StopDBClusterSyncType? = nil,
            stopDBInstanceAsync: RDSClientProtocol.StopDBInstanceAsyncType? = nil,
            stopDBInstanceSync: RDSClientProtocol.StopDBInstanceSyncType? = nil) {
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
        self.startDBClusterAsyncOverride = startDBClusterAsync
        self.startDBClusterSyncOverride = startDBClusterSync
        self.startDBInstanceAsyncOverride = startDBInstanceAsync
        self.startDBInstanceSyncOverride = startDBInstanceSync
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
    public func addRoleToDBClusterAsync(input: RDSModel.AddRoleToDBClusterMessage, completion: @escaping (Swift.Error?) -> ()) throws {
        if let addRoleToDBClusterAsyncOverride = addRoleToDBClusterAsyncOverride {
            return try addRoleToDBClusterAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the AddRoleToDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddRoleToDBClusterMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBClusterRoleAlreadyExists, dBClusterRoleQuotaExceeded, invalidDBClusterState.
     */
    public func addRoleToDBClusterSync(input: RDSModel.AddRoleToDBClusterMessage) throws {
        if let addRoleToDBClusterSyncOverride = addRoleToDBClusterSyncOverride {
            return try addRoleToDBClusterSyncOverride(input)
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
    public func addRoleToDBInstanceAsync(input: RDSModel.AddRoleToDBInstanceMessage, completion: @escaping (Swift.Error?) -> ()) throws {
        if let addRoleToDBInstanceAsyncOverride = addRoleToDBInstanceAsyncOverride {
            return try addRoleToDBInstanceAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the AddRoleToDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddRoleToDBInstanceMessage object being passed to this operation.
     - Throws: dBInstanceNotFound, dBInstanceRoleAlreadyExists, dBInstanceRoleQuotaExceeded, invalidDBInstanceState.
     */
    public func addRoleToDBInstanceSync(input: RDSModel.AddRoleToDBInstanceMessage) throws {
        if let addRoleToDBInstanceSyncOverride = addRoleToDBInstanceSyncOverride {
            return try addRoleToDBInstanceSyncOverride(input)
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
    public func addSourceIdentifierToSubscriptionAsync(input: RDSModel.AddSourceIdentifierToSubscriptionMessage, completion: @escaping (HTTPResult<RDSModel.AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription>) -> ()) throws {
        if let addSourceIdentifierToSubscriptionAsyncOverride = addSourceIdentifierToSubscriptionAsyncOverride {
            return try addSourceIdentifierToSubscriptionAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the AddSourceIdentifierToSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddSourceIdentifierToSubscriptionMessage object being passed to this operation.
     - Returns: The AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: sourceNotFound, subscriptionNotFound.
     */
    public func addSourceIdentifierToSubscriptionSync(input: RDSModel.AddSourceIdentifierToSubscriptionMessage) throws -> RDSModel.AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription {
        if let addSourceIdentifierToSubscriptionSyncOverride = addSourceIdentifierToSubscriptionSyncOverride {
            return try addSourceIdentifierToSubscriptionSyncOverride(input)
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
    public func addTagsToResourceAsync(input: RDSModel.AddTagsToResourceMessage, completion: @escaping (Swift.Error?) -> ()) throws {
        if let addTagsToResourceAsyncOverride = addTagsToResourceAsyncOverride {
            return try addTagsToResourceAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the AddTagsToResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddTagsToResourceMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    public func addTagsToResourceSync(input: RDSModel.AddTagsToResourceMessage) throws {
        if let addTagsToResourceSyncOverride = addTagsToResourceSyncOverride {
            return try addTagsToResourceSyncOverride(input)
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
    public func applyPendingMaintenanceActionAsync(input: RDSModel.ApplyPendingMaintenanceActionMessage, completion: @escaping (HTTPResult<RDSModel.ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction>) -> ()) throws {
        if let applyPendingMaintenanceActionAsyncOverride = applyPendingMaintenanceActionAsyncOverride {
            return try applyPendingMaintenanceActionAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the ApplyPendingMaintenanceAction operation waiting for the response before returning.

     - Parameters:
         - input: The validated ApplyPendingMaintenanceActionMessage object being passed to this operation.
     - Returns: The ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidDBClusterState, invalidDBInstanceState, resourceNotFound.
     */
    public func applyPendingMaintenanceActionSync(input: RDSModel.ApplyPendingMaintenanceActionMessage) throws -> RDSModel.ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction {
        if let applyPendingMaintenanceActionSyncOverride = applyPendingMaintenanceActionSyncOverride {
            return try applyPendingMaintenanceActionSyncOverride(input)
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
    public func authorizeDBSecurityGroupIngressAsync(input: RDSModel.AuthorizeDBSecurityGroupIngressMessage, completion: @escaping (HTTPResult<RDSModel.AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress>) -> ()) throws {
        if let authorizeDBSecurityGroupIngressAsyncOverride = authorizeDBSecurityGroupIngressAsyncOverride {
            return try authorizeDBSecurityGroupIngressAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the AuthorizeDBSecurityGroupIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated AuthorizeDBSecurityGroupIngressMessage object being passed to this operation.
     - Returns: The AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationAlreadyExists, authorizationQuotaExceeded, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    public func authorizeDBSecurityGroupIngressSync(input: RDSModel.AuthorizeDBSecurityGroupIngressMessage) throws -> RDSModel.AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress {
        if let authorizeDBSecurityGroupIngressSyncOverride = authorizeDBSecurityGroupIngressSyncOverride {
            return try authorizeDBSecurityGroupIngressSyncOverride(input)
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
    public func backtrackDBClusterAsync(input: RDSModel.BacktrackDBClusterMessage, completion: @escaping (HTTPResult<RDSModel.DBClusterBacktrackForBacktrackDBCluster>) -> ()) throws {
        if let backtrackDBClusterAsyncOverride = backtrackDBClusterAsyncOverride {
            return try backtrackDBClusterAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the BacktrackDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated BacktrackDBClusterMessage object being passed to this operation.
     - Returns: The DBClusterBacktrackForBacktrackDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState.
     */
    public func backtrackDBClusterSync(input: RDSModel.BacktrackDBClusterMessage) throws -> RDSModel.DBClusterBacktrackForBacktrackDBCluster {
        if let backtrackDBClusterSyncOverride = backtrackDBClusterSyncOverride {
            return try backtrackDBClusterSyncOverride(input)
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
    public func copyDBClusterParameterGroupAsync(input: RDSModel.CopyDBClusterParameterGroupMessage, completion: @escaping (HTTPResult<RDSModel.CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup>) -> ()) throws {
        if let copyDBClusterParameterGroupAsyncOverride = copyDBClusterParameterGroupAsyncOverride {
            return try copyDBClusterParameterGroupAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the CopyDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    public func copyDBClusterParameterGroupSync(input: RDSModel.CopyDBClusterParameterGroupMessage) throws -> RDSModel.CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup {
        if let copyDBClusterParameterGroupSyncOverride = copyDBClusterParameterGroupSyncOverride {
            return try copyDBClusterParameterGroupSyncOverride(input)
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
    public func copyDBClusterSnapshotAsync(input: RDSModel.CopyDBClusterSnapshotMessage, completion: @escaping (HTTPResult<RDSModel.CopyDBClusterSnapshotResultForCopyDBClusterSnapshot>) -> ()) throws {
        if let copyDBClusterSnapshotAsyncOverride = copyDBClusterSnapshotAsyncOverride {
            return try copyDBClusterSnapshotAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the CopyDBClusterSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyDBClusterSnapshotMessage object being passed to this operation.
     - Returns: The CopyDBClusterSnapshotResultForCopyDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotAlreadyExists, dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, invalidDBClusterState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    public func copyDBClusterSnapshotSync(input: RDSModel.CopyDBClusterSnapshotMessage) throws -> RDSModel.CopyDBClusterSnapshotResultForCopyDBClusterSnapshot {
        if let copyDBClusterSnapshotSyncOverride = copyDBClusterSnapshotSyncOverride {
            return try copyDBClusterSnapshotSyncOverride(input)
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
    public func copyDBParameterGroupAsync(input: RDSModel.CopyDBParameterGroupMessage, completion: @escaping (HTTPResult<RDSModel.CopyDBParameterGroupResultForCopyDBParameterGroup>) -> ()) throws {
        if let copyDBParameterGroupAsyncOverride = copyDBParameterGroupAsyncOverride {
            return try copyDBParameterGroupAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the CopyDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyDBParameterGroupMessage object being passed to this operation.
     - Returns: The CopyDBParameterGroupResultForCopyDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    public func copyDBParameterGroupSync(input: RDSModel.CopyDBParameterGroupMessage) throws -> RDSModel.CopyDBParameterGroupResultForCopyDBParameterGroup {
        if let copyDBParameterGroupSyncOverride = copyDBParameterGroupSyncOverride {
            return try copyDBParameterGroupSyncOverride(input)
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
    public func copyDBSnapshotAsync(input: RDSModel.CopyDBSnapshotMessage, completion: @escaping (HTTPResult<RDSModel.CopyDBSnapshotResultForCopyDBSnapshot>) -> ()) throws {
        if let copyDBSnapshotAsyncOverride = copyDBSnapshotAsyncOverride {
            return try copyDBSnapshotAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the CopyDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyDBSnapshotMessage object being passed to this operation.
     - Returns: The CopyDBSnapshotResultForCopyDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotAlreadyExists, dBSnapshotNotFound, invalidDBSnapshotState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    public func copyDBSnapshotSync(input: RDSModel.CopyDBSnapshotMessage) throws -> RDSModel.CopyDBSnapshotResultForCopyDBSnapshot {
        if let copyDBSnapshotSyncOverride = copyDBSnapshotSyncOverride {
            return try copyDBSnapshotSyncOverride(input)
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
    public func copyOptionGroupAsync(input: RDSModel.CopyOptionGroupMessage, completion: @escaping (HTTPResult<RDSModel.CopyOptionGroupResultForCopyOptionGroup>) -> ()) throws {
        if let copyOptionGroupAsyncOverride = copyOptionGroupAsyncOverride {
            return try copyOptionGroupAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the CopyOptionGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyOptionGroupMessage object being passed to this operation.
     - Returns: The CopyOptionGroupResultForCopyOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: optionGroupAlreadyExists, optionGroupNotFound, optionGroupQuotaExceeded.
     */
    public func copyOptionGroupSync(input: RDSModel.CopyOptionGroupMessage) throws -> RDSModel.CopyOptionGroupResultForCopyOptionGroup {
        if let copyOptionGroupSyncOverride = copyOptionGroupSyncOverride {
            return try copyOptionGroupSyncOverride(input)
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
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, globalClusterNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBInstanceState, invalidDBSubnetGroupState, invalidGlobalClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    public func createDBClusterAsync(input: RDSModel.CreateDBClusterMessage, completion: @escaping (HTTPResult<RDSModel.CreateDBClusterResultForCreateDBCluster>) -> ()) throws {
        if let createDBClusterAsyncOverride = createDBClusterAsyncOverride {
            return try createDBClusterAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the CreateDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBClusterMessage object being passed to this operation.
     - Returns: The CreateDBClusterResultForCreateDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, globalClusterNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBInstanceState, invalidDBSubnetGroupState, invalidGlobalClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    public func createDBClusterSync(input: RDSModel.CreateDBClusterMessage) throws -> RDSModel.CreateDBClusterResultForCreateDBCluster {
        if let createDBClusterSyncOverride = createDBClusterSyncOverride {
            return try createDBClusterSyncOverride(input)
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
    public func createDBClusterEndpointAsync(input: RDSModel.CreateDBClusterEndpointMessage, completion: @escaping (HTTPResult<RDSModel.DBClusterEndpointForCreateDBClusterEndpoint>) -> ()) throws {
        if let createDBClusterEndpointAsyncOverride = createDBClusterEndpointAsyncOverride {
            return try createDBClusterEndpointAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the CreateDBClusterEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBClusterEndpointMessage object being passed to this operation.
     - Returns: The DBClusterEndpointForCreateDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterEndpointAlreadyExists, dBClusterEndpointQuotaExceeded, dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func createDBClusterEndpointSync(input: RDSModel.CreateDBClusterEndpointMessage) throws -> RDSModel.DBClusterEndpointForCreateDBClusterEndpoint {
        if let createDBClusterEndpointSyncOverride = createDBClusterEndpointSyncOverride {
            return try createDBClusterEndpointSyncOverride(input)
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
    public func createDBClusterParameterGroupAsync(input: RDSModel.CreateDBClusterParameterGroupMessage, completion: @escaping (HTTPResult<RDSModel.CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup>) -> ()) throws {
        if let createDBClusterParameterGroupAsyncOverride = createDBClusterParameterGroupAsyncOverride {
            return try createDBClusterParameterGroupAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the CreateDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    public func createDBClusterParameterGroupSync(input: RDSModel.CreateDBClusterParameterGroupMessage) throws -> RDSModel.CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup {
        if let createDBClusterParameterGroupSyncOverride = createDBClusterParameterGroupSyncOverride {
            return try createDBClusterParameterGroupSyncOverride(input)
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
    public func createDBClusterSnapshotAsync(input: RDSModel.CreateDBClusterSnapshotMessage, completion: @escaping (HTTPResult<RDSModel.CreateDBClusterSnapshotResultForCreateDBClusterSnapshot>) -> ()) throws {
        if let createDBClusterSnapshotAsyncOverride = createDBClusterSnapshotAsyncOverride {
            return try createDBClusterSnapshotAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the CreateDBClusterSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBClusterSnapshotMessage object being passed to this operation.
     - Returns: The CreateDBClusterSnapshotResultForCreateDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    public func createDBClusterSnapshotSync(input: RDSModel.CreateDBClusterSnapshotMessage) throws -> RDSModel.CreateDBClusterSnapshotResultForCreateDBClusterSnapshot {
        if let createDBClusterSnapshotSyncOverride = createDBClusterSnapshotSyncOverride {
            return try createDBClusterSnapshotSyncOverride(input)
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
    public func createDBInstanceAsync(input: RDSModel.CreateDBInstanceMessage, completion: @escaping (HTTPResult<RDSModel.CreateDBInstanceResultForCreateDBInstance>) -> ()) throws {
        if let createDBInstanceAsyncOverride = createDBInstanceAsyncOverride {
            return try createDBInstanceAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the CreateDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBInstanceMessage object being passed to this operation.
     - Returns: The CreateDBInstanceResultForCreateDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBClusterNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func createDBInstanceSync(input: RDSModel.CreateDBInstanceMessage) throws -> RDSModel.CreateDBInstanceResultForCreateDBInstance {
        if let createDBInstanceSyncOverride = createDBInstanceSyncOverride {
            return try createDBInstanceSyncOverride(input)
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
           The possible errors are: dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotAllowed, dBSubnetGroupNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSubnetGroup, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func createDBInstanceReadReplicaAsync(input: RDSModel.CreateDBInstanceReadReplicaMessage, completion: @escaping (HTTPResult<RDSModel.CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica>) -> ()) throws {
        if let createDBInstanceReadReplicaAsyncOverride = createDBInstanceReadReplicaAsyncOverride {
            return try createDBInstanceReadReplicaAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the CreateDBInstanceReadReplica operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBInstanceReadReplicaMessage object being passed to this operation.
     - Returns: The CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotAllowed, dBSubnetGroupNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSubnetGroup, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func createDBInstanceReadReplicaSync(input: RDSModel.CreateDBInstanceReadReplicaMessage) throws -> RDSModel.CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica {
        if let createDBInstanceReadReplicaSyncOverride = createDBInstanceReadReplicaSyncOverride {
            return try createDBInstanceReadReplicaSyncOverride(input)
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
    public func createDBParameterGroupAsync(input: RDSModel.CreateDBParameterGroupMessage, completion: @escaping (HTTPResult<RDSModel.CreateDBParameterGroupResultForCreateDBParameterGroup>) -> ()) throws {
        if let createDBParameterGroupAsyncOverride = createDBParameterGroupAsyncOverride {
            return try createDBParameterGroupAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the CreateDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBParameterGroupMessage object being passed to this operation.
     - Returns: The CreateDBParameterGroupResultForCreateDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    public func createDBParameterGroupSync(input: RDSModel.CreateDBParameterGroupMessage) throws -> RDSModel.CreateDBParameterGroupResultForCreateDBParameterGroup {
        if let createDBParameterGroupSyncOverride = createDBParameterGroupSyncOverride {
            return try createDBParameterGroupSyncOverride(input)
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
    public func createDBSecurityGroupAsync(input: RDSModel.CreateDBSecurityGroupMessage, completion: @escaping (HTTPResult<RDSModel.CreateDBSecurityGroupResultForCreateDBSecurityGroup>) -> ()) throws {
        if let createDBSecurityGroupAsyncOverride = createDBSecurityGroupAsyncOverride {
            return try createDBSecurityGroupAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the CreateDBSecurityGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBSecurityGroupMessage object being passed to this operation.
     - Returns: The CreateDBSecurityGroupResultForCreateDBSecurityGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSecurityGroupAlreadyExists, dBSecurityGroupNotSupported, dBSecurityGroupQuotaExceeded.
     */
    public func createDBSecurityGroupSync(input: RDSModel.CreateDBSecurityGroupMessage) throws -> RDSModel.CreateDBSecurityGroupResultForCreateDBSecurityGroup {
        if let createDBSecurityGroupSyncOverride = createDBSecurityGroupSyncOverride {
            return try createDBSecurityGroupSyncOverride(input)
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
    public func createDBSnapshotAsync(input: RDSModel.CreateDBSnapshotMessage, completion: @escaping (HTTPResult<RDSModel.CreateDBSnapshotResultForCreateDBSnapshot>) -> ()) throws {
        if let createDBSnapshotAsyncOverride = createDBSnapshotAsyncOverride {
            return try createDBSnapshotAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the CreateDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBSnapshotMessage object being passed to this operation.
     - Returns: The CreateDBSnapshotResultForCreateDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    public func createDBSnapshotSync(input: RDSModel.CreateDBSnapshotMessage) throws -> RDSModel.CreateDBSnapshotResultForCreateDBSnapshot {
        if let createDBSnapshotSyncOverride = createDBSnapshotSyncOverride {
            return try createDBSnapshotSyncOverride(input)
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
    public func createDBSubnetGroupAsync(input: RDSModel.CreateDBSubnetGroupMessage, completion: @escaping (HTTPResult<RDSModel.CreateDBSubnetGroupResultForCreateDBSubnetGroup>) -> ()) throws {
        if let createDBSubnetGroupAsyncOverride = createDBSubnetGroupAsyncOverride {
            return try createDBSubnetGroupAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the CreateDBSubnetGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBSubnetGroupMessage object being passed to this operation.
     - Returns: The CreateDBSubnetGroupResultForCreateDBSubnetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSubnetGroupAlreadyExists, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupQuotaExceeded, dBSubnetQuotaExceeded, invalidSubnet.
     */
    public func createDBSubnetGroupSync(input: RDSModel.CreateDBSubnetGroupMessage) throws -> RDSModel.CreateDBSubnetGroupResultForCreateDBSubnetGroup {
        if let createDBSubnetGroupSyncOverride = createDBSubnetGroupSyncOverride {
            return try createDBSubnetGroupSyncOverride(input)
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
    public func createEventSubscriptionAsync(input: RDSModel.CreateEventSubscriptionMessage, completion: @escaping (HTTPResult<RDSModel.CreateEventSubscriptionResultForCreateEventSubscription>) -> ()) throws {
        if let createEventSubscriptionAsyncOverride = createEventSubscriptionAsyncOverride {
            return try createEventSubscriptionAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the CreateEventSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateEventSubscriptionMessage object being passed to this operation.
     - Returns: The CreateEventSubscriptionResultForCreateEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, sourceNotFound, subscriptionAlreadyExist, subscriptionCategoryNotFound.
     */
    public func createEventSubscriptionSync(input: RDSModel.CreateEventSubscriptionMessage) throws -> RDSModel.CreateEventSubscriptionResultForCreateEventSubscription {
        if let createEventSubscriptionSyncOverride = createEventSubscriptionSyncOverride {
            return try createEventSubscriptionSyncOverride(input)
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
    public func createGlobalClusterAsync(input: RDSModel.CreateGlobalClusterMessage, completion: @escaping (HTTPResult<RDSModel.CreateGlobalClusterResultForCreateGlobalCluster>) -> ()) throws {
        if let createGlobalClusterAsyncOverride = createGlobalClusterAsyncOverride {
            return try createGlobalClusterAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the CreateGlobalCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateGlobalClusterMessage object being passed to this operation.
     - Returns: The CreateGlobalClusterResultForCreateGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, globalClusterAlreadyExists, globalClusterQuotaExceeded, invalidDBClusterState.
     */
    public func createGlobalClusterSync(input: RDSModel.CreateGlobalClusterMessage) throws -> RDSModel.CreateGlobalClusterResultForCreateGlobalCluster {
        if let createGlobalClusterSyncOverride = createGlobalClusterSyncOverride {
            return try createGlobalClusterSyncOverride(input)
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
    public func createOptionGroupAsync(input: RDSModel.CreateOptionGroupMessage, completion: @escaping (HTTPResult<RDSModel.CreateOptionGroupResultForCreateOptionGroup>) -> ()) throws {
        if let createOptionGroupAsyncOverride = createOptionGroupAsyncOverride {
            return try createOptionGroupAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the CreateOptionGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateOptionGroupMessage object being passed to this operation.
     - Returns: The CreateOptionGroupResultForCreateOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: optionGroupAlreadyExists, optionGroupQuotaExceeded.
     */
    public func createOptionGroupSync(input: RDSModel.CreateOptionGroupMessage) throws -> RDSModel.CreateOptionGroupResultForCreateOptionGroup {
        if let createOptionGroupSyncOverride = createOptionGroupSyncOverride {
            return try createOptionGroupSyncOverride(input)
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
    public func deleteDBClusterAsync(input: RDSModel.DeleteDBClusterMessage, completion: @escaping (HTTPResult<RDSModel.DeleteDBClusterResultForDeleteDBCluster>) -> ()) throws {
        if let deleteDBClusterAsyncOverride = deleteDBClusterAsyncOverride {
            return try deleteDBClusterAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DeleteDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBClusterMessage object being passed to this operation.
     - Returns: The DeleteDBClusterResultForDeleteDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    public func deleteDBClusterSync(input: RDSModel.DeleteDBClusterMessage) throws -> RDSModel.DeleteDBClusterResultForDeleteDBCluster {
        if let deleteDBClusterSyncOverride = deleteDBClusterSyncOverride {
            return try deleteDBClusterSyncOverride(input)
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
    public func deleteDBClusterEndpointAsync(input: RDSModel.DeleteDBClusterEndpointMessage, completion: @escaping (HTTPResult<RDSModel.DBClusterEndpointForDeleteDBClusterEndpoint>) -> ()) throws {
        if let deleteDBClusterEndpointAsyncOverride = deleteDBClusterEndpointAsyncOverride {
            return try deleteDBClusterEndpointAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DeleteDBClusterEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBClusterEndpointMessage object being passed to this operation.
     - Returns: The DBClusterEndpointForDeleteDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterEndpointNotFound, invalidDBClusterEndpointState, invalidDBClusterState.
     */
    public func deleteDBClusterEndpointSync(input: RDSModel.DeleteDBClusterEndpointMessage) throws -> RDSModel.DBClusterEndpointForDeleteDBClusterEndpoint {
        if let deleteDBClusterEndpointSyncOverride = deleteDBClusterEndpointSyncOverride {
            return try deleteDBClusterEndpointSyncOverride(input)
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
    public func deleteDBClusterParameterGroupAsync(input: RDSModel.DeleteDBClusterParameterGroupMessage, completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteDBClusterParameterGroupAsyncOverride = deleteDBClusterParameterGroupAsyncOverride {
            return try deleteDBClusterParameterGroupAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBClusterParameterGroupMessage object being passed to this operation.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func deleteDBClusterParameterGroupSync(input: RDSModel.DeleteDBClusterParameterGroupMessage) throws {
        if let deleteDBClusterParameterGroupSyncOverride = deleteDBClusterParameterGroupSyncOverride {
            return try deleteDBClusterParameterGroupSyncOverride(input)
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
    public func deleteDBClusterSnapshotAsync(input: RDSModel.DeleteDBClusterSnapshotMessage, completion: @escaping (HTTPResult<RDSModel.DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot>) -> ()) throws {
        if let deleteDBClusterSnapshotAsyncOverride = deleteDBClusterSnapshotAsyncOverride {
            return try deleteDBClusterSnapshotAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DeleteDBClusterSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBClusterSnapshotMessage object being passed to this operation.
     - Returns: The DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState.
     */
    public func deleteDBClusterSnapshotSync(input: RDSModel.DeleteDBClusterSnapshotMessage) throws -> RDSModel.DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot {
        if let deleteDBClusterSnapshotSyncOverride = deleteDBClusterSnapshotSyncOverride {
            return try deleteDBClusterSnapshotSyncOverride(input)
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
    public func deleteDBInstanceAsync(input: RDSModel.DeleteDBInstanceMessage, completion: @escaping (HTTPResult<RDSModel.DeleteDBInstanceResultForDeleteDBInstance>) -> ()) throws {
        if let deleteDBInstanceAsyncOverride = deleteDBInstanceAsyncOverride {
            return try deleteDBInstanceAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DeleteDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBInstanceMessage object being passed to this operation.
     - Returns: The DeleteDBInstanceResultForDeleteDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupQuotaExceeded, dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    public func deleteDBInstanceSync(input: RDSModel.DeleteDBInstanceMessage) throws -> RDSModel.DeleteDBInstanceResultForDeleteDBInstance {
        if let deleteDBInstanceSyncOverride = deleteDBInstanceSyncOverride {
            return try deleteDBInstanceSyncOverride(input)
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
    public func deleteDBInstanceAutomatedBackupAsync(input: RDSModel.DeleteDBInstanceAutomatedBackupMessage, completion: @escaping (HTTPResult<RDSModel.DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup>) -> ()) throws {
        if let deleteDBInstanceAutomatedBackupAsyncOverride = deleteDBInstanceAutomatedBackupAsyncOverride {
            return try deleteDBInstanceAutomatedBackupAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DeleteDBInstanceAutomatedBackup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBInstanceAutomatedBackupMessage object being passed to this operation.
     - Returns: The DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupNotFound, invalidDBInstanceAutomatedBackupState.
     */
    public func deleteDBInstanceAutomatedBackupSync(input: RDSModel.DeleteDBInstanceAutomatedBackupMessage) throws -> RDSModel.DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup {
        if let deleteDBInstanceAutomatedBackupSyncOverride = deleteDBInstanceAutomatedBackupSyncOverride {
            return try deleteDBInstanceAutomatedBackupSyncOverride(input)
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
    public func deleteDBParameterGroupAsync(input: RDSModel.DeleteDBParameterGroupMessage, completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteDBParameterGroupAsyncOverride = deleteDBParameterGroupAsyncOverride {
            return try deleteDBParameterGroupAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBParameterGroupMessage object being passed to this operation.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func deleteDBParameterGroupSync(input: RDSModel.DeleteDBParameterGroupMessage) throws {
        if let deleteDBParameterGroupSyncOverride = deleteDBParameterGroupSyncOverride {
            return try deleteDBParameterGroupSyncOverride(input)
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
    public func deleteDBSecurityGroupAsync(input: RDSModel.DeleteDBSecurityGroupMessage, completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteDBSecurityGroupAsyncOverride = deleteDBSecurityGroupAsyncOverride {
            return try deleteDBSecurityGroupAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteDBSecurityGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBSecurityGroupMessage object being passed to this operation.
     - Throws: dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    public func deleteDBSecurityGroupSync(input: RDSModel.DeleteDBSecurityGroupMessage) throws {
        if let deleteDBSecurityGroupSyncOverride = deleteDBSecurityGroupSyncOverride {
            return try deleteDBSecurityGroupSyncOverride(input)
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
    public func deleteDBSnapshotAsync(input: RDSModel.DeleteDBSnapshotMessage, completion: @escaping (HTTPResult<RDSModel.DeleteDBSnapshotResultForDeleteDBSnapshot>) -> ()) throws {
        if let deleteDBSnapshotAsyncOverride = deleteDBSnapshotAsyncOverride {
            return try deleteDBSnapshotAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DeleteDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBSnapshotMessage object being passed to this operation.
     - Returns: The DeleteDBSnapshotResultForDeleteDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound, invalidDBSnapshotState.
     */
    public func deleteDBSnapshotSync(input: RDSModel.DeleteDBSnapshotMessage) throws -> RDSModel.DeleteDBSnapshotResultForDeleteDBSnapshot {
        if let deleteDBSnapshotSyncOverride = deleteDBSnapshotSyncOverride {
            return try deleteDBSnapshotSyncOverride(input)
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
    public func deleteDBSubnetGroupAsync(input: RDSModel.DeleteDBSubnetGroupMessage, completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteDBSubnetGroupAsyncOverride = deleteDBSubnetGroupAsyncOverride {
            return try deleteDBSubnetGroupAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteDBSubnetGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBSubnetGroupMessage object being passed to this operation.
     - Throws: dBSubnetGroupNotFound, invalidDBSubnetGroupState, invalidDBSubnetState.
     */
    public func deleteDBSubnetGroupSync(input: RDSModel.DeleteDBSubnetGroupMessage) throws {
        if let deleteDBSubnetGroupSyncOverride = deleteDBSubnetGroupSyncOverride {
            return try deleteDBSubnetGroupSyncOverride(input)
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
    public func deleteEventSubscriptionAsync(input: RDSModel.DeleteEventSubscriptionMessage, completion: @escaping (HTTPResult<RDSModel.DeleteEventSubscriptionResultForDeleteEventSubscription>) -> ()) throws {
        if let deleteEventSubscriptionAsyncOverride = deleteEventSubscriptionAsyncOverride {
            return try deleteEventSubscriptionAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DeleteEventSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteEventSubscriptionMessage object being passed to this operation.
     - Returns: The DeleteEventSubscriptionResultForDeleteEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidEventSubscriptionState, subscriptionNotFound.
     */
    public func deleteEventSubscriptionSync(input: RDSModel.DeleteEventSubscriptionMessage) throws -> RDSModel.DeleteEventSubscriptionResultForDeleteEventSubscription {
        if let deleteEventSubscriptionSyncOverride = deleteEventSubscriptionSyncOverride {
            return try deleteEventSubscriptionSyncOverride(input)
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
    public func deleteGlobalClusterAsync(input: RDSModel.DeleteGlobalClusterMessage, completion: @escaping (HTTPResult<RDSModel.DeleteGlobalClusterResultForDeleteGlobalCluster>) -> ()) throws {
        if let deleteGlobalClusterAsyncOverride = deleteGlobalClusterAsyncOverride {
            return try deleteGlobalClusterAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DeleteGlobalCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteGlobalClusterMessage object being passed to this operation.
     - Returns: The DeleteGlobalClusterResultForDeleteGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalClusterNotFound, invalidGlobalClusterState.
     */
    public func deleteGlobalClusterSync(input: RDSModel.DeleteGlobalClusterMessage) throws -> RDSModel.DeleteGlobalClusterResultForDeleteGlobalCluster {
        if let deleteGlobalClusterSyncOverride = deleteGlobalClusterSyncOverride {
            return try deleteGlobalClusterSyncOverride(input)
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
    public func deleteOptionGroupAsync(input: RDSModel.DeleteOptionGroupMessage, completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteOptionGroupAsyncOverride = deleteOptionGroupAsyncOverride {
            return try deleteOptionGroupAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteOptionGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteOptionGroupMessage object being passed to this operation.
     - Throws: invalidOptionGroupState, optionGroupNotFound.
     */
    public func deleteOptionGroupSync(input: RDSModel.DeleteOptionGroupMessage) throws {
        if let deleteOptionGroupSyncOverride = deleteOptionGroupSyncOverride {
            return try deleteOptionGroupSyncOverride(input)
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
    public func describeAccountAttributesAsync(input: RDSModel.DescribeAccountAttributesMessage, completion: @escaping (HTTPResult<RDSModel.AccountAttributesMessageForDescribeAccountAttributes>) -> ()) throws {
        if let describeAccountAttributesAsyncOverride = describeAccountAttributesAsyncOverride {
            return try describeAccountAttributesAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeAccountAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAccountAttributesMessage object being passed to this operation.
     - Returns: The AccountAttributesMessageForDescribeAccountAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAccountAttributesSync(input: RDSModel.DescribeAccountAttributesMessage) throws -> RDSModel.AccountAttributesMessageForDescribeAccountAttributes {
        if let describeAccountAttributesSyncOverride = describeAccountAttributesSyncOverride {
            return try describeAccountAttributesSyncOverride(input)
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
    public func describeCertificatesAsync(input: RDSModel.DescribeCertificatesMessage, completion: @escaping (HTTPResult<RDSModel.CertificateMessageForDescribeCertificates>) -> ()) throws {
        if let describeCertificatesAsyncOverride = describeCertificatesAsyncOverride {
            return try describeCertificatesAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeCertificates operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCertificatesMessage object being passed to this operation.
     - Returns: The CertificateMessageForDescribeCertificates object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: certificateNotFound.
     */
    public func describeCertificatesSync(input: RDSModel.DescribeCertificatesMessage) throws -> RDSModel.CertificateMessageForDescribeCertificates {
        if let describeCertificatesSyncOverride = describeCertificatesSyncOverride {
            return try describeCertificatesSyncOverride(input)
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
    public func describeDBClusterBacktracksAsync(input: RDSModel.DescribeDBClusterBacktracksMessage, completion: @escaping (HTTPResult<RDSModel.DBClusterBacktrackMessageForDescribeDBClusterBacktracks>) -> ()) throws {
        if let describeDBClusterBacktracksAsyncOverride = describeDBClusterBacktracksAsyncOverride {
            return try describeDBClusterBacktracksAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeDBClusterBacktracks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterBacktracksMessage object being passed to this operation.
     - Returns: The DBClusterBacktrackMessageForDescribeDBClusterBacktracks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterBacktrackNotFound, dBClusterNotFound.
     */
    public func describeDBClusterBacktracksSync(input: RDSModel.DescribeDBClusterBacktracksMessage) throws -> RDSModel.DBClusterBacktrackMessageForDescribeDBClusterBacktracks {
        if let describeDBClusterBacktracksSyncOverride = describeDBClusterBacktracksSyncOverride {
            return try describeDBClusterBacktracksSyncOverride(input)
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
    public func describeDBClusterEndpointsAsync(input: RDSModel.DescribeDBClusterEndpointsMessage, completion: @escaping (HTTPResult<RDSModel.DBClusterEndpointMessageForDescribeDBClusterEndpoints>) -> ()) throws {
        if let describeDBClusterEndpointsAsyncOverride = describeDBClusterEndpointsAsyncOverride {
            return try describeDBClusterEndpointsAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeDBClusterEndpoints operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterEndpointsMessage object being passed to this operation.
     - Returns: The DBClusterEndpointMessageForDescribeDBClusterEndpoints object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound.
     */
    public func describeDBClusterEndpointsSync(input: RDSModel.DescribeDBClusterEndpointsMessage) throws -> RDSModel.DBClusterEndpointMessageForDescribeDBClusterEndpoints {
        if let describeDBClusterEndpointsSyncOverride = describeDBClusterEndpointsSyncOverride {
            return try describeDBClusterEndpointsSyncOverride(input)
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
    public func describeDBClusterParameterGroupsAsync(input: RDSModel.DescribeDBClusterParameterGroupsMessage, completion: @escaping (HTTPResult<RDSModel.DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups>) -> ()) throws {
        if let describeDBClusterParameterGroupsAsyncOverride = describeDBClusterParameterGroupsAsyncOverride {
            return try describeDBClusterParameterGroupsAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeDBClusterParameterGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterParameterGroupsMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    public func describeDBClusterParameterGroupsSync(input: RDSModel.DescribeDBClusterParameterGroupsMessage) throws -> RDSModel.DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups {
        if let describeDBClusterParameterGroupsSyncOverride = describeDBClusterParameterGroupsSyncOverride {
            return try describeDBClusterParameterGroupsSyncOverride(input)
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
    public func describeDBClusterParametersAsync(input: RDSModel.DescribeDBClusterParametersMessage, completion: @escaping (HTTPResult<RDSModel.DBClusterParameterGroupDetailsForDescribeDBClusterParameters>) -> ()) throws {
        if let describeDBClusterParametersAsyncOverride = describeDBClusterParametersAsyncOverride {
            return try describeDBClusterParametersAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeDBClusterParameters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterParametersMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupDetailsForDescribeDBClusterParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    public func describeDBClusterParametersSync(input: RDSModel.DescribeDBClusterParametersMessage) throws -> RDSModel.DBClusterParameterGroupDetailsForDescribeDBClusterParameters {
        if let describeDBClusterParametersSyncOverride = describeDBClusterParametersSyncOverride {
            return try describeDBClusterParametersSyncOverride(input)
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
    public func describeDBClusterSnapshotAttributesAsync(input: RDSModel.DescribeDBClusterSnapshotAttributesMessage, completion: @escaping (HTTPResult<RDSModel.DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes>) -> ()) throws {
        if let describeDBClusterSnapshotAttributesAsyncOverride = describeDBClusterSnapshotAttributesAsyncOverride {
            return try describeDBClusterSnapshotAttributesAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeDBClusterSnapshotAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotAttributesMessage object being passed to this operation.
     - Returns: The DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound.
     */
    public func describeDBClusterSnapshotAttributesSync(input: RDSModel.DescribeDBClusterSnapshotAttributesMessage) throws -> RDSModel.DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes {
        if let describeDBClusterSnapshotAttributesSyncOverride = describeDBClusterSnapshotAttributesSyncOverride {
            return try describeDBClusterSnapshotAttributesSyncOverride(input)
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
    public func describeDBClusterSnapshotsAsync(input: RDSModel.DescribeDBClusterSnapshotsMessage, completion: @escaping (HTTPResult<RDSModel.DBClusterSnapshotMessageForDescribeDBClusterSnapshots>) -> ()) throws {
        if let describeDBClusterSnapshotsAsyncOverride = describeDBClusterSnapshotsAsyncOverride {
            return try describeDBClusterSnapshotsAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeDBClusterSnapshots operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotsMessage object being passed to this operation.
     - Returns: The DBClusterSnapshotMessageForDescribeDBClusterSnapshots object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound.
     */
    public func describeDBClusterSnapshotsSync(input: RDSModel.DescribeDBClusterSnapshotsMessage) throws -> RDSModel.DBClusterSnapshotMessageForDescribeDBClusterSnapshots {
        if let describeDBClusterSnapshotsSyncOverride = describeDBClusterSnapshotsSyncOverride {
            return try describeDBClusterSnapshotsSyncOverride(input)
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
    public func describeDBClustersAsync(input: RDSModel.DescribeDBClustersMessage, completion: @escaping (HTTPResult<RDSModel.DBClusterMessageForDescribeDBClusters>) -> ()) throws {
        if let describeDBClustersAsyncOverride = describeDBClustersAsyncOverride {
            return try describeDBClustersAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeDBClusters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClustersMessage object being passed to this operation.
     - Returns: The DBClusterMessageForDescribeDBClusters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound.
     */
    public func describeDBClustersSync(input: RDSModel.DescribeDBClustersMessage) throws -> RDSModel.DBClusterMessageForDescribeDBClusters {
        if let describeDBClustersSyncOverride = describeDBClustersSyncOverride {
            return try describeDBClustersSyncOverride(input)
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
    public func describeDBEngineVersionsAsync(input: RDSModel.DescribeDBEngineVersionsMessage, completion: @escaping (HTTPResult<RDSModel.DBEngineVersionMessageForDescribeDBEngineVersions>) -> ()) throws {
        if let describeDBEngineVersionsAsyncOverride = describeDBEngineVersionsAsyncOverride {
            return try describeDBEngineVersionsAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeDBEngineVersions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBEngineVersionsMessage object being passed to this operation.
     - Returns: The DBEngineVersionMessageForDescribeDBEngineVersions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeDBEngineVersionsSync(input: RDSModel.DescribeDBEngineVersionsMessage) throws -> RDSModel.DBEngineVersionMessageForDescribeDBEngineVersions {
        if let describeDBEngineVersionsSyncOverride = describeDBEngineVersionsSyncOverride {
            return try describeDBEngineVersionsSyncOverride(input)
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
    public func describeDBInstanceAutomatedBackupsAsync(input: RDSModel.DescribeDBInstanceAutomatedBackupsMessage, completion: @escaping (HTTPResult<RDSModel.DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups>) -> ()) throws {
        if let describeDBInstanceAutomatedBackupsAsyncOverride = describeDBInstanceAutomatedBackupsAsyncOverride {
            return try describeDBInstanceAutomatedBackupsAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeDBInstanceAutomatedBackups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBInstanceAutomatedBackupsMessage object being passed to this operation.
     - Returns: The DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupNotFound.
     */
    public func describeDBInstanceAutomatedBackupsSync(input: RDSModel.DescribeDBInstanceAutomatedBackupsMessage) throws -> RDSModel.DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups {
        if let describeDBInstanceAutomatedBackupsSyncOverride = describeDBInstanceAutomatedBackupsSyncOverride {
            return try describeDBInstanceAutomatedBackupsSyncOverride(input)
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
    public func describeDBInstancesAsync(input: RDSModel.DescribeDBInstancesMessage, completion: @escaping (HTTPResult<RDSModel.DBInstanceMessageForDescribeDBInstances>) -> ()) throws {
        if let describeDBInstancesAsyncOverride = describeDBInstancesAsyncOverride {
            return try describeDBInstancesAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeDBInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBInstancesMessage object being passed to this operation.
     - Returns: The DBInstanceMessageForDescribeDBInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound.
     */
    public func describeDBInstancesSync(input: RDSModel.DescribeDBInstancesMessage) throws -> RDSModel.DBInstanceMessageForDescribeDBInstances {
        if let describeDBInstancesSyncOverride = describeDBInstancesSyncOverride {
            return try describeDBInstancesSyncOverride(input)
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
    public func describeDBLogFilesAsync(input: RDSModel.DescribeDBLogFilesMessage, completion: @escaping (HTTPResult<RDSModel.DescribeDBLogFilesResponseForDescribeDBLogFiles>) -> ()) throws {
        if let describeDBLogFilesAsyncOverride = describeDBLogFilesAsyncOverride {
            return try describeDBLogFilesAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeDBLogFiles operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBLogFilesMessage object being passed to this operation.
     - Returns: The DescribeDBLogFilesResponseForDescribeDBLogFiles object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound.
     */
    public func describeDBLogFilesSync(input: RDSModel.DescribeDBLogFilesMessage) throws -> RDSModel.DescribeDBLogFilesResponseForDescribeDBLogFiles {
        if let describeDBLogFilesSyncOverride = describeDBLogFilesSyncOverride {
            return try describeDBLogFilesSyncOverride(input)
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
    public func describeDBParameterGroupsAsync(input: RDSModel.DescribeDBParameterGroupsMessage, completion: @escaping (HTTPResult<RDSModel.DBParameterGroupsMessageForDescribeDBParameterGroups>) -> ()) throws {
        if let describeDBParameterGroupsAsyncOverride = describeDBParameterGroupsAsyncOverride {
            return try describeDBParameterGroupsAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeDBParameterGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBParameterGroupsMessage object being passed to this operation.
     - Returns: The DBParameterGroupsMessageForDescribeDBParameterGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    public func describeDBParameterGroupsSync(input: RDSModel.DescribeDBParameterGroupsMessage) throws -> RDSModel.DBParameterGroupsMessageForDescribeDBParameterGroups {
        if let describeDBParameterGroupsSyncOverride = describeDBParameterGroupsSyncOverride {
            return try describeDBParameterGroupsSyncOverride(input)
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
    public func describeDBParametersAsync(input: RDSModel.DescribeDBParametersMessage, completion: @escaping (HTTPResult<RDSModel.DBParameterGroupDetailsForDescribeDBParameters>) -> ()) throws {
        if let describeDBParametersAsyncOverride = describeDBParametersAsyncOverride {
            return try describeDBParametersAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeDBParameters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBParametersMessage object being passed to this operation.
     - Returns: The DBParameterGroupDetailsForDescribeDBParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    public func describeDBParametersSync(input: RDSModel.DescribeDBParametersMessage) throws -> RDSModel.DBParameterGroupDetailsForDescribeDBParameters {
        if let describeDBParametersSyncOverride = describeDBParametersSyncOverride {
            return try describeDBParametersSyncOverride(input)
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
    public func describeDBSecurityGroupsAsync(input: RDSModel.DescribeDBSecurityGroupsMessage, completion: @escaping (HTTPResult<RDSModel.DBSecurityGroupMessageForDescribeDBSecurityGroups>) -> ()) throws {
        if let describeDBSecurityGroupsAsyncOverride = describeDBSecurityGroupsAsyncOverride {
            return try describeDBSecurityGroupsAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeDBSecurityGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBSecurityGroupsMessage object being passed to this operation.
     - Returns: The DBSecurityGroupMessageForDescribeDBSecurityGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSecurityGroupNotFound.
     */
    public func describeDBSecurityGroupsSync(input: RDSModel.DescribeDBSecurityGroupsMessage) throws -> RDSModel.DBSecurityGroupMessageForDescribeDBSecurityGroups {
        if let describeDBSecurityGroupsSyncOverride = describeDBSecurityGroupsSyncOverride {
            return try describeDBSecurityGroupsSyncOverride(input)
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
    public func describeDBSnapshotAttributesAsync(input: RDSModel.DescribeDBSnapshotAttributesMessage, completion: @escaping (HTTPResult<RDSModel.DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes>) -> ()) throws {
        if let describeDBSnapshotAttributesAsyncOverride = describeDBSnapshotAttributesAsyncOverride {
            return try describeDBSnapshotAttributesAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeDBSnapshotAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBSnapshotAttributesMessage object being passed to this operation.
     - Returns: The DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound.
     */
    public func describeDBSnapshotAttributesSync(input: RDSModel.DescribeDBSnapshotAttributesMessage) throws -> RDSModel.DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes {
        if let describeDBSnapshotAttributesSyncOverride = describeDBSnapshotAttributesSyncOverride {
            return try describeDBSnapshotAttributesSyncOverride(input)
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
    public func describeDBSnapshotsAsync(input: RDSModel.DescribeDBSnapshotsMessage, completion: @escaping (HTTPResult<RDSModel.DBSnapshotMessageForDescribeDBSnapshots>) -> ()) throws {
        if let describeDBSnapshotsAsyncOverride = describeDBSnapshotsAsyncOverride {
            return try describeDBSnapshotsAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeDBSnapshots operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBSnapshotsMessage object being passed to this operation.
     - Returns: The DBSnapshotMessageForDescribeDBSnapshots object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound.
     */
    public func describeDBSnapshotsSync(input: RDSModel.DescribeDBSnapshotsMessage) throws -> RDSModel.DBSnapshotMessageForDescribeDBSnapshots {
        if let describeDBSnapshotsSyncOverride = describeDBSnapshotsSyncOverride {
            return try describeDBSnapshotsSyncOverride(input)
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
    public func describeDBSubnetGroupsAsync(input: RDSModel.DescribeDBSubnetGroupsMessage, completion: @escaping (HTTPResult<RDSModel.DBSubnetGroupMessageForDescribeDBSubnetGroups>) -> ()) throws {
        if let describeDBSubnetGroupsAsyncOverride = describeDBSubnetGroupsAsyncOverride {
            return try describeDBSubnetGroupsAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeDBSubnetGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBSubnetGroupsMessage object being passed to this operation.
     - Returns: The DBSubnetGroupMessageForDescribeDBSubnetGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSubnetGroupNotFound.
     */
    public func describeDBSubnetGroupsSync(input: RDSModel.DescribeDBSubnetGroupsMessage) throws -> RDSModel.DBSubnetGroupMessageForDescribeDBSubnetGroups {
        if let describeDBSubnetGroupsSyncOverride = describeDBSubnetGroupsSyncOverride {
            return try describeDBSubnetGroupsSyncOverride(input)
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
    public func describeEngineDefaultClusterParametersAsync(input: RDSModel.DescribeEngineDefaultClusterParametersMessage, completion: @escaping (HTTPResult<RDSModel.DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters>) -> ()) throws {
        if let describeEngineDefaultClusterParametersAsyncOverride = describeEngineDefaultClusterParametersAsyncOverride {
            return try describeEngineDefaultClusterParametersAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeEngineDefaultClusterParameters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEngineDefaultClusterParametersMessage object being passed to this operation.
     - Returns: The DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeEngineDefaultClusterParametersSync(input: RDSModel.DescribeEngineDefaultClusterParametersMessage) throws -> RDSModel.DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters {
        if let describeEngineDefaultClusterParametersSyncOverride = describeEngineDefaultClusterParametersSyncOverride {
            return try describeEngineDefaultClusterParametersSyncOverride(input)
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
    public func describeEngineDefaultParametersAsync(input: RDSModel.DescribeEngineDefaultParametersMessage, completion: @escaping (HTTPResult<RDSModel.DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters>) -> ()) throws {
        if let describeEngineDefaultParametersAsyncOverride = describeEngineDefaultParametersAsyncOverride {
            return try describeEngineDefaultParametersAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeEngineDefaultParameters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEngineDefaultParametersMessage object being passed to this operation.
     - Returns: The DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeEngineDefaultParametersSync(input: RDSModel.DescribeEngineDefaultParametersMessage) throws -> RDSModel.DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters {
        if let describeEngineDefaultParametersSyncOverride = describeEngineDefaultParametersSyncOverride {
            return try describeEngineDefaultParametersSyncOverride(input)
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
    public func describeEventCategoriesAsync(input: RDSModel.DescribeEventCategoriesMessage, completion: @escaping (HTTPResult<RDSModel.EventCategoriesMessageForDescribeEventCategories>) -> ()) throws {
        if let describeEventCategoriesAsyncOverride = describeEventCategoriesAsyncOverride {
            return try describeEventCategoriesAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeEventCategories operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEventCategoriesMessage object being passed to this operation.
     - Returns: The EventCategoriesMessageForDescribeEventCategories object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeEventCategoriesSync(input: RDSModel.DescribeEventCategoriesMessage) throws -> RDSModel.EventCategoriesMessageForDescribeEventCategories {
        if let describeEventCategoriesSyncOverride = describeEventCategoriesSyncOverride {
            return try describeEventCategoriesSyncOverride(input)
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
    public func describeEventSubscriptionsAsync(input: RDSModel.DescribeEventSubscriptionsMessage, completion: @escaping (HTTPResult<RDSModel.EventSubscriptionsMessageForDescribeEventSubscriptions>) -> ()) throws {
        if let describeEventSubscriptionsAsyncOverride = describeEventSubscriptionsAsyncOverride {
            return try describeEventSubscriptionsAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeEventSubscriptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEventSubscriptionsMessage object being passed to this operation.
     - Returns: The EventSubscriptionsMessageForDescribeEventSubscriptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: subscriptionNotFound.
     */
    public func describeEventSubscriptionsSync(input: RDSModel.DescribeEventSubscriptionsMessage) throws -> RDSModel.EventSubscriptionsMessageForDescribeEventSubscriptions {
        if let describeEventSubscriptionsSyncOverride = describeEventSubscriptionsSyncOverride {
            return try describeEventSubscriptionsSyncOverride(input)
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
    public func describeEventsAsync(input: RDSModel.DescribeEventsMessage, completion: @escaping (HTTPResult<RDSModel.EventsMessageForDescribeEvents>) -> ()) throws {
        if let describeEventsAsyncOverride = describeEventsAsyncOverride {
            return try describeEventsAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeEvents operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEventsMessage object being passed to this operation.
     - Returns: The EventsMessageForDescribeEvents object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeEventsSync(input: RDSModel.DescribeEventsMessage) throws -> RDSModel.EventsMessageForDescribeEvents {
        if let describeEventsSyncOverride = describeEventsSyncOverride {
            return try describeEventsSyncOverride(input)
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
    public func describeGlobalClustersAsync(input: RDSModel.DescribeGlobalClustersMessage, completion: @escaping (HTTPResult<RDSModel.GlobalClustersMessageForDescribeGlobalClusters>) -> ()) throws {
        if let describeGlobalClustersAsyncOverride = describeGlobalClustersAsyncOverride {
            return try describeGlobalClustersAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeGlobalClusters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeGlobalClustersMessage object being passed to this operation.
     - Returns: The GlobalClustersMessageForDescribeGlobalClusters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalClusterNotFound.
     */
    public func describeGlobalClustersSync(input: RDSModel.DescribeGlobalClustersMessage) throws -> RDSModel.GlobalClustersMessageForDescribeGlobalClusters {
        if let describeGlobalClustersSyncOverride = describeGlobalClustersSyncOverride {
            return try describeGlobalClustersSyncOverride(input)
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
    public func describeOptionGroupOptionsAsync(input: RDSModel.DescribeOptionGroupOptionsMessage, completion: @escaping (HTTPResult<RDSModel.OptionGroupOptionsMessageForDescribeOptionGroupOptions>) -> ()) throws {
        if let describeOptionGroupOptionsAsyncOverride = describeOptionGroupOptionsAsyncOverride {
            return try describeOptionGroupOptionsAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeOptionGroupOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeOptionGroupOptionsMessage object being passed to this operation.
     - Returns: The OptionGroupOptionsMessageForDescribeOptionGroupOptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeOptionGroupOptionsSync(input: RDSModel.DescribeOptionGroupOptionsMessage) throws -> RDSModel.OptionGroupOptionsMessageForDescribeOptionGroupOptions {
        if let describeOptionGroupOptionsSyncOverride = describeOptionGroupOptionsSyncOverride {
            return try describeOptionGroupOptionsSyncOverride(input)
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
    public func describeOptionGroupsAsync(input: RDSModel.DescribeOptionGroupsMessage, completion: @escaping (HTTPResult<RDSModel.OptionGroupsForDescribeOptionGroups>) -> ()) throws {
        if let describeOptionGroupsAsyncOverride = describeOptionGroupsAsyncOverride {
            return try describeOptionGroupsAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeOptionGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeOptionGroupsMessage object being passed to this operation.
     - Returns: The OptionGroupsForDescribeOptionGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: optionGroupNotFound.
     */
    public func describeOptionGroupsSync(input: RDSModel.DescribeOptionGroupsMessage) throws -> RDSModel.OptionGroupsForDescribeOptionGroups {
        if let describeOptionGroupsSyncOverride = describeOptionGroupsSyncOverride {
            return try describeOptionGroupsSyncOverride(input)
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
    public func describeOrderableDBInstanceOptionsAsync(input: RDSModel.DescribeOrderableDBInstanceOptionsMessage, completion: @escaping (HTTPResult<RDSModel.OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions>) -> ()) throws {
        if let describeOrderableDBInstanceOptionsAsyncOverride = describeOrderableDBInstanceOptionsAsyncOverride {
            return try describeOrderableDBInstanceOptionsAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeOrderableDBInstanceOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeOrderableDBInstanceOptionsMessage object being passed to this operation.
     - Returns: The OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeOrderableDBInstanceOptionsSync(input: RDSModel.DescribeOrderableDBInstanceOptionsMessage) throws -> RDSModel.OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions {
        if let describeOrderableDBInstanceOptionsSyncOverride = describeOrderableDBInstanceOptionsSyncOverride {
            return try describeOrderableDBInstanceOptionsSyncOverride(input)
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
    public func describePendingMaintenanceActionsAsync(input: RDSModel.DescribePendingMaintenanceActionsMessage, completion: @escaping (HTTPResult<RDSModel.PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions>) -> ()) throws {
        if let describePendingMaintenanceActionsAsyncOverride = describePendingMaintenanceActionsAsyncOverride {
            return try describePendingMaintenanceActionsAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribePendingMaintenanceActions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribePendingMaintenanceActionsMessage object being passed to this operation.
     - Returns: The PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: resourceNotFound.
     */
    public func describePendingMaintenanceActionsSync(input: RDSModel.DescribePendingMaintenanceActionsMessage) throws -> RDSModel.PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions {
        if let describePendingMaintenanceActionsSyncOverride = describePendingMaintenanceActionsSyncOverride {
            return try describePendingMaintenanceActionsSyncOverride(input)
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
    public func describeReservedDBInstancesAsync(input: RDSModel.DescribeReservedDBInstancesMessage, completion: @escaping (HTTPResult<RDSModel.ReservedDBInstanceMessageForDescribeReservedDBInstances>) -> ()) throws {
        if let describeReservedDBInstancesAsyncOverride = describeReservedDBInstancesAsyncOverride {
            return try describeReservedDBInstancesAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeReservedDBInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesMessage object being passed to this operation.
     - Returns: The ReservedDBInstanceMessageForDescribeReservedDBInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: reservedDBInstanceNotFound.
     */
    public func describeReservedDBInstancesSync(input: RDSModel.DescribeReservedDBInstancesMessage) throws -> RDSModel.ReservedDBInstanceMessageForDescribeReservedDBInstances {
        if let describeReservedDBInstancesSyncOverride = describeReservedDBInstancesSyncOverride {
            return try describeReservedDBInstancesSyncOverride(input)
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
    public func describeReservedDBInstancesOfferingsAsync(input: RDSModel.DescribeReservedDBInstancesOfferingsMessage, completion: @escaping (HTTPResult<RDSModel.ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings>) -> ()) throws {
        if let describeReservedDBInstancesOfferingsAsyncOverride = describeReservedDBInstancesOfferingsAsyncOverride {
            return try describeReservedDBInstancesOfferingsAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeReservedDBInstancesOfferings operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesOfferingsMessage object being passed to this operation.
     - Returns: The ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: reservedDBInstancesOfferingNotFound.
     */
    public func describeReservedDBInstancesOfferingsSync(input: RDSModel.DescribeReservedDBInstancesOfferingsMessage) throws -> RDSModel.ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings {
        if let describeReservedDBInstancesOfferingsSyncOverride = describeReservedDBInstancesOfferingsSyncOverride {
            return try describeReservedDBInstancesOfferingsSyncOverride(input)
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
    public func describeSourceRegionsAsync(input: RDSModel.DescribeSourceRegionsMessage, completion: @escaping (HTTPResult<RDSModel.SourceRegionMessageForDescribeSourceRegions>) -> ()) throws {
        if let describeSourceRegionsAsyncOverride = describeSourceRegionsAsyncOverride {
            return try describeSourceRegionsAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeSourceRegions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSourceRegionsMessage object being passed to this operation.
     - Returns: The SourceRegionMessageForDescribeSourceRegions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSourceRegionsSync(input: RDSModel.DescribeSourceRegionsMessage) throws -> RDSModel.SourceRegionMessageForDescribeSourceRegions {
        if let describeSourceRegionsSyncOverride = describeSourceRegionsSyncOverride {
            return try describeSourceRegionsSyncOverride(input)
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
    public func describeValidDBInstanceModificationsAsync(input: RDSModel.DescribeValidDBInstanceModificationsMessage, completion: @escaping (HTTPResult<RDSModel.DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications>) -> ()) throws {
        if let describeValidDBInstanceModificationsAsyncOverride = describeValidDBInstanceModificationsAsyncOverride {
            return try describeValidDBInstanceModificationsAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeValidDBInstanceModifications operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeValidDBInstanceModificationsMessage object being passed to this operation.
     - Returns: The DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    public func describeValidDBInstanceModificationsSync(input: RDSModel.DescribeValidDBInstanceModificationsMessage) throws -> RDSModel.DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications {
        if let describeValidDBInstanceModificationsSyncOverride = describeValidDBInstanceModificationsSyncOverride {
            return try describeValidDBInstanceModificationsSyncOverride(input)
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
    public func downloadDBLogFilePortionAsync(input: RDSModel.DownloadDBLogFilePortionMessage, completion: @escaping (HTTPResult<RDSModel.DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion>) -> ()) throws {
        if let downloadDBLogFilePortionAsyncOverride = downloadDBLogFilePortionAsyncOverride {
            return try downloadDBLogFilePortionAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DownloadDBLogFilePortion operation waiting for the response before returning.

     - Parameters:
         - input: The validated DownloadDBLogFilePortionMessage object being passed to this operation.
     - Returns: The DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, dBLogFileNotFound.
     */
    public func downloadDBLogFilePortionSync(input: RDSModel.DownloadDBLogFilePortionMessage) throws -> RDSModel.DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion {
        if let downloadDBLogFilePortionSyncOverride = downloadDBLogFilePortionSyncOverride {
            return try downloadDBLogFilePortionSyncOverride(input)
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
    public func failoverDBClusterAsync(input: RDSModel.FailoverDBClusterMessage, completion: @escaping (HTTPResult<RDSModel.FailoverDBClusterResultForFailoverDBCluster>) -> ()) throws {
        if let failoverDBClusterAsyncOverride = failoverDBClusterAsyncOverride {
            return try failoverDBClusterAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the FailoverDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated FailoverDBClusterMessage object being passed to this operation.
     - Returns: The FailoverDBClusterResultForFailoverDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func failoverDBClusterSync(input: RDSModel.FailoverDBClusterMessage) throws -> RDSModel.FailoverDBClusterResultForFailoverDBCluster {
        if let failoverDBClusterSyncOverride = failoverDBClusterSyncOverride {
            return try failoverDBClusterSyncOverride(input)
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
    public func listTagsForResourceAsync(input: RDSModel.ListTagsForResourceMessage, completion: @escaping (HTTPResult<RDSModel.TagListMessageForListTagsForResource>) -> ()) throws {
        if let listTagsForResourceAsyncOverride = listTagsForResourceAsyncOverride {
            return try listTagsForResourceAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceMessage object being passed to this operation.
     - Returns: The TagListMessageForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    public func listTagsForResourceSync(input: RDSModel.ListTagsForResourceMessage) throws -> RDSModel.TagListMessageForListTagsForResource {
        if let listTagsForResourceSyncOverride = listTagsForResourceSyncOverride {
            return try listTagsForResourceSyncOverride(input)
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
    public func modifyCurrentDBClusterCapacityAsync(input: RDSModel.ModifyCurrentDBClusterCapacityMessage, completion: @escaping (HTTPResult<RDSModel.DBClusterCapacityInfoForModifyCurrentDBClusterCapacity>) -> ()) throws {
        if let modifyCurrentDBClusterCapacityAsyncOverride = modifyCurrentDBClusterCapacityAsyncOverride {
            return try modifyCurrentDBClusterCapacityAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the ModifyCurrentDBClusterCapacity operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyCurrentDBClusterCapacityMessage object being passed to this operation.
     - Returns: The DBClusterCapacityInfoForModifyCurrentDBClusterCapacity object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterCapacity, invalidDBClusterState.
     */
    public func modifyCurrentDBClusterCapacitySync(input: RDSModel.ModifyCurrentDBClusterCapacityMessage) throws -> RDSModel.DBClusterCapacityInfoForModifyCurrentDBClusterCapacity {
        if let modifyCurrentDBClusterCapacitySyncOverride = modifyCurrentDBClusterCapacitySyncOverride {
            return try modifyCurrentDBClusterCapacitySyncOverride(input)
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
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBSubnetGroupNotFound, invalidDBClusterState, invalidDBInstanceState, invalidDBSecurityGroupState, invalidDBSubnetGroupState, invalidSubnet, invalidVPCNetworkState, storageQuotaExceeded.
     */
    public func modifyDBClusterAsync(input: RDSModel.ModifyDBClusterMessage, completion: @escaping (HTTPResult<RDSModel.ModifyDBClusterResultForModifyDBCluster>) -> ()) throws {
        if let modifyDBClusterAsyncOverride = modifyDBClusterAsyncOverride {
            return try modifyDBClusterAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the ModifyDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBClusterMessage object being passed to this operation.
     - Returns: The ModifyDBClusterResultForModifyDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBSubnetGroupNotFound, invalidDBClusterState, invalidDBInstanceState, invalidDBSecurityGroupState, invalidDBSubnetGroupState, invalidSubnet, invalidVPCNetworkState, storageQuotaExceeded.
     */
    public func modifyDBClusterSync(input: RDSModel.ModifyDBClusterMessage) throws -> RDSModel.ModifyDBClusterResultForModifyDBCluster {
        if let modifyDBClusterSyncOverride = modifyDBClusterSyncOverride {
            return try modifyDBClusterSyncOverride(input)
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
    public func modifyDBClusterEndpointAsync(input: RDSModel.ModifyDBClusterEndpointMessage, completion: @escaping (HTTPResult<RDSModel.DBClusterEndpointForModifyDBClusterEndpoint>) -> ()) throws {
        if let modifyDBClusterEndpointAsyncOverride = modifyDBClusterEndpointAsyncOverride {
            return try modifyDBClusterEndpointAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the ModifyDBClusterEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBClusterEndpointMessage object being passed to this operation.
     - Returns: The DBClusterEndpointForModifyDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterEndpointNotFound, dBInstanceNotFound, invalidDBClusterEndpointState, invalidDBClusterState, invalidDBInstanceState.
     */
    public func modifyDBClusterEndpointSync(input: RDSModel.ModifyDBClusterEndpointMessage) throws -> RDSModel.DBClusterEndpointForModifyDBClusterEndpoint {
        if let modifyDBClusterEndpointSyncOverride = modifyDBClusterEndpointSyncOverride {
            return try modifyDBClusterEndpointSyncOverride(input)
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
    public func modifyDBClusterParameterGroupAsync(input: RDSModel.ModifyDBClusterParameterGroupMessage, completion: @escaping (HTTPResult<RDSModel.DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup>) -> ()) throws {
        if let modifyDBClusterParameterGroupAsyncOverride = modifyDBClusterParameterGroupAsyncOverride {
            return try modifyDBClusterParameterGroupAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the ModifyDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func modifyDBClusterParameterGroupSync(input: RDSModel.ModifyDBClusterParameterGroupMessage) throws -> RDSModel.DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup {
        if let modifyDBClusterParameterGroupSyncOverride = modifyDBClusterParameterGroupSyncOverride {
            return try modifyDBClusterParameterGroupSyncOverride(input)
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
    public func modifyDBClusterSnapshotAttributeAsync(input: RDSModel.ModifyDBClusterSnapshotAttributeMessage, completion: @escaping (HTTPResult<RDSModel.ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute>) -> ()) throws {
        if let modifyDBClusterSnapshotAttributeAsyncOverride = modifyDBClusterSnapshotAttributeAsyncOverride {
            return try modifyDBClusterSnapshotAttributeAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the ModifyDBClusterSnapshotAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBClusterSnapshotAttributeMessage object being passed to this operation.
     - Returns: The ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, sharedSnapshotQuotaExceeded.
     */
    public func modifyDBClusterSnapshotAttributeSync(input: RDSModel.ModifyDBClusterSnapshotAttributeMessage) throws -> RDSModel.ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute {
        if let modifyDBClusterSnapshotAttributeSyncOverride = modifyDBClusterSnapshotAttributeSyncOverride {
            return try modifyDBClusterSnapshotAttributeSyncOverride(input)
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
    public func modifyDBInstanceAsync(input: RDSModel.ModifyDBInstanceMessage, completion: @escaping (HTTPResult<RDSModel.ModifyDBInstanceResultForModifyDBInstance>) -> ()) throws {
        if let modifyDBInstanceAsyncOverride = modifyDBInstanceAsyncOverride {
            return try modifyDBInstanceAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the ModifyDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBInstanceMessage object being passed to this operation.
     - Returns: The ModifyDBInstanceResultForModifyDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, certificateNotFound, dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBUpgradeDependencyFailure, domainNotFound, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSecurityGroupState, invalidVPCNetworkState, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func modifyDBInstanceSync(input: RDSModel.ModifyDBInstanceMessage) throws -> RDSModel.ModifyDBInstanceResultForModifyDBInstance {
        if let modifyDBInstanceSyncOverride = modifyDBInstanceSyncOverride {
            return try modifyDBInstanceSyncOverride(input)
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
    public func modifyDBParameterGroupAsync(input: RDSModel.ModifyDBParameterGroupMessage, completion: @escaping (HTTPResult<RDSModel.DBParameterGroupNameMessageForModifyDBParameterGroup>) -> ()) throws {
        if let modifyDBParameterGroupAsyncOverride = modifyDBParameterGroupAsyncOverride {
            return try modifyDBParameterGroupAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the ModifyDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBParameterGroupMessage object being passed to this operation.
     - Returns: The DBParameterGroupNameMessageForModifyDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func modifyDBParameterGroupSync(input: RDSModel.ModifyDBParameterGroupMessage) throws -> RDSModel.DBParameterGroupNameMessageForModifyDBParameterGroup {
        if let modifyDBParameterGroupSyncOverride = modifyDBParameterGroupSyncOverride {
            return try modifyDBParameterGroupSyncOverride(input)
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
    public func modifyDBSnapshotAsync(input: RDSModel.ModifyDBSnapshotMessage, completion: @escaping (HTTPResult<RDSModel.ModifyDBSnapshotResultForModifyDBSnapshot>) -> ()) throws {
        if let modifyDBSnapshotAsyncOverride = modifyDBSnapshotAsyncOverride {
            return try modifyDBSnapshotAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the ModifyDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBSnapshotMessage object being passed to this operation.
     - Returns: The ModifyDBSnapshotResultForModifyDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound.
     */
    public func modifyDBSnapshotSync(input: RDSModel.ModifyDBSnapshotMessage) throws -> RDSModel.ModifyDBSnapshotResultForModifyDBSnapshot {
        if let modifyDBSnapshotSyncOverride = modifyDBSnapshotSyncOverride {
            return try modifyDBSnapshotSyncOverride(input)
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
    public func modifyDBSnapshotAttributeAsync(input: RDSModel.ModifyDBSnapshotAttributeMessage, completion: @escaping (HTTPResult<RDSModel.ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute>) -> ()) throws {
        if let modifyDBSnapshotAttributeAsyncOverride = modifyDBSnapshotAttributeAsyncOverride {
            return try modifyDBSnapshotAttributeAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the ModifyDBSnapshotAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBSnapshotAttributeMessage object being passed to this operation.
     - Returns: The ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound, invalidDBSnapshotState, sharedSnapshotQuotaExceeded.
     */
    public func modifyDBSnapshotAttributeSync(input: RDSModel.ModifyDBSnapshotAttributeMessage) throws -> RDSModel.ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute {
        if let modifyDBSnapshotAttributeSyncOverride = modifyDBSnapshotAttributeSyncOverride {
            return try modifyDBSnapshotAttributeSyncOverride(input)
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
    public func modifyDBSubnetGroupAsync(input: RDSModel.ModifyDBSubnetGroupMessage, completion: @escaping (HTTPResult<RDSModel.ModifyDBSubnetGroupResultForModifyDBSubnetGroup>) -> ()) throws {
        if let modifyDBSubnetGroupAsyncOverride = modifyDBSubnetGroupAsyncOverride {
            return try modifyDBSubnetGroupAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the ModifyDBSubnetGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBSubnetGroupMessage object being passed to this operation.
     - Returns: The ModifyDBSubnetGroupResultForModifyDBSubnetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, dBSubnetQuotaExceeded, invalidSubnet, subnetAlreadyInUse.
     */
    public func modifyDBSubnetGroupSync(input: RDSModel.ModifyDBSubnetGroupMessage) throws -> RDSModel.ModifyDBSubnetGroupResultForModifyDBSubnetGroup {
        if let modifyDBSubnetGroupSyncOverride = modifyDBSubnetGroupSyncOverride {
            return try modifyDBSubnetGroupSyncOverride(input)
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
    public func modifyEventSubscriptionAsync(input: RDSModel.ModifyEventSubscriptionMessage, completion: @escaping (HTTPResult<RDSModel.ModifyEventSubscriptionResultForModifyEventSubscription>) -> ()) throws {
        if let modifyEventSubscriptionAsyncOverride = modifyEventSubscriptionAsyncOverride {
            return try modifyEventSubscriptionAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the ModifyEventSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyEventSubscriptionMessage object being passed to this operation.
     - Returns: The ModifyEventSubscriptionResultForModifyEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, subscriptionCategoryNotFound, subscriptionNotFound.
     */
    public func modifyEventSubscriptionSync(input: RDSModel.ModifyEventSubscriptionMessage) throws -> RDSModel.ModifyEventSubscriptionResultForModifyEventSubscription {
        if let modifyEventSubscriptionSyncOverride = modifyEventSubscriptionSyncOverride {
            return try modifyEventSubscriptionSyncOverride(input)
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
    public func modifyGlobalClusterAsync(input: RDSModel.ModifyGlobalClusterMessage, completion: @escaping (HTTPResult<RDSModel.ModifyGlobalClusterResultForModifyGlobalCluster>) -> ()) throws {
        if let modifyGlobalClusterAsyncOverride = modifyGlobalClusterAsyncOverride {
            return try modifyGlobalClusterAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the ModifyGlobalCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyGlobalClusterMessage object being passed to this operation.
     - Returns: The ModifyGlobalClusterResultForModifyGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalClusterNotFound, invalidGlobalClusterState.
     */
    public func modifyGlobalClusterSync(input: RDSModel.ModifyGlobalClusterMessage) throws -> RDSModel.ModifyGlobalClusterResultForModifyGlobalCluster {
        if let modifyGlobalClusterSyncOverride = modifyGlobalClusterSyncOverride {
            return try modifyGlobalClusterSyncOverride(input)
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
    public func modifyOptionGroupAsync(input: RDSModel.ModifyOptionGroupMessage, completion: @escaping (HTTPResult<RDSModel.ModifyOptionGroupResultForModifyOptionGroup>) -> ()) throws {
        if let modifyOptionGroupAsyncOverride = modifyOptionGroupAsyncOverride {
            return try modifyOptionGroupAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the ModifyOptionGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyOptionGroupMessage object being passed to this operation.
     - Returns: The ModifyOptionGroupResultForModifyOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOptionGroupState, optionGroupNotFound.
     */
    public func modifyOptionGroupSync(input: RDSModel.ModifyOptionGroupMessage) throws -> RDSModel.ModifyOptionGroupResultForModifyOptionGroup {
        if let modifyOptionGroupSyncOverride = modifyOptionGroupSyncOverride {
            return try modifyOptionGroupSyncOverride(input)
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
    public func promoteReadReplicaAsync(input: RDSModel.PromoteReadReplicaMessage, completion: @escaping (HTTPResult<RDSModel.PromoteReadReplicaResultForPromoteReadReplica>) -> ()) throws {
        if let promoteReadReplicaAsyncOverride = promoteReadReplicaAsyncOverride {
            return try promoteReadReplicaAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the PromoteReadReplica operation waiting for the response before returning.

     - Parameters:
         - input: The validated PromoteReadReplicaMessage object being passed to this operation.
     - Returns: The PromoteReadReplicaResultForPromoteReadReplica object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    public func promoteReadReplicaSync(input: RDSModel.PromoteReadReplicaMessage) throws -> RDSModel.PromoteReadReplicaResultForPromoteReadReplica {
        if let promoteReadReplicaSyncOverride = promoteReadReplicaSyncOverride {
            return try promoteReadReplicaSyncOverride(input)
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
    public func promoteReadReplicaDBClusterAsync(input: RDSModel.PromoteReadReplicaDBClusterMessage, completion: @escaping (HTTPResult<RDSModel.PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster>) -> ()) throws {
        if let promoteReadReplicaDBClusterAsyncOverride = promoteReadReplicaDBClusterAsyncOverride {
            return try promoteReadReplicaDBClusterAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the PromoteReadReplicaDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated PromoteReadReplicaDBClusterMessage object being passed to this operation.
     - Returns: The PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState.
     */
    public func promoteReadReplicaDBClusterSync(input: RDSModel.PromoteReadReplicaDBClusterMessage) throws -> RDSModel.PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster {
        if let promoteReadReplicaDBClusterSyncOverride = promoteReadReplicaDBClusterSyncOverride {
            return try promoteReadReplicaDBClusterSyncOverride(input)
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
    public func purchaseReservedDBInstancesOfferingAsync(input: RDSModel.PurchaseReservedDBInstancesOfferingMessage, completion: @escaping (HTTPResult<RDSModel.PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering>) -> ()) throws {
        if let purchaseReservedDBInstancesOfferingAsyncOverride = purchaseReservedDBInstancesOfferingAsyncOverride {
            return try purchaseReservedDBInstancesOfferingAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the PurchaseReservedDBInstancesOffering operation waiting for the response before returning.

     - Parameters:
         - input: The validated PurchaseReservedDBInstancesOfferingMessage object being passed to this operation.
     - Returns: The PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: reservedDBInstanceAlreadyExists, reservedDBInstanceQuotaExceeded, reservedDBInstancesOfferingNotFound.
     */
    public func purchaseReservedDBInstancesOfferingSync(input: RDSModel.PurchaseReservedDBInstancesOfferingMessage) throws -> RDSModel.PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering {
        if let purchaseReservedDBInstancesOfferingSyncOverride = purchaseReservedDBInstancesOfferingSyncOverride {
            return try purchaseReservedDBInstancesOfferingSyncOverride(input)
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
    public func rebootDBInstanceAsync(input: RDSModel.RebootDBInstanceMessage, completion: @escaping (HTTPResult<RDSModel.RebootDBInstanceResultForRebootDBInstance>) -> ()) throws {
        if let rebootDBInstanceAsyncOverride = rebootDBInstanceAsyncOverride {
            return try rebootDBInstanceAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the RebootDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated RebootDBInstanceMessage object being passed to this operation.
     - Returns: The RebootDBInstanceResultForRebootDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    public func rebootDBInstanceSync(input: RDSModel.RebootDBInstanceMessage) throws -> RDSModel.RebootDBInstanceResultForRebootDBInstance {
        if let rebootDBInstanceSyncOverride = rebootDBInstanceSyncOverride {
            return try rebootDBInstanceSyncOverride(input)
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
    public func removeFromGlobalClusterAsync(input: RDSModel.RemoveFromGlobalClusterMessage, completion: @escaping (HTTPResult<RDSModel.RemoveFromGlobalClusterResultForRemoveFromGlobalCluster>) -> ()) throws {
        if let removeFromGlobalClusterAsyncOverride = removeFromGlobalClusterAsyncOverride {
            return try removeFromGlobalClusterAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the RemoveFromGlobalCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveFromGlobalClusterMessage object being passed to this operation.
     - Returns: The RemoveFromGlobalClusterResultForRemoveFromGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, globalClusterNotFound, invalidGlobalClusterState.
     */
    public func removeFromGlobalClusterSync(input: RDSModel.RemoveFromGlobalClusterMessage) throws -> RDSModel.RemoveFromGlobalClusterResultForRemoveFromGlobalCluster {
        if let removeFromGlobalClusterSyncOverride = removeFromGlobalClusterSyncOverride {
            return try removeFromGlobalClusterSyncOverride(input)
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
    public func removeRoleFromDBClusterAsync(input: RDSModel.RemoveRoleFromDBClusterMessage, completion: @escaping (Swift.Error?) -> ()) throws {
        if let removeRoleFromDBClusterAsyncOverride = removeRoleFromDBClusterAsyncOverride {
            return try removeRoleFromDBClusterAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the RemoveRoleFromDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveRoleFromDBClusterMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBClusterRoleNotFound, invalidDBClusterState.
     */
    public func removeRoleFromDBClusterSync(input: RDSModel.RemoveRoleFromDBClusterMessage) throws {
        if let removeRoleFromDBClusterSyncOverride = removeRoleFromDBClusterSyncOverride {
            return try removeRoleFromDBClusterSyncOverride(input)
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
    public func removeRoleFromDBInstanceAsync(input: RDSModel.RemoveRoleFromDBInstanceMessage, completion: @escaping (Swift.Error?) -> ()) throws {
        if let removeRoleFromDBInstanceAsyncOverride = removeRoleFromDBInstanceAsyncOverride {
            return try removeRoleFromDBInstanceAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the RemoveRoleFromDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveRoleFromDBInstanceMessage object being passed to this operation.
     - Throws: dBInstanceNotFound, dBInstanceRoleNotFound, invalidDBInstanceState.
     */
    public func removeRoleFromDBInstanceSync(input: RDSModel.RemoveRoleFromDBInstanceMessage) throws {
        if let removeRoleFromDBInstanceSyncOverride = removeRoleFromDBInstanceSyncOverride {
            return try removeRoleFromDBInstanceSyncOverride(input)
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
    public func removeSourceIdentifierFromSubscriptionAsync(input: RDSModel.RemoveSourceIdentifierFromSubscriptionMessage, completion: @escaping (HTTPResult<RDSModel.RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription>) -> ()) throws {
        if let removeSourceIdentifierFromSubscriptionAsyncOverride = removeSourceIdentifierFromSubscriptionAsyncOverride {
            return try removeSourceIdentifierFromSubscriptionAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the RemoveSourceIdentifierFromSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveSourceIdentifierFromSubscriptionMessage object being passed to this operation.
     - Returns: The RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: sourceNotFound, subscriptionNotFound.
     */
    public func removeSourceIdentifierFromSubscriptionSync(input: RDSModel.RemoveSourceIdentifierFromSubscriptionMessage) throws -> RDSModel.RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription {
        if let removeSourceIdentifierFromSubscriptionSyncOverride = removeSourceIdentifierFromSubscriptionSyncOverride {
            return try removeSourceIdentifierFromSubscriptionSyncOverride(input)
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
    public func removeTagsFromResourceAsync(input: RDSModel.RemoveTagsFromResourceMessage, completion: @escaping (Swift.Error?) -> ()) throws {
        if let removeTagsFromResourceAsyncOverride = removeTagsFromResourceAsyncOverride {
            return try removeTagsFromResourceAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the RemoveTagsFromResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveTagsFromResourceMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    public func removeTagsFromResourceSync(input: RDSModel.RemoveTagsFromResourceMessage) throws {
        if let removeTagsFromResourceSyncOverride = removeTagsFromResourceSyncOverride {
            return try removeTagsFromResourceSyncOverride(input)
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
    public func resetDBClusterParameterGroupAsync(input: RDSModel.ResetDBClusterParameterGroupMessage, completion: @escaping (HTTPResult<RDSModel.DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup>) -> ()) throws {
        if let resetDBClusterParameterGroupAsyncOverride = resetDBClusterParameterGroupAsyncOverride {
            return try resetDBClusterParameterGroupAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the ResetDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func resetDBClusterParameterGroupSync(input: RDSModel.ResetDBClusterParameterGroupMessage) throws -> RDSModel.DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup {
        if let resetDBClusterParameterGroupSyncOverride = resetDBClusterParameterGroupSyncOverride {
            return try resetDBClusterParameterGroupSyncOverride(input)
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
    public func resetDBParameterGroupAsync(input: RDSModel.ResetDBParameterGroupMessage, completion: @escaping (HTTPResult<RDSModel.DBParameterGroupNameMessageForResetDBParameterGroup>) -> ()) throws {
        if let resetDBParameterGroupAsyncOverride = resetDBParameterGroupAsyncOverride {
            return try resetDBParameterGroupAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the ResetDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetDBParameterGroupMessage object being passed to this operation.
     - Returns: The DBParameterGroupNameMessageForResetDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func resetDBParameterGroupSync(input: RDSModel.ResetDBParameterGroupMessage) throws -> RDSModel.DBParameterGroupNameMessageForResetDBParameterGroup {
        if let resetDBParameterGroupSyncOverride = resetDBParameterGroupSyncOverride {
            return try resetDBParameterGroupSyncOverride(input)
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
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBSubnetGroupNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBSubnetGroupState, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    public func restoreDBClusterFromS3Async(input: RDSModel.RestoreDBClusterFromS3Message, completion: @escaping (HTTPResult<RDSModel.RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3>) -> ()) throws {
        if let restoreDBClusterFromS3AsyncOverride = restoreDBClusterFromS3AsyncOverride {
            return try restoreDBClusterFromS3AsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the RestoreDBClusterFromS3 operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBClusterFromS3Message object being passed to this operation.
     - Returns: The RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3 object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBSubnetGroupNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBSubnetGroupState, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    public func restoreDBClusterFromS3Sync(input: RDSModel.RestoreDBClusterFromS3Message) throws -> RDSModel.RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3 {
        if let restoreDBClusterFromS3SyncOverride = restoreDBClusterFromS3SyncOverride {
            return try restoreDBClusterFromS3SyncOverride(input)
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
           The possible errors are: dBClusterAlreadyExists, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSnapshotNotFound, dBSubnetGroupNotFound, dBSubnetGroupNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded, storageQuotaExceeded.
     */
    public func restoreDBClusterFromSnapshotAsync(input: RDSModel.RestoreDBClusterFromSnapshotMessage, completion: @escaping (HTTPResult<RDSModel.RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot>) -> ()) throws {
        if let restoreDBClusterFromSnapshotAsyncOverride = restoreDBClusterFromSnapshotAsyncOverride {
            return try restoreDBClusterFromSnapshotAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the RestoreDBClusterFromSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBClusterFromSnapshotMessage object being passed to this operation.
     - Returns: The RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSnapshotNotFound, dBSubnetGroupNotFound, dBSubnetGroupNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded, storageQuotaExceeded.
     */
    public func restoreDBClusterFromSnapshotSync(input: RDSModel.RestoreDBClusterFromSnapshotMessage) throws -> RDSModel.RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot {
        if let restoreDBClusterFromSnapshotSyncOverride = restoreDBClusterFromSnapshotSyncOverride {
            return try restoreDBClusterFromSnapshotSyncOverride(input)
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
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSubnetGroupNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBClusterState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded.
     */
    public func restoreDBClusterToPointInTimeAsync(input: RDSModel.RestoreDBClusterToPointInTimeMessage, completion: @escaping (HTTPResult<RDSModel.RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime>) -> ()) throws {
        if let restoreDBClusterToPointInTimeAsyncOverride = restoreDBClusterToPointInTimeAsyncOverride {
            return try restoreDBClusterToPointInTimeAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the RestoreDBClusterToPointInTime operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBClusterToPointInTimeMessage object being passed to this operation.
     - Returns: The RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSubnetGroupNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBClusterState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded.
     */
    public func restoreDBClusterToPointInTimeSync(input: RDSModel.RestoreDBClusterToPointInTimeMessage) throws -> RDSModel.RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime {
        if let restoreDBClusterToPointInTimeSyncOverride = restoreDBClusterToPointInTimeSyncOverride {
            return try restoreDBClusterToPointInTimeSyncOverride(input)
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
    public func restoreDBInstanceFromDBSnapshotAsync(input: RDSModel.RestoreDBInstanceFromDBSnapshotMessage, completion: @escaping (HTTPResult<RDSModel.RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot>) -> ()) throws {
        if let restoreDBInstanceFromDBSnapshotAsyncOverride = restoreDBInstanceFromDBSnapshotAsyncOverride {
            return try restoreDBInstanceFromDBSnapshotAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the RestoreDBInstanceFromDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBInstanceFromDBSnapshotMessage object being passed to this operation.
     - Returns: The RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSnapshotNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceFromDBSnapshotSync(input: RDSModel.RestoreDBInstanceFromDBSnapshotMessage) throws -> RDSModel.RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot {
        if let restoreDBInstanceFromDBSnapshotSyncOverride = restoreDBInstanceFromDBSnapshotSyncOverride {
            return try restoreDBInstanceFromDBSnapshotSyncOverride(input)
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
    public func restoreDBInstanceFromS3Async(input: RDSModel.RestoreDBInstanceFromS3Message, completion: @escaping (HTTPResult<RDSModel.RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3>) -> ()) throws {
        if let restoreDBInstanceFromS3AsyncOverride = restoreDBInstanceFromS3AsyncOverride {
            return try restoreDBInstanceFromS3AsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the RestoreDBInstanceFromS3 operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBInstanceFromS3Message object being passed to this operation.
     - Returns: The RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3 object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceFromS3Sync(input: RDSModel.RestoreDBInstanceFromS3Message) throws -> RDSModel.RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3 {
        if let restoreDBInstanceFromS3SyncOverride = restoreDBInstanceFromS3SyncOverride {
            return try restoreDBInstanceFromS3SyncOverride(input)
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
    public func restoreDBInstanceToPointInTimeAsync(input: RDSModel.RestoreDBInstanceToPointInTimeMessage, completion: @escaping (HTTPResult<RDSModel.RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime>) -> ()) throws {
        if let restoreDBInstanceToPointInTimeAsyncOverride = restoreDBInstanceToPointInTimeAsyncOverride {
            return try restoreDBInstanceToPointInTimeAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the RestoreDBInstanceToPointInTime operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBInstanceToPointInTimeMessage object being passed to this operation.
     - Returns: The RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBInstanceAutomatedBackupNotFound, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, pointInTimeRestoreNotEnabled, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceToPointInTimeSync(input: RDSModel.RestoreDBInstanceToPointInTimeMessage) throws -> RDSModel.RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime {
        if let restoreDBInstanceToPointInTimeSyncOverride = restoreDBInstanceToPointInTimeSyncOverride {
            return try restoreDBInstanceToPointInTimeSyncOverride(input)
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
    public func revokeDBSecurityGroupIngressAsync(input: RDSModel.RevokeDBSecurityGroupIngressMessage, completion: @escaping (HTTPResult<RDSModel.RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress>) -> ()) throws {
        if let revokeDBSecurityGroupIngressAsyncOverride = revokeDBSecurityGroupIngressAsyncOverride {
            return try revokeDBSecurityGroupIngressAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the RevokeDBSecurityGroupIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated RevokeDBSecurityGroupIngressMessage object being passed to this operation.
     - Returns: The RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    public func revokeDBSecurityGroupIngressSync(input: RDSModel.RevokeDBSecurityGroupIngressMessage) throws -> RDSModel.RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress {
        if let revokeDBSecurityGroupIngressSyncOverride = revokeDBSecurityGroupIngressSyncOverride {
            return try revokeDBSecurityGroupIngressSyncOverride(input)
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
    public func startDBClusterAsync(input: RDSModel.StartDBClusterMessage, completion: @escaping (HTTPResult<RDSModel.StartDBClusterResultForStartDBCluster>) -> ()) throws {
        if let startDBClusterAsyncOverride = startDBClusterAsyncOverride {
            return try startDBClusterAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the StartDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartDBClusterMessage object being passed to this operation.
     - Returns: The StartDBClusterResultForStartDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func startDBClusterSync(input: RDSModel.StartDBClusterMessage) throws -> RDSModel.StartDBClusterResultForStartDBCluster {
        if let startDBClusterSyncOverride = startDBClusterSyncOverride {
            return try startDBClusterSyncOverride(input)
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
    public func startDBInstanceAsync(input: RDSModel.StartDBInstanceMessage, completion: @escaping (HTTPResult<RDSModel.StartDBInstanceResultForStartDBInstance>) -> ()) throws {
        if let startDBInstanceAsyncOverride = startDBInstanceAsyncOverride {
            return try startDBInstanceAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the StartDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartDBInstanceMessage object being passed to this operation.
     - Returns: The StartDBInstanceResultForStartDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, dBClusterNotFound, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, insufficientDBInstanceCapacity, invalidDBClusterState, invalidDBInstanceState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible.
     */
    public func startDBInstanceSync(input: RDSModel.StartDBInstanceMessage) throws -> RDSModel.StartDBInstanceResultForStartDBInstance {
        if let startDBInstanceSyncOverride = startDBInstanceSyncOverride {
            return try startDBInstanceSyncOverride(input)
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
    public func stopDBClusterAsync(input: RDSModel.StopDBClusterMessage, completion: @escaping (HTTPResult<RDSModel.StopDBClusterResultForStopDBCluster>) -> ()) throws {
        if let stopDBClusterAsyncOverride = stopDBClusterAsyncOverride {
            return try stopDBClusterAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the StopDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopDBClusterMessage object being passed to this operation.
     - Returns: The StopDBClusterResultForStopDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func stopDBClusterSync(input: RDSModel.StopDBClusterMessage) throws -> RDSModel.StopDBClusterResultForStopDBCluster {
        if let stopDBClusterSyncOverride = stopDBClusterSyncOverride {
            return try stopDBClusterSyncOverride(input)
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
    public func stopDBInstanceAsync(input: RDSModel.StopDBInstanceMessage, completion: @escaping (HTTPResult<RDSModel.StopDBInstanceResultForStopDBInstance>) -> ()) throws {
        if let stopDBInstanceAsyncOverride = stopDBInstanceAsyncOverride {
            return try stopDBInstanceAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the StopDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopDBInstanceMessage object being passed to this operation.
     - Returns: The StopDBInstanceResultForStopDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    public func stopDBInstanceSync(input: RDSModel.StopDBInstanceMessage) throws -> RDSModel.StopDBInstanceResultForStopDBInstance {
        if let stopDBInstanceSyncOverride = stopDBInstanceSyncOverride {
            return try stopDBInstanceSyncOverride(input)
        }

        throw error
    }
}
