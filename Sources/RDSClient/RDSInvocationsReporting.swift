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
// RDSInvocationsReporting.swift
// RDSClient
//

import Foundation
import SmokeHTTPClient
import SmokeAWSHttp
import RDSModel

/**
 Invocations reporting for the RDSModel.
 */
public struct RDSInvocationsReporting<InvocationReportingType: HTTPClientCoreInvocationReporting> {
    public let addRoleToDBCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let addRoleToDBInstance: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let addSourceIdentifierToSubscription: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let addTagsToResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let applyPendingMaintenanceAction: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let authorizeDBSecurityGroupIngress: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let backtrackDBCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let cancelExportTask: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let copyDBClusterParameterGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let copyDBClusterSnapshot: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let copyDBParameterGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let copyDBSnapshot: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let copyOptionGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createCustomDBEngineVersion: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createDBCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createDBClusterEndpoint: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createDBClusterParameterGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createDBClusterSnapshot: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createDBInstance: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createDBInstanceReadReplica: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createDBParameterGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createDBProxy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createDBProxyEndpoint: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createDBSecurityGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createDBSnapshot: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createDBSubnetGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createEventSubscription: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createGlobalCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createOptionGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteCustomDBEngineVersion: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteDBCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteDBClusterEndpoint: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteDBClusterParameterGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteDBClusterSnapshot: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteDBInstance: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteDBInstanceAutomatedBackup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteDBParameterGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteDBProxy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteDBProxyEndpoint: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteDBSecurityGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteDBSnapshot: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteDBSubnetGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteEventSubscription: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteGlobalCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteOptionGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deregisterDBProxyTargets: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeAccountAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeCertificates: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeDBClusterBacktracks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeDBClusterEndpoints: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeDBClusterParameterGroups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeDBClusterParameters: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeDBClusterSnapshotAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeDBClusterSnapshots: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeDBClusters: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeDBEngineVersions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeDBInstanceAutomatedBackups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeDBInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeDBLogFiles: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeDBParameterGroups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeDBParameters: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeDBProxies: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeDBProxyEndpoints: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeDBProxyTargetGroups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeDBProxyTargets: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeDBSecurityGroups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeDBSnapshotAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeDBSnapshots: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeDBSubnetGroups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeEngineDefaultClusterParameters: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeEngineDefaultParameters: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeEventCategories: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeEventSubscriptions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeEvents: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeExportTasks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeGlobalClusters: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeOptionGroupOptions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeOptionGroups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeOrderableDBInstanceOptions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describePendingMaintenanceActions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeReservedDBInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeReservedDBInstancesOfferings: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeSourceRegions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeValidDBInstanceModifications: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let downloadDBLogFilePortion: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let failoverDBCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let failoverGlobalCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listTagsForResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyCertificates: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyCurrentDBClusterCapacity: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyCustomDBEngineVersion: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyDBCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyDBClusterEndpoint: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyDBClusterParameterGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyDBClusterSnapshotAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyDBInstance: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyDBParameterGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyDBProxy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyDBProxyEndpoint: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyDBProxyTargetGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyDBSnapshot: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyDBSnapshotAttribute: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyDBSubnetGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyEventSubscription: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyGlobalCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let modifyOptionGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let promoteReadReplica: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let promoteReadReplicaDBCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let purchaseReservedDBInstancesOffering: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let rebootDBCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let rebootDBInstance: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let registerDBProxyTargets: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let removeFromGlobalCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let removeRoleFromDBCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let removeRoleFromDBInstance: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let removeSourceIdentifierFromSubscription: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let removeTagsFromResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let resetDBClusterParameterGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let resetDBParameterGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let restoreDBClusterFromS3: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let restoreDBClusterFromSnapshot: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let restoreDBClusterToPointInTime: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let restoreDBInstanceFromDBSnapshot: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let restoreDBInstanceFromS3: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let restoreDBInstanceToPointInTime: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let revokeDBSecurityGroupIngress: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let startActivityStream: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let startDBCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let startDBInstance: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let startDBInstanceAutomatedBackupsReplication: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let startExportTask: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let stopActivityStream: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let stopDBCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let stopDBInstance: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let stopDBInstanceAutomatedBackupsReplication: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>

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
        self.createCustomDBEngineVersion = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createCustomDBEngineVersion)
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
        self.createDBProxyEndpoint = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createDBProxyEndpoint)
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
        self.deleteCustomDBEngineVersion = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteCustomDBEngineVersion)
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
        self.deleteDBProxyEndpoint = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteDBProxyEndpoint)
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
        self.deleteOptionGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteOptionGroup)
        self.deregisterDBProxyTargets = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deregisterDBProxyTargets)
        self.describeAccountAttributes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeAccountAttributes)
        self.describeCertificates = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeCertificates)
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
        self.describeDBProxyEndpoints = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeDBProxyEndpoints)
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
        self.failoverGlobalCluster = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.failoverGlobalCluster)
        self.listTagsForResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listTagsForResource)
        self.modifyCertificates = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyCertificates)
        self.modifyCurrentDBClusterCapacity = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyCurrentDBClusterCapacity)
        self.modifyCustomDBEngineVersion = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyCustomDBEngineVersion)
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
        self.modifyDBProxyEndpoint = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.modifyDBProxyEndpoint)
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
        self.rebootDBCluster = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.rebootDBCluster)
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
        self.startDBInstanceAutomatedBackupsReplication = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.startDBInstanceAutomatedBackupsReplication)
        self.startExportTask = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.startExportTask)
        self.stopActivityStream = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.stopActivityStream)
        self.stopDBCluster = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.stopDBCluster)
        self.stopDBInstance = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.stopDBInstance)
        self.stopDBInstanceAutomatedBackupsReplication = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.stopDBInstanceAutomatedBackupsReplication)
    }
}
