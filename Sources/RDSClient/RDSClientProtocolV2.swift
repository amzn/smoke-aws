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
// RDSClientProtocolV2.swift
// RDSClient
//

import Foundation
import RDSModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the RDS service.
 */
public protocol RDSClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    typealias AddRoleToDBClusterFunctionType = (
            _ input: RDSModel.AddRoleToDBClusterMessage) async throws -> ()
    typealias AddRoleToDBInstanceFunctionType = (
            _ input: RDSModel.AddRoleToDBInstanceMessage) async throws -> ()
    typealias AddSourceIdentifierToSubscriptionFunctionType = (
            _ input: RDSModel.AddSourceIdentifierToSubscriptionMessage) async throws -> RDSModel.AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription
    typealias AddTagsToResourceFunctionType = (
            _ input: RDSModel.AddTagsToResourceMessage) async throws -> ()
    typealias ApplyPendingMaintenanceActionFunctionType = (
            _ input: RDSModel.ApplyPendingMaintenanceActionMessage) async throws -> RDSModel.ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction
    typealias AuthorizeDBSecurityGroupIngressFunctionType = (
            _ input: RDSModel.AuthorizeDBSecurityGroupIngressMessage) async throws -> RDSModel.AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress
    typealias BacktrackDBClusterFunctionType = (
            _ input: RDSModel.BacktrackDBClusterMessage) async throws -> RDSModel.DBClusterBacktrackForBacktrackDBCluster
    typealias CancelExportTaskFunctionType = (
            _ input: RDSModel.CancelExportTaskMessage) async throws -> RDSModel.ExportTaskForCancelExportTask
    typealias CopyDBClusterParameterGroupFunctionType = (
            _ input: RDSModel.CopyDBClusterParameterGroupMessage) async throws -> RDSModel.CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup
    typealias CopyDBClusterSnapshotFunctionType = (
            _ input: RDSModel.CopyDBClusterSnapshotMessage) async throws -> RDSModel.CopyDBClusterSnapshotResultForCopyDBClusterSnapshot
    typealias CopyDBParameterGroupFunctionType = (
            _ input: RDSModel.CopyDBParameterGroupMessage) async throws -> RDSModel.CopyDBParameterGroupResultForCopyDBParameterGroup
    typealias CopyDBSnapshotFunctionType = (
            _ input: RDSModel.CopyDBSnapshotMessage) async throws -> RDSModel.CopyDBSnapshotResultForCopyDBSnapshot
    typealias CopyOptionGroupFunctionType = (
            _ input: RDSModel.CopyOptionGroupMessage) async throws -> RDSModel.CopyOptionGroupResultForCopyOptionGroup
    typealias CreateBlueGreenDeploymentFunctionType = (
            _ input: RDSModel.CreateBlueGreenDeploymentRequest) async throws -> RDSModel.CreateBlueGreenDeploymentResponseForCreateBlueGreenDeployment
    typealias CreateCustomDBEngineVersionFunctionType = (
            _ input: RDSModel.CreateCustomDBEngineVersionMessage) async throws -> RDSModel.DBEngineVersionForCreateCustomDBEngineVersion
    typealias CreateDBClusterFunctionType = (
            _ input: RDSModel.CreateDBClusterMessage) async throws -> RDSModel.CreateDBClusterResultForCreateDBCluster
    typealias CreateDBClusterEndpointFunctionType = (
            _ input: RDSModel.CreateDBClusterEndpointMessage) async throws -> RDSModel.DBClusterEndpointForCreateDBClusterEndpoint
    typealias CreateDBClusterParameterGroupFunctionType = (
            _ input: RDSModel.CreateDBClusterParameterGroupMessage) async throws -> RDSModel.CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup
    typealias CreateDBClusterSnapshotFunctionType = (
            _ input: RDSModel.CreateDBClusterSnapshotMessage) async throws -> RDSModel.CreateDBClusterSnapshotResultForCreateDBClusterSnapshot
    typealias CreateDBInstanceFunctionType = (
            _ input: RDSModel.CreateDBInstanceMessage) async throws -> RDSModel.CreateDBInstanceResultForCreateDBInstance
    typealias CreateDBInstanceReadReplicaFunctionType = (
            _ input: RDSModel.CreateDBInstanceReadReplicaMessage) async throws -> RDSModel.CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica
    typealias CreateDBParameterGroupFunctionType = (
            _ input: RDSModel.CreateDBParameterGroupMessage) async throws -> RDSModel.CreateDBParameterGroupResultForCreateDBParameterGroup
    typealias CreateDBProxyFunctionType = (
            _ input: RDSModel.CreateDBProxyRequest) async throws -> RDSModel.CreateDBProxyResponseForCreateDBProxy
    typealias CreateDBProxyEndpointFunctionType = (
            _ input: RDSModel.CreateDBProxyEndpointRequest) async throws -> RDSModel.CreateDBProxyEndpointResponseForCreateDBProxyEndpoint
    typealias CreateDBSecurityGroupFunctionType = (
            _ input: RDSModel.CreateDBSecurityGroupMessage) async throws -> RDSModel.CreateDBSecurityGroupResultForCreateDBSecurityGroup
    typealias CreateDBSnapshotFunctionType = (
            _ input: RDSModel.CreateDBSnapshotMessage) async throws -> RDSModel.CreateDBSnapshotResultForCreateDBSnapshot
    typealias CreateDBSubnetGroupFunctionType = (
            _ input: RDSModel.CreateDBSubnetGroupMessage) async throws -> RDSModel.CreateDBSubnetGroupResultForCreateDBSubnetGroup
    typealias CreateEventSubscriptionFunctionType = (
            _ input: RDSModel.CreateEventSubscriptionMessage) async throws -> RDSModel.CreateEventSubscriptionResultForCreateEventSubscription
    typealias CreateGlobalClusterFunctionType = (
            _ input: RDSModel.CreateGlobalClusterMessage) async throws -> RDSModel.CreateGlobalClusterResultForCreateGlobalCluster
    typealias CreateOptionGroupFunctionType = (
            _ input: RDSModel.CreateOptionGroupMessage) async throws -> RDSModel.CreateOptionGroupResultForCreateOptionGroup
    typealias DeleteBlueGreenDeploymentFunctionType = (
            _ input: RDSModel.DeleteBlueGreenDeploymentRequest) async throws -> RDSModel.DeleteBlueGreenDeploymentResponseForDeleteBlueGreenDeployment
    typealias DeleteCustomDBEngineVersionFunctionType = (
            _ input: RDSModel.DeleteCustomDBEngineVersionMessage) async throws -> RDSModel.DBEngineVersionForDeleteCustomDBEngineVersion
    typealias DeleteDBClusterFunctionType = (
            _ input: RDSModel.DeleteDBClusterMessage) async throws -> RDSModel.DeleteDBClusterResultForDeleteDBCluster
    typealias DeleteDBClusterAutomatedBackupFunctionType = (
            _ input: RDSModel.DeleteDBClusterAutomatedBackupMessage) async throws -> RDSModel.DeleteDBClusterAutomatedBackupResultForDeleteDBClusterAutomatedBackup
    typealias DeleteDBClusterEndpointFunctionType = (
            _ input: RDSModel.DeleteDBClusterEndpointMessage) async throws -> RDSModel.DBClusterEndpointForDeleteDBClusterEndpoint
    typealias DeleteDBClusterParameterGroupFunctionType = (
            _ input: RDSModel.DeleteDBClusterParameterGroupMessage) async throws -> ()
    typealias DeleteDBClusterSnapshotFunctionType = (
            _ input: RDSModel.DeleteDBClusterSnapshotMessage) async throws -> RDSModel.DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot
    typealias DeleteDBInstanceFunctionType = (
            _ input: RDSModel.DeleteDBInstanceMessage) async throws -> RDSModel.DeleteDBInstanceResultForDeleteDBInstance
    typealias DeleteDBInstanceAutomatedBackupFunctionType = (
            _ input: RDSModel.DeleteDBInstanceAutomatedBackupMessage) async throws -> RDSModel.DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup
    typealias DeleteDBParameterGroupFunctionType = (
            _ input: RDSModel.DeleteDBParameterGroupMessage) async throws -> ()
    typealias DeleteDBProxyFunctionType = (
            _ input: RDSModel.DeleteDBProxyRequest) async throws -> RDSModel.DeleteDBProxyResponseForDeleteDBProxy
    typealias DeleteDBProxyEndpointFunctionType = (
            _ input: RDSModel.DeleteDBProxyEndpointRequest) async throws -> RDSModel.DeleteDBProxyEndpointResponseForDeleteDBProxyEndpoint
    typealias DeleteDBSecurityGroupFunctionType = (
            _ input: RDSModel.DeleteDBSecurityGroupMessage) async throws -> ()
    typealias DeleteDBSnapshotFunctionType = (
            _ input: RDSModel.DeleteDBSnapshotMessage) async throws -> RDSModel.DeleteDBSnapshotResultForDeleteDBSnapshot
    typealias DeleteDBSubnetGroupFunctionType = (
            _ input: RDSModel.DeleteDBSubnetGroupMessage) async throws -> ()
    typealias DeleteEventSubscriptionFunctionType = (
            _ input: RDSModel.DeleteEventSubscriptionMessage) async throws -> RDSModel.DeleteEventSubscriptionResultForDeleteEventSubscription
    typealias DeleteGlobalClusterFunctionType = (
            _ input: RDSModel.DeleteGlobalClusterMessage) async throws -> RDSModel.DeleteGlobalClusterResultForDeleteGlobalCluster
    typealias DeleteOptionGroupFunctionType = (
            _ input: RDSModel.DeleteOptionGroupMessage) async throws -> ()
    typealias DeregisterDBProxyTargetsFunctionType = (
            _ input: RDSModel.DeregisterDBProxyTargetsRequest) async throws -> RDSModel.DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets
    typealias DescribeAccountAttributesFunctionType = (
            _ input: RDSModel.DescribeAccountAttributesMessage) async throws -> RDSModel.AccountAttributesMessageForDescribeAccountAttributes
    typealias DescribeBlueGreenDeploymentsFunctionType = (
            _ input: RDSModel.DescribeBlueGreenDeploymentsRequest) async throws -> RDSModel.DescribeBlueGreenDeploymentsResponseForDescribeBlueGreenDeployments
    typealias DescribeCertificatesFunctionType = (
            _ input: RDSModel.DescribeCertificatesMessage) async throws -> RDSModel.CertificateMessageForDescribeCertificates
    typealias DescribeDBClusterAutomatedBackupsFunctionType = (
            _ input: RDSModel.DescribeDBClusterAutomatedBackupsMessage) async throws -> RDSModel.DBClusterAutomatedBackupMessageForDescribeDBClusterAutomatedBackups
    typealias DescribeDBClusterBacktracksFunctionType = (
            _ input: RDSModel.DescribeDBClusterBacktracksMessage) async throws -> RDSModel.DBClusterBacktrackMessageForDescribeDBClusterBacktracks
    typealias DescribeDBClusterEndpointsFunctionType = (
            _ input: RDSModel.DescribeDBClusterEndpointsMessage) async throws -> RDSModel.DBClusterEndpointMessageForDescribeDBClusterEndpoints
    typealias DescribeDBClusterParameterGroupsFunctionType = (
            _ input: RDSModel.DescribeDBClusterParameterGroupsMessage) async throws -> RDSModel.DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups
    typealias DescribeDBClusterParametersFunctionType = (
            _ input: RDSModel.DescribeDBClusterParametersMessage) async throws -> RDSModel.DBClusterParameterGroupDetailsForDescribeDBClusterParameters
    typealias DescribeDBClusterSnapshotAttributesFunctionType = (
            _ input: RDSModel.DescribeDBClusterSnapshotAttributesMessage) async throws -> RDSModel.DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes
    typealias DescribeDBClusterSnapshotsFunctionType = (
            _ input: RDSModel.DescribeDBClusterSnapshotsMessage) async throws -> RDSModel.DBClusterSnapshotMessageForDescribeDBClusterSnapshots
    typealias DescribeDBClustersFunctionType = (
            _ input: RDSModel.DescribeDBClustersMessage) async throws -> RDSModel.DBClusterMessageForDescribeDBClusters
    typealias DescribeDBEngineVersionsFunctionType = (
            _ input: RDSModel.DescribeDBEngineVersionsMessage) async throws -> RDSModel.DBEngineVersionMessageForDescribeDBEngineVersions
    typealias DescribeDBInstanceAutomatedBackupsFunctionType = (
            _ input: RDSModel.DescribeDBInstanceAutomatedBackupsMessage) async throws -> RDSModel.DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups
    typealias DescribeDBInstancesFunctionType = (
            _ input: RDSModel.DescribeDBInstancesMessage) async throws -> RDSModel.DBInstanceMessageForDescribeDBInstances
    typealias DescribeDBLogFilesFunctionType = (
            _ input: RDSModel.DescribeDBLogFilesMessage) async throws -> RDSModel.DescribeDBLogFilesResponseForDescribeDBLogFiles
    typealias DescribeDBParameterGroupsFunctionType = (
            _ input: RDSModel.DescribeDBParameterGroupsMessage) async throws -> RDSModel.DBParameterGroupsMessageForDescribeDBParameterGroups
    typealias DescribeDBParametersFunctionType = (
            _ input: RDSModel.DescribeDBParametersMessage) async throws -> RDSModel.DBParameterGroupDetailsForDescribeDBParameters
    typealias DescribeDBProxiesFunctionType = (
            _ input: RDSModel.DescribeDBProxiesRequest) async throws -> RDSModel.DescribeDBProxiesResponseForDescribeDBProxies
    typealias DescribeDBProxyEndpointsFunctionType = (
            _ input: RDSModel.DescribeDBProxyEndpointsRequest) async throws -> RDSModel.DescribeDBProxyEndpointsResponseForDescribeDBProxyEndpoints
    typealias DescribeDBProxyTargetGroupsFunctionType = (
            _ input: RDSModel.DescribeDBProxyTargetGroupsRequest) async throws -> RDSModel.DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups
    typealias DescribeDBProxyTargetsFunctionType = (
            _ input: RDSModel.DescribeDBProxyTargetsRequest) async throws -> RDSModel.DescribeDBProxyTargetsResponseForDescribeDBProxyTargets
    typealias DescribeDBSecurityGroupsFunctionType = (
            _ input: RDSModel.DescribeDBSecurityGroupsMessage) async throws -> RDSModel.DBSecurityGroupMessageForDescribeDBSecurityGroups
    typealias DescribeDBSnapshotAttributesFunctionType = (
            _ input: RDSModel.DescribeDBSnapshotAttributesMessage) async throws -> RDSModel.DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes
    typealias DescribeDBSnapshotsFunctionType = (
            _ input: RDSModel.DescribeDBSnapshotsMessage) async throws -> RDSModel.DBSnapshotMessageForDescribeDBSnapshots
    typealias DescribeDBSubnetGroupsFunctionType = (
            _ input: RDSModel.DescribeDBSubnetGroupsMessage) async throws -> RDSModel.DBSubnetGroupMessageForDescribeDBSubnetGroups
    typealias DescribeEngineDefaultClusterParametersFunctionType = (
            _ input: RDSModel.DescribeEngineDefaultClusterParametersMessage) async throws -> RDSModel.DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters
    typealias DescribeEngineDefaultParametersFunctionType = (
            _ input: RDSModel.DescribeEngineDefaultParametersMessage) async throws -> RDSModel.DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters
    typealias DescribeEventCategoriesFunctionType = (
            _ input: RDSModel.DescribeEventCategoriesMessage) async throws -> RDSModel.EventCategoriesMessageForDescribeEventCategories
    typealias DescribeEventSubscriptionsFunctionType = (
            _ input: RDSModel.DescribeEventSubscriptionsMessage) async throws -> RDSModel.EventSubscriptionsMessageForDescribeEventSubscriptions
    typealias DescribeEventsFunctionType = (
            _ input: RDSModel.DescribeEventsMessage) async throws -> RDSModel.EventsMessageForDescribeEvents
    typealias DescribeExportTasksFunctionType = (
            _ input: RDSModel.DescribeExportTasksMessage) async throws -> RDSModel.ExportTasksMessageForDescribeExportTasks
    typealias DescribeGlobalClustersFunctionType = (
            _ input: RDSModel.DescribeGlobalClustersMessage) async throws -> RDSModel.GlobalClustersMessageForDescribeGlobalClusters
    typealias DescribeOptionGroupOptionsFunctionType = (
            _ input: RDSModel.DescribeOptionGroupOptionsMessage) async throws -> RDSModel.OptionGroupOptionsMessageForDescribeOptionGroupOptions
    typealias DescribeOptionGroupsFunctionType = (
            _ input: RDSModel.DescribeOptionGroupsMessage) async throws -> RDSModel.OptionGroupsForDescribeOptionGroups
    typealias DescribeOrderableDBInstanceOptionsFunctionType = (
            _ input: RDSModel.DescribeOrderableDBInstanceOptionsMessage) async throws -> RDSModel.OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions
    typealias DescribePendingMaintenanceActionsFunctionType = (
            _ input: RDSModel.DescribePendingMaintenanceActionsMessage) async throws -> RDSModel.PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions
    typealias DescribeReservedDBInstancesFunctionType = (
            _ input: RDSModel.DescribeReservedDBInstancesMessage) async throws -> RDSModel.ReservedDBInstanceMessageForDescribeReservedDBInstances
    typealias DescribeReservedDBInstancesOfferingsFunctionType = (
            _ input: RDSModel.DescribeReservedDBInstancesOfferingsMessage) async throws -> RDSModel.ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings
    typealias DescribeSourceRegionsFunctionType = (
            _ input: RDSModel.DescribeSourceRegionsMessage) async throws -> RDSModel.SourceRegionMessageForDescribeSourceRegions
    typealias DescribeValidDBInstanceModificationsFunctionType = (
            _ input: RDSModel.DescribeValidDBInstanceModificationsMessage) async throws -> RDSModel.DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications
    typealias DownloadDBLogFilePortionFunctionType = (
            _ input: RDSModel.DownloadDBLogFilePortionMessage) async throws -> RDSModel.DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion
    typealias FailoverDBClusterFunctionType = (
            _ input: RDSModel.FailoverDBClusterMessage) async throws -> RDSModel.FailoverDBClusterResultForFailoverDBCluster
    typealias FailoverGlobalClusterFunctionType = (
            _ input: RDSModel.FailoverGlobalClusterMessage) async throws -> RDSModel.FailoverGlobalClusterResultForFailoverGlobalCluster
    typealias ListTagsForResourceFunctionType = (
            _ input: RDSModel.ListTagsForResourceMessage) async throws -> RDSModel.TagListMessageForListTagsForResource
    typealias ModifyActivityStreamFunctionType = (
            _ input: RDSModel.ModifyActivityStreamRequest) async throws -> RDSModel.ModifyActivityStreamResponseForModifyActivityStream
    typealias ModifyCertificatesFunctionType = (
            _ input: RDSModel.ModifyCertificatesMessage) async throws -> RDSModel.ModifyCertificatesResultForModifyCertificates
    typealias ModifyCurrentDBClusterCapacityFunctionType = (
            _ input: RDSModel.ModifyCurrentDBClusterCapacityMessage) async throws -> RDSModel.DBClusterCapacityInfoForModifyCurrentDBClusterCapacity
    typealias ModifyCustomDBEngineVersionFunctionType = (
            _ input: RDSModel.ModifyCustomDBEngineVersionMessage) async throws -> RDSModel.DBEngineVersionForModifyCustomDBEngineVersion
    typealias ModifyDBClusterFunctionType = (
            _ input: RDSModel.ModifyDBClusterMessage) async throws -> RDSModel.ModifyDBClusterResultForModifyDBCluster
    typealias ModifyDBClusterEndpointFunctionType = (
            _ input: RDSModel.ModifyDBClusterEndpointMessage) async throws -> RDSModel.DBClusterEndpointForModifyDBClusterEndpoint
    typealias ModifyDBClusterParameterGroupFunctionType = (
            _ input: RDSModel.ModifyDBClusterParameterGroupMessage) async throws -> RDSModel.DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup
    typealias ModifyDBClusterSnapshotAttributeFunctionType = (
            _ input: RDSModel.ModifyDBClusterSnapshotAttributeMessage) async throws -> RDSModel.ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute
    typealias ModifyDBInstanceFunctionType = (
            _ input: RDSModel.ModifyDBInstanceMessage) async throws -> RDSModel.ModifyDBInstanceResultForModifyDBInstance
    typealias ModifyDBParameterGroupFunctionType = (
            _ input: RDSModel.ModifyDBParameterGroupMessage) async throws -> RDSModel.DBParameterGroupNameMessageForModifyDBParameterGroup
    typealias ModifyDBProxyFunctionType = (
            _ input: RDSModel.ModifyDBProxyRequest) async throws -> RDSModel.ModifyDBProxyResponseForModifyDBProxy
    typealias ModifyDBProxyEndpointFunctionType = (
            _ input: RDSModel.ModifyDBProxyEndpointRequest) async throws -> RDSModel.ModifyDBProxyEndpointResponseForModifyDBProxyEndpoint
    typealias ModifyDBProxyTargetGroupFunctionType = (
            _ input: RDSModel.ModifyDBProxyTargetGroupRequest) async throws -> RDSModel.ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup
    typealias ModifyDBSnapshotFunctionType = (
            _ input: RDSModel.ModifyDBSnapshotMessage) async throws -> RDSModel.ModifyDBSnapshotResultForModifyDBSnapshot
    typealias ModifyDBSnapshotAttributeFunctionType = (
            _ input: RDSModel.ModifyDBSnapshotAttributeMessage) async throws -> RDSModel.ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute
    typealias ModifyDBSubnetGroupFunctionType = (
            _ input: RDSModel.ModifyDBSubnetGroupMessage) async throws -> RDSModel.ModifyDBSubnetGroupResultForModifyDBSubnetGroup
    typealias ModifyEventSubscriptionFunctionType = (
            _ input: RDSModel.ModifyEventSubscriptionMessage) async throws -> RDSModel.ModifyEventSubscriptionResultForModifyEventSubscription
    typealias ModifyGlobalClusterFunctionType = (
            _ input: RDSModel.ModifyGlobalClusterMessage) async throws -> RDSModel.ModifyGlobalClusterResultForModifyGlobalCluster
    typealias ModifyOptionGroupFunctionType = (
            _ input: RDSModel.ModifyOptionGroupMessage) async throws -> RDSModel.ModifyOptionGroupResultForModifyOptionGroup
    typealias PromoteReadReplicaFunctionType = (
            _ input: RDSModel.PromoteReadReplicaMessage) async throws -> RDSModel.PromoteReadReplicaResultForPromoteReadReplica
    typealias PromoteReadReplicaDBClusterFunctionType = (
            _ input: RDSModel.PromoteReadReplicaDBClusterMessage) async throws -> RDSModel.PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster
    typealias PurchaseReservedDBInstancesOfferingFunctionType = (
            _ input: RDSModel.PurchaseReservedDBInstancesOfferingMessage) async throws -> RDSModel.PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering
    typealias RebootDBClusterFunctionType = (
            _ input: RDSModel.RebootDBClusterMessage) async throws -> RDSModel.RebootDBClusterResultForRebootDBCluster
    typealias RebootDBInstanceFunctionType = (
            _ input: RDSModel.RebootDBInstanceMessage) async throws -> RDSModel.RebootDBInstanceResultForRebootDBInstance
    typealias RegisterDBProxyTargetsFunctionType = (
            _ input: RDSModel.RegisterDBProxyTargetsRequest) async throws -> RDSModel.RegisterDBProxyTargetsResponseForRegisterDBProxyTargets
    typealias RemoveFromGlobalClusterFunctionType = (
            _ input: RDSModel.RemoveFromGlobalClusterMessage) async throws -> RDSModel.RemoveFromGlobalClusterResultForRemoveFromGlobalCluster
    typealias RemoveRoleFromDBClusterFunctionType = (
            _ input: RDSModel.RemoveRoleFromDBClusterMessage) async throws -> ()
    typealias RemoveRoleFromDBInstanceFunctionType = (
            _ input: RDSModel.RemoveRoleFromDBInstanceMessage) async throws -> ()
    typealias RemoveSourceIdentifierFromSubscriptionFunctionType = (
            _ input: RDSModel.RemoveSourceIdentifierFromSubscriptionMessage) async throws -> RDSModel.RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription
    typealias RemoveTagsFromResourceFunctionType = (
            _ input: RDSModel.RemoveTagsFromResourceMessage) async throws -> ()
    typealias ResetDBClusterParameterGroupFunctionType = (
            _ input: RDSModel.ResetDBClusterParameterGroupMessage) async throws -> RDSModel.DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup
    typealias ResetDBParameterGroupFunctionType = (
            _ input: RDSModel.ResetDBParameterGroupMessage) async throws -> RDSModel.DBParameterGroupNameMessageForResetDBParameterGroup
    typealias RestoreDBClusterFromS3FunctionType = (
            _ input: RDSModel.RestoreDBClusterFromS3Message) async throws -> RDSModel.RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3
    typealias RestoreDBClusterFromSnapshotFunctionType = (
            _ input: RDSModel.RestoreDBClusterFromSnapshotMessage) async throws -> RDSModel.RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot
    typealias RestoreDBClusterToPointInTimeFunctionType = (
            _ input: RDSModel.RestoreDBClusterToPointInTimeMessage) async throws -> RDSModel.RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime
    typealias RestoreDBInstanceFromDBSnapshotFunctionType = (
            _ input: RDSModel.RestoreDBInstanceFromDBSnapshotMessage) async throws -> RDSModel.RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot
    typealias RestoreDBInstanceFromS3FunctionType = (
            _ input: RDSModel.RestoreDBInstanceFromS3Message) async throws -> RDSModel.RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3
    typealias RestoreDBInstanceToPointInTimeFunctionType = (
            _ input: RDSModel.RestoreDBInstanceToPointInTimeMessage) async throws -> RDSModel.RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime
    typealias RevokeDBSecurityGroupIngressFunctionType = (
            _ input: RDSModel.RevokeDBSecurityGroupIngressMessage) async throws -> RDSModel.RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress
    typealias StartActivityStreamFunctionType = (
            _ input: RDSModel.StartActivityStreamRequest) async throws -> RDSModel.StartActivityStreamResponseForStartActivityStream
    typealias StartDBClusterFunctionType = (
            _ input: RDSModel.StartDBClusterMessage) async throws -> RDSModel.StartDBClusterResultForStartDBCluster
    typealias StartDBInstanceFunctionType = (
            _ input: RDSModel.StartDBInstanceMessage) async throws -> RDSModel.StartDBInstanceResultForStartDBInstance
    typealias StartDBInstanceAutomatedBackupsReplicationFunctionType = (
            _ input: RDSModel.StartDBInstanceAutomatedBackupsReplicationMessage) async throws -> RDSModel.StartDBInstanceAutomatedBackupsReplicationResultForStartDBInstanceAutomatedBackupsReplication
    typealias StartExportTaskFunctionType = (
            _ input: RDSModel.StartExportTaskMessage) async throws -> RDSModel.ExportTaskForStartExportTask
    typealias StopActivityStreamFunctionType = (
            _ input: RDSModel.StopActivityStreamRequest) async throws -> RDSModel.StopActivityStreamResponseForStopActivityStream
    typealias StopDBClusterFunctionType = (
            _ input: RDSModel.StopDBClusterMessage) async throws -> RDSModel.StopDBClusterResultForStopDBCluster
    typealias StopDBInstanceFunctionType = (
            _ input: RDSModel.StopDBInstanceMessage) async throws -> RDSModel.StopDBInstanceResultForStopDBInstance
    typealias StopDBInstanceAutomatedBackupsReplicationFunctionType = (
            _ input: RDSModel.StopDBInstanceAutomatedBackupsReplicationMessage) async throws -> RDSModel.StopDBInstanceAutomatedBackupsReplicationResultForStopDBInstanceAutomatedBackupsReplication
    typealias SwitchoverBlueGreenDeploymentFunctionType = (
            _ input: RDSModel.SwitchoverBlueGreenDeploymentRequest) async throws -> RDSModel.SwitchoverBlueGreenDeploymentResponseForSwitchoverBlueGreenDeployment
    typealias SwitchoverGlobalClusterFunctionType = (
            _ input: RDSModel.SwitchoverGlobalClusterMessage) async throws -> RDSModel.SwitchoverGlobalClusterResultForSwitchoverGlobalCluster
    typealias SwitchoverReadReplicaFunctionType = (
            _ input: RDSModel.SwitchoverReadReplicaMessage) async throws -> RDSModel.SwitchoverReadReplicaResultForSwitchoverReadReplica

    /**
     Invokes the AddRoleToDBCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AddRoleToDBClusterMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBClusterRoleAlreadyExists, dBClusterRoleQuotaExceeded, invalidDBClusterState.
     */
    func addRoleToDBCluster(
            input: RDSModel.AddRoleToDBClusterMessage) async throws

    /**
     Invokes the AddRoleToDBInstance operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AddRoleToDBInstanceMessage object being passed to this operation.
     - Throws: dBInstanceNotFound, dBInstanceRoleAlreadyExists, dBInstanceRoleQuotaExceeded, invalidDBInstanceState.
     */
    func addRoleToDBInstance(
            input: RDSModel.AddRoleToDBInstanceMessage) async throws

    /**
     Invokes the AddSourceIdentifierToSubscription operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AddSourceIdentifierToSubscriptionMessage object being passed to this operation.
     - Returns: The AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: sourceNotFound, subscriptionNotFound.
     */
    func addSourceIdentifierToSubscription(
            input: RDSModel.AddSourceIdentifierToSubscriptionMessage) async throws -> RDSModel.AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription

    /**
     Invokes the AddTagsToResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AddTagsToResourceMessage object being passed to this operation.
     - Throws: blueGreenDeploymentNotFound, dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetGroupNotFound, dBSnapshotNotFound.
     */
    func addTagsToResource(
            input: RDSModel.AddTagsToResourceMessage) async throws

    /**
     Invokes the ApplyPendingMaintenanceAction operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ApplyPendingMaintenanceActionMessage object being passed to this operation.
     - Returns: The ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidDBClusterState, invalidDBInstanceState, resourceNotFound.
     */
    func applyPendingMaintenanceAction(
            input: RDSModel.ApplyPendingMaintenanceActionMessage) async throws -> RDSModel.ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction

    /**
     Invokes the AuthorizeDBSecurityGroupIngress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AuthorizeDBSecurityGroupIngressMessage object being passed to this operation.
     - Returns: The AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationAlreadyExists, authorizationQuotaExceeded, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    func authorizeDBSecurityGroupIngress(
            input: RDSModel.AuthorizeDBSecurityGroupIngressMessage) async throws -> RDSModel.AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress

    /**
     Invokes the BacktrackDBCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated BacktrackDBClusterMessage object being passed to this operation.
     - Returns: The DBClusterBacktrackForBacktrackDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState.
     */
    func backtrackDBCluster(
            input: RDSModel.BacktrackDBClusterMessage) async throws -> RDSModel.DBClusterBacktrackForBacktrackDBCluster

    /**
     Invokes the CancelExportTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CancelExportTaskMessage object being passed to this operation.
     - Returns: The ExportTaskForCancelExportTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: exportTaskNotFound, invalidExportTaskState.
     */
    func cancelExportTask(
            input: RDSModel.CancelExportTaskMessage) async throws -> RDSModel.ExportTaskForCancelExportTask

    /**
     Invokes the CopyDBClusterParameterGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CopyDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    func copyDBClusterParameterGroup(
            input: RDSModel.CopyDBClusterParameterGroupMessage) async throws -> RDSModel.CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup

    /**
     Invokes the CopyDBClusterSnapshot operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CopyDBClusterSnapshotMessage object being passed to this operation.
     - Returns: The CopyDBClusterSnapshotResultForCopyDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotAlreadyExists, dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, invalidDBClusterState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    func copyDBClusterSnapshot(
            input: RDSModel.CopyDBClusterSnapshotMessage) async throws -> RDSModel.CopyDBClusterSnapshotResultForCopyDBClusterSnapshot

    /**
     Invokes the CopyDBParameterGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CopyDBParameterGroupMessage object being passed to this operation.
     - Returns: The CopyDBParameterGroupResultForCopyDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    func copyDBParameterGroup(
            input: RDSModel.CopyDBParameterGroupMessage) async throws -> RDSModel.CopyDBParameterGroupResultForCopyDBParameterGroup

    /**
     Invokes the CopyDBSnapshot operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CopyDBSnapshotMessage object being passed to this operation.
     - Returns: The CopyDBSnapshotResultForCopyDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: customAvailabilityZoneNotFound, dBSnapshotAlreadyExists, dBSnapshotNotFound, invalidDBSnapshotState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    func copyDBSnapshot(
            input: RDSModel.CopyDBSnapshotMessage) async throws -> RDSModel.CopyDBSnapshotResultForCopyDBSnapshot

    /**
     Invokes the CopyOptionGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CopyOptionGroupMessage object being passed to this operation.
     - Returns: The CopyOptionGroupResultForCopyOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: optionGroupAlreadyExists, optionGroupNotFound, optionGroupQuotaExceeded.
     */
    func copyOptionGroup(
            input: RDSModel.CopyOptionGroupMessage) async throws -> RDSModel.CopyOptionGroupResultForCopyOptionGroup

    /**
     Invokes the CreateBlueGreenDeployment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateBlueGreenDeploymentRequest object being passed to this operation.
     - Returns: The CreateBlueGreenDeploymentResponseForCreateBlueGreenDeployment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: blueGreenDeploymentAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBInstanceNotFound, dBParameterGroupNotFound, instanceQuotaExceeded, invalidDBClusterState, invalidDBInstanceState, sourceClusterNotSupported, sourceDatabaseNotSupported.
     */
    func createBlueGreenDeployment(
            input: RDSModel.CreateBlueGreenDeploymentRequest) async throws -> RDSModel.CreateBlueGreenDeploymentResponseForCreateBlueGreenDeployment

    /**
     Invokes the CreateCustomDBEngineVersion operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateCustomDBEngineVersionMessage object being passed to this operation.
     - Returns: The DBEngineVersionForCreateCustomDBEngineVersion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: createCustomDBEngineVersion, customDBEngineVersionAlreadyExists, customDBEngineVersionQuotaExceeded, ec2ImagePropertiesNotSupported, kMSKeyNotAccessible.
     */
    func createCustomDBEngineVersion(
            input: RDSModel.CreateCustomDBEngineVersionMessage) async throws -> RDSModel.DBEngineVersionForCreateCustomDBEngineVersion

    /**
     Invokes the CreateDBCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateDBClusterMessage object being passed to this operation.
     - Returns: The CreateDBClusterResultForCreateDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, globalClusterNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBInstanceState, invalidDBSubnetGroupState, invalidGlobalClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    func createDBCluster(
            input: RDSModel.CreateDBClusterMessage) async throws -> RDSModel.CreateDBClusterResultForCreateDBCluster

    /**
     Invokes the CreateDBClusterEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateDBClusterEndpointMessage object being passed to this operation.
     - Returns: The DBClusterEndpointForCreateDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterEndpointAlreadyExists, dBClusterEndpointQuotaExceeded, dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func createDBClusterEndpoint(
            input: RDSModel.CreateDBClusterEndpointMessage) async throws -> RDSModel.DBClusterEndpointForCreateDBClusterEndpoint

    /**
     Invokes the CreateDBClusterParameterGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    func createDBClusterParameterGroup(
            input: RDSModel.CreateDBClusterParameterGroupMessage) async throws -> RDSModel.CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup

    /**
     Invokes the CreateDBClusterSnapshot operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateDBClusterSnapshotMessage object being passed to this operation.
     - Returns: The CreateDBClusterSnapshotResultForCreateDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    func createDBClusterSnapshot(
            input: RDSModel.CreateDBClusterSnapshotMessage) async throws -> RDSModel.CreateDBClusterSnapshotResultForCreateDBClusterSnapshot

    /**
     Invokes the CreateDBInstance operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateDBInstanceMessage object being passed to this operation.
     - Returns: The CreateDBInstanceResultForCreateDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, certificateNotFound, dBClusterNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, networkTypeNotSupported, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func createDBInstance(
            input: RDSModel.CreateDBInstanceMessage) async throws -> RDSModel.CreateDBInstanceResultForCreateDBInstance

    /**
     Invokes the CreateDBInstanceReadReplica operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateDBInstanceReadReplicaMessage object being passed to this operation.
     - Returns: The CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotAllowed, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBClusterState, invalidDBInstanceState, invalidDBSubnetGroup, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, networkTypeNotSupported, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func createDBInstanceReadReplica(
            input: RDSModel.CreateDBInstanceReadReplicaMessage) async throws -> RDSModel.CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica

    /**
     Invokes the CreateDBParameterGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateDBParameterGroupMessage object being passed to this operation.
     - Returns: The CreateDBParameterGroupResultForCreateDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    func createDBParameterGroup(
            input: RDSModel.CreateDBParameterGroupMessage) async throws -> RDSModel.CreateDBParameterGroupResultForCreateDBParameterGroup

    /**
     Invokes the CreateDBProxy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateDBProxyRequest object being passed to this operation.
     - Returns: The CreateDBProxyResponseForCreateDBProxy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyAlreadyExists, dBProxyQuotaExceeded, invalidSubnet.
     */
    func createDBProxy(
            input: RDSModel.CreateDBProxyRequest) async throws -> RDSModel.CreateDBProxyResponseForCreateDBProxy

    /**
     Invokes the CreateDBProxyEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateDBProxyEndpointRequest object being passed to this operation.
     - Returns: The CreateDBProxyEndpointResponseForCreateDBProxyEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyEndpointAlreadyExists, dBProxyEndpointQuotaExceeded, dBProxyNotFound, invalidDBProxyState, invalidSubnet.
     */
    func createDBProxyEndpoint(
            input: RDSModel.CreateDBProxyEndpointRequest) async throws -> RDSModel.CreateDBProxyEndpointResponseForCreateDBProxyEndpoint

    /**
     Invokes the CreateDBSecurityGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateDBSecurityGroupMessage object being passed to this operation.
     - Returns: The CreateDBSecurityGroupResultForCreateDBSecurityGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSecurityGroupAlreadyExists, dBSecurityGroupNotSupported, dBSecurityGroupQuotaExceeded.
     */
    func createDBSecurityGroup(
            input: RDSModel.CreateDBSecurityGroupMessage) async throws -> RDSModel.CreateDBSecurityGroupResultForCreateDBSecurityGroup

    /**
     Invokes the CreateDBSnapshot operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateDBSnapshotMessage object being passed to this operation.
     - Returns: The CreateDBSnapshotResultForCreateDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    func createDBSnapshot(
            input: RDSModel.CreateDBSnapshotMessage) async throws -> RDSModel.CreateDBSnapshotResultForCreateDBSnapshot

    /**
     Invokes the CreateDBSubnetGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateDBSubnetGroupMessage object being passed to this operation.
     - Returns: The CreateDBSubnetGroupResultForCreateDBSubnetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSubnetGroupAlreadyExists, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupQuotaExceeded, dBSubnetQuotaExceeded, invalidSubnet.
     */
    func createDBSubnetGroup(
            input: RDSModel.CreateDBSubnetGroupMessage) async throws -> RDSModel.CreateDBSubnetGroupResultForCreateDBSubnetGroup

    /**
     Invokes the CreateEventSubscription operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateEventSubscriptionMessage object being passed to this operation.
     - Returns: The CreateEventSubscriptionResultForCreateEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, sourceNotFound, subscriptionAlreadyExist, subscriptionCategoryNotFound.
     */
    func createEventSubscription(
            input: RDSModel.CreateEventSubscriptionMessage) async throws -> RDSModel.CreateEventSubscriptionResultForCreateEventSubscription

    /**
     Invokes the CreateGlobalCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateGlobalClusterMessage object being passed to this operation.
     - Returns: The CreateGlobalClusterResultForCreateGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, globalClusterAlreadyExists, globalClusterQuotaExceeded, invalidDBClusterState.
     */
    func createGlobalCluster(
            input: RDSModel.CreateGlobalClusterMessage) async throws -> RDSModel.CreateGlobalClusterResultForCreateGlobalCluster

    /**
     Invokes the CreateOptionGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateOptionGroupMessage object being passed to this operation.
     - Returns: The CreateOptionGroupResultForCreateOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: optionGroupAlreadyExists, optionGroupQuotaExceeded.
     */
    func createOptionGroup(
            input: RDSModel.CreateOptionGroupMessage) async throws -> RDSModel.CreateOptionGroupResultForCreateOptionGroup

    /**
     Invokes the DeleteBlueGreenDeployment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteBlueGreenDeploymentRequest object being passed to this operation.
     - Returns: The DeleteBlueGreenDeploymentResponseForDeleteBlueGreenDeployment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: blueGreenDeploymentNotFound, invalidBlueGreenDeploymentState.
     */
    func deleteBlueGreenDeployment(
            input: RDSModel.DeleteBlueGreenDeploymentRequest) async throws -> RDSModel.DeleteBlueGreenDeploymentResponseForDeleteBlueGreenDeployment

    /**
     Invokes the DeleteCustomDBEngineVersion operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteCustomDBEngineVersionMessage object being passed to this operation.
     - Returns: The DBEngineVersionForDeleteCustomDBEngineVersion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: customDBEngineVersionNotFound, invalidCustomDBEngineVersionState.
     */
    func deleteCustomDBEngineVersion(
            input: RDSModel.DeleteCustomDBEngineVersionMessage) async throws -> RDSModel.DBEngineVersionForDeleteCustomDBEngineVersion

    /**
     Invokes the DeleteDBCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteDBClusterMessage object being passed to this operation.
     - Returns: The DeleteDBClusterResultForDeleteDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAutomatedBackupQuotaExceeded, dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    func deleteDBCluster(
            input: RDSModel.DeleteDBClusterMessage) async throws -> RDSModel.DeleteDBClusterResultForDeleteDBCluster

    /**
     Invokes the DeleteDBClusterAutomatedBackup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteDBClusterAutomatedBackupMessage object being passed to this operation.
     - Returns: The DeleteDBClusterAutomatedBackupResultForDeleteDBClusterAutomatedBackup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAutomatedBackupNotFound, invalidDBClusterAutomatedBackupState.
     */
    func deleteDBClusterAutomatedBackup(
            input: RDSModel.DeleteDBClusterAutomatedBackupMessage) async throws -> RDSModel.DeleteDBClusterAutomatedBackupResultForDeleteDBClusterAutomatedBackup

    /**
     Invokes the DeleteDBClusterEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteDBClusterEndpointMessage object being passed to this operation.
     - Returns: The DBClusterEndpointForDeleteDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterEndpointNotFound, invalidDBClusterEndpointState, invalidDBClusterState.
     */
    func deleteDBClusterEndpoint(
            input: RDSModel.DeleteDBClusterEndpointMessage) async throws -> RDSModel.DBClusterEndpointForDeleteDBClusterEndpoint

    /**
     Invokes the DeleteDBClusterParameterGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteDBClusterParameterGroupMessage object being passed to this operation.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func deleteDBClusterParameterGroup(
            input: RDSModel.DeleteDBClusterParameterGroupMessage) async throws

    /**
     Invokes the DeleteDBClusterSnapshot operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteDBClusterSnapshotMessage object being passed to this operation.
     - Returns: The DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState.
     */
    func deleteDBClusterSnapshot(
            input: RDSModel.DeleteDBClusterSnapshotMessage) async throws -> RDSModel.DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot

    /**
     Invokes the DeleteDBInstance operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteDBInstanceMessage object being passed to this operation.
     - Returns: The DeleteDBInstanceResultForDeleteDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupQuotaExceeded, dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    func deleteDBInstance(
            input: RDSModel.DeleteDBInstanceMessage) async throws -> RDSModel.DeleteDBInstanceResultForDeleteDBInstance

    /**
     Invokes the DeleteDBInstanceAutomatedBackup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteDBInstanceAutomatedBackupMessage object being passed to this operation.
     - Returns: The DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupNotFound, invalidDBInstanceAutomatedBackupState.
     */
    func deleteDBInstanceAutomatedBackup(
            input: RDSModel.DeleteDBInstanceAutomatedBackupMessage) async throws -> RDSModel.DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup

    /**
     Invokes the DeleteDBParameterGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteDBParameterGroupMessage object being passed to this operation.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func deleteDBParameterGroup(
            input: RDSModel.DeleteDBParameterGroupMessage) async throws

    /**
     Invokes the DeleteDBProxy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteDBProxyRequest object being passed to this operation.
     - Returns: The DeleteDBProxyResponseForDeleteDBProxy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound, invalidDBProxyState.
     */
    func deleteDBProxy(
            input: RDSModel.DeleteDBProxyRequest) async throws -> RDSModel.DeleteDBProxyResponseForDeleteDBProxy

    /**
     Invokes the DeleteDBProxyEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteDBProxyEndpointRequest object being passed to this operation.
     - Returns: The DeleteDBProxyEndpointResponseForDeleteDBProxyEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyEndpointNotFound, invalidDBProxyEndpointState.
     */
    func deleteDBProxyEndpoint(
            input: RDSModel.DeleteDBProxyEndpointRequest) async throws -> RDSModel.DeleteDBProxyEndpointResponseForDeleteDBProxyEndpoint

    /**
     Invokes the DeleteDBSecurityGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteDBSecurityGroupMessage object being passed to this operation.
     - Throws: dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    func deleteDBSecurityGroup(
            input: RDSModel.DeleteDBSecurityGroupMessage) async throws

    /**
     Invokes the DeleteDBSnapshot operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteDBSnapshotMessage object being passed to this operation.
     - Returns: The DeleteDBSnapshotResultForDeleteDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound, invalidDBSnapshotState.
     */
    func deleteDBSnapshot(
            input: RDSModel.DeleteDBSnapshotMessage) async throws -> RDSModel.DeleteDBSnapshotResultForDeleteDBSnapshot

    /**
     Invokes the DeleteDBSubnetGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteDBSubnetGroupMessage object being passed to this operation.
     - Throws: dBSubnetGroupNotFound, invalidDBSubnetGroupState, invalidDBSubnetState.
     */
    func deleteDBSubnetGroup(
            input: RDSModel.DeleteDBSubnetGroupMessage) async throws

    /**
     Invokes the DeleteEventSubscription operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteEventSubscriptionMessage object being passed to this operation.
     - Returns: The DeleteEventSubscriptionResultForDeleteEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidEventSubscriptionState, subscriptionNotFound.
     */
    func deleteEventSubscription(
            input: RDSModel.DeleteEventSubscriptionMessage) async throws -> RDSModel.DeleteEventSubscriptionResultForDeleteEventSubscription

    /**
     Invokes the DeleteGlobalCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteGlobalClusterMessage object being passed to this operation.
     - Returns: The DeleteGlobalClusterResultForDeleteGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalClusterNotFound, invalidGlobalClusterState.
     */
    func deleteGlobalCluster(
            input: RDSModel.DeleteGlobalClusterMessage) async throws -> RDSModel.DeleteGlobalClusterResultForDeleteGlobalCluster

    /**
     Invokes the DeleteOptionGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteOptionGroupMessage object being passed to this operation.
     - Throws: invalidOptionGroupState, optionGroupNotFound.
     */
    func deleteOptionGroup(
            input: RDSModel.DeleteOptionGroupMessage) async throws

    /**
     Invokes the DeregisterDBProxyTargets operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeregisterDBProxyTargetsRequest object being passed to this operation.
     - Returns: The DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound, dBProxyTargetGroupNotFound, dBProxyTargetNotFound, invalidDBProxyState.
     */
    func deregisterDBProxyTargets(
            input: RDSModel.DeregisterDBProxyTargetsRequest) async throws -> RDSModel.DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets

    /**
     Invokes the DescribeAccountAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeAccountAttributesMessage object being passed to this operation.
     - Returns: The AccountAttributesMessageForDescribeAccountAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAccountAttributes(
            input: RDSModel.DescribeAccountAttributesMessage) async throws -> RDSModel.AccountAttributesMessageForDescribeAccountAttributes

    /**
     Invokes the DescribeBlueGreenDeployments operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeBlueGreenDeploymentsRequest object being passed to this operation.
     - Returns: The DescribeBlueGreenDeploymentsResponseForDescribeBlueGreenDeployments object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: blueGreenDeploymentNotFound.
     */
    func describeBlueGreenDeployments(
            input: RDSModel.DescribeBlueGreenDeploymentsRequest) async throws -> RDSModel.DescribeBlueGreenDeploymentsResponseForDescribeBlueGreenDeployments

    /**
     Invokes the DescribeCertificates operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeCertificatesMessage object being passed to this operation.
     - Returns: The CertificateMessageForDescribeCertificates object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: certificateNotFound.
     */
    func describeCertificates(
            input: RDSModel.DescribeCertificatesMessage) async throws -> RDSModel.CertificateMessageForDescribeCertificates

    /**
     Invokes the DescribeDBClusterAutomatedBackups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBClusterAutomatedBackupsMessage object being passed to this operation.
     - Returns: The DBClusterAutomatedBackupMessageForDescribeDBClusterAutomatedBackups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAutomatedBackupNotFound.
     */
    func describeDBClusterAutomatedBackups(
            input: RDSModel.DescribeDBClusterAutomatedBackupsMessage) async throws -> RDSModel.DBClusterAutomatedBackupMessageForDescribeDBClusterAutomatedBackups

    /**
     Invokes the DescribeDBClusterBacktracks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBClusterBacktracksMessage object being passed to this operation.
     - Returns: The DBClusterBacktrackMessageForDescribeDBClusterBacktracks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterBacktrackNotFound, dBClusterNotFound.
     */
    func describeDBClusterBacktracks(
            input: RDSModel.DescribeDBClusterBacktracksMessage) async throws -> RDSModel.DBClusterBacktrackMessageForDescribeDBClusterBacktracks

    /**
     Invokes the DescribeDBClusterEndpoints operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBClusterEndpointsMessage object being passed to this operation.
     - Returns: The DBClusterEndpointMessageForDescribeDBClusterEndpoints object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound.
     */
    func describeDBClusterEndpoints(
            input: RDSModel.DescribeDBClusterEndpointsMessage) async throws -> RDSModel.DBClusterEndpointMessageForDescribeDBClusterEndpoints

    /**
     Invokes the DescribeDBClusterParameterGroups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBClusterParameterGroupsMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    func describeDBClusterParameterGroups(
            input: RDSModel.DescribeDBClusterParameterGroupsMessage) async throws -> RDSModel.DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups

    /**
     Invokes the DescribeDBClusterParameters operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBClusterParametersMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupDetailsForDescribeDBClusterParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    func describeDBClusterParameters(
            input: RDSModel.DescribeDBClusterParametersMessage) async throws -> RDSModel.DBClusterParameterGroupDetailsForDescribeDBClusterParameters

    /**
     Invokes the DescribeDBClusterSnapshotAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotAttributesMessage object being passed to this operation.
     - Returns: The DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound.
     */
    func describeDBClusterSnapshotAttributes(
            input: RDSModel.DescribeDBClusterSnapshotAttributesMessage) async throws -> RDSModel.DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes

    /**
     Invokes the DescribeDBClusterSnapshots operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotsMessage object being passed to this operation.
     - Returns: The DBClusterSnapshotMessageForDescribeDBClusterSnapshots object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound.
     */
    func describeDBClusterSnapshots(
            input: RDSModel.DescribeDBClusterSnapshotsMessage) async throws -> RDSModel.DBClusterSnapshotMessageForDescribeDBClusterSnapshots

    /**
     Invokes the DescribeDBClusters operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBClustersMessage object being passed to this operation.
     - Returns: The DBClusterMessageForDescribeDBClusters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound.
     */
    func describeDBClusters(
            input: RDSModel.DescribeDBClustersMessage) async throws -> RDSModel.DBClusterMessageForDescribeDBClusters

    /**
     Invokes the DescribeDBEngineVersions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBEngineVersionsMessage object being passed to this operation.
     - Returns: The DBEngineVersionMessageForDescribeDBEngineVersions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeDBEngineVersions(
            input: RDSModel.DescribeDBEngineVersionsMessage) async throws -> RDSModel.DBEngineVersionMessageForDescribeDBEngineVersions

    /**
     Invokes the DescribeDBInstanceAutomatedBackups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBInstanceAutomatedBackupsMessage object being passed to this operation.
     - Returns: The DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupNotFound.
     */
    func describeDBInstanceAutomatedBackups(
            input: RDSModel.DescribeDBInstanceAutomatedBackupsMessage) async throws -> RDSModel.DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups

    /**
     Invokes the DescribeDBInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBInstancesMessage object being passed to this operation.
     - Returns: The DBInstanceMessageForDescribeDBInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound.
     */
    func describeDBInstances(
            input: RDSModel.DescribeDBInstancesMessage) async throws -> RDSModel.DBInstanceMessageForDescribeDBInstances

    /**
     Invokes the DescribeDBLogFiles operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBLogFilesMessage object being passed to this operation.
     - Returns: The DescribeDBLogFilesResponseForDescribeDBLogFiles object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound.
     */
    func describeDBLogFiles(
            input: RDSModel.DescribeDBLogFilesMessage) async throws -> RDSModel.DescribeDBLogFilesResponseForDescribeDBLogFiles

    /**
     Invokes the DescribeDBParameterGroups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBParameterGroupsMessage object being passed to this operation.
     - Returns: The DBParameterGroupsMessageForDescribeDBParameterGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    func describeDBParameterGroups(
            input: RDSModel.DescribeDBParameterGroupsMessage) async throws -> RDSModel.DBParameterGroupsMessageForDescribeDBParameterGroups

    /**
     Invokes the DescribeDBParameters operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBParametersMessage object being passed to this operation.
     - Returns: The DBParameterGroupDetailsForDescribeDBParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    func describeDBParameters(
            input: RDSModel.DescribeDBParametersMessage) async throws -> RDSModel.DBParameterGroupDetailsForDescribeDBParameters

    /**
     Invokes the DescribeDBProxies operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBProxiesRequest object being passed to this operation.
     - Returns: The DescribeDBProxiesResponseForDescribeDBProxies object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound.
     */
    func describeDBProxies(
            input: RDSModel.DescribeDBProxiesRequest) async throws -> RDSModel.DescribeDBProxiesResponseForDescribeDBProxies

    /**
     Invokes the DescribeDBProxyEndpoints operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBProxyEndpointsRequest object being passed to this operation.
     - Returns: The DescribeDBProxyEndpointsResponseForDescribeDBProxyEndpoints object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyEndpointNotFound, dBProxyNotFound.
     */
    func describeDBProxyEndpoints(
            input: RDSModel.DescribeDBProxyEndpointsRequest) async throws -> RDSModel.DescribeDBProxyEndpointsResponseForDescribeDBProxyEndpoints

    /**
     Invokes the DescribeDBProxyTargetGroups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBProxyTargetGroupsRequest object being passed to this operation.
     - Returns: The DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound, dBProxyTargetGroupNotFound, invalidDBProxyState.
     */
    func describeDBProxyTargetGroups(
            input: RDSModel.DescribeDBProxyTargetGroupsRequest) async throws -> RDSModel.DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups

    /**
     Invokes the DescribeDBProxyTargets operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBProxyTargetsRequest object being passed to this operation.
     - Returns: The DescribeDBProxyTargetsResponseForDescribeDBProxyTargets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound, dBProxyTargetGroupNotFound, dBProxyTargetNotFound, invalidDBProxyState.
     */
    func describeDBProxyTargets(
            input: RDSModel.DescribeDBProxyTargetsRequest) async throws -> RDSModel.DescribeDBProxyTargetsResponseForDescribeDBProxyTargets

    /**
     Invokes the DescribeDBSecurityGroups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBSecurityGroupsMessage object being passed to this operation.
     - Returns: The DBSecurityGroupMessageForDescribeDBSecurityGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSecurityGroupNotFound.
     */
    func describeDBSecurityGroups(
            input: RDSModel.DescribeDBSecurityGroupsMessage) async throws -> RDSModel.DBSecurityGroupMessageForDescribeDBSecurityGroups

    /**
     Invokes the DescribeDBSnapshotAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBSnapshotAttributesMessage object being passed to this operation.
     - Returns: The DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound.
     */
    func describeDBSnapshotAttributes(
            input: RDSModel.DescribeDBSnapshotAttributesMessage) async throws -> RDSModel.DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes

    /**
     Invokes the DescribeDBSnapshots operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBSnapshotsMessage object being passed to this operation.
     - Returns: The DBSnapshotMessageForDescribeDBSnapshots object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound.
     */
    func describeDBSnapshots(
            input: RDSModel.DescribeDBSnapshotsMessage) async throws -> RDSModel.DBSnapshotMessageForDescribeDBSnapshots

    /**
     Invokes the DescribeDBSubnetGroups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBSubnetGroupsMessage object being passed to this operation.
     - Returns: The DBSubnetGroupMessageForDescribeDBSubnetGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSubnetGroupNotFound.
     */
    func describeDBSubnetGroups(
            input: RDSModel.DescribeDBSubnetGroupsMessage) async throws -> RDSModel.DBSubnetGroupMessageForDescribeDBSubnetGroups

    /**
     Invokes the DescribeEngineDefaultClusterParameters operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeEngineDefaultClusterParametersMessage object being passed to this operation.
     - Returns: The DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEngineDefaultClusterParameters(
            input: RDSModel.DescribeEngineDefaultClusterParametersMessage) async throws -> RDSModel.DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters

    /**
     Invokes the DescribeEngineDefaultParameters operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeEngineDefaultParametersMessage object being passed to this operation.
     - Returns: The DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEngineDefaultParameters(
            input: RDSModel.DescribeEngineDefaultParametersMessage) async throws -> RDSModel.DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters

    /**
     Invokes the DescribeEventCategories operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeEventCategoriesMessage object being passed to this operation.
     - Returns: The EventCategoriesMessageForDescribeEventCategories object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEventCategories(
            input: RDSModel.DescribeEventCategoriesMessage) async throws -> RDSModel.EventCategoriesMessageForDescribeEventCategories

    /**
     Invokes the DescribeEventSubscriptions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeEventSubscriptionsMessage object being passed to this operation.
     - Returns: The EventSubscriptionsMessageForDescribeEventSubscriptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: subscriptionNotFound.
     */
    func describeEventSubscriptions(
            input: RDSModel.DescribeEventSubscriptionsMessage) async throws -> RDSModel.EventSubscriptionsMessageForDescribeEventSubscriptions

    /**
     Invokes the DescribeEvents operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeEventsMessage object being passed to this operation.
     - Returns: The EventsMessageForDescribeEvents object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEvents(
            input: RDSModel.DescribeEventsMessage) async throws -> RDSModel.EventsMessageForDescribeEvents

    /**
     Invokes the DescribeExportTasks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeExportTasksMessage object being passed to this operation.
     - Returns: The ExportTasksMessageForDescribeExportTasks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: exportTaskNotFound.
     */
    func describeExportTasks(
            input: RDSModel.DescribeExportTasksMessage) async throws -> RDSModel.ExportTasksMessageForDescribeExportTasks

    /**
     Invokes the DescribeGlobalClusters operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeGlobalClustersMessage object being passed to this operation.
     - Returns: The GlobalClustersMessageForDescribeGlobalClusters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalClusterNotFound.
     */
    func describeGlobalClusters(
            input: RDSModel.DescribeGlobalClustersMessage) async throws -> RDSModel.GlobalClustersMessageForDescribeGlobalClusters

    /**
     Invokes the DescribeOptionGroupOptions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeOptionGroupOptionsMessage object being passed to this operation.
     - Returns: The OptionGroupOptionsMessageForDescribeOptionGroupOptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeOptionGroupOptions(
            input: RDSModel.DescribeOptionGroupOptionsMessage) async throws -> RDSModel.OptionGroupOptionsMessageForDescribeOptionGroupOptions

    /**
     Invokes the DescribeOptionGroups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeOptionGroupsMessage object being passed to this operation.
     - Returns: The OptionGroupsForDescribeOptionGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: optionGroupNotFound.
     */
    func describeOptionGroups(
            input: RDSModel.DescribeOptionGroupsMessage) async throws -> RDSModel.OptionGroupsForDescribeOptionGroups

    /**
     Invokes the DescribeOrderableDBInstanceOptions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeOrderableDBInstanceOptionsMessage object being passed to this operation.
     - Returns: The OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeOrderableDBInstanceOptions(
            input: RDSModel.DescribeOrderableDBInstanceOptionsMessage) async throws -> RDSModel.OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions

    /**
     Invokes the DescribePendingMaintenanceActions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribePendingMaintenanceActionsMessage object being passed to this operation.
     - Returns: The PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: resourceNotFound.
     */
    func describePendingMaintenanceActions(
            input: RDSModel.DescribePendingMaintenanceActionsMessage) async throws -> RDSModel.PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions

    /**
     Invokes the DescribeReservedDBInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesMessage object being passed to this operation.
     - Returns: The ReservedDBInstanceMessageForDescribeReservedDBInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: reservedDBInstanceNotFound.
     */
    func describeReservedDBInstances(
            input: RDSModel.DescribeReservedDBInstancesMessage) async throws -> RDSModel.ReservedDBInstanceMessageForDescribeReservedDBInstances

    /**
     Invokes the DescribeReservedDBInstancesOfferings operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesOfferingsMessage object being passed to this operation.
     - Returns: The ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: reservedDBInstancesOfferingNotFound.
     */
    func describeReservedDBInstancesOfferings(
            input: RDSModel.DescribeReservedDBInstancesOfferingsMessage) async throws -> RDSModel.ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings

    /**
     Invokes the DescribeSourceRegions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeSourceRegionsMessage object being passed to this operation.
     - Returns: The SourceRegionMessageForDescribeSourceRegions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSourceRegions(
            input: RDSModel.DescribeSourceRegionsMessage) async throws -> RDSModel.SourceRegionMessageForDescribeSourceRegions

    /**
     Invokes the DescribeValidDBInstanceModifications operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeValidDBInstanceModificationsMessage object being passed to this operation.
     - Returns: The DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    func describeValidDBInstanceModifications(
            input: RDSModel.DescribeValidDBInstanceModificationsMessage) async throws -> RDSModel.DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications

    /**
     Invokes the DownloadDBLogFilePortion operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DownloadDBLogFilePortionMessage object being passed to this operation.
     - Returns: The DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, dBLogFileNotFound.
     */
    func downloadDBLogFilePortion(
            input: RDSModel.DownloadDBLogFilePortionMessage) async throws -> RDSModel.DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion

    /**
     Invokes the FailoverDBCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated FailoverDBClusterMessage object being passed to this operation.
     - Returns: The FailoverDBClusterResultForFailoverDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func failoverDBCluster(
            input: RDSModel.FailoverDBClusterMessage) async throws -> RDSModel.FailoverDBClusterResultForFailoverDBCluster

    /**
     Invokes the FailoverGlobalCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated FailoverGlobalClusterMessage object being passed to this operation.
     - Returns: The FailoverGlobalClusterResultForFailoverGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, globalClusterNotFound, invalidDBClusterState, invalidGlobalClusterState.
     */
    func failoverGlobalCluster(
            input: RDSModel.FailoverGlobalClusterMessage) async throws -> RDSModel.FailoverGlobalClusterResultForFailoverGlobalCluster

    /**
     Invokes the ListTagsForResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTagsForResourceMessage object being passed to this operation.
     - Returns: The TagListMessageForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: blueGreenDeploymentNotFound, dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetGroupNotFound, dBSnapshotNotFound.
     */
    func listTagsForResource(
            input: RDSModel.ListTagsForResourceMessage) async throws -> RDSModel.TagListMessageForListTagsForResource

    /**
     Invokes the ModifyActivityStream operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyActivityStreamRequest object being passed to this operation.
     - Returns: The ModifyActivityStreamResponseForModifyActivityStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState, resourceNotFound.
     */
    func modifyActivityStream(
            input: RDSModel.ModifyActivityStreamRequest) async throws -> RDSModel.ModifyActivityStreamResponseForModifyActivityStream

    /**
     Invokes the ModifyCertificates operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyCertificatesMessage object being passed to this operation.
     - Returns: The ModifyCertificatesResultForModifyCertificates object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: certificateNotFound.
     */
    func modifyCertificates(
            input: RDSModel.ModifyCertificatesMessage) async throws -> RDSModel.ModifyCertificatesResultForModifyCertificates

    /**
     Invokes the ModifyCurrentDBClusterCapacity operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyCurrentDBClusterCapacityMessage object being passed to this operation.
     - Returns: The DBClusterCapacityInfoForModifyCurrentDBClusterCapacity object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterCapacity, invalidDBClusterState.
     */
    func modifyCurrentDBClusterCapacity(
            input: RDSModel.ModifyCurrentDBClusterCapacityMessage) async throws -> RDSModel.DBClusterCapacityInfoForModifyCurrentDBClusterCapacity

    /**
     Invokes the ModifyCustomDBEngineVersion operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyCustomDBEngineVersionMessage object being passed to this operation.
     - Returns: The DBEngineVersionForModifyCustomDBEngineVersion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: customDBEngineVersionNotFound, invalidCustomDBEngineVersionState.
     */
    func modifyCustomDBEngineVersion(
            input: RDSModel.ModifyCustomDBEngineVersionMessage) async throws -> RDSModel.DBEngineVersionForModifyCustomDBEngineVersion

    /**
     Invokes the ModifyDBCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyDBClusterMessage object being passed to this operation.
     - Returns: The ModifyDBClusterResultForModifyDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBInstanceAlreadyExists, dBSubnetGroupNotFound, domainNotFound, invalidDBClusterState, invalidDBInstanceState, invalidDBSecurityGroupState, invalidDBSubnetGroupState, invalidSubnet, invalidVPCNetworkState, storageQuotaExceeded, storageTypeNotAvailable.
     */
    func modifyDBCluster(
            input: RDSModel.ModifyDBClusterMessage) async throws -> RDSModel.ModifyDBClusterResultForModifyDBCluster

    /**
     Invokes the ModifyDBClusterEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyDBClusterEndpointMessage object being passed to this operation.
     - Returns: The DBClusterEndpointForModifyDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterEndpointNotFound, dBInstanceNotFound, invalidDBClusterEndpointState, invalidDBClusterState, invalidDBInstanceState.
     */
    func modifyDBClusterEndpoint(
            input: RDSModel.ModifyDBClusterEndpointMessage) async throws -> RDSModel.DBClusterEndpointForModifyDBClusterEndpoint

    /**
     Invokes the ModifyDBClusterParameterGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func modifyDBClusterParameterGroup(
            input: RDSModel.ModifyDBClusterParameterGroupMessage) async throws -> RDSModel.DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup

    /**
     Invokes the ModifyDBClusterSnapshotAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyDBClusterSnapshotAttributeMessage object being passed to this operation.
     - Returns: The ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, sharedSnapshotQuotaExceeded.
     */
    func modifyDBClusterSnapshotAttribute(
            input: RDSModel.ModifyDBClusterSnapshotAttributeMessage) async throws -> RDSModel.ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute

    /**
     Invokes the ModifyDBInstance operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyDBInstanceMessage object being passed to this operation.
     - Returns: The ModifyDBInstanceResultForModifyDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, certificateNotFound, dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBUpgradeDependencyFailure, domainNotFound, insufficientDBInstanceCapacity, invalidDBClusterState, invalidDBInstanceState, invalidDBSecurityGroupState, invalidVPCNetworkState, kMSKeyNotAccessible, networkTypeNotSupported, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func modifyDBInstance(
            input: RDSModel.ModifyDBInstanceMessage) async throws -> RDSModel.ModifyDBInstanceResultForModifyDBInstance

    /**
     Invokes the ModifyDBParameterGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyDBParameterGroupMessage object being passed to this operation.
     - Returns: The DBParameterGroupNameMessageForModifyDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func modifyDBParameterGroup(
            input: RDSModel.ModifyDBParameterGroupMessage) async throws -> RDSModel.DBParameterGroupNameMessageForModifyDBParameterGroup

    /**
     Invokes the ModifyDBProxy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyDBProxyRequest object being passed to this operation.
     - Returns: The ModifyDBProxyResponseForModifyDBProxy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyAlreadyExists, dBProxyNotFound, invalidDBProxyState.
     */
    func modifyDBProxy(
            input: RDSModel.ModifyDBProxyRequest) async throws -> RDSModel.ModifyDBProxyResponseForModifyDBProxy

    /**
     Invokes the ModifyDBProxyEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyDBProxyEndpointRequest object being passed to this operation.
     - Returns: The ModifyDBProxyEndpointResponseForModifyDBProxyEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyEndpointAlreadyExists, dBProxyEndpointNotFound, invalidDBProxyEndpointState, invalidDBProxyState.
     */
    func modifyDBProxyEndpoint(
            input: RDSModel.ModifyDBProxyEndpointRequest) async throws -> RDSModel.ModifyDBProxyEndpointResponseForModifyDBProxyEndpoint

    /**
     Invokes the ModifyDBProxyTargetGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyDBProxyTargetGroupRequest object being passed to this operation.
     - Returns: The ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound, dBProxyTargetGroupNotFound, invalidDBProxyState.
     */
    func modifyDBProxyTargetGroup(
            input: RDSModel.ModifyDBProxyTargetGroupRequest) async throws -> RDSModel.ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup

    /**
     Invokes the ModifyDBSnapshot operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyDBSnapshotMessage object being passed to this operation.
     - Returns: The ModifyDBSnapshotResultForModifyDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound.
     */
    func modifyDBSnapshot(
            input: RDSModel.ModifyDBSnapshotMessage) async throws -> RDSModel.ModifyDBSnapshotResultForModifyDBSnapshot

    /**
     Invokes the ModifyDBSnapshotAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyDBSnapshotAttributeMessage object being passed to this operation.
     - Returns: The ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound, invalidDBSnapshotState, sharedSnapshotQuotaExceeded.
     */
    func modifyDBSnapshotAttribute(
            input: RDSModel.ModifyDBSnapshotAttributeMessage) async throws -> RDSModel.ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute

    /**
     Invokes the ModifyDBSubnetGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyDBSubnetGroupMessage object being passed to this operation.
     - Returns: The ModifyDBSubnetGroupResultForModifyDBSubnetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, dBSubnetQuotaExceeded, invalidSubnet, subnetAlreadyInUse.
     */
    func modifyDBSubnetGroup(
            input: RDSModel.ModifyDBSubnetGroupMessage) async throws -> RDSModel.ModifyDBSubnetGroupResultForModifyDBSubnetGroup

    /**
     Invokes the ModifyEventSubscription operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyEventSubscriptionMessage object being passed to this operation.
     - Returns: The ModifyEventSubscriptionResultForModifyEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, subscriptionCategoryNotFound, subscriptionNotFound.
     */
    func modifyEventSubscription(
            input: RDSModel.ModifyEventSubscriptionMessage) async throws -> RDSModel.ModifyEventSubscriptionResultForModifyEventSubscription

    /**
     Invokes the ModifyGlobalCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyGlobalClusterMessage object being passed to this operation.
     - Returns: The ModifyGlobalClusterResultForModifyGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalClusterNotFound, invalidDBClusterState, invalidDBInstanceState, invalidGlobalClusterState.
     */
    func modifyGlobalCluster(
            input: RDSModel.ModifyGlobalClusterMessage) async throws -> RDSModel.ModifyGlobalClusterResultForModifyGlobalCluster

    /**
     Invokes the ModifyOptionGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyOptionGroupMessage object being passed to this operation.
     - Returns: The ModifyOptionGroupResultForModifyOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOptionGroupState, optionGroupNotFound.
     */
    func modifyOptionGroup(
            input: RDSModel.ModifyOptionGroupMessage) async throws -> RDSModel.ModifyOptionGroupResultForModifyOptionGroup

    /**
     Invokes the PromoteReadReplica operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PromoteReadReplicaMessage object being passed to this operation.
     - Returns: The PromoteReadReplicaResultForPromoteReadReplica object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    func promoteReadReplica(
            input: RDSModel.PromoteReadReplicaMessage) async throws -> RDSModel.PromoteReadReplicaResultForPromoteReadReplica

    /**
     Invokes the PromoteReadReplicaDBCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PromoteReadReplicaDBClusterMessage object being passed to this operation.
     - Returns: The PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState.
     */
    func promoteReadReplicaDBCluster(
            input: RDSModel.PromoteReadReplicaDBClusterMessage) async throws -> RDSModel.PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster

    /**
     Invokes the PurchaseReservedDBInstancesOffering operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PurchaseReservedDBInstancesOfferingMessage object being passed to this operation.
     - Returns: The PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: reservedDBInstanceAlreadyExists, reservedDBInstanceQuotaExceeded, reservedDBInstancesOfferingNotFound.
     */
    func purchaseReservedDBInstancesOffering(
            input: RDSModel.PurchaseReservedDBInstancesOfferingMessage) async throws -> RDSModel.PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering

    /**
     Invokes the RebootDBCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RebootDBClusterMessage object being passed to this operation.
     - Returns: The RebootDBClusterResultForRebootDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func rebootDBCluster(
            input: RDSModel.RebootDBClusterMessage) async throws -> RDSModel.RebootDBClusterResultForRebootDBCluster

    /**
     Invokes the RebootDBInstance operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RebootDBInstanceMessage object being passed to this operation.
     - Returns: The RebootDBInstanceResultForRebootDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    func rebootDBInstance(
            input: RDSModel.RebootDBInstanceMessage) async throws -> RDSModel.RebootDBInstanceResultForRebootDBInstance

    /**
     Invokes the RegisterDBProxyTargets operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RegisterDBProxyTargetsRequest object being passed to this operation.
     - Returns: The RegisterDBProxyTargetsResponseForRegisterDBProxyTargets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetAlreadyRegistered, dBProxyTargetGroupNotFound, insufficientAvailableIPsInSubnet, invalidDBClusterState, invalidDBInstanceState, invalidDBProxyState.
     */
    func registerDBProxyTargets(
            input: RDSModel.RegisterDBProxyTargetsRequest) async throws -> RDSModel.RegisterDBProxyTargetsResponseForRegisterDBProxyTargets

    /**
     Invokes the RemoveFromGlobalCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RemoveFromGlobalClusterMessage object being passed to this operation.
     - Returns: The RemoveFromGlobalClusterResultForRemoveFromGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, globalClusterNotFound, invalidGlobalClusterState.
     */
    func removeFromGlobalCluster(
            input: RDSModel.RemoveFromGlobalClusterMessage) async throws -> RDSModel.RemoveFromGlobalClusterResultForRemoveFromGlobalCluster

    /**
     Invokes the RemoveRoleFromDBCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RemoveRoleFromDBClusterMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBClusterRoleNotFound, invalidDBClusterState.
     */
    func removeRoleFromDBCluster(
            input: RDSModel.RemoveRoleFromDBClusterMessage) async throws

    /**
     Invokes the RemoveRoleFromDBInstance operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RemoveRoleFromDBInstanceMessage object being passed to this operation.
     - Throws: dBInstanceNotFound, dBInstanceRoleNotFound, invalidDBInstanceState.
     */
    func removeRoleFromDBInstance(
            input: RDSModel.RemoveRoleFromDBInstanceMessage) async throws

    /**
     Invokes the RemoveSourceIdentifierFromSubscription operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RemoveSourceIdentifierFromSubscriptionMessage object being passed to this operation.
     - Returns: The RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: sourceNotFound, subscriptionNotFound.
     */
    func removeSourceIdentifierFromSubscription(
            input: RDSModel.RemoveSourceIdentifierFromSubscriptionMessage) async throws -> RDSModel.RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription

    /**
     Invokes the RemoveTagsFromResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RemoveTagsFromResourceMessage object being passed to this operation.
     - Throws: blueGreenDeploymentNotFound, dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetGroupNotFound, dBSnapshotNotFound.
     */
    func removeTagsFromResource(
            input: RDSModel.RemoveTagsFromResourceMessage) async throws

    /**
     Invokes the ResetDBClusterParameterGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ResetDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func resetDBClusterParameterGroup(
            input: RDSModel.ResetDBClusterParameterGroupMessage) async throws -> RDSModel.DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup

    /**
     Invokes the ResetDBParameterGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ResetDBParameterGroupMessage object being passed to this operation.
     - Returns: The DBParameterGroupNameMessageForResetDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func resetDBParameterGroup(
            input: RDSModel.ResetDBParameterGroupMessage) async throws -> RDSModel.DBParameterGroupNameMessageForResetDBParameterGroup

    /**
     Invokes the RestoreDBClusterFromS3 operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RestoreDBClusterFromS3Message object being passed to this operation.
     - Returns: The RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3 object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBSubnetGroupNotFound, domainNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBSubnetGroupState, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded, storageTypeNotSupported.
     */
    func restoreDBClusterFromS3(
            input: RDSModel.RestoreDBClusterFromS3Message) async throws -> RDSModel.RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3

    /**
     Invokes the RestoreDBClusterFromSnapshot operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RestoreDBClusterFromSnapshotMessage object being passed to this operation.
     - Returns: The RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSnapshotNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, dBSubnetGroupNotFound, domainNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBInstanceState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded, storageQuotaExceeded.
     */
    func restoreDBClusterFromSnapshot(
            input: RDSModel.RestoreDBClusterFromSnapshotMessage) async throws -> RDSModel.RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot

    /**
     Invokes the RestoreDBClusterToPointInTime operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RestoreDBClusterToPointInTimeMessage object being passed to this operation.
     - Returns: The RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterAutomatedBackupNotFound, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSubnetGroupNotFound, domainNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBClusterState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded.
     */
    func restoreDBClusterToPointInTime(
            input: RDSModel.RestoreDBClusterToPointInTimeMessage) async throws -> RDSModel.RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime

    /**
     Invokes the RestoreDBInstanceFromDBSnapshot operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RestoreDBInstanceFromDBSnapshotMessage object being passed to this operation.
     - Returns: The RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBClusterSnapshotNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSnapshotNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, networkTypeNotSupported, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func restoreDBInstanceFromDBSnapshot(
            input: RDSModel.RestoreDBInstanceFromDBSnapshotMessage) async throws -> RDSModel.RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot

    /**
     Invokes the RestoreDBInstanceFromS3 operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RestoreDBInstanceFromS3Message object being passed to this operation.
     - Returns: The RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3 object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, networkTypeNotSupported, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func restoreDBInstanceFromS3(
            input: RDSModel.RestoreDBInstanceFromS3Message) async throws -> RDSModel.RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3

    /**
     Invokes the RestoreDBInstanceToPointInTime operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RestoreDBInstanceToPointInTimeMessage object being passed to this operation.
     - Returns: The RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBInstanceAutomatedBackupNotFound, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, networkTypeNotSupported, optionGroupNotFound, pointInTimeRestoreNotEnabled, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func restoreDBInstanceToPointInTime(
            input: RDSModel.RestoreDBInstanceToPointInTimeMessage) async throws -> RDSModel.RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime

    /**
     Invokes the RevokeDBSecurityGroupIngress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RevokeDBSecurityGroupIngressMessage object being passed to this operation.
     - Returns: The RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    func revokeDBSecurityGroupIngress(
            input: RDSModel.RevokeDBSecurityGroupIngressMessage) async throws -> RDSModel.RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress

    /**
     Invokes the StartActivityStream operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartActivityStreamRequest object being passed to this operation.
     - Returns: The StartActivityStreamResponseForStartActivityStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState, kMSKeyNotAccessible, resourceNotFound.
     */
    func startActivityStream(
            input: RDSModel.StartActivityStreamRequest) async throws -> RDSModel.StartActivityStreamResponseForStartActivityStream

    /**
     Invokes the StartDBCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartDBClusterMessage object being passed to this operation.
     - Returns: The StartDBClusterResultForStartDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func startDBCluster(
            input: RDSModel.StartDBClusterMessage) async throws -> RDSModel.StartDBClusterResultForStartDBCluster

    /**
     Invokes the StartDBInstance operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartDBInstanceMessage object being passed to this operation.
     - Returns: The StartDBInstanceResultForStartDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, dBClusterNotFound, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, insufficientDBInstanceCapacity, invalidDBClusterState, invalidDBInstanceState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible.
     */
    func startDBInstance(
            input: RDSModel.StartDBInstanceMessage) async throws -> RDSModel.StartDBInstanceResultForStartDBInstance

    /**
     Invokes the StartDBInstanceAutomatedBackupsReplication operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartDBInstanceAutomatedBackupsReplicationMessage object being passed to this operation.
     - Returns: The StartDBInstanceAutomatedBackupsReplicationResultForStartDBInstanceAutomatedBackupsReplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupQuotaExceeded, dBInstanceNotFound, invalidDBInstanceState, kMSKeyNotAccessible, storageTypeNotSupported.
     */
    func startDBInstanceAutomatedBackupsReplication(
            input: RDSModel.StartDBInstanceAutomatedBackupsReplicationMessage) async throws -> RDSModel.StartDBInstanceAutomatedBackupsReplicationResultForStartDBInstanceAutomatedBackupsReplication

    /**
     Invokes the StartExportTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartExportTaskMessage object being passed to this operation.
     - Returns: The ExportTaskForStartExportTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBClusterSnapshotNotFound, dBSnapshotNotFound, exportTaskAlreadyExists, iamRoleMissingPermissions, iamRoleNotFound, invalidExportOnly, invalidExportSourceState, invalidS3Bucket, kMSKeyNotAccessible.
     */
    func startExportTask(
            input: RDSModel.StartExportTaskMessage) async throws -> RDSModel.ExportTaskForStartExportTask

    /**
     Invokes the StopActivityStream operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StopActivityStreamRequest object being passed to this operation.
     - Returns: The StopActivityStreamResponseForStopActivityStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState, resourceNotFound.
     */
    func stopActivityStream(
            input: RDSModel.StopActivityStreamRequest) async throws -> RDSModel.StopActivityStreamResponseForStopActivityStream

    /**
     Invokes the StopDBCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StopDBClusterMessage object being passed to this operation.
     - Returns: The StopDBClusterResultForStopDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func stopDBCluster(
            input: RDSModel.StopDBClusterMessage) async throws -> RDSModel.StopDBClusterResultForStopDBCluster

    /**
     Invokes the StopDBInstance operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StopDBInstanceMessage object being passed to this operation.
     - Returns: The StopDBInstanceResultForStopDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    func stopDBInstance(
            input: RDSModel.StopDBInstanceMessage) async throws -> RDSModel.StopDBInstanceResultForStopDBInstance

    /**
     Invokes the StopDBInstanceAutomatedBackupsReplication operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StopDBInstanceAutomatedBackupsReplicationMessage object being passed to this operation.
     - Returns: The StopDBInstanceAutomatedBackupsReplicationResultForStopDBInstanceAutomatedBackupsReplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    func stopDBInstanceAutomatedBackupsReplication(
            input: RDSModel.StopDBInstanceAutomatedBackupsReplicationMessage) async throws -> RDSModel.StopDBInstanceAutomatedBackupsReplicationResultForStopDBInstanceAutomatedBackupsReplication

    /**
     Invokes the SwitchoverBlueGreenDeployment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SwitchoverBlueGreenDeploymentRequest object being passed to this operation.
     - Returns: The SwitchoverBlueGreenDeploymentResponseForSwitchoverBlueGreenDeployment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: blueGreenDeploymentNotFound, invalidBlueGreenDeploymentState.
     */
    func switchoverBlueGreenDeployment(
            input: RDSModel.SwitchoverBlueGreenDeploymentRequest) async throws -> RDSModel.SwitchoverBlueGreenDeploymentResponseForSwitchoverBlueGreenDeployment

    /**
     Invokes the SwitchoverGlobalCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SwitchoverGlobalClusterMessage object being passed to this operation.
     - Returns: The SwitchoverGlobalClusterResultForSwitchoverGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, globalClusterNotFound, invalidDBClusterState, invalidGlobalClusterState.
     */
    func switchoverGlobalCluster(
            input: RDSModel.SwitchoverGlobalClusterMessage) async throws -> RDSModel.SwitchoverGlobalClusterResultForSwitchoverGlobalCluster

    /**
     Invokes the SwitchoverReadReplica operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SwitchoverReadReplicaMessage object being passed to this operation.
     - Returns: The SwitchoverReadReplicaResultForSwitchoverReadReplica object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    func switchoverReadReplica(
            input: RDSModel.SwitchoverReadReplicaMessage) async throws -> RDSModel.SwitchoverReadReplicaResultForSwitchoverReadReplica
#endif
}
