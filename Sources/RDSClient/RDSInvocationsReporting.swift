// Copyright 2018-2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// -- Generated Code; do not edit --
//
// RDSInvocationsReporting.swift
// RDSClient
//

import Foundation
import SmokeAWSCore
import SmokeAWSHttp
import RDSModel

/**
 Operation reporting for the RDSModel.
 */
public struct RDSInvocationsReporting<InvocationReportingType: SmokeAWSInvocationReporting> {
    let addRoleToDBCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let addRoleToDBInstance: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let addSourceIdentifierToSubscription: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let addTagsToResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let applyPendingMaintenanceAction: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let authorizeDBSecurityGroupIngress: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let backtrackDBCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let cancelExportTask: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let copyDBClusterParameterGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let copyDBClusterSnapshot: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let copyDBParameterGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let copyDBSnapshot: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let copyOptionGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createCustomAvailabilityZone: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createDBCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createDBClusterEndpoint: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createDBClusterParameterGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createDBClusterSnapshot: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createDBInstance: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createDBInstanceReadReplica: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createDBParameterGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createDBProxy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createDBSecurityGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createDBSnapshot: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createDBSubnetGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createEventSubscription: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createGlobalCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createOptionGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteCustomAvailabilityZone: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteDBCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteDBClusterEndpoint: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteDBClusterParameterGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteDBClusterSnapshot: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteDBInstance: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteDBInstanceAutomatedBackup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteDBParameterGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteDBProxy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteDBSecurityGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteDBSnapshot: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteDBSubnetGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteEventSubscription: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteGlobalCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteInstallationMedia: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteOptionGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deregisterDBProxyTargets: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeAccountAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeCertificates: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeCustomAvailabilityZones: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeDBClusterBacktracks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeDBClusterEndpoints: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeDBClusterParameterGroups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeDBClusterParameters: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeDBClusterSnapshotAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeDBClusterSnapshots: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeDBClusters: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeDBEngineVersions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeDBInstanceAutomatedBackups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeDBInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeDBLogFiles: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeDBParameterGroups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeDBParameters: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeDBProxies: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeDBProxyTargetGroups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeDBProxyTargets: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeDBSecurityGroups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeDBSnapshotAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeDBSnapshots: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeDBSubnetGroups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeEngineDefaultClusterParameters: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeEngineDefaultParameters: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeEventCategories: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeEventSubscriptions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeEvents: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeExportTasks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeGlobalClusters: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeInstallationMedia: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeOptionGroupOptions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeOptionGroups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeOrderableDBInstanceOptions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describePendingMaintenanceActions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeReservedDBInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeReservedDBInstancesOfferings: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeSourceRegions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeValidDBInstanceModifications: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let downloadDBLogFilePortion: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let failoverDBCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let importInstallationMedia: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listTagsForResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyCertificates: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyCurrentDBClusterCapacity: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyDBCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyDBClusterEndpoint: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyDBClusterParameterGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyDBClusterSnapshotAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyDBInstance: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyDBParameterGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyDBProxy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyDBProxyTargetGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyDBSnapshot: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyDBSnapshotAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyDBSubnetGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyEventSubscription: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyGlobalCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let modifyOptionGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let promoteReadReplica: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let promoteReadReplicaDBCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let purchaseReservedDBInstancesOffering: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let rebootDBInstance: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let registerDBProxyTargets: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let removeFromGlobalCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let removeRoleFromDBCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let removeRoleFromDBInstance: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let removeSourceIdentifierFromSubscription: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let removeTagsFromResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let resetDBClusterParameterGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let resetDBParameterGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let restoreDBClusterFromS3: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let restoreDBClusterFromSnapshot: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let restoreDBClusterToPointInTime: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let restoreDBInstanceFromDBSnapshot: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let restoreDBInstanceFromS3: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let restoreDBInstanceToPointInTime: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let revokeDBSecurityGroupIngress: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let startActivityStream: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let startDBCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let startDBInstance: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let startExportTask: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let stopActivityStream: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let stopDBCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let stopDBInstance: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>

    public init(reporting: InvocationReportingType, operationsReporting: RDSOperationsReporting) {
        self.addRoleToDBCluster = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.addRoleToDBCluster)
        self.addRoleToDBInstance = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.addRoleToDBInstance)
        self.addSourceIdentifierToSubscription = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.addSourceIdentifierToSubscription)
        self.addTagsToResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.addTagsToResource)
        self.applyPendingMaintenanceAction = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.applyPendingMaintenanceAction)
        self.authorizeDBSecurityGroupIngress = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.authorizeDBSecurityGroupIngress)
        self.backtrackDBCluster = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.backtrackDBCluster)
        self.cancelExportTask = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.cancelExportTask)
        self.copyDBClusterParameterGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.copyDBClusterParameterGroup)
        self.copyDBClusterSnapshot = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.copyDBClusterSnapshot)
        self.copyDBParameterGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.copyDBParameterGroup)
        self.copyDBSnapshot = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.copyDBSnapshot)
        self.copyOptionGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.copyOptionGroup)
        self.createCustomAvailabilityZone = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createCustomAvailabilityZone)
        self.createDBCluster = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createDBCluster)
        self.createDBClusterEndpoint = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createDBClusterEndpoint)
        self.createDBClusterParameterGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createDBClusterParameterGroup)
        self.createDBClusterSnapshot = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createDBClusterSnapshot)
        self.createDBInstance = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createDBInstance)
        self.createDBInstanceReadReplica = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createDBInstanceReadReplica)
        self.createDBParameterGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createDBParameterGroup)
        self.createDBProxy = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createDBProxy)
        self.createDBSecurityGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createDBSecurityGroup)
        self.createDBSnapshot = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createDBSnapshot)
        self.createDBSubnetGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createDBSubnetGroup)
        self.createEventSubscription = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createEventSubscription)
        self.createGlobalCluster = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createGlobalCluster)
        self.createOptionGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createOptionGroup)
        self.deleteCustomAvailabilityZone = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteCustomAvailabilityZone)
        self.deleteDBCluster = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteDBCluster)
        self.deleteDBClusterEndpoint = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteDBClusterEndpoint)
        self.deleteDBClusterParameterGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteDBClusterParameterGroup)
        self.deleteDBClusterSnapshot = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteDBClusterSnapshot)
        self.deleteDBInstance = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteDBInstance)
        self.deleteDBInstanceAutomatedBackup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteDBInstanceAutomatedBackup)
        self.deleteDBParameterGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteDBParameterGroup)
        self.deleteDBProxy = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteDBProxy)
        self.deleteDBSecurityGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteDBSecurityGroup)
        self.deleteDBSnapshot = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteDBSnapshot)
        self.deleteDBSubnetGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteDBSubnetGroup)
        self.deleteEventSubscription = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteEventSubscription)
        self.deleteGlobalCluster = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteGlobalCluster)
        self.deleteInstallationMedia = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteInstallationMedia)
        self.deleteOptionGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteOptionGroup)
        self.deregisterDBProxyTargets = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deregisterDBProxyTargets)
        self.describeAccountAttributes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeAccountAttributes)
        self.describeCertificates = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeCertificates)
        self.describeCustomAvailabilityZones = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeCustomAvailabilityZones)
        self.describeDBClusterBacktracks = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeDBClusterBacktracks)
        self.describeDBClusterEndpoints = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeDBClusterEndpoints)
        self.describeDBClusterParameterGroups = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeDBClusterParameterGroups)
        self.describeDBClusterParameters = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeDBClusterParameters)
        self.describeDBClusterSnapshotAttributes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeDBClusterSnapshotAttributes)
        self.describeDBClusterSnapshots = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeDBClusterSnapshots)
        self.describeDBClusters = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeDBClusters)
        self.describeDBEngineVersions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeDBEngineVersions)
        self.describeDBInstanceAutomatedBackups = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeDBInstanceAutomatedBackups)
        self.describeDBInstances = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeDBInstances)
        self.describeDBLogFiles = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeDBLogFiles)
        self.describeDBParameterGroups = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeDBParameterGroups)
        self.describeDBParameters = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeDBParameters)
        self.describeDBProxies = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeDBProxies)
        self.describeDBProxyTargetGroups = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeDBProxyTargetGroups)
        self.describeDBProxyTargets = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeDBProxyTargets)
        self.describeDBSecurityGroups = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeDBSecurityGroups)
        self.describeDBSnapshotAttributes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeDBSnapshotAttributes)
        self.describeDBSnapshots = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeDBSnapshots)
        self.describeDBSubnetGroups = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeDBSubnetGroups)
        self.describeEngineDefaultClusterParameters = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeEngineDefaultClusterParameters)
        self.describeEngineDefaultParameters = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeEngineDefaultParameters)
        self.describeEventCategories = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeEventCategories)
        self.describeEventSubscriptions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeEventSubscriptions)
        self.describeEvents = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeEvents)
        self.describeExportTasks = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeExportTasks)
        self.describeGlobalClusters = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeGlobalClusters)
        self.describeInstallationMedia = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeInstallationMedia)
        self.describeOptionGroupOptions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeOptionGroupOptions)
        self.describeOptionGroups = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeOptionGroups)
        self.describeOrderableDBInstanceOptions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeOrderableDBInstanceOptions)
        self.describePendingMaintenanceActions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describePendingMaintenanceActions)
        self.describeReservedDBInstances = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeReservedDBInstances)
        self.describeReservedDBInstancesOfferings = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeReservedDBInstancesOfferings)
        self.describeSourceRegions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeSourceRegions)
        self.describeValidDBInstanceModifications = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeValidDBInstanceModifications)
        self.downloadDBLogFilePortion = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.downloadDBLogFilePortion)
        self.failoverDBCluster = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.failoverDBCluster)
        self.importInstallationMedia = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.importInstallationMedia)
        self.listTagsForResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listTagsForResource)
        self.modifyCertificates = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyCertificates)
        self.modifyCurrentDBClusterCapacity = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyCurrentDBClusterCapacity)
        self.modifyDBCluster = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyDBCluster)
        self.modifyDBClusterEndpoint = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyDBClusterEndpoint)
        self.modifyDBClusterParameterGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyDBClusterParameterGroup)
        self.modifyDBClusterSnapshotAttribute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyDBClusterSnapshotAttribute)
        self.modifyDBInstance = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyDBInstance)
        self.modifyDBParameterGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyDBParameterGroup)
        self.modifyDBProxy = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyDBProxy)
        self.modifyDBProxyTargetGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyDBProxyTargetGroup)
        self.modifyDBSnapshot = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyDBSnapshot)
        self.modifyDBSnapshotAttribute = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyDBSnapshotAttribute)
        self.modifyDBSubnetGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyDBSubnetGroup)
        self.modifyEventSubscription = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyEventSubscription)
        self.modifyGlobalCluster = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyGlobalCluster)
        self.modifyOptionGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyOptionGroup)
        self.promoteReadReplica = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.promoteReadReplica)
        self.promoteReadReplicaDBCluster = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.promoteReadReplicaDBCluster)
        self.purchaseReservedDBInstancesOffering = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.purchaseReservedDBInstancesOffering)
        self.rebootDBInstance = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.rebootDBInstance)
        self.registerDBProxyTargets = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.registerDBProxyTargets)
        self.removeFromGlobalCluster = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.removeFromGlobalCluster)
        self.removeRoleFromDBCluster = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.removeRoleFromDBCluster)
        self.removeRoleFromDBInstance = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.removeRoleFromDBInstance)
        self.removeSourceIdentifierFromSubscription = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.removeSourceIdentifierFromSubscription)
        self.removeTagsFromResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.removeTagsFromResource)
        self.resetDBClusterParameterGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.resetDBClusterParameterGroup)
        self.resetDBParameterGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.resetDBParameterGroup)
        self.restoreDBClusterFromS3 = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.restoreDBClusterFromS3)
        self.restoreDBClusterFromSnapshot = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.restoreDBClusterFromSnapshot)
        self.restoreDBClusterToPointInTime = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.restoreDBClusterToPointInTime)
        self.restoreDBInstanceFromDBSnapshot = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.restoreDBInstanceFromDBSnapshot)
        self.restoreDBInstanceFromS3 = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.restoreDBInstanceFromS3)
        self.restoreDBInstanceToPointInTime = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.restoreDBInstanceToPointInTime)
        self.revokeDBSecurityGroupIngress = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.revokeDBSecurityGroupIngress)
        self.startActivityStream = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.startActivityStream)
        self.startDBCluster = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.startDBCluster)
        self.startDBInstance = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.startDBInstance)
        self.startExportTask = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.startExportTask)
        self.stopActivityStream = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.stopActivityStream)
        self.stopDBCluster = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.stopDBCluster)
        self.stopDBInstance = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.stopDBInstance)
    }
}
