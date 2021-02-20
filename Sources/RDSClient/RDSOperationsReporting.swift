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
    let addRoleToDBCluster: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let addRoleToDBInstance: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let addSourceIdentifierToSubscription: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let addTagsToResource: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let applyPendingMaintenanceAction: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let authorizeDBSecurityGroupIngress: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let backtrackDBCluster: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let cancelExportTask: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let copyDBClusterParameterGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let copyDBClusterSnapshot: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let copyDBParameterGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let copyDBSnapshot: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let copyOptionGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let createCustomAvailabilityZone: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let createDBCluster: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let createDBClusterEndpoint: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let createDBClusterParameterGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let createDBClusterSnapshot: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let createDBInstance: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let createDBInstanceReadReplica: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let createDBParameterGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let createDBProxy: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let createDBSecurityGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let createDBSnapshot: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let createDBSubnetGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let createEventSubscription: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let createGlobalCluster: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let createOptionGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let deleteCustomAvailabilityZone: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let deleteDBCluster: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let deleteDBClusterEndpoint: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let deleteDBClusterParameterGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let deleteDBClusterSnapshot: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let deleteDBInstance: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let deleteDBInstanceAutomatedBackup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let deleteDBParameterGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let deleteDBProxy: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let deleteDBSecurityGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let deleteDBSnapshot: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let deleteDBSubnetGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let deleteEventSubscription: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let deleteGlobalCluster: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let deleteInstallationMedia: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let deleteOptionGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let deregisterDBProxyTargets: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeAccountAttributes: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeCertificates: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeCustomAvailabilityZones: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeDBClusterBacktracks: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeDBClusterEndpoints: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeDBClusterParameterGroups: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeDBClusterParameters: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeDBClusterSnapshotAttributes: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeDBClusterSnapshots: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeDBClusters: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeDBEngineVersions: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeDBInstanceAutomatedBackups: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeDBInstances: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeDBLogFiles: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeDBParameterGroups: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeDBParameters: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeDBProxies: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeDBProxyTargetGroups: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeDBProxyTargets: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeDBSecurityGroups: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeDBSnapshotAttributes: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeDBSnapshots: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeDBSubnetGroups: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeEngineDefaultClusterParameters: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeEngineDefaultParameters: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeEventCategories: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeEventSubscriptions: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeEvents: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeExportTasks: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeGlobalClusters: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeInstallationMedia: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeOptionGroupOptions: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeOptionGroups: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeOrderableDBInstanceOptions: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describePendingMaintenanceActions: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeReservedDBInstances: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeReservedDBInstancesOfferings: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeSourceRegions: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let describeValidDBInstanceModifications: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let downloadDBLogFilePortion: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let failoverDBCluster: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let failoverGlobalCluster: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let importInstallationMedia: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let listTagsForResource: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let modifyCertificates: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let modifyCurrentDBClusterCapacity: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let modifyDBCluster: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let modifyDBClusterEndpoint: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let modifyDBClusterParameterGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let modifyDBClusterSnapshotAttribute: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let modifyDBInstance: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let modifyDBParameterGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let modifyDBProxy: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let modifyDBProxyTargetGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let modifyDBSnapshot: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let modifyDBSnapshotAttribute: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let modifyDBSubnetGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let modifyEventSubscription: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let modifyGlobalCluster: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let modifyOptionGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let promoteReadReplica: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let promoteReadReplicaDBCluster: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let purchaseReservedDBInstancesOffering: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let rebootDBInstance: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let registerDBProxyTargets: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let removeFromGlobalCluster: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let removeRoleFromDBCluster: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let removeRoleFromDBInstance: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let removeSourceIdentifierFromSubscription: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let removeTagsFromResource: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let resetDBClusterParameterGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let resetDBParameterGroup: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let restoreDBClusterFromS3: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let restoreDBClusterFromSnapshot: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let restoreDBClusterToPointInTime: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let restoreDBInstanceFromDBSnapshot: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let restoreDBInstanceFromS3: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let restoreDBInstanceToPointInTime: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let revokeDBSecurityGroupIngress: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let startActivityStream: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let startDBCluster: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let startDBInstance: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let startDBInstanceAutomatedBackupsReplication: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let startExportTask: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let stopActivityStream: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let stopDBCluster: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let stopDBInstance: StandardSmokeAWSOperationReporting<RDSModelOperations>
    let stopDBInstanceAutomatedBackupsReplication: StandardSmokeAWSOperationReporting<RDSModelOperations>

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
        self.createCustomAvailabilityZone = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createCustomAvailabilityZone, configuration: reportingConfiguration)
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
        self.deleteCustomAvailabilityZone = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteCustomAvailabilityZone, configuration: reportingConfiguration)
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
        self.deleteInstallationMedia = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteInstallationMedia, configuration: reportingConfiguration)
        self.deleteOptionGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteOptionGroup, configuration: reportingConfiguration)
        self.deregisterDBProxyTargets = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deregisterDBProxyTargets, configuration: reportingConfiguration)
        self.describeAccountAttributes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeAccountAttributes, configuration: reportingConfiguration)
        self.describeCertificates = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeCertificates, configuration: reportingConfiguration)
        self.describeCustomAvailabilityZones = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeCustomAvailabilityZones, configuration: reportingConfiguration)
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
        self.describeInstallationMedia = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeInstallationMedia, configuration: reportingConfiguration)
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
        self.importInstallationMedia = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .importInstallationMedia, configuration: reportingConfiguration)
        self.listTagsForResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listTagsForResource, configuration: reportingConfiguration)
        self.modifyCertificates = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyCertificates, configuration: reportingConfiguration)
        self.modifyCurrentDBClusterCapacity = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .modifyCurrentDBClusterCapacity, configuration: reportingConfiguration)
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
