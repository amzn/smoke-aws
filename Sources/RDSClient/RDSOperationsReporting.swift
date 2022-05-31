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
// RDSOperationsReporting.swift
// RDSClient
//

import Foundation
import SmokeAWSCore
import RDSModel

/**
 Operation reporting for the RDSModel.
 */
public struct RDSOperationsReporting {
    public let addRoleToDBCluster: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let addRoleToDBInstance: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let addSourceIdentifierToSubscription: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let addTagsToResource: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let applyPendingMaintenanceAction: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let authorizeDBSecurityGroupIngress: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let backtrackDBCluster: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let cancelExportTask: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let copyDBClusterParameterGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let copyDBClusterSnapshot: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let copyDBParameterGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let copyDBSnapshot: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let copyOptionGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let createCustomDBEngineVersion: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let createDBCluster: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let createDBClusterEndpoint: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let createDBClusterParameterGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let createDBClusterSnapshot: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let createDBInstance: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let createDBInstanceReadReplica: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let createDBParameterGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let createDBProxy: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let createDBProxyEndpoint: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let createDBSecurityGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let createDBSnapshot: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let createDBSubnetGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let createEventSubscription: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let createGlobalCluster: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let createOptionGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let deleteCustomDBEngineVersion: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let deleteDBCluster: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let deleteDBClusterEndpoint: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let deleteDBClusterParameterGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let deleteDBClusterSnapshot: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let deleteDBInstance: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let deleteDBInstanceAutomatedBackup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let deleteDBParameterGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let deleteDBProxy: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let deleteDBProxyEndpoint: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let deleteDBSecurityGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let deleteDBSnapshot: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let deleteDBSubnetGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let deleteEventSubscription: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let deleteGlobalCluster: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let deleteOptionGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let deregisterDBProxyTargets: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeAccountAttributes: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeCertificates: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeDBClusterBacktracks: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeDBClusterEndpoints: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeDBClusterParameterGroups: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeDBClusterParameters: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeDBClusterSnapshotAttributes: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeDBClusterSnapshots: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeDBClusters: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeDBEngineVersions: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeDBInstanceAutomatedBackups: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeDBInstances: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeDBLogFiles: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeDBParameterGroups: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeDBParameters: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeDBProxies: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeDBProxyEndpoints: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeDBProxyTargetGroups: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeDBProxyTargets: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeDBSecurityGroups: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeDBSnapshotAttributes: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeDBSnapshots: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeDBSubnetGroups: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeEngineDefaultClusterParameters: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeEngineDefaultParameters: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeEventCategories: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeEventSubscriptions: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeEvents: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeExportTasks: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeGlobalClusters: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeOptionGroupOptions: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeOptionGroups: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeOrderableDBInstanceOptions: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describePendingMaintenanceActions: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeReservedDBInstances: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeReservedDBInstancesOfferings: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeSourceRegions: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let describeValidDBInstanceModifications: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let downloadDBLogFilePortion: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let failoverDBCluster: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let failoverGlobalCluster: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let listTagsForResource: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let modifyCertificates: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let modifyCurrentDBClusterCapacity: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let modifyCustomDBEngineVersion: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let modifyDBCluster: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let modifyDBClusterEndpoint: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let modifyDBClusterParameterGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let modifyDBClusterSnapshotAttribute: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let modifyDBInstance: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let modifyDBParameterGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let modifyDBProxy: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let modifyDBProxyEndpoint: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let modifyDBProxyTargetGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let modifyDBSnapshot: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let modifyDBSnapshotAttribute: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let modifyDBSubnetGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let modifyEventSubscription: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let modifyGlobalCluster: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let modifyOptionGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let promoteReadReplica: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let promoteReadReplicaDBCluster: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let purchaseReservedDBInstancesOffering: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let rebootDBCluster: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let rebootDBInstance: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let registerDBProxyTargets: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let removeFromGlobalCluster: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let removeRoleFromDBCluster: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let removeRoleFromDBInstance: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let removeSourceIdentifierFromSubscription: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let removeTagsFromResource: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let resetDBClusterParameterGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let resetDBParameterGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let restoreDBClusterFromS3: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let restoreDBClusterFromSnapshot: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let restoreDBClusterToPointInTime: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let restoreDBInstanceFromDBSnapshot: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let restoreDBInstanceFromS3: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let restoreDBInstanceToPointInTime: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let revokeDBSecurityGroupIngress: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let startActivityStream: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let startDBCluster: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let startDBInstance: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let startDBInstanceAutomatedBackupsReplication: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let startExportTask: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let stopActivityStream: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let stopDBCluster: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let stopDBInstance: StandardSmokeAWSOperationReporting<RDSModelOperations>
    public let stopDBInstanceAutomatedBackupsReplication: StandardSmokeAWSOperationReporting<RDSModelOperations>

    public init(clientName: String, reportingConfiguration: SmokeAWSClientReportingConfiguration<RDSModelOperations>) {
        self.addRoleToDBCluster = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .addRoleToDBCluster, configuration: reportingConfiguration)
        self.addRoleToDBInstance = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .addRoleToDBInstance, configuration: reportingConfiguration)
        self.addSourceIdentifierToSubscription = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .addSourceIdentifierToSubscription, configuration: reportingConfiguration)
        self.addTagsToResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .addTagsToResource, configuration: reportingConfiguration)
        self.applyPendingMaintenanceAction = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .applyPendingMaintenanceAction, configuration: reportingConfiguration)
        self.authorizeDBSecurityGroupIngress = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .authorizeDBSecurityGroupIngress, configuration: reportingConfiguration)
        self.backtrackDBCluster = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .backtrackDBCluster, configuration: reportingConfiguration)
        self.cancelExportTask = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .cancelExportTask, configuration: reportingConfiguration)
        self.copyDBClusterParameterGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .copyDBClusterParameterGroup, configuration: reportingConfiguration)
        self.copyDBClusterSnapshot = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .copyDBClusterSnapshot, configuration: reportingConfiguration)
        self.copyDBParameterGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .copyDBParameterGroup, configuration: reportingConfiguration)
        self.copyDBSnapshot = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .copyDBSnapshot, configuration: reportingConfiguration)
        self.copyOptionGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .copyOptionGroup, configuration: reportingConfiguration)
        self.createCustomDBEngineVersion = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createCustomDBEngineVersion, configuration: reportingConfiguration)
        self.createDBCluster = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createDBCluster, configuration: reportingConfiguration)
        self.createDBClusterEndpoint = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createDBClusterEndpoint, configuration: reportingConfiguration)
        self.createDBClusterParameterGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createDBClusterParameterGroup, configuration: reportingConfiguration)
        self.createDBClusterSnapshot = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createDBClusterSnapshot, configuration: reportingConfiguration)
        self.createDBInstance = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createDBInstance, configuration: reportingConfiguration)
        self.createDBInstanceReadReplica = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createDBInstanceReadReplica, configuration: reportingConfiguration)
        self.createDBParameterGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createDBParameterGroup, configuration: reportingConfiguration)
        self.createDBProxy = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createDBProxy, configuration: reportingConfiguration)
        self.createDBProxyEndpoint = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createDBProxyEndpoint, configuration: reportingConfiguration)
        self.createDBSecurityGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createDBSecurityGroup, configuration: reportingConfiguration)
        self.createDBSnapshot = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createDBSnapshot, configuration: reportingConfiguration)
        self.createDBSubnetGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createDBSubnetGroup, configuration: reportingConfiguration)
        self.createEventSubscription = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createEventSubscription, configuration: reportingConfiguration)
        self.createGlobalCluster = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createGlobalCluster, configuration: reportingConfiguration)
        self.createOptionGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createOptionGroup, configuration: reportingConfiguration)
        self.deleteCustomDBEngineVersion = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteCustomDBEngineVersion, configuration: reportingConfiguration)
        self.deleteDBCluster = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteDBCluster, configuration: reportingConfiguration)
        self.deleteDBClusterEndpoint = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteDBClusterEndpoint, configuration: reportingConfiguration)
        self.deleteDBClusterParameterGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteDBClusterParameterGroup, configuration: reportingConfiguration)
        self.deleteDBClusterSnapshot = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteDBClusterSnapshot, configuration: reportingConfiguration)
        self.deleteDBInstance = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteDBInstance, configuration: reportingConfiguration)
        self.deleteDBInstanceAutomatedBackup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteDBInstanceAutomatedBackup, configuration: reportingConfiguration)
        self.deleteDBParameterGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteDBParameterGroup, configuration: reportingConfiguration)
        self.deleteDBProxy = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteDBProxy, configuration: reportingConfiguration)
        self.deleteDBProxyEndpoint = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteDBProxyEndpoint, configuration: reportingConfiguration)
        self.deleteDBSecurityGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteDBSecurityGroup, configuration: reportingConfiguration)
        self.deleteDBSnapshot = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteDBSnapshot, configuration: reportingConfiguration)
        self.deleteDBSubnetGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteDBSubnetGroup, configuration: reportingConfiguration)
        self.deleteEventSubscription = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteEventSubscription, configuration: reportingConfiguration)
        self.deleteGlobalCluster = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteGlobalCluster, configuration: reportingConfiguration)
        self.deleteOptionGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteOptionGroup, configuration: reportingConfiguration)
        self.deregisterDBProxyTargets = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deregisterDBProxyTargets, configuration: reportingConfiguration)
        self.describeAccountAttributes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeAccountAttributes, configuration: reportingConfiguration)
        self.describeCertificates = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeCertificates, configuration: reportingConfiguration)
        self.describeDBClusterBacktracks = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeDBClusterBacktracks, configuration: reportingConfiguration)
        self.describeDBClusterEndpoints = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeDBClusterEndpoints, configuration: reportingConfiguration)
        self.describeDBClusterParameterGroups = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeDBClusterParameterGroups, configuration: reportingConfiguration)
        self.describeDBClusterParameters = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeDBClusterParameters, configuration: reportingConfiguration)
        self.describeDBClusterSnapshotAttributes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeDBClusterSnapshotAttributes, configuration: reportingConfiguration)
        self.describeDBClusterSnapshots = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeDBClusterSnapshots, configuration: reportingConfiguration)
        self.describeDBClusters = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeDBClusters, configuration: reportingConfiguration)
        self.describeDBEngineVersions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeDBEngineVersions, configuration: reportingConfiguration)
        self.describeDBInstanceAutomatedBackups = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeDBInstanceAutomatedBackups, configuration: reportingConfiguration)
        self.describeDBInstances = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeDBInstances, configuration: reportingConfiguration)
        self.describeDBLogFiles = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeDBLogFiles, configuration: reportingConfiguration)
        self.describeDBParameterGroups = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeDBParameterGroups, configuration: reportingConfiguration)
        self.describeDBParameters = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeDBParameters, configuration: reportingConfiguration)
        self.describeDBProxies = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeDBProxies, configuration: reportingConfiguration)
        self.describeDBProxyEndpoints = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeDBProxyEndpoints, configuration: reportingConfiguration)
        self.describeDBProxyTargetGroups = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeDBProxyTargetGroups, configuration: reportingConfiguration)
        self.describeDBProxyTargets = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeDBProxyTargets, configuration: reportingConfiguration)
        self.describeDBSecurityGroups = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeDBSecurityGroups, configuration: reportingConfiguration)
        self.describeDBSnapshotAttributes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeDBSnapshotAttributes, configuration: reportingConfiguration)
        self.describeDBSnapshots = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeDBSnapshots, configuration: reportingConfiguration)
        self.describeDBSubnetGroups = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeDBSubnetGroups, configuration: reportingConfiguration)
        self.describeEngineDefaultClusterParameters = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeEngineDefaultClusterParameters, configuration: reportingConfiguration)
        self.describeEngineDefaultParameters = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeEngineDefaultParameters, configuration: reportingConfiguration)
        self.describeEventCategories = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeEventCategories, configuration: reportingConfiguration)
        self.describeEventSubscriptions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeEventSubscriptions, configuration: reportingConfiguration)
        self.describeEvents = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeEvents, configuration: reportingConfiguration)
        self.describeExportTasks = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeExportTasks, configuration: reportingConfiguration)
        self.describeGlobalClusters = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeGlobalClusters, configuration: reportingConfiguration)
        self.describeOptionGroupOptions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeOptionGroupOptions, configuration: reportingConfiguration)
        self.describeOptionGroups = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeOptionGroups, configuration: reportingConfiguration)
        self.describeOrderableDBInstanceOptions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeOrderableDBInstanceOptions, configuration: reportingConfiguration)
        self.describePendingMaintenanceActions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describePendingMaintenanceActions, configuration: reportingConfiguration)
        self.describeReservedDBInstances = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeReservedDBInstances, configuration: reportingConfiguration)
        self.describeReservedDBInstancesOfferings = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeReservedDBInstancesOfferings, configuration: reportingConfiguration)
        self.describeSourceRegions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeSourceRegions, configuration: reportingConfiguration)
        self.describeValidDBInstanceModifications = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeValidDBInstanceModifications, configuration: reportingConfiguration)
        self.downloadDBLogFilePortion = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .downloadDBLogFilePortion, configuration: reportingConfiguration)
        self.failoverDBCluster = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .failoverDBCluster, configuration: reportingConfiguration)
        self.failoverGlobalCluster = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .failoverGlobalCluster, configuration: reportingConfiguration)
        self.listTagsForResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listTagsForResource, configuration: reportingConfiguration)
        self.modifyCertificates = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyCertificates, configuration: reportingConfiguration)
        self.modifyCurrentDBClusterCapacity = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyCurrentDBClusterCapacity, configuration: reportingConfiguration)
        self.modifyCustomDBEngineVersion = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyCustomDBEngineVersion, configuration: reportingConfiguration)
        self.modifyDBCluster = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyDBCluster, configuration: reportingConfiguration)
        self.modifyDBClusterEndpoint = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyDBClusterEndpoint, configuration: reportingConfiguration)
        self.modifyDBClusterParameterGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyDBClusterParameterGroup, configuration: reportingConfiguration)
        self.modifyDBClusterSnapshotAttribute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyDBClusterSnapshotAttribute, configuration: reportingConfiguration)
        self.modifyDBInstance = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyDBInstance, configuration: reportingConfiguration)
        self.modifyDBParameterGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyDBParameterGroup, configuration: reportingConfiguration)
        self.modifyDBProxy = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyDBProxy, configuration: reportingConfiguration)
        self.modifyDBProxyEndpoint = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyDBProxyEndpoint, configuration: reportingConfiguration)
        self.modifyDBProxyTargetGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyDBProxyTargetGroup, configuration: reportingConfiguration)
        self.modifyDBSnapshot = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyDBSnapshot, configuration: reportingConfiguration)
        self.modifyDBSnapshotAttribute = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyDBSnapshotAttribute, configuration: reportingConfiguration)
        self.modifyDBSubnetGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyDBSubnetGroup, configuration: reportingConfiguration)
        self.modifyEventSubscription = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyEventSubscription, configuration: reportingConfiguration)
        self.modifyGlobalCluster = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyGlobalCluster, configuration: reportingConfiguration)
        self.modifyOptionGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyOptionGroup, configuration: reportingConfiguration)
        self.promoteReadReplica = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .promoteReadReplica, configuration: reportingConfiguration)
        self.promoteReadReplicaDBCluster = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .promoteReadReplicaDBCluster, configuration: reportingConfiguration)
        self.purchaseReservedDBInstancesOffering = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .purchaseReservedDBInstancesOffering, configuration: reportingConfiguration)
        self.rebootDBCluster = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .rebootDBCluster, configuration: reportingConfiguration)
        self.rebootDBInstance = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .rebootDBInstance, configuration: reportingConfiguration)
        self.registerDBProxyTargets = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .registerDBProxyTargets, configuration: reportingConfiguration)
        self.removeFromGlobalCluster = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .removeFromGlobalCluster, configuration: reportingConfiguration)
        self.removeRoleFromDBCluster = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .removeRoleFromDBCluster, configuration: reportingConfiguration)
        self.removeRoleFromDBInstance = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .removeRoleFromDBInstance, configuration: reportingConfiguration)
        self.removeSourceIdentifierFromSubscription = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .removeSourceIdentifierFromSubscription, configuration: reportingConfiguration)
        self.removeTagsFromResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .removeTagsFromResource, configuration: reportingConfiguration)
        self.resetDBClusterParameterGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .resetDBClusterParameterGroup, configuration: reportingConfiguration)
        self.resetDBParameterGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .resetDBParameterGroup, configuration: reportingConfiguration)
        self.restoreDBClusterFromS3 = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .restoreDBClusterFromS3, configuration: reportingConfiguration)
        self.restoreDBClusterFromSnapshot = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .restoreDBClusterFromSnapshot, configuration: reportingConfiguration)
        self.restoreDBClusterToPointInTime = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .restoreDBClusterToPointInTime, configuration: reportingConfiguration)
        self.restoreDBInstanceFromDBSnapshot = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .restoreDBInstanceFromDBSnapshot, configuration: reportingConfiguration)
        self.restoreDBInstanceFromS3 = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .restoreDBInstanceFromS3, configuration: reportingConfiguration)
        self.restoreDBInstanceToPointInTime = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .restoreDBInstanceToPointInTime, configuration: reportingConfiguration)
        self.revokeDBSecurityGroupIngress = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .revokeDBSecurityGroupIngress, configuration: reportingConfiguration)
        self.startActivityStream = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .startActivityStream, configuration: reportingConfiguration)
        self.startDBCluster = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .startDBCluster, configuration: reportingConfiguration)
        self.startDBInstance = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .startDBInstance, configuration: reportingConfiguration)
        self.startDBInstanceAutomatedBackupsReplication = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .startDBInstanceAutomatedBackupsReplication, configuration: reportingConfiguration)
        self.startExportTask = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .startExportTask, configuration: reportingConfiguration)
        self.stopActivityStream = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .stopActivityStream, configuration: reportingConfiguration)
        self.stopDBCluster = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .stopDBCluster, configuration: reportingConfiguration)
        self.stopDBInstance = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .stopDBInstance, configuration: reportingConfiguration)
        self.stopDBInstanceAutomatedBackupsReplication = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .stopDBInstanceAutomatedBackupsReplication, configuration: reportingConfiguration)
    }
}
