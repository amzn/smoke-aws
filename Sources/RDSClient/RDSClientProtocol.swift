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
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the RDS service.
 */
public protocol RDSClientProtocol {
    typealias AddRoleToDBClusterSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.AddRoleToDBClusterMessage,
            _ reporting: InvocationReportingType) throws -> ()
    typealias AddRoleToDBClusterAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.AddRoleToDBClusterMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias AddRoleToDBInstanceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.AddRoleToDBInstanceMessage,
            _ reporting: InvocationReportingType) throws -> ()
    typealias AddRoleToDBInstanceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.AddRoleToDBInstanceMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias AddSourceIdentifierToSubscriptionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.AddSourceIdentifierToSubscriptionMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription
    typealias AddSourceIdentifierToSubscriptionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.AddSourceIdentifierToSubscriptionMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription, HTTPClientError>) -> ()) throws -> ()
    typealias AddTagsToResourceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.AddTagsToResourceMessage,
            _ reporting: InvocationReportingType) throws -> ()
    typealias AddTagsToResourceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.AddTagsToResourceMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ApplyPendingMaintenanceActionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ApplyPendingMaintenanceActionMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction
    typealias ApplyPendingMaintenanceActionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ApplyPendingMaintenanceActionMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction, HTTPClientError>) -> ()) throws -> ()
    typealias AuthorizeDBSecurityGroupIngressSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.AuthorizeDBSecurityGroupIngressMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress
    typealias AuthorizeDBSecurityGroupIngressAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.AuthorizeDBSecurityGroupIngressMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress, HTTPClientError>) -> ()) throws -> ()
    typealias BacktrackDBClusterSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.BacktrackDBClusterMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DBClusterBacktrackForBacktrackDBCluster
    typealias BacktrackDBClusterAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.BacktrackDBClusterMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DBClusterBacktrackForBacktrackDBCluster, HTTPClientError>) -> ()) throws -> ()
    typealias CancelExportTaskSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CancelExportTaskMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.ExportTaskForCancelExportTask
    typealias CancelExportTaskAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CancelExportTaskMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.ExportTaskForCancelExportTask, HTTPClientError>) -> ()) throws -> ()
    typealias CopyDBClusterParameterGroupSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CopyDBClusterParameterGroupMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup
    typealias CopyDBClusterParameterGroupAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CopyDBClusterParameterGroupMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup, HTTPClientError>) -> ()) throws -> ()
    typealias CopyDBClusterSnapshotSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CopyDBClusterSnapshotMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.CopyDBClusterSnapshotResultForCopyDBClusterSnapshot
    typealias CopyDBClusterSnapshotAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CopyDBClusterSnapshotMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.CopyDBClusterSnapshotResultForCopyDBClusterSnapshot, HTTPClientError>) -> ()) throws -> ()
    typealias CopyDBParameterGroupSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CopyDBParameterGroupMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.CopyDBParameterGroupResultForCopyDBParameterGroup
    typealias CopyDBParameterGroupAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CopyDBParameterGroupMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.CopyDBParameterGroupResultForCopyDBParameterGroup, HTTPClientError>) -> ()) throws -> ()
    typealias CopyDBSnapshotSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CopyDBSnapshotMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.CopyDBSnapshotResultForCopyDBSnapshot
    typealias CopyDBSnapshotAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CopyDBSnapshotMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.CopyDBSnapshotResultForCopyDBSnapshot, HTTPClientError>) -> ()) throws -> ()
    typealias CopyOptionGroupSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CopyOptionGroupMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.CopyOptionGroupResultForCopyOptionGroup
    typealias CopyOptionGroupAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CopyOptionGroupMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.CopyOptionGroupResultForCopyOptionGroup, HTTPClientError>) -> ()) throws -> ()
    typealias CreateCustomAvailabilityZoneSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CreateCustomAvailabilityZoneMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.CreateCustomAvailabilityZoneResultForCreateCustomAvailabilityZone
    typealias CreateCustomAvailabilityZoneAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CreateCustomAvailabilityZoneMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.CreateCustomAvailabilityZoneResultForCreateCustomAvailabilityZone, HTTPClientError>) -> ()) throws -> ()
    typealias CreateDBClusterSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CreateDBClusterMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.CreateDBClusterResultForCreateDBCluster
    typealias CreateDBClusterAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CreateDBClusterMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.CreateDBClusterResultForCreateDBCluster, HTTPClientError>) -> ()) throws -> ()
    typealias CreateDBClusterEndpointSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CreateDBClusterEndpointMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DBClusterEndpointForCreateDBClusterEndpoint
    typealias CreateDBClusterEndpointAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CreateDBClusterEndpointMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DBClusterEndpointForCreateDBClusterEndpoint, HTTPClientError>) -> ()) throws -> ()
    typealias CreateDBClusterParameterGroupSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CreateDBClusterParameterGroupMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup
    typealias CreateDBClusterParameterGroupAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CreateDBClusterParameterGroupMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup, HTTPClientError>) -> ()) throws -> ()
    typealias CreateDBClusterSnapshotSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CreateDBClusterSnapshotMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.CreateDBClusterSnapshotResultForCreateDBClusterSnapshot
    typealias CreateDBClusterSnapshotAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CreateDBClusterSnapshotMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.CreateDBClusterSnapshotResultForCreateDBClusterSnapshot, HTTPClientError>) -> ()) throws -> ()
    typealias CreateDBInstanceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CreateDBInstanceMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.CreateDBInstanceResultForCreateDBInstance
    typealias CreateDBInstanceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CreateDBInstanceMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.CreateDBInstanceResultForCreateDBInstance, HTTPClientError>) -> ()) throws -> ()
    typealias CreateDBInstanceReadReplicaSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CreateDBInstanceReadReplicaMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica
    typealias CreateDBInstanceReadReplicaAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CreateDBInstanceReadReplicaMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica, HTTPClientError>) -> ()) throws -> ()
    typealias CreateDBParameterGroupSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CreateDBParameterGroupMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.CreateDBParameterGroupResultForCreateDBParameterGroup
    typealias CreateDBParameterGroupAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CreateDBParameterGroupMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.CreateDBParameterGroupResultForCreateDBParameterGroup, HTTPClientError>) -> ()) throws -> ()
    typealias CreateDBProxySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CreateDBProxyRequest,
            _ reporting: InvocationReportingType) throws -> RDSModel.CreateDBProxyResponseForCreateDBProxy
    typealias CreateDBProxyAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CreateDBProxyRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.CreateDBProxyResponseForCreateDBProxy, HTTPClientError>) -> ()) throws -> ()
    typealias CreateDBSecurityGroupSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CreateDBSecurityGroupMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.CreateDBSecurityGroupResultForCreateDBSecurityGroup
    typealias CreateDBSecurityGroupAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CreateDBSecurityGroupMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.CreateDBSecurityGroupResultForCreateDBSecurityGroup, HTTPClientError>) -> ()) throws -> ()
    typealias CreateDBSnapshotSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CreateDBSnapshotMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.CreateDBSnapshotResultForCreateDBSnapshot
    typealias CreateDBSnapshotAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CreateDBSnapshotMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.CreateDBSnapshotResultForCreateDBSnapshot, HTTPClientError>) -> ()) throws -> ()
    typealias CreateDBSubnetGroupSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CreateDBSubnetGroupMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.CreateDBSubnetGroupResultForCreateDBSubnetGroup
    typealias CreateDBSubnetGroupAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CreateDBSubnetGroupMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.CreateDBSubnetGroupResultForCreateDBSubnetGroup, HTTPClientError>) -> ()) throws -> ()
    typealias CreateEventSubscriptionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CreateEventSubscriptionMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.CreateEventSubscriptionResultForCreateEventSubscription
    typealias CreateEventSubscriptionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CreateEventSubscriptionMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.CreateEventSubscriptionResultForCreateEventSubscription, HTTPClientError>) -> ()) throws -> ()
    typealias CreateGlobalClusterSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CreateGlobalClusterMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.CreateGlobalClusterResultForCreateGlobalCluster
    typealias CreateGlobalClusterAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CreateGlobalClusterMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.CreateGlobalClusterResultForCreateGlobalCluster, HTTPClientError>) -> ()) throws -> ()
    typealias CreateOptionGroupSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CreateOptionGroupMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.CreateOptionGroupResultForCreateOptionGroup
    typealias CreateOptionGroupAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.CreateOptionGroupMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.CreateOptionGroupResultForCreateOptionGroup, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteCustomAvailabilityZoneSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeleteCustomAvailabilityZoneMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DeleteCustomAvailabilityZoneResultForDeleteCustomAvailabilityZone
    typealias DeleteCustomAvailabilityZoneAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeleteCustomAvailabilityZoneMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DeleteCustomAvailabilityZoneResultForDeleteCustomAvailabilityZone, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteDBClusterSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeleteDBClusterMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DeleteDBClusterResultForDeleteDBCluster
    typealias DeleteDBClusterAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeleteDBClusterMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DeleteDBClusterResultForDeleteDBCluster, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteDBClusterEndpointSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeleteDBClusterEndpointMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DBClusterEndpointForDeleteDBClusterEndpoint
    typealias DeleteDBClusterEndpointAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeleteDBClusterEndpointMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DBClusterEndpointForDeleteDBClusterEndpoint, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteDBClusterParameterGroupSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeleteDBClusterParameterGroupMessage,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteDBClusterParameterGroupAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeleteDBClusterParameterGroupMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteDBClusterSnapshotSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeleteDBClusterSnapshotMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot
    typealias DeleteDBClusterSnapshotAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeleteDBClusterSnapshotMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteDBInstanceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeleteDBInstanceMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DeleteDBInstanceResultForDeleteDBInstance
    typealias DeleteDBInstanceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeleteDBInstanceMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DeleteDBInstanceResultForDeleteDBInstance, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteDBInstanceAutomatedBackupSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeleteDBInstanceAutomatedBackupMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup
    typealias DeleteDBInstanceAutomatedBackupAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeleteDBInstanceAutomatedBackupMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteDBParameterGroupSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeleteDBParameterGroupMessage,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteDBParameterGroupAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeleteDBParameterGroupMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteDBProxySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeleteDBProxyRequest,
            _ reporting: InvocationReportingType) throws -> RDSModel.DeleteDBProxyResponseForDeleteDBProxy
    typealias DeleteDBProxyAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeleteDBProxyRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DeleteDBProxyResponseForDeleteDBProxy, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteDBSecurityGroupSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeleteDBSecurityGroupMessage,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteDBSecurityGroupAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeleteDBSecurityGroupMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteDBSnapshotSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeleteDBSnapshotMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DeleteDBSnapshotResultForDeleteDBSnapshot
    typealias DeleteDBSnapshotAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeleteDBSnapshotMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DeleteDBSnapshotResultForDeleteDBSnapshot, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteDBSubnetGroupSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeleteDBSubnetGroupMessage,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteDBSubnetGroupAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeleteDBSubnetGroupMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteEventSubscriptionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeleteEventSubscriptionMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DeleteEventSubscriptionResultForDeleteEventSubscription
    typealias DeleteEventSubscriptionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeleteEventSubscriptionMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DeleteEventSubscriptionResultForDeleteEventSubscription, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteGlobalClusterSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeleteGlobalClusterMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DeleteGlobalClusterResultForDeleteGlobalCluster
    typealias DeleteGlobalClusterAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeleteGlobalClusterMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DeleteGlobalClusterResultForDeleteGlobalCluster, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteInstallationMediaSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeleteInstallationMediaMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.InstallationMediaForDeleteInstallationMedia
    typealias DeleteInstallationMediaAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeleteInstallationMediaMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.InstallationMediaForDeleteInstallationMedia, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteOptionGroupSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeleteOptionGroupMessage,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteOptionGroupAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeleteOptionGroupMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeregisterDBProxyTargetsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeregisterDBProxyTargetsRequest,
            _ reporting: InvocationReportingType) throws -> RDSModel.DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets
    typealias DeregisterDBProxyTargetsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DeregisterDBProxyTargetsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeAccountAttributesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeAccountAttributesMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.AccountAttributesMessageForDescribeAccountAttributes
    typealias DescribeAccountAttributesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeAccountAttributesMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.AccountAttributesMessageForDescribeAccountAttributes, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeCertificatesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeCertificatesMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.CertificateMessageForDescribeCertificates
    typealias DescribeCertificatesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeCertificatesMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.CertificateMessageForDescribeCertificates, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeCustomAvailabilityZonesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeCustomAvailabilityZonesMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.CustomAvailabilityZoneMessageForDescribeCustomAvailabilityZones
    typealias DescribeCustomAvailabilityZonesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeCustomAvailabilityZonesMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.CustomAvailabilityZoneMessageForDescribeCustomAvailabilityZones, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBClusterBacktracksSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBClusterBacktracksMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DBClusterBacktrackMessageForDescribeDBClusterBacktracks
    typealias DescribeDBClusterBacktracksAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBClusterBacktracksMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DBClusterBacktrackMessageForDescribeDBClusterBacktracks, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBClusterEndpointsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBClusterEndpointsMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DBClusterEndpointMessageForDescribeDBClusterEndpoints
    typealias DescribeDBClusterEndpointsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBClusterEndpointsMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DBClusterEndpointMessageForDescribeDBClusterEndpoints, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBClusterParameterGroupsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBClusterParameterGroupsMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups
    typealias DescribeDBClusterParameterGroupsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBClusterParameterGroupsMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBClusterParametersSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBClusterParametersMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DBClusterParameterGroupDetailsForDescribeDBClusterParameters
    typealias DescribeDBClusterParametersAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBClusterParametersMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DBClusterParameterGroupDetailsForDescribeDBClusterParameters, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBClusterSnapshotAttributesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBClusterSnapshotAttributesMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes
    typealias DescribeDBClusterSnapshotAttributesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBClusterSnapshotAttributesMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBClusterSnapshotsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBClusterSnapshotsMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DBClusterSnapshotMessageForDescribeDBClusterSnapshots
    typealias DescribeDBClusterSnapshotsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBClusterSnapshotsMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DBClusterSnapshotMessageForDescribeDBClusterSnapshots, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBClustersSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBClustersMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DBClusterMessageForDescribeDBClusters
    typealias DescribeDBClustersAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBClustersMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DBClusterMessageForDescribeDBClusters, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBEngineVersionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBEngineVersionsMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DBEngineVersionMessageForDescribeDBEngineVersions
    typealias DescribeDBEngineVersionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBEngineVersionsMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DBEngineVersionMessageForDescribeDBEngineVersions, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBInstanceAutomatedBackupsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBInstanceAutomatedBackupsMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups
    typealias DescribeDBInstanceAutomatedBackupsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBInstanceAutomatedBackupsMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBInstancesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBInstancesMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DBInstanceMessageForDescribeDBInstances
    typealias DescribeDBInstancesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBInstancesMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DBInstanceMessageForDescribeDBInstances, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBLogFilesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBLogFilesMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DescribeDBLogFilesResponseForDescribeDBLogFiles
    typealias DescribeDBLogFilesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBLogFilesMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DescribeDBLogFilesResponseForDescribeDBLogFiles, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBParameterGroupsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBParameterGroupsMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DBParameterGroupsMessageForDescribeDBParameterGroups
    typealias DescribeDBParameterGroupsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBParameterGroupsMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DBParameterGroupsMessageForDescribeDBParameterGroups, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBParametersSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBParametersMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DBParameterGroupDetailsForDescribeDBParameters
    typealias DescribeDBParametersAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBParametersMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DBParameterGroupDetailsForDescribeDBParameters, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBProxiesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBProxiesRequest,
            _ reporting: InvocationReportingType) throws -> RDSModel.DescribeDBProxiesResponseForDescribeDBProxies
    typealias DescribeDBProxiesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBProxiesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DescribeDBProxiesResponseForDescribeDBProxies, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBProxyTargetGroupsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBProxyTargetGroupsRequest,
            _ reporting: InvocationReportingType) throws -> RDSModel.DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups
    typealias DescribeDBProxyTargetGroupsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBProxyTargetGroupsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBProxyTargetsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBProxyTargetsRequest,
            _ reporting: InvocationReportingType) throws -> RDSModel.DescribeDBProxyTargetsResponseForDescribeDBProxyTargets
    typealias DescribeDBProxyTargetsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBProxyTargetsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DescribeDBProxyTargetsResponseForDescribeDBProxyTargets, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBSecurityGroupsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBSecurityGroupsMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DBSecurityGroupMessageForDescribeDBSecurityGroups
    typealias DescribeDBSecurityGroupsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBSecurityGroupsMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DBSecurityGroupMessageForDescribeDBSecurityGroups, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBSnapshotAttributesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBSnapshotAttributesMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes
    typealias DescribeDBSnapshotAttributesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBSnapshotAttributesMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBSnapshotsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBSnapshotsMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DBSnapshotMessageForDescribeDBSnapshots
    typealias DescribeDBSnapshotsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBSnapshotsMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DBSnapshotMessageForDescribeDBSnapshots, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBSubnetGroupsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBSubnetGroupsMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DBSubnetGroupMessageForDescribeDBSubnetGroups
    typealias DescribeDBSubnetGroupsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeDBSubnetGroupsMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DBSubnetGroupMessageForDescribeDBSubnetGroups, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeEngineDefaultClusterParametersSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeEngineDefaultClusterParametersMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters
    typealias DescribeEngineDefaultClusterParametersAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeEngineDefaultClusterParametersMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeEngineDefaultParametersSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeEngineDefaultParametersMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters
    typealias DescribeEngineDefaultParametersAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeEngineDefaultParametersMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeEventCategoriesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeEventCategoriesMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.EventCategoriesMessageForDescribeEventCategories
    typealias DescribeEventCategoriesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeEventCategoriesMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.EventCategoriesMessageForDescribeEventCategories, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeEventSubscriptionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeEventSubscriptionsMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.EventSubscriptionsMessageForDescribeEventSubscriptions
    typealias DescribeEventSubscriptionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeEventSubscriptionsMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.EventSubscriptionsMessageForDescribeEventSubscriptions, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeEventsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeEventsMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.EventsMessageForDescribeEvents
    typealias DescribeEventsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeEventsMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.EventsMessageForDescribeEvents, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeExportTasksSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeExportTasksMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.ExportTasksMessageForDescribeExportTasks
    typealias DescribeExportTasksAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeExportTasksMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.ExportTasksMessageForDescribeExportTasks, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeGlobalClustersSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeGlobalClustersMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.GlobalClustersMessageForDescribeGlobalClusters
    typealias DescribeGlobalClustersAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeGlobalClustersMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.GlobalClustersMessageForDescribeGlobalClusters, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeInstallationMediaSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeInstallationMediaMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.InstallationMediaMessageForDescribeInstallationMedia
    typealias DescribeInstallationMediaAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeInstallationMediaMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.InstallationMediaMessageForDescribeInstallationMedia, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeOptionGroupOptionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeOptionGroupOptionsMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.OptionGroupOptionsMessageForDescribeOptionGroupOptions
    typealias DescribeOptionGroupOptionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeOptionGroupOptionsMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.OptionGroupOptionsMessageForDescribeOptionGroupOptions, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeOptionGroupsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeOptionGroupsMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.OptionGroupsForDescribeOptionGroups
    typealias DescribeOptionGroupsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeOptionGroupsMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.OptionGroupsForDescribeOptionGroups, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeOrderableDBInstanceOptionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeOrderableDBInstanceOptionsMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions
    typealias DescribeOrderableDBInstanceOptionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeOrderableDBInstanceOptionsMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions, HTTPClientError>) -> ()) throws -> ()
    typealias DescribePendingMaintenanceActionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribePendingMaintenanceActionsMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions
    typealias DescribePendingMaintenanceActionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribePendingMaintenanceActionsMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeReservedDBInstancesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeReservedDBInstancesMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.ReservedDBInstanceMessageForDescribeReservedDBInstances
    typealias DescribeReservedDBInstancesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeReservedDBInstancesMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.ReservedDBInstanceMessageForDescribeReservedDBInstances, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeReservedDBInstancesOfferingsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeReservedDBInstancesOfferingsMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings
    typealias DescribeReservedDBInstancesOfferingsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeReservedDBInstancesOfferingsMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeSourceRegionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeSourceRegionsMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.SourceRegionMessageForDescribeSourceRegions
    typealias DescribeSourceRegionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeSourceRegionsMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.SourceRegionMessageForDescribeSourceRegions, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeValidDBInstanceModificationsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeValidDBInstanceModificationsMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications
    typealias DescribeValidDBInstanceModificationsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DescribeValidDBInstanceModificationsMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications, HTTPClientError>) -> ()) throws -> ()
    typealias DownloadDBLogFilePortionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DownloadDBLogFilePortionMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion
    typealias DownloadDBLogFilePortionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.DownloadDBLogFilePortionMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion, HTTPClientError>) -> ()) throws -> ()
    typealias FailoverDBClusterSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.FailoverDBClusterMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.FailoverDBClusterResultForFailoverDBCluster
    typealias FailoverDBClusterAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.FailoverDBClusterMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.FailoverDBClusterResultForFailoverDBCluster, HTTPClientError>) -> ()) throws -> ()
    typealias ImportInstallationMediaSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ImportInstallationMediaMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.InstallationMediaForImportInstallationMedia
    typealias ImportInstallationMediaAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ImportInstallationMediaMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.InstallationMediaForImportInstallationMedia, HTTPClientError>) -> ()) throws -> ()
    typealias ListTagsForResourceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ListTagsForResourceMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.TagListMessageForListTagsForResource
    typealias ListTagsForResourceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ListTagsForResourceMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.TagListMessageForListTagsForResource, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyCertificatesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ModifyCertificatesMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.ModifyCertificatesResultForModifyCertificates
    typealias ModifyCertificatesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ModifyCertificatesMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.ModifyCertificatesResultForModifyCertificates, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyCurrentDBClusterCapacitySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ModifyCurrentDBClusterCapacityMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DBClusterCapacityInfoForModifyCurrentDBClusterCapacity
    typealias ModifyCurrentDBClusterCapacityAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ModifyCurrentDBClusterCapacityMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DBClusterCapacityInfoForModifyCurrentDBClusterCapacity, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyDBClusterSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ModifyDBClusterMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.ModifyDBClusterResultForModifyDBCluster
    typealias ModifyDBClusterAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ModifyDBClusterMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.ModifyDBClusterResultForModifyDBCluster, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyDBClusterEndpointSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ModifyDBClusterEndpointMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DBClusterEndpointForModifyDBClusterEndpoint
    typealias ModifyDBClusterEndpointAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ModifyDBClusterEndpointMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DBClusterEndpointForModifyDBClusterEndpoint, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyDBClusterParameterGroupSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ModifyDBClusterParameterGroupMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup
    typealias ModifyDBClusterParameterGroupAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ModifyDBClusterParameterGroupMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyDBClusterSnapshotAttributeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ModifyDBClusterSnapshotAttributeMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute
    typealias ModifyDBClusterSnapshotAttributeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ModifyDBClusterSnapshotAttributeMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyDBInstanceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ModifyDBInstanceMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.ModifyDBInstanceResultForModifyDBInstance
    typealias ModifyDBInstanceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ModifyDBInstanceMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.ModifyDBInstanceResultForModifyDBInstance, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyDBParameterGroupSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ModifyDBParameterGroupMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DBParameterGroupNameMessageForModifyDBParameterGroup
    typealias ModifyDBParameterGroupAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ModifyDBParameterGroupMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DBParameterGroupNameMessageForModifyDBParameterGroup, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyDBProxySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ModifyDBProxyRequest,
            _ reporting: InvocationReportingType) throws -> RDSModel.ModifyDBProxyResponseForModifyDBProxy
    typealias ModifyDBProxyAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ModifyDBProxyRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.ModifyDBProxyResponseForModifyDBProxy, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyDBProxyTargetGroupSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ModifyDBProxyTargetGroupRequest,
            _ reporting: InvocationReportingType) throws -> RDSModel.ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup
    typealias ModifyDBProxyTargetGroupAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ModifyDBProxyTargetGroupRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyDBSnapshotSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ModifyDBSnapshotMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.ModifyDBSnapshotResultForModifyDBSnapshot
    typealias ModifyDBSnapshotAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ModifyDBSnapshotMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.ModifyDBSnapshotResultForModifyDBSnapshot, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyDBSnapshotAttributeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ModifyDBSnapshotAttributeMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute
    typealias ModifyDBSnapshotAttributeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ModifyDBSnapshotAttributeMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyDBSubnetGroupSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ModifyDBSubnetGroupMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.ModifyDBSubnetGroupResultForModifyDBSubnetGroup
    typealias ModifyDBSubnetGroupAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ModifyDBSubnetGroupMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.ModifyDBSubnetGroupResultForModifyDBSubnetGroup, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyEventSubscriptionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ModifyEventSubscriptionMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.ModifyEventSubscriptionResultForModifyEventSubscription
    typealias ModifyEventSubscriptionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ModifyEventSubscriptionMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.ModifyEventSubscriptionResultForModifyEventSubscription, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyGlobalClusterSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ModifyGlobalClusterMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.ModifyGlobalClusterResultForModifyGlobalCluster
    typealias ModifyGlobalClusterAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ModifyGlobalClusterMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.ModifyGlobalClusterResultForModifyGlobalCluster, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyOptionGroupSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ModifyOptionGroupMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.ModifyOptionGroupResultForModifyOptionGroup
    typealias ModifyOptionGroupAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ModifyOptionGroupMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.ModifyOptionGroupResultForModifyOptionGroup, HTTPClientError>) -> ()) throws -> ()
    typealias PromoteReadReplicaSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.PromoteReadReplicaMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.PromoteReadReplicaResultForPromoteReadReplica
    typealias PromoteReadReplicaAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.PromoteReadReplicaMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.PromoteReadReplicaResultForPromoteReadReplica, HTTPClientError>) -> ()) throws -> ()
    typealias PromoteReadReplicaDBClusterSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.PromoteReadReplicaDBClusterMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster
    typealias PromoteReadReplicaDBClusterAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.PromoteReadReplicaDBClusterMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster, HTTPClientError>) -> ()) throws -> ()
    typealias PurchaseReservedDBInstancesOfferingSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.PurchaseReservedDBInstancesOfferingMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering
    typealias PurchaseReservedDBInstancesOfferingAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.PurchaseReservedDBInstancesOfferingMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering, HTTPClientError>) -> ()) throws -> ()
    typealias RebootDBInstanceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.RebootDBInstanceMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.RebootDBInstanceResultForRebootDBInstance
    typealias RebootDBInstanceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.RebootDBInstanceMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.RebootDBInstanceResultForRebootDBInstance, HTTPClientError>) -> ()) throws -> ()
    typealias RegisterDBProxyTargetsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.RegisterDBProxyTargetsRequest,
            _ reporting: InvocationReportingType) throws -> RDSModel.RegisterDBProxyTargetsResponseForRegisterDBProxyTargets
    typealias RegisterDBProxyTargetsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.RegisterDBProxyTargetsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.RegisterDBProxyTargetsResponseForRegisterDBProxyTargets, HTTPClientError>) -> ()) throws -> ()
    typealias RemoveFromGlobalClusterSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.RemoveFromGlobalClusterMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.RemoveFromGlobalClusterResultForRemoveFromGlobalCluster
    typealias RemoveFromGlobalClusterAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.RemoveFromGlobalClusterMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.RemoveFromGlobalClusterResultForRemoveFromGlobalCluster, HTTPClientError>) -> ()) throws -> ()
    typealias RemoveRoleFromDBClusterSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.RemoveRoleFromDBClusterMessage,
            _ reporting: InvocationReportingType) throws -> ()
    typealias RemoveRoleFromDBClusterAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.RemoveRoleFromDBClusterMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RemoveRoleFromDBInstanceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.RemoveRoleFromDBInstanceMessage,
            _ reporting: InvocationReportingType) throws -> ()
    typealias RemoveRoleFromDBInstanceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.RemoveRoleFromDBInstanceMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RemoveSourceIdentifierFromSubscriptionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.RemoveSourceIdentifierFromSubscriptionMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription
    typealias RemoveSourceIdentifierFromSubscriptionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.RemoveSourceIdentifierFromSubscriptionMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription, HTTPClientError>) -> ()) throws -> ()
    typealias RemoveTagsFromResourceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.RemoveTagsFromResourceMessage,
            _ reporting: InvocationReportingType) throws -> ()
    typealias RemoveTagsFromResourceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.RemoveTagsFromResourceMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ResetDBClusterParameterGroupSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ResetDBClusterParameterGroupMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup
    typealias ResetDBClusterParameterGroupAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ResetDBClusterParameterGroupMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup, HTTPClientError>) -> ()) throws -> ()
    typealias ResetDBParameterGroupSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ResetDBParameterGroupMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.DBParameterGroupNameMessageForResetDBParameterGroup
    typealias ResetDBParameterGroupAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.ResetDBParameterGroupMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.DBParameterGroupNameMessageForResetDBParameterGroup, HTTPClientError>) -> ()) throws -> ()
    typealias RestoreDBClusterFromS3SyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.RestoreDBClusterFromS3Message,
            _ reporting: InvocationReportingType) throws -> RDSModel.RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3
    typealias RestoreDBClusterFromS3AsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.RestoreDBClusterFromS3Message, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3, HTTPClientError>) -> ()) throws -> ()
    typealias RestoreDBClusterFromSnapshotSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.RestoreDBClusterFromSnapshotMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot
    typealias RestoreDBClusterFromSnapshotAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.RestoreDBClusterFromSnapshotMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot, HTTPClientError>) -> ()) throws -> ()
    typealias RestoreDBClusterToPointInTimeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.RestoreDBClusterToPointInTimeMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime
    typealias RestoreDBClusterToPointInTimeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.RestoreDBClusterToPointInTimeMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime, HTTPClientError>) -> ()) throws -> ()
    typealias RestoreDBInstanceFromDBSnapshotSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.RestoreDBInstanceFromDBSnapshotMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot
    typealias RestoreDBInstanceFromDBSnapshotAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.RestoreDBInstanceFromDBSnapshotMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot, HTTPClientError>) -> ()) throws -> ()
    typealias RestoreDBInstanceFromS3SyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.RestoreDBInstanceFromS3Message,
            _ reporting: InvocationReportingType) throws -> RDSModel.RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3
    typealias RestoreDBInstanceFromS3AsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.RestoreDBInstanceFromS3Message, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3, HTTPClientError>) -> ()) throws -> ()
    typealias RestoreDBInstanceToPointInTimeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.RestoreDBInstanceToPointInTimeMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime
    typealias RestoreDBInstanceToPointInTimeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.RestoreDBInstanceToPointInTimeMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime, HTTPClientError>) -> ()) throws -> ()
    typealias RevokeDBSecurityGroupIngressSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.RevokeDBSecurityGroupIngressMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress
    typealias RevokeDBSecurityGroupIngressAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.RevokeDBSecurityGroupIngressMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress, HTTPClientError>) -> ()) throws -> ()
    typealias StartActivityStreamSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.StartActivityStreamRequest,
            _ reporting: InvocationReportingType) throws -> RDSModel.StartActivityStreamResponseForStartActivityStream
    typealias StartActivityStreamAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.StartActivityStreamRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.StartActivityStreamResponseForStartActivityStream, HTTPClientError>) -> ()) throws -> ()
    typealias StartDBClusterSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.StartDBClusterMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.StartDBClusterResultForStartDBCluster
    typealias StartDBClusterAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.StartDBClusterMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.StartDBClusterResultForStartDBCluster, HTTPClientError>) -> ()) throws -> ()
    typealias StartDBInstanceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.StartDBInstanceMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.StartDBInstanceResultForStartDBInstance
    typealias StartDBInstanceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.StartDBInstanceMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.StartDBInstanceResultForStartDBInstance, HTTPClientError>) -> ()) throws -> ()
    typealias StartExportTaskSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.StartExportTaskMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.ExportTaskForStartExportTask
    typealias StartExportTaskAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.StartExportTaskMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.ExportTaskForStartExportTask, HTTPClientError>) -> ()) throws -> ()
    typealias StopActivityStreamSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.StopActivityStreamRequest,
            _ reporting: InvocationReportingType) throws -> RDSModel.StopActivityStreamResponseForStopActivityStream
    typealias StopActivityStreamAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.StopActivityStreamRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.StopActivityStreamResponseForStopActivityStream, HTTPClientError>) -> ()) throws -> ()
    typealias StopDBClusterSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.StopDBClusterMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.StopDBClusterResultForStopDBCluster
    typealias StopDBClusterAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.StopDBClusterMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.StopDBClusterResultForStopDBCluster, HTTPClientError>) -> ()) throws -> ()
    typealias StopDBInstanceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.StopDBInstanceMessage,
            _ reporting: InvocationReportingType) throws -> RDSModel.StopDBInstanceResultForStopDBInstance
    typealias StopDBInstanceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSModel.StopDBInstanceMessage, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSModel.StopDBInstanceResultForStopDBInstance, HTTPClientError>) -> ()) throws -> ()

    /**
     Invokes the AddRoleToDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddRoleToDBClusterMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBClusterNotFound, dBClusterRoleAlreadyExists, dBClusterRoleQuotaExceeded, invalidDBClusterState.
     */
    func addRoleToDBClusterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.AddRoleToDBClusterMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the AddRoleToDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddRoleToDBClusterMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBClusterRoleAlreadyExists, dBClusterRoleQuotaExceeded, invalidDBClusterState.
     */
    func addRoleToDBClusterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.AddRoleToDBClusterMessage,
            reporting: InvocationReportingType) throws

    /**
     Invokes the AddRoleToDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddRoleToDBInstanceMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBInstanceNotFound, dBInstanceRoleAlreadyExists, dBInstanceRoleQuotaExceeded, invalidDBInstanceState.
     */
    func addRoleToDBInstanceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.AddRoleToDBInstanceMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the AddRoleToDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddRoleToDBInstanceMessage object being passed to this operation.
     - Throws: dBInstanceNotFound, dBInstanceRoleAlreadyExists, dBInstanceRoleQuotaExceeded, invalidDBInstanceState.
     */
    func addRoleToDBInstanceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.AddRoleToDBInstanceMessage,
            reporting: InvocationReportingType) throws

    /**
     Invokes the AddSourceIdentifierToSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddSourceIdentifierToSubscriptionMessage object being passed to this operation.
         - completion: The AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription object or an error will be passed to this 
           callback when the operation is complete. The AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription
           object will be validated before being returned to caller.
           The possible errors are: sourceNotFound, subscriptionNotFound.
     */
    func addSourceIdentifierToSubscriptionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.AddSourceIdentifierToSubscriptionMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription, HTTPClientError>) -> ()) throws

    /**
     Invokes the AddSourceIdentifierToSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddSourceIdentifierToSubscriptionMessage object being passed to this operation.
     - Returns: The AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: sourceNotFound, subscriptionNotFound.
     */
    func addSourceIdentifierToSubscriptionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.AddSourceIdentifierToSubscriptionMessage,
            reporting: InvocationReportingType) throws -> RDSModel.AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription

    /**
     Invokes the AddTagsToResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddTagsToResourceMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    func addTagsToResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.AddTagsToResourceMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the AddTagsToResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddTagsToResourceMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    func addTagsToResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.AddTagsToResourceMessage,
            reporting: InvocationReportingType) throws

    /**
     Invokes the ApplyPendingMaintenanceAction operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ApplyPendingMaintenanceActionMessage object being passed to this operation.
         - completion: The ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction object or an error will be passed to this 
           callback when the operation is complete. The ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction
           object will be validated before being returned to caller.
           The possible errors are: invalidDBClusterState, invalidDBInstanceState, resourceNotFound.
     */
    func applyPendingMaintenanceActionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ApplyPendingMaintenanceActionMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction, HTTPClientError>) -> ()) throws

    /**
     Invokes the ApplyPendingMaintenanceAction operation waiting for the response before returning.

     - Parameters:
         - input: The validated ApplyPendingMaintenanceActionMessage object being passed to this operation.
     - Returns: The ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidDBClusterState, invalidDBInstanceState, resourceNotFound.
     */
    func applyPendingMaintenanceActionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ApplyPendingMaintenanceActionMessage,
            reporting: InvocationReportingType) throws -> RDSModel.ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction

    /**
     Invokes the AuthorizeDBSecurityGroupIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AuthorizeDBSecurityGroupIngressMessage object being passed to this operation.
         - completion: The AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress object or an error will be passed to this 
           callback when the operation is complete. The AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress
           object will be validated before being returned to caller.
           The possible errors are: authorizationAlreadyExists, authorizationQuotaExceeded, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    func authorizeDBSecurityGroupIngressAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.AuthorizeDBSecurityGroupIngressMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress, HTTPClientError>) -> ()) throws

    /**
     Invokes the AuthorizeDBSecurityGroupIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated AuthorizeDBSecurityGroupIngressMessage object being passed to this operation.
     - Returns: The AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationAlreadyExists, authorizationQuotaExceeded, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    func authorizeDBSecurityGroupIngressSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.AuthorizeDBSecurityGroupIngressMessage,
            reporting: InvocationReportingType) throws -> RDSModel.AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress

    /**
     Invokes the BacktrackDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BacktrackDBClusterMessage object being passed to this operation.
         - completion: The DBClusterBacktrackForBacktrackDBCluster object or an error will be passed to this 
           callback when the operation is complete. The DBClusterBacktrackForBacktrackDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState.
     */
    func backtrackDBClusterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.BacktrackDBClusterMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBClusterBacktrackForBacktrackDBCluster, HTTPClientError>) -> ()) throws

    /**
     Invokes the BacktrackDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated BacktrackDBClusterMessage object being passed to this operation.
     - Returns: The DBClusterBacktrackForBacktrackDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState.
     */
    func backtrackDBClusterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.BacktrackDBClusterMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBClusterBacktrackForBacktrackDBCluster

    /**
     Invokes the CancelExportTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelExportTaskMessage object being passed to this operation.
         - completion: The ExportTaskForCancelExportTask object or an error will be passed to this 
           callback when the operation is complete. The ExportTaskForCancelExportTask
           object will be validated before being returned to caller.
           The possible errors are: exportTaskNotFound, invalidExportTaskState.
     */
    func cancelExportTaskAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CancelExportTaskMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ExportTaskForCancelExportTask, HTTPClientError>) -> ()) throws

    /**
     Invokes the CancelExportTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelExportTaskMessage object being passed to this operation.
     - Returns: The ExportTaskForCancelExportTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: exportTaskNotFound, invalidExportTaskState.
     */
    func cancelExportTaskSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CancelExportTaskMessage,
            reporting: InvocationReportingType) throws -> RDSModel.ExportTaskForCancelExportTask

    /**
     Invokes the CopyDBClusterParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyDBClusterParameterGroupMessage object being passed to this operation.
         - completion: The CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    func copyDBClusterParameterGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CopyDBClusterParameterGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup, HTTPClientError>) -> ()) throws

    /**
     Invokes the CopyDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    func copyDBClusterParameterGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CopyDBClusterParameterGroupMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup

    /**
     Invokes the CopyDBClusterSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyDBClusterSnapshotMessage object being passed to this operation.
         - completion: The CopyDBClusterSnapshotResultForCopyDBClusterSnapshot object or an error will be passed to this 
           callback when the operation is complete. The CopyDBClusterSnapshotResultForCopyDBClusterSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotAlreadyExists, dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, invalidDBClusterState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    func copyDBClusterSnapshotAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CopyDBClusterSnapshotMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CopyDBClusterSnapshotResultForCopyDBClusterSnapshot, HTTPClientError>) -> ()) throws

    /**
     Invokes the CopyDBClusterSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyDBClusterSnapshotMessage object being passed to this operation.
     - Returns: The CopyDBClusterSnapshotResultForCopyDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotAlreadyExists, dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, invalidDBClusterState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    func copyDBClusterSnapshotSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CopyDBClusterSnapshotMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CopyDBClusterSnapshotResultForCopyDBClusterSnapshot

    /**
     Invokes the CopyDBParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyDBParameterGroupMessage object being passed to this operation.
         - completion: The CopyDBParameterGroupResultForCopyDBParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The CopyDBParameterGroupResultForCopyDBParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    func copyDBParameterGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CopyDBParameterGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CopyDBParameterGroupResultForCopyDBParameterGroup, HTTPClientError>) -> ()) throws

    /**
     Invokes the CopyDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyDBParameterGroupMessage object being passed to this operation.
     - Returns: The CopyDBParameterGroupResultForCopyDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    func copyDBParameterGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CopyDBParameterGroupMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CopyDBParameterGroupResultForCopyDBParameterGroup

    /**
     Invokes the CopyDBSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyDBSnapshotMessage object being passed to this operation.
         - completion: The CopyDBSnapshotResultForCopyDBSnapshot object or an error will be passed to this 
           callback when the operation is complete. The CopyDBSnapshotResultForCopyDBSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBSnapshotAlreadyExists, dBSnapshotNotFound, invalidDBSnapshotState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    func copyDBSnapshotAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CopyDBSnapshotMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CopyDBSnapshotResultForCopyDBSnapshot, HTTPClientError>) -> ()) throws

    /**
     Invokes the CopyDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyDBSnapshotMessage object being passed to this operation.
     - Returns: The CopyDBSnapshotResultForCopyDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotAlreadyExists, dBSnapshotNotFound, invalidDBSnapshotState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    func copyDBSnapshotSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CopyDBSnapshotMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CopyDBSnapshotResultForCopyDBSnapshot

    /**
     Invokes the CopyOptionGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyOptionGroupMessage object being passed to this operation.
         - completion: The CopyOptionGroupResultForCopyOptionGroup object or an error will be passed to this 
           callback when the operation is complete. The CopyOptionGroupResultForCopyOptionGroup
           object will be validated before being returned to caller.
           The possible errors are: optionGroupAlreadyExists, optionGroupNotFound, optionGroupQuotaExceeded.
     */
    func copyOptionGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CopyOptionGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CopyOptionGroupResultForCopyOptionGroup, HTTPClientError>) -> ()) throws

    /**
     Invokes the CopyOptionGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyOptionGroupMessage object being passed to this operation.
     - Returns: The CopyOptionGroupResultForCopyOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: optionGroupAlreadyExists, optionGroupNotFound, optionGroupQuotaExceeded.
     */
    func copyOptionGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CopyOptionGroupMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CopyOptionGroupResultForCopyOptionGroup

    /**
     Invokes the CreateCustomAvailabilityZone operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateCustomAvailabilityZoneMessage object being passed to this operation.
         - completion: The CreateCustomAvailabilityZoneResultForCreateCustomAvailabilityZone object or an error will be passed to this 
           callback when the operation is complete. The CreateCustomAvailabilityZoneResultForCreateCustomAvailabilityZone
           object will be validated before being returned to caller.
           The possible errors are: customAvailabilityZoneAlreadyExists, customAvailabilityZoneQuotaExceeded, kMSKeyNotAccessible.
     */
    func createCustomAvailabilityZoneAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateCustomAvailabilityZoneMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CreateCustomAvailabilityZoneResultForCreateCustomAvailabilityZone, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateCustomAvailabilityZone operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateCustomAvailabilityZoneMessage object being passed to this operation.
     - Returns: The CreateCustomAvailabilityZoneResultForCreateCustomAvailabilityZone object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: customAvailabilityZoneAlreadyExists, customAvailabilityZoneQuotaExceeded, kMSKeyNotAccessible.
     */
    func createCustomAvailabilityZoneSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateCustomAvailabilityZoneMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CreateCustomAvailabilityZoneResultForCreateCustomAvailabilityZone

    /**
     Invokes the CreateDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBClusterMessage object being passed to this operation.
         - completion: The CreateDBClusterResultForCreateDBCluster object or an error will be passed to this 
           callback when the operation is complete. The CreateDBClusterResultForCreateDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, globalClusterNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBInstanceState, invalidDBSubnetGroupState, invalidGlobalClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    func createDBClusterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBClusterMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CreateDBClusterResultForCreateDBCluster, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBClusterMessage object being passed to this operation.
     - Returns: The CreateDBClusterResultForCreateDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, globalClusterNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBInstanceState, invalidDBSubnetGroupState, invalidGlobalClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    func createDBClusterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBClusterMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CreateDBClusterResultForCreateDBCluster

    /**
     Invokes the CreateDBClusterEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBClusterEndpointMessage object being passed to this operation.
         - completion: The DBClusterEndpointForCreateDBClusterEndpoint object or an error will be passed to this 
           callback when the operation is complete. The DBClusterEndpointForCreateDBClusterEndpoint
           object will be validated before being returned to caller.
           The possible errors are: dBClusterEndpointAlreadyExists, dBClusterEndpointQuotaExceeded, dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func createDBClusterEndpointAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBClusterEndpointMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBClusterEndpointForCreateDBClusterEndpoint, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateDBClusterEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBClusterEndpointMessage object being passed to this operation.
     - Returns: The DBClusterEndpointForCreateDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterEndpointAlreadyExists, dBClusterEndpointQuotaExceeded, dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func createDBClusterEndpointSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBClusterEndpointMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBClusterEndpointForCreateDBClusterEndpoint

    /**
     Invokes the CreateDBClusterParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBClusterParameterGroupMessage object being passed to this operation.
         - completion: The CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    func createDBClusterParameterGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBClusterParameterGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    func createDBClusterParameterGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBClusterParameterGroupMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup

    /**
     Invokes the CreateDBClusterSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBClusterSnapshotMessage object being passed to this operation.
         - completion: The CreateDBClusterSnapshotResultForCreateDBClusterSnapshot object or an error will be passed to this 
           callback when the operation is complete. The CreateDBClusterSnapshotResultForCreateDBClusterSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    func createDBClusterSnapshotAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBClusterSnapshotMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CreateDBClusterSnapshotResultForCreateDBClusterSnapshot, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateDBClusterSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBClusterSnapshotMessage object being passed to this operation.
     - Returns: The CreateDBClusterSnapshotResultForCreateDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    func createDBClusterSnapshotSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBClusterSnapshotMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CreateDBClusterSnapshotResultForCreateDBClusterSnapshot

    /**
     Invokes the CreateDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBInstanceMessage object being passed to this operation.
         - completion: The CreateDBInstanceResultForCreateDBInstance object or an error will be passed to this 
           callback when the operation is complete. The CreateDBInstanceResultForCreateDBInstance
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBClusterNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func createDBInstanceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBInstanceMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CreateDBInstanceResultForCreateDBInstance, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBInstanceMessage object being passed to this operation.
     - Returns: The CreateDBInstanceResultForCreateDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBClusterNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func createDBInstanceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBInstanceMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CreateDBInstanceResultForCreateDBInstance

    /**
     Invokes the CreateDBInstanceReadReplica operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBInstanceReadReplicaMessage object being passed to this operation.
         - completion: The CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica object or an error will be passed to this 
           callback when the operation is complete. The CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotAllowed, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSubnetGroup, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func createDBInstanceReadReplicaAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBInstanceReadReplicaMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateDBInstanceReadReplica operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBInstanceReadReplicaMessage object being passed to this operation.
     - Returns: The CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotAllowed, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSubnetGroup, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func createDBInstanceReadReplicaSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBInstanceReadReplicaMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica

    /**
     Invokes the CreateDBParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBParameterGroupMessage object being passed to this operation.
         - completion: The CreateDBParameterGroupResultForCreateDBParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The CreateDBParameterGroupResultForCreateDBParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    func createDBParameterGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBParameterGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CreateDBParameterGroupResultForCreateDBParameterGroup, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBParameterGroupMessage object being passed to this operation.
     - Returns: The CreateDBParameterGroupResultForCreateDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    func createDBParameterGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBParameterGroupMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CreateDBParameterGroupResultForCreateDBParameterGroup

    /**
     Invokes the CreateDBProxy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBProxyRequest object being passed to this operation.
         - completion: The CreateDBProxyResponseForCreateDBProxy object or an error will be passed to this 
           callback when the operation is complete. The CreateDBProxyResponseForCreateDBProxy
           object will be validated before being returned to caller.
           The possible errors are: dBProxyAlreadyExists, dBProxyQuotaExceeded, invalidSubnet.
     */
    func createDBProxyAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBProxyRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CreateDBProxyResponseForCreateDBProxy, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateDBProxy operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBProxyRequest object being passed to this operation.
     - Returns: The CreateDBProxyResponseForCreateDBProxy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyAlreadyExists, dBProxyQuotaExceeded, invalidSubnet.
     */
    func createDBProxySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBProxyRequest,
            reporting: InvocationReportingType) throws -> RDSModel.CreateDBProxyResponseForCreateDBProxy

    /**
     Invokes the CreateDBSecurityGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBSecurityGroupMessage object being passed to this operation.
         - completion: The CreateDBSecurityGroupResultForCreateDBSecurityGroup object or an error will be passed to this 
           callback when the operation is complete. The CreateDBSecurityGroupResultForCreateDBSecurityGroup
           object will be validated before being returned to caller.
           The possible errors are: dBSecurityGroupAlreadyExists, dBSecurityGroupNotSupported, dBSecurityGroupQuotaExceeded.
     */
    func createDBSecurityGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBSecurityGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CreateDBSecurityGroupResultForCreateDBSecurityGroup, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateDBSecurityGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBSecurityGroupMessage object being passed to this operation.
     - Returns: The CreateDBSecurityGroupResultForCreateDBSecurityGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSecurityGroupAlreadyExists, dBSecurityGroupNotSupported, dBSecurityGroupQuotaExceeded.
     */
    func createDBSecurityGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBSecurityGroupMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CreateDBSecurityGroupResultForCreateDBSecurityGroup

    /**
     Invokes the CreateDBSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBSnapshotMessage object being passed to this operation.
         - completion: The CreateDBSnapshotResultForCreateDBSnapshot object or an error will be passed to this 
           callback when the operation is complete. The CreateDBSnapshotResultForCreateDBSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    func createDBSnapshotAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBSnapshotMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CreateDBSnapshotResultForCreateDBSnapshot, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBSnapshotMessage object being passed to this operation.
     - Returns: The CreateDBSnapshotResultForCreateDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    func createDBSnapshotSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBSnapshotMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CreateDBSnapshotResultForCreateDBSnapshot

    /**
     Invokes the CreateDBSubnetGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBSubnetGroupMessage object being passed to this operation.
         - completion: The CreateDBSubnetGroupResultForCreateDBSubnetGroup object or an error will be passed to this 
           callback when the operation is complete. The CreateDBSubnetGroupResultForCreateDBSubnetGroup
           object will be validated before being returned to caller.
           The possible errors are: dBSubnetGroupAlreadyExists, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupQuotaExceeded, dBSubnetQuotaExceeded, invalidSubnet.
     */
    func createDBSubnetGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBSubnetGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CreateDBSubnetGroupResultForCreateDBSubnetGroup, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateDBSubnetGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBSubnetGroupMessage object being passed to this operation.
     - Returns: The CreateDBSubnetGroupResultForCreateDBSubnetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSubnetGroupAlreadyExists, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupQuotaExceeded, dBSubnetQuotaExceeded, invalidSubnet.
     */
    func createDBSubnetGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateDBSubnetGroupMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CreateDBSubnetGroupResultForCreateDBSubnetGroup

    /**
     Invokes the CreateEventSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateEventSubscriptionMessage object being passed to this operation.
         - completion: The CreateEventSubscriptionResultForCreateEventSubscription object or an error will be passed to this 
           callback when the operation is complete. The CreateEventSubscriptionResultForCreateEventSubscription
           object will be validated before being returned to caller.
           The possible errors are: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, sourceNotFound, subscriptionAlreadyExist, subscriptionCategoryNotFound.
     */
    func createEventSubscriptionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateEventSubscriptionMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CreateEventSubscriptionResultForCreateEventSubscription, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateEventSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateEventSubscriptionMessage object being passed to this operation.
     - Returns: The CreateEventSubscriptionResultForCreateEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, sourceNotFound, subscriptionAlreadyExist, subscriptionCategoryNotFound.
     */
    func createEventSubscriptionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateEventSubscriptionMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CreateEventSubscriptionResultForCreateEventSubscription

    /**
     Invokes the CreateGlobalCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateGlobalClusterMessage object being passed to this operation.
         - completion: The CreateGlobalClusterResultForCreateGlobalCluster object or an error will be passed to this 
           callback when the operation is complete. The CreateGlobalClusterResultForCreateGlobalCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, globalClusterAlreadyExists, globalClusterQuotaExceeded, invalidDBClusterState.
     */
    func createGlobalClusterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateGlobalClusterMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CreateGlobalClusterResultForCreateGlobalCluster, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateGlobalCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateGlobalClusterMessage object being passed to this operation.
     - Returns: The CreateGlobalClusterResultForCreateGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, globalClusterAlreadyExists, globalClusterQuotaExceeded, invalidDBClusterState.
     */
    func createGlobalClusterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateGlobalClusterMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CreateGlobalClusterResultForCreateGlobalCluster

    /**
     Invokes the CreateOptionGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateOptionGroupMessage object being passed to this operation.
         - completion: The CreateOptionGroupResultForCreateOptionGroup object or an error will be passed to this 
           callback when the operation is complete. The CreateOptionGroupResultForCreateOptionGroup
           object will be validated before being returned to caller.
           The possible errors are: optionGroupAlreadyExists, optionGroupQuotaExceeded.
     */
    func createOptionGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateOptionGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CreateOptionGroupResultForCreateOptionGroup, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateOptionGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateOptionGroupMessage object being passed to this operation.
     - Returns: The CreateOptionGroupResultForCreateOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: optionGroupAlreadyExists, optionGroupQuotaExceeded.
     */
    func createOptionGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.CreateOptionGroupMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CreateOptionGroupResultForCreateOptionGroup

    /**
     Invokes the DeleteCustomAvailabilityZone operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteCustomAvailabilityZoneMessage object being passed to this operation.
         - completion: The DeleteCustomAvailabilityZoneResultForDeleteCustomAvailabilityZone object or an error will be passed to this 
           callback when the operation is complete. The DeleteCustomAvailabilityZoneResultForDeleteCustomAvailabilityZone
           object will be validated before being returned to caller.
           The possible errors are: customAvailabilityZoneNotFound, kMSKeyNotAccessible.
     */
    func deleteCustomAvailabilityZoneAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteCustomAvailabilityZoneMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DeleteCustomAvailabilityZoneResultForDeleteCustomAvailabilityZone, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteCustomAvailabilityZone operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteCustomAvailabilityZoneMessage object being passed to this operation.
     - Returns: The DeleteCustomAvailabilityZoneResultForDeleteCustomAvailabilityZone object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: customAvailabilityZoneNotFound, kMSKeyNotAccessible.
     */
    func deleteCustomAvailabilityZoneSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteCustomAvailabilityZoneMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DeleteCustomAvailabilityZoneResultForDeleteCustomAvailabilityZone

    /**
     Invokes the DeleteDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBClusterMessage object being passed to this operation.
         - completion: The DeleteDBClusterResultForDeleteDBCluster object or an error will be passed to this 
           callback when the operation is complete. The DeleteDBClusterResultForDeleteDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    func deleteDBClusterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBClusterMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DeleteDBClusterResultForDeleteDBCluster, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBClusterMessage object being passed to this operation.
     - Returns: The DeleteDBClusterResultForDeleteDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    func deleteDBClusterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBClusterMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DeleteDBClusterResultForDeleteDBCluster

    /**
     Invokes the DeleteDBClusterEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBClusterEndpointMessage object being passed to this operation.
         - completion: The DBClusterEndpointForDeleteDBClusterEndpoint object or an error will be passed to this 
           callback when the operation is complete. The DBClusterEndpointForDeleteDBClusterEndpoint
           object will be validated before being returned to caller.
           The possible errors are: dBClusterEndpointNotFound, invalidDBClusterEndpointState, invalidDBClusterState.
     */
    func deleteDBClusterEndpointAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBClusterEndpointMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBClusterEndpointForDeleteDBClusterEndpoint, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteDBClusterEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBClusterEndpointMessage object being passed to this operation.
     - Returns: The DBClusterEndpointForDeleteDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterEndpointNotFound, invalidDBClusterEndpointState, invalidDBClusterState.
     */
    func deleteDBClusterEndpointSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBClusterEndpointMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBClusterEndpointForDeleteDBClusterEndpoint

    /**
     Invokes the DeleteDBClusterParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBClusterParameterGroupMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func deleteDBClusterParameterGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBClusterParameterGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBClusterParameterGroupMessage object being passed to this operation.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func deleteDBClusterParameterGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBClusterParameterGroupMessage,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteDBClusterSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBClusterSnapshotMessage object being passed to this operation.
         - completion: The DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot object or an error will be passed to this 
           callback when the operation is complete. The DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState.
     */
    func deleteDBClusterSnapshotAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBClusterSnapshotMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteDBClusterSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBClusterSnapshotMessage object being passed to this operation.
     - Returns: The DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState.
     */
    func deleteDBClusterSnapshotSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBClusterSnapshotMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot

    /**
     Invokes the DeleteDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBInstanceMessage object being passed to this operation.
         - completion: The DeleteDBInstanceResultForDeleteDBInstance object or an error will be passed to this 
           callback when the operation is complete. The DeleteDBInstanceResultForDeleteDBInstance
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceAutomatedBackupQuotaExceeded, dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    func deleteDBInstanceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBInstanceMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DeleteDBInstanceResultForDeleteDBInstance, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBInstanceMessage object being passed to this operation.
     - Returns: The DeleteDBInstanceResultForDeleteDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupQuotaExceeded, dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    func deleteDBInstanceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBInstanceMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DeleteDBInstanceResultForDeleteDBInstance

    /**
     Invokes the DeleteDBInstanceAutomatedBackup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBInstanceAutomatedBackupMessage object being passed to this operation.
         - completion: The DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup object or an error will be passed to this 
           callback when the operation is complete. The DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceAutomatedBackupNotFound, invalidDBInstanceAutomatedBackupState.
     */
    func deleteDBInstanceAutomatedBackupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBInstanceAutomatedBackupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteDBInstanceAutomatedBackup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBInstanceAutomatedBackupMessage object being passed to this operation.
     - Returns: The DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupNotFound, invalidDBInstanceAutomatedBackupState.
     */
    func deleteDBInstanceAutomatedBackupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBInstanceAutomatedBackupMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup

    /**
     Invokes the DeleteDBParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBParameterGroupMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func deleteDBParameterGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBParameterGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBParameterGroupMessage object being passed to this operation.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func deleteDBParameterGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBParameterGroupMessage,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteDBProxy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBProxyRequest object being passed to this operation.
         - completion: The DeleteDBProxyResponseForDeleteDBProxy object or an error will be passed to this 
           callback when the operation is complete. The DeleteDBProxyResponseForDeleteDBProxy
           object will be validated before being returned to caller.
           The possible errors are: dBProxyNotFound, invalidDBProxyState.
     */
    func deleteDBProxyAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBProxyRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DeleteDBProxyResponseForDeleteDBProxy, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteDBProxy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBProxyRequest object being passed to this operation.
     - Returns: The DeleteDBProxyResponseForDeleteDBProxy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound, invalidDBProxyState.
     */
    func deleteDBProxySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBProxyRequest,
            reporting: InvocationReportingType) throws -> RDSModel.DeleteDBProxyResponseForDeleteDBProxy

    /**
     Invokes the DeleteDBSecurityGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBSecurityGroupMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    func deleteDBSecurityGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBSecurityGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteDBSecurityGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBSecurityGroupMessage object being passed to this operation.
     - Throws: dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    func deleteDBSecurityGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBSecurityGroupMessage,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteDBSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBSnapshotMessage object being passed to this operation.
         - completion: The DeleteDBSnapshotResultForDeleteDBSnapshot object or an error will be passed to this 
           callback when the operation is complete. The DeleteDBSnapshotResultForDeleteDBSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound, invalidDBSnapshotState.
     */
    func deleteDBSnapshotAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBSnapshotMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DeleteDBSnapshotResultForDeleteDBSnapshot, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBSnapshotMessage object being passed to this operation.
     - Returns: The DeleteDBSnapshotResultForDeleteDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound, invalidDBSnapshotState.
     */
    func deleteDBSnapshotSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBSnapshotMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DeleteDBSnapshotResultForDeleteDBSnapshot

    /**
     Invokes the DeleteDBSubnetGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBSubnetGroupMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBSubnetGroupNotFound, invalidDBSubnetGroupState, invalidDBSubnetState.
     */
    func deleteDBSubnetGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBSubnetGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteDBSubnetGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBSubnetGroupMessage object being passed to this operation.
     - Throws: dBSubnetGroupNotFound, invalidDBSubnetGroupState, invalidDBSubnetState.
     */
    func deleteDBSubnetGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteDBSubnetGroupMessage,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteEventSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteEventSubscriptionMessage object being passed to this operation.
         - completion: The DeleteEventSubscriptionResultForDeleteEventSubscription object or an error will be passed to this 
           callback when the operation is complete. The DeleteEventSubscriptionResultForDeleteEventSubscription
           object will be validated before being returned to caller.
           The possible errors are: invalidEventSubscriptionState, subscriptionNotFound.
     */
    func deleteEventSubscriptionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteEventSubscriptionMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DeleteEventSubscriptionResultForDeleteEventSubscription, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteEventSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteEventSubscriptionMessage object being passed to this operation.
     - Returns: The DeleteEventSubscriptionResultForDeleteEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidEventSubscriptionState, subscriptionNotFound.
     */
    func deleteEventSubscriptionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteEventSubscriptionMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DeleteEventSubscriptionResultForDeleteEventSubscription

    /**
     Invokes the DeleteGlobalCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteGlobalClusterMessage object being passed to this operation.
         - completion: The DeleteGlobalClusterResultForDeleteGlobalCluster object or an error will be passed to this 
           callback when the operation is complete. The DeleteGlobalClusterResultForDeleteGlobalCluster
           object will be validated before being returned to caller.
           The possible errors are: globalClusterNotFound, invalidGlobalClusterState.
     */
    func deleteGlobalClusterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteGlobalClusterMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DeleteGlobalClusterResultForDeleteGlobalCluster, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteGlobalCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteGlobalClusterMessage object being passed to this operation.
     - Returns: The DeleteGlobalClusterResultForDeleteGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalClusterNotFound, invalidGlobalClusterState.
     */
    func deleteGlobalClusterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteGlobalClusterMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DeleteGlobalClusterResultForDeleteGlobalCluster

    /**
     Invokes the DeleteInstallationMedia operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteInstallationMediaMessage object being passed to this operation.
         - completion: The InstallationMediaForDeleteInstallationMedia object or an error will be passed to this 
           callback when the operation is complete. The InstallationMediaForDeleteInstallationMedia
           object will be validated before being returned to caller.
           The possible errors are: installationMediaNotFound.
     */
    func deleteInstallationMediaAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteInstallationMediaMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.InstallationMediaForDeleteInstallationMedia, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteInstallationMedia operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteInstallationMediaMessage object being passed to this operation.
     - Returns: The InstallationMediaForDeleteInstallationMedia object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: installationMediaNotFound.
     */
    func deleteInstallationMediaSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteInstallationMediaMessage,
            reporting: InvocationReportingType) throws -> RDSModel.InstallationMediaForDeleteInstallationMedia

    /**
     Invokes the DeleteOptionGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteOptionGroupMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidOptionGroupState, optionGroupNotFound.
     */
    func deleteOptionGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteOptionGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteOptionGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteOptionGroupMessage object being passed to this operation.
     - Throws: invalidOptionGroupState, optionGroupNotFound.
     */
    func deleteOptionGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeleteOptionGroupMessage,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeregisterDBProxyTargets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeregisterDBProxyTargetsRequest object being passed to this operation.
         - completion: The DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets object or an error will be passed to this 
           callback when the operation is complete. The DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets
           object will be validated before being returned to caller.
           The possible errors are: dBProxyNotFound, dBProxyTargetGroupNotFound, dBProxyTargetNotFound.
     */
    func deregisterDBProxyTargetsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeregisterDBProxyTargetsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeregisterDBProxyTargets operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterDBProxyTargetsRequest object being passed to this operation.
     - Returns: The DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound, dBProxyTargetGroupNotFound, dBProxyTargetNotFound.
     */
    func deregisterDBProxyTargetsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DeregisterDBProxyTargetsRequest,
            reporting: InvocationReportingType) throws -> RDSModel.DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets

    /**
     Invokes the DescribeAccountAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAccountAttributesMessage object being passed to this operation.
         - completion: The AccountAttributesMessageForDescribeAccountAttributes object or an error will be passed to this 
           callback when the operation is complete. The AccountAttributesMessageForDescribeAccountAttributes
           object will be validated before being returned to caller.
     */
    func describeAccountAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeAccountAttributesMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.AccountAttributesMessageForDescribeAccountAttributes, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeAccountAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAccountAttributesMessage object being passed to this operation.
     - Returns: The AccountAttributesMessageForDescribeAccountAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAccountAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeAccountAttributesMessage,
            reporting: InvocationReportingType) throws -> RDSModel.AccountAttributesMessageForDescribeAccountAttributes

    /**
     Invokes the DescribeCertificates operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCertificatesMessage object being passed to this operation.
         - completion: The CertificateMessageForDescribeCertificates object or an error will be passed to this 
           callback when the operation is complete. The CertificateMessageForDescribeCertificates
           object will be validated before being returned to caller.
           The possible errors are: certificateNotFound.
     */
    func describeCertificatesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeCertificatesMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CertificateMessageForDescribeCertificates, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeCertificates operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCertificatesMessage object being passed to this operation.
     - Returns: The CertificateMessageForDescribeCertificates object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: certificateNotFound.
     */
    func describeCertificatesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeCertificatesMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CertificateMessageForDescribeCertificates

    /**
     Invokes the DescribeCustomAvailabilityZones operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCustomAvailabilityZonesMessage object being passed to this operation.
         - completion: The CustomAvailabilityZoneMessageForDescribeCustomAvailabilityZones object or an error will be passed to this 
           callback when the operation is complete. The CustomAvailabilityZoneMessageForDescribeCustomAvailabilityZones
           object will be validated before being returned to caller.
           The possible errors are: customAvailabilityZoneNotFound.
     */
    func describeCustomAvailabilityZonesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeCustomAvailabilityZonesMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.CustomAvailabilityZoneMessageForDescribeCustomAvailabilityZones, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeCustomAvailabilityZones operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCustomAvailabilityZonesMessage object being passed to this operation.
     - Returns: The CustomAvailabilityZoneMessageForDescribeCustomAvailabilityZones object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: customAvailabilityZoneNotFound.
     */
    func describeCustomAvailabilityZonesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeCustomAvailabilityZonesMessage,
            reporting: InvocationReportingType) throws -> RDSModel.CustomAvailabilityZoneMessageForDescribeCustomAvailabilityZones

    /**
     Invokes the DescribeDBClusterBacktracks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClusterBacktracksMessage object being passed to this operation.
         - completion: The DBClusterBacktrackMessageForDescribeDBClusterBacktracks object or an error will be passed to this 
           callback when the operation is complete. The DBClusterBacktrackMessageForDescribeDBClusterBacktracks
           object will be validated before being returned to caller.
           The possible errors are: dBClusterBacktrackNotFound, dBClusterNotFound.
     */
    func describeDBClusterBacktracksAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBClusterBacktracksMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBClusterBacktrackMessageForDescribeDBClusterBacktracks, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBClusterBacktracks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterBacktracksMessage object being passed to this operation.
     - Returns: The DBClusterBacktrackMessageForDescribeDBClusterBacktracks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterBacktrackNotFound, dBClusterNotFound.
     */
    func describeDBClusterBacktracksSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBClusterBacktracksMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBClusterBacktrackMessageForDescribeDBClusterBacktracks

    /**
     Invokes the DescribeDBClusterEndpoints operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClusterEndpointsMessage object being passed to this operation.
         - completion: The DBClusterEndpointMessageForDescribeDBClusterEndpoints object or an error will be passed to this 
           callback when the operation is complete. The DBClusterEndpointMessageForDescribeDBClusterEndpoints
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound.
     */
    func describeDBClusterEndpointsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBClusterEndpointsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBClusterEndpointMessageForDescribeDBClusterEndpoints, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBClusterEndpoints operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterEndpointsMessage object being passed to this operation.
     - Returns: The DBClusterEndpointMessageForDescribeDBClusterEndpoints object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound.
     */
    func describeDBClusterEndpointsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBClusterEndpointsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBClusterEndpointMessageForDescribeDBClusterEndpoints

    /**
     Invokes the DescribeDBClusterParameterGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClusterParameterGroupsMessage object being passed to this operation.
         - completion: The DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups object or an error will be passed to this 
           callback when the operation is complete. The DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound.
     */
    func describeDBClusterParameterGroupsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBClusterParameterGroupsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBClusterParameterGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterParameterGroupsMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    func describeDBClusterParameterGroupsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBClusterParameterGroupsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups

    /**
     Invokes the DescribeDBClusterParameters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClusterParametersMessage object being passed to this operation.
         - completion: The DBClusterParameterGroupDetailsForDescribeDBClusterParameters object or an error will be passed to this 
           callback when the operation is complete. The DBClusterParameterGroupDetailsForDescribeDBClusterParameters
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound.
     */
    func describeDBClusterParametersAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBClusterParametersMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBClusterParameterGroupDetailsForDescribeDBClusterParameters, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBClusterParameters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterParametersMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupDetailsForDescribeDBClusterParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    func describeDBClusterParametersSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBClusterParametersMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBClusterParameterGroupDetailsForDescribeDBClusterParameters

    /**
     Invokes the DescribeDBClusterSnapshotAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotAttributesMessage object being passed to this operation.
         - completion: The DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes object or an error will be passed to this 
           callback when the operation is complete. The DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes
           object will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound.
     */
    func describeDBClusterSnapshotAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBClusterSnapshotAttributesMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBClusterSnapshotAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotAttributesMessage object being passed to this operation.
     - Returns: The DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound.
     */
    func describeDBClusterSnapshotAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBClusterSnapshotAttributesMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes

    /**
     Invokes the DescribeDBClusterSnapshots operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotsMessage object being passed to this operation.
         - completion: The DBClusterSnapshotMessageForDescribeDBClusterSnapshots object or an error will be passed to this 
           callback when the operation is complete. The DBClusterSnapshotMessageForDescribeDBClusterSnapshots
           object will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound.
     */
    func describeDBClusterSnapshotsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBClusterSnapshotsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBClusterSnapshotMessageForDescribeDBClusterSnapshots, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBClusterSnapshots operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotsMessage object being passed to this operation.
     - Returns: The DBClusterSnapshotMessageForDescribeDBClusterSnapshots object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound.
     */
    func describeDBClusterSnapshotsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBClusterSnapshotsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBClusterSnapshotMessageForDescribeDBClusterSnapshots

    /**
     Invokes the DescribeDBClusters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClustersMessage object being passed to this operation.
         - completion: The DBClusterMessageForDescribeDBClusters object or an error will be passed to this 
           callback when the operation is complete. The DBClusterMessageForDescribeDBClusters
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound.
     */
    func describeDBClustersAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBClustersMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBClusterMessageForDescribeDBClusters, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBClusters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClustersMessage object being passed to this operation.
     - Returns: The DBClusterMessageForDescribeDBClusters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound.
     */
    func describeDBClustersSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBClustersMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBClusterMessageForDescribeDBClusters

    /**
     Invokes the DescribeDBEngineVersions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBEngineVersionsMessage object being passed to this operation.
         - completion: The DBEngineVersionMessageForDescribeDBEngineVersions object or an error will be passed to this 
           callback when the operation is complete. The DBEngineVersionMessageForDescribeDBEngineVersions
           object will be validated before being returned to caller.
     */
    func describeDBEngineVersionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBEngineVersionsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBEngineVersionMessageForDescribeDBEngineVersions, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBEngineVersions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBEngineVersionsMessage object being passed to this operation.
     - Returns: The DBEngineVersionMessageForDescribeDBEngineVersions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeDBEngineVersionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBEngineVersionsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBEngineVersionMessageForDescribeDBEngineVersions

    /**
     Invokes the DescribeDBInstanceAutomatedBackups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBInstanceAutomatedBackupsMessage object being passed to this operation.
         - completion: The DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups object or an error will be passed to this 
           callback when the operation is complete. The DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceAutomatedBackupNotFound.
     */
    func describeDBInstanceAutomatedBackupsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBInstanceAutomatedBackupsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBInstanceAutomatedBackups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBInstanceAutomatedBackupsMessage object being passed to this operation.
     - Returns: The DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupNotFound.
     */
    func describeDBInstanceAutomatedBackupsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBInstanceAutomatedBackupsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups

    /**
     Invokes the DescribeDBInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBInstancesMessage object being passed to this operation.
         - completion: The DBInstanceMessageForDescribeDBInstances object or an error will be passed to this 
           callback when the operation is complete. The DBInstanceMessageForDescribeDBInstances
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound.
     */
    func describeDBInstancesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBInstancesMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBInstanceMessageForDescribeDBInstances, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBInstancesMessage object being passed to this operation.
     - Returns: The DBInstanceMessageForDescribeDBInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound.
     */
    func describeDBInstancesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBInstancesMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBInstanceMessageForDescribeDBInstances

    /**
     Invokes the DescribeDBLogFiles operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBLogFilesMessage object being passed to this operation.
         - completion: The DescribeDBLogFilesResponseForDescribeDBLogFiles object or an error will be passed to this 
           callback when the operation is complete. The DescribeDBLogFilesResponseForDescribeDBLogFiles
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound.
     */
    func describeDBLogFilesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBLogFilesMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DescribeDBLogFilesResponseForDescribeDBLogFiles, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBLogFiles operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBLogFilesMessage object being passed to this operation.
     - Returns: The DescribeDBLogFilesResponseForDescribeDBLogFiles object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound.
     */
    func describeDBLogFilesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBLogFilesMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DescribeDBLogFilesResponseForDescribeDBLogFiles

    /**
     Invokes the DescribeDBParameterGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBParameterGroupsMessage object being passed to this operation.
         - completion: The DBParameterGroupsMessageForDescribeDBParameterGroups object or an error will be passed to this 
           callback when the operation is complete. The DBParameterGroupsMessageForDescribeDBParameterGroups
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound.
     */
    func describeDBParameterGroupsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBParameterGroupsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBParameterGroupsMessageForDescribeDBParameterGroups, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBParameterGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBParameterGroupsMessage object being passed to this operation.
     - Returns: The DBParameterGroupsMessageForDescribeDBParameterGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    func describeDBParameterGroupsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBParameterGroupsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBParameterGroupsMessageForDescribeDBParameterGroups

    /**
     Invokes the DescribeDBParameters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBParametersMessage object being passed to this operation.
         - completion: The DBParameterGroupDetailsForDescribeDBParameters object or an error will be passed to this 
           callback when the operation is complete. The DBParameterGroupDetailsForDescribeDBParameters
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound.
     */
    func describeDBParametersAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBParametersMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBParameterGroupDetailsForDescribeDBParameters, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBParameters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBParametersMessage object being passed to this operation.
     - Returns: The DBParameterGroupDetailsForDescribeDBParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    func describeDBParametersSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBParametersMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBParameterGroupDetailsForDescribeDBParameters

    /**
     Invokes the DescribeDBProxies operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBProxiesRequest object being passed to this operation.
         - completion: The DescribeDBProxiesResponseForDescribeDBProxies object or an error will be passed to this 
           callback when the operation is complete. The DescribeDBProxiesResponseForDescribeDBProxies
           object will be validated before being returned to caller.
           The possible errors are: dBProxyNotFound.
     */
    func describeDBProxiesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBProxiesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DescribeDBProxiesResponseForDescribeDBProxies, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBProxies operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBProxiesRequest object being passed to this operation.
     - Returns: The DescribeDBProxiesResponseForDescribeDBProxies object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound.
     */
    func describeDBProxiesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBProxiesRequest,
            reporting: InvocationReportingType) throws -> RDSModel.DescribeDBProxiesResponseForDescribeDBProxies

    /**
     Invokes the DescribeDBProxyTargetGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBProxyTargetGroupsRequest object being passed to this operation.
         - completion: The DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups object or an error will be passed to this 
           callback when the operation is complete. The DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups
           object will be validated before being returned to caller.
           The possible errors are: dBProxyTargetGroupNotFound.
     */
    func describeDBProxyTargetGroupsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBProxyTargetGroupsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBProxyTargetGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBProxyTargetGroupsRequest object being passed to this operation.
     - Returns: The DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyTargetGroupNotFound.
     */
    func describeDBProxyTargetGroupsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBProxyTargetGroupsRequest,
            reporting: InvocationReportingType) throws -> RDSModel.DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups

    /**
     Invokes the DescribeDBProxyTargets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBProxyTargetsRequest object being passed to this operation.
         - completion: The DescribeDBProxyTargetsResponseForDescribeDBProxyTargets object or an error will be passed to this 
           callback when the operation is complete. The DescribeDBProxyTargetsResponseForDescribeDBProxyTargets
           object will be validated before being returned to caller.
           The possible errors are: dBProxyNotFound, dBProxyTargetGroupNotFound, dBProxyTargetNotFound.
     */
    func describeDBProxyTargetsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBProxyTargetsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DescribeDBProxyTargetsResponseForDescribeDBProxyTargets, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBProxyTargets operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBProxyTargetsRequest object being passed to this operation.
     - Returns: The DescribeDBProxyTargetsResponseForDescribeDBProxyTargets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound, dBProxyTargetGroupNotFound, dBProxyTargetNotFound.
     */
    func describeDBProxyTargetsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBProxyTargetsRequest,
            reporting: InvocationReportingType) throws -> RDSModel.DescribeDBProxyTargetsResponseForDescribeDBProxyTargets

    /**
     Invokes the DescribeDBSecurityGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBSecurityGroupsMessage object being passed to this operation.
         - completion: The DBSecurityGroupMessageForDescribeDBSecurityGroups object or an error will be passed to this 
           callback when the operation is complete. The DBSecurityGroupMessageForDescribeDBSecurityGroups
           object will be validated before being returned to caller.
           The possible errors are: dBSecurityGroupNotFound.
     */
    func describeDBSecurityGroupsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBSecurityGroupsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBSecurityGroupMessageForDescribeDBSecurityGroups, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBSecurityGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBSecurityGroupsMessage object being passed to this operation.
     - Returns: The DBSecurityGroupMessageForDescribeDBSecurityGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSecurityGroupNotFound.
     */
    func describeDBSecurityGroupsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBSecurityGroupsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBSecurityGroupMessageForDescribeDBSecurityGroups

    /**
     Invokes the DescribeDBSnapshotAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBSnapshotAttributesMessage object being passed to this operation.
         - completion: The DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes object or an error will be passed to this 
           callback when the operation is complete. The DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes
           object will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound.
     */
    func describeDBSnapshotAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBSnapshotAttributesMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBSnapshotAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBSnapshotAttributesMessage object being passed to this operation.
     - Returns: The DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound.
     */
    func describeDBSnapshotAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBSnapshotAttributesMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes

    /**
     Invokes the DescribeDBSnapshots operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBSnapshotsMessage object being passed to this operation.
         - completion: The DBSnapshotMessageForDescribeDBSnapshots object or an error will be passed to this 
           callback when the operation is complete. The DBSnapshotMessageForDescribeDBSnapshots
           object will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound.
     */
    func describeDBSnapshotsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBSnapshotsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBSnapshotMessageForDescribeDBSnapshots, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBSnapshots operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBSnapshotsMessage object being passed to this operation.
     - Returns: The DBSnapshotMessageForDescribeDBSnapshots object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound.
     */
    func describeDBSnapshotsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBSnapshotsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBSnapshotMessageForDescribeDBSnapshots

    /**
     Invokes the DescribeDBSubnetGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBSubnetGroupsMessage object being passed to this operation.
         - completion: The DBSubnetGroupMessageForDescribeDBSubnetGroups object or an error will be passed to this 
           callback when the operation is complete. The DBSubnetGroupMessageForDescribeDBSubnetGroups
           object will be validated before being returned to caller.
           The possible errors are: dBSubnetGroupNotFound.
     */
    func describeDBSubnetGroupsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBSubnetGroupsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBSubnetGroupMessageForDescribeDBSubnetGroups, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBSubnetGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBSubnetGroupsMessage object being passed to this operation.
     - Returns: The DBSubnetGroupMessageForDescribeDBSubnetGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSubnetGroupNotFound.
     */
    func describeDBSubnetGroupsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeDBSubnetGroupsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBSubnetGroupMessageForDescribeDBSubnetGroups

    /**
     Invokes the DescribeEngineDefaultClusterParameters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEngineDefaultClusterParametersMessage object being passed to this operation.
         - completion: The DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters object or an error will be passed to this 
           callback when the operation is complete. The DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters
           object will be validated before being returned to caller.
     */
    func describeEngineDefaultClusterParametersAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeEngineDefaultClusterParametersMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeEngineDefaultClusterParameters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEngineDefaultClusterParametersMessage object being passed to this operation.
     - Returns: The DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEngineDefaultClusterParametersSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeEngineDefaultClusterParametersMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters

    /**
     Invokes the DescribeEngineDefaultParameters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEngineDefaultParametersMessage object being passed to this operation.
         - completion: The DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters object or an error will be passed to this 
           callback when the operation is complete. The DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters
           object will be validated before being returned to caller.
     */
    func describeEngineDefaultParametersAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeEngineDefaultParametersMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeEngineDefaultParameters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEngineDefaultParametersMessage object being passed to this operation.
     - Returns: The DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEngineDefaultParametersSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeEngineDefaultParametersMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters

    /**
     Invokes the DescribeEventCategories operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEventCategoriesMessage object being passed to this operation.
         - completion: The EventCategoriesMessageForDescribeEventCategories object or an error will be passed to this 
           callback when the operation is complete. The EventCategoriesMessageForDescribeEventCategories
           object will be validated before being returned to caller.
     */
    func describeEventCategoriesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeEventCategoriesMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.EventCategoriesMessageForDescribeEventCategories, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeEventCategories operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEventCategoriesMessage object being passed to this operation.
     - Returns: The EventCategoriesMessageForDescribeEventCategories object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEventCategoriesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeEventCategoriesMessage,
            reporting: InvocationReportingType) throws -> RDSModel.EventCategoriesMessageForDescribeEventCategories

    /**
     Invokes the DescribeEventSubscriptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEventSubscriptionsMessage object being passed to this operation.
         - completion: The EventSubscriptionsMessageForDescribeEventSubscriptions object or an error will be passed to this 
           callback when the operation is complete. The EventSubscriptionsMessageForDescribeEventSubscriptions
           object will be validated before being returned to caller.
           The possible errors are: subscriptionNotFound.
     */
    func describeEventSubscriptionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeEventSubscriptionsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.EventSubscriptionsMessageForDescribeEventSubscriptions, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeEventSubscriptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEventSubscriptionsMessage object being passed to this operation.
     - Returns: The EventSubscriptionsMessageForDescribeEventSubscriptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: subscriptionNotFound.
     */
    func describeEventSubscriptionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeEventSubscriptionsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.EventSubscriptionsMessageForDescribeEventSubscriptions

    /**
     Invokes the DescribeEvents operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEventsMessage object being passed to this operation.
         - completion: The EventsMessageForDescribeEvents object or an error will be passed to this 
           callback when the operation is complete. The EventsMessageForDescribeEvents
           object will be validated before being returned to caller.
     */
    func describeEventsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeEventsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.EventsMessageForDescribeEvents, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeEvents operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEventsMessage object being passed to this operation.
     - Returns: The EventsMessageForDescribeEvents object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEventsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeEventsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.EventsMessageForDescribeEvents

    /**
     Invokes the DescribeExportTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeExportTasksMessage object being passed to this operation.
         - completion: The ExportTasksMessageForDescribeExportTasks object or an error will be passed to this 
           callback when the operation is complete. The ExportTasksMessageForDescribeExportTasks
           object will be validated before being returned to caller.
           The possible errors are: exportTaskNotFound.
     */
    func describeExportTasksAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeExportTasksMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ExportTasksMessageForDescribeExportTasks, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeExportTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeExportTasksMessage object being passed to this operation.
     - Returns: The ExportTasksMessageForDescribeExportTasks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: exportTaskNotFound.
     */
    func describeExportTasksSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeExportTasksMessage,
            reporting: InvocationReportingType) throws -> RDSModel.ExportTasksMessageForDescribeExportTasks

    /**
     Invokes the DescribeGlobalClusters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeGlobalClustersMessage object being passed to this operation.
         - completion: The GlobalClustersMessageForDescribeGlobalClusters object or an error will be passed to this 
           callback when the operation is complete. The GlobalClustersMessageForDescribeGlobalClusters
           object will be validated before being returned to caller.
           The possible errors are: globalClusterNotFound.
     */
    func describeGlobalClustersAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeGlobalClustersMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.GlobalClustersMessageForDescribeGlobalClusters, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeGlobalClusters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeGlobalClustersMessage object being passed to this operation.
     - Returns: The GlobalClustersMessageForDescribeGlobalClusters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalClusterNotFound.
     */
    func describeGlobalClustersSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeGlobalClustersMessage,
            reporting: InvocationReportingType) throws -> RDSModel.GlobalClustersMessageForDescribeGlobalClusters

    /**
     Invokes the DescribeInstallationMedia operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInstallationMediaMessage object being passed to this operation.
         - completion: The InstallationMediaMessageForDescribeInstallationMedia object or an error will be passed to this 
           callback when the operation is complete. The InstallationMediaMessageForDescribeInstallationMedia
           object will be validated before being returned to caller.
           The possible errors are: installationMediaNotFound.
     */
    func describeInstallationMediaAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeInstallationMediaMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.InstallationMediaMessageForDescribeInstallationMedia, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeInstallationMedia operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInstallationMediaMessage object being passed to this operation.
     - Returns: The InstallationMediaMessageForDescribeInstallationMedia object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: installationMediaNotFound.
     */
    func describeInstallationMediaSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeInstallationMediaMessage,
            reporting: InvocationReportingType) throws -> RDSModel.InstallationMediaMessageForDescribeInstallationMedia

    /**
     Invokes the DescribeOptionGroupOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeOptionGroupOptionsMessage object being passed to this operation.
         - completion: The OptionGroupOptionsMessageForDescribeOptionGroupOptions object or an error will be passed to this 
           callback when the operation is complete. The OptionGroupOptionsMessageForDescribeOptionGroupOptions
           object will be validated before being returned to caller.
     */
    func describeOptionGroupOptionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeOptionGroupOptionsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.OptionGroupOptionsMessageForDescribeOptionGroupOptions, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeOptionGroupOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeOptionGroupOptionsMessage object being passed to this operation.
     - Returns: The OptionGroupOptionsMessageForDescribeOptionGroupOptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeOptionGroupOptionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeOptionGroupOptionsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.OptionGroupOptionsMessageForDescribeOptionGroupOptions

    /**
     Invokes the DescribeOptionGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeOptionGroupsMessage object being passed to this operation.
         - completion: The OptionGroupsForDescribeOptionGroups object or an error will be passed to this 
           callback when the operation is complete. The OptionGroupsForDescribeOptionGroups
           object will be validated before being returned to caller.
           The possible errors are: optionGroupNotFound.
     */
    func describeOptionGroupsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeOptionGroupsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.OptionGroupsForDescribeOptionGroups, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeOptionGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeOptionGroupsMessage object being passed to this operation.
     - Returns: The OptionGroupsForDescribeOptionGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: optionGroupNotFound.
     */
    func describeOptionGroupsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeOptionGroupsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.OptionGroupsForDescribeOptionGroups

    /**
     Invokes the DescribeOrderableDBInstanceOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeOrderableDBInstanceOptionsMessage object being passed to this operation.
         - completion: The OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions object or an error will be passed to this 
           callback when the operation is complete. The OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions
           object will be validated before being returned to caller.
     */
    func describeOrderableDBInstanceOptionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeOrderableDBInstanceOptionsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeOrderableDBInstanceOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeOrderableDBInstanceOptionsMessage object being passed to this operation.
     - Returns: The OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeOrderableDBInstanceOptionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeOrderableDBInstanceOptionsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions

    /**
     Invokes the DescribePendingMaintenanceActions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribePendingMaintenanceActionsMessage object being passed to this operation.
         - completion: The PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions object or an error will be passed to this 
           callback when the operation is complete. The PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions
           object will be validated before being returned to caller.
           The possible errors are: resourceNotFound.
     */
    func describePendingMaintenanceActionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribePendingMaintenanceActionsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribePendingMaintenanceActions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribePendingMaintenanceActionsMessage object being passed to this operation.
     - Returns: The PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: resourceNotFound.
     */
    func describePendingMaintenanceActionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribePendingMaintenanceActionsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions

    /**
     Invokes the DescribeReservedDBInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesMessage object being passed to this operation.
         - completion: The ReservedDBInstanceMessageForDescribeReservedDBInstances object or an error will be passed to this 
           callback when the operation is complete. The ReservedDBInstanceMessageForDescribeReservedDBInstances
           object will be validated before being returned to caller.
           The possible errors are: reservedDBInstanceNotFound.
     */
    func describeReservedDBInstancesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeReservedDBInstancesMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ReservedDBInstanceMessageForDescribeReservedDBInstances, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeReservedDBInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesMessage object being passed to this operation.
     - Returns: The ReservedDBInstanceMessageForDescribeReservedDBInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: reservedDBInstanceNotFound.
     */
    func describeReservedDBInstancesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeReservedDBInstancesMessage,
            reporting: InvocationReportingType) throws -> RDSModel.ReservedDBInstanceMessageForDescribeReservedDBInstances

    /**
     Invokes the DescribeReservedDBInstancesOfferings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesOfferingsMessage object being passed to this operation.
         - completion: The ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings object or an error will be passed to this 
           callback when the operation is complete. The ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings
           object will be validated before being returned to caller.
           The possible errors are: reservedDBInstancesOfferingNotFound.
     */
    func describeReservedDBInstancesOfferingsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeReservedDBInstancesOfferingsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeReservedDBInstancesOfferings operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesOfferingsMessage object being passed to this operation.
     - Returns: The ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: reservedDBInstancesOfferingNotFound.
     */
    func describeReservedDBInstancesOfferingsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeReservedDBInstancesOfferingsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings

    /**
     Invokes the DescribeSourceRegions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSourceRegionsMessage object being passed to this operation.
         - completion: The SourceRegionMessageForDescribeSourceRegions object or an error will be passed to this 
           callback when the operation is complete. The SourceRegionMessageForDescribeSourceRegions
           object will be validated before being returned to caller.
     */
    func describeSourceRegionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeSourceRegionsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.SourceRegionMessageForDescribeSourceRegions, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeSourceRegions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSourceRegionsMessage object being passed to this operation.
     - Returns: The SourceRegionMessageForDescribeSourceRegions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSourceRegionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeSourceRegionsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.SourceRegionMessageForDescribeSourceRegions

    /**
     Invokes the DescribeValidDBInstanceModifications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeValidDBInstanceModificationsMessage object being passed to this operation.
         - completion: The DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications object or an error will be passed to this 
           callback when the operation is complete. The DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, invalidDBInstanceState.
     */
    func describeValidDBInstanceModificationsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeValidDBInstanceModificationsMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeValidDBInstanceModifications operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeValidDBInstanceModificationsMessage object being passed to this operation.
     - Returns: The DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    func describeValidDBInstanceModificationsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DescribeValidDBInstanceModificationsMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications

    /**
     Invokes the DownloadDBLogFilePortion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DownloadDBLogFilePortionMessage object being passed to this operation.
         - completion: The DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion object or an error will be passed to this 
           callback when the operation is complete. The DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, dBLogFileNotFound.
     */
    func downloadDBLogFilePortionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DownloadDBLogFilePortionMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion, HTTPClientError>) -> ()) throws

    /**
     Invokes the DownloadDBLogFilePortion operation waiting for the response before returning.

     - Parameters:
         - input: The validated DownloadDBLogFilePortionMessage object being passed to this operation.
     - Returns: The DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, dBLogFileNotFound.
     */
    func downloadDBLogFilePortionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.DownloadDBLogFilePortionMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion

    /**
     Invokes the FailoverDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated FailoverDBClusterMessage object being passed to this operation.
         - completion: The FailoverDBClusterResultForFailoverDBCluster object or an error will be passed to this 
           callback when the operation is complete. The FailoverDBClusterResultForFailoverDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func failoverDBClusterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.FailoverDBClusterMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.FailoverDBClusterResultForFailoverDBCluster, HTTPClientError>) -> ()) throws

    /**
     Invokes the FailoverDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated FailoverDBClusterMessage object being passed to this operation.
     - Returns: The FailoverDBClusterResultForFailoverDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func failoverDBClusterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.FailoverDBClusterMessage,
            reporting: InvocationReportingType) throws -> RDSModel.FailoverDBClusterResultForFailoverDBCluster

    /**
     Invokes the ImportInstallationMedia operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportInstallationMediaMessage object being passed to this operation.
         - completion: The InstallationMediaForImportInstallationMedia object or an error will be passed to this 
           callback when the operation is complete. The InstallationMediaForImportInstallationMedia
           object will be validated before being returned to caller.
           The possible errors are: customAvailabilityZoneNotFound, installationMediaAlreadyExists.
     */
    func importInstallationMediaAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ImportInstallationMediaMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.InstallationMediaForImportInstallationMedia, HTTPClientError>) -> ()) throws

    /**
     Invokes the ImportInstallationMedia operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportInstallationMediaMessage object being passed to this operation.
     - Returns: The InstallationMediaForImportInstallationMedia object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: customAvailabilityZoneNotFound, installationMediaAlreadyExists.
     */
    func importInstallationMediaSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ImportInstallationMediaMessage,
            reporting: InvocationReportingType) throws -> RDSModel.InstallationMediaForImportInstallationMedia

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceMessage object being passed to this operation.
         - completion: The TagListMessageForListTagsForResource object or an error will be passed to this 
           callback when the operation is complete. The TagListMessageForListTagsForResource
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    func listTagsForResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ListTagsForResourceMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.TagListMessageForListTagsForResource, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceMessage object being passed to this operation.
     - Returns: The TagListMessageForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    func listTagsForResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ListTagsForResourceMessage,
            reporting: InvocationReportingType) throws -> RDSModel.TagListMessageForListTagsForResource

    /**
     Invokes the ModifyCertificates operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyCertificatesMessage object being passed to this operation.
         - completion: The ModifyCertificatesResultForModifyCertificates object or an error will be passed to this 
           callback when the operation is complete. The ModifyCertificatesResultForModifyCertificates
           object will be validated before being returned to caller.
           The possible errors are: certificateNotFound.
     */
    func modifyCertificatesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyCertificatesMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ModifyCertificatesResultForModifyCertificates, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyCertificates operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyCertificatesMessage object being passed to this operation.
     - Returns: The ModifyCertificatesResultForModifyCertificates object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: certificateNotFound.
     */
    func modifyCertificatesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyCertificatesMessage,
            reporting: InvocationReportingType) throws -> RDSModel.ModifyCertificatesResultForModifyCertificates

    /**
     Invokes the ModifyCurrentDBClusterCapacity operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyCurrentDBClusterCapacityMessage object being passed to this operation.
         - completion: The DBClusterCapacityInfoForModifyCurrentDBClusterCapacity object or an error will be passed to this 
           callback when the operation is complete. The DBClusterCapacityInfoForModifyCurrentDBClusterCapacity
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterCapacity, invalidDBClusterState.
     */
    func modifyCurrentDBClusterCapacityAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyCurrentDBClusterCapacityMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBClusterCapacityInfoForModifyCurrentDBClusterCapacity, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyCurrentDBClusterCapacity operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyCurrentDBClusterCapacityMessage object being passed to this operation.
     - Returns: The DBClusterCapacityInfoForModifyCurrentDBClusterCapacity object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterCapacity, invalidDBClusterState.
     */
    func modifyCurrentDBClusterCapacitySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyCurrentDBClusterCapacityMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBClusterCapacityInfoForModifyCurrentDBClusterCapacity

    /**
     Invokes the ModifyDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBClusterMessage object being passed to this operation.
         - completion: The ModifyDBClusterResultForModifyDBCluster object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBClusterResultForModifyDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBSubnetGroupNotFound, domainNotFound, invalidDBClusterState, invalidDBInstanceState, invalidDBSecurityGroupState, invalidDBSubnetGroupState, invalidSubnet, invalidVPCNetworkState, storageQuotaExceeded.
     */
    func modifyDBClusterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBClusterMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ModifyDBClusterResultForModifyDBCluster, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBClusterMessage object being passed to this operation.
     - Returns: The ModifyDBClusterResultForModifyDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBSubnetGroupNotFound, domainNotFound, invalidDBClusterState, invalidDBInstanceState, invalidDBSecurityGroupState, invalidDBSubnetGroupState, invalidSubnet, invalidVPCNetworkState, storageQuotaExceeded.
     */
    func modifyDBClusterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBClusterMessage,
            reporting: InvocationReportingType) throws -> RDSModel.ModifyDBClusterResultForModifyDBCluster

    /**
     Invokes the ModifyDBClusterEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBClusterEndpointMessage object being passed to this operation.
         - completion: The DBClusterEndpointForModifyDBClusterEndpoint object or an error will be passed to this 
           callback when the operation is complete. The DBClusterEndpointForModifyDBClusterEndpoint
           object will be validated before being returned to caller.
           The possible errors are: dBClusterEndpointNotFound, dBInstanceNotFound, invalidDBClusterEndpointState, invalidDBClusterState, invalidDBInstanceState.
     */
    func modifyDBClusterEndpointAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBClusterEndpointMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBClusterEndpointForModifyDBClusterEndpoint, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyDBClusterEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBClusterEndpointMessage object being passed to this operation.
     - Returns: The DBClusterEndpointForModifyDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterEndpointNotFound, dBInstanceNotFound, invalidDBClusterEndpointState, invalidDBClusterState, invalidDBInstanceState.
     */
    func modifyDBClusterEndpointSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBClusterEndpointMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBClusterEndpointForModifyDBClusterEndpoint

    /**
     Invokes the ModifyDBClusterParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBClusterParameterGroupMessage object being passed to this operation.
         - completion: The DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func modifyDBClusterParameterGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBClusterParameterGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func modifyDBClusterParameterGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBClusterParameterGroupMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup

    /**
     Invokes the ModifyDBClusterSnapshotAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBClusterSnapshotAttributeMessage object being passed to this operation.
         - completion: The ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute
           object will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, sharedSnapshotQuotaExceeded.
     */
    func modifyDBClusterSnapshotAttributeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBClusterSnapshotAttributeMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyDBClusterSnapshotAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBClusterSnapshotAttributeMessage object being passed to this operation.
     - Returns: The ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, sharedSnapshotQuotaExceeded.
     */
    func modifyDBClusterSnapshotAttributeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBClusterSnapshotAttributeMessage,
            reporting: InvocationReportingType) throws -> RDSModel.ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute

    /**
     Invokes the ModifyDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBInstanceMessage object being passed to this operation.
         - completion: The ModifyDBInstanceResultForModifyDBInstance object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBInstanceResultForModifyDBInstance
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, certificateNotFound, dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBUpgradeDependencyFailure, domainNotFound, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSecurityGroupState, invalidVPCNetworkState, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func modifyDBInstanceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBInstanceMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ModifyDBInstanceResultForModifyDBInstance, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBInstanceMessage object being passed to this operation.
     - Returns: The ModifyDBInstanceResultForModifyDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, certificateNotFound, dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBUpgradeDependencyFailure, domainNotFound, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSecurityGroupState, invalidVPCNetworkState, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func modifyDBInstanceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBInstanceMessage,
            reporting: InvocationReportingType) throws -> RDSModel.ModifyDBInstanceResultForModifyDBInstance

    /**
     Invokes the ModifyDBParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBParameterGroupMessage object being passed to this operation.
         - completion: The DBParameterGroupNameMessageForModifyDBParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The DBParameterGroupNameMessageForModifyDBParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func modifyDBParameterGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBParameterGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBParameterGroupNameMessageForModifyDBParameterGroup, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBParameterGroupMessage object being passed to this operation.
     - Returns: The DBParameterGroupNameMessageForModifyDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func modifyDBParameterGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBParameterGroupMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBParameterGroupNameMessageForModifyDBParameterGroup

    /**
     Invokes the ModifyDBProxy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBProxyRequest object being passed to this operation.
         - completion: The ModifyDBProxyResponseForModifyDBProxy object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBProxyResponseForModifyDBProxy
           object will be validated before being returned to caller.
           The possible errors are: dBProxyAlreadyExists, dBProxyNotFound, invalidDBProxyState.
     */
    func modifyDBProxyAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBProxyRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ModifyDBProxyResponseForModifyDBProxy, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyDBProxy operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBProxyRequest object being passed to this operation.
     - Returns: The ModifyDBProxyResponseForModifyDBProxy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyAlreadyExists, dBProxyNotFound, invalidDBProxyState.
     */
    func modifyDBProxySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBProxyRequest,
            reporting: InvocationReportingType) throws -> RDSModel.ModifyDBProxyResponseForModifyDBProxy

    /**
     Invokes the ModifyDBProxyTargetGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBProxyTargetGroupRequest object being passed to this operation.
         - completion: The ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup
           object will be validated before being returned to caller.
           The possible errors are: dBProxyNotFound, dBProxyTargetGroupNotFound.
     */
    func modifyDBProxyTargetGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBProxyTargetGroupRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyDBProxyTargetGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBProxyTargetGroupRequest object being passed to this operation.
     - Returns: The ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound, dBProxyTargetGroupNotFound.
     */
    func modifyDBProxyTargetGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBProxyTargetGroupRequest,
            reporting: InvocationReportingType) throws -> RDSModel.ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup

    /**
     Invokes the ModifyDBSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBSnapshotMessage object being passed to this operation.
         - completion: The ModifyDBSnapshotResultForModifyDBSnapshot object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBSnapshotResultForModifyDBSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound.
     */
    func modifyDBSnapshotAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBSnapshotMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ModifyDBSnapshotResultForModifyDBSnapshot, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBSnapshotMessage object being passed to this operation.
     - Returns: The ModifyDBSnapshotResultForModifyDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound.
     */
    func modifyDBSnapshotSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBSnapshotMessage,
            reporting: InvocationReportingType) throws -> RDSModel.ModifyDBSnapshotResultForModifyDBSnapshot

    /**
     Invokes the ModifyDBSnapshotAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBSnapshotAttributeMessage object being passed to this operation.
         - completion: The ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute
           object will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound, invalidDBSnapshotState, sharedSnapshotQuotaExceeded.
     */
    func modifyDBSnapshotAttributeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBSnapshotAttributeMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyDBSnapshotAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBSnapshotAttributeMessage object being passed to this operation.
     - Returns: The ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound, invalidDBSnapshotState, sharedSnapshotQuotaExceeded.
     */
    func modifyDBSnapshotAttributeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBSnapshotAttributeMessage,
            reporting: InvocationReportingType) throws -> RDSModel.ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute

    /**
     Invokes the ModifyDBSubnetGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBSubnetGroupMessage object being passed to this operation.
         - completion: The ModifyDBSubnetGroupResultForModifyDBSubnetGroup object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBSubnetGroupResultForModifyDBSubnetGroup
           object will be validated before being returned to caller.
           The possible errors are: dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, dBSubnetQuotaExceeded, invalidSubnet, subnetAlreadyInUse.
     */
    func modifyDBSubnetGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBSubnetGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ModifyDBSubnetGroupResultForModifyDBSubnetGroup, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyDBSubnetGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBSubnetGroupMessage object being passed to this operation.
     - Returns: The ModifyDBSubnetGroupResultForModifyDBSubnetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, dBSubnetQuotaExceeded, invalidSubnet, subnetAlreadyInUse.
     */
    func modifyDBSubnetGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyDBSubnetGroupMessage,
            reporting: InvocationReportingType) throws -> RDSModel.ModifyDBSubnetGroupResultForModifyDBSubnetGroup

    /**
     Invokes the ModifyEventSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyEventSubscriptionMessage object being passed to this operation.
         - completion: The ModifyEventSubscriptionResultForModifyEventSubscription object or an error will be passed to this 
           callback when the operation is complete. The ModifyEventSubscriptionResultForModifyEventSubscription
           object will be validated before being returned to caller.
           The possible errors are: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, subscriptionCategoryNotFound, subscriptionNotFound.
     */
    func modifyEventSubscriptionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyEventSubscriptionMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ModifyEventSubscriptionResultForModifyEventSubscription, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyEventSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyEventSubscriptionMessage object being passed to this operation.
     - Returns: The ModifyEventSubscriptionResultForModifyEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, subscriptionCategoryNotFound, subscriptionNotFound.
     */
    func modifyEventSubscriptionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyEventSubscriptionMessage,
            reporting: InvocationReportingType) throws -> RDSModel.ModifyEventSubscriptionResultForModifyEventSubscription

    /**
     Invokes the ModifyGlobalCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyGlobalClusterMessage object being passed to this operation.
         - completion: The ModifyGlobalClusterResultForModifyGlobalCluster object or an error will be passed to this 
           callback when the operation is complete. The ModifyGlobalClusterResultForModifyGlobalCluster
           object will be validated before being returned to caller.
           The possible errors are: globalClusterNotFound, invalidGlobalClusterState.
     */
    func modifyGlobalClusterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyGlobalClusterMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ModifyGlobalClusterResultForModifyGlobalCluster, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyGlobalCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyGlobalClusterMessage object being passed to this operation.
     - Returns: The ModifyGlobalClusterResultForModifyGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalClusterNotFound, invalidGlobalClusterState.
     */
    func modifyGlobalClusterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyGlobalClusterMessage,
            reporting: InvocationReportingType) throws -> RDSModel.ModifyGlobalClusterResultForModifyGlobalCluster

    /**
     Invokes the ModifyOptionGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyOptionGroupMessage object being passed to this operation.
         - completion: The ModifyOptionGroupResultForModifyOptionGroup object or an error will be passed to this 
           callback when the operation is complete. The ModifyOptionGroupResultForModifyOptionGroup
           object will be validated before being returned to caller.
           The possible errors are: invalidOptionGroupState, optionGroupNotFound.
     */
    func modifyOptionGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyOptionGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ModifyOptionGroupResultForModifyOptionGroup, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyOptionGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyOptionGroupMessage object being passed to this operation.
     - Returns: The ModifyOptionGroupResultForModifyOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOptionGroupState, optionGroupNotFound.
     */
    func modifyOptionGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ModifyOptionGroupMessage,
            reporting: InvocationReportingType) throws -> RDSModel.ModifyOptionGroupResultForModifyOptionGroup

    /**
     Invokes the PromoteReadReplica operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PromoteReadReplicaMessage object being passed to this operation.
         - completion: The PromoteReadReplicaResultForPromoteReadReplica object or an error will be passed to this 
           callback when the operation is complete. The PromoteReadReplicaResultForPromoteReadReplica
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, invalidDBInstanceState.
     */
    func promoteReadReplicaAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.PromoteReadReplicaMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.PromoteReadReplicaResultForPromoteReadReplica, HTTPClientError>) -> ()) throws

    /**
     Invokes the PromoteReadReplica operation waiting for the response before returning.

     - Parameters:
         - input: The validated PromoteReadReplicaMessage object being passed to this operation.
     - Returns: The PromoteReadReplicaResultForPromoteReadReplica object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    func promoteReadReplicaSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.PromoteReadReplicaMessage,
            reporting: InvocationReportingType) throws -> RDSModel.PromoteReadReplicaResultForPromoteReadReplica

    /**
     Invokes the PromoteReadReplicaDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PromoteReadReplicaDBClusterMessage object being passed to this operation.
         - completion: The PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster object or an error will be passed to this 
           callback when the operation is complete. The PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState.
     */
    func promoteReadReplicaDBClusterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.PromoteReadReplicaDBClusterMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster, HTTPClientError>) -> ()) throws

    /**
     Invokes the PromoteReadReplicaDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated PromoteReadReplicaDBClusterMessage object being passed to this operation.
     - Returns: The PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState.
     */
    func promoteReadReplicaDBClusterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.PromoteReadReplicaDBClusterMessage,
            reporting: InvocationReportingType) throws -> RDSModel.PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster

    /**
     Invokes the PurchaseReservedDBInstancesOffering operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PurchaseReservedDBInstancesOfferingMessage object being passed to this operation.
         - completion: The PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering object or an error will be passed to this 
           callback when the operation is complete. The PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering
           object will be validated before being returned to caller.
           The possible errors are: reservedDBInstanceAlreadyExists, reservedDBInstanceQuotaExceeded, reservedDBInstancesOfferingNotFound.
     */
    func purchaseReservedDBInstancesOfferingAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.PurchaseReservedDBInstancesOfferingMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering, HTTPClientError>) -> ()) throws

    /**
     Invokes the PurchaseReservedDBInstancesOffering operation waiting for the response before returning.

     - Parameters:
         - input: The validated PurchaseReservedDBInstancesOfferingMessage object being passed to this operation.
     - Returns: The PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: reservedDBInstanceAlreadyExists, reservedDBInstanceQuotaExceeded, reservedDBInstancesOfferingNotFound.
     */
    func purchaseReservedDBInstancesOfferingSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.PurchaseReservedDBInstancesOfferingMessage,
            reporting: InvocationReportingType) throws -> RDSModel.PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering

    /**
     Invokes the RebootDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RebootDBInstanceMessage object being passed to this operation.
         - completion: The RebootDBInstanceResultForRebootDBInstance object or an error will be passed to this 
           callback when the operation is complete. The RebootDBInstanceResultForRebootDBInstance
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, invalidDBInstanceState.
     */
    func rebootDBInstanceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RebootDBInstanceMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.RebootDBInstanceResultForRebootDBInstance, HTTPClientError>) -> ()) throws

    /**
     Invokes the RebootDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated RebootDBInstanceMessage object being passed to this operation.
     - Returns: The RebootDBInstanceResultForRebootDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    func rebootDBInstanceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RebootDBInstanceMessage,
            reporting: InvocationReportingType) throws -> RDSModel.RebootDBInstanceResultForRebootDBInstance

    /**
     Invokes the RegisterDBProxyTargets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterDBProxyTargetsRequest object being passed to this operation.
         - completion: The RegisterDBProxyTargetsResponseForRegisterDBProxyTargets object or an error will be passed to this 
           callback when the operation is complete. The RegisterDBProxyTargetsResponseForRegisterDBProxyTargets
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetAlreadyRegistered, dBProxyTargetGroupNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func registerDBProxyTargetsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RegisterDBProxyTargetsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.RegisterDBProxyTargetsResponseForRegisterDBProxyTargets, HTTPClientError>) -> ()) throws

    /**
     Invokes the RegisterDBProxyTargets operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterDBProxyTargetsRequest object being passed to this operation.
     - Returns: The RegisterDBProxyTargetsResponseForRegisterDBProxyTargets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetAlreadyRegistered, dBProxyTargetGroupNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func registerDBProxyTargetsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RegisterDBProxyTargetsRequest,
            reporting: InvocationReportingType) throws -> RDSModel.RegisterDBProxyTargetsResponseForRegisterDBProxyTargets

    /**
     Invokes the RemoveFromGlobalCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveFromGlobalClusterMessage object being passed to this operation.
         - completion: The RemoveFromGlobalClusterResultForRemoveFromGlobalCluster object or an error will be passed to this 
           callback when the operation is complete. The RemoveFromGlobalClusterResultForRemoveFromGlobalCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, globalClusterNotFound, invalidGlobalClusterState.
     */
    func removeFromGlobalClusterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RemoveFromGlobalClusterMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.RemoveFromGlobalClusterResultForRemoveFromGlobalCluster, HTTPClientError>) -> ()) throws

    /**
     Invokes the RemoveFromGlobalCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveFromGlobalClusterMessage object being passed to this operation.
     - Returns: The RemoveFromGlobalClusterResultForRemoveFromGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, globalClusterNotFound, invalidGlobalClusterState.
     */
    func removeFromGlobalClusterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RemoveFromGlobalClusterMessage,
            reporting: InvocationReportingType) throws -> RDSModel.RemoveFromGlobalClusterResultForRemoveFromGlobalCluster

    /**
     Invokes the RemoveRoleFromDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveRoleFromDBClusterMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBClusterNotFound, dBClusterRoleNotFound, invalidDBClusterState.
     */
    func removeRoleFromDBClusterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RemoveRoleFromDBClusterMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RemoveRoleFromDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveRoleFromDBClusterMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBClusterRoleNotFound, invalidDBClusterState.
     */
    func removeRoleFromDBClusterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RemoveRoleFromDBClusterMessage,
            reporting: InvocationReportingType) throws

    /**
     Invokes the RemoveRoleFromDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveRoleFromDBInstanceMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBInstanceNotFound, dBInstanceRoleNotFound, invalidDBInstanceState.
     */
    func removeRoleFromDBInstanceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RemoveRoleFromDBInstanceMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RemoveRoleFromDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveRoleFromDBInstanceMessage object being passed to this operation.
     - Throws: dBInstanceNotFound, dBInstanceRoleNotFound, invalidDBInstanceState.
     */
    func removeRoleFromDBInstanceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RemoveRoleFromDBInstanceMessage,
            reporting: InvocationReportingType) throws

    /**
     Invokes the RemoveSourceIdentifierFromSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveSourceIdentifierFromSubscriptionMessage object being passed to this operation.
         - completion: The RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription object or an error will be passed to this 
           callback when the operation is complete. The RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription
           object will be validated before being returned to caller.
           The possible errors are: sourceNotFound, subscriptionNotFound.
     */
    func removeSourceIdentifierFromSubscriptionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RemoveSourceIdentifierFromSubscriptionMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription, HTTPClientError>) -> ()) throws

    /**
     Invokes the RemoveSourceIdentifierFromSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveSourceIdentifierFromSubscriptionMessage object being passed to this operation.
     - Returns: The RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: sourceNotFound, subscriptionNotFound.
     */
    func removeSourceIdentifierFromSubscriptionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RemoveSourceIdentifierFromSubscriptionMessage,
            reporting: InvocationReportingType) throws -> RDSModel.RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription

    /**
     Invokes the RemoveTagsFromResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveTagsFromResourceMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    func removeTagsFromResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RemoveTagsFromResourceMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RemoveTagsFromResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveTagsFromResourceMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    func removeTagsFromResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RemoveTagsFromResourceMessage,
            reporting: InvocationReportingType) throws

    /**
     Invokes the ResetDBClusterParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetDBClusterParameterGroupMessage object being passed to this operation.
         - completion: The DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func resetDBClusterParameterGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ResetDBClusterParameterGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup, HTTPClientError>) -> ()) throws

    /**
     Invokes the ResetDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func resetDBClusterParameterGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ResetDBClusterParameterGroupMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup

    /**
     Invokes the ResetDBParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetDBParameterGroupMessage object being passed to this operation.
         - completion: The DBParameterGroupNameMessageForResetDBParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The DBParameterGroupNameMessageForResetDBParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func resetDBParameterGroupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ResetDBParameterGroupMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.DBParameterGroupNameMessageForResetDBParameterGroup, HTTPClientError>) -> ()) throws

    /**
     Invokes the ResetDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetDBParameterGroupMessage object being passed to this operation.
     - Returns: The DBParameterGroupNameMessageForResetDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func resetDBParameterGroupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.ResetDBParameterGroupMessage,
            reporting: InvocationReportingType) throws -> RDSModel.DBParameterGroupNameMessageForResetDBParameterGroup

    /**
     Invokes the RestoreDBClusterFromS3 operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBClusterFromS3Message object being passed to this operation.
         - completion: The RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3 object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3
           object will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBSubnetGroupNotFound, domainNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBSubnetGroupState, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    func restoreDBClusterFromS3Async<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RestoreDBClusterFromS3Message, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3, HTTPClientError>) -> ()) throws

    /**
     Invokes the RestoreDBClusterFromS3 operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBClusterFromS3Message object being passed to this operation.
     - Returns: The RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3 object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBSubnetGroupNotFound, domainNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBSubnetGroupState, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    func restoreDBClusterFromS3Sync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RestoreDBClusterFromS3Message,
            reporting: InvocationReportingType) throws -> RDSModel.RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3

    /**
     Invokes the RestoreDBClusterFromSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBClusterFromSnapshotMessage object being passed to this operation.
         - completion: The RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSnapshotNotFound, dBSubnetGroupNotFound, dBSubnetGroupNotFound, domainNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded, storageQuotaExceeded.
     */
    func restoreDBClusterFromSnapshotAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RestoreDBClusterFromSnapshotMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot, HTTPClientError>) -> ()) throws

    /**
     Invokes the RestoreDBClusterFromSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBClusterFromSnapshotMessage object being passed to this operation.
     - Returns: The RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSnapshotNotFound, dBSubnetGroupNotFound, dBSubnetGroupNotFound, domainNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded, storageQuotaExceeded.
     */
    func restoreDBClusterFromSnapshotSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RestoreDBClusterFromSnapshotMessage,
            reporting: InvocationReportingType) throws -> RDSModel.RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot

    /**
     Invokes the RestoreDBClusterToPointInTime operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBClusterToPointInTimeMessage object being passed to this operation.
         - completion: The RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime
           object will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSubnetGroupNotFound, domainNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBClusterState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded.
     */
    func restoreDBClusterToPointInTimeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RestoreDBClusterToPointInTimeMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime, HTTPClientError>) -> ()) throws

    /**
     Invokes the RestoreDBClusterToPointInTime operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBClusterToPointInTimeMessage object being passed to this operation.
     - Returns: The RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSubnetGroupNotFound, domainNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBClusterState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded.
     */
    func restoreDBClusterToPointInTimeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RestoreDBClusterToPointInTimeMessage,
            reporting: InvocationReportingType) throws -> RDSModel.RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime

    /**
     Invokes the RestoreDBInstanceFromDBSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBInstanceFromDBSnapshotMessage object being passed to this operation.
         - completion: The RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSnapshotNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func restoreDBInstanceFromDBSnapshotAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RestoreDBInstanceFromDBSnapshotMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot, HTTPClientError>) -> ()) throws

    /**
     Invokes the RestoreDBInstanceFromDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBInstanceFromDBSnapshotMessage object being passed to this operation.
     - Returns: The RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSnapshotNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func restoreDBInstanceFromDBSnapshotSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RestoreDBInstanceFromDBSnapshotMessage,
            reporting: InvocationReportingType) throws -> RDSModel.RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot

    /**
     Invokes the RestoreDBInstanceFromS3 operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBInstanceFromS3Message object being passed to this operation.
         - completion: The RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3 object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func restoreDBInstanceFromS3Async<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RestoreDBInstanceFromS3Message, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3, HTTPClientError>) -> ()) throws

    /**
     Invokes the RestoreDBInstanceFromS3 operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBInstanceFromS3Message object being passed to this operation.
     - Returns: The RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3 object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func restoreDBInstanceFromS3Sync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RestoreDBInstanceFromS3Message,
            reporting: InvocationReportingType) throws -> RDSModel.RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3

    /**
     Invokes the RestoreDBInstanceToPointInTime operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBInstanceToPointInTimeMessage object being passed to this operation.
         - completion: The RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBInstanceAutomatedBackupNotFound, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, pointInTimeRestoreNotEnabled, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func restoreDBInstanceToPointInTimeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RestoreDBInstanceToPointInTimeMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime, HTTPClientError>) -> ()) throws

    /**
     Invokes the RestoreDBInstanceToPointInTime operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBInstanceToPointInTimeMessage object being passed to this operation.
     - Returns: The RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBInstanceAutomatedBackupNotFound, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, pointInTimeRestoreNotEnabled, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func restoreDBInstanceToPointInTimeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RestoreDBInstanceToPointInTimeMessage,
            reporting: InvocationReportingType) throws -> RDSModel.RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime

    /**
     Invokes the RevokeDBSecurityGroupIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RevokeDBSecurityGroupIngressMessage object being passed to this operation.
         - completion: The RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress object or an error will be passed to this 
           callback when the operation is complete. The RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    func revokeDBSecurityGroupIngressAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RevokeDBSecurityGroupIngressMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress, HTTPClientError>) -> ()) throws

    /**
     Invokes the RevokeDBSecurityGroupIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated RevokeDBSecurityGroupIngressMessage object being passed to this operation.
     - Returns: The RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    func revokeDBSecurityGroupIngressSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.RevokeDBSecurityGroupIngressMessage,
            reporting: InvocationReportingType) throws -> RDSModel.RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress

    /**
     Invokes the StartActivityStream operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartActivityStreamRequest object being passed to this operation.
         - completion: The StartActivityStreamResponseForStartActivityStream object or an error will be passed to this 
           callback when the operation is complete. The StartActivityStreamResponseForStartActivityStream
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState, kMSKeyNotAccessible, resourceNotFound.
     */
    func startActivityStreamAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.StartActivityStreamRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.StartActivityStreamResponseForStartActivityStream, HTTPClientError>) -> ()) throws

    /**
     Invokes the StartActivityStream operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartActivityStreamRequest object being passed to this operation.
     - Returns: The StartActivityStreamResponseForStartActivityStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState, kMSKeyNotAccessible, resourceNotFound.
     */
    func startActivityStreamSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.StartActivityStreamRequest,
            reporting: InvocationReportingType) throws -> RDSModel.StartActivityStreamResponseForStartActivityStream

    /**
     Invokes the StartDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartDBClusterMessage object being passed to this operation.
         - completion: The StartDBClusterResultForStartDBCluster object or an error will be passed to this 
           callback when the operation is complete. The StartDBClusterResultForStartDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func startDBClusterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.StartDBClusterMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.StartDBClusterResultForStartDBCluster, HTTPClientError>) -> ()) throws

    /**
     Invokes the StartDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartDBClusterMessage object being passed to this operation.
     - Returns: The StartDBClusterResultForStartDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func startDBClusterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.StartDBClusterMessage,
            reporting: InvocationReportingType) throws -> RDSModel.StartDBClusterResultForStartDBCluster

    /**
     Invokes the StartDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartDBInstanceMessage object being passed to this operation.
         - completion: The StartDBInstanceResultForStartDBInstance object or an error will be passed to this 
           callback when the operation is complete. The StartDBInstanceResultForStartDBInstance
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, dBClusterNotFound, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, insufficientDBInstanceCapacity, invalidDBClusterState, invalidDBInstanceState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible.
     */
    func startDBInstanceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.StartDBInstanceMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.StartDBInstanceResultForStartDBInstance, HTTPClientError>) -> ()) throws

    /**
     Invokes the StartDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartDBInstanceMessage object being passed to this operation.
     - Returns: The StartDBInstanceResultForStartDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, dBClusterNotFound, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, insufficientDBInstanceCapacity, invalidDBClusterState, invalidDBInstanceState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible.
     */
    func startDBInstanceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.StartDBInstanceMessage,
            reporting: InvocationReportingType) throws -> RDSModel.StartDBInstanceResultForStartDBInstance

    /**
     Invokes the StartExportTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartExportTaskMessage object being passed to this operation.
         - completion: The ExportTaskForStartExportTask object or an error will be passed to this 
           callback when the operation is complete. The ExportTaskForStartExportTask
           object will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound, dBSnapshotNotFound, exportTaskAlreadyExists, iamRoleMissingPermissions, iamRoleNotFound, invalidExportOnly, invalidExportSourceState, invalidS3Bucket, kMSKeyNotAccessible.
     */
    func startExportTaskAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.StartExportTaskMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.ExportTaskForStartExportTask, HTTPClientError>) -> ()) throws

    /**
     Invokes the StartExportTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartExportTaskMessage object being passed to this operation.
     - Returns: The ExportTaskForStartExportTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound, dBSnapshotNotFound, exportTaskAlreadyExists, iamRoleMissingPermissions, iamRoleNotFound, invalidExportOnly, invalidExportSourceState, invalidS3Bucket, kMSKeyNotAccessible.
     */
    func startExportTaskSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.StartExportTaskMessage,
            reporting: InvocationReportingType) throws -> RDSModel.ExportTaskForStartExportTask

    /**
     Invokes the StopActivityStream operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopActivityStreamRequest object being passed to this operation.
         - completion: The StopActivityStreamResponseForStopActivityStream object or an error will be passed to this 
           callback when the operation is complete. The StopActivityStreamResponseForStopActivityStream
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState, resourceNotFound.
     */
    func stopActivityStreamAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.StopActivityStreamRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.StopActivityStreamResponseForStopActivityStream, HTTPClientError>) -> ()) throws

    /**
     Invokes the StopActivityStream operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopActivityStreamRequest object being passed to this operation.
     - Returns: The StopActivityStreamResponseForStopActivityStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState, resourceNotFound.
     */
    func stopActivityStreamSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.StopActivityStreamRequest,
            reporting: InvocationReportingType) throws -> RDSModel.StopActivityStreamResponseForStopActivityStream

    /**
     Invokes the StopDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopDBClusterMessage object being passed to this operation.
         - completion: The StopDBClusterResultForStopDBCluster object or an error will be passed to this 
           callback when the operation is complete. The StopDBClusterResultForStopDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func stopDBClusterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.StopDBClusterMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.StopDBClusterResultForStopDBCluster, HTTPClientError>) -> ()) throws

    /**
     Invokes the StopDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopDBClusterMessage object being passed to this operation.
     - Returns: The StopDBClusterResultForStopDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func stopDBClusterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.StopDBClusterMessage,
            reporting: InvocationReportingType) throws -> RDSModel.StopDBClusterResultForStopDBCluster

    /**
     Invokes the StopDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopDBInstanceMessage object being passed to this operation.
         - completion: The StopDBInstanceResultForStopDBInstance object or an error will be passed to this 
           callback when the operation is complete. The StopDBInstanceResultForStopDBInstance
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    func stopDBInstanceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.StopDBInstanceMessage, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSModel.StopDBInstanceResultForStopDBInstance, HTTPClientError>) -> ()) throws

    /**
     Invokes the StopDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopDBInstanceMessage object being passed to this operation.
     - Returns: The StopDBInstanceResultForStopDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    func stopDBInstanceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSModel.StopDBInstanceMessage,
            reporting: InvocationReportingType) throws -> RDSModel.StopDBInstanceResultForStopDBInstance
}
