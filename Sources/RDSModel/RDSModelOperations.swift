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
// RDSModelOperations.swift
// RDSModel
//

import Foundation

/**
 Operation enumeration for the RDSModel.
 */
public enum RDSModelOperations: String, Hashable, CustomStringConvertible {
    case addRoleToDBCluster = "AddRoleToDBCluster"
    case addRoleToDBInstance = "AddRoleToDBInstance"
    case addSourceIdentifierToSubscription = "AddSourceIdentifierToSubscription"
    case addTagsToResource = "AddTagsToResource"
    case applyPendingMaintenanceAction = "ApplyPendingMaintenanceAction"
    case authorizeDBSecurityGroupIngress = "AuthorizeDBSecurityGroupIngress"
    case backtrackDBCluster = "BacktrackDBCluster"
    case cancelExportTask = "CancelExportTask"
    case copyDBClusterParameterGroup = "CopyDBClusterParameterGroup"
    case copyDBClusterSnapshot = "CopyDBClusterSnapshot"
    case copyDBParameterGroup = "CopyDBParameterGroup"
    case copyDBSnapshot = "CopyDBSnapshot"
    case copyOptionGroup = "CopyOptionGroup"
    case createBlueGreenDeployment = "CreateBlueGreenDeployment"
    case createCustomDBEngineVersion = "CreateCustomDBEngineVersion"
    case createDBCluster = "CreateDBCluster"
    case createDBClusterEndpoint = "CreateDBClusterEndpoint"
    case createDBClusterParameterGroup = "CreateDBClusterParameterGroup"
    case createDBClusterSnapshot = "CreateDBClusterSnapshot"
    case createDBInstance = "CreateDBInstance"
    case createDBInstanceReadReplica = "CreateDBInstanceReadReplica"
    case createDBParameterGroup = "CreateDBParameterGroup"
    case createDBProxy = "CreateDBProxy"
    case createDBProxyEndpoint = "CreateDBProxyEndpoint"
    case createDBSecurityGroup = "CreateDBSecurityGroup"
    case createDBSnapshot = "CreateDBSnapshot"
    case createDBSubnetGroup = "CreateDBSubnetGroup"
    case createEventSubscription = "CreateEventSubscription"
    case createGlobalCluster = "CreateGlobalCluster"
    case createOptionGroup = "CreateOptionGroup"
    case deleteBlueGreenDeployment = "DeleteBlueGreenDeployment"
    case deleteCustomDBEngineVersion = "DeleteCustomDBEngineVersion"
    case deleteDBCluster = "DeleteDBCluster"
    case deleteDBClusterAutomatedBackup = "DeleteDBClusterAutomatedBackup"
    case deleteDBClusterEndpoint = "DeleteDBClusterEndpoint"
    case deleteDBClusterParameterGroup = "DeleteDBClusterParameterGroup"
    case deleteDBClusterSnapshot = "DeleteDBClusterSnapshot"
    case deleteDBInstance = "DeleteDBInstance"
    case deleteDBInstanceAutomatedBackup = "DeleteDBInstanceAutomatedBackup"
    case deleteDBParameterGroup = "DeleteDBParameterGroup"
    case deleteDBProxy = "DeleteDBProxy"
    case deleteDBProxyEndpoint = "DeleteDBProxyEndpoint"
    case deleteDBSecurityGroup = "DeleteDBSecurityGroup"
    case deleteDBSnapshot = "DeleteDBSnapshot"
    case deleteDBSubnetGroup = "DeleteDBSubnetGroup"
    case deleteEventSubscription = "DeleteEventSubscription"
    case deleteGlobalCluster = "DeleteGlobalCluster"
    case deleteOptionGroup = "DeleteOptionGroup"
    case deregisterDBProxyTargets = "DeregisterDBProxyTargets"
    case describeAccountAttributes = "DescribeAccountAttributes"
    case describeBlueGreenDeployments = "DescribeBlueGreenDeployments"
    case describeCertificates = "DescribeCertificates"
    case describeDBClusterAutomatedBackups = "DescribeDBClusterAutomatedBackups"
    case describeDBClusterBacktracks = "DescribeDBClusterBacktracks"
    case describeDBClusterEndpoints = "DescribeDBClusterEndpoints"
    case describeDBClusterParameterGroups = "DescribeDBClusterParameterGroups"
    case describeDBClusterParameters = "DescribeDBClusterParameters"
    case describeDBClusterSnapshotAttributes = "DescribeDBClusterSnapshotAttributes"
    case describeDBClusterSnapshots = "DescribeDBClusterSnapshots"
    case describeDBClusters = "DescribeDBClusters"
    case describeDBEngineVersions = "DescribeDBEngineVersions"
    case describeDBInstanceAutomatedBackups = "DescribeDBInstanceAutomatedBackups"
    case describeDBInstances = "DescribeDBInstances"
    case describeDBLogFiles = "DescribeDBLogFiles"
    case describeDBParameterGroups = "DescribeDBParameterGroups"
    case describeDBParameters = "DescribeDBParameters"
    case describeDBProxies = "DescribeDBProxies"
    case describeDBProxyEndpoints = "DescribeDBProxyEndpoints"
    case describeDBProxyTargetGroups = "DescribeDBProxyTargetGroups"
    case describeDBProxyTargets = "DescribeDBProxyTargets"
    case describeDBSecurityGroups = "DescribeDBSecurityGroups"
    case describeDBSnapshotAttributes = "DescribeDBSnapshotAttributes"
    case describeDBSnapshots = "DescribeDBSnapshots"
    case describeDBSubnetGroups = "DescribeDBSubnetGroups"
    case describeEngineDefaultClusterParameters = "DescribeEngineDefaultClusterParameters"
    case describeEngineDefaultParameters = "DescribeEngineDefaultParameters"
    case describeEventCategories = "DescribeEventCategories"
    case describeEventSubscriptions = "DescribeEventSubscriptions"
    case describeEvents = "DescribeEvents"
    case describeExportTasks = "DescribeExportTasks"
    case describeGlobalClusters = "DescribeGlobalClusters"
    case describeOptionGroupOptions = "DescribeOptionGroupOptions"
    case describeOptionGroups = "DescribeOptionGroups"
    case describeOrderableDBInstanceOptions = "DescribeOrderableDBInstanceOptions"
    case describePendingMaintenanceActions = "DescribePendingMaintenanceActions"
    case describeReservedDBInstances = "DescribeReservedDBInstances"
    case describeReservedDBInstancesOfferings = "DescribeReservedDBInstancesOfferings"
    case describeSourceRegions = "DescribeSourceRegions"
    case describeValidDBInstanceModifications = "DescribeValidDBInstanceModifications"
    case downloadDBLogFilePortion = "DownloadDBLogFilePortion"
    case failoverDBCluster = "FailoverDBCluster"
    case failoverGlobalCluster = "FailoverGlobalCluster"
    case listTagsForResource = "ListTagsForResource"
    case modifyActivityStream = "ModifyActivityStream"
    case modifyCertificates = "ModifyCertificates"
    case modifyCurrentDBClusterCapacity = "ModifyCurrentDBClusterCapacity"
    case modifyCustomDBEngineVersion = "ModifyCustomDBEngineVersion"
    case modifyDBCluster = "ModifyDBCluster"
    case modifyDBClusterEndpoint = "ModifyDBClusterEndpoint"
    case modifyDBClusterParameterGroup = "ModifyDBClusterParameterGroup"
    case modifyDBClusterSnapshotAttribute = "ModifyDBClusterSnapshotAttribute"
    case modifyDBInstance = "ModifyDBInstance"
    case modifyDBParameterGroup = "ModifyDBParameterGroup"
    case modifyDBProxy = "ModifyDBProxy"
    case modifyDBProxyEndpoint = "ModifyDBProxyEndpoint"
    case modifyDBProxyTargetGroup = "ModifyDBProxyTargetGroup"
    case modifyDBSnapshot = "ModifyDBSnapshot"
    case modifyDBSnapshotAttribute = "ModifyDBSnapshotAttribute"
    case modifyDBSubnetGroup = "ModifyDBSubnetGroup"
    case modifyEventSubscription = "ModifyEventSubscription"
    case modifyGlobalCluster = "ModifyGlobalCluster"
    case modifyOptionGroup = "ModifyOptionGroup"
    case promoteReadReplica = "PromoteReadReplica"
    case promoteReadReplicaDBCluster = "PromoteReadReplicaDBCluster"
    case purchaseReservedDBInstancesOffering = "PurchaseReservedDBInstancesOffering"
    case rebootDBCluster = "RebootDBCluster"
    case rebootDBInstance = "RebootDBInstance"
    case registerDBProxyTargets = "RegisterDBProxyTargets"
    case removeFromGlobalCluster = "RemoveFromGlobalCluster"
    case removeRoleFromDBCluster = "RemoveRoleFromDBCluster"
    case removeRoleFromDBInstance = "RemoveRoleFromDBInstance"
    case removeSourceIdentifierFromSubscription = "RemoveSourceIdentifierFromSubscription"
    case removeTagsFromResource = "RemoveTagsFromResource"
    case resetDBClusterParameterGroup = "ResetDBClusterParameterGroup"
    case resetDBParameterGroup = "ResetDBParameterGroup"
    case restoreDBClusterFromS3 = "RestoreDBClusterFromS3"
    case restoreDBClusterFromSnapshot = "RestoreDBClusterFromSnapshot"
    case restoreDBClusterToPointInTime = "RestoreDBClusterToPointInTime"
    case restoreDBInstanceFromDBSnapshot = "RestoreDBInstanceFromDBSnapshot"
    case restoreDBInstanceFromS3 = "RestoreDBInstanceFromS3"
    case restoreDBInstanceToPointInTime = "RestoreDBInstanceToPointInTime"
    case revokeDBSecurityGroupIngress = "RevokeDBSecurityGroupIngress"
    case startActivityStream = "StartActivityStream"
    case startDBCluster = "StartDBCluster"
    case startDBInstance = "StartDBInstance"
    case startDBInstanceAutomatedBackupsReplication = "StartDBInstanceAutomatedBackupsReplication"
    case startExportTask = "StartExportTask"
    case stopActivityStream = "StopActivityStream"
    case stopDBCluster = "StopDBCluster"
    case stopDBInstance = "StopDBInstance"
    case stopDBInstanceAutomatedBackupsReplication = "StopDBInstanceAutomatedBackupsReplication"
    case switchoverBlueGreenDeployment = "SwitchoverBlueGreenDeployment"
    case switchoverGlobalCluster = "SwitchoverGlobalCluster"
    case switchoverReadReplica = "SwitchoverReadReplica"

    public var description: String {
        return rawValue
    }

    public var operationPath: String {
        switch self {
        case .addRoleToDBCluster:
            return "/"
        case .addRoleToDBInstance:
            return "/"
        case .addSourceIdentifierToSubscription:
            return "/"
        case .addTagsToResource:
            return "/"
        case .applyPendingMaintenanceAction:
            return "/"
        case .authorizeDBSecurityGroupIngress:
            return "/"
        case .backtrackDBCluster:
            return "/"
        case .cancelExportTask:
            return "/"
        case .copyDBClusterParameterGroup:
            return "/"
        case .copyDBClusterSnapshot:
            return "/"
        case .copyDBParameterGroup:
            return "/"
        case .copyDBSnapshot:
            return "/"
        case .copyOptionGroup:
            return "/"
        case .createBlueGreenDeployment:
            return "/"
        case .createCustomDBEngineVersion:
            return "/"
        case .createDBCluster:
            return "/"
        case .createDBClusterEndpoint:
            return "/"
        case .createDBClusterParameterGroup:
            return "/"
        case .createDBClusterSnapshot:
            return "/"
        case .createDBInstance:
            return "/"
        case .createDBInstanceReadReplica:
            return "/"
        case .createDBParameterGroup:
            return "/"
        case .createDBProxy:
            return "/"
        case .createDBProxyEndpoint:
            return "/"
        case .createDBSecurityGroup:
            return "/"
        case .createDBSnapshot:
            return "/"
        case .createDBSubnetGroup:
            return "/"
        case .createEventSubscription:
            return "/"
        case .createGlobalCluster:
            return "/"
        case .createOptionGroup:
            return "/"
        case .deleteBlueGreenDeployment:
            return "/"
        case .deleteCustomDBEngineVersion:
            return "/"
        case .deleteDBCluster:
            return "/"
        case .deleteDBClusterAutomatedBackup:
            return "/"
        case .deleteDBClusterEndpoint:
            return "/"
        case .deleteDBClusterParameterGroup:
            return "/"
        case .deleteDBClusterSnapshot:
            return "/"
        case .deleteDBInstance:
            return "/"
        case .deleteDBInstanceAutomatedBackup:
            return "/"
        case .deleteDBParameterGroup:
            return "/"
        case .deleteDBProxy:
            return "/"
        case .deleteDBProxyEndpoint:
            return "/"
        case .deleteDBSecurityGroup:
            return "/"
        case .deleteDBSnapshot:
            return "/"
        case .deleteDBSubnetGroup:
            return "/"
        case .deleteEventSubscription:
            return "/"
        case .deleteGlobalCluster:
            return "/"
        case .deleteOptionGroup:
            return "/"
        case .deregisterDBProxyTargets:
            return "/"
        case .describeAccountAttributes:
            return "/"
        case .describeBlueGreenDeployments:
            return "/"
        case .describeCertificates:
            return "/"
        case .describeDBClusterAutomatedBackups:
            return "/"
        case .describeDBClusterBacktracks:
            return "/"
        case .describeDBClusterEndpoints:
            return "/"
        case .describeDBClusterParameterGroups:
            return "/"
        case .describeDBClusterParameters:
            return "/"
        case .describeDBClusterSnapshotAttributes:
            return "/"
        case .describeDBClusterSnapshots:
            return "/"
        case .describeDBClusters:
            return "/"
        case .describeDBEngineVersions:
            return "/"
        case .describeDBInstanceAutomatedBackups:
            return "/"
        case .describeDBInstances:
            return "/"
        case .describeDBLogFiles:
            return "/"
        case .describeDBParameterGroups:
            return "/"
        case .describeDBParameters:
            return "/"
        case .describeDBProxies:
            return "/"
        case .describeDBProxyEndpoints:
            return "/"
        case .describeDBProxyTargetGroups:
            return "/"
        case .describeDBProxyTargets:
            return "/"
        case .describeDBSecurityGroups:
            return "/"
        case .describeDBSnapshotAttributes:
            return "/"
        case .describeDBSnapshots:
            return "/"
        case .describeDBSubnetGroups:
            return "/"
        case .describeEngineDefaultClusterParameters:
            return "/"
        case .describeEngineDefaultParameters:
            return "/"
        case .describeEventCategories:
            return "/"
        case .describeEventSubscriptions:
            return "/"
        case .describeEvents:
            return "/"
        case .describeExportTasks:
            return "/"
        case .describeGlobalClusters:
            return "/"
        case .describeOptionGroupOptions:
            return "/"
        case .describeOptionGroups:
            return "/"
        case .describeOrderableDBInstanceOptions:
            return "/"
        case .describePendingMaintenanceActions:
            return "/"
        case .describeReservedDBInstances:
            return "/"
        case .describeReservedDBInstancesOfferings:
            return "/"
        case .describeSourceRegions:
            return "/"
        case .describeValidDBInstanceModifications:
            return "/"
        case .downloadDBLogFilePortion:
            return "/"
        case .failoverDBCluster:
            return "/"
        case .failoverGlobalCluster:
            return "/"
        case .listTagsForResource:
            return "/"
        case .modifyActivityStream:
            return "/"
        case .modifyCertificates:
            return "/"
        case .modifyCurrentDBClusterCapacity:
            return "/"
        case .modifyCustomDBEngineVersion:
            return "/"
        case .modifyDBCluster:
            return "/"
        case .modifyDBClusterEndpoint:
            return "/"
        case .modifyDBClusterParameterGroup:
            return "/"
        case .modifyDBClusterSnapshotAttribute:
            return "/"
        case .modifyDBInstance:
            return "/"
        case .modifyDBParameterGroup:
            return "/"
        case .modifyDBProxy:
            return "/"
        case .modifyDBProxyEndpoint:
            return "/"
        case .modifyDBProxyTargetGroup:
            return "/"
        case .modifyDBSnapshot:
            return "/"
        case .modifyDBSnapshotAttribute:
            return "/"
        case .modifyDBSubnetGroup:
            return "/"
        case .modifyEventSubscription:
            return "/"
        case .modifyGlobalCluster:
            return "/"
        case .modifyOptionGroup:
            return "/"
        case .promoteReadReplica:
            return "/"
        case .promoteReadReplicaDBCluster:
            return "/"
        case .purchaseReservedDBInstancesOffering:
            return "/"
        case .rebootDBCluster:
            return "/"
        case .rebootDBInstance:
            return "/"
        case .registerDBProxyTargets:
            return "/"
        case .removeFromGlobalCluster:
            return "/"
        case .removeRoleFromDBCluster:
            return "/"
        case .removeRoleFromDBInstance:
            return "/"
        case .removeSourceIdentifierFromSubscription:
            return "/"
        case .removeTagsFromResource:
            return "/"
        case .resetDBClusterParameterGroup:
            return "/"
        case .resetDBParameterGroup:
            return "/"
        case .restoreDBClusterFromS3:
            return "/"
        case .restoreDBClusterFromSnapshot:
            return "/"
        case .restoreDBClusterToPointInTime:
            return "/"
        case .restoreDBInstanceFromDBSnapshot:
            return "/"
        case .restoreDBInstanceFromS3:
            return "/"
        case .restoreDBInstanceToPointInTime:
            return "/"
        case .revokeDBSecurityGroupIngress:
            return "/"
        case .startActivityStream:
            return "/"
        case .startDBCluster:
            return "/"
        case .startDBInstance:
            return "/"
        case .startDBInstanceAutomatedBackupsReplication:
            return "/"
        case .startExportTask:
            return "/"
        case .stopActivityStream:
            return "/"
        case .stopDBCluster:
            return "/"
        case .stopDBInstance:
            return "/"
        case .stopDBInstanceAutomatedBackupsReplication:
            return "/"
        case .switchoverBlueGreenDeployment:
            return "/"
        case .switchoverGlobalCluster:
            return "/"
        case .switchoverReadReplica:
            return "/"
        }
    }
}
