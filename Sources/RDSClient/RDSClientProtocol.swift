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
// RDSClientProtocol.swift
// RDSClient
//

import Foundation
import RDSModel
import SmokeHTTPClient

/**
 Client Protocol for the RDS service.
 */
public protocol RDSClientProtocol {
    typealias AddRoleToDBClusterSyncType = (_ input: RDSModel.AddRoleToDBClusterMessage) throws -> ()
    typealias AddRoleToDBClusterAsyncType = (_ input: RDSModel.AddRoleToDBClusterMessage, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias AddRoleToDBInstanceSyncType = (_ input: RDSModel.AddRoleToDBInstanceMessage) throws -> ()
    typealias AddRoleToDBInstanceAsyncType = (_ input: RDSModel.AddRoleToDBInstanceMessage, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias AddSourceIdentifierToSubscriptionSyncType = (_ input: RDSModel.AddSourceIdentifierToSubscriptionMessage) throws -> RDSModel.AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription
    typealias AddSourceIdentifierToSubscriptionAsyncType = (_ input: RDSModel.AddSourceIdentifierToSubscriptionMessage, _ completion: @escaping (HTTPResult<RDSModel.AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription>) -> ()) throws -> ()
    typealias AddTagsToResourceSyncType = (_ input: RDSModel.AddTagsToResourceMessage) throws -> ()
    typealias AddTagsToResourceAsyncType = (_ input: RDSModel.AddTagsToResourceMessage, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ApplyPendingMaintenanceActionSyncType = (_ input: RDSModel.ApplyPendingMaintenanceActionMessage) throws -> RDSModel.ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction
    typealias ApplyPendingMaintenanceActionAsyncType = (_ input: RDSModel.ApplyPendingMaintenanceActionMessage, _ completion: @escaping (HTTPResult<RDSModel.ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction>) -> ()) throws -> ()
    typealias AuthorizeDBSecurityGroupIngressSyncType = (_ input: RDSModel.AuthorizeDBSecurityGroupIngressMessage) throws -> RDSModel.AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress
    typealias AuthorizeDBSecurityGroupIngressAsyncType = (_ input: RDSModel.AuthorizeDBSecurityGroupIngressMessage, _ completion: @escaping (HTTPResult<RDSModel.AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress>) -> ()) throws -> ()
    typealias BacktrackDBClusterSyncType = (_ input: RDSModel.BacktrackDBClusterMessage) throws -> RDSModel.DBClusterBacktrackForBacktrackDBCluster
    typealias BacktrackDBClusterAsyncType = (_ input: RDSModel.BacktrackDBClusterMessage, _ completion: @escaping (HTTPResult<RDSModel.DBClusterBacktrackForBacktrackDBCluster>) -> ()) throws -> ()
    typealias CopyDBClusterParameterGroupSyncType = (_ input: RDSModel.CopyDBClusterParameterGroupMessage) throws -> RDSModel.CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup
    typealias CopyDBClusterParameterGroupAsyncType = (_ input: RDSModel.CopyDBClusterParameterGroupMessage, _ completion: @escaping (HTTPResult<RDSModel.CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup>) -> ()) throws -> ()
    typealias CopyDBClusterSnapshotSyncType = (_ input: RDSModel.CopyDBClusterSnapshotMessage) throws -> RDSModel.CopyDBClusterSnapshotResultForCopyDBClusterSnapshot
    typealias CopyDBClusterSnapshotAsyncType = (_ input: RDSModel.CopyDBClusterSnapshotMessage, _ completion: @escaping (HTTPResult<RDSModel.CopyDBClusterSnapshotResultForCopyDBClusterSnapshot>) -> ()) throws -> ()
    typealias CopyDBParameterGroupSyncType = (_ input: RDSModel.CopyDBParameterGroupMessage) throws -> RDSModel.CopyDBParameterGroupResultForCopyDBParameterGroup
    typealias CopyDBParameterGroupAsyncType = (_ input: RDSModel.CopyDBParameterGroupMessage, _ completion: @escaping (HTTPResult<RDSModel.CopyDBParameterGroupResultForCopyDBParameterGroup>) -> ()) throws -> ()
    typealias CopyDBSnapshotSyncType = (_ input: RDSModel.CopyDBSnapshotMessage) throws -> RDSModel.CopyDBSnapshotResultForCopyDBSnapshot
    typealias CopyDBSnapshotAsyncType = (_ input: RDSModel.CopyDBSnapshotMessage, _ completion: @escaping (HTTPResult<RDSModel.CopyDBSnapshotResultForCopyDBSnapshot>) -> ()) throws -> ()
    typealias CopyOptionGroupSyncType = (_ input: RDSModel.CopyOptionGroupMessage) throws -> RDSModel.CopyOptionGroupResultForCopyOptionGroup
    typealias CopyOptionGroupAsyncType = (_ input: RDSModel.CopyOptionGroupMessage, _ completion: @escaping (HTTPResult<RDSModel.CopyOptionGroupResultForCopyOptionGroup>) -> ()) throws -> ()
    typealias CreateDBClusterSyncType = (_ input: RDSModel.CreateDBClusterMessage) throws -> RDSModel.CreateDBClusterResultForCreateDBCluster
    typealias CreateDBClusterAsyncType = (_ input: RDSModel.CreateDBClusterMessage, _ completion: @escaping (HTTPResult<RDSModel.CreateDBClusterResultForCreateDBCluster>) -> ()) throws -> ()
    typealias CreateDBClusterEndpointSyncType = (_ input: RDSModel.CreateDBClusterEndpointMessage) throws -> RDSModel.DBClusterEndpointForCreateDBClusterEndpoint
    typealias CreateDBClusterEndpointAsyncType = (_ input: RDSModel.CreateDBClusterEndpointMessage, _ completion: @escaping (HTTPResult<RDSModel.DBClusterEndpointForCreateDBClusterEndpoint>) -> ()) throws -> ()
    typealias CreateDBClusterParameterGroupSyncType = (_ input: RDSModel.CreateDBClusterParameterGroupMessage) throws -> RDSModel.CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup
    typealias CreateDBClusterParameterGroupAsyncType = (_ input: RDSModel.CreateDBClusterParameterGroupMessage, _ completion: @escaping (HTTPResult<RDSModel.CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup>) -> ()) throws -> ()
    typealias CreateDBClusterSnapshotSyncType = (_ input: RDSModel.CreateDBClusterSnapshotMessage) throws -> RDSModel.CreateDBClusterSnapshotResultForCreateDBClusterSnapshot
    typealias CreateDBClusterSnapshotAsyncType = (_ input: RDSModel.CreateDBClusterSnapshotMessage, _ completion: @escaping (HTTPResult<RDSModel.CreateDBClusterSnapshotResultForCreateDBClusterSnapshot>) -> ()) throws -> ()
    typealias CreateDBInstanceSyncType = (_ input: RDSModel.CreateDBInstanceMessage) throws -> RDSModel.CreateDBInstanceResultForCreateDBInstance
    typealias CreateDBInstanceAsyncType = (_ input: RDSModel.CreateDBInstanceMessage, _ completion: @escaping (HTTPResult<RDSModel.CreateDBInstanceResultForCreateDBInstance>) -> ()) throws -> ()
    typealias CreateDBInstanceReadReplicaSyncType = (_ input: RDSModel.CreateDBInstanceReadReplicaMessage) throws -> RDSModel.CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica
    typealias CreateDBInstanceReadReplicaAsyncType = (_ input: RDSModel.CreateDBInstanceReadReplicaMessage, _ completion: @escaping (HTTPResult<RDSModel.CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica>) -> ()) throws -> ()
    typealias CreateDBParameterGroupSyncType = (_ input: RDSModel.CreateDBParameterGroupMessage) throws -> RDSModel.CreateDBParameterGroupResultForCreateDBParameterGroup
    typealias CreateDBParameterGroupAsyncType = (_ input: RDSModel.CreateDBParameterGroupMessage, _ completion: @escaping (HTTPResult<RDSModel.CreateDBParameterGroupResultForCreateDBParameterGroup>) -> ()) throws -> ()
    typealias CreateDBSecurityGroupSyncType = (_ input: RDSModel.CreateDBSecurityGroupMessage) throws -> RDSModel.CreateDBSecurityGroupResultForCreateDBSecurityGroup
    typealias CreateDBSecurityGroupAsyncType = (_ input: RDSModel.CreateDBSecurityGroupMessage, _ completion: @escaping (HTTPResult<RDSModel.CreateDBSecurityGroupResultForCreateDBSecurityGroup>) -> ()) throws -> ()
    typealias CreateDBSnapshotSyncType = (_ input: RDSModel.CreateDBSnapshotMessage) throws -> RDSModel.CreateDBSnapshotResultForCreateDBSnapshot
    typealias CreateDBSnapshotAsyncType = (_ input: RDSModel.CreateDBSnapshotMessage, _ completion: @escaping (HTTPResult<RDSModel.CreateDBSnapshotResultForCreateDBSnapshot>) -> ()) throws -> ()
    typealias CreateDBSubnetGroupSyncType = (_ input: RDSModel.CreateDBSubnetGroupMessage) throws -> RDSModel.CreateDBSubnetGroupResultForCreateDBSubnetGroup
    typealias CreateDBSubnetGroupAsyncType = (_ input: RDSModel.CreateDBSubnetGroupMessage, _ completion: @escaping (HTTPResult<RDSModel.CreateDBSubnetGroupResultForCreateDBSubnetGroup>) -> ()) throws -> ()
    typealias CreateEventSubscriptionSyncType = (_ input: RDSModel.CreateEventSubscriptionMessage) throws -> RDSModel.CreateEventSubscriptionResultForCreateEventSubscription
    typealias CreateEventSubscriptionAsyncType = (_ input: RDSModel.CreateEventSubscriptionMessage, _ completion: @escaping (HTTPResult<RDSModel.CreateEventSubscriptionResultForCreateEventSubscription>) -> ()) throws -> ()
    typealias CreateGlobalClusterSyncType = (_ input: RDSModel.CreateGlobalClusterMessage) throws -> RDSModel.CreateGlobalClusterResultForCreateGlobalCluster
    typealias CreateGlobalClusterAsyncType = (_ input: RDSModel.CreateGlobalClusterMessage, _ completion: @escaping (HTTPResult<RDSModel.CreateGlobalClusterResultForCreateGlobalCluster>) -> ()) throws -> ()
    typealias CreateOptionGroupSyncType = (_ input: RDSModel.CreateOptionGroupMessage) throws -> RDSModel.CreateOptionGroupResultForCreateOptionGroup
    typealias CreateOptionGroupAsyncType = (_ input: RDSModel.CreateOptionGroupMessage, _ completion: @escaping (HTTPResult<RDSModel.CreateOptionGroupResultForCreateOptionGroup>) -> ()) throws -> ()
    typealias DeleteDBClusterSyncType = (_ input: RDSModel.DeleteDBClusterMessage) throws -> RDSModel.DeleteDBClusterResultForDeleteDBCluster
    typealias DeleteDBClusterAsyncType = (_ input: RDSModel.DeleteDBClusterMessage, _ completion: @escaping (HTTPResult<RDSModel.DeleteDBClusterResultForDeleteDBCluster>) -> ()) throws -> ()
    typealias DeleteDBClusterEndpointSyncType = (_ input: RDSModel.DeleteDBClusterEndpointMessage) throws -> RDSModel.DBClusterEndpointForDeleteDBClusterEndpoint
    typealias DeleteDBClusterEndpointAsyncType = (_ input: RDSModel.DeleteDBClusterEndpointMessage, _ completion: @escaping (HTTPResult<RDSModel.DBClusterEndpointForDeleteDBClusterEndpoint>) -> ()) throws -> ()
    typealias DeleteDBClusterParameterGroupSyncType = (_ input: RDSModel.DeleteDBClusterParameterGroupMessage) throws -> ()
    typealias DeleteDBClusterParameterGroupAsyncType = (_ input: RDSModel.DeleteDBClusterParameterGroupMessage, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteDBClusterSnapshotSyncType = (_ input: RDSModel.DeleteDBClusterSnapshotMessage) throws -> RDSModel.DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot
    typealias DeleteDBClusterSnapshotAsyncType = (_ input: RDSModel.DeleteDBClusterSnapshotMessage, _ completion: @escaping (HTTPResult<RDSModel.DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot>) -> ()) throws -> ()
    typealias DeleteDBInstanceSyncType = (_ input: RDSModel.DeleteDBInstanceMessage) throws -> RDSModel.DeleteDBInstanceResultForDeleteDBInstance
    typealias DeleteDBInstanceAsyncType = (_ input: RDSModel.DeleteDBInstanceMessage, _ completion: @escaping (HTTPResult<RDSModel.DeleteDBInstanceResultForDeleteDBInstance>) -> ()) throws -> ()
    typealias DeleteDBInstanceAutomatedBackupSyncType = (_ input: RDSModel.DeleteDBInstanceAutomatedBackupMessage) throws -> RDSModel.DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup
    typealias DeleteDBInstanceAutomatedBackupAsyncType = (_ input: RDSModel.DeleteDBInstanceAutomatedBackupMessage, _ completion: @escaping (HTTPResult<RDSModel.DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup>) -> ()) throws -> ()
    typealias DeleteDBParameterGroupSyncType = (_ input: RDSModel.DeleteDBParameterGroupMessage) throws -> ()
    typealias DeleteDBParameterGroupAsyncType = (_ input: RDSModel.DeleteDBParameterGroupMessage, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteDBSecurityGroupSyncType = (_ input: RDSModel.DeleteDBSecurityGroupMessage) throws -> ()
    typealias DeleteDBSecurityGroupAsyncType = (_ input: RDSModel.DeleteDBSecurityGroupMessage, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteDBSnapshotSyncType = (_ input: RDSModel.DeleteDBSnapshotMessage) throws -> RDSModel.DeleteDBSnapshotResultForDeleteDBSnapshot
    typealias DeleteDBSnapshotAsyncType = (_ input: RDSModel.DeleteDBSnapshotMessage, _ completion: @escaping (HTTPResult<RDSModel.DeleteDBSnapshotResultForDeleteDBSnapshot>) -> ()) throws -> ()
    typealias DeleteDBSubnetGroupSyncType = (_ input: RDSModel.DeleteDBSubnetGroupMessage) throws -> ()
    typealias DeleteDBSubnetGroupAsyncType = (_ input: RDSModel.DeleteDBSubnetGroupMessage, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteEventSubscriptionSyncType = (_ input: RDSModel.DeleteEventSubscriptionMessage) throws -> RDSModel.DeleteEventSubscriptionResultForDeleteEventSubscription
    typealias DeleteEventSubscriptionAsyncType = (_ input: RDSModel.DeleteEventSubscriptionMessage, _ completion: @escaping (HTTPResult<RDSModel.DeleteEventSubscriptionResultForDeleteEventSubscription>) -> ()) throws -> ()
    typealias DeleteGlobalClusterSyncType = (_ input: RDSModel.DeleteGlobalClusterMessage) throws -> RDSModel.DeleteGlobalClusterResultForDeleteGlobalCluster
    typealias DeleteGlobalClusterAsyncType = (_ input: RDSModel.DeleteGlobalClusterMessage, _ completion: @escaping (HTTPResult<RDSModel.DeleteGlobalClusterResultForDeleteGlobalCluster>) -> ()) throws -> ()
    typealias DeleteOptionGroupSyncType = (_ input: RDSModel.DeleteOptionGroupMessage) throws -> ()
    typealias DeleteOptionGroupAsyncType = (_ input: RDSModel.DeleteOptionGroupMessage, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DescribeAccountAttributesSyncType = (_ input: RDSModel.DescribeAccountAttributesMessage) throws -> RDSModel.AccountAttributesMessageForDescribeAccountAttributes
    typealias DescribeAccountAttributesAsyncType = (_ input: RDSModel.DescribeAccountAttributesMessage, _ completion: @escaping (HTTPResult<RDSModel.AccountAttributesMessageForDescribeAccountAttributes>) -> ()) throws -> ()
    typealias DescribeCertificatesSyncType = (_ input: RDSModel.DescribeCertificatesMessage) throws -> RDSModel.CertificateMessageForDescribeCertificates
    typealias DescribeCertificatesAsyncType = (_ input: RDSModel.DescribeCertificatesMessage, _ completion: @escaping (HTTPResult<RDSModel.CertificateMessageForDescribeCertificates>) -> ()) throws -> ()
    typealias DescribeDBClusterBacktracksSyncType = (_ input: RDSModel.DescribeDBClusterBacktracksMessage) throws -> RDSModel.DBClusterBacktrackMessageForDescribeDBClusterBacktracks
    typealias DescribeDBClusterBacktracksAsyncType = (_ input: RDSModel.DescribeDBClusterBacktracksMessage, _ completion: @escaping (HTTPResult<RDSModel.DBClusterBacktrackMessageForDescribeDBClusterBacktracks>) -> ()) throws -> ()
    typealias DescribeDBClusterEndpointsSyncType = (_ input: RDSModel.DescribeDBClusterEndpointsMessage) throws -> RDSModel.DBClusterEndpointMessageForDescribeDBClusterEndpoints
    typealias DescribeDBClusterEndpointsAsyncType = (_ input: RDSModel.DescribeDBClusterEndpointsMessage, _ completion: @escaping (HTTPResult<RDSModel.DBClusterEndpointMessageForDescribeDBClusterEndpoints>) -> ()) throws -> ()
    typealias DescribeDBClusterParameterGroupsSyncType = (_ input: RDSModel.DescribeDBClusterParameterGroupsMessage) throws -> RDSModel.DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups
    typealias DescribeDBClusterParameterGroupsAsyncType = (_ input: RDSModel.DescribeDBClusterParameterGroupsMessage, _ completion: @escaping (HTTPResult<RDSModel.DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups>) -> ()) throws -> ()
    typealias DescribeDBClusterParametersSyncType = (_ input: RDSModel.DescribeDBClusterParametersMessage) throws -> RDSModel.DBClusterParameterGroupDetailsForDescribeDBClusterParameters
    typealias DescribeDBClusterParametersAsyncType = (_ input: RDSModel.DescribeDBClusterParametersMessage, _ completion: @escaping (HTTPResult<RDSModel.DBClusterParameterGroupDetailsForDescribeDBClusterParameters>) -> ()) throws -> ()
    typealias DescribeDBClusterSnapshotAttributesSyncType = (_ input: RDSModel.DescribeDBClusterSnapshotAttributesMessage) throws -> RDSModel.DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes
    typealias DescribeDBClusterSnapshotAttributesAsyncType = (_ input: RDSModel.DescribeDBClusterSnapshotAttributesMessage, _ completion: @escaping (HTTPResult<RDSModel.DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes>) -> ()) throws -> ()
    typealias DescribeDBClusterSnapshotsSyncType = (_ input: RDSModel.DescribeDBClusterSnapshotsMessage) throws -> RDSModel.DBClusterSnapshotMessageForDescribeDBClusterSnapshots
    typealias DescribeDBClusterSnapshotsAsyncType = (_ input: RDSModel.DescribeDBClusterSnapshotsMessage, _ completion: @escaping (HTTPResult<RDSModel.DBClusterSnapshotMessageForDescribeDBClusterSnapshots>) -> ()) throws -> ()
    typealias DescribeDBClustersSyncType = (_ input: RDSModel.DescribeDBClustersMessage) throws -> RDSModel.DBClusterMessageForDescribeDBClusters
    typealias DescribeDBClustersAsyncType = (_ input: RDSModel.DescribeDBClustersMessage, _ completion: @escaping (HTTPResult<RDSModel.DBClusterMessageForDescribeDBClusters>) -> ()) throws -> ()
    typealias DescribeDBEngineVersionsSyncType = (_ input: RDSModel.DescribeDBEngineVersionsMessage) throws -> RDSModel.DBEngineVersionMessageForDescribeDBEngineVersions
    typealias DescribeDBEngineVersionsAsyncType = (_ input: RDSModel.DescribeDBEngineVersionsMessage, _ completion: @escaping (HTTPResult<RDSModel.DBEngineVersionMessageForDescribeDBEngineVersions>) -> ()) throws -> ()
    typealias DescribeDBInstanceAutomatedBackupsSyncType = (_ input: RDSModel.DescribeDBInstanceAutomatedBackupsMessage) throws -> RDSModel.DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups
    typealias DescribeDBInstanceAutomatedBackupsAsyncType = (_ input: RDSModel.DescribeDBInstanceAutomatedBackupsMessage, _ completion: @escaping (HTTPResult<RDSModel.DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups>) -> ()) throws -> ()
    typealias DescribeDBInstancesSyncType = (_ input: RDSModel.DescribeDBInstancesMessage) throws -> RDSModel.DBInstanceMessageForDescribeDBInstances
    typealias DescribeDBInstancesAsyncType = (_ input: RDSModel.DescribeDBInstancesMessage, _ completion: @escaping (HTTPResult<RDSModel.DBInstanceMessageForDescribeDBInstances>) -> ()) throws -> ()
    typealias DescribeDBLogFilesSyncType = (_ input: RDSModel.DescribeDBLogFilesMessage) throws -> RDSModel.DescribeDBLogFilesResponseForDescribeDBLogFiles
    typealias DescribeDBLogFilesAsyncType = (_ input: RDSModel.DescribeDBLogFilesMessage, _ completion: @escaping (HTTPResult<RDSModel.DescribeDBLogFilesResponseForDescribeDBLogFiles>) -> ()) throws -> ()
    typealias DescribeDBParameterGroupsSyncType = (_ input: RDSModel.DescribeDBParameterGroupsMessage) throws -> RDSModel.DBParameterGroupsMessageForDescribeDBParameterGroups
    typealias DescribeDBParameterGroupsAsyncType = (_ input: RDSModel.DescribeDBParameterGroupsMessage, _ completion: @escaping (HTTPResult<RDSModel.DBParameterGroupsMessageForDescribeDBParameterGroups>) -> ()) throws -> ()
    typealias DescribeDBParametersSyncType = (_ input: RDSModel.DescribeDBParametersMessage) throws -> RDSModel.DBParameterGroupDetailsForDescribeDBParameters
    typealias DescribeDBParametersAsyncType = (_ input: RDSModel.DescribeDBParametersMessage, _ completion: @escaping (HTTPResult<RDSModel.DBParameterGroupDetailsForDescribeDBParameters>) -> ()) throws -> ()
    typealias DescribeDBSecurityGroupsSyncType = (_ input: RDSModel.DescribeDBSecurityGroupsMessage) throws -> RDSModel.DBSecurityGroupMessageForDescribeDBSecurityGroups
    typealias DescribeDBSecurityGroupsAsyncType = (_ input: RDSModel.DescribeDBSecurityGroupsMessage, _ completion: @escaping (HTTPResult<RDSModel.DBSecurityGroupMessageForDescribeDBSecurityGroups>) -> ()) throws -> ()
    typealias DescribeDBSnapshotAttributesSyncType = (_ input: RDSModel.DescribeDBSnapshotAttributesMessage) throws -> RDSModel.DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes
    typealias DescribeDBSnapshotAttributesAsyncType = (_ input: RDSModel.DescribeDBSnapshotAttributesMessage, _ completion: @escaping (HTTPResult<RDSModel.DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes>) -> ()) throws -> ()
    typealias DescribeDBSnapshotsSyncType = (_ input: RDSModel.DescribeDBSnapshotsMessage) throws -> RDSModel.DBSnapshotMessageForDescribeDBSnapshots
    typealias DescribeDBSnapshotsAsyncType = (_ input: RDSModel.DescribeDBSnapshotsMessage, _ completion: @escaping (HTTPResult<RDSModel.DBSnapshotMessageForDescribeDBSnapshots>) -> ()) throws -> ()
    typealias DescribeDBSubnetGroupsSyncType = (_ input: RDSModel.DescribeDBSubnetGroupsMessage) throws -> RDSModel.DBSubnetGroupMessageForDescribeDBSubnetGroups
    typealias DescribeDBSubnetGroupsAsyncType = (_ input: RDSModel.DescribeDBSubnetGroupsMessage, _ completion: @escaping (HTTPResult<RDSModel.DBSubnetGroupMessageForDescribeDBSubnetGroups>) -> ()) throws -> ()
    typealias DescribeEngineDefaultClusterParametersSyncType = (_ input: RDSModel.DescribeEngineDefaultClusterParametersMessage) throws -> RDSModel.DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters
    typealias DescribeEngineDefaultClusterParametersAsyncType = (_ input: RDSModel.DescribeEngineDefaultClusterParametersMessage, _ completion: @escaping (HTTPResult<RDSModel.DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters>) -> ()) throws -> ()
    typealias DescribeEngineDefaultParametersSyncType = (_ input: RDSModel.DescribeEngineDefaultParametersMessage) throws -> RDSModel.DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters
    typealias DescribeEngineDefaultParametersAsyncType = (_ input: RDSModel.DescribeEngineDefaultParametersMessage, _ completion: @escaping (HTTPResult<RDSModel.DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters>) -> ()) throws -> ()
    typealias DescribeEventCategoriesSyncType = (_ input: RDSModel.DescribeEventCategoriesMessage) throws -> RDSModel.EventCategoriesMessageForDescribeEventCategories
    typealias DescribeEventCategoriesAsyncType = (_ input: RDSModel.DescribeEventCategoriesMessage, _ completion: @escaping (HTTPResult<RDSModel.EventCategoriesMessageForDescribeEventCategories>) -> ()) throws -> ()
    typealias DescribeEventSubscriptionsSyncType = (_ input: RDSModel.DescribeEventSubscriptionsMessage) throws -> RDSModel.EventSubscriptionsMessageForDescribeEventSubscriptions
    typealias DescribeEventSubscriptionsAsyncType = (_ input: RDSModel.DescribeEventSubscriptionsMessage, _ completion: @escaping (HTTPResult<RDSModel.EventSubscriptionsMessageForDescribeEventSubscriptions>) -> ()) throws -> ()
    typealias DescribeEventsSyncType = (_ input: RDSModel.DescribeEventsMessage) throws -> RDSModel.EventsMessageForDescribeEvents
    typealias DescribeEventsAsyncType = (_ input: RDSModel.DescribeEventsMessage, _ completion: @escaping (HTTPResult<RDSModel.EventsMessageForDescribeEvents>) -> ()) throws -> ()
    typealias DescribeGlobalClustersSyncType = (_ input: RDSModel.DescribeGlobalClustersMessage) throws -> RDSModel.GlobalClustersMessageForDescribeGlobalClusters
    typealias DescribeGlobalClustersAsyncType = (_ input: RDSModel.DescribeGlobalClustersMessage, _ completion: @escaping (HTTPResult<RDSModel.GlobalClustersMessageForDescribeGlobalClusters>) -> ()) throws -> ()
    typealias DescribeOptionGroupOptionsSyncType = (_ input: RDSModel.DescribeOptionGroupOptionsMessage) throws -> RDSModel.OptionGroupOptionsMessageForDescribeOptionGroupOptions
    typealias DescribeOptionGroupOptionsAsyncType = (_ input: RDSModel.DescribeOptionGroupOptionsMessage, _ completion: @escaping (HTTPResult<RDSModel.OptionGroupOptionsMessageForDescribeOptionGroupOptions>) -> ()) throws -> ()
    typealias DescribeOptionGroupsSyncType = (_ input: RDSModel.DescribeOptionGroupsMessage) throws -> RDSModel.OptionGroupsForDescribeOptionGroups
    typealias DescribeOptionGroupsAsyncType = (_ input: RDSModel.DescribeOptionGroupsMessage, _ completion: @escaping (HTTPResult<RDSModel.OptionGroupsForDescribeOptionGroups>) -> ()) throws -> ()
    typealias DescribeOrderableDBInstanceOptionsSyncType = (_ input: RDSModel.DescribeOrderableDBInstanceOptionsMessage) throws -> RDSModel.OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions
    typealias DescribeOrderableDBInstanceOptionsAsyncType = (_ input: RDSModel.DescribeOrderableDBInstanceOptionsMessage, _ completion: @escaping (HTTPResult<RDSModel.OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions>) -> ()) throws -> ()
    typealias DescribePendingMaintenanceActionsSyncType = (_ input: RDSModel.DescribePendingMaintenanceActionsMessage) throws -> RDSModel.PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions
    typealias DescribePendingMaintenanceActionsAsyncType = (_ input: RDSModel.DescribePendingMaintenanceActionsMessage, _ completion: @escaping (HTTPResult<RDSModel.PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions>) -> ()) throws -> ()
    typealias DescribeReservedDBInstancesSyncType = (_ input: RDSModel.DescribeReservedDBInstancesMessage) throws -> RDSModel.ReservedDBInstanceMessageForDescribeReservedDBInstances
    typealias DescribeReservedDBInstancesAsyncType = (_ input: RDSModel.DescribeReservedDBInstancesMessage, _ completion: @escaping (HTTPResult<RDSModel.ReservedDBInstanceMessageForDescribeReservedDBInstances>) -> ()) throws -> ()
    typealias DescribeReservedDBInstancesOfferingsSyncType = (_ input: RDSModel.DescribeReservedDBInstancesOfferingsMessage) throws -> RDSModel.ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings
    typealias DescribeReservedDBInstancesOfferingsAsyncType = (_ input: RDSModel.DescribeReservedDBInstancesOfferingsMessage, _ completion: @escaping (HTTPResult<RDSModel.ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings>) -> ()) throws -> ()
    typealias DescribeSourceRegionsSyncType = (_ input: RDSModel.DescribeSourceRegionsMessage) throws -> RDSModel.SourceRegionMessageForDescribeSourceRegions
    typealias DescribeSourceRegionsAsyncType = (_ input: RDSModel.DescribeSourceRegionsMessage, _ completion: @escaping (HTTPResult<RDSModel.SourceRegionMessageForDescribeSourceRegions>) -> ()) throws -> ()
    typealias DescribeValidDBInstanceModificationsSyncType = (_ input: RDSModel.DescribeValidDBInstanceModificationsMessage) throws -> RDSModel.DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications
    typealias DescribeValidDBInstanceModificationsAsyncType = (_ input: RDSModel.DescribeValidDBInstanceModificationsMessage, _ completion: @escaping (HTTPResult<RDSModel.DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications>) -> ()) throws -> ()
    typealias DownloadDBLogFilePortionSyncType = (_ input: RDSModel.DownloadDBLogFilePortionMessage) throws -> RDSModel.DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion
    typealias DownloadDBLogFilePortionAsyncType = (_ input: RDSModel.DownloadDBLogFilePortionMessage, _ completion: @escaping (HTTPResult<RDSModel.DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion>) -> ()) throws -> ()
    typealias FailoverDBClusterSyncType = (_ input: RDSModel.FailoverDBClusterMessage) throws -> RDSModel.FailoverDBClusterResultForFailoverDBCluster
    typealias FailoverDBClusterAsyncType = (_ input: RDSModel.FailoverDBClusterMessage, _ completion: @escaping (HTTPResult<RDSModel.FailoverDBClusterResultForFailoverDBCluster>) -> ()) throws -> ()
    typealias ListTagsForResourceSyncType = (_ input: RDSModel.ListTagsForResourceMessage) throws -> RDSModel.TagListMessageForListTagsForResource
    typealias ListTagsForResourceAsyncType = (_ input: RDSModel.ListTagsForResourceMessage, _ completion: @escaping (HTTPResult<RDSModel.TagListMessageForListTagsForResource>) -> ()) throws -> ()
    typealias ModifyCurrentDBClusterCapacitySyncType = (_ input: RDSModel.ModifyCurrentDBClusterCapacityMessage) throws -> RDSModel.DBClusterCapacityInfoForModifyCurrentDBClusterCapacity
    typealias ModifyCurrentDBClusterCapacityAsyncType = (_ input: RDSModel.ModifyCurrentDBClusterCapacityMessage, _ completion: @escaping (HTTPResult<RDSModel.DBClusterCapacityInfoForModifyCurrentDBClusterCapacity>) -> ()) throws -> ()
    typealias ModifyDBClusterSyncType = (_ input: RDSModel.ModifyDBClusterMessage) throws -> RDSModel.ModifyDBClusterResultForModifyDBCluster
    typealias ModifyDBClusterAsyncType = (_ input: RDSModel.ModifyDBClusterMessage, _ completion: @escaping (HTTPResult<RDSModel.ModifyDBClusterResultForModifyDBCluster>) -> ()) throws -> ()
    typealias ModifyDBClusterEndpointSyncType = (_ input: RDSModel.ModifyDBClusterEndpointMessage) throws -> RDSModel.DBClusterEndpointForModifyDBClusterEndpoint
    typealias ModifyDBClusterEndpointAsyncType = (_ input: RDSModel.ModifyDBClusterEndpointMessage, _ completion: @escaping (HTTPResult<RDSModel.DBClusterEndpointForModifyDBClusterEndpoint>) -> ()) throws -> ()
    typealias ModifyDBClusterParameterGroupSyncType = (_ input: RDSModel.ModifyDBClusterParameterGroupMessage) throws -> RDSModel.DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup
    typealias ModifyDBClusterParameterGroupAsyncType = (_ input: RDSModel.ModifyDBClusterParameterGroupMessage, _ completion: @escaping (HTTPResult<RDSModel.DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup>) -> ()) throws -> ()
    typealias ModifyDBClusterSnapshotAttributeSyncType = (_ input: RDSModel.ModifyDBClusterSnapshotAttributeMessage) throws -> RDSModel.ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute
    typealias ModifyDBClusterSnapshotAttributeAsyncType = (_ input: RDSModel.ModifyDBClusterSnapshotAttributeMessage, _ completion: @escaping (HTTPResult<RDSModel.ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute>) -> ()) throws -> ()
    typealias ModifyDBInstanceSyncType = (_ input: RDSModel.ModifyDBInstanceMessage) throws -> RDSModel.ModifyDBInstanceResultForModifyDBInstance
    typealias ModifyDBInstanceAsyncType = (_ input: RDSModel.ModifyDBInstanceMessage, _ completion: @escaping (HTTPResult<RDSModel.ModifyDBInstanceResultForModifyDBInstance>) -> ()) throws -> ()
    typealias ModifyDBParameterGroupSyncType = (_ input: RDSModel.ModifyDBParameterGroupMessage) throws -> RDSModel.DBParameterGroupNameMessageForModifyDBParameterGroup
    typealias ModifyDBParameterGroupAsyncType = (_ input: RDSModel.ModifyDBParameterGroupMessage, _ completion: @escaping (HTTPResult<RDSModel.DBParameterGroupNameMessageForModifyDBParameterGroup>) -> ()) throws -> ()
    typealias ModifyDBSnapshotSyncType = (_ input: RDSModel.ModifyDBSnapshotMessage) throws -> RDSModel.ModifyDBSnapshotResultForModifyDBSnapshot
    typealias ModifyDBSnapshotAsyncType = (_ input: RDSModel.ModifyDBSnapshotMessage, _ completion: @escaping (HTTPResult<RDSModel.ModifyDBSnapshotResultForModifyDBSnapshot>) -> ()) throws -> ()
    typealias ModifyDBSnapshotAttributeSyncType = (_ input: RDSModel.ModifyDBSnapshotAttributeMessage) throws -> RDSModel.ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute
    typealias ModifyDBSnapshotAttributeAsyncType = (_ input: RDSModel.ModifyDBSnapshotAttributeMessage, _ completion: @escaping (HTTPResult<RDSModel.ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute>) -> ()) throws -> ()
    typealias ModifyDBSubnetGroupSyncType = (_ input: RDSModel.ModifyDBSubnetGroupMessage) throws -> RDSModel.ModifyDBSubnetGroupResultForModifyDBSubnetGroup
    typealias ModifyDBSubnetGroupAsyncType = (_ input: RDSModel.ModifyDBSubnetGroupMessage, _ completion: @escaping (HTTPResult<RDSModel.ModifyDBSubnetGroupResultForModifyDBSubnetGroup>) -> ()) throws -> ()
    typealias ModifyEventSubscriptionSyncType = (_ input: RDSModel.ModifyEventSubscriptionMessage) throws -> RDSModel.ModifyEventSubscriptionResultForModifyEventSubscription
    typealias ModifyEventSubscriptionAsyncType = (_ input: RDSModel.ModifyEventSubscriptionMessage, _ completion: @escaping (HTTPResult<RDSModel.ModifyEventSubscriptionResultForModifyEventSubscription>) -> ()) throws -> ()
    typealias ModifyGlobalClusterSyncType = (_ input: RDSModel.ModifyGlobalClusterMessage) throws -> RDSModel.ModifyGlobalClusterResultForModifyGlobalCluster
    typealias ModifyGlobalClusterAsyncType = (_ input: RDSModel.ModifyGlobalClusterMessage, _ completion: @escaping (HTTPResult<RDSModel.ModifyGlobalClusterResultForModifyGlobalCluster>) -> ()) throws -> ()
    typealias ModifyOptionGroupSyncType = (_ input: RDSModel.ModifyOptionGroupMessage) throws -> RDSModel.ModifyOptionGroupResultForModifyOptionGroup
    typealias ModifyOptionGroupAsyncType = (_ input: RDSModel.ModifyOptionGroupMessage, _ completion: @escaping (HTTPResult<RDSModel.ModifyOptionGroupResultForModifyOptionGroup>) -> ()) throws -> ()
    typealias PromoteReadReplicaSyncType = (_ input: RDSModel.PromoteReadReplicaMessage) throws -> RDSModel.PromoteReadReplicaResultForPromoteReadReplica
    typealias PromoteReadReplicaAsyncType = (_ input: RDSModel.PromoteReadReplicaMessage, _ completion: @escaping (HTTPResult<RDSModel.PromoteReadReplicaResultForPromoteReadReplica>) -> ()) throws -> ()
    typealias PromoteReadReplicaDBClusterSyncType = (_ input: RDSModel.PromoteReadReplicaDBClusterMessage) throws -> RDSModel.PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster
    typealias PromoteReadReplicaDBClusterAsyncType = (_ input: RDSModel.PromoteReadReplicaDBClusterMessage, _ completion: @escaping (HTTPResult<RDSModel.PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster>) -> ()) throws -> ()
    typealias PurchaseReservedDBInstancesOfferingSyncType = (_ input: RDSModel.PurchaseReservedDBInstancesOfferingMessage) throws -> RDSModel.PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering
    typealias PurchaseReservedDBInstancesOfferingAsyncType = (_ input: RDSModel.PurchaseReservedDBInstancesOfferingMessage, _ completion: @escaping (HTTPResult<RDSModel.PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering>) -> ()) throws -> ()
    typealias RebootDBInstanceSyncType = (_ input: RDSModel.RebootDBInstanceMessage) throws -> RDSModel.RebootDBInstanceResultForRebootDBInstance
    typealias RebootDBInstanceAsyncType = (_ input: RDSModel.RebootDBInstanceMessage, _ completion: @escaping (HTTPResult<RDSModel.RebootDBInstanceResultForRebootDBInstance>) -> ()) throws -> ()
    typealias RemoveFromGlobalClusterSyncType = (_ input: RDSModel.RemoveFromGlobalClusterMessage) throws -> RDSModel.RemoveFromGlobalClusterResultForRemoveFromGlobalCluster
    typealias RemoveFromGlobalClusterAsyncType = (_ input: RDSModel.RemoveFromGlobalClusterMessage, _ completion: @escaping (HTTPResult<RDSModel.RemoveFromGlobalClusterResultForRemoveFromGlobalCluster>) -> ()) throws -> ()
    typealias RemoveRoleFromDBClusterSyncType = (_ input: RDSModel.RemoveRoleFromDBClusterMessage) throws -> ()
    typealias RemoveRoleFromDBClusterAsyncType = (_ input: RDSModel.RemoveRoleFromDBClusterMessage, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RemoveRoleFromDBInstanceSyncType = (_ input: RDSModel.RemoveRoleFromDBInstanceMessage) throws -> ()
    typealias RemoveRoleFromDBInstanceAsyncType = (_ input: RDSModel.RemoveRoleFromDBInstanceMessage, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RemoveSourceIdentifierFromSubscriptionSyncType = (_ input: RDSModel.RemoveSourceIdentifierFromSubscriptionMessage) throws -> RDSModel.RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription
    typealias RemoveSourceIdentifierFromSubscriptionAsyncType = (_ input: RDSModel.RemoveSourceIdentifierFromSubscriptionMessage, _ completion: @escaping (HTTPResult<RDSModel.RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription>) -> ()) throws -> ()
    typealias RemoveTagsFromResourceSyncType = (_ input: RDSModel.RemoveTagsFromResourceMessage) throws -> ()
    typealias RemoveTagsFromResourceAsyncType = (_ input: RDSModel.RemoveTagsFromResourceMessage, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ResetDBClusterParameterGroupSyncType = (_ input: RDSModel.ResetDBClusterParameterGroupMessage) throws -> RDSModel.DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup
    typealias ResetDBClusterParameterGroupAsyncType = (_ input: RDSModel.ResetDBClusterParameterGroupMessage, _ completion: @escaping (HTTPResult<RDSModel.DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup>) -> ()) throws -> ()
    typealias ResetDBParameterGroupSyncType = (_ input: RDSModel.ResetDBParameterGroupMessage) throws -> RDSModel.DBParameterGroupNameMessageForResetDBParameterGroup
    typealias ResetDBParameterGroupAsyncType = (_ input: RDSModel.ResetDBParameterGroupMessage, _ completion: @escaping (HTTPResult<RDSModel.DBParameterGroupNameMessageForResetDBParameterGroup>) -> ()) throws -> ()
    typealias RestoreDBClusterFromS3SyncType = (_ input: RDSModel.RestoreDBClusterFromS3Message) throws -> RDSModel.RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3
    typealias RestoreDBClusterFromS3AsyncType = (_ input: RDSModel.RestoreDBClusterFromS3Message, _ completion: @escaping (HTTPResult<RDSModel.RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3>) -> ()) throws -> ()
    typealias RestoreDBClusterFromSnapshotSyncType = (_ input: RDSModel.RestoreDBClusterFromSnapshotMessage) throws -> RDSModel.RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot
    typealias RestoreDBClusterFromSnapshotAsyncType = (_ input: RDSModel.RestoreDBClusterFromSnapshotMessage, _ completion: @escaping (HTTPResult<RDSModel.RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot>) -> ()) throws -> ()
    typealias RestoreDBClusterToPointInTimeSyncType = (_ input: RDSModel.RestoreDBClusterToPointInTimeMessage) throws -> RDSModel.RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime
    typealias RestoreDBClusterToPointInTimeAsyncType = (_ input: RDSModel.RestoreDBClusterToPointInTimeMessage, _ completion: @escaping (HTTPResult<RDSModel.RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime>) -> ()) throws -> ()
    typealias RestoreDBInstanceFromDBSnapshotSyncType = (_ input: RDSModel.RestoreDBInstanceFromDBSnapshotMessage) throws -> RDSModel.RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot
    typealias RestoreDBInstanceFromDBSnapshotAsyncType = (_ input: RDSModel.RestoreDBInstanceFromDBSnapshotMessage, _ completion: @escaping (HTTPResult<RDSModel.RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot>) -> ()) throws -> ()
    typealias RestoreDBInstanceFromS3SyncType = (_ input: RDSModel.RestoreDBInstanceFromS3Message) throws -> RDSModel.RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3
    typealias RestoreDBInstanceFromS3AsyncType = (_ input: RDSModel.RestoreDBInstanceFromS3Message, _ completion: @escaping (HTTPResult<RDSModel.RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3>) -> ()) throws -> ()
    typealias RestoreDBInstanceToPointInTimeSyncType = (_ input: RDSModel.RestoreDBInstanceToPointInTimeMessage) throws -> RDSModel.RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime
    typealias RestoreDBInstanceToPointInTimeAsyncType = (_ input: RDSModel.RestoreDBInstanceToPointInTimeMessage, _ completion: @escaping (HTTPResult<RDSModel.RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime>) -> ()) throws -> ()
    typealias RevokeDBSecurityGroupIngressSyncType = (_ input: RDSModel.RevokeDBSecurityGroupIngressMessage) throws -> RDSModel.RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress
    typealias RevokeDBSecurityGroupIngressAsyncType = (_ input: RDSModel.RevokeDBSecurityGroupIngressMessage, _ completion: @escaping (HTTPResult<RDSModel.RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress>) -> ()) throws -> ()
    typealias StartDBClusterSyncType = (_ input: RDSModel.StartDBClusterMessage) throws -> RDSModel.StartDBClusterResultForStartDBCluster
    typealias StartDBClusterAsyncType = (_ input: RDSModel.StartDBClusterMessage, _ completion: @escaping (HTTPResult<RDSModel.StartDBClusterResultForStartDBCluster>) -> ()) throws -> ()
    typealias StartDBInstanceSyncType = (_ input: RDSModel.StartDBInstanceMessage) throws -> RDSModel.StartDBInstanceResultForStartDBInstance
    typealias StartDBInstanceAsyncType = (_ input: RDSModel.StartDBInstanceMessage, _ completion: @escaping (HTTPResult<RDSModel.StartDBInstanceResultForStartDBInstance>) -> ()) throws -> ()
    typealias StopDBClusterSyncType = (_ input: RDSModel.StopDBClusterMessage) throws -> RDSModel.StopDBClusterResultForStopDBCluster
    typealias StopDBClusterAsyncType = (_ input: RDSModel.StopDBClusterMessage, _ completion: @escaping (HTTPResult<RDSModel.StopDBClusterResultForStopDBCluster>) -> ()) throws -> ()
    typealias StopDBInstanceSyncType = (_ input: RDSModel.StopDBInstanceMessage) throws -> RDSModel.StopDBInstanceResultForStopDBInstance
    typealias StopDBInstanceAsyncType = (_ input: RDSModel.StopDBInstanceMessage, _ completion: @escaping (HTTPResult<RDSModel.StopDBInstanceResultForStopDBInstance>) -> ()) throws -> ()

    /**
     Invokes the AddRoleToDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddRoleToDBClusterMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBClusterNotFound, dBClusterRoleAlreadyExists, dBClusterRoleQuotaExceeded, invalidDBClusterState.
     */
    func addRoleToDBClusterAsync(input: RDSModel.AddRoleToDBClusterMessage, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the AddRoleToDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddRoleToDBClusterMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBClusterRoleAlreadyExists, dBClusterRoleQuotaExceeded, invalidDBClusterState.
     */
    func addRoleToDBClusterSync(input: RDSModel.AddRoleToDBClusterMessage) throws

    /**
     Invokes the AddRoleToDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddRoleToDBInstanceMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBInstanceNotFound, dBInstanceRoleAlreadyExists, dBInstanceRoleQuotaExceeded, invalidDBInstanceState.
     */
    func addRoleToDBInstanceAsync(input: RDSModel.AddRoleToDBInstanceMessage, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the AddRoleToDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddRoleToDBInstanceMessage object being passed to this operation.
     - Throws: dBInstanceNotFound, dBInstanceRoleAlreadyExists, dBInstanceRoleQuotaExceeded, invalidDBInstanceState.
     */
    func addRoleToDBInstanceSync(input: RDSModel.AddRoleToDBInstanceMessage) throws

    /**
     Invokes the AddSourceIdentifierToSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddSourceIdentifierToSubscriptionMessage object being passed to this operation.
         - completion: The AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription object or an error will be passed to this 
           callback when the operation is complete. The AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription
           object will be validated before being returned to caller.
           The possible errors are: sourceNotFound, subscriptionNotFound.
     */
    func addSourceIdentifierToSubscriptionAsync(input: RDSModel.AddSourceIdentifierToSubscriptionMessage, completion: @escaping (HTTPResult<RDSModel.AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription>) -> ()) throws

    /**
     Invokes the AddSourceIdentifierToSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddSourceIdentifierToSubscriptionMessage object being passed to this operation.
     - Returns: The AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: sourceNotFound, subscriptionNotFound.
     */
    func addSourceIdentifierToSubscriptionSync(input: RDSModel.AddSourceIdentifierToSubscriptionMessage) throws -> RDSModel.AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription

    /**
     Invokes the AddTagsToResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddTagsToResourceMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    func addTagsToResourceAsync(input: RDSModel.AddTagsToResourceMessage, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the AddTagsToResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddTagsToResourceMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    func addTagsToResourceSync(input: RDSModel.AddTagsToResourceMessage) throws

    /**
     Invokes the ApplyPendingMaintenanceAction operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ApplyPendingMaintenanceActionMessage object being passed to this operation.
         - completion: The ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction object or an error will be passed to this 
           callback when the operation is complete. The ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction
           object will be validated before being returned to caller.
           The possible errors are: invalidDBClusterState, invalidDBInstanceState, resourceNotFound.
     */
    func applyPendingMaintenanceActionAsync(input: RDSModel.ApplyPendingMaintenanceActionMessage, completion: @escaping (HTTPResult<RDSModel.ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction>) -> ()) throws

    /**
     Invokes the ApplyPendingMaintenanceAction operation waiting for the response before returning.

     - Parameters:
         - input: The validated ApplyPendingMaintenanceActionMessage object being passed to this operation.
     - Returns: The ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidDBClusterState, invalidDBInstanceState, resourceNotFound.
     */
    func applyPendingMaintenanceActionSync(input: RDSModel.ApplyPendingMaintenanceActionMessage) throws -> RDSModel.ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction

    /**
     Invokes the AuthorizeDBSecurityGroupIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AuthorizeDBSecurityGroupIngressMessage object being passed to this operation.
         - completion: The AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress object or an error will be passed to this 
           callback when the operation is complete. The AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress
           object will be validated before being returned to caller.
           The possible errors are: authorizationAlreadyExists, authorizationQuotaExceeded, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    func authorizeDBSecurityGroupIngressAsync(input: RDSModel.AuthorizeDBSecurityGroupIngressMessage, completion: @escaping (HTTPResult<RDSModel.AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress>) -> ()) throws

    /**
     Invokes the AuthorizeDBSecurityGroupIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated AuthorizeDBSecurityGroupIngressMessage object being passed to this operation.
     - Returns: The AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationAlreadyExists, authorizationQuotaExceeded, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    func authorizeDBSecurityGroupIngressSync(input: RDSModel.AuthorizeDBSecurityGroupIngressMessage) throws -> RDSModel.AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress

    /**
     Invokes the BacktrackDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BacktrackDBClusterMessage object being passed to this operation.
         - completion: The DBClusterBacktrackForBacktrackDBCluster object or an error will be passed to this 
           callback when the operation is complete. The DBClusterBacktrackForBacktrackDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState.
     */
    func backtrackDBClusterAsync(input: RDSModel.BacktrackDBClusterMessage, completion: @escaping (HTTPResult<RDSModel.DBClusterBacktrackForBacktrackDBCluster>) -> ()) throws

    /**
     Invokes the BacktrackDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated BacktrackDBClusterMessage object being passed to this operation.
     - Returns: The DBClusterBacktrackForBacktrackDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState.
     */
    func backtrackDBClusterSync(input: RDSModel.BacktrackDBClusterMessage) throws -> RDSModel.DBClusterBacktrackForBacktrackDBCluster

    /**
     Invokes the CopyDBClusterParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyDBClusterParameterGroupMessage object being passed to this operation.
         - completion: The CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    func copyDBClusterParameterGroupAsync(input: RDSModel.CopyDBClusterParameterGroupMessage, completion: @escaping (HTTPResult<RDSModel.CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup>) -> ()) throws

    /**
     Invokes the CopyDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    func copyDBClusterParameterGroupSync(input: RDSModel.CopyDBClusterParameterGroupMessage) throws -> RDSModel.CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup

    /**
     Invokes the CopyDBClusterSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyDBClusterSnapshotMessage object being passed to this operation.
         - completion: The CopyDBClusterSnapshotResultForCopyDBClusterSnapshot object or an error will be passed to this 
           callback when the operation is complete. The CopyDBClusterSnapshotResultForCopyDBClusterSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotAlreadyExists, dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, invalidDBClusterState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    func copyDBClusterSnapshotAsync(input: RDSModel.CopyDBClusterSnapshotMessage, completion: @escaping (HTTPResult<RDSModel.CopyDBClusterSnapshotResultForCopyDBClusterSnapshot>) -> ()) throws

    /**
     Invokes the CopyDBClusterSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyDBClusterSnapshotMessage object being passed to this operation.
     - Returns: The CopyDBClusterSnapshotResultForCopyDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotAlreadyExists, dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, invalidDBClusterState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    func copyDBClusterSnapshotSync(input: RDSModel.CopyDBClusterSnapshotMessage) throws -> RDSModel.CopyDBClusterSnapshotResultForCopyDBClusterSnapshot

    /**
     Invokes the CopyDBParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyDBParameterGroupMessage object being passed to this operation.
         - completion: The CopyDBParameterGroupResultForCopyDBParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The CopyDBParameterGroupResultForCopyDBParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    func copyDBParameterGroupAsync(input: RDSModel.CopyDBParameterGroupMessage, completion: @escaping (HTTPResult<RDSModel.CopyDBParameterGroupResultForCopyDBParameterGroup>) -> ()) throws

    /**
     Invokes the CopyDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyDBParameterGroupMessage object being passed to this operation.
     - Returns: The CopyDBParameterGroupResultForCopyDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    func copyDBParameterGroupSync(input: RDSModel.CopyDBParameterGroupMessage) throws -> RDSModel.CopyDBParameterGroupResultForCopyDBParameterGroup

    /**
     Invokes the CopyDBSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyDBSnapshotMessage object being passed to this operation.
         - completion: The CopyDBSnapshotResultForCopyDBSnapshot object or an error will be passed to this 
           callback when the operation is complete. The CopyDBSnapshotResultForCopyDBSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBSnapshotAlreadyExists, dBSnapshotNotFound, invalidDBSnapshotState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    func copyDBSnapshotAsync(input: RDSModel.CopyDBSnapshotMessage, completion: @escaping (HTTPResult<RDSModel.CopyDBSnapshotResultForCopyDBSnapshot>) -> ()) throws

    /**
     Invokes the CopyDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyDBSnapshotMessage object being passed to this operation.
     - Returns: The CopyDBSnapshotResultForCopyDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotAlreadyExists, dBSnapshotNotFound, invalidDBSnapshotState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    func copyDBSnapshotSync(input: RDSModel.CopyDBSnapshotMessage) throws -> RDSModel.CopyDBSnapshotResultForCopyDBSnapshot

    /**
     Invokes the CopyOptionGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyOptionGroupMessage object being passed to this operation.
         - completion: The CopyOptionGroupResultForCopyOptionGroup object or an error will be passed to this 
           callback when the operation is complete. The CopyOptionGroupResultForCopyOptionGroup
           object will be validated before being returned to caller.
           The possible errors are: optionGroupAlreadyExists, optionGroupNotFound, optionGroupQuotaExceeded.
     */
    func copyOptionGroupAsync(input: RDSModel.CopyOptionGroupMessage, completion: @escaping (HTTPResult<RDSModel.CopyOptionGroupResultForCopyOptionGroup>) -> ()) throws

    /**
     Invokes the CopyOptionGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyOptionGroupMessage object being passed to this operation.
     - Returns: The CopyOptionGroupResultForCopyOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: optionGroupAlreadyExists, optionGroupNotFound, optionGroupQuotaExceeded.
     */
    func copyOptionGroupSync(input: RDSModel.CopyOptionGroupMessage) throws -> RDSModel.CopyOptionGroupResultForCopyOptionGroup

    /**
     Invokes the CreateDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBClusterMessage object being passed to this operation.
         - completion: The CreateDBClusterResultForCreateDBCluster object or an error will be passed to this 
           callback when the operation is complete. The CreateDBClusterResultForCreateDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, globalClusterNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBInstanceState, invalidDBSubnetGroupState, invalidGlobalClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    func createDBClusterAsync(input: RDSModel.CreateDBClusterMessage, completion: @escaping (HTTPResult<RDSModel.CreateDBClusterResultForCreateDBCluster>) -> ()) throws

    /**
     Invokes the CreateDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBClusterMessage object being passed to this operation.
     - Returns: The CreateDBClusterResultForCreateDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, globalClusterNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBInstanceState, invalidDBSubnetGroupState, invalidGlobalClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    func createDBClusterSync(input: RDSModel.CreateDBClusterMessage) throws -> RDSModel.CreateDBClusterResultForCreateDBCluster

    /**
     Invokes the CreateDBClusterEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBClusterEndpointMessage object being passed to this operation.
         - completion: The DBClusterEndpointForCreateDBClusterEndpoint object or an error will be passed to this 
           callback when the operation is complete. The DBClusterEndpointForCreateDBClusterEndpoint
           object will be validated before being returned to caller.
           The possible errors are: dBClusterEndpointAlreadyExists, dBClusterEndpointQuotaExceeded, dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func createDBClusterEndpointAsync(input: RDSModel.CreateDBClusterEndpointMessage, completion: @escaping (HTTPResult<RDSModel.DBClusterEndpointForCreateDBClusterEndpoint>) -> ()) throws

    /**
     Invokes the CreateDBClusterEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBClusterEndpointMessage object being passed to this operation.
     - Returns: The DBClusterEndpointForCreateDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterEndpointAlreadyExists, dBClusterEndpointQuotaExceeded, dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func createDBClusterEndpointSync(input: RDSModel.CreateDBClusterEndpointMessage) throws -> RDSModel.DBClusterEndpointForCreateDBClusterEndpoint

    /**
     Invokes the CreateDBClusterParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBClusterParameterGroupMessage object being passed to this operation.
         - completion: The CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    func createDBClusterParameterGroupAsync(input: RDSModel.CreateDBClusterParameterGroupMessage, completion: @escaping (HTTPResult<RDSModel.CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup>) -> ()) throws

    /**
     Invokes the CreateDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    func createDBClusterParameterGroupSync(input: RDSModel.CreateDBClusterParameterGroupMessage) throws -> RDSModel.CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup

    /**
     Invokes the CreateDBClusterSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBClusterSnapshotMessage object being passed to this operation.
         - completion: The CreateDBClusterSnapshotResultForCreateDBClusterSnapshot object or an error will be passed to this 
           callback when the operation is complete. The CreateDBClusterSnapshotResultForCreateDBClusterSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    func createDBClusterSnapshotAsync(input: RDSModel.CreateDBClusterSnapshotMessage, completion: @escaping (HTTPResult<RDSModel.CreateDBClusterSnapshotResultForCreateDBClusterSnapshot>) -> ()) throws

    /**
     Invokes the CreateDBClusterSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBClusterSnapshotMessage object being passed to this operation.
     - Returns: The CreateDBClusterSnapshotResultForCreateDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    func createDBClusterSnapshotSync(input: RDSModel.CreateDBClusterSnapshotMessage) throws -> RDSModel.CreateDBClusterSnapshotResultForCreateDBClusterSnapshot

    /**
     Invokes the CreateDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBInstanceMessage object being passed to this operation.
         - completion: The CreateDBInstanceResultForCreateDBInstance object or an error will be passed to this 
           callback when the operation is complete. The CreateDBInstanceResultForCreateDBInstance
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBClusterNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func createDBInstanceAsync(input: RDSModel.CreateDBInstanceMessage, completion: @escaping (HTTPResult<RDSModel.CreateDBInstanceResultForCreateDBInstance>) -> ()) throws

    /**
     Invokes the CreateDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBInstanceMessage object being passed to this operation.
     - Returns: The CreateDBInstanceResultForCreateDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBClusterNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func createDBInstanceSync(input: RDSModel.CreateDBInstanceMessage) throws -> RDSModel.CreateDBInstanceResultForCreateDBInstance

    /**
     Invokes the CreateDBInstanceReadReplica operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBInstanceReadReplicaMessage object being passed to this operation.
         - completion: The CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica object or an error will be passed to this 
           callback when the operation is complete. The CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotAllowed, dBSubnetGroupNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSubnetGroup, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func createDBInstanceReadReplicaAsync(input: RDSModel.CreateDBInstanceReadReplicaMessage, completion: @escaping (HTTPResult<RDSModel.CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica>) -> ()) throws

    /**
     Invokes the CreateDBInstanceReadReplica operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBInstanceReadReplicaMessage object being passed to this operation.
     - Returns: The CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotAllowed, dBSubnetGroupNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSubnetGroup, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func createDBInstanceReadReplicaSync(input: RDSModel.CreateDBInstanceReadReplicaMessage) throws -> RDSModel.CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica

    /**
     Invokes the CreateDBParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBParameterGroupMessage object being passed to this operation.
         - completion: The CreateDBParameterGroupResultForCreateDBParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The CreateDBParameterGroupResultForCreateDBParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    func createDBParameterGroupAsync(input: RDSModel.CreateDBParameterGroupMessage, completion: @escaping (HTTPResult<RDSModel.CreateDBParameterGroupResultForCreateDBParameterGroup>) -> ()) throws

    /**
     Invokes the CreateDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBParameterGroupMessage object being passed to this operation.
     - Returns: The CreateDBParameterGroupResultForCreateDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    func createDBParameterGroupSync(input: RDSModel.CreateDBParameterGroupMessage) throws -> RDSModel.CreateDBParameterGroupResultForCreateDBParameterGroup

    /**
     Invokes the CreateDBSecurityGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBSecurityGroupMessage object being passed to this operation.
         - completion: The CreateDBSecurityGroupResultForCreateDBSecurityGroup object or an error will be passed to this 
           callback when the operation is complete. The CreateDBSecurityGroupResultForCreateDBSecurityGroup
           object will be validated before being returned to caller.
           The possible errors are: dBSecurityGroupAlreadyExists, dBSecurityGroupNotSupported, dBSecurityGroupQuotaExceeded.
     */
    func createDBSecurityGroupAsync(input: RDSModel.CreateDBSecurityGroupMessage, completion: @escaping (HTTPResult<RDSModel.CreateDBSecurityGroupResultForCreateDBSecurityGroup>) -> ()) throws

    /**
     Invokes the CreateDBSecurityGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBSecurityGroupMessage object being passed to this operation.
     - Returns: The CreateDBSecurityGroupResultForCreateDBSecurityGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSecurityGroupAlreadyExists, dBSecurityGroupNotSupported, dBSecurityGroupQuotaExceeded.
     */
    func createDBSecurityGroupSync(input: RDSModel.CreateDBSecurityGroupMessage) throws -> RDSModel.CreateDBSecurityGroupResultForCreateDBSecurityGroup

    /**
     Invokes the CreateDBSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBSnapshotMessage object being passed to this operation.
         - completion: The CreateDBSnapshotResultForCreateDBSnapshot object or an error will be passed to this 
           callback when the operation is complete. The CreateDBSnapshotResultForCreateDBSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    func createDBSnapshotAsync(input: RDSModel.CreateDBSnapshotMessage, completion: @escaping (HTTPResult<RDSModel.CreateDBSnapshotResultForCreateDBSnapshot>) -> ()) throws

    /**
     Invokes the CreateDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBSnapshotMessage object being passed to this operation.
     - Returns: The CreateDBSnapshotResultForCreateDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    func createDBSnapshotSync(input: RDSModel.CreateDBSnapshotMessage) throws -> RDSModel.CreateDBSnapshotResultForCreateDBSnapshot

    /**
     Invokes the CreateDBSubnetGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBSubnetGroupMessage object being passed to this operation.
         - completion: The CreateDBSubnetGroupResultForCreateDBSubnetGroup object or an error will be passed to this 
           callback when the operation is complete. The CreateDBSubnetGroupResultForCreateDBSubnetGroup
           object will be validated before being returned to caller.
           The possible errors are: dBSubnetGroupAlreadyExists, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupQuotaExceeded, dBSubnetQuotaExceeded, invalidSubnet.
     */
    func createDBSubnetGroupAsync(input: RDSModel.CreateDBSubnetGroupMessage, completion: @escaping (HTTPResult<RDSModel.CreateDBSubnetGroupResultForCreateDBSubnetGroup>) -> ()) throws

    /**
     Invokes the CreateDBSubnetGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBSubnetGroupMessage object being passed to this operation.
     - Returns: The CreateDBSubnetGroupResultForCreateDBSubnetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSubnetGroupAlreadyExists, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupQuotaExceeded, dBSubnetQuotaExceeded, invalidSubnet.
     */
    func createDBSubnetGroupSync(input: RDSModel.CreateDBSubnetGroupMessage) throws -> RDSModel.CreateDBSubnetGroupResultForCreateDBSubnetGroup

    /**
     Invokes the CreateEventSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateEventSubscriptionMessage object being passed to this operation.
         - completion: The CreateEventSubscriptionResultForCreateEventSubscription object or an error will be passed to this 
           callback when the operation is complete. The CreateEventSubscriptionResultForCreateEventSubscription
           object will be validated before being returned to caller.
           The possible errors are: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, sourceNotFound, subscriptionAlreadyExist, subscriptionCategoryNotFound.
     */
    func createEventSubscriptionAsync(input: RDSModel.CreateEventSubscriptionMessage, completion: @escaping (HTTPResult<RDSModel.CreateEventSubscriptionResultForCreateEventSubscription>) -> ()) throws

    /**
     Invokes the CreateEventSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateEventSubscriptionMessage object being passed to this operation.
     - Returns: The CreateEventSubscriptionResultForCreateEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, sourceNotFound, subscriptionAlreadyExist, subscriptionCategoryNotFound.
     */
    func createEventSubscriptionSync(input: RDSModel.CreateEventSubscriptionMessage) throws -> RDSModel.CreateEventSubscriptionResultForCreateEventSubscription

    /**
     Invokes the CreateGlobalCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateGlobalClusterMessage object being passed to this operation.
         - completion: The CreateGlobalClusterResultForCreateGlobalCluster object or an error will be passed to this 
           callback when the operation is complete. The CreateGlobalClusterResultForCreateGlobalCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, globalClusterAlreadyExists, globalClusterQuotaExceeded, invalidDBClusterState.
     */
    func createGlobalClusterAsync(input: RDSModel.CreateGlobalClusterMessage, completion: @escaping (HTTPResult<RDSModel.CreateGlobalClusterResultForCreateGlobalCluster>) -> ()) throws

    /**
     Invokes the CreateGlobalCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateGlobalClusterMessage object being passed to this operation.
     - Returns: The CreateGlobalClusterResultForCreateGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, globalClusterAlreadyExists, globalClusterQuotaExceeded, invalidDBClusterState.
     */
    func createGlobalClusterSync(input: RDSModel.CreateGlobalClusterMessage) throws -> RDSModel.CreateGlobalClusterResultForCreateGlobalCluster

    /**
     Invokes the CreateOptionGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateOptionGroupMessage object being passed to this operation.
         - completion: The CreateOptionGroupResultForCreateOptionGroup object or an error will be passed to this 
           callback when the operation is complete. The CreateOptionGroupResultForCreateOptionGroup
           object will be validated before being returned to caller.
           The possible errors are: optionGroupAlreadyExists, optionGroupQuotaExceeded.
     */
    func createOptionGroupAsync(input: RDSModel.CreateOptionGroupMessage, completion: @escaping (HTTPResult<RDSModel.CreateOptionGroupResultForCreateOptionGroup>) -> ()) throws

    /**
     Invokes the CreateOptionGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateOptionGroupMessage object being passed to this operation.
     - Returns: The CreateOptionGroupResultForCreateOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: optionGroupAlreadyExists, optionGroupQuotaExceeded.
     */
    func createOptionGroupSync(input: RDSModel.CreateOptionGroupMessage) throws -> RDSModel.CreateOptionGroupResultForCreateOptionGroup

    /**
     Invokes the DeleteDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBClusterMessage object being passed to this operation.
         - completion: The DeleteDBClusterResultForDeleteDBCluster object or an error will be passed to this 
           callback when the operation is complete. The DeleteDBClusterResultForDeleteDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    func deleteDBClusterAsync(input: RDSModel.DeleteDBClusterMessage, completion: @escaping (HTTPResult<RDSModel.DeleteDBClusterResultForDeleteDBCluster>) -> ()) throws

    /**
     Invokes the DeleteDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBClusterMessage object being passed to this operation.
     - Returns: The DeleteDBClusterResultForDeleteDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    func deleteDBClusterSync(input: RDSModel.DeleteDBClusterMessage) throws -> RDSModel.DeleteDBClusterResultForDeleteDBCluster

    /**
     Invokes the DeleteDBClusterEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBClusterEndpointMessage object being passed to this operation.
         - completion: The DBClusterEndpointForDeleteDBClusterEndpoint object or an error will be passed to this 
           callback when the operation is complete. The DBClusterEndpointForDeleteDBClusterEndpoint
           object will be validated before being returned to caller.
           The possible errors are: dBClusterEndpointNotFound, invalidDBClusterEndpointState, invalidDBClusterState.
     */
    func deleteDBClusterEndpointAsync(input: RDSModel.DeleteDBClusterEndpointMessage, completion: @escaping (HTTPResult<RDSModel.DBClusterEndpointForDeleteDBClusterEndpoint>) -> ()) throws

    /**
     Invokes the DeleteDBClusterEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBClusterEndpointMessage object being passed to this operation.
     - Returns: The DBClusterEndpointForDeleteDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterEndpointNotFound, invalidDBClusterEndpointState, invalidDBClusterState.
     */
    func deleteDBClusterEndpointSync(input: RDSModel.DeleteDBClusterEndpointMessage) throws -> RDSModel.DBClusterEndpointForDeleteDBClusterEndpoint

    /**
     Invokes the DeleteDBClusterParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBClusterParameterGroupMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func deleteDBClusterParameterGroupAsync(input: RDSModel.DeleteDBClusterParameterGroupMessage, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBClusterParameterGroupMessage object being passed to this operation.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func deleteDBClusterParameterGroupSync(input: RDSModel.DeleteDBClusterParameterGroupMessage) throws

    /**
     Invokes the DeleteDBClusterSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBClusterSnapshotMessage object being passed to this operation.
         - completion: The DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot object or an error will be passed to this 
           callback when the operation is complete. The DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState.
     */
    func deleteDBClusterSnapshotAsync(input: RDSModel.DeleteDBClusterSnapshotMessage, completion: @escaping (HTTPResult<RDSModel.DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot>) -> ()) throws

    /**
     Invokes the DeleteDBClusterSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBClusterSnapshotMessage object being passed to this operation.
     - Returns: The DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState.
     */
    func deleteDBClusterSnapshotSync(input: RDSModel.DeleteDBClusterSnapshotMessage) throws -> RDSModel.DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot

    /**
     Invokes the DeleteDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBInstanceMessage object being passed to this operation.
         - completion: The DeleteDBInstanceResultForDeleteDBInstance object or an error will be passed to this 
           callback when the operation is complete. The DeleteDBInstanceResultForDeleteDBInstance
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceAutomatedBackupQuotaExceeded, dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    func deleteDBInstanceAsync(input: RDSModel.DeleteDBInstanceMessage, completion: @escaping (HTTPResult<RDSModel.DeleteDBInstanceResultForDeleteDBInstance>) -> ()) throws

    /**
     Invokes the DeleteDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBInstanceMessage object being passed to this operation.
     - Returns: The DeleteDBInstanceResultForDeleteDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupQuotaExceeded, dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    func deleteDBInstanceSync(input: RDSModel.DeleteDBInstanceMessage) throws -> RDSModel.DeleteDBInstanceResultForDeleteDBInstance

    /**
     Invokes the DeleteDBInstanceAutomatedBackup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBInstanceAutomatedBackupMessage object being passed to this operation.
         - completion: The DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup object or an error will be passed to this 
           callback when the operation is complete. The DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceAutomatedBackupNotFound, invalidDBInstanceAutomatedBackupState.
     */
    func deleteDBInstanceAutomatedBackupAsync(input: RDSModel.DeleteDBInstanceAutomatedBackupMessage, completion: @escaping (HTTPResult<RDSModel.DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup>) -> ()) throws

    /**
     Invokes the DeleteDBInstanceAutomatedBackup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBInstanceAutomatedBackupMessage object being passed to this operation.
     - Returns: The DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupNotFound, invalidDBInstanceAutomatedBackupState.
     */
    func deleteDBInstanceAutomatedBackupSync(input: RDSModel.DeleteDBInstanceAutomatedBackupMessage) throws -> RDSModel.DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup

    /**
     Invokes the DeleteDBParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBParameterGroupMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func deleteDBParameterGroupAsync(input: RDSModel.DeleteDBParameterGroupMessage, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBParameterGroupMessage object being passed to this operation.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func deleteDBParameterGroupSync(input: RDSModel.DeleteDBParameterGroupMessage) throws

    /**
     Invokes the DeleteDBSecurityGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBSecurityGroupMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    func deleteDBSecurityGroupAsync(input: RDSModel.DeleteDBSecurityGroupMessage, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteDBSecurityGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBSecurityGroupMessage object being passed to this operation.
     - Throws: dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    func deleteDBSecurityGroupSync(input: RDSModel.DeleteDBSecurityGroupMessage) throws

    /**
     Invokes the DeleteDBSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBSnapshotMessage object being passed to this operation.
         - completion: The DeleteDBSnapshotResultForDeleteDBSnapshot object or an error will be passed to this 
           callback when the operation is complete. The DeleteDBSnapshotResultForDeleteDBSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound, invalidDBSnapshotState.
     */
    func deleteDBSnapshotAsync(input: RDSModel.DeleteDBSnapshotMessage, completion: @escaping (HTTPResult<RDSModel.DeleteDBSnapshotResultForDeleteDBSnapshot>) -> ()) throws

    /**
     Invokes the DeleteDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBSnapshotMessage object being passed to this operation.
     - Returns: The DeleteDBSnapshotResultForDeleteDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound, invalidDBSnapshotState.
     */
    func deleteDBSnapshotSync(input: RDSModel.DeleteDBSnapshotMessage) throws -> RDSModel.DeleteDBSnapshotResultForDeleteDBSnapshot

    /**
     Invokes the DeleteDBSubnetGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBSubnetGroupMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBSubnetGroupNotFound, invalidDBSubnetGroupState, invalidDBSubnetState.
     */
    func deleteDBSubnetGroupAsync(input: RDSModel.DeleteDBSubnetGroupMessage, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteDBSubnetGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBSubnetGroupMessage object being passed to this operation.
     - Throws: dBSubnetGroupNotFound, invalidDBSubnetGroupState, invalidDBSubnetState.
     */
    func deleteDBSubnetGroupSync(input: RDSModel.DeleteDBSubnetGroupMessage) throws

    /**
     Invokes the DeleteEventSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteEventSubscriptionMessage object being passed to this operation.
         - completion: The DeleteEventSubscriptionResultForDeleteEventSubscription object or an error will be passed to this 
           callback when the operation is complete. The DeleteEventSubscriptionResultForDeleteEventSubscription
           object will be validated before being returned to caller.
           The possible errors are: invalidEventSubscriptionState, subscriptionNotFound.
     */
    func deleteEventSubscriptionAsync(input: RDSModel.DeleteEventSubscriptionMessage, completion: @escaping (HTTPResult<RDSModel.DeleteEventSubscriptionResultForDeleteEventSubscription>) -> ()) throws

    /**
     Invokes the DeleteEventSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteEventSubscriptionMessage object being passed to this operation.
     - Returns: The DeleteEventSubscriptionResultForDeleteEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidEventSubscriptionState, subscriptionNotFound.
     */
    func deleteEventSubscriptionSync(input: RDSModel.DeleteEventSubscriptionMessage) throws -> RDSModel.DeleteEventSubscriptionResultForDeleteEventSubscription

    /**
     Invokes the DeleteGlobalCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteGlobalClusterMessage object being passed to this operation.
         - completion: The DeleteGlobalClusterResultForDeleteGlobalCluster object or an error will be passed to this 
           callback when the operation is complete. The DeleteGlobalClusterResultForDeleteGlobalCluster
           object will be validated before being returned to caller.
           The possible errors are: globalClusterNotFound, invalidGlobalClusterState.
     */
    func deleteGlobalClusterAsync(input: RDSModel.DeleteGlobalClusterMessage, completion: @escaping (HTTPResult<RDSModel.DeleteGlobalClusterResultForDeleteGlobalCluster>) -> ()) throws

    /**
     Invokes the DeleteGlobalCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteGlobalClusterMessage object being passed to this operation.
     - Returns: The DeleteGlobalClusterResultForDeleteGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalClusterNotFound, invalidGlobalClusterState.
     */
    func deleteGlobalClusterSync(input: RDSModel.DeleteGlobalClusterMessage) throws -> RDSModel.DeleteGlobalClusterResultForDeleteGlobalCluster

    /**
     Invokes the DeleteOptionGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteOptionGroupMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidOptionGroupState, optionGroupNotFound.
     */
    func deleteOptionGroupAsync(input: RDSModel.DeleteOptionGroupMessage, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteOptionGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteOptionGroupMessage object being passed to this operation.
     - Throws: invalidOptionGroupState, optionGroupNotFound.
     */
    func deleteOptionGroupSync(input: RDSModel.DeleteOptionGroupMessage) throws

    /**
     Invokes the DescribeAccountAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAccountAttributesMessage object being passed to this operation.
         - completion: The AccountAttributesMessageForDescribeAccountAttributes object or an error will be passed to this 
           callback when the operation is complete. The AccountAttributesMessageForDescribeAccountAttributes
           object will be validated before being returned to caller.
     */
    func describeAccountAttributesAsync(input: RDSModel.DescribeAccountAttributesMessage, completion: @escaping (HTTPResult<RDSModel.AccountAttributesMessageForDescribeAccountAttributes>) -> ()) throws

    /**
     Invokes the DescribeAccountAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAccountAttributesMessage object being passed to this operation.
     - Returns: The AccountAttributesMessageForDescribeAccountAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAccountAttributesSync(input: RDSModel.DescribeAccountAttributesMessage) throws -> RDSModel.AccountAttributesMessageForDescribeAccountAttributes

    /**
     Invokes the DescribeCertificates operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCertificatesMessage object being passed to this operation.
         - completion: The CertificateMessageForDescribeCertificates object or an error will be passed to this 
           callback when the operation is complete. The CertificateMessageForDescribeCertificates
           object will be validated before being returned to caller.
           The possible errors are: certificateNotFound.
     */
    func describeCertificatesAsync(input: RDSModel.DescribeCertificatesMessage, completion: @escaping (HTTPResult<RDSModel.CertificateMessageForDescribeCertificates>) -> ()) throws

    /**
     Invokes the DescribeCertificates operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCertificatesMessage object being passed to this operation.
     - Returns: The CertificateMessageForDescribeCertificates object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: certificateNotFound.
     */
    func describeCertificatesSync(input: RDSModel.DescribeCertificatesMessage) throws -> RDSModel.CertificateMessageForDescribeCertificates

    /**
     Invokes the DescribeDBClusterBacktracks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClusterBacktracksMessage object being passed to this operation.
         - completion: The DBClusterBacktrackMessageForDescribeDBClusterBacktracks object or an error will be passed to this 
           callback when the operation is complete. The DBClusterBacktrackMessageForDescribeDBClusterBacktracks
           object will be validated before being returned to caller.
           The possible errors are: dBClusterBacktrackNotFound, dBClusterNotFound.
     */
    func describeDBClusterBacktracksAsync(input: RDSModel.DescribeDBClusterBacktracksMessage, completion: @escaping (HTTPResult<RDSModel.DBClusterBacktrackMessageForDescribeDBClusterBacktracks>) -> ()) throws

    /**
     Invokes the DescribeDBClusterBacktracks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterBacktracksMessage object being passed to this operation.
     - Returns: The DBClusterBacktrackMessageForDescribeDBClusterBacktracks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterBacktrackNotFound, dBClusterNotFound.
     */
    func describeDBClusterBacktracksSync(input: RDSModel.DescribeDBClusterBacktracksMessage) throws -> RDSModel.DBClusterBacktrackMessageForDescribeDBClusterBacktracks

    /**
     Invokes the DescribeDBClusterEndpoints operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClusterEndpointsMessage object being passed to this operation.
         - completion: The DBClusterEndpointMessageForDescribeDBClusterEndpoints object or an error will be passed to this 
           callback when the operation is complete. The DBClusterEndpointMessageForDescribeDBClusterEndpoints
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound.
     */
    func describeDBClusterEndpointsAsync(input: RDSModel.DescribeDBClusterEndpointsMessage, completion: @escaping (HTTPResult<RDSModel.DBClusterEndpointMessageForDescribeDBClusterEndpoints>) -> ()) throws

    /**
     Invokes the DescribeDBClusterEndpoints operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterEndpointsMessage object being passed to this operation.
     - Returns: The DBClusterEndpointMessageForDescribeDBClusterEndpoints object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound.
     */
    func describeDBClusterEndpointsSync(input: RDSModel.DescribeDBClusterEndpointsMessage) throws -> RDSModel.DBClusterEndpointMessageForDescribeDBClusterEndpoints

    /**
     Invokes the DescribeDBClusterParameterGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClusterParameterGroupsMessage object being passed to this operation.
         - completion: The DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups object or an error will be passed to this 
           callback when the operation is complete. The DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound.
     */
    func describeDBClusterParameterGroupsAsync(input: RDSModel.DescribeDBClusterParameterGroupsMessage, completion: @escaping (HTTPResult<RDSModel.DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups>) -> ()) throws

    /**
     Invokes the DescribeDBClusterParameterGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterParameterGroupsMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    func describeDBClusterParameterGroupsSync(input: RDSModel.DescribeDBClusterParameterGroupsMessage) throws -> RDSModel.DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups

    /**
     Invokes the DescribeDBClusterParameters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClusterParametersMessage object being passed to this operation.
         - completion: The DBClusterParameterGroupDetailsForDescribeDBClusterParameters object or an error will be passed to this 
           callback when the operation is complete. The DBClusterParameterGroupDetailsForDescribeDBClusterParameters
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound.
     */
    func describeDBClusterParametersAsync(input: RDSModel.DescribeDBClusterParametersMessage, completion: @escaping (HTTPResult<RDSModel.DBClusterParameterGroupDetailsForDescribeDBClusterParameters>) -> ()) throws

    /**
     Invokes the DescribeDBClusterParameters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterParametersMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupDetailsForDescribeDBClusterParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    func describeDBClusterParametersSync(input: RDSModel.DescribeDBClusterParametersMessage) throws -> RDSModel.DBClusterParameterGroupDetailsForDescribeDBClusterParameters

    /**
     Invokes the DescribeDBClusterSnapshotAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotAttributesMessage object being passed to this operation.
         - completion: The DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes object or an error will be passed to this 
           callback when the operation is complete. The DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes
           object will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound.
     */
    func describeDBClusterSnapshotAttributesAsync(input: RDSModel.DescribeDBClusterSnapshotAttributesMessage, completion: @escaping (HTTPResult<RDSModel.DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes>) -> ()) throws

    /**
     Invokes the DescribeDBClusterSnapshotAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotAttributesMessage object being passed to this operation.
     - Returns: The DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound.
     */
    func describeDBClusterSnapshotAttributesSync(input: RDSModel.DescribeDBClusterSnapshotAttributesMessage) throws -> RDSModel.DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes

    /**
     Invokes the DescribeDBClusterSnapshots operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotsMessage object being passed to this operation.
         - completion: The DBClusterSnapshotMessageForDescribeDBClusterSnapshots object or an error will be passed to this 
           callback when the operation is complete. The DBClusterSnapshotMessageForDescribeDBClusterSnapshots
           object will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound.
     */
    func describeDBClusterSnapshotsAsync(input: RDSModel.DescribeDBClusterSnapshotsMessage, completion: @escaping (HTTPResult<RDSModel.DBClusterSnapshotMessageForDescribeDBClusterSnapshots>) -> ()) throws

    /**
     Invokes the DescribeDBClusterSnapshots operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotsMessage object being passed to this operation.
     - Returns: The DBClusterSnapshotMessageForDescribeDBClusterSnapshots object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound.
     */
    func describeDBClusterSnapshotsSync(input: RDSModel.DescribeDBClusterSnapshotsMessage) throws -> RDSModel.DBClusterSnapshotMessageForDescribeDBClusterSnapshots

    /**
     Invokes the DescribeDBClusters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClustersMessage object being passed to this operation.
         - completion: The DBClusterMessageForDescribeDBClusters object or an error will be passed to this 
           callback when the operation is complete. The DBClusterMessageForDescribeDBClusters
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound.
     */
    func describeDBClustersAsync(input: RDSModel.DescribeDBClustersMessage, completion: @escaping (HTTPResult<RDSModel.DBClusterMessageForDescribeDBClusters>) -> ()) throws

    /**
     Invokes the DescribeDBClusters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClustersMessage object being passed to this operation.
     - Returns: The DBClusterMessageForDescribeDBClusters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound.
     */
    func describeDBClustersSync(input: RDSModel.DescribeDBClustersMessage) throws -> RDSModel.DBClusterMessageForDescribeDBClusters

    /**
     Invokes the DescribeDBEngineVersions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBEngineVersionsMessage object being passed to this operation.
         - completion: The DBEngineVersionMessageForDescribeDBEngineVersions object or an error will be passed to this 
           callback when the operation is complete. The DBEngineVersionMessageForDescribeDBEngineVersions
           object will be validated before being returned to caller.
     */
    func describeDBEngineVersionsAsync(input: RDSModel.DescribeDBEngineVersionsMessage, completion: @escaping (HTTPResult<RDSModel.DBEngineVersionMessageForDescribeDBEngineVersions>) -> ()) throws

    /**
     Invokes the DescribeDBEngineVersions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBEngineVersionsMessage object being passed to this operation.
     - Returns: The DBEngineVersionMessageForDescribeDBEngineVersions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeDBEngineVersionsSync(input: RDSModel.DescribeDBEngineVersionsMessage) throws -> RDSModel.DBEngineVersionMessageForDescribeDBEngineVersions

    /**
     Invokes the DescribeDBInstanceAutomatedBackups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBInstanceAutomatedBackupsMessage object being passed to this operation.
         - completion: The DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups object or an error will be passed to this 
           callback when the operation is complete. The DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceAutomatedBackupNotFound.
     */
    func describeDBInstanceAutomatedBackupsAsync(input: RDSModel.DescribeDBInstanceAutomatedBackupsMessage, completion: @escaping (HTTPResult<RDSModel.DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups>) -> ()) throws

    /**
     Invokes the DescribeDBInstanceAutomatedBackups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBInstanceAutomatedBackupsMessage object being passed to this operation.
     - Returns: The DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupNotFound.
     */
    func describeDBInstanceAutomatedBackupsSync(input: RDSModel.DescribeDBInstanceAutomatedBackupsMessage) throws -> RDSModel.DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups

    /**
     Invokes the DescribeDBInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBInstancesMessage object being passed to this operation.
         - completion: The DBInstanceMessageForDescribeDBInstances object or an error will be passed to this 
           callback when the operation is complete. The DBInstanceMessageForDescribeDBInstances
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound.
     */
    func describeDBInstancesAsync(input: RDSModel.DescribeDBInstancesMessage, completion: @escaping (HTTPResult<RDSModel.DBInstanceMessageForDescribeDBInstances>) -> ()) throws

    /**
     Invokes the DescribeDBInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBInstancesMessage object being passed to this operation.
     - Returns: The DBInstanceMessageForDescribeDBInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound.
     */
    func describeDBInstancesSync(input: RDSModel.DescribeDBInstancesMessage) throws -> RDSModel.DBInstanceMessageForDescribeDBInstances

    /**
     Invokes the DescribeDBLogFiles operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBLogFilesMessage object being passed to this operation.
         - completion: The DescribeDBLogFilesResponseForDescribeDBLogFiles object or an error will be passed to this 
           callback when the operation is complete. The DescribeDBLogFilesResponseForDescribeDBLogFiles
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound.
     */
    func describeDBLogFilesAsync(input: RDSModel.DescribeDBLogFilesMessage, completion: @escaping (HTTPResult<RDSModel.DescribeDBLogFilesResponseForDescribeDBLogFiles>) -> ()) throws

    /**
     Invokes the DescribeDBLogFiles operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBLogFilesMessage object being passed to this operation.
     - Returns: The DescribeDBLogFilesResponseForDescribeDBLogFiles object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound.
     */
    func describeDBLogFilesSync(input: RDSModel.DescribeDBLogFilesMessage) throws -> RDSModel.DescribeDBLogFilesResponseForDescribeDBLogFiles

    /**
     Invokes the DescribeDBParameterGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBParameterGroupsMessage object being passed to this operation.
         - completion: The DBParameterGroupsMessageForDescribeDBParameterGroups object or an error will be passed to this 
           callback when the operation is complete. The DBParameterGroupsMessageForDescribeDBParameterGroups
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound.
     */
    func describeDBParameterGroupsAsync(input: RDSModel.DescribeDBParameterGroupsMessage, completion: @escaping (HTTPResult<RDSModel.DBParameterGroupsMessageForDescribeDBParameterGroups>) -> ()) throws

    /**
     Invokes the DescribeDBParameterGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBParameterGroupsMessage object being passed to this operation.
     - Returns: The DBParameterGroupsMessageForDescribeDBParameterGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    func describeDBParameterGroupsSync(input: RDSModel.DescribeDBParameterGroupsMessage) throws -> RDSModel.DBParameterGroupsMessageForDescribeDBParameterGroups

    /**
     Invokes the DescribeDBParameters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBParametersMessage object being passed to this operation.
         - completion: The DBParameterGroupDetailsForDescribeDBParameters object or an error will be passed to this 
           callback when the operation is complete. The DBParameterGroupDetailsForDescribeDBParameters
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound.
     */
    func describeDBParametersAsync(input: RDSModel.DescribeDBParametersMessage, completion: @escaping (HTTPResult<RDSModel.DBParameterGroupDetailsForDescribeDBParameters>) -> ()) throws

    /**
     Invokes the DescribeDBParameters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBParametersMessage object being passed to this operation.
     - Returns: The DBParameterGroupDetailsForDescribeDBParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    func describeDBParametersSync(input: RDSModel.DescribeDBParametersMessage) throws -> RDSModel.DBParameterGroupDetailsForDescribeDBParameters

    /**
     Invokes the DescribeDBSecurityGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBSecurityGroupsMessage object being passed to this operation.
         - completion: The DBSecurityGroupMessageForDescribeDBSecurityGroups object or an error will be passed to this 
           callback when the operation is complete. The DBSecurityGroupMessageForDescribeDBSecurityGroups
           object will be validated before being returned to caller.
           The possible errors are: dBSecurityGroupNotFound.
     */
    func describeDBSecurityGroupsAsync(input: RDSModel.DescribeDBSecurityGroupsMessage, completion: @escaping (HTTPResult<RDSModel.DBSecurityGroupMessageForDescribeDBSecurityGroups>) -> ()) throws

    /**
     Invokes the DescribeDBSecurityGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBSecurityGroupsMessage object being passed to this operation.
     - Returns: The DBSecurityGroupMessageForDescribeDBSecurityGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSecurityGroupNotFound.
     */
    func describeDBSecurityGroupsSync(input: RDSModel.DescribeDBSecurityGroupsMessage) throws -> RDSModel.DBSecurityGroupMessageForDescribeDBSecurityGroups

    /**
     Invokes the DescribeDBSnapshotAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBSnapshotAttributesMessage object being passed to this operation.
         - completion: The DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes object or an error will be passed to this 
           callback when the operation is complete. The DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes
           object will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound.
     */
    func describeDBSnapshotAttributesAsync(input: RDSModel.DescribeDBSnapshotAttributesMessage, completion: @escaping (HTTPResult<RDSModel.DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes>) -> ()) throws

    /**
     Invokes the DescribeDBSnapshotAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBSnapshotAttributesMessage object being passed to this operation.
     - Returns: The DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound.
     */
    func describeDBSnapshotAttributesSync(input: RDSModel.DescribeDBSnapshotAttributesMessage) throws -> RDSModel.DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes

    /**
     Invokes the DescribeDBSnapshots operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBSnapshotsMessage object being passed to this operation.
         - completion: The DBSnapshotMessageForDescribeDBSnapshots object or an error will be passed to this 
           callback when the operation is complete. The DBSnapshotMessageForDescribeDBSnapshots
           object will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound.
     */
    func describeDBSnapshotsAsync(input: RDSModel.DescribeDBSnapshotsMessage, completion: @escaping (HTTPResult<RDSModel.DBSnapshotMessageForDescribeDBSnapshots>) -> ()) throws

    /**
     Invokes the DescribeDBSnapshots operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBSnapshotsMessage object being passed to this operation.
     - Returns: The DBSnapshotMessageForDescribeDBSnapshots object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound.
     */
    func describeDBSnapshotsSync(input: RDSModel.DescribeDBSnapshotsMessage) throws -> RDSModel.DBSnapshotMessageForDescribeDBSnapshots

    /**
     Invokes the DescribeDBSubnetGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBSubnetGroupsMessage object being passed to this operation.
         - completion: The DBSubnetGroupMessageForDescribeDBSubnetGroups object or an error will be passed to this 
           callback when the operation is complete. The DBSubnetGroupMessageForDescribeDBSubnetGroups
           object will be validated before being returned to caller.
           The possible errors are: dBSubnetGroupNotFound.
     */
    func describeDBSubnetGroupsAsync(input: RDSModel.DescribeDBSubnetGroupsMessage, completion: @escaping (HTTPResult<RDSModel.DBSubnetGroupMessageForDescribeDBSubnetGroups>) -> ()) throws

    /**
     Invokes the DescribeDBSubnetGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBSubnetGroupsMessage object being passed to this operation.
     - Returns: The DBSubnetGroupMessageForDescribeDBSubnetGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSubnetGroupNotFound.
     */
    func describeDBSubnetGroupsSync(input: RDSModel.DescribeDBSubnetGroupsMessage) throws -> RDSModel.DBSubnetGroupMessageForDescribeDBSubnetGroups

    /**
     Invokes the DescribeEngineDefaultClusterParameters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEngineDefaultClusterParametersMessage object being passed to this operation.
         - completion: The DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters object or an error will be passed to this 
           callback when the operation is complete. The DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters
           object will be validated before being returned to caller.
     */
    func describeEngineDefaultClusterParametersAsync(input: RDSModel.DescribeEngineDefaultClusterParametersMessage, completion: @escaping (HTTPResult<RDSModel.DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters>) -> ()) throws

    /**
     Invokes the DescribeEngineDefaultClusterParameters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEngineDefaultClusterParametersMessage object being passed to this operation.
     - Returns: The DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEngineDefaultClusterParametersSync(input: RDSModel.DescribeEngineDefaultClusterParametersMessage) throws -> RDSModel.DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters

    /**
     Invokes the DescribeEngineDefaultParameters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEngineDefaultParametersMessage object being passed to this operation.
         - completion: The DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters object or an error will be passed to this 
           callback when the operation is complete. The DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters
           object will be validated before being returned to caller.
     */
    func describeEngineDefaultParametersAsync(input: RDSModel.DescribeEngineDefaultParametersMessage, completion: @escaping (HTTPResult<RDSModel.DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters>) -> ()) throws

    /**
     Invokes the DescribeEngineDefaultParameters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEngineDefaultParametersMessage object being passed to this operation.
     - Returns: The DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEngineDefaultParametersSync(input: RDSModel.DescribeEngineDefaultParametersMessage) throws -> RDSModel.DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters

    /**
     Invokes the DescribeEventCategories operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEventCategoriesMessage object being passed to this operation.
         - completion: The EventCategoriesMessageForDescribeEventCategories object or an error will be passed to this 
           callback when the operation is complete. The EventCategoriesMessageForDescribeEventCategories
           object will be validated before being returned to caller.
     */
    func describeEventCategoriesAsync(input: RDSModel.DescribeEventCategoriesMessage, completion: @escaping (HTTPResult<RDSModel.EventCategoriesMessageForDescribeEventCategories>) -> ()) throws

    /**
     Invokes the DescribeEventCategories operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEventCategoriesMessage object being passed to this operation.
     - Returns: The EventCategoriesMessageForDescribeEventCategories object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEventCategoriesSync(input: RDSModel.DescribeEventCategoriesMessage) throws -> RDSModel.EventCategoriesMessageForDescribeEventCategories

    /**
     Invokes the DescribeEventSubscriptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEventSubscriptionsMessage object being passed to this operation.
         - completion: The EventSubscriptionsMessageForDescribeEventSubscriptions object or an error will be passed to this 
           callback when the operation is complete. The EventSubscriptionsMessageForDescribeEventSubscriptions
           object will be validated before being returned to caller.
           The possible errors are: subscriptionNotFound.
     */
    func describeEventSubscriptionsAsync(input: RDSModel.DescribeEventSubscriptionsMessage, completion: @escaping (HTTPResult<RDSModel.EventSubscriptionsMessageForDescribeEventSubscriptions>) -> ()) throws

    /**
     Invokes the DescribeEventSubscriptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEventSubscriptionsMessage object being passed to this operation.
     - Returns: The EventSubscriptionsMessageForDescribeEventSubscriptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: subscriptionNotFound.
     */
    func describeEventSubscriptionsSync(input: RDSModel.DescribeEventSubscriptionsMessage) throws -> RDSModel.EventSubscriptionsMessageForDescribeEventSubscriptions

    /**
     Invokes the DescribeEvents operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEventsMessage object being passed to this operation.
         - completion: The EventsMessageForDescribeEvents object or an error will be passed to this 
           callback when the operation is complete. The EventsMessageForDescribeEvents
           object will be validated before being returned to caller.
     */
    func describeEventsAsync(input: RDSModel.DescribeEventsMessage, completion: @escaping (HTTPResult<RDSModel.EventsMessageForDescribeEvents>) -> ()) throws

    /**
     Invokes the DescribeEvents operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEventsMessage object being passed to this operation.
     - Returns: The EventsMessageForDescribeEvents object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEventsSync(input: RDSModel.DescribeEventsMessage) throws -> RDSModel.EventsMessageForDescribeEvents

    /**
     Invokes the DescribeGlobalClusters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeGlobalClustersMessage object being passed to this operation.
         - completion: The GlobalClustersMessageForDescribeGlobalClusters object or an error will be passed to this 
           callback when the operation is complete. The GlobalClustersMessageForDescribeGlobalClusters
           object will be validated before being returned to caller.
           The possible errors are: globalClusterNotFound.
     */
    func describeGlobalClustersAsync(input: RDSModel.DescribeGlobalClustersMessage, completion: @escaping (HTTPResult<RDSModel.GlobalClustersMessageForDescribeGlobalClusters>) -> ()) throws

    /**
     Invokes the DescribeGlobalClusters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeGlobalClustersMessage object being passed to this operation.
     - Returns: The GlobalClustersMessageForDescribeGlobalClusters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalClusterNotFound.
     */
    func describeGlobalClustersSync(input: RDSModel.DescribeGlobalClustersMessage) throws -> RDSModel.GlobalClustersMessageForDescribeGlobalClusters

    /**
     Invokes the DescribeOptionGroupOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeOptionGroupOptionsMessage object being passed to this operation.
         - completion: The OptionGroupOptionsMessageForDescribeOptionGroupOptions object or an error will be passed to this 
           callback when the operation is complete. The OptionGroupOptionsMessageForDescribeOptionGroupOptions
           object will be validated before being returned to caller.
     */
    func describeOptionGroupOptionsAsync(input: RDSModel.DescribeOptionGroupOptionsMessage, completion: @escaping (HTTPResult<RDSModel.OptionGroupOptionsMessageForDescribeOptionGroupOptions>) -> ()) throws

    /**
     Invokes the DescribeOptionGroupOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeOptionGroupOptionsMessage object being passed to this operation.
     - Returns: The OptionGroupOptionsMessageForDescribeOptionGroupOptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeOptionGroupOptionsSync(input: RDSModel.DescribeOptionGroupOptionsMessage) throws -> RDSModel.OptionGroupOptionsMessageForDescribeOptionGroupOptions

    /**
     Invokes the DescribeOptionGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeOptionGroupsMessage object being passed to this operation.
         - completion: The OptionGroupsForDescribeOptionGroups object or an error will be passed to this 
           callback when the operation is complete. The OptionGroupsForDescribeOptionGroups
           object will be validated before being returned to caller.
           The possible errors are: optionGroupNotFound.
     */
    func describeOptionGroupsAsync(input: RDSModel.DescribeOptionGroupsMessage, completion: @escaping (HTTPResult<RDSModel.OptionGroupsForDescribeOptionGroups>) -> ()) throws

    /**
     Invokes the DescribeOptionGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeOptionGroupsMessage object being passed to this operation.
     - Returns: The OptionGroupsForDescribeOptionGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: optionGroupNotFound.
     */
    func describeOptionGroupsSync(input: RDSModel.DescribeOptionGroupsMessage) throws -> RDSModel.OptionGroupsForDescribeOptionGroups

    /**
     Invokes the DescribeOrderableDBInstanceOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeOrderableDBInstanceOptionsMessage object being passed to this operation.
         - completion: The OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions object or an error will be passed to this 
           callback when the operation is complete. The OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions
           object will be validated before being returned to caller.
     */
    func describeOrderableDBInstanceOptionsAsync(input: RDSModel.DescribeOrderableDBInstanceOptionsMessage, completion: @escaping (HTTPResult<RDSModel.OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions>) -> ()) throws

    /**
     Invokes the DescribeOrderableDBInstanceOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeOrderableDBInstanceOptionsMessage object being passed to this operation.
     - Returns: The OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeOrderableDBInstanceOptionsSync(input: RDSModel.DescribeOrderableDBInstanceOptionsMessage) throws -> RDSModel.OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions

    /**
     Invokes the DescribePendingMaintenanceActions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribePendingMaintenanceActionsMessage object being passed to this operation.
         - completion: The PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions object or an error will be passed to this 
           callback when the operation is complete. The PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions
           object will be validated before being returned to caller.
           The possible errors are: resourceNotFound.
     */
    func describePendingMaintenanceActionsAsync(input: RDSModel.DescribePendingMaintenanceActionsMessage, completion: @escaping (HTTPResult<RDSModel.PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions>) -> ()) throws

    /**
     Invokes the DescribePendingMaintenanceActions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribePendingMaintenanceActionsMessage object being passed to this operation.
     - Returns: The PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: resourceNotFound.
     */
    func describePendingMaintenanceActionsSync(input: RDSModel.DescribePendingMaintenanceActionsMessage) throws -> RDSModel.PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions

    /**
     Invokes the DescribeReservedDBInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesMessage object being passed to this operation.
         - completion: The ReservedDBInstanceMessageForDescribeReservedDBInstances object or an error will be passed to this 
           callback when the operation is complete. The ReservedDBInstanceMessageForDescribeReservedDBInstances
           object will be validated before being returned to caller.
           The possible errors are: reservedDBInstanceNotFound.
     */
    func describeReservedDBInstancesAsync(input: RDSModel.DescribeReservedDBInstancesMessage, completion: @escaping (HTTPResult<RDSModel.ReservedDBInstanceMessageForDescribeReservedDBInstances>) -> ()) throws

    /**
     Invokes the DescribeReservedDBInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesMessage object being passed to this operation.
     - Returns: The ReservedDBInstanceMessageForDescribeReservedDBInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: reservedDBInstanceNotFound.
     */
    func describeReservedDBInstancesSync(input: RDSModel.DescribeReservedDBInstancesMessage) throws -> RDSModel.ReservedDBInstanceMessageForDescribeReservedDBInstances

    /**
     Invokes the DescribeReservedDBInstancesOfferings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesOfferingsMessage object being passed to this operation.
         - completion: The ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings object or an error will be passed to this 
           callback when the operation is complete. The ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings
           object will be validated before being returned to caller.
           The possible errors are: reservedDBInstancesOfferingNotFound.
     */
    func describeReservedDBInstancesOfferingsAsync(input: RDSModel.DescribeReservedDBInstancesOfferingsMessage, completion: @escaping (HTTPResult<RDSModel.ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings>) -> ()) throws

    /**
     Invokes the DescribeReservedDBInstancesOfferings operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesOfferingsMessage object being passed to this operation.
     - Returns: The ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: reservedDBInstancesOfferingNotFound.
     */
    func describeReservedDBInstancesOfferingsSync(input: RDSModel.DescribeReservedDBInstancesOfferingsMessage) throws -> RDSModel.ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings

    /**
     Invokes the DescribeSourceRegions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSourceRegionsMessage object being passed to this operation.
         - completion: The SourceRegionMessageForDescribeSourceRegions object or an error will be passed to this 
           callback when the operation is complete. The SourceRegionMessageForDescribeSourceRegions
           object will be validated before being returned to caller.
     */
    func describeSourceRegionsAsync(input: RDSModel.DescribeSourceRegionsMessage, completion: @escaping (HTTPResult<RDSModel.SourceRegionMessageForDescribeSourceRegions>) -> ()) throws

    /**
     Invokes the DescribeSourceRegions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSourceRegionsMessage object being passed to this operation.
     - Returns: The SourceRegionMessageForDescribeSourceRegions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSourceRegionsSync(input: RDSModel.DescribeSourceRegionsMessage) throws -> RDSModel.SourceRegionMessageForDescribeSourceRegions

    /**
     Invokes the DescribeValidDBInstanceModifications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeValidDBInstanceModificationsMessage object being passed to this operation.
         - completion: The DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications object or an error will be passed to this 
           callback when the operation is complete. The DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, invalidDBInstanceState.
     */
    func describeValidDBInstanceModificationsAsync(input: RDSModel.DescribeValidDBInstanceModificationsMessage, completion: @escaping (HTTPResult<RDSModel.DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications>) -> ()) throws

    /**
     Invokes the DescribeValidDBInstanceModifications operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeValidDBInstanceModificationsMessage object being passed to this operation.
     - Returns: The DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    func describeValidDBInstanceModificationsSync(input: RDSModel.DescribeValidDBInstanceModificationsMessage) throws -> RDSModel.DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications

    /**
     Invokes the DownloadDBLogFilePortion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DownloadDBLogFilePortionMessage object being passed to this operation.
         - completion: The DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion object or an error will be passed to this 
           callback when the operation is complete. The DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, dBLogFileNotFound.
     */
    func downloadDBLogFilePortionAsync(input: RDSModel.DownloadDBLogFilePortionMessage, completion: @escaping (HTTPResult<RDSModel.DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion>) -> ()) throws

    /**
     Invokes the DownloadDBLogFilePortion operation waiting for the response before returning.

     - Parameters:
         - input: The validated DownloadDBLogFilePortionMessage object being passed to this operation.
     - Returns: The DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, dBLogFileNotFound.
     */
    func downloadDBLogFilePortionSync(input: RDSModel.DownloadDBLogFilePortionMessage) throws -> RDSModel.DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion

    /**
     Invokes the FailoverDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated FailoverDBClusterMessage object being passed to this operation.
         - completion: The FailoverDBClusterResultForFailoverDBCluster object or an error will be passed to this 
           callback when the operation is complete. The FailoverDBClusterResultForFailoverDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func failoverDBClusterAsync(input: RDSModel.FailoverDBClusterMessage, completion: @escaping (HTTPResult<RDSModel.FailoverDBClusterResultForFailoverDBCluster>) -> ()) throws

    /**
     Invokes the FailoverDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated FailoverDBClusterMessage object being passed to this operation.
     - Returns: The FailoverDBClusterResultForFailoverDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func failoverDBClusterSync(input: RDSModel.FailoverDBClusterMessage) throws -> RDSModel.FailoverDBClusterResultForFailoverDBCluster

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceMessage object being passed to this operation.
         - completion: The TagListMessageForListTagsForResource object or an error will be passed to this 
           callback when the operation is complete. The TagListMessageForListTagsForResource
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    func listTagsForResourceAsync(input: RDSModel.ListTagsForResourceMessage, completion: @escaping (HTTPResult<RDSModel.TagListMessageForListTagsForResource>) -> ()) throws

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceMessage object being passed to this operation.
     - Returns: The TagListMessageForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    func listTagsForResourceSync(input: RDSModel.ListTagsForResourceMessage) throws -> RDSModel.TagListMessageForListTagsForResource

    /**
     Invokes the ModifyCurrentDBClusterCapacity operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyCurrentDBClusterCapacityMessage object being passed to this operation.
         - completion: The DBClusterCapacityInfoForModifyCurrentDBClusterCapacity object or an error will be passed to this 
           callback when the operation is complete. The DBClusterCapacityInfoForModifyCurrentDBClusterCapacity
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterCapacity, invalidDBClusterState.
     */
    func modifyCurrentDBClusterCapacityAsync(input: RDSModel.ModifyCurrentDBClusterCapacityMessage, completion: @escaping (HTTPResult<RDSModel.DBClusterCapacityInfoForModifyCurrentDBClusterCapacity>) -> ()) throws

    /**
     Invokes the ModifyCurrentDBClusterCapacity operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyCurrentDBClusterCapacityMessage object being passed to this operation.
     - Returns: The DBClusterCapacityInfoForModifyCurrentDBClusterCapacity object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterCapacity, invalidDBClusterState.
     */
    func modifyCurrentDBClusterCapacitySync(input: RDSModel.ModifyCurrentDBClusterCapacityMessage) throws -> RDSModel.DBClusterCapacityInfoForModifyCurrentDBClusterCapacity

    /**
     Invokes the ModifyDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBClusterMessage object being passed to this operation.
         - completion: The ModifyDBClusterResultForModifyDBCluster object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBClusterResultForModifyDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBSubnetGroupNotFound, invalidDBClusterState, invalidDBInstanceState, invalidDBSecurityGroupState, invalidDBSubnetGroupState, invalidSubnet, invalidVPCNetworkState, storageQuotaExceeded.
     */
    func modifyDBClusterAsync(input: RDSModel.ModifyDBClusterMessage, completion: @escaping (HTTPResult<RDSModel.ModifyDBClusterResultForModifyDBCluster>) -> ()) throws

    /**
     Invokes the ModifyDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBClusterMessage object being passed to this operation.
     - Returns: The ModifyDBClusterResultForModifyDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBSubnetGroupNotFound, invalidDBClusterState, invalidDBInstanceState, invalidDBSecurityGroupState, invalidDBSubnetGroupState, invalidSubnet, invalidVPCNetworkState, storageQuotaExceeded.
     */
    func modifyDBClusterSync(input: RDSModel.ModifyDBClusterMessage) throws -> RDSModel.ModifyDBClusterResultForModifyDBCluster

    /**
     Invokes the ModifyDBClusterEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBClusterEndpointMessage object being passed to this operation.
         - completion: The DBClusterEndpointForModifyDBClusterEndpoint object or an error will be passed to this 
           callback when the operation is complete. The DBClusterEndpointForModifyDBClusterEndpoint
           object will be validated before being returned to caller.
           The possible errors are: dBClusterEndpointNotFound, dBInstanceNotFound, invalidDBClusterEndpointState, invalidDBClusterState, invalidDBInstanceState.
     */
    func modifyDBClusterEndpointAsync(input: RDSModel.ModifyDBClusterEndpointMessage, completion: @escaping (HTTPResult<RDSModel.DBClusterEndpointForModifyDBClusterEndpoint>) -> ()) throws

    /**
     Invokes the ModifyDBClusterEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBClusterEndpointMessage object being passed to this operation.
     - Returns: The DBClusterEndpointForModifyDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterEndpointNotFound, dBInstanceNotFound, invalidDBClusterEndpointState, invalidDBClusterState, invalidDBInstanceState.
     */
    func modifyDBClusterEndpointSync(input: RDSModel.ModifyDBClusterEndpointMessage) throws -> RDSModel.DBClusterEndpointForModifyDBClusterEndpoint

    /**
     Invokes the ModifyDBClusterParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBClusterParameterGroupMessage object being passed to this operation.
         - completion: The DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func modifyDBClusterParameterGroupAsync(input: RDSModel.ModifyDBClusterParameterGroupMessage, completion: @escaping (HTTPResult<RDSModel.DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup>) -> ()) throws

    /**
     Invokes the ModifyDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func modifyDBClusterParameterGroupSync(input: RDSModel.ModifyDBClusterParameterGroupMessage) throws -> RDSModel.DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup

    /**
     Invokes the ModifyDBClusterSnapshotAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBClusterSnapshotAttributeMessage object being passed to this operation.
         - completion: The ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute
           object will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, sharedSnapshotQuotaExceeded.
     */
    func modifyDBClusterSnapshotAttributeAsync(input: RDSModel.ModifyDBClusterSnapshotAttributeMessage, completion: @escaping (HTTPResult<RDSModel.ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute>) -> ()) throws

    /**
     Invokes the ModifyDBClusterSnapshotAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBClusterSnapshotAttributeMessage object being passed to this operation.
     - Returns: The ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, sharedSnapshotQuotaExceeded.
     */
    func modifyDBClusterSnapshotAttributeSync(input: RDSModel.ModifyDBClusterSnapshotAttributeMessage) throws -> RDSModel.ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute

    /**
     Invokes the ModifyDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBInstanceMessage object being passed to this operation.
         - completion: The ModifyDBInstanceResultForModifyDBInstance object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBInstanceResultForModifyDBInstance
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, certificateNotFound, dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBUpgradeDependencyFailure, domainNotFound, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSecurityGroupState, invalidVPCNetworkState, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func modifyDBInstanceAsync(input: RDSModel.ModifyDBInstanceMessage, completion: @escaping (HTTPResult<RDSModel.ModifyDBInstanceResultForModifyDBInstance>) -> ()) throws

    /**
     Invokes the ModifyDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBInstanceMessage object being passed to this operation.
     - Returns: The ModifyDBInstanceResultForModifyDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, certificateNotFound, dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBUpgradeDependencyFailure, domainNotFound, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSecurityGroupState, invalidVPCNetworkState, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func modifyDBInstanceSync(input: RDSModel.ModifyDBInstanceMessage) throws -> RDSModel.ModifyDBInstanceResultForModifyDBInstance

    /**
     Invokes the ModifyDBParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBParameterGroupMessage object being passed to this operation.
         - completion: The DBParameterGroupNameMessageForModifyDBParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The DBParameterGroupNameMessageForModifyDBParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func modifyDBParameterGroupAsync(input: RDSModel.ModifyDBParameterGroupMessage, completion: @escaping (HTTPResult<RDSModel.DBParameterGroupNameMessageForModifyDBParameterGroup>) -> ()) throws

    /**
     Invokes the ModifyDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBParameterGroupMessage object being passed to this operation.
     - Returns: The DBParameterGroupNameMessageForModifyDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func modifyDBParameterGroupSync(input: RDSModel.ModifyDBParameterGroupMessage) throws -> RDSModel.DBParameterGroupNameMessageForModifyDBParameterGroup

    /**
     Invokes the ModifyDBSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBSnapshotMessage object being passed to this operation.
         - completion: The ModifyDBSnapshotResultForModifyDBSnapshot object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBSnapshotResultForModifyDBSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound.
     */
    func modifyDBSnapshotAsync(input: RDSModel.ModifyDBSnapshotMessage, completion: @escaping (HTTPResult<RDSModel.ModifyDBSnapshotResultForModifyDBSnapshot>) -> ()) throws

    /**
     Invokes the ModifyDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBSnapshotMessage object being passed to this operation.
     - Returns: The ModifyDBSnapshotResultForModifyDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound.
     */
    func modifyDBSnapshotSync(input: RDSModel.ModifyDBSnapshotMessage) throws -> RDSModel.ModifyDBSnapshotResultForModifyDBSnapshot

    /**
     Invokes the ModifyDBSnapshotAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBSnapshotAttributeMessage object being passed to this operation.
         - completion: The ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute
           object will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound, invalidDBSnapshotState, sharedSnapshotQuotaExceeded.
     */
    func modifyDBSnapshotAttributeAsync(input: RDSModel.ModifyDBSnapshotAttributeMessage, completion: @escaping (HTTPResult<RDSModel.ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute>) -> ()) throws

    /**
     Invokes the ModifyDBSnapshotAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBSnapshotAttributeMessage object being passed to this operation.
     - Returns: The ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound, invalidDBSnapshotState, sharedSnapshotQuotaExceeded.
     */
    func modifyDBSnapshotAttributeSync(input: RDSModel.ModifyDBSnapshotAttributeMessage) throws -> RDSModel.ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute

    /**
     Invokes the ModifyDBSubnetGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBSubnetGroupMessage object being passed to this operation.
         - completion: The ModifyDBSubnetGroupResultForModifyDBSubnetGroup object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBSubnetGroupResultForModifyDBSubnetGroup
           object will be validated before being returned to caller.
           The possible errors are: dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, dBSubnetQuotaExceeded, invalidSubnet, subnetAlreadyInUse.
     */
    func modifyDBSubnetGroupAsync(input: RDSModel.ModifyDBSubnetGroupMessage, completion: @escaping (HTTPResult<RDSModel.ModifyDBSubnetGroupResultForModifyDBSubnetGroup>) -> ()) throws

    /**
     Invokes the ModifyDBSubnetGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBSubnetGroupMessage object being passed to this operation.
     - Returns: The ModifyDBSubnetGroupResultForModifyDBSubnetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, dBSubnetQuotaExceeded, invalidSubnet, subnetAlreadyInUse.
     */
    func modifyDBSubnetGroupSync(input: RDSModel.ModifyDBSubnetGroupMessage) throws -> RDSModel.ModifyDBSubnetGroupResultForModifyDBSubnetGroup

    /**
     Invokes the ModifyEventSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyEventSubscriptionMessage object being passed to this operation.
         - completion: The ModifyEventSubscriptionResultForModifyEventSubscription object or an error will be passed to this 
           callback when the operation is complete. The ModifyEventSubscriptionResultForModifyEventSubscription
           object will be validated before being returned to caller.
           The possible errors are: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, subscriptionCategoryNotFound, subscriptionNotFound.
     */
    func modifyEventSubscriptionAsync(input: RDSModel.ModifyEventSubscriptionMessage, completion: @escaping (HTTPResult<RDSModel.ModifyEventSubscriptionResultForModifyEventSubscription>) -> ()) throws

    /**
     Invokes the ModifyEventSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyEventSubscriptionMessage object being passed to this operation.
     - Returns: The ModifyEventSubscriptionResultForModifyEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, subscriptionCategoryNotFound, subscriptionNotFound.
     */
    func modifyEventSubscriptionSync(input: RDSModel.ModifyEventSubscriptionMessage) throws -> RDSModel.ModifyEventSubscriptionResultForModifyEventSubscription

    /**
     Invokes the ModifyGlobalCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyGlobalClusterMessage object being passed to this operation.
         - completion: The ModifyGlobalClusterResultForModifyGlobalCluster object or an error will be passed to this 
           callback when the operation is complete. The ModifyGlobalClusterResultForModifyGlobalCluster
           object will be validated before being returned to caller.
           The possible errors are: globalClusterNotFound, invalidGlobalClusterState.
     */
    func modifyGlobalClusterAsync(input: RDSModel.ModifyGlobalClusterMessage, completion: @escaping (HTTPResult<RDSModel.ModifyGlobalClusterResultForModifyGlobalCluster>) -> ()) throws

    /**
     Invokes the ModifyGlobalCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyGlobalClusterMessage object being passed to this operation.
     - Returns: The ModifyGlobalClusterResultForModifyGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalClusterNotFound, invalidGlobalClusterState.
     */
    func modifyGlobalClusterSync(input: RDSModel.ModifyGlobalClusterMessage) throws -> RDSModel.ModifyGlobalClusterResultForModifyGlobalCluster

    /**
     Invokes the ModifyOptionGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyOptionGroupMessage object being passed to this operation.
         - completion: The ModifyOptionGroupResultForModifyOptionGroup object or an error will be passed to this 
           callback when the operation is complete. The ModifyOptionGroupResultForModifyOptionGroup
           object will be validated before being returned to caller.
           The possible errors are: invalidOptionGroupState, optionGroupNotFound.
     */
    func modifyOptionGroupAsync(input: RDSModel.ModifyOptionGroupMessage, completion: @escaping (HTTPResult<RDSModel.ModifyOptionGroupResultForModifyOptionGroup>) -> ()) throws

    /**
     Invokes the ModifyOptionGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyOptionGroupMessage object being passed to this operation.
     - Returns: The ModifyOptionGroupResultForModifyOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOptionGroupState, optionGroupNotFound.
     */
    func modifyOptionGroupSync(input: RDSModel.ModifyOptionGroupMessage) throws -> RDSModel.ModifyOptionGroupResultForModifyOptionGroup

    /**
     Invokes the PromoteReadReplica operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PromoteReadReplicaMessage object being passed to this operation.
         - completion: The PromoteReadReplicaResultForPromoteReadReplica object or an error will be passed to this 
           callback when the operation is complete. The PromoteReadReplicaResultForPromoteReadReplica
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, invalidDBInstanceState.
     */
    func promoteReadReplicaAsync(input: RDSModel.PromoteReadReplicaMessage, completion: @escaping (HTTPResult<RDSModel.PromoteReadReplicaResultForPromoteReadReplica>) -> ()) throws

    /**
     Invokes the PromoteReadReplica operation waiting for the response before returning.

     - Parameters:
         - input: The validated PromoteReadReplicaMessage object being passed to this operation.
     - Returns: The PromoteReadReplicaResultForPromoteReadReplica object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    func promoteReadReplicaSync(input: RDSModel.PromoteReadReplicaMessage) throws -> RDSModel.PromoteReadReplicaResultForPromoteReadReplica

    /**
     Invokes the PromoteReadReplicaDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PromoteReadReplicaDBClusterMessage object being passed to this operation.
         - completion: The PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster object or an error will be passed to this 
           callback when the operation is complete. The PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState.
     */
    func promoteReadReplicaDBClusterAsync(input: RDSModel.PromoteReadReplicaDBClusterMessage, completion: @escaping (HTTPResult<RDSModel.PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster>) -> ()) throws

    /**
     Invokes the PromoteReadReplicaDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated PromoteReadReplicaDBClusterMessage object being passed to this operation.
     - Returns: The PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState.
     */
    func promoteReadReplicaDBClusterSync(input: RDSModel.PromoteReadReplicaDBClusterMessage) throws -> RDSModel.PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster

    /**
     Invokes the PurchaseReservedDBInstancesOffering operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PurchaseReservedDBInstancesOfferingMessage object being passed to this operation.
         - completion: The PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering object or an error will be passed to this 
           callback when the operation is complete. The PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering
           object will be validated before being returned to caller.
           The possible errors are: reservedDBInstanceAlreadyExists, reservedDBInstanceQuotaExceeded, reservedDBInstancesOfferingNotFound.
     */
    func purchaseReservedDBInstancesOfferingAsync(input: RDSModel.PurchaseReservedDBInstancesOfferingMessage, completion: @escaping (HTTPResult<RDSModel.PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering>) -> ()) throws

    /**
     Invokes the PurchaseReservedDBInstancesOffering operation waiting for the response before returning.

     - Parameters:
         - input: The validated PurchaseReservedDBInstancesOfferingMessage object being passed to this operation.
     - Returns: The PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: reservedDBInstanceAlreadyExists, reservedDBInstanceQuotaExceeded, reservedDBInstancesOfferingNotFound.
     */
    func purchaseReservedDBInstancesOfferingSync(input: RDSModel.PurchaseReservedDBInstancesOfferingMessage) throws -> RDSModel.PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering

    /**
     Invokes the RebootDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RebootDBInstanceMessage object being passed to this operation.
         - completion: The RebootDBInstanceResultForRebootDBInstance object or an error will be passed to this 
           callback when the operation is complete. The RebootDBInstanceResultForRebootDBInstance
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, invalidDBInstanceState.
     */
    func rebootDBInstanceAsync(input: RDSModel.RebootDBInstanceMessage, completion: @escaping (HTTPResult<RDSModel.RebootDBInstanceResultForRebootDBInstance>) -> ()) throws

    /**
     Invokes the RebootDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated RebootDBInstanceMessage object being passed to this operation.
     - Returns: The RebootDBInstanceResultForRebootDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    func rebootDBInstanceSync(input: RDSModel.RebootDBInstanceMessage) throws -> RDSModel.RebootDBInstanceResultForRebootDBInstance

    /**
     Invokes the RemoveFromGlobalCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveFromGlobalClusterMessage object being passed to this operation.
         - completion: The RemoveFromGlobalClusterResultForRemoveFromGlobalCluster object or an error will be passed to this 
           callback when the operation is complete. The RemoveFromGlobalClusterResultForRemoveFromGlobalCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, globalClusterNotFound, invalidGlobalClusterState.
     */
    func removeFromGlobalClusterAsync(input: RDSModel.RemoveFromGlobalClusterMessage, completion: @escaping (HTTPResult<RDSModel.RemoveFromGlobalClusterResultForRemoveFromGlobalCluster>) -> ()) throws

    /**
     Invokes the RemoveFromGlobalCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveFromGlobalClusterMessage object being passed to this operation.
     - Returns: The RemoveFromGlobalClusterResultForRemoveFromGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, globalClusterNotFound, invalidGlobalClusterState.
     */
    func removeFromGlobalClusterSync(input: RDSModel.RemoveFromGlobalClusterMessage) throws -> RDSModel.RemoveFromGlobalClusterResultForRemoveFromGlobalCluster

    /**
     Invokes the RemoveRoleFromDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveRoleFromDBClusterMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBClusterNotFound, dBClusterRoleNotFound, invalidDBClusterState.
     */
    func removeRoleFromDBClusterAsync(input: RDSModel.RemoveRoleFromDBClusterMessage, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RemoveRoleFromDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveRoleFromDBClusterMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBClusterRoleNotFound, invalidDBClusterState.
     */
    func removeRoleFromDBClusterSync(input: RDSModel.RemoveRoleFromDBClusterMessage) throws

    /**
     Invokes the RemoveRoleFromDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveRoleFromDBInstanceMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBInstanceNotFound, dBInstanceRoleNotFound, invalidDBInstanceState.
     */
    func removeRoleFromDBInstanceAsync(input: RDSModel.RemoveRoleFromDBInstanceMessage, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RemoveRoleFromDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveRoleFromDBInstanceMessage object being passed to this operation.
     - Throws: dBInstanceNotFound, dBInstanceRoleNotFound, invalidDBInstanceState.
     */
    func removeRoleFromDBInstanceSync(input: RDSModel.RemoveRoleFromDBInstanceMessage) throws

    /**
     Invokes the RemoveSourceIdentifierFromSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveSourceIdentifierFromSubscriptionMessage object being passed to this operation.
         - completion: The RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription object or an error will be passed to this 
           callback when the operation is complete. The RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription
           object will be validated before being returned to caller.
           The possible errors are: sourceNotFound, subscriptionNotFound.
     */
    func removeSourceIdentifierFromSubscriptionAsync(input: RDSModel.RemoveSourceIdentifierFromSubscriptionMessage, completion: @escaping (HTTPResult<RDSModel.RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription>) -> ()) throws

    /**
     Invokes the RemoveSourceIdentifierFromSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveSourceIdentifierFromSubscriptionMessage object being passed to this operation.
     - Returns: The RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: sourceNotFound, subscriptionNotFound.
     */
    func removeSourceIdentifierFromSubscriptionSync(input: RDSModel.RemoveSourceIdentifierFromSubscriptionMessage) throws -> RDSModel.RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription

    /**
     Invokes the RemoveTagsFromResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveTagsFromResourceMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    func removeTagsFromResourceAsync(input: RDSModel.RemoveTagsFromResourceMessage, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RemoveTagsFromResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveTagsFromResourceMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    func removeTagsFromResourceSync(input: RDSModel.RemoveTagsFromResourceMessage) throws

    /**
     Invokes the ResetDBClusterParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetDBClusterParameterGroupMessage object being passed to this operation.
         - completion: The DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func resetDBClusterParameterGroupAsync(input: RDSModel.ResetDBClusterParameterGroupMessage, completion: @escaping (HTTPResult<RDSModel.DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup>) -> ()) throws

    /**
     Invokes the ResetDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func resetDBClusterParameterGroupSync(input: RDSModel.ResetDBClusterParameterGroupMessage) throws -> RDSModel.DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup

    /**
     Invokes the ResetDBParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetDBParameterGroupMessage object being passed to this operation.
         - completion: The DBParameterGroupNameMessageForResetDBParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The DBParameterGroupNameMessageForResetDBParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func resetDBParameterGroupAsync(input: RDSModel.ResetDBParameterGroupMessage, completion: @escaping (HTTPResult<RDSModel.DBParameterGroupNameMessageForResetDBParameterGroup>) -> ()) throws

    /**
     Invokes the ResetDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetDBParameterGroupMessage object being passed to this operation.
     - Returns: The DBParameterGroupNameMessageForResetDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func resetDBParameterGroupSync(input: RDSModel.ResetDBParameterGroupMessage) throws -> RDSModel.DBParameterGroupNameMessageForResetDBParameterGroup

    /**
     Invokes the RestoreDBClusterFromS3 operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBClusterFromS3Message object being passed to this operation.
         - completion: The RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3 object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3
           object will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBSubnetGroupNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBSubnetGroupState, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    func restoreDBClusterFromS3Async(input: RDSModel.RestoreDBClusterFromS3Message, completion: @escaping (HTTPResult<RDSModel.RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3>) -> ()) throws

    /**
     Invokes the RestoreDBClusterFromS3 operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBClusterFromS3Message object being passed to this operation.
     - Returns: The RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3 object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBSubnetGroupNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBSubnetGroupState, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    func restoreDBClusterFromS3Sync(input: RDSModel.RestoreDBClusterFromS3Message) throws -> RDSModel.RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3

    /**
     Invokes the RestoreDBClusterFromSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBClusterFromSnapshotMessage object being passed to this operation.
         - completion: The RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSnapshotNotFound, dBSubnetGroupNotFound, dBSubnetGroupNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded, storageQuotaExceeded.
     */
    func restoreDBClusterFromSnapshotAsync(input: RDSModel.RestoreDBClusterFromSnapshotMessage, completion: @escaping (HTTPResult<RDSModel.RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot>) -> ()) throws

    /**
     Invokes the RestoreDBClusterFromSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBClusterFromSnapshotMessage object being passed to this operation.
     - Returns: The RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSnapshotNotFound, dBSubnetGroupNotFound, dBSubnetGroupNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded, storageQuotaExceeded.
     */
    func restoreDBClusterFromSnapshotSync(input: RDSModel.RestoreDBClusterFromSnapshotMessage) throws -> RDSModel.RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot

    /**
     Invokes the RestoreDBClusterToPointInTime operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBClusterToPointInTimeMessage object being passed to this operation.
         - completion: The RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime
           object will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSubnetGroupNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBClusterState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded.
     */
    func restoreDBClusterToPointInTimeAsync(input: RDSModel.RestoreDBClusterToPointInTimeMessage, completion: @escaping (HTTPResult<RDSModel.RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime>) -> ()) throws

    /**
     Invokes the RestoreDBClusterToPointInTime operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBClusterToPointInTimeMessage object being passed to this operation.
     - Returns: The RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSubnetGroupNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBClusterState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded.
     */
    func restoreDBClusterToPointInTimeSync(input: RDSModel.RestoreDBClusterToPointInTimeMessage) throws -> RDSModel.RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime

    /**
     Invokes the RestoreDBInstanceFromDBSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBInstanceFromDBSnapshotMessage object being passed to this operation.
         - completion: The RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSnapshotNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func restoreDBInstanceFromDBSnapshotAsync(input: RDSModel.RestoreDBInstanceFromDBSnapshotMessage, completion: @escaping (HTTPResult<RDSModel.RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot>) -> ()) throws

    /**
     Invokes the RestoreDBInstanceFromDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBInstanceFromDBSnapshotMessage object being passed to this operation.
     - Returns: The RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSnapshotNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func restoreDBInstanceFromDBSnapshotSync(input: RDSModel.RestoreDBInstanceFromDBSnapshotMessage) throws -> RDSModel.RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot

    /**
     Invokes the RestoreDBInstanceFromS3 operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBInstanceFromS3Message object being passed to this operation.
         - completion: The RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3 object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func restoreDBInstanceFromS3Async(input: RDSModel.RestoreDBInstanceFromS3Message, completion: @escaping (HTTPResult<RDSModel.RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3>) -> ()) throws

    /**
     Invokes the RestoreDBInstanceFromS3 operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBInstanceFromS3Message object being passed to this operation.
     - Returns: The RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3 object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func restoreDBInstanceFromS3Sync(input: RDSModel.RestoreDBInstanceFromS3Message) throws -> RDSModel.RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3

    /**
     Invokes the RestoreDBInstanceToPointInTime operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBInstanceToPointInTimeMessage object being passed to this operation.
         - completion: The RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBInstanceAutomatedBackupNotFound, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, pointInTimeRestoreNotEnabled, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func restoreDBInstanceToPointInTimeAsync(input: RDSModel.RestoreDBInstanceToPointInTimeMessage, completion: @escaping (HTTPResult<RDSModel.RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime>) -> ()) throws

    /**
     Invokes the RestoreDBInstanceToPointInTime operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBInstanceToPointInTimeMessage object being passed to this operation.
     - Returns: The RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBInstanceAutomatedBackupNotFound, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, pointInTimeRestoreNotEnabled, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func restoreDBInstanceToPointInTimeSync(input: RDSModel.RestoreDBInstanceToPointInTimeMessage) throws -> RDSModel.RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime

    /**
     Invokes the RevokeDBSecurityGroupIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RevokeDBSecurityGroupIngressMessage object being passed to this operation.
         - completion: The RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress object or an error will be passed to this 
           callback when the operation is complete. The RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    func revokeDBSecurityGroupIngressAsync(input: RDSModel.RevokeDBSecurityGroupIngressMessage, completion: @escaping (HTTPResult<RDSModel.RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress>) -> ()) throws

    /**
     Invokes the RevokeDBSecurityGroupIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated RevokeDBSecurityGroupIngressMessage object being passed to this operation.
     - Returns: The RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    func revokeDBSecurityGroupIngressSync(input: RDSModel.RevokeDBSecurityGroupIngressMessage) throws -> RDSModel.RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress

    /**
     Invokes the StartDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartDBClusterMessage object being passed to this operation.
         - completion: The StartDBClusterResultForStartDBCluster object or an error will be passed to this 
           callback when the operation is complete. The StartDBClusterResultForStartDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func startDBClusterAsync(input: RDSModel.StartDBClusterMessage, completion: @escaping (HTTPResult<RDSModel.StartDBClusterResultForStartDBCluster>) -> ()) throws

    /**
     Invokes the StartDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartDBClusterMessage object being passed to this operation.
     - Returns: The StartDBClusterResultForStartDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func startDBClusterSync(input: RDSModel.StartDBClusterMessage) throws -> RDSModel.StartDBClusterResultForStartDBCluster

    /**
     Invokes the StartDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartDBInstanceMessage object being passed to this operation.
         - completion: The StartDBInstanceResultForStartDBInstance object or an error will be passed to this 
           callback when the operation is complete. The StartDBInstanceResultForStartDBInstance
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, dBClusterNotFound, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, insufficientDBInstanceCapacity, invalidDBClusterState, invalidDBInstanceState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible.
     */
    func startDBInstanceAsync(input: RDSModel.StartDBInstanceMessage, completion: @escaping (HTTPResult<RDSModel.StartDBInstanceResultForStartDBInstance>) -> ()) throws

    /**
     Invokes the StartDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartDBInstanceMessage object being passed to this operation.
     - Returns: The StartDBInstanceResultForStartDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, dBClusterNotFound, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, insufficientDBInstanceCapacity, invalidDBClusterState, invalidDBInstanceState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible.
     */
    func startDBInstanceSync(input: RDSModel.StartDBInstanceMessage) throws -> RDSModel.StartDBInstanceResultForStartDBInstance

    /**
     Invokes the StopDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopDBClusterMessage object being passed to this operation.
         - completion: The StopDBClusterResultForStopDBCluster object or an error will be passed to this 
           callback when the operation is complete. The StopDBClusterResultForStopDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func stopDBClusterAsync(input: RDSModel.StopDBClusterMessage, completion: @escaping (HTTPResult<RDSModel.StopDBClusterResultForStopDBCluster>) -> ()) throws

    /**
     Invokes the StopDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopDBClusterMessage object being passed to this operation.
     - Returns: The StopDBClusterResultForStopDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func stopDBClusterSync(input: RDSModel.StopDBClusterMessage) throws -> RDSModel.StopDBClusterResultForStopDBCluster

    /**
     Invokes the StopDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopDBInstanceMessage object being passed to this operation.
         - completion: The StopDBInstanceResultForStopDBInstance object or an error will be passed to this 
           callback when the operation is complete. The StopDBInstanceResultForStopDBInstance
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    func stopDBInstanceAsync(input: RDSModel.StopDBInstanceMessage, completion: @escaping (HTTPResult<RDSModel.StopDBInstanceResultForStopDBInstance>) -> ()) throws

    /**
     Invokes the StopDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopDBInstanceMessage object being passed to this operation.
     - Returns: The StopDBInstanceResultForStopDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    func stopDBInstanceSync(input: RDSModel.StopDBInstanceMessage) throws -> RDSModel.StopDBInstanceResultForStopDBInstance
}
