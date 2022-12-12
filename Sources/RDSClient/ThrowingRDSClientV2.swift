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
// ThrowingRDSClientV2.swift
// RDSClient
//

import Foundation
import RDSModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the RDS service that by default always throws from its methods.
 */
public struct ThrowingRDSClientV2: RDSClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    let error: RDSError
    let addRoleToDBClusterOverride: AddRoleToDBClusterFunctionType?
    let addRoleToDBInstanceOverride: AddRoleToDBInstanceFunctionType?
    let addSourceIdentifierToSubscriptionOverride: AddSourceIdentifierToSubscriptionFunctionType?
    let addTagsToResourceOverride: AddTagsToResourceFunctionType?
    let applyPendingMaintenanceActionOverride: ApplyPendingMaintenanceActionFunctionType?
    let authorizeDBSecurityGroupIngressOverride: AuthorizeDBSecurityGroupIngressFunctionType?
    let backtrackDBClusterOverride: BacktrackDBClusterFunctionType?
    let cancelExportTaskOverride: CancelExportTaskFunctionType?
    let copyDBClusterParameterGroupOverride: CopyDBClusterParameterGroupFunctionType?
    let copyDBClusterSnapshotOverride: CopyDBClusterSnapshotFunctionType?
    let copyDBParameterGroupOverride: CopyDBParameterGroupFunctionType?
    let copyDBSnapshotOverride: CopyDBSnapshotFunctionType?
    let copyOptionGroupOverride: CopyOptionGroupFunctionType?
    let createCustomDBEngineVersionOverride: CreateCustomDBEngineVersionFunctionType?
    let createDBClusterOverride: CreateDBClusterFunctionType?
    let createDBClusterEndpointOverride: CreateDBClusterEndpointFunctionType?
    let createDBClusterParameterGroupOverride: CreateDBClusterParameterGroupFunctionType?
    let createDBClusterSnapshotOverride: CreateDBClusterSnapshotFunctionType?
    let createDBInstanceOverride: CreateDBInstanceFunctionType?
    let createDBInstanceReadReplicaOverride: CreateDBInstanceReadReplicaFunctionType?
    let createDBParameterGroupOverride: CreateDBParameterGroupFunctionType?
    let createDBProxyOverride: CreateDBProxyFunctionType?
    let createDBProxyEndpointOverride: CreateDBProxyEndpointFunctionType?
    let createDBSecurityGroupOverride: CreateDBSecurityGroupFunctionType?
    let createDBSnapshotOverride: CreateDBSnapshotFunctionType?
    let createDBSubnetGroupOverride: CreateDBSubnetGroupFunctionType?
    let createEventSubscriptionOverride: CreateEventSubscriptionFunctionType?
    let createGlobalClusterOverride: CreateGlobalClusterFunctionType?
    let createOptionGroupOverride: CreateOptionGroupFunctionType?
    let deleteCustomDBEngineVersionOverride: DeleteCustomDBEngineVersionFunctionType?
    let deleteDBClusterOverride: DeleteDBClusterFunctionType?
    let deleteDBClusterEndpointOverride: DeleteDBClusterEndpointFunctionType?
    let deleteDBClusterParameterGroupOverride: DeleteDBClusterParameterGroupFunctionType?
    let deleteDBClusterSnapshotOverride: DeleteDBClusterSnapshotFunctionType?
    let deleteDBInstanceOverride: DeleteDBInstanceFunctionType?
    let deleteDBInstanceAutomatedBackupOverride: DeleteDBInstanceAutomatedBackupFunctionType?
    let deleteDBParameterGroupOverride: DeleteDBParameterGroupFunctionType?
    let deleteDBProxyOverride: DeleteDBProxyFunctionType?
    let deleteDBProxyEndpointOverride: DeleteDBProxyEndpointFunctionType?
    let deleteDBSecurityGroupOverride: DeleteDBSecurityGroupFunctionType?
    let deleteDBSnapshotOverride: DeleteDBSnapshotFunctionType?
    let deleteDBSubnetGroupOverride: DeleteDBSubnetGroupFunctionType?
    let deleteEventSubscriptionOverride: DeleteEventSubscriptionFunctionType?
    let deleteGlobalClusterOverride: DeleteGlobalClusterFunctionType?
    let deleteOptionGroupOverride: DeleteOptionGroupFunctionType?
    let deregisterDBProxyTargetsOverride: DeregisterDBProxyTargetsFunctionType?
    let describeAccountAttributesOverride: DescribeAccountAttributesFunctionType?
    let describeCertificatesOverride: DescribeCertificatesFunctionType?
    let describeDBClusterBacktracksOverride: DescribeDBClusterBacktracksFunctionType?
    let describeDBClusterEndpointsOverride: DescribeDBClusterEndpointsFunctionType?
    let describeDBClusterParameterGroupsOverride: DescribeDBClusterParameterGroupsFunctionType?
    let describeDBClusterParametersOverride: DescribeDBClusterParametersFunctionType?
    let describeDBClusterSnapshotAttributesOverride: DescribeDBClusterSnapshotAttributesFunctionType?
    let describeDBClusterSnapshotsOverride: DescribeDBClusterSnapshotsFunctionType?
    let describeDBClustersOverride: DescribeDBClustersFunctionType?
    let describeDBEngineVersionsOverride: DescribeDBEngineVersionsFunctionType?
    let describeDBInstanceAutomatedBackupsOverride: DescribeDBInstanceAutomatedBackupsFunctionType?
    let describeDBInstancesOverride: DescribeDBInstancesFunctionType?
    let describeDBLogFilesOverride: DescribeDBLogFilesFunctionType?
    let describeDBParameterGroupsOverride: DescribeDBParameterGroupsFunctionType?
    let describeDBParametersOverride: DescribeDBParametersFunctionType?
    let describeDBProxiesOverride: DescribeDBProxiesFunctionType?
    let describeDBProxyEndpointsOverride: DescribeDBProxyEndpointsFunctionType?
    let describeDBProxyTargetGroupsOverride: DescribeDBProxyTargetGroupsFunctionType?
    let describeDBProxyTargetsOverride: DescribeDBProxyTargetsFunctionType?
    let describeDBSecurityGroupsOverride: DescribeDBSecurityGroupsFunctionType?
    let describeDBSnapshotAttributesOverride: DescribeDBSnapshotAttributesFunctionType?
    let describeDBSnapshotsOverride: DescribeDBSnapshotsFunctionType?
    let describeDBSubnetGroupsOverride: DescribeDBSubnetGroupsFunctionType?
    let describeEngineDefaultClusterParametersOverride: DescribeEngineDefaultClusterParametersFunctionType?
    let describeEngineDefaultParametersOverride: DescribeEngineDefaultParametersFunctionType?
    let describeEventCategoriesOverride: DescribeEventCategoriesFunctionType?
    let describeEventSubscriptionsOverride: DescribeEventSubscriptionsFunctionType?
    let describeEventsOverride: DescribeEventsFunctionType?
    let describeExportTasksOverride: DescribeExportTasksFunctionType?
    let describeGlobalClustersOverride: DescribeGlobalClustersFunctionType?
    let describeOptionGroupOptionsOverride: DescribeOptionGroupOptionsFunctionType?
    let describeOptionGroupsOverride: DescribeOptionGroupsFunctionType?
    let describeOrderableDBInstanceOptionsOverride: DescribeOrderableDBInstanceOptionsFunctionType?
    let describePendingMaintenanceActionsOverride: DescribePendingMaintenanceActionsFunctionType?
    let describeReservedDBInstancesOverride: DescribeReservedDBInstancesFunctionType?
    let describeReservedDBInstancesOfferingsOverride: DescribeReservedDBInstancesOfferingsFunctionType?
    let describeSourceRegionsOverride: DescribeSourceRegionsFunctionType?
    let describeValidDBInstanceModificationsOverride: DescribeValidDBInstanceModificationsFunctionType?
    let downloadDBLogFilePortionOverride: DownloadDBLogFilePortionFunctionType?
    let failoverDBClusterOverride: FailoverDBClusterFunctionType?
    let failoverGlobalClusterOverride: FailoverGlobalClusterFunctionType?
    let listTagsForResourceOverride: ListTagsForResourceFunctionType?
    let modifyActivityStreamOverride: ModifyActivityStreamFunctionType?
    let modifyCertificatesOverride: ModifyCertificatesFunctionType?
    let modifyCurrentDBClusterCapacityOverride: ModifyCurrentDBClusterCapacityFunctionType?
    let modifyCustomDBEngineVersionOverride: ModifyCustomDBEngineVersionFunctionType?
    let modifyDBClusterOverride: ModifyDBClusterFunctionType?
    let modifyDBClusterEndpointOverride: ModifyDBClusterEndpointFunctionType?
    let modifyDBClusterParameterGroupOverride: ModifyDBClusterParameterGroupFunctionType?
    let modifyDBClusterSnapshotAttributeOverride: ModifyDBClusterSnapshotAttributeFunctionType?
    let modifyDBInstanceOverride: ModifyDBInstanceFunctionType?
    let modifyDBParameterGroupOverride: ModifyDBParameterGroupFunctionType?
    let modifyDBProxyOverride: ModifyDBProxyFunctionType?
    let modifyDBProxyEndpointOverride: ModifyDBProxyEndpointFunctionType?
    let modifyDBProxyTargetGroupOverride: ModifyDBProxyTargetGroupFunctionType?
    let modifyDBSnapshotOverride: ModifyDBSnapshotFunctionType?
    let modifyDBSnapshotAttributeOverride: ModifyDBSnapshotAttributeFunctionType?
    let modifyDBSubnetGroupOverride: ModifyDBSubnetGroupFunctionType?
    let modifyEventSubscriptionOverride: ModifyEventSubscriptionFunctionType?
    let modifyGlobalClusterOverride: ModifyGlobalClusterFunctionType?
    let modifyOptionGroupOverride: ModifyOptionGroupFunctionType?
    let promoteReadReplicaOverride: PromoteReadReplicaFunctionType?
    let promoteReadReplicaDBClusterOverride: PromoteReadReplicaDBClusterFunctionType?
    let purchaseReservedDBInstancesOfferingOverride: PurchaseReservedDBInstancesOfferingFunctionType?
    let rebootDBClusterOverride: RebootDBClusterFunctionType?
    let rebootDBInstanceOverride: RebootDBInstanceFunctionType?
    let registerDBProxyTargetsOverride: RegisterDBProxyTargetsFunctionType?
    let removeFromGlobalClusterOverride: RemoveFromGlobalClusterFunctionType?
    let removeRoleFromDBClusterOverride: RemoveRoleFromDBClusterFunctionType?
    let removeRoleFromDBInstanceOverride: RemoveRoleFromDBInstanceFunctionType?
    let removeSourceIdentifierFromSubscriptionOverride: RemoveSourceIdentifierFromSubscriptionFunctionType?
    let removeTagsFromResourceOverride: RemoveTagsFromResourceFunctionType?
    let resetDBClusterParameterGroupOverride: ResetDBClusterParameterGroupFunctionType?
    let resetDBParameterGroupOverride: ResetDBParameterGroupFunctionType?
    let restoreDBClusterFromS3Override: RestoreDBClusterFromS3FunctionType?
    let restoreDBClusterFromSnapshotOverride: RestoreDBClusterFromSnapshotFunctionType?
    let restoreDBClusterToPointInTimeOverride: RestoreDBClusterToPointInTimeFunctionType?
    let restoreDBInstanceFromDBSnapshotOverride: RestoreDBInstanceFromDBSnapshotFunctionType?
    let restoreDBInstanceFromS3Override: RestoreDBInstanceFromS3FunctionType?
    let restoreDBInstanceToPointInTimeOverride: RestoreDBInstanceToPointInTimeFunctionType?
    let revokeDBSecurityGroupIngressOverride: RevokeDBSecurityGroupIngressFunctionType?
    let startActivityStreamOverride: StartActivityStreamFunctionType?
    let startDBClusterOverride: StartDBClusterFunctionType?
    let startDBInstanceOverride: StartDBInstanceFunctionType?
    let startDBInstanceAutomatedBackupsReplicationOverride: StartDBInstanceAutomatedBackupsReplicationFunctionType?
    let startExportTaskOverride: StartExportTaskFunctionType?
    let stopActivityStreamOverride: StopActivityStreamFunctionType?
    let stopDBClusterOverride: StopDBClusterFunctionType?
    let stopDBInstanceOverride: StopDBInstanceFunctionType?
    let stopDBInstanceAutomatedBackupsReplicationOverride: StopDBInstanceAutomatedBackupsReplicationFunctionType?
    let switchoverReadReplicaOverride: SwitchoverReadReplicaFunctionType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(error: RDSError,
            addRoleToDBCluster: AddRoleToDBClusterFunctionType? = nil,
            addRoleToDBInstance: AddRoleToDBInstanceFunctionType? = nil,
            addSourceIdentifierToSubscription: AddSourceIdentifierToSubscriptionFunctionType? = nil,
            addTagsToResource: AddTagsToResourceFunctionType? = nil,
            applyPendingMaintenanceAction: ApplyPendingMaintenanceActionFunctionType? = nil,
            authorizeDBSecurityGroupIngress: AuthorizeDBSecurityGroupIngressFunctionType? = nil,
            backtrackDBCluster: BacktrackDBClusterFunctionType? = nil,
            cancelExportTask: CancelExportTaskFunctionType? = nil,
            copyDBClusterParameterGroup: CopyDBClusterParameterGroupFunctionType? = nil,
            copyDBClusterSnapshot: CopyDBClusterSnapshotFunctionType? = nil,
            copyDBParameterGroup: CopyDBParameterGroupFunctionType? = nil,
            copyDBSnapshot: CopyDBSnapshotFunctionType? = nil,
            copyOptionGroup: CopyOptionGroupFunctionType? = nil,
            createCustomDBEngineVersion: CreateCustomDBEngineVersionFunctionType? = nil,
            createDBCluster: CreateDBClusterFunctionType? = nil,
            createDBClusterEndpoint: CreateDBClusterEndpointFunctionType? = nil,
            createDBClusterParameterGroup: CreateDBClusterParameterGroupFunctionType? = nil,
            createDBClusterSnapshot: CreateDBClusterSnapshotFunctionType? = nil,
            createDBInstance: CreateDBInstanceFunctionType? = nil,
            createDBInstanceReadReplica: CreateDBInstanceReadReplicaFunctionType? = nil,
            createDBParameterGroup: CreateDBParameterGroupFunctionType? = nil,
            createDBProxy: CreateDBProxyFunctionType? = nil,
            createDBProxyEndpoint: CreateDBProxyEndpointFunctionType? = nil,
            createDBSecurityGroup: CreateDBSecurityGroupFunctionType? = nil,
            createDBSnapshot: CreateDBSnapshotFunctionType? = nil,
            createDBSubnetGroup: CreateDBSubnetGroupFunctionType? = nil,
            createEventSubscription: CreateEventSubscriptionFunctionType? = nil,
            createGlobalCluster: CreateGlobalClusterFunctionType? = nil,
            createOptionGroup: CreateOptionGroupFunctionType? = nil,
            deleteCustomDBEngineVersion: DeleteCustomDBEngineVersionFunctionType? = nil,
            deleteDBCluster: DeleteDBClusterFunctionType? = nil,
            deleteDBClusterEndpoint: DeleteDBClusterEndpointFunctionType? = nil,
            deleteDBClusterParameterGroup: DeleteDBClusterParameterGroupFunctionType? = nil,
            deleteDBClusterSnapshot: DeleteDBClusterSnapshotFunctionType? = nil,
            deleteDBInstance: DeleteDBInstanceFunctionType? = nil,
            deleteDBInstanceAutomatedBackup: DeleteDBInstanceAutomatedBackupFunctionType? = nil,
            deleteDBParameterGroup: DeleteDBParameterGroupFunctionType? = nil,
            deleteDBProxy: DeleteDBProxyFunctionType? = nil,
            deleteDBProxyEndpoint: DeleteDBProxyEndpointFunctionType? = nil,
            deleteDBSecurityGroup: DeleteDBSecurityGroupFunctionType? = nil,
            deleteDBSnapshot: DeleteDBSnapshotFunctionType? = nil,
            deleteDBSubnetGroup: DeleteDBSubnetGroupFunctionType? = nil,
            deleteEventSubscription: DeleteEventSubscriptionFunctionType? = nil,
            deleteGlobalCluster: DeleteGlobalClusterFunctionType? = nil,
            deleteOptionGroup: DeleteOptionGroupFunctionType? = nil,
            deregisterDBProxyTargets: DeregisterDBProxyTargetsFunctionType? = nil,
            describeAccountAttributes: DescribeAccountAttributesFunctionType? = nil,
            describeCertificates: DescribeCertificatesFunctionType? = nil,
            describeDBClusterBacktracks: DescribeDBClusterBacktracksFunctionType? = nil,
            describeDBClusterEndpoints: DescribeDBClusterEndpointsFunctionType? = nil,
            describeDBClusterParameterGroups: DescribeDBClusterParameterGroupsFunctionType? = nil,
            describeDBClusterParameters: DescribeDBClusterParametersFunctionType? = nil,
            describeDBClusterSnapshotAttributes: DescribeDBClusterSnapshotAttributesFunctionType? = nil,
            describeDBClusterSnapshots: DescribeDBClusterSnapshotsFunctionType? = nil,
            describeDBClusters: DescribeDBClustersFunctionType? = nil,
            describeDBEngineVersions: DescribeDBEngineVersionsFunctionType? = nil,
            describeDBInstanceAutomatedBackups: DescribeDBInstanceAutomatedBackupsFunctionType? = nil,
            describeDBInstances: DescribeDBInstancesFunctionType? = nil,
            describeDBLogFiles: DescribeDBLogFilesFunctionType? = nil,
            describeDBParameterGroups: DescribeDBParameterGroupsFunctionType? = nil,
            describeDBParameters: DescribeDBParametersFunctionType? = nil,
            describeDBProxies: DescribeDBProxiesFunctionType? = nil,
            describeDBProxyEndpoints: DescribeDBProxyEndpointsFunctionType? = nil,
            describeDBProxyTargetGroups: DescribeDBProxyTargetGroupsFunctionType? = nil,
            describeDBProxyTargets: DescribeDBProxyTargetsFunctionType? = nil,
            describeDBSecurityGroups: DescribeDBSecurityGroupsFunctionType? = nil,
            describeDBSnapshotAttributes: DescribeDBSnapshotAttributesFunctionType? = nil,
            describeDBSnapshots: DescribeDBSnapshotsFunctionType? = nil,
            describeDBSubnetGroups: DescribeDBSubnetGroupsFunctionType? = nil,
            describeEngineDefaultClusterParameters: DescribeEngineDefaultClusterParametersFunctionType? = nil,
            describeEngineDefaultParameters: DescribeEngineDefaultParametersFunctionType? = nil,
            describeEventCategories: DescribeEventCategoriesFunctionType? = nil,
            describeEventSubscriptions: DescribeEventSubscriptionsFunctionType? = nil,
            describeEvents: DescribeEventsFunctionType? = nil,
            describeExportTasks: DescribeExportTasksFunctionType? = nil,
            describeGlobalClusters: DescribeGlobalClustersFunctionType? = nil,
            describeOptionGroupOptions: DescribeOptionGroupOptionsFunctionType? = nil,
            describeOptionGroups: DescribeOptionGroupsFunctionType? = nil,
            describeOrderableDBInstanceOptions: DescribeOrderableDBInstanceOptionsFunctionType? = nil,
            describePendingMaintenanceActions: DescribePendingMaintenanceActionsFunctionType? = nil,
            describeReservedDBInstances: DescribeReservedDBInstancesFunctionType? = nil,
            describeReservedDBInstancesOfferings: DescribeReservedDBInstancesOfferingsFunctionType? = nil,
            describeSourceRegions: DescribeSourceRegionsFunctionType? = nil,
            describeValidDBInstanceModifications: DescribeValidDBInstanceModificationsFunctionType? = nil,
            downloadDBLogFilePortion: DownloadDBLogFilePortionFunctionType? = nil,
            failoverDBCluster: FailoverDBClusterFunctionType? = nil,
            failoverGlobalCluster: FailoverGlobalClusterFunctionType? = nil,
            listTagsForResource: ListTagsForResourceFunctionType? = nil,
            modifyActivityStream: ModifyActivityStreamFunctionType? = nil,
            modifyCertificates: ModifyCertificatesFunctionType? = nil,
            modifyCurrentDBClusterCapacity: ModifyCurrentDBClusterCapacityFunctionType? = nil,
            modifyCustomDBEngineVersion: ModifyCustomDBEngineVersionFunctionType? = nil,
            modifyDBCluster: ModifyDBClusterFunctionType? = nil,
            modifyDBClusterEndpoint: ModifyDBClusterEndpointFunctionType? = nil,
            modifyDBClusterParameterGroup: ModifyDBClusterParameterGroupFunctionType? = nil,
            modifyDBClusterSnapshotAttribute: ModifyDBClusterSnapshotAttributeFunctionType? = nil,
            modifyDBInstance: ModifyDBInstanceFunctionType? = nil,
            modifyDBParameterGroup: ModifyDBParameterGroupFunctionType? = nil,
            modifyDBProxy: ModifyDBProxyFunctionType? = nil,
            modifyDBProxyEndpoint: ModifyDBProxyEndpointFunctionType? = nil,
            modifyDBProxyTargetGroup: ModifyDBProxyTargetGroupFunctionType? = nil,
            modifyDBSnapshot: ModifyDBSnapshotFunctionType? = nil,
            modifyDBSnapshotAttribute: ModifyDBSnapshotAttributeFunctionType? = nil,
            modifyDBSubnetGroup: ModifyDBSubnetGroupFunctionType? = nil,
            modifyEventSubscription: ModifyEventSubscriptionFunctionType? = nil,
            modifyGlobalCluster: ModifyGlobalClusterFunctionType? = nil,
            modifyOptionGroup: ModifyOptionGroupFunctionType? = nil,
            promoteReadReplica: PromoteReadReplicaFunctionType? = nil,
            promoteReadReplicaDBCluster: PromoteReadReplicaDBClusterFunctionType? = nil,
            purchaseReservedDBInstancesOffering: PurchaseReservedDBInstancesOfferingFunctionType? = nil,
            rebootDBCluster: RebootDBClusterFunctionType? = nil,
            rebootDBInstance: RebootDBInstanceFunctionType? = nil,
            registerDBProxyTargets: RegisterDBProxyTargetsFunctionType? = nil,
            removeFromGlobalCluster: RemoveFromGlobalClusterFunctionType? = nil,
            removeRoleFromDBCluster: RemoveRoleFromDBClusterFunctionType? = nil,
            removeRoleFromDBInstance: RemoveRoleFromDBInstanceFunctionType? = nil,
            removeSourceIdentifierFromSubscription: RemoveSourceIdentifierFromSubscriptionFunctionType? = nil,
            removeTagsFromResource: RemoveTagsFromResourceFunctionType? = nil,
            resetDBClusterParameterGroup: ResetDBClusterParameterGroupFunctionType? = nil,
            resetDBParameterGroup: ResetDBParameterGroupFunctionType? = nil,
            restoreDBClusterFromS3: RestoreDBClusterFromS3FunctionType? = nil,
            restoreDBClusterFromSnapshot: RestoreDBClusterFromSnapshotFunctionType? = nil,
            restoreDBClusterToPointInTime: RestoreDBClusterToPointInTimeFunctionType? = nil,
            restoreDBInstanceFromDBSnapshot: RestoreDBInstanceFromDBSnapshotFunctionType? = nil,
            restoreDBInstanceFromS3: RestoreDBInstanceFromS3FunctionType? = nil,
            restoreDBInstanceToPointInTime: RestoreDBInstanceToPointInTimeFunctionType? = nil,
            revokeDBSecurityGroupIngress: RevokeDBSecurityGroupIngressFunctionType? = nil,
            startActivityStream: StartActivityStreamFunctionType? = nil,
            startDBCluster: StartDBClusterFunctionType? = nil,
            startDBInstance: StartDBInstanceFunctionType? = nil,
            startDBInstanceAutomatedBackupsReplication: StartDBInstanceAutomatedBackupsReplicationFunctionType? = nil,
            startExportTask: StartExportTaskFunctionType? = nil,
            stopActivityStream: StopActivityStreamFunctionType? = nil,
            stopDBCluster: StopDBClusterFunctionType? = nil,
            stopDBInstance: StopDBInstanceFunctionType? = nil,
            stopDBInstanceAutomatedBackupsReplication: StopDBInstanceAutomatedBackupsReplicationFunctionType? = nil,
            switchoverReadReplica: SwitchoverReadReplicaFunctionType? = nil) {
        self.error = error
        self.addRoleToDBClusterOverride = addRoleToDBCluster
        self.addRoleToDBInstanceOverride = addRoleToDBInstance
        self.addSourceIdentifierToSubscriptionOverride = addSourceIdentifierToSubscription
        self.addTagsToResourceOverride = addTagsToResource
        self.applyPendingMaintenanceActionOverride = applyPendingMaintenanceAction
        self.authorizeDBSecurityGroupIngressOverride = authorizeDBSecurityGroupIngress
        self.backtrackDBClusterOverride = backtrackDBCluster
        self.cancelExportTaskOverride = cancelExportTask
        self.copyDBClusterParameterGroupOverride = copyDBClusterParameterGroup
        self.copyDBClusterSnapshotOverride = copyDBClusterSnapshot
        self.copyDBParameterGroupOverride = copyDBParameterGroup
        self.copyDBSnapshotOverride = copyDBSnapshot
        self.copyOptionGroupOverride = copyOptionGroup
        self.createCustomDBEngineVersionOverride = createCustomDBEngineVersion
        self.createDBClusterOverride = createDBCluster
        self.createDBClusterEndpointOverride = createDBClusterEndpoint
        self.createDBClusterParameterGroupOverride = createDBClusterParameterGroup
        self.createDBClusterSnapshotOverride = createDBClusterSnapshot
        self.createDBInstanceOverride = createDBInstance
        self.createDBInstanceReadReplicaOverride = createDBInstanceReadReplica
        self.createDBParameterGroupOverride = createDBParameterGroup
        self.createDBProxyOverride = createDBProxy
        self.createDBProxyEndpointOverride = createDBProxyEndpoint
        self.createDBSecurityGroupOverride = createDBSecurityGroup
        self.createDBSnapshotOverride = createDBSnapshot
        self.createDBSubnetGroupOverride = createDBSubnetGroup
        self.createEventSubscriptionOverride = createEventSubscription
        self.createGlobalClusterOverride = createGlobalCluster
        self.createOptionGroupOverride = createOptionGroup
        self.deleteCustomDBEngineVersionOverride = deleteCustomDBEngineVersion
        self.deleteDBClusterOverride = deleteDBCluster
        self.deleteDBClusterEndpointOverride = deleteDBClusterEndpoint
        self.deleteDBClusterParameterGroupOverride = deleteDBClusterParameterGroup
        self.deleteDBClusterSnapshotOverride = deleteDBClusterSnapshot
        self.deleteDBInstanceOverride = deleteDBInstance
        self.deleteDBInstanceAutomatedBackupOverride = deleteDBInstanceAutomatedBackup
        self.deleteDBParameterGroupOverride = deleteDBParameterGroup
        self.deleteDBProxyOverride = deleteDBProxy
        self.deleteDBProxyEndpointOverride = deleteDBProxyEndpoint
        self.deleteDBSecurityGroupOverride = deleteDBSecurityGroup
        self.deleteDBSnapshotOverride = deleteDBSnapshot
        self.deleteDBSubnetGroupOverride = deleteDBSubnetGroup
        self.deleteEventSubscriptionOverride = deleteEventSubscription
        self.deleteGlobalClusterOverride = deleteGlobalCluster
        self.deleteOptionGroupOverride = deleteOptionGroup
        self.deregisterDBProxyTargetsOverride = deregisterDBProxyTargets
        self.describeAccountAttributesOverride = describeAccountAttributes
        self.describeCertificatesOverride = describeCertificates
        self.describeDBClusterBacktracksOverride = describeDBClusterBacktracks
        self.describeDBClusterEndpointsOverride = describeDBClusterEndpoints
        self.describeDBClusterParameterGroupsOverride = describeDBClusterParameterGroups
        self.describeDBClusterParametersOverride = describeDBClusterParameters
        self.describeDBClusterSnapshotAttributesOverride = describeDBClusterSnapshotAttributes
        self.describeDBClusterSnapshotsOverride = describeDBClusterSnapshots
        self.describeDBClustersOverride = describeDBClusters
        self.describeDBEngineVersionsOverride = describeDBEngineVersions
        self.describeDBInstanceAutomatedBackupsOverride = describeDBInstanceAutomatedBackups
        self.describeDBInstancesOverride = describeDBInstances
        self.describeDBLogFilesOverride = describeDBLogFiles
        self.describeDBParameterGroupsOverride = describeDBParameterGroups
        self.describeDBParametersOverride = describeDBParameters
        self.describeDBProxiesOverride = describeDBProxies
        self.describeDBProxyEndpointsOverride = describeDBProxyEndpoints
        self.describeDBProxyTargetGroupsOverride = describeDBProxyTargetGroups
        self.describeDBProxyTargetsOverride = describeDBProxyTargets
        self.describeDBSecurityGroupsOverride = describeDBSecurityGroups
        self.describeDBSnapshotAttributesOverride = describeDBSnapshotAttributes
        self.describeDBSnapshotsOverride = describeDBSnapshots
        self.describeDBSubnetGroupsOverride = describeDBSubnetGroups
        self.describeEngineDefaultClusterParametersOverride = describeEngineDefaultClusterParameters
        self.describeEngineDefaultParametersOverride = describeEngineDefaultParameters
        self.describeEventCategoriesOverride = describeEventCategories
        self.describeEventSubscriptionsOverride = describeEventSubscriptions
        self.describeEventsOverride = describeEvents
        self.describeExportTasksOverride = describeExportTasks
        self.describeGlobalClustersOverride = describeGlobalClusters
        self.describeOptionGroupOptionsOverride = describeOptionGroupOptions
        self.describeOptionGroupsOverride = describeOptionGroups
        self.describeOrderableDBInstanceOptionsOverride = describeOrderableDBInstanceOptions
        self.describePendingMaintenanceActionsOverride = describePendingMaintenanceActions
        self.describeReservedDBInstancesOverride = describeReservedDBInstances
        self.describeReservedDBInstancesOfferingsOverride = describeReservedDBInstancesOfferings
        self.describeSourceRegionsOverride = describeSourceRegions
        self.describeValidDBInstanceModificationsOverride = describeValidDBInstanceModifications
        self.downloadDBLogFilePortionOverride = downloadDBLogFilePortion
        self.failoverDBClusterOverride = failoverDBCluster
        self.failoverGlobalClusterOverride = failoverGlobalCluster
        self.listTagsForResourceOverride = listTagsForResource
        self.modifyActivityStreamOverride = modifyActivityStream
        self.modifyCertificatesOverride = modifyCertificates
        self.modifyCurrentDBClusterCapacityOverride = modifyCurrentDBClusterCapacity
        self.modifyCustomDBEngineVersionOverride = modifyCustomDBEngineVersion
        self.modifyDBClusterOverride = modifyDBCluster
        self.modifyDBClusterEndpointOverride = modifyDBClusterEndpoint
        self.modifyDBClusterParameterGroupOverride = modifyDBClusterParameterGroup
        self.modifyDBClusterSnapshotAttributeOverride = modifyDBClusterSnapshotAttribute
        self.modifyDBInstanceOverride = modifyDBInstance
        self.modifyDBParameterGroupOverride = modifyDBParameterGroup
        self.modifyDBProxyOverride = modifyDBProxy
        self.modifyDBProxyEndpointOverride = modifyDBProxyEndpoint
        self.modifyDBProxyTargetGroupOverride = modifyDBProxyTargetGroup
        self.modifyDBSnapshotOverride = modifyDBSnapshot
        self.modifyDBSnapshotAttributeOverride = modifyDBSnapshotAttribute
        self.modifyDBSubnetGroupOverride = modifyDBSubnetGroup
        self.modifyEventSubscriptionOverride = modifyEventSubscription
        self.modifyGlobalClusterOverride = modifyGlobalCluster
        self.modifyOptionGroupOverride = modifyOptionGroup
        self.promoteReadReplicaOverride = promoteReadReplica
        self.promoteReadReplicaDBClusterOverride = promoteReadReplicaDBCluster
        self.purchaseReservedDBInstancesOfferingOverride = purchaseReservedDBInstancesOffering
        self.rebootDBClusterOverride = rebootDBCluster
        self.rebootDBInstanceOverride = rebootDBInstance
        self.registerDBProxyTargetsOverride = registerDBProxyTargets
        self.removeFromGlobalClusterOverride = removeFromGlobalCluster
        self.removeRoleFromDBClusterOverride = removeRoleFromDBCluster
        self.removeRoleFromDBInstanceOverride = removeRoleFromDBInstance
        self.removeSourceIdentifierFromSubscriptionOverride = removeSourceIdentifierFromSubscription
        self.removeTagsFromResourceOverride = removeTagsFromResource
        self.resetDBClusterParameterGroupOverride = resetDBClusterParameterGroup
        self.resetDBParameterGroupOverride = resetDBParameterGroup
        self.restoreDBClusterFromS3Override = restoreDBClusterFromS3
        self.restoreDBClusterFromSnapshotOverride = restoreDBClusterFromSnapshot
        self.restoreDBClusterToPointInTimeOverride = restoreDBClusterToPointInTime
        self.restoreDBInstanceFromDBSnapshotOverride = restoreDBInstanceFromDBSnapshot
        self.restoreDBInstanceFromS3Override = restoreDBInstanceFromS3
        self.restoreDBInstanceToPointInTimeOverride = restoreDBInstanceToPointInTime
        self.revokeDBSecurityGroupIngressOverride = revokeDBSecurityGroupIngress
        self.startActivityStreamOverride = startActivityStream
        self.startDBClusterOverride = startDBCluster
        self.startDBInstanceOverride = startDBInstance
        self.startDBInstanceAutomatedBackupsReplicationOverride = startDBInstanceAutomatedBackupsReplication
        self.startExportTaskOverride = startExportTask
        self.stopActivityStreamOverride = stopActivityStream
        self.stopDBClusterOverride = stopDBCluster
        self.stopDBInstanceOverride = stopDBInstance
        self.stopDBInstanceAutomatedBackupsReplicationOverride = stopDBInstanceAutomatedBackupsReplication
        self.switchoverReadReplicaOverride = switchoverReadReplica
    }

    /**
     Invokes the AddRoleToDBCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AddRoleToDBClusterMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBClusterRoleAlreadyExists, dBClusterRoleQuotaExceeded, invalidDBClusterState.
     */
    public func addRoleToDBCluster(
            input: RDSModel.AddRoleToDBClusterMessage) async throws {
        if let addRoleToDBClusterOverride = addRoleToDBClusterOverride {
            return try await addRoleToDBClusterOverride(input)
        }

        throw error
    }

    /**
     Invokes the AddRoleToDBInstance operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AddRoleToDBInstanceMessage object being passed to this operation.
     - Throws: dBInstanceNotFound, dBInstanceRoleAlreadyExists, dBInstanceRoleQuotaExceeded, invalidDBInstanceState.
     */
    public func addRoleToDBInstance(
            input: RDSModel.AddRoleToDBInstanceMessage) async throws {
        if let addRoleToDBInstanceOverride = addRoleToDBInstanceOverride {
            return try await addRoleToDBInstanceOverride(input)
        }

        throw error
    }

    /**
     Invokes the AddSourceIdentifierToSubscription operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AddSourceIdentifierToSubscriptionMessage object being passed to this operation.
     - Returns: The AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: sourceNotFound, subscriptionNotFound.
     */
    public func addSourceIdentifierToSubscription(
            input: RDSModel.AddSourceIdentifierToSubscriptionMessage) async throws -> RDSModel.AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription {
        if let addSourceIdentifierToSubscriptionOverride = addSourceIdentifierToSubscriptionOverride {
            return try await addSourceIdentifierToSubscriptionOverride(input)
        }

        throw error
    }

    /**
     Invokes the AddTagsToResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AddTagsToResourceMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetGroupNotFound, dBSnapshotNotFound.
     */
    public func addTagsToResource(
            input: RDSModel.AddTagsToResourceMessage) async throws {
        if let addTagsToResourceOverride = addTagsToResourceOverride {
            return try await addTagsToResourceOverride(input)
        }

        throw error
    }

    /**
     Invokes the ApplyPendingMaintenanceAction operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ApplyPendingMaintenanceActionMessage object being passed to this operation.
     - Returns: The ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidDBClusterState, invalidDBInstanceState, resourceNotFound.
     */
    public func applyPendingMaintenanceAction(
            input: RDSModel.ApplyPendingMaintenanceActionMessage) async throws -> RDSModel.ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction {
        if let applyPendingMaintenanceActionOverride = applyPendingMaintenanceActionOverride {
            return try await applyPendingMaintenanceActionOverride(input)
        }

        throw error
    }

    /**
     Invokes the AuthorizeDBSecurityGroupIngress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AuthorizeDBSecurityGroupIngressMessage object being passed to this operation.
     - Returns: The AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationAlreadyExists, authorizationQuotaExceeded, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    public func authorizeDBSecurityGroupIngress(
            input: RDSModel.AuthorizeDBSecurityGroupIngressMessage) async throws -> RDSModel.AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress {
        if let authorizeDBSecurityGroupIngressOverride = authorizeDBSecurityGroupIngressOverride {
            return try await authorizeDBSecurityGroupIngressOverride(input)
        }

        throw error
    }

    /**
     Invokes the BacktrackDBCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated BacktrackDBClusterMessage object being passed to this operation.
     - Returns: The DBClusterBacktrackForBacktrackDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState.
     */
    public func backtrackDBCluster(
            input: RDSModel.BacktrackDBClusterMessage) async throws -> RDSModel.DBClusterBacktrackForBacktrackDBCluster {
        if let backtrackDBClusterOverride = backtrackDBClusterOverride {
            return try await backtrackDBClusterOverride(input)
        }

        throw error
    }

    /**
     Invokes the CancelExportTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CancelExportTaskMessage object being passed to this operation.
     - Returns: The ExportTaskForCancelExportTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: exportTaskNotFound, invalidExportTaskState.
     */
    public func cancelExportTask(
            input: RDSModel.CancelExportTaskMessage) async throws -> RDSModel.ExportTaskForCancelExportTask {
        if let cancelExportTaskOverride = cancelExportTaskOverride {
            return try await cancelExportTaskOverride(input)
        }

        throw error
    }

    /**
     Invokes the CopyDBClusterParameterGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CopyDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    public func copyDBClusterParameterGroup(
            input: RDSModel.CopyDBClusterParameterGroupMessage) async throws -> RDSModel.CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup {
        if let copyDBClusterParameterGroupOverride = copyDBClusterParameterGroupOverride {
            return try await copyDBClusterParameterGroupOverride(input)
        }

        throw error
    }

    /**
     Invokes the CopyDBClusterSnapshot operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CopyDBClusterSnapshotMessage object being passed to this operation.
     - Returns: The CopyDBClusterSnapshotResultForCopyDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotAlreadyExists, dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, invalidDBClusterState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    public func copyDBClusterSnapshot(
            input: RDSModel.CopyDBClusterSnapshotMessage) async throws -> RDSModel.CopyDBClusterSnapshotResultForCopyDBClusterSnapshot {
        if let copyDBClusterSnapshotOverride = copyDBClusterSnapshotOverride {
            return try await copyDBClusterSnapshotOverride(input)
        }

        throw error
    }

    /**
     Invokes the CopyDBParameterGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CopyDBParameterGroupMessage object being passed to this operation.
     - Returns: The CopyDBParameterGroupResultForCopyDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    public func copyDBParameterGroup(
            input: RDSModel.CopyDBParameterGroupMessage) async throws -> RDSModel.CopyDBParameterGroupResultForCopyDBParameterGroup {
        if let copyDBParameterGroupOverride = copyDBParameterGroupOverride {
            return try await copyDBParameterGroupOverride(input)
        }

        throw error
    }

    /**
     Invokes the CopyDBSnapshot operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CopyDBSnapshotMessage object being passed to this operation.
     - Returns: The CopyDBSnapshotResultForCopyDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: customAvailabilityZoneNotFound, dBSnapshotAlreadyExists, dBSnapshotNotFound, invalidDBSnapshotState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    public func copyDBSnapshot(
            input: RDSModel.CopyDBSnapshotMessage) async throws -> RDSModel.CopyDBSnapshotResultForCopyDBSnapshot {
        if let copyDBSnapshotOverride = copyDBSnapshotOverride {
            return try await copyDBSnapshotOverride(input)
        }

        throw error
    }

    /**
     Invokes the CopyOptionGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CopyOptionGroupMessage object being passed to this operation.
     - Returns: The CopyOptionGroupResultForCopyOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: optionGroupAlreadyExists, optionGroupNotFound, optionGroupQuotaExceeded.
     */
    public func copyOptionGroup(
            input: RDSModel.CopyOptionGroupMessage) async throws -> RDSModel.CopyOptionGroupResultForCopyOptionGroup {
        if let copyOptionGroupOverride = copyOptionGroupOverride {
            return try await copyOptionGroupOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateCustomDBEngineVersion operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateCustomDBEngineVersionMessage object being passed to this operation.
     - Returns: The DBEngineVersionForCreateCustomDBEngineVersion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: customDBEngineVersionAlreadyExists, customDBEngineVersionQuotaExceeded, kMSKeyNotAccessible.
     */
    public func createCustomDBEngineVersion(
            input: RDSModel.CreateCustomDBEngineVersionMessage) async throws -> RDSModel.DBEngineVersionForCreateCustomDBEngineVersion {
        if let createCustomDBEngineVersionOverride = createCustomDBEngineVersionOverride {
            return try await createCustomDBEngineVersionOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateDBCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateDBClusterMessage object being passed to this operation.
     - Returns: The CreateDBClusterResultForCreateDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, globalClusterNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBInstanceState, invalidDBSubnetGroupState, invalidGlobalClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    public func createDBCluster(
            input: RDSModel.CreateDBClusterMessage) async throws -> RDSModel.CreateDBClusterResultForCreateDBCluster {
        if let createDBClusterOverride = createDBClusterOverride {
            return try await createDBClusterOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateDBClusterEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateDBClusterEndpointMessage object being passed to this operation.
     - Returns: The DBClusterEndpointForCreateDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterEndpointAlreadyExists, dBClusterEndpointQuotaExceeded, dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func createDBClusterEndpoint(
            input: RDSModel.CreateDBClusterEndpointMessage) async throws -> RDSModel.DBClusterEndpointForCreateDBClusterEndpoint {
        if let createDBClusterEndpointOverride = createDBClusterEndpointOverride {
            return try await createDBClusterEndpointOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateDBClusterParameterGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    public func createDBClusterParameterGroup(
            input: RDSModel.CreateDBClusterParameterGroupMessage) async throws -> RDSModel.CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup {
        if let createDBClusterParameterGroupOverride = createDBClusterParameterGroupOverride {
            return try await createDBClusterParameterGroupOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateDBClusterSnapshot operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateDBClusterSnapshotMessage object being passed to this operation.
     - Returns: The CreateDBClusterSnapshotResultForCreateDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    public func createDBClusterSnapshot(
            input: RDSModel.CreateDBClusterSnapshotMessage) async throws -> RDSModel.CreateDBClusterSnapshotResultForCreateDBClusterSnapshot {
        if let createDBClusterSnapshotOverride = createDBClusterSnapshotOverride {
            return try await createDBClusterSnapshotOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateDBInstance operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateDBInstanceMessage object being passed to this operation.
     - Returns: The CreateDBInstanceResultForCreateDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBClusterNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, networkTypeNotSupported, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func createDBInstance(
            input: RDSModel.CreateDBInstanceMessage) async throws -> RDSModel.CreateDBInstanceResultForCreateDBInstance {
        if let createDBInstanceOverride = createDBInstanceOverride {
            return try await createDBInstanceOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateDBInstanceReadReplica operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateDBInstanceReadReplicaMessage object being passed to this operation.
     - Returns: The CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotAllowed, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSubnetGroup, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, networkTypeNotSupported, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func createDBInstanceReadReplica(
            input: RDSModel.CreateDBInstanceReadReplicaMessage) async throws -> RDSModel.CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica {
        if let createDBInstanceReadReplicaOverride = createDBInstanceReadReplicaOverride {
            return try await createDBInstanceReadReplicaOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateDBParameterGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateDBParameterGroupMessage object being passed to this operation.
     - Returns: The CreateDBParameterGroupResultForCreateDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    public func createDBParameterGroup(
            input: RDSModel.CreateDBParameterGroupMessage) async throws -> RDSModel.CreateDBParameterGroupResultForCreateDBParameterGroup {
        if let createDBParameterGroupOverride = createDBParameterGroupOverride {
            return try await createDBParameterGroupOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateDBProxy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateDBProxyRequest object being passed to this operation.
     - Returns: The CreateDBProxyResponseForCreateDBProxy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyAlreadyExists, dBProxyQuotaExceeded, invalidSubnet.
     */
    public func createDBProxy(
            input: RDSModel.CreateDBProxyRequest) async throws -> RDSModel.CreateDBProxyResponseForCreateDBProxy {
        if let createDBProxyOverride = createDBProxyOverride {
            return try await createDBProxyOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateDBProxyEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateDBProxyEndpointRequest object being passed to this operation.
     - Returns: The CreateDBProxyEndpointResponseForCreateDBProxyEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyEndpointAlreadyExists, dBProxyEndpointQuotaExceeded, dBProxyNotFound, invalidDBProxyState, invalidSubnet.
     */
    public func createDBProxyEndpoint(
            input: RDSModel.CreateDBProxyEndpointRequest) async throws -> RDSModel.CreateDBProxyEndpointResponseForCreateDBProxyEndpoint {
        if let createDBProxyEndpointOverride = createDBProxyEndpointOverride {
            return try await createDBProxyEndpointOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateDBSecurityGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateDBSecurityGroupMessage object being passed to this operation.
     - Returns: The CreateDBSecurityGroupResultForCreateDBSecurityGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSecurityGroupAlreadyExists, dBSecurityGroupNotSupported, dBSecurityGroupQuotaExceeded.
     */
    public func createDBSecurityGroup(
            input: RDSModel.CreateDBSecurityGroupMessage) async throws -> RDSModel.CreateDBSecurityGroupResultForCreateDBSecurityGroup {
        if let createDBSecurityGroupOverride = createDBSecurityGroupOverride {
            return try await createDBSecurityGroupOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateDBSnapshot operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateDBSnapshotMessage object being passed to this operation.
     - Returns: The CreateDBSnapshotResultForCreateDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    public func createDBSnapshot(
            input: RDSModel.CreateDBSnapshotMessage) async throws -> RDSModel.CreateDBSnapshotResultForCreateDBSnapshot {
        if let createDBSnapshotOverride = createDBSnapshotOverride {
            return try await createDBSnapshotOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateDBSubnetGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateDBSubnetGroupMessage object being passed to this operation.
     - Returns: The CreateDBSubnetGroupResultForCreateDBSubnetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSubnetGroupAlreadyExists, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupQuotaExceeded, dBSubnetQuotaExceeded, invalidSubnet.
     */
    public func createDBSubnetGroup(
            input: RDSModel.CreateDBSubnetGroupMessage) async throws -> RDSModel.CreateDBSubnetGroupResultForCreateDBSubnetGroup {
        if let createDBSubnetGroupOverride = createDBSubnetGroupOverride {
            return try await createDBSubnetGroupOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateEventSubscription operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateEventSubscriptionMessage object being passed to this operation.
     - Returns: The CreateEventSubscriptionResultForCreateEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, sourceNotFound, subscriptionAlreadyExist, subscriptionCategoryNotFound.
     */
    public func createEventSubscription(
            input: RDSModel.CreateEventSubscriptionMessage) async throws -> RDSModel.CreateEventSubscriptionResultForCreateEventSubscription {
        if let createEventSubscriptionOverride = createEventSubscriptionOverride {
            return try await createEventSubscriptionOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateGlobalCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateGlobalClusterMessage object being passed to this operation.
     - Returns: The CreateGlobalClusterResultForCreateGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, globalClusterAlreadyExists, globalClusterQuotaExceeded, invalidDBClusterState.
     */
    public func createGlobalCluster(
            input: RDSModel.CreateGlobalClusterMessage) async throws -> RDSModel.CreateGlobalClusterResultForCreateGlobalCluster {
        if let createGlobalClusterOverride = createGlobalClusterOverride {
            return try await createGlobalClusterOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateOptionGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateOptionGroupMessage object being passed to this operation.
     - Returns: The CreateOptionGroupResultForCreateOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: optionGroupAlreadyExists, optionGroupQuotaExceeded.
     */
    public func createOptionGroup(
            input: RDSModel.CreateOptionGroupMessage) async throws -> RDSModel.CreateOptionGroupResultForCreateOptionGroup {
        if let createOptionGroupOverride = createOptionGroupOverride {
            return try await createOptionGroupOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteCustomDBEngineVersion operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteCustomDBEngineVersionMessage object being passed to this operation.
     - Returns: The DBEngineVersionForDeleteCustomDBEngineVersion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: customDBEngineVersionNotFound, invalidCustomDBEngineVersionState.
     */
    public func deleteCustomDBEngineVersion(
            input: RDSModel.DeleteCustomDBEngineVersionMessage) async throws -> RDSModel.DBEngineVersionForDeleteCustomDBEngineVersion {
        if let deleteCustomDBEngineVersionOverride = deleteCustomDBEngineVersionOverride {
            return try await deleteCustomDBEngineVersionOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteDBCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteDBClusterMessage object being passed to this operation.
     - Returns: The DeleteDBClusterResultForDeleteDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    public func deleteDBCluster(
            input: RDSModel.DeleteDBClusterMessage) async throws -> RDSModel.DeleteDBClusterResultForDeleteDBCluster {
        if let deleteDBClusterOverride = deleteDBClusterOverride {
            return try await deleteDBClusterOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteDBClusterEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteDBClusterEndpointMessage object being passed to this operation.
     - Returns: The DBClusterEndpointForDeleteDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterEndpointNotFound, invalidDBClusterEndpointState, invalidDBClusterState.
     */
    public func deleteDBClusterEndpoint(
            input: RDSModel.DeleteDBClusterEndpointMessage) async throws -> RDSModel.DBClusterEndpointForDeleteDBClusterEndpoint {
        if let deleteDBClusterEndpointOverride = deleteDBClusterEndpointOverride {
            return try await deleteDBClusterEndpointOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteDBClusterParameterGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteDBClusterParameterGroupMessage object being passed to this operation.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func deleteDBClusterParameterGroup(
            input: RDSModel.DeleteDBClusterParameterGroupMessage) async throws {
        if let deleteDBClusterParameterGroupOverride = deleteDBClusterParameterGroupOverride {
            return try await deleteDBClusterParameterGroupOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteDBClusterSnapshot operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteDBClusterSnapshotMessage object being passed to this operation.
     - Returns: The DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState.
     */
    public func deleteDBClusterSnapshot(
            input: RDSModel.DeleteDBClusterSnapshotMessage) async throws -> RDSModel.DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot {
        if let deleteDBClusterSnapshotOverride = deleteDBClusterSnapshotOverride {
            return try await deleteDBClusterSnapshotOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteDBInstance operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteDBInstanceMessage object being passed to this operation.
     - Returns: The DeleteDBInstanceResultForDeleteDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupQuotaExceeded, dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    public func deleteDBInstance(
            input: RDSModel.DeleteDBInstanceMessage) async throws -> RDSModel.DeleteDBInstanceResultForDeleteDBInstance {
        if let deleteDBInstanceOverride = deleteDBInstanceOverride {
            return try await deleteDBInstanceOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteDBInstanceAutomatedBackup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteDBInstanceAutomatedBackupMessage object being passed to this operation.
     - Returns: The DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupNotFound, invalidDBInstanceAutomatedBackupState.
     */
    public func deleteDBInstanceAutomatedBackup(
            input: RDSModel.DeleteDBInstanceAutomatedBackupMessage) async throws -> RDSModel.DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup {
        if let deleteDBInstanceAutomatedBackupOverride = deleteDBInstanceAutomatedBackupOverride {
            return try await deleteDBInstanceAutomatedBackupOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteDBParameterGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteDBParameterGroupMessage object being passed to this operation.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func deleteDBParameterGroup(
            input: RDSModel.DeleteDBParameterGroupMessage) async throws {
        if let deleteDBParameterGroupOverride = deleteDBParameterGroupOverride {
            return try await deleteDBParameterGroupOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteDBProxy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteDBProxyRequest object being passed to this operation.
     - Returns: The DeleteDBProxyResponseForDeleteDBProxy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound, invalidDBProxyState.
     */
    public func deleteDBProxy(
            input: RDSModel.DeleteDBProxyRequest) async throws -> RDSModel.DeleteDBProxyResponseForDeleteDBProxy {
        if let deleteDBProxyOverride = deleteDBProxyOverride {
            return try await deleteDBProxyOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteDBProxyEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteDBProxyEndpointRequest object being passed to this operation.
     - Returns: The DeleteDBProxyEndpointResponseForDeleteDBProxyEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyEndpointNotFound, invalidDBProxyEndpointState.
     */
    public func deleteDBProxyEndpoint(
            input: RDSModel.DeleteDBProxyEndpointRequest) async throws -> RDSModel.DeleteDBProxyEndpointResponseForDeleteDBProxyEndpoint {
        if let deleteDBProxyEndpointOverride = deleteDBProxyEndpointOverride {
            return try await deleteDBProxyEndpointOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteDBSecurityGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteDBSecurityGroupMessage object being passed to this operation.
     - Throws: dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    public func deleteDBSecurityGroup(
            input: RDSModel.DeleteDBSecurityGroupMessage) async throws {
        if let deleteDBSecurityGroupOverride = deleteDBSecurityGroupOverride {
            return try await deleteDBSecurityGroupOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteDBSnapshot operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteDBSnapshotMessage object being passed to this operation.
     - Returns: The DeleteDBSnapshotResultForDeleteDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound, invalidDBSnapshotState.
     */
    public func deleteDBSnapshot(
            input: RDSModel.DeleteDBSnapshotMessage) async throws -> RDSModel.DeleteDBSnapshotResultForDeleteDBSnapshot {
        if let deleteDBSnapshotOverride = deleteDBSnapshotOverride {
            return try await deleteDBSnapshotOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteDBSubnetGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteDBSubnetGroupMessage object being passed to this operation.
     - Throws: dBSubnetGroupNotFound, invalidDBSubnetGroupState, invalidDBSubnetState.
     */
    public func deleteDBSubnetGroup(
            input: RDSModel.DeleteDBSubnetGroupMessage) async throws {
        if let deleteDBSubnetGroupOverride = deleteDBSubnetGroupOverride {
            return try await deleteDBSubnetGroupOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteEventSubscription operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteEventSubscriptionMessage object being passed to this operation.
     - Returns: The DeleteEventSubscriptionResultForDeleteEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidEventSubscriptionState, subscriptionNotFound.
     */
    public func deleteEventSubscription(
            input: RDSModel.DeleteEventSubscriptionMessage) async throws -> RDSModel.DeleteEventSubscriptionResultForDeleteEventSubscription {
        if let deleteEventSubscriptionOverride = deleteEventSubscriptionOverride {
            return try await deleteEventSubscriptionOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteGlobalCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteGlobalClusterMessage object being passed to this operation.
     - Returns: The DeleteGlobalClusterResultForDeleteGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalClusterNotFound, invalidGlobalClusterState.
     */
    public func deleteGlobalCluster(
            input: RDSModel.DeleteGlobalClusterMessage) async throws -> RDSModel.DeleteGlobalClusterResultForDeleteGlobalCluster {
        if let deleteGlobalClusterOverride = deleteGlobalClusterOverride {
            return try await deleteGlobalClusterOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteOptionGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteOptionGroupMessage object being passed to this operation.
     - Throws: invalidOptionGroupState, optionGroupNotFound.
     */
    public func deleteOptionGroup(
            input: RDSModel.DeleteOptionGroupMessage) async throws {
        if let deleteOptionGroupOverride = deleteOptionGroupOverride {
            return try await deleteOptionGroupOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeregisterDBProxyTargets operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeregisterDBProxyTargetsRequest object being passed to this operation.
     - Returns: The DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound, dBProxyTargetGroupNotFound, dBProxyTargetNotFound, invalidDBProxyState.
     */
    public func deregisterDBProxyTargets(
            input: RDSModel.DeregisterDBProxyTargetsRequest) async throws -> RDSModel.DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets {
        if let deregisterDBProxyTargetsOverride = deregisterDBProxyTargetsOverride {
            return try await deregisterDBProxyTargetsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeAccountAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeAccountAttributesMessage object being passed to this operation.
     - Returns: The AccountAttributesMessageForDescribeAccountAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAccountAttributes(
            input: RDSModel.DescribeAccountAttributesMessage) async throws -> RDSModel.AccountAttributesMessageForDescribeAccountAttributes {
        if let describeAccountAttributesOverride = describeAccountAttributesOverride {
            return try await describeAccountAttributesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeCertificates operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeCertificatesMessage object being passed to this operation.
     - Returns: The CertificateMessageForDescribeCertificates object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: certificateNotFound.
     */
    public func describeCertificates(
            input: RDSModel.DescribeCertificatesMessage) async throws -> RDSModel.CertificateMessageForDescribeCertificates {
        if let describeCertificatesOverride = describeCertificatesOverride {
            return try await describeCertificatesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeDBClusterBacktracks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBClusterBacktracksMessage object being passed to this operation.
     - Returns: The DBClusterBacktrackMessageForDescribeDBClusterBacktracks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterBacktrackNotFound, dBClusterNotFound.
     */
    public func describeDBClusterBacktracks(
            input: RDSModel.DescribeDBClusterBacktracksMessage) async throws -> RDSModel.DBClusterBacktrackMessageForDescribeDBClusterBacktracks {
        if let describeDBClusterBacktracksOverride = describeDBClusterBacktracksOverride {
            return try await describeDBClusterBacktracksOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeDBClusterEndpoints operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBClusterEndpointsMessage object being passed to this operation.
     - Returns: The DBClusterEndpointMessageForDescribeDBClusterEndpoints object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound.
     */
    public func describeDBClusterEndpoints(
            input: RDSModel.DescribeDBClusterEndpointsMessage) async throws -> RDSModel.DBClusterEndpointMessageForDescribeDBClusterEndpoints {
        if let describeDBClusterEndpointsOverride = describeDBClusterEndpointsOverride {
            return try await describeDBClusterEndpointsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeDBClusterParameterGroups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBClusterParameterGroupsMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    public func describeDBClusterParameterGroups(
            input: RDSModel.DescribeDBClusterParameterGroupsMessage) async throws -> RDSModel.DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups {
        if let describeDBClusterParameterGroupsOverride = describeDBClusterParameterGroupsOverride {
            return try await describeDBClusterParameterGroupsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeDBClusterParameters operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBClusterParametersMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupDetailsForDescribeDBClusterParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    public func describeDBClusterParameters(
            input: RDSModel.DescribeDBClusterParametersMessage) async throws -> RDSModel.DBClusterParameterGroupDetailsForDescribeDBClusterParameters {
        if let describeDBClusterParametersOverride = describeDBClusterParametersOverride {
            return try await describeDBClusterParametersOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeDBClusterSnapshotAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotAttributesMessage object being passed to this operation.
     - Returns: The DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound.
     */
    public func describeDBClusterSnapshotAttributes(
            input: RDSModel.DescribeDBClusterSnapshotAttributesMessage) async throws -> RDSModel.DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes {
        if let describeDBClusterSnapshotAttributesOverride = describeDBClusterSnapshotAttributesOverride {
            return try await describeDBClusterSnapshotAttributesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeDBClusterSnapshots operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotsMessage object being passed to this operation.
     - Returns: The DBClusterSnapshotMessageForDescribeDBClusterSnapshots object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound.
     */
    public func describeDBClusterSnapshots(
            input: RDSModel.DescribeDBClusterSnapshotsMessage) async throws -> RDSModel.DBClusterSnapshotMessageForDescribeDBClusterSnapshots {
        if let describeDBClusterSnapshotsOverride = describeDBClusterSnapshotsOverride {
            return try await describeDBClusterSnapshotsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeDBClusters operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBClustersMessage object being passed to this operation.
     - Returns: The DBClusterMessageForDescribeDBClusters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound.
     */
    public func describeDBClusters(
            input: RDSModel.DescribeDBClustersMessage) async throws -> RDSModel.DBClusterMessageForDescribeDBClusters {
        if let describeDBClustersOverride = describeDBClustersOverride {
            return try await describeDBClustersOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeDBEngineVersions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBEngineVersionsMessage object being passed to this operation.
     - Returns: The DBEngineVersionMessageForDescribeDBEngineVersions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeDBEngineVersions(
            input: RDSModel.DescribeDBEngineVersionsMessage) async throws -> RDSModel.DBEngineVersionMessageForDescribeDBEngineVersions {
        if let describeDBEngineVersionsOverride = describeDBEngineVersionsOverride {
            return try await describeDBEngineVersionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeDBInstanceAutomatedBackups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBInstanceAutomatedBackupsMessage object being passed to this operation.
     - Returns: The DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupNotFound.
     */
    public func describeDBInstanceAutomatedBackups(
            input: RDSModel.DescribeDBInstanceAutomatedBackupsMessage) async throws -> RDSModel.DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups {
        if let describeDBInstanceAutomatedBackupsOverride = describeDBInstanceAutomatedBackupsOverride {
            return try await describeDBInstanceAutomatedBackupsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeDBInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBInstancesMessage object being passed to this operation.
     - Returns: The DBInstanceMessageForDescribeDBInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound.
     */
    public func describeDBInstances(
            input: RDSModel.DescribeDBInstancesMessage) async throws -> RDSModel.DBInstanceMessageForDescribeDBInstances {
        if let describeDBInstancesOverride = describeDBInstancesOverride {
            return try await describeDBInstancesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeDBLogFiles operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBLogFilesMessage object being passed to this operation.
     - Returns: The DescribeDBLogFilesResponseForDescribeDBLogFiles object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound.
     */
    public func describeDBLogFiles(
            input: RDSModel.DescribeDBLogFilesMessage) async throws -> RDSModel.DescribeDBLogFilesResponseForDescribeDBLogFiles {
        if let describeDBLogFilesOverride = describeDBLogFilesOverride {
            return try await describeDBLogFilesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeDBParameterGroups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBParameterGroupsMessage object being passed to this operation.
     - Returns: The DBParameterGroupsMessageForDescribeDBParameterGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    public func describeDBParameterGroups(
            input: RDSModel.DescribeDBParameterGroupsMessage) async throws -> RDSModel.DBParameterGroupsMessageForDescribeDBParameterGroups {
        if let describeDBParameterGroupsOverride = describeDBParameterGroupsOverride {
            return try await describeDBParameterGroupsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeDBParameters operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBParametersMessage object being passed to this operation.
     - Returns: The DBParameterGroupDetailsForDescribeDBParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    public func describeDBParameters(
            input: RDSModel.DescribeDBParametersMessage) async throws -> RDSModel.DBParameterGroupDetailsForDescribeDBParameters {
        if let describeDBParametersOverride = describeDBParametersOverride {
            return try await describeDBParametersOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeDBProxies operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBProxiesRequest object being passed to this operation.
     - Returns: The DescribeDBProxiesResponseForDescribeDBProxies object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound.
     */
    public func describeDBProxies(
            input: RDSModel.DescribeDBProxiesRequest) async throws -> RDSModel.DescribeDBProxiesResponseForDescribeDBProxies {
        if let describeDBProxiesOverride = describeDBProxiesOverride {
            return try await describeDBProxiesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeDBProxyEndpoints operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBProxyEndpointsRequest object being passed to this operation.
     - Returns: The DescribeDBProxyEndpointsResponseForDescribeDBProxyEndpoints object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyEndpointNotFound, dBProxyNotFound.
     */
    public func describeDBProxyEndpoints(
            input: RDSModel.DescribeDBProxyEndpointsRequest) async throws -> RDSModel.DescribeDBProxyEndpointsResponseForDescribeDBProxyEndpoints {
        if let describeDBProxyEndpointsOverride = describeDBProxyEndpointsOverride {
            return try await describeDBProxyEndpointsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeDBProxyTargetGroups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBProxyTargetGroupsRequest object being passed to this operation.
     - Returns: The DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound, dBProxyTargetGroupNotFound, invalidDBProxyState.
     */
    public func describeDBProxyTargetGroups(
            input: RDSModel.DescribeDBProxyTargetGroupsRequest) async throws -> RDSModel.DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups {
        if let describeDBProxyTargetGroupsOverride = describeDBProxyTargetGroupsOverride {
            return try await describeDBProxyTargetGroupsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeDBProxyTargets operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBProxyTargetsRequest object being passed to this operation.
     - Returns: The DescribeDBProxyTargetsResponseForDescribeDBProxyTargets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound, dBProxyTargetGroupNotFound, dBProxyTargetNotFound, invalidDBProxyState.
     */
    public func describeDBProxyTargets(
            input: RDSModel.DescribeDBProxyTargetsRequest) async throws -> RDSModel.DescribeDBProxyTargetsResponseForDescribeDBProxyTargets {
        if let describeDBProxyTargetsOverride = describeDBProxyTargetsOverride {
            return try await describeDBProxyTargetsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeDBSecurityGroups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBSecurityGroupsMessage object being passed to this operation.
     - Returns: The DBSecurityGroupMessageForDescribeDBSecurityGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSecurityGroupNotFound.
     */
    public func describeDBSecurityGroups(
            input: RDSModel.DescribeDBSecurityGroupsMessage) async throws -> RDSModel.DBSecurityGroupMessageForDescribeDBSecurityGroups {
        if let describeDBSecurityGroupsOverride = describeDBSecurityGroupsOverride {
            return try await describeDBSecurityGroupsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeDBSnapshotAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBSnapshotAttributesMessage object being passed to this operation.
     - Returns: The DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound.
     */
    public func describeDBSnapshotAttributes(
            input: RDSModel.DescribeDBSnapshotAttributesMessage) async throws -> RDSModel.DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes {
        if let describeDBSnapshotAttributesOverride = describeDBSnapshotAttributesOverride {
            return try await describeDBSnapshotAttributesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeDBSnapshots operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBSnapshotsMessage object being passed to this operation.
     - Returns: The DBSnapshotMessageForDescribeDBSnapshots object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound.
     */
    public func describeDBSnapshots(
            input: RDSModel.DescribeDBSnapshotsMessage) async throws -> RDSModel.DBSnapshotMessageForDescribeDBSnapshots {
        if let describeDBSnapshotsOverride = describeDBSnapshotsOverride {
            return try await describeDBSnapshotsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeDBSubnetGroups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDBSubnetGroupsMessage object being passed to this operation.
     - Returns: The DBSubnetGroupMessageForDescribeDBSubnetGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSubnetGroupNotFound.
     */
    public func describeDBSubnetGroups(
            input: RDSModel.DescribeDBSubnetGroupsMessage) async throws -> RDSModel.DBSubnetGroupMessageForDescribeDBSubnetGroups {
        if let describeDBSubnetGroupsOverride = describeDBSubnetGroupsOverride {
            return try await describeDBSubnetGroupsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeEngineDefaultClusterParameters operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeEngineDefaultClusterParametersMessage object being passed to this operation.
     - Returns: The DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeEngineDefaultClusterParameters(
            input: RDSModel.DescribeEngineDefaultClusterParametersMessage) async throws -> RDSModel.DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters {
        if let describeEngineDefaultClusterParametersOverride = describeEngineDefaultClusterParametersOverride {
            return try await describeEngineDefaultClusterParametersOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeEngineDefaultParameters operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeEngineDefaultParametersMessage object being passed to this operation.
     - Returns: The DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeEngineDefaultParameters(
            input: RDSModel.DescribeEngineDefaultParametersMessage) async throws -> RDSModel.DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters {
        if let describeEngineDefaultParametersOverride = describeEngineDefaultParametersOverride {
            return try await describeEngineDefaultParametersOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeEventCategories operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeEventCategoriesMessage object being passed to this operation.
     - Returns: The EventCategoriesMessageForDescribeEventCategories object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeEventCategories(
            input: RDSModel.DescribeEventCategoriesMessage) async throws -> RDSModel.EventCategoriesMessageForDescribeEventCategories {
        if let describeEventCategoriesOverride = describeEventCategoriesOverride {
            return try await describeEventCategoriesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeEventSubscriptions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeEventSubscriptionsMessage object being passed to this operation.
     - Returns: The EventSubscriptionsMessageForDescribeEventSubscriptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: subscriptionNotFound.
     */
    public func describeEventSubscriptions(
            input: RDSModel.DescribeEventSubscriptionsMessage) async throws -> RDSModel.EventSubscriptionsMessageForDescribeEventSubscriptions {
        if let describeEventSubscriptionsOverride = describeEventSubscriptionsOverride {
            return try await describeEventSubscriptionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeEvents operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeEventsMessage object being passed to this operation.
     - Returns: The EventsMessageForDescribeEvents object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeEvents(
            input: RDSModel.DescribeEventsMessage) async throws -> RDSModel.EventsMessageForDescribeEvents {
        if let describeEventsOverride = describeEventsOverride {
            return try await describeEventsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeExportTasks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeExportTasksMessage object being passed to this operation.
     - Returns: The ExportTasksMessageForDescribeExportTasks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: exportTaskNotFound.
     */
    public func describeExportTasks(
            input: RDSModel.DescribeExportTasksMessage) async throws -> RDSModel.ExportTasksMessageForDescribeExportTasks {
        if let describeExportTasksOverride = describeExportTasksOverride {
            return try await describeExportTasksOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeGlobalClusters operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeGlobalClustersMessage object being passed to this operation.
     - Returns: The GlobalClustersMessageForDescribeGlobalClusters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalClusterNotFound.
     */
    public func describeGlobalClusters(
            input: RDSModel.DescribeGlobalClustersMessage) async throws -> RDSModel.GlobalClustersMessageForDescribeGlobalClusters {
        if let describeGlobalClustersOverride = describeGlobalClustersOverride {
            return try await describeGlobalClustersOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeOptionGroupOptions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeOptionGroupOptionsMessage object being passed to this operation.
     - Returns: The OptionGroupOptionsMessageForDescribeOptionGroupOptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeOptionGroupOptions(
            input: RDSModel.DescribeOptionGroupOptionsMessage) async throws -> RDSModel.OptionGroupOptionsMessageForDescribeOptionGroupOptions {
        if let describeOptionGroupOptionsOverride = describeOptionGroupOptionsOverride {
            return try await describeOptionGroupOptionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeOptionGroups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeOptionGroupsMessage object being passed to this operation.
     - Returns: The OptionGroupsForDescribeOptionGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: optionGroupNotFound.
     */
    public func describeOptionGroups(
            input: RDSModel.DescribeOptionGroupsMessage) async throws -> RDSModel.OptionGroupsForDescribeOptionGroups {
        if let describeOptionGroupsOverride = describeOptionGroupsOverride {
            return try await describeOptionGroupsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeOrderableDBInstanceOptions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeOrderableDBInstanceOptionsMessage object being passed to this operation.
     - Returns: The OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeOrderableDBInstanceOptions(
            input: RDSModel.DescribeOrderableDBInstanceOptionsMessage) async throws -> RDSModel.OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions {
        if let describeOrderableDBInstanceOptionsOverride = describeOrderableDBInstanceOptionsOverride {
            return try await describeOrderableDBInstanceOptionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribePendingMaintenanceActions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribePendingMaintenanceActionsMessage object being passed to this operation.
     - Returns: The PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: resourceNotFound.
     */
    public func describePendingMaintenanceActions(
            input: RDSModel.DescribePendingMaintenanceActionsMessage) async throws -> RDSModel.PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions {
        if let describePendingMaintenanceActionsOverride = describePendingMaintenanceActionsOverride {
            return try await describePendingMaintenanceActionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeReservedDBInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesMessage object being passed to this operation.
     - Returns: The ReservedDBInstanceMessageForDescribeReservedDBInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: reservedDBInstanceNotFound.
     */
    public func describeReservedDBInstances(
            input: RDSModel.DescribeReservedDBInstancesMessage) async throws -> RDSModel.ReservedDBInstanceMessageForDescribeReservedDBInstances {
        if let describeReservedDBInstancesOverride = describeReservedDBInstancesOverride {
            return try await describeReservedDBInstancesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeReservedDBInstancesOfferings operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesOfferingsMessage object being passed to this operation.
     - Returns: The ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: reservedDBInstancesOfferingNotFound.
     */
    public func describeReservedDBInstancesOfferings(
            input: RDSModel.DescribeReservedDBInstancesOfferingsMessage) async throws -> RDSModel.ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings {
        if let describeReservedDBInstancesOfferingsOverride = describeReservedDBInstancesOfferingsOverride {
            return try await describeReservedDBInstancesOfferingsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeSourceRegions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeSourceRegionsMessage object being passed to this operation.
     - Returns: The SourceRegionMessageForDescribeSourceRegions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSourceRegions(
            input: RDSModel.DescribeSourceRegionsMessage) async throws -> RDSModel.SourceRegionMessageForDescribeSourceRegions {
        if let describeSourceRegionsOverride = describeSourceRegionsOverride {
            return try await describeSourceRegionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeValidDBInstanceModifications operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeValidDBInstanceModificationsMessage object being passed to this operation.
     - Returns: The DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    public func describeValidDBInstanceModifications(
            input: RDSModel.DescribeValidDBInstanceModificationsMessage) async throws -> RDSModel.DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications {
        if let describeValidDBInstanceModificationsOverride = describeValidDBInstanceModificationsOverride {
            return try await describeValidDBInstanceModificationsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DownloadDBLogFilePortion operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DownloadDBLogFilePortionMessage object being passed to this operation.
     - Returns: The DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, dBLogFileNotFound.
     */
    public func downloadDBLogFilePortion(
            input: RDSModel.DownloadDBLogFilePortionMessage) async throws -> RDSModel.DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion {
        if let downloadDBLogFilePortionOverride = downloadDBLogFilePortionOverride {
            return try await downloadDBLogFilePortionOverride(input)
        }

        throw error
    }

    /**
     Invokes the FailoverDBCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated FailoverDBClusterMessage object being passed to this operation.
     - Returns: The FailoverDBClusterResultForFailoverDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func failoverDBCluster(
            input: RDSModel.FailoverDBClusterMessage) async throws -> RDSModel.FailoverDBClusterResultForFailoverDBCluster {
        if let failoverDBClusterOverride = failoverDBClusterOverride {
            return try await failoverDBClusterOverride(input)
        }

        throw error
    }

    /**
     Invokes the FailoverGlobalCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated FailoverGlobalClusterMessage object being passed to this operation.
     - Returns: The FailoverGlobalClusterResultForFailoverGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, globalClusterNotFound, invalidDBClusterState, invalidGlobalClusterState.
     */
    public func failoverGlobalCluster(
            input: RDSModel.FailoverGlobalClusterMessage) async throws -> RDSModel.FailoverGlobalClusterResultForFailoverGlobalCluster {
        if let failoverGlobalClusterOverride = failoverGlobalClusterOverride {
            return try await failoverGlobalClusterOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListTagsForResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTagsForResourceMessage object being passed to this operation.
     - Returns: The TagListMessageForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetGroupNotFound, dBSnapshotNotFound.
     */
    public func listTagsForResource(
            input: RDSModel.ListTagsForResourceMessage) async throws -> RDSModel.TagListMessageForListTagsForResource {
        if let listTagsForResourceOverride = listTagsForResourceOverride {
            return try await listTagsForResourceOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyActivityStream operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyActivityStreamRequest object being passed to this operation.
     - Returns: The ModifyActivityStreamResponseForModifyActivityStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState, resourceNotFound.
     */
    public func modifyActivityStream(
            input: RDSModel.ModifyActivityStreamRequest) async throws -> RDSModel.ModifyActivityStreamResponseForModifyActivityStream {
        if let modifyActivityStreamOverride = modifyActivityStreamOverride {
            return try await modifyActivityStreamOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyCertificates operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyCertificatesMessage object being passed to this operation.
     - Returns: The ModifyCertificatesResultForModifyCertificates object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: certificateNotFound.
     */
    public func modifyCertificates(
            input: RDSModel.ModifyCertificatesMessage) async throws -> RDSModel.ModifyCertificatesResultForModifyCertificates {
        if let modifyCertificatesOverride = modifyCertificatesOverride {
            return try await modifyCertificatesOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyCurrentDBClusterCapacity operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyCurrentDBClusterCapacityMessage object being passed to this operation.
     - Returns: The DBClusterCapacityInfoForModifyCurrentDBClusterCapacity object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterCapacity, invalidDBClusterState.
     */
    public func modifyCurrentDBClusterCapacity(
            input: RDSModel.ModifyCurrentDBClusterCapacityMessage) async throws -> RDSModel.DBClusterCapacityInfoForModifyCurrentDBClusterCapacity {
        if let modifyCurrentDBClusterCapacityOverride = modifyCurrentDBClusterCapacityOverride {
            return try await modifyCurrentDBClusterCapacityOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyCustomDBEngineVersion operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyCustomDBEngineVersionMessage object being passed to this operation.
     - Returns: The DBEngineVersionForModifyCustomDBEngineVersion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: customDBEngineVersionNotFound, invalidCustomDBEngineVersionState.
     */
    public func modifyCustomDBEngineVersion(
            input: RDSModel.ModifyCustomDBEngineVersionMessage) async throws -> RDSModel.DBEngineVersionForModifyCustomDBEngineVersion {
        if let modifyCustomDBEngineVersionOverride = modifyCustomDBEngineVersionOverride {
            return try await modifyCustomDBEngineVersionOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyDBCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyDBClusterMessage object being passed to this operation.
     - Returns: The ModifyDBClusterResultForModifyDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBSubnetGroupNotFound, domainNotFound, invalidDBClusterState, invalidDBInstanceState, invalidDBSecurityGroupState, invalidDBSubnetGroupState, invalidSubnet, invalidVPCNetworkState, storageQuotaExceeded.
     */
    public func modifyDBCluster(
            input: RDSModel.ModifyDBClusterMessage) async throws -> RDSModel.ModifyDBClusterResultForModifyDBCluster {
        if let modifyDBClusterOverride = modifyDBClusterOverride {
            return try await modifyDBClusterOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyDBClusterEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyDBClusterEndpointMessage object being passed to this operation.
     - Returns: The DBClusterEndpointForModifyDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterEndpointNotFound, dBInstanceNotFound, invalidDBClusterEndpointState, invalidDBClusterState, invalidDBInstanceState.
     */
    public func modifyDBClusterEndpoint(
            input: RDSModel.ModifyDBClusterEndpointMessage) async throws -> RDSModel.DBClusterEndpointForModifyDBClusterEndpoint {
        if let modifyDBClusterEndpointOverride = modifyDBClusterEndpointOverride {
            return try await modifyDBClusterEndpointOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyDBClusterParameterGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func modifyDBClusterParameterGroup(
            input: RDSModel.ModifyDBClusterParameterGroupMessage) async throws -> RDSModel.DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup {
        if let modifyDBClusterParameterGroupOverride = modifyDBClusterParameterGroupOverride {
            return try await modifyDBClusterParameterGroupOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyDBClusterSnapshotAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyDBClusterSnapshotAttributeMessage object being passed to this operation.
     - Returns: The ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, sharedSnapshotQuotaExceeded.
     */
    public func modifyDBClusterSnapshotAttribute(
            input: RDSModel.ModifyDBClusterSnapshotAttributeMessage) async throws -> RDSModel.ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute {
        if let modifyDBClusterSnapshotAttributeOverride = modifyDBClusterSnapshotAttributeOverride {
            return try await modifyDBClusterSnapshotAttributeOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyDBInstance operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyDBInstanceMessage object being passed to this operation.
     - Returns: The ModifyDBInstanceResultForModifyDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, certificateNotFound, dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBUpgradeDependencyFailure, domainNotFound, insufficientDBInstanceCapacity, invalidDBClusterState, invalidDBInstanceState, invalidDBSecurityGroupState, invalidVPCNetworkState, kMSKeyNotAccessible, networkTypeNotSupported, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func modifyDBInstance(
            input: RDSModel.ModifyDBInstanceMessage) async throws -> RDSModel.ModifyDBInstanceResultForModifyDBInstance {
        if let modifyDBInstanceOverride = modifyDBInstanceOverride {
            return try await modifyDBInstanceOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyDBParameterGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyDBParameterGroupMessage object being passed to this operation.
     - Returns: The DBParameterGroupNameMessageForModifyDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func modifyDBParameterGroup(
            input: RDSModel.ModifyDBParameterGroupMessage) async throws -> RDSModel.DBParameterGroupNameMessageForModifyDBParameterGroup {
        if let modifyDBParameterGroupOverride = modifyDBParameterGroupOverride {
            return try await modifyDBParameterGroupOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyDBProxy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyDBProxyRequest object being passed to this operation.
     - Returns: The ModifyDBProxyResponseForModifyDBProxy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyAlreadyExists, dBProxyNotFound, invalidDBProxyState.
     */
    public func modifyDBProxy(
            input: RDSModel.ModifyDBProxyRequest) async throws -> RDSModel.ModifyDBProxyResponseForModifyDBProxy {
        if let modifyDBProxyOverride = modifyDBProxyOverride {
            return try await modifyDBProxyOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyDBProxyEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyDBProxyEndpointRequest object being passed to this operation.
     - Returns: The ModifyDBProxyEndpointResponseForModifyDBProxyEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyEndpointAlreadyExists, dBProxyEndpointNotFound, invalidDBProxyEndpointState, invalidDBProxyState.
     */
    public func modifyDBProxyEndpoint(
            input: RDSModel.ModifyDBProxyEndpointRequest) async throws -> RDSModel.ModifyDBProxyEndpointResponseForModifyDBProxyEndpoint {
        if let modifyDBProxyEndpointOverride = modifyDBProxyEndpointOverride {
            return try await modifyDBProxyEndpointOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyDBProxyTargetGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyDBProxyTargetGroupRequest object being passed to this operation.
     - Returns: The ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound, dBProxyTargetGroupNotFound, invalidDBProxyState.
     */
    public func modifyDBProxyTargetGroup(
            input: RDSModel.ModifyDBProxyTargetGroupRequest) async throws -> RDSModel.ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup {
        if let modifyDBProxyTargetGroupOverride = modifyDBProxyTargetGroupOverride {
            return try await modifyDBProxyTargetGroupOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyDBSnapshot operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyDBSnapshotMessage object being passed to this operation.
     - Returns: The ModifyDBSnapshotResultForModifyDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound.
     */
    public func modifyDBSnapshot(
            input: RDSModel.ModifyDBSnapshotMessage) async throws -> RDSModel.ModifyDBSnapshotResultForModifyDBSnapshot {
        if let modifyDBSnapshotOverride = modifyDBSnapshotOverride {
            return try await modifyDBSnapshotOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyDBSnapshotAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyDBSnapshotAttributeMessage object being passed to this operation.
     - Returns: The ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound, invalidDBSnapshotState, sharedSnapshotQuotaExceeded.
     */
    public func modifyDBSnapshotAttribute(
            input: RDSModel.ModifyDBSnapshotAttributeMessage) async throws -> RDSModel.ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute {
        if let modifyDBSnapshotAttributeOverride = modifyDBSnapshotAttributeOverride {
            return try await modifyDBSnapshotAttributeOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyDBSubnetGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyDBSubnetGroupMessage object being passed to this operation.
     - Returns: The ModifyDBSubnetGroupResultForModifyDBSubnetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, dBSubnetQuotaExceeded, invalidSubnet, subnetAlreadyInUse.
     */
    public func modifyDBSubnetGroup(
            input: RDSModel.ModifyDBSubnetGroupMessage) async throws -> RDSModel.ModifyDBSubnetGroupResultForModifyDBSubnetGroup {
        if let modifyDBSubnetGroupOverride = modifyDBSubnetGroupOverride {
            return try await modifyDBSubnetGroupOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyEventSubscription operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyEventSubscriptionMessage object being passed to this operation.
     - Returns: The ModifyEventSubscriptionResultForModifyEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, subscriptionCategoryNotFound, subscriptionNotFound.
     */
    public func modifyEventSubscription(
            input: RDSModel.ModifyEventSubscriptionMessage) async throws -> RDSModel.ModifyEventSubscriptionResultForModifyEventSubscription {
        if let modifyEventSubscriptionOverride = modifyEventSubscriptionOverride {
            return try await modifyEventSubscriptionOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyGlobalCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyGlobalClusterMessage object being passed to this operation.
     - Returns: The ModifyGlobalClusterResultForModifyGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalClusterNotFound, invalidDBClusterState, invalidDBInstanceState, invalidGlobalClusterState.
     */
    public func modifyGlobalCluster(
            input: RDSModel.ModifyGlobalClusterMessage) async throws -> RDSModel.ModifyGlobalClusterResultForModifyGlobalCluster {
        if let modifyGlobalClusterOverride = modifyGlobalClusterOverride {
            return try await modifyGlobalClusterOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyOptionGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyOptionGroupMessage object being passed to this operation.
     - Returns: The ModifyOptionGroupResultForModifyOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOptionGroupState, optionGroupNotFound.
     */
    public func modifyOptionGroup(
            input: RDSModel.ModifyOptionGroupMessage) async throws -> RDSModel.ModifyOptionGroupResultForModifyOptionGroup {
        if let modifyOptionGroupOverride = modifyOptionGroupOverride {
            return try await modifyOptionGroupOverride(input)
        }

        throw error
    }

    /**
     Invokes the PromoteReadReplica operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PromoteReadReplicaMessage object being passed to this operation.
     - Returns: The PromoteReadReplicaResultForPromoteReadReplica object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    public func promoteReadReplica(
            input: RDSModel.PromoteReadReplicaMessage) async throws -> RDSModel.PromoteReadReplicaResultForPromoteReadReplica {
        if let promoteReadReplicaOverride = promoteReadReplicaOverride {
            return try await promoteReadReplicaOverride(input)
        }

        throw error
    }

    /**
     Invokes the PromoteReadReplicaDBCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PromoteReadReplicaDBClusterMessage object being passed to this operation.
     - Returns: The PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState.
     */
    public func promoteReadReplicaDBCluster(
            input: RDSModel.PromoteReadReplicaDBClusterMessage) async throws -> RDSModel.PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster {
        if let promoteReadReplicaDBClusterOverride = promoteReadReplicaDBClusterOverride {
            return try await promoteReadReplicaDBClusterOverride(input)
        }

        throw error
    }

    /**
     Invokes the PurchaseReservedDBInstancesOffering operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PurchaseReservedDBInstancesOfferingMessage object being passed to this operation.
     - Returns: The PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: reservedDBInstanceAlreadyExists, reservedDBInstanceQuotaExceeded, reservedDBInstancesOfferingNotFound.
     */
    public func purchaseReservedDBInstancesOffering(
            input: RDSModel.PurchaseReservedDBInstancesOfferingMessage) async throws -> RDSModel.PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering {
        if let purchaseReservedDBInstancesOfferingOverride = purchaseReservedDBInstancesOfferingOverride {
            return try await purchaseReservedDBInstancesOfferingOverride(input)
        }

        throw error
    }

    /**
     Invokes the RebootDBCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RebootDBClusterMessage object being passed to this operation.
     - Returns: The RebootDBClusterResultForRebootDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func rebootDBCluster(
            input: RDSModel.RebootDBClusterMessage) async throws -> RDSModel.RebootDBClusterResultForRebootDBCluster {
        if let rebootDBClusterOverride = rebootDBClusterOverride {
            return try await rebootDBClusterOverride(input)
        }

        throw error
    }

    /**
     Invokes the RebootDBInstance operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RebootDBInstanceMessage object being passed to this operation.
     - Returns: The RebootDBInstanceResultForRebootDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    public func rebootDBInstance(
            input: RDSModel.RebootDBInstanceMessage) async throws -> RDSModel.RebootDBInstanceResultForRebootDBInstance {
        if let rebootDBInstanceOverride = rebootDBInstanceOverride {
            return try await rebootDBInstanceOverride(input)
        }

        throw error
    }

    /**
     Invokes the RegisterDBProxyTargets operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RegisterDBProxyTargetsRequest object being passed to this operation.
     - Returns: The RegisterDBProxyTargetsResponseForRegisterDBProxyTargets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetAlreadyRegistered, dBProxyTargetGroupNotFound, insufficientAvailableIPsInSubnet, invalidDBClusterState, invalidDBInstanceState, invalidDBProxyState.
     */
    public func registerDBProxyTargets(
            input: RDSModel.RegisterDBProxyTargetsRequest) async throws -> RDSModel.RegisterDBProxyTargetsResponseForRegisterDBProxyTargets {
        if let registerDBProxyTargetsOverride = registerDBProxyTargetsOverride {
            return try await registerDBProxyTargetsOverride(input)
        }

        throw error
    }

    /**
     Invokes the RemoveFromGlobalCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RemoveFromGlobalClusterMessage object being passed to this operation.
     - Returns: The RemoveFromGlobalClusterResultForRemoveFromGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, globalClusterNotFound, invalidGlobalClusterState.
     */
    public func removeFromGlobalCluster(
            input: RDSModel.RemoveFromGlobalClusterMessage) async throws -> RDSModel.RemoveFromGlobalClusterResultForRemoveFromGlobalCluster {
        if let removeFromGlobalClusterOverride = removeFromGlobalClusterOverride {
            return try await removeFromGlobalClusterOverride(input)
        }

        throw error
    }

    /**
     Invokes the RemoveRoleFromDBCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RemoveRoleFromDBClusterMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBClusterRoleNotFound, invalidDBClusterState.
     */
    public func removeRoleFromDBCluster(
            input: RDSModel.RemoveRoleFromDBClusterMessage) async throws {
        if let removeRoleFromDBClusterOverride = removeRoleFromDBClusterOverride {
            return try await removeRoleFromDBClusterOverride(input)
        }

        throw error
    }

    /**
     Invokes the RemoveRoleFromDBInstance operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RemoveRoleFromDBInstanceMessage object being passed to this operation.
     - Throws: dBInstanceNotFound, dBInstanceRoleNotFound, invalidDBInstanceState.
     */
    public func removeRoleFromDBInstance(
            input: RDSModel.RemoveRoleFromDBInstanceMessage) async throws {
        if let removeRoleFromDBInstanceOverride = removeRoleFromDBInstanceOverride {
            return try await removeRoleFromDBInstanceOverride(input)
        }

        throw error
    }

    /**
     Invokes the RemoveSourceIdentifierFromSubscription operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RemoveSourceIdentifierFromSubscriptionMessage object being passed to this operation.
     - Returns: The RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: sourceNotFound, subscriptionNotFound.
     */
    public func removeSourceIdentifierFromSubscription(
            input: RDSModel.RemoveSourceIdentifierFromSubscriptionMessage) async throws -> RDSModel.RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription {
        if let removeSourceIdentifierFromSubscriptionOverride = removeSourceIdentifierFromSubscriptionOverride {
            return try await removeSourceIdentifierFromSubscriptionOverride(input)
        }

        throw error
    }

    /**
     Invokes the RemoveTagsFromResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RemoveTagsFromResourceMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetGroupNotFound, dBSnapshotNotFound.
     */
    public func removeTagsFromResource(
            input: RDSModel.RemoveTagsFromResourceMessage) async throws {
        if let removeTagsFromResourceOverride = removeTagsFromResourceOverride {
            return try await removeTagsFromResourceOverride(input)
        }

        throw error
    }

    /**
     Invokes the ResetDBClusterParameterGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ResetDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func resetDBClusterParameterGroup(
            input: RDSModel.ResetDBClusterParameterGroupMessage) async throws -> RDSModel.DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup {
        if let resetDBClusterParameterGroupOverride = resetDBClusterParameterGroupOverride {
            return try await resetDBClusterParameterGroupOverride(input)
        }

        throw error
    }

    /**
     Invokes the ResetDBParameterGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ResetDBParameterGroupMessage object being passed to this operation.
     - Returns: The DBParameterGroupNameMessageForResetDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func resetDBParameterGroup(
            input: RDSModel.ResetDBParameterGroupMessage) async throws -> RDSModel.DBParameterGroupNameMessageForResetDBParameterGroup {
        if let resetDBParameterGroupOverride = resetDBParameterGroupOverride {
            return try await resetDBParameterGroupOverride(input)
        }

        throw error
    }

    /**
     Invokes the RestoreDBClusterFromS3 operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RestoreDBClusterFromS3Message object being passed to this operation.
     - Returns: The RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3 object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBSubnetGroupNotFound, domainNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBSubnetGroupState, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    public func restoreDBClusterFromS3(
            input: RDSModel.RestoreDBClusterFromS3Message) async throws -> RDSModel.RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3 {
        if let restoreDBClusterFromS3Override = restoreDBClusterFromS3Override {
            return try await restoreDBClusterFromS3Override(input)
        }

        throw error
    }

    /**
     Invokes the RestoreDBClusterFromSnapshot operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RestoreDBClusterFromSnapshotMessage object being passed to this operation.
     - Returns: The RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSnapshotNotFound, dBSubnetGroupNotFound, dBSubnetGroupNotFound, domainNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded, storageQuotaExceeded.
     */
    public func restoreDBClusterFromSnapshot(
            input: RDSModel.RestoreDBClusterFromSnapshotMessage) async throws -> RDSModel.RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot {
        if let restoreDBClusterFromSnapshotOverride = restoreDBClusterFromSnapshotOverride {
            return try await restoreDBClusterFromSnapshotOverride(input)
        }

        throw error
    }

    /**
     Invokes the RestoreDBClusterToPointInTime operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RestoreDBClusterToPointInTimeMessage object being passed to this operation.
     - Returns: The RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSubnetGroupNotFound, domainNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBClusterState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded.
     */
    public func restoreDBClusterToPointInTime(
            input: RDSModel.RestoreDBClusterToPointInTimeMessage) async throws -> RDSModel.RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime {
        if let restoreDBClusterToPointInTimeOverride = restoreDBClusterToPointInTimeOverride {
            return try await restoreDBClusterToPointInTimeOverride(input)
        }

        throw error
    }

    /**
     Invokes the RestoreDBInstanceFromDBSnapshot operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RestoreDBInstanceFromDBSnapshotMessage object being passed to this operation.
     - Returns: The RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSnapshotNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, networkTypeNotSupported, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceFromDBSnapshot(
            input: RDSModel.RestoreDBInstanceFromDBSnapshotMessage) async throws -> RDSModel.RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot {
        if let restoreDBInstanceFromDBSnapshotOverride = restoreDBInstanceFromDBSnapshotOverride {
            return try await restoreDBInstanceFromDBSnapshotOverride(input)
        }

        throw error
    }

    /**
     Invokes the RestoreDBInstanceFromS3 operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RestoreDBInstanceFromS3Message object being passed to this operation.
     - Returns: The RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3 object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, networkTypeNotSupported, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceFromS3(
            input: RDSModel.RestoreDBInstanceFromS3Message) async throws -> RDSModel.RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3 {
        if let restoreDBInstanceFromS3Override = restoreDBInstanceFromS3Override {
            return try await restoreDBInstanceFromS3Override(input)
        }

        throw error
    }

    /**
     Invokes the RestoreDBInstanceToPointInTime operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RestoreDBInstanceToPointInTimeMessage object being passed to this operation.
     - Returns: The RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBInstanceAutomatedBackupNotFound, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, networkTypeNotSupported, optionGroupNotFound, pointInTimeRestoreNotEnabled, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceToPointInTime(
            input: RDSModel.RestoreDBInstanceToPointInTimeMessage) async throws -> RDSModel.RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime {
        if let restoreDBInstanceToPointInTimeOverride = restoreDBInstanceToPointInTimeOverride {
            return try await restoreDBInstanceToPointInTimeOverride(input)
        }

        throw error
    }

    /**
     Invokes the RevokeDBSecurityGroupIngress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RevokeDBSecurityGroupIngressMessage object being passed to this operation.
     - Returns: The RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    public func revokeDBSecurityGroupIngress(
            input: RDSModel.RevokeDBSecurityGroupIngressMessage) async throws -> RDSModel.RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress {
        if let revokeDBSecurityGroupIngressOverride = revokeDBSecurityGroupIngressOverride {
            return try await revokeDBSecurityGroupIngressOverride(input)
        }

        throw error
    }

    /**
     Invokes the StartActivityStream operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartActivityStreamRequest object being passed to this operation.
     - Returns: The StartActivityStreamResponseForStartActivityStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState, kMSKeyNotAccessible, resourceNotFound.
     */
    public func startActivityStream(
            input: RDSModel.StartActivityStreamRequest) async throws -> RDSModel.StartActivityStreamResponseForStartActivityStream {
        if let startActivityStreamOverride = startActivityStreamOverride {
            return try await startActivityStreamOverride(input)
        }

        throw error
    }

    /**
     Invokes the StartDBCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartDBClusterMessage object being passed to this operation.
     - Returns: The StartDBClusterResultForStartDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func startDBCluster(
            input: RDSModel.StartDBClusterMessage) async throws -> RDSModel.StartDBClusterResultForStartDBCluster {
        if let startDBClusterOverride = startDBClusterOverride {
            return try await startDBClusterOverride(input)
        }

        throw error
    }

    /**
     Invokes the StartDBInstance operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartDBInstanceMessage object being passed to this operation.
     - Returns: The StartDBInstanceResultForStartDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, dBClusterNotFound, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, insufficientDBInstanceCapacity, invalidDBClusterState, invalidDBInstanceState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible.
     */
    public func startDBInstance(
            input: RDSModel.StartDBInstanceMessage) async throws -> RDSModel.StartDBInstanceResultForStartDBInstance {
        if let startDBInstanceOverride = startDBInstanceOverride {
            return try await startDBInstanceOverride(input)
        }

        throw error
    }

    /**
     Invokes the StartDBInstanceAutomatedBackupsReplication operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartDBInstanceAutomatedBackupsReplicationMessage object being passed to this operation.
     - Returns: The StartDBInstanceAutomatedBackupsReplicationResultForStartDBInstanceAutomatedBackupsReplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupQuotaExceeded, dBInstanceNotFound, invalidDBInstanceState, kMSKeyNotAccessible, storageTypeNotSupported.
     */
    public func startDBInstanceAutomatedBackupsReplication(
            input: RDSModel.StartDBInstanceAutomatedBackupsReplicationMessage) async throws -> RDSModel.StartDBInstanceAutomatedBackupsReplicationResultForStartDBInstanceAutomatedBackupsReplication {
        if let startDBInstanceAutomatedBackupsReplicationOverride = startDBInstanceAutomatedBackupsReplicationOverride {
            return try await startDBInstanceAutomatedBackupsReplicationOverride(input)
        }

        throw error
    }

    /**
     Invokes the StartExportTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartExportTaskMessage object being passed to this operation.
     - Returns: The ExportTaskForStartExportTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound, dBSnapshotNotFound, exportTaskAlreadyExists, iamRoleMissingPermissions, iamRoleNotFound, invalidExportOnly, invalidExportSourceState, invalidS3Bucket, kMSKeyNotAccessible.
     */
    public func startExportTask(
            input: RDSModel.StartExportTaskMessage) async throws -> RDSModel.ExportTaskForStartExportTask {
        if let startExportTaskOverride = startExportTaskOverride {
            return try await startExportTaskOverride(input)
        }

        throw error
    }

    /**
     Invokes the StopActivityStream operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StopActivityStreamRequest object being passed to this operation.
     - Returns: The StopActivityStreamResponseForStopActivityStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState, resourceNotFound.
     */
    public func stopActivityStream(
            input: RDSModel.StopActivityStreamRequest) async throws -> RDSModel.StopActivityStreamResponseForStopActivityStream {
        if let stopActivityStreamOverride = stopActivityStreamOverride {
            return try await stopActivityStreamOverride(input)
        }

        throw error
    }

    /**
     Invokes the StopDBCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StopDBClusterMessage object being passed to this operation.
     - Returns: The StopDBClusterResultForStopDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func stopDBCluster(
            input: RDSModel.StopDBClusterMessage) async throws -> RDSModel.StopDBClusterResultForStopDBCluster {
        if let stopDBClusterOverride = stopDBClusterOverride {
            return try await stopDBClusterOverride(input)
        }

        throw error
    }

    /**
     Invokes the StopDBInstance operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StopDBInstanceMessage object being passed to this operation.
     - Returns: The StopDBInstanceResultForStopDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    public func stopDBInstance(
            input: RDSModel.StopDBInstanceMessage) async throws -> RDSModel.StopDBInstanceResultForStopDBInstance {
        if let stopDBInstanceOverride = stopDBInstanceOverride {
            return try await stopDBInstanceOverride(input)
        }

        throw error
    }

    /**
     Invokes the StopDBInstanceAutomatedBackupsReplication operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StopDBInstanceAutomatedBackupsReplicationMessage object being passed to this operation.
     - Returns: The StopDBInstanceAutomatedBackupsReplicationResultForStopDBInstanceAutomatedBackupsReplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    public func stopDBInstanceAutomatedBackupsReplication(
            input: RDSModel.StopDBInstanceAutomatedBackupsReplicationMessage) async throws -> RDSModel.StopDBInstanceAutomatedBackupsReplicationResultForStopDBInstanceAutomatedBackupsReplication {
        if let stopDBInstanceAutomatedBackupsReplicationOverride = stopDBInstanceAutomatedBackupsReplicationOverride {
            return try await stopDBInstanceAutomatedBackupsReplicationOverride(input)
        }

        throw error
    }

    /**
     Invokes the SwitchoverReadReplica operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SwitchoverReadReplicaMessage object being passed to this operation.
     - Returns: The SwitchoverReadReplicaResultForSwitchoverReadReplica object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    public func switchoverReadReplica(
            input: RDSModel.SwitchoverReadReplicaMessage) async throws -> RDSModel.SwitchoverReadReplicaResultForSwitchoverReadReplica {
        if let switchoverReadReplicaOverride = switchoverReadReplicaOverride {
            return try await switchoverReadReplicaOverride(input)
        }

        throw error
    }
#endif
}
