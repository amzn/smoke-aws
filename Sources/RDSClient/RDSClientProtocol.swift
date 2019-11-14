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
    typealias AddRoleToDBClusterSyncType = (
            _ input: RDSModel.AddRoleToDBClusterMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias AddRoleToDBClusterAsyncType = (
            _ input: RDSModel.AddRoleToDBClusterMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias AddRoleToDBInstanceSyncType = (
            _ input: RDSModel.AddRoleToDBInstanceMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias AddRoleToDBInstanceAsyncType = (
            _ input: RDSModel.AddRoleToDBInstanceMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias AddSourceIdentifierToSubscriptionSyncType = (
            _ input: RDSModel.AddSourceIdentifierToSubscriptionMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription
    typealias AddSourceIdentifierToSubscriptionAsyncType = (
            _ input: RDSModel.AddSourceIdentifierToSubscriptionMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription, HTTPClientError>) -> ()) throws -> ()
    typealias AddTagsToResourceSyncType = (
            _ input: RDSModel.AddTagsToResourceMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias AddTagsToResourceAsyncType = (
            _ input: RDSModel.AddTagsToResourceMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ApplyPendingMaintenanceActionSyncType = (
            _ input: RDSModel.ApplyPendingMaintenanceActionMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction
    typealias ApplyPendingMaintenanceActionAsyncType = (
            _ input: RDSModel.ApplyPendingMaintenanceActionMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction, HTTPClientError>) -> ()) throws -> ()
    typealias AuthorizeDBSecurityGroupIngressSyncType = (
            _ input: RDSModel.AuthorizeDBSecurityGroupIngressMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress
    typealias AuthorizeDBSecurityGroupIngressAsyncType = (
            _ input: RDSModel.AuthorizeDBSecurityGroupIngressMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress, HTTPClientError>) -> ()) throws -> ()
    typealias BacktrackDBClusterSyncType = (
            _ input: RDSModel.BacktrackDBClusterMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterBacktrackForBacktrackDBCluster
    typealias BacktrackDBClusterAsyncType = (
            _ input: RDSModel.BacktrackDBClusterMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DBClusterBacktrackForBacktrackDBCluster, HTTPClientError>) -> ()) throws -> ()
    typealias CopyDBClusterParameterGroupSyncType = (
            _ input: RDSModel.CopyDBClusterParameterGroupMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup
    typealias CopyDBClusterParameterGroupAsyncType = (
            _ input: RDSModel.CopyDBClusterParameterGroupMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup, HTTPClientError>) -> ()) throws -> ()
    typealias CopyDBClusterSnapshotSyncType = (
            _ input: RDSModel.CopyDBClusterSnapshotMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CopyDBClusterSnapshotResultForCopyDBClusterSnapshot
    typealias CopyDBClusterSnapshotAsyncType = (
            _ input: RDSModel.CopyDBClusterSnapshotMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.CopyDBClusterSnapshotResultForCopyDBClusterSnapshot, HTTPClientError>) -> ()) throws -> ()
    typealias CopyDBParameterGroupSyncType = (
            _ input: RDSModel.CopyDBParameterGroupMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CopyDBParameterGroupResultForCopyDBParameterGroup
    typealias CopyDBParameterGroupAsyncType = (
            _ input: RDSModel.CopyDBParameterGroupMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.CopyDBParameterGroupResultForCopyDBParameterGroup, HTTPClientError>) -> ()) throws -> ()
    typealias CopyDBSnapshotSyncType = (
            _ input: RDSModel.CopyDBSnapshotMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CopyDBSnapshotResultForCopyDBSnapshot
    typealias CopyDBSnapshotAsyncType = (
            _ input: RDSModel.CopyDBSnapshotMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.CopyDBSnapshotResultForCopyDBSnapshot, HTTPClientError>) -> ()) throws -> ()
    typealias CopyOptionGroupSyncType = (
            _ input: RDSModel.CopyOptionGroupMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CopyOptionGroupResultForCopyOptionGroup
    typealias CopyOptionGroupAsyncType = (
            _ input: RDSModel.CopyOptionGroupMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.CopyOptionGroupResultForCopyOptionGroup, HTTPClientError>) -> ()) throws -> ()
    typealias CreateDBClusterSyncType = (
            _ input: RDSModel.CreateDBClusterMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBClusterResultForCreateDBCluster
    typealias CreateDBClusterAsyncType = (
            _ input: RDSModel.CreateDBClusterMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.CreateDBClusterResultForCreateDBCluster, HTTPClientError>) -> ()) throws -> ()
    typealias CreateDBClusterEndpointSyncType = (
            _ input: RDSModel.CreateDBClusterEndpointMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterEndpointForCreateDBClusterEndpoint
    typealias CreateDBClusterEndpointAsyncType = (
            _ input: RDSModel.CreateDBClusterEndpointMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DBClusterEndpointForCreateDBClusterEndpoint, HTTPClientError>) -> ()) throws -> ()
    typealias CreateDBClusterParameterGroupSyncType = (
            _ input: RDSModel.CreateDBClusterParameterGroupMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup
    typealias CreateDBClusterParameterGroupAsyncType = (
            _ input: RDSModel.CreateDBClusterParameterGroupMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup, HTTPClientError>) -> ()) throws -> ()
    typealias CreateDBClusterSnapshotSyncType = (
            _ input: RDSModel.CreateDBClusterSnapshotMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBClusterSnapshotResultForCreateDBClusterSnapshot
    typealias CreateDBClusterSnapshotAsyncType = (
            _ input: RDSModel.CreateDBClusterSnapshotMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.CreateDBClusterSnapshotResultForCreateDBClusterSnapshot, HTTPClientError>) -> ()) throws -> ()
    typealias CreateDBInstanceSyncType = (
            _ input: RDSModel.CreateDBInstanceMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBInstanceResultForCreateDBInstance
    typealias CreateDBInstanceAsyncType = (
            _ input: RDSModel.CreateDBInstanceMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.CreateDBInstanceResultForCreateDBInstance, HTTPClientError>) -> ()) throws -> ()
    typealias CreateDBInstanceReadReplicaSyncType = (
            _ input: RDSModel.CreateDBInstanceReadReplicaMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica
    typealias CreateDBInstanceReadReplicaAsyncType = (
            _ input: RDSModel.CreateDBInstanceReadReplicaMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica, HTTPClientError>) -> ()) throws -> ()
    typealias CreateDBParameterGroupSyncType = (
            _ input: RDSModel.CreateDBParameterGroupMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBParameterGroupResultForCreateDBParameterGroup
    typealias CreateDBParameterGroupAsyncType = (
            _ input: RDSModel.CreateDBParameterGroupMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.CreateDBParameterGroupResultForCreateDBParameterGroup, HTTPClientError>) -> ()) throws -> ()
    typealias CreateDBSecurityGroupSyncType = (
            _ input: RDSModel.CreateDBSecurityGroupMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBSecurityGroupResultForCreateDBSecurityGroup
    typealias CreateDBSecurityGroupAsyncType = (
            _ input: RDSModel.CreateDBSecurityGroupMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.CreateDBSecurityGroupResultForCreateDBSecurityGroup, HTTPClientError>) -> ()) throws -> ()
    typealias CreateDBSnapshotSyncType = (
            _ input: RDSModel.CreateDBSnapshotMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBSnapshotResultForCreateDBSnapshot
    typealias CreateDBSnapshotAsyncType = (
            _ input: RDSModel.CreateDBSnapshotMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.CreateDBSnapshotResultForCreateDBSnapshot, HTTPClientError>) -> ()) throws -> ()
    typealias CreateDBSubnetGroupSyncType = (
            _ input: RDSModel.CreateDBSubnetGroupMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBSubnetGroupResultForCreateDBSubnetGroup
    typealias CreateDBSubnetGroupAsyncType = (
            _ input: RDSModel.CreateDBSubnetGroupMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.CreateDBSubnetGroupResultForCreateDBSubnetGroup, HTTPClientError>) -> ()) throws -> ()
    typealias CreateEventSubscriptionSyncType = (
            _ input: RDSModel.CreateEventSubscriptionMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateEventSubscriptionResultForCreateEventSubscription
    typealias CreateEventSubscriptionAsyncType = (
            _ input: RDSModel.CreateEventSubscriptionMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.CreateEventSubscriptionResultForCreateEventSubscription, HTTPClientError>) -> ()) throws -> ()
    typealias CreateGlobalClusterSyncType = (
            _ input: RDSModel.CreateGlobalClusterMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateGlobalClusterResultForCreateGlobalCluster
    typealias CreateGlobalClusterAsyncType = (
            _ input: RDSModel.CreateGlobalClusterMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.CreateGlobalClusterResultForCreateGlobalCluster, HTTPClientError>) -> ()) throws -> ()
    typealias CreateOptionGroupSyncType = (
            _ input: RDSModel.CreateOptionGroupMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateOptionGroupResultForCreateOptionGroup
    typealias CreateOptionGroupAsyncType = (
            _ input: RDSModel.CreateOptionGroupMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.CreateOptionGroupResultForCreateOptionGroup, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteDBClusterSyncType = (
            _ input: RDSModel.DeleteDBClusterMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DeleteDBClusterResultForDeleteDBCluster
    typealias DeleteDBClusterAsyncType = (
            _ input: RDSModel.DeleteDBClusterMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DeleteDBClusterResultForDeleteDBCluster, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteDBClusterEndpointSyncType = (
            _ input: RDSModel.DeleteDBClusterEndpointMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterEndpointForDeleteDBClusterEndpoint
    typealias DeleteDBClusterEndpointAsyncType = (
            _ input: RDSModel.DeleteDBClusterEndpointMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DBClusterEndpointForDeleteDBClusterEndpoint, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteDBClusterParameterGroupSyncType = (
            _ input: RDSModel.DeleteDBClusterParameterGroupMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias DeleteDBClusterParameterGroupAsyncType = (
            _ input: RDSModel.DeleteDBClusterParameterGroupMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteDBClusterSnapshotSyncType = (
            _ input: RDSModel.DeleteDBClusterSnapshotMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot
    typealias DeleteDBClusterSnapshotAsyncType = (
            _ input: RDSModel.DeleteDBClusterSnapshotMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteDBInstanceSyncType = (
            _ input: RDSModel.DeleteDBInstanceMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DeleteDBInstanceResultForDeleteDBInstance
    typealias DeleteDBInstanceAsyncType = (
            _ input: RDSModel.DeleteDBInstanceMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DeleteDBInstanceResultForDeleteDBInstance, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteDBInstanceAutomatedBackupSyncType = (
            _ input: RDSModel.DeleteDBInstanceAutomatedBackupMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup
    typealias DeleteDBInstanceAutomatedBackupAsyncType = (
            _ input: RDSModel.DeleteDBInstanceAutomatedBackupMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteDBParameterGroupSyncType = (
            _ input: RDSModel.DeleteDBParameterGroupMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias DeleteDBParameterGroupAsyncType = (
            _ input: RDSModel.DeleteDBParameterGroupMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteDBSecurityGroupSyncType = (
            _ input: RDSModel.DeleteDBSecurityGroupMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias DeleteDBSecurityGroupAsyncType = (
            _ input: RDSModel.DeleteDBSecurityGroupMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteDBSnapshotSyncType = (
            _ input: RDSModel.DeleteDBSnapshotMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DeleteDBSnapshotResultForDeleteDBSnapshot
    typealias DeleteDBSnapshotAsyncType = (
            _ input: RDSModel.DeleteDBSnapshotMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DeleteDBSnapshotResultForDeleteDBSnapshot, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteDBSubnetGroupSyncType = (
            _ input: RDSModel.DeleteDBSubnetGroupMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias DeleteDBSubnetGroupAsyncType = (
            _ input: RDSModel.DeleteDBSubnetGroupMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteEventSubscriptionSyncType = (
            _ input: RDSModel.DeleteEventSubscriptionMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DeleteEventSubscriptionResultForDeleteEventSubscription
    typealias DeleteEventSubscriptionAsyncType = (
            _ input: RDSModel.DeleteEventSubscriptionMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DeleteEventSubscriptionResultForDeleteEventSubscription, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteGlobalClusterSyncType = (
            _ input: RDSModel.DeleteGlobalClusterMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DeleteGlobalClusterResultForDeleteGlobalCluster
    typealias DeleteGlobalClusterAsyncType = (
            _ input: RDSModel.DeleteGlobalClusterMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DeleteGlobalClusterResultForDeleteGlobalCluster, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteOptionGroupSyncType = (
            _ input: RDSModel.DeleteOptionGroupMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias DeleteOptionGroupAsyncType = (
            _ input: RDSModel.DeleteOptionGroupMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DescribeAccountAttributesSyncType = (
            _ input: RDSModel.DescribeAccountAttributesMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.AccountAttributesMessageForDescribeAccountAttributes
    typealias DescribeAccountAttributesAsyncType = (
            _ input: RDSModel.DescribeAccountAttributesMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.AccountAttributesMessageForDescribeAccountAttributes, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeCertificatesSyncType = (
            _ input: RDSModel.DescribeCertificatesMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CertificateMessageForDescribeCertificates
    typealias DescribeCertificatesAsyncType = (
            _ input: RDSModel.DescribeCertificatesMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.CertificateMessageForDescribeCertificates, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBClusterBacktracksSyncType = (
            _ input: RDSModel.DescribeDBClusterBacktracksMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterBacktrackMessageForDescribeDBClusterBacktracks
    typealias DescribeDBClusterBacktracksAsyncType = (
            _ input: RDSModel.DescribeDBClusterBacktracksMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DBClusterBacktrackMessageForDescribeDBClusterBacktracks, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBClusterEndpointsSyncType = (
            _ input: RDSModel.DescribeDBClusterEndpointsMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterEndpointMessageForDescribeDBClusterEndpoints
    typealias DescribeDBClusterEndpointsAsyncType = (
            _ input: RDSModel.DescribeDBClusterEndpointsMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DBClusterEndpointMessageForDescribeDBClusterEndpoints, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBClusterParameterGroupsSyncType = (
            _ input: RDSModel.DescribeDBClusterParameterGroupsMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups
    typealias DescribeDBClusterParameterGroupsAsyncType = (
            _ input: RDSModel.DescribeDBClusterParameterGroupsMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBClusterParametersSyncType = (
            _ input: RDSModel.DescribeDBClusterParametersMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterParameterGroupDetailsForDescribeDBClusterParameters
    typealias DescribeDBClusterParametersAsyncType = (
            _ input: RDSModel.DescribeDBClusterParametersMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DBClusterParameterGroupDetailsForDescribeDBClusterParameters, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBClusterSnapshotAttributesSyncType = (
            _ input: RDSModel.DescribeDBClusterSnapshotAttributesMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes
    typealias DescribeDBClusterSnapshotAttributesAsyncType = (
            _ input: RDSModel.DescribeDBClusterSnapshotAttributesMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBClusterSnapshotsSyncType = (
            _ input: RDSModel.DescribeDBClusterSnapshotsMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterSnapshotMessageForDescribeDBClusterSnapshots
    typealias DescribeDBClusterSnapshotsAsyncType = (
            _ input: RDSModel.DescribeDBClusterSnapshotsMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DBClusterSnapshotMessageForDescribeDBClusterSnapshots, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBClustersSyncType = (
            _ input: RDSModel.DescribeDBClustersMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterMessageForDescribeDBClusters
    typealias DescribeDBClustersAsyncType = (
            _ input: RDSModel.DescribeDBClustersMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DBClusterMessageForDescribeDBClusters, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBEngineVersionsSyncType = (
            _ input: RDSModel.DescribeDBEngineVersionsMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBEngineVersionMessageForDescribeDBEngineVersions
    typealias DescribeDBEngineVersionsAsyncType = (
            _ input: RDSModel.DescribeDBEngineVersionsMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DBEngineVersionMessageForDescribeDBEngineVersions, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBInstanceAutomatedBackupsSyncType = (
            _ input: RDSModel.DescribeDBInstanceAutomatedBackupsMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups
    typealias DescribeDBInstanceAutomatedBackupsAsyncType = (
            _ input: RDSModel.DescribeDBInstanceAutomatedBackupsMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBInstancesSyncType = (
            _ input: RDSModel.DescribeDBInstancesMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBInstanceMessageForDescribeDBInstances
    typealias DescribeDBInstancesAsyncType = (
            _ input: RDSModel.DescribeDBInstancesMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DBInstanceMessageForDescribeDBInstances, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBLogFilesSyncType = (
            _ input: RDSModel.DescribeDBLogFilesMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DescribeDBLogFilesResponseForDescribeDBLogFiles
    typealias DescribeDBLogFilesAsyncType = (
            _ input: RDSModel.DescribeDBLogFilesMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DescribeDBLogFilesResponseForDescribeDBLogFiles, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBParameterGroupsSyncType = (
            _ input: RDSModel.DescribeDBParameterGroupsMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBParameterGroupsMessageForDescribeDBParameterGroups
    typealias DescribeDBParameterGroupsAsyncType = (
            _ input: RDSModel.DescribeDBParameterGroupsMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DBParameterGroupsMessageForDescribeDBParameterGroups, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBParametersSyncType = (
            _ input: RDSModel.DescribeDBParametersMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBParameterGroupDetailsForDescribeDBParameters
    typealias DescribeDBParametersAsyncType = (
            _ input: RDSModel.DescribeDBParametersMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DBParameterGroupDetailsForDescribeDBParameters, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBSecurityGroupsSyncType = (
            _ input: RDSModel.DescribeDBSecurityGroupsMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBSecurityGroupMessageForDescribeDBSecurityGroups
    typealias DescribeDBSecurityGroupsAsyncType = (
            _ input: RDSModel.DescribeDBSecurityGroupsMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DBSecurityGroupMessageForDescribeDBSecurityGroups, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBSnapshotAttributesSyncType = (
            _ input: RDSModel.DescribeDBSnapshotAttributesMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes
    typealias DescribeDBSnapshotAttributesAsyncType = (
            _ input: RDSModel.DescribeDBSnapshotAttributesMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBSnapshotsSyncType = (
            _ input: RDSModel.DescribeDBSnapshotsMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBSnapshotMessageForDescribeDBSnapshots
    typealias DescribeDBSnapshotsAsyncType = (
            _ input: RDSModel.DescribeDBSnapshotsMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DBSnapshotMessageForDescribeDBSnapshots, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDBSubnetGroupsSyncType = (
            _ input: RDSModel.DescribeDBSubnetGroupsMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBSubnetGroupMessageForDescribeDBSubnetGroups
    typealias DescribeDBSubnetGroupsAsyncType = (
            _ input: RDSModel.DescribeDBSubnetGroupsMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DBSubnetGroupMessageForDescribeDBSubnetGroups, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeEngineDefaultClusterParametersSyncType = (
            _ input: RDSModel.DescribeEngineDefaultClusterParametersMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters
    typealias DescribeEngineDefaultClusterParametersAsyncType = (
            _ input: RDSModel.DescribeEngineDefaultClusterParametersMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeEngineDefaultParametersSyncType = (
            _ input: RDSModel.DescribeEngineDefaultParametersMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters
    typealias DescribeEngineDefaultParametersAsyncType = (
            _ input: RDSModel.DescribeEngineDefaultParametersMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeEventCategoriesSyncType = (
            _ input: RDSModel.DescribeEventCategoriesMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.EventCategoriesMessageForDescribeEventCategories
    typealias DescribeEventCategoriesAsyncType = (
            _ input: RDSModel.DescribeEventCategoriesMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.EventCategoriesMessageForDescribeEventCategories, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeEventSubscriptionsSyncType = (
            _ input: RDSModel.DescribeEventSubscriptionsMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.EventSubscriptionsMessageForDescribeEventSubscriptions
    typealias DescribeEventSubscriptionsAsyncType = (
            _ input: RDSModel.DescribeEventSubscriptionsMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.EventSubscriptionsMessageForDescribeEventSubscriptions, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeEventsSyncType = (
            _ input: RDSModel.DescribeEventsMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.EventsMessageForDescribeEvents
    typealias DescribeEventsAsyncType = (
            _ input: RDSModel.DescribeEventsMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.EventsMessageForDescribeEvents, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeGlobalClustersSyncType = (
            _ input: RDSModel.DescribeGlobalClustersMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.GlobalClustersMessageForDescribeGlobalClusters
    typealias DescribeGlobalClustersAsyncType = (
            _ input: RDSModel.DescribeGlobalClustersMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.GlobalClustersMessageForDescribeGlobalClusters, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeOptionGroupOptionsSyncType = (
            _ input: RDSModel.DescribeOptionGroupOptionsMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.OptionGroupOptionsMessageForDescribeOptionGroupOptions
    typealias DescribeOptionGroupOptionsAsyncType = (
            _ input: RDSModel.DescribeOptionGroupOptionsMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.OptionGroupOptionsMessageForDescribeOptionGroupOptions, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeOptionGroupsSyncType = (
            _ input: RDSModel.DescribeOptionGroupsMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.OptionGroupsForDescribeOptionGroups
    typealias DescribeOptionGroupsAsyncType = (
            _ input: RDSModel.DescribeOptionGroupsMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.OptionGroupsForDescribeOptionGroups, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeOrderableDBInstanceOptionsSyncType = (
            _ input: RDSModel.DescribeOrderableDBInstanceOptionsMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions
    typealias DescribeOrderableDBInstanceOptionsAsyncType = (
            _ input: RDSModel.DescribeOrderableDBInstanceOptionsMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions, HTTPClientError>) -> ()) throws -> ()
    typealias DescribePendingMaintenanceActionsSyncType = (
            _ input: RDSModel.DescribePendingMaintenanceActionsMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions
    typealias DescribePendingMaintenanceActionsAsyncType = (
            _ input: RDSModel.DescribePendingMaintenanceActionsMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeReservedDBInstancesSyncType = (
            _ input: RDSModel.DescribeReservedDBInstancesMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ReservedDBInstanceMessageForDescribeReservedDBInstances
    typealias DescribeReservedDBInstancesAsyncType = (
            _ input: RDSModel.DescribeReservedDBInstancesMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.ReservedDBInstanceMessageForDescribeReservedDBInstances, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeReservedDBInstancesOfferingsSyncType = (
            _ input: RDSModel.DescribeReservedDBInstancesOfferingsMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings
    typealias DescribeReservedDBInstancesOfferingsAsyncType = (
            _ input: RDSModel.DescribeReservedDBInstancesOfferingsMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeSourceRegionsSyncType = (
            _ input: RDSModel.DescribeSourceRegionsMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.SourceRegionMessageForDescribeSourceRegions
    typealias DescribeSourceRegionsAsyncType = (
            _ input: RDSModel.DescribeSourceRegionsMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.SourceRegionMessageForDescribeSourceRegions, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeValidDBInstanceModificationsSyncType = (
            _ input: RDSModel.DescribeValidDBInstanceModificationsMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications
    typealias DescribeValidDBInstanceModificationsAsyncType = (
            _ input: RDSModel.DescribeValidDBInstanceModificationsMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications, HTTPClientError>) -> ()) throws -> ()
    typealias DownloadDBLogFilePortionSyncType = (
            _ input: RDSModel.DownloadDBLogFilePortionMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion
    typealias DownloadDBLogFilePortionAsyncType = (
            _ input: RDSModel.DownloadDBLogFilePortionMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion, HTTPClientError>) -> ()) throws -> ()
    typealias FailoverDBClusterSyncType = (
            _ input: RDSModel.FailoverDBClusterMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.FailoverDBClusterResultForFailoverDBCluster
    typealias FailoverDBClusterAsyncType = (
            _ input: RDSModel.FailoverDBClusterMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.FailoverDBClusterResultForFailoverDBCluster, HTTPClientError>) -> ()) throws -> ()
    typealias ListTagsForResourceSyncType = (
            _ input: RDSModel.ListTagsForResourceMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.TagListMessageForListTagsForResource
    typealias ListTagsForResourceAsyncType = (
            _ input: RDSModel.ListTagsForResourceMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.TagListMessageForListTagsForResource, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyCurrentDBClusterCapacitySyncType = (
            _ input: RDSModel.ModifyCurrentDBClusterCapacityMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterCapacityInfoForModifyCurrentDBClusterCapacity
    typealias ModifyCurrentDBClusterCapacityAsyncType = (
            _ input: RDSModel.ModifyCurrentDBClusterCapacityMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DBClusterCapacityInfoForModifyCurrentDBClusterCapacity, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyDBClusterSyncType = (
            _ input: RDSModel.ModifyDBClusterMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyDBClusterResultForModifyDBCluster
    typealias ModifyDBClusterAsyncType = (
            _ input: RDSModel.ModifyDBClusterMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.ModifyDBClusterResultForModifyDBCluster, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyDBClusterEndpointSyncType = (
            _ input: RDSModel.ModifyDBClusterEndpointMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterEndpointForModifyDBClusterEndpoint
    typealias ModifyDBClusterEndpointAsyncType = (
            _ input: RDSModel.ModifyDBClusterEndpointMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DBClusterEndpointForModifyDBClusterEndpoint, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyDBClusterParameterGroupSyncType = (
            _ input: RDSModel.ModifyDBClusterParameterGroupMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup
    typealias ModifyDBClusterParameterGroupAsyncType = (
            _ input: RDSModel.ModifyDBClusterParameterGroupMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyDBClusterSnapshotAttributeSyncType = (
            _ input: RDSModel.ModifyDBClusterSnapshotAttributeMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute
    typealias ModifyDBClusterSnapshotAttributeAsyncType = (
            _ input: RDSModel.ModifyDBClusterSnapshotAttributeMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyDBInstanceSyncType = (
            _ input: RDSModel.ModifyDBInstanceMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyDBInstanceResultForModifyDBInstance
    typealias ModifyDBInstanceAsyncType = (
            _ input: RDSModel.ModifyDBInstanceMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.ModifyDBInstanceResultForModifyDBInstance, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyDBParameterGroupSyncType = (
            _ input: RDSModel.ModifyDBParameterGroupMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBParameterGroupNameMessageForModifyDBParameterGroup
    typealias ModifyDBParameterGroupAsyncType = (
            _ input: RDSModel.ModifyDBParameterGroupMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DBParameterGroupNameMessageForModifyDBParameterGroup, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyDBSnapshotSyncType = (
            _ input: RDSModel.ModifyDBSnapshotMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyDBSnapshotResultForModifyDBSnapshot
    typealias ModifyDBSnapshotAsyncType = (
            _ input: RDSModel.ModifyDBSnapshotMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.ModifyDBSnapshotResultForModifyDBSnapshot, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyDBSnapshotAttributeSyncType = (
            _ input: RDSModel.ModifyDBSnapshotAttributeMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute
    typealias ModifyDBSnapshotAttributeAsyncType = (
            _ input: RDSModel.ModifyDBSnapshotAttributeMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyDBSubnetGroupSyncType = (
            _ input: RDSModel.ModifyDBSubnetGroupMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyDBSubnetGroupResultForModifyDBSubnetGroup
    typealias ModifyDBSubnetGroupAsyncType = (
            _ input: RDSModel.ModifyDBSubnetGroupMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.ModifyDBSubnetGroupResultForModifyDBSubnetGroup, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyEventSubscriptionSyncType = (
            _ input: RDSModel.ModifyEventSubscriptionMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyEventSubscriptionResultForModifyEventSubscription
    typealias ModifyEventSubscriptionAsyncType = (
            _ input: RDSModel.ModifyEventSubscriptionMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.ModifyEventSubscriptionResultForModifyEventSubscription, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyGlobalClusterSyncType = (
            _ input: RDSModel.ModifyGlobalClusterMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyGlobalClusterResultForModifyGlobalCluster
    typealias ModifyGlobalClusterAsyncType = (
            _ input: RDSModel.ModifyGlobalClusterMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.ModifyGlobalClusterResultForModifyGlobalCluster, HTTPClientError>) -> ()) throws -> ()
    typealias ModifyOptionGroupSyncType = (
            _ input: RDSModel.ModifyOptionGroupMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyOptionGroupResultForModifyOptionGroup
    typealias ModifyOptionGroupAsyncType = (
            _ input: RDSModel.ModifyOptionGroupMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.ModifyOptionGroupResultForModifyOptionGroup, HTTPClientError>) -> ()) throws -> ()
    typealias PromoteReadReplicaSyncType = (
            _ input: RDSModel.PromoteReadReplicaMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.PromoteReadReplicaResultForPromoteReadReplica
    typealias PromoteReadReplicaAsyncType = (
            _ input: RDSModel.PromoteReadReplicaMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.PromoteReadReplicaResultForPromoteReadReplica, HTTPClientError>) -> ()) throws -> ()
    typealias PromoteReadReplicaDBClusterSyncType = (
            _ input: RDSModel.PromoteReadReplicaDBClusterMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster
    typealias PromoteReadReplicaDBClusterAsyncType = (
            _ input: RDSModel.PromoteReadReplicaDBClusterMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster, HTTPClientError>) -> ()) throws -> ()
    typealias PurchaseReservedDBInstancesOfferingSyncType = (
            _ input: RDSModel.PurchaseReservedDBInstancesOfferingMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering
    typealias PurchaseReservedDBInstancesOfferingAsyncType = (
            _ input: RDSModel.PurchaseReservedDBInstancesOfferingMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering, HTTPClientError>) -> ()) throws -> ()
    typealias RebootDBInstanceSyncType = (
            _ input: RDSModel.RebootDBInstanceMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RebootDBInstanceResultForRebootDBInstance
    typealias RebootDBInstanceAsyncType = (
            _ input: RDSModel.RebootDBInstanceMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.RebootDBInstanceResultForRebootDBInstance, HTTPClientError>) -> ()) throws -> ()
    typealias RemoveFromGlobalClusterSyncType = (
            _ input: RDSModel.RemoveFromGlobalClusterMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RemoveFromGlobalClusterResultForRemoveFromGlobalCluster
    typealias RemoveFromGlobalClusterAsyncType = (
            _ input: RDSModel.RemoveFromGlobalClusterMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.RemoveFromGlobalClusterResultForRemoveFromGlobalCluster, HTTPClientError>) -> ()) throws -> ()
    typealias RemoveRoleFromDBClusterSyncType = (
            _ input: RDSModel.RemoveRoleFromDBClusterMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias RemoveRoleFromDBClusterAsyncType = (
            _ input: RDSModel.RemoveRoleFromDBClusterMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RemoveRoleFromDBInstanceSyncType = (
            _ input: RDSModel.RemoveRoleFromDBInstanceMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias RemoveRoleFromDBInstanceAsyncType = (
            _ input: RDSModel.RemoveRoleFromDBInstanceMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RemoveSourceIdentifierFromSubscriptionSyncType = (
            _ input: RDSModel.RemoveSourceIdentifierFromSubscriptionMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription
    typealias RemoveSourceIdentifierFromSubscriptionAsyncType = (
            _ input: RDSModel.RemoveSourceIdentifierFromSubscriptionMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription, HTTPClientError>) -> ()) throws -> ()
    typealias RemoveTagsFromResourceSyncType = (
            _ input: RDSModel.RemoveTagsFromResourceMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias RemoveTagsFromResourceAsyncType = (
            _ input: RDSModel.RemoveTagsFromResourceMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ResetDBClusterParameterGroupSyncType = (
            _ input: RDSModel.ResetDBClusterParameterGroupMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup
    typealias ResetDBClusterParameterGroupAsyncType = (
            _ input: RDSModel.ResetDBClusterParameterGroupMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup, HTTPClientError>) -> ()) throws -> ()
    typealias ResetDBParameterGroupSyncType = (
            _ input: RDSModel.ResetDBParameterGroupMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBParameterGroupNameMessageForResetDBParameterGroup
    typealias ResetDBParameterGroupAsyncType = (
            _ input: RDSModel.ResetDBParameterGroupMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.DBParameterGroupNameMessageForResetDBParameterGroup, HTTPClientError>) -> ()) throws -> ()
    typealias RestoreDBClusterFromS3SyncType = (
            _ input: RDSModel.RestoreDBClusterFromS3Message,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3
    typealias RestoreDBClusterFromS3AsyncType = (
            _ input: RDSModel.RestoreDBClusterFromS3Message, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3, HTTPClientError>) -> ()) throws -> ()
    typealias RestoreDBClusterFromSnapshotSyncType = (
            _ input: RDSModel.RestoreDBClusterFromSnapshotMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot
    typealias RestoreDBClusterFromSnapshotAsyncType = (
            _ input: RDSModel.RestoreDBClusterFromSnapshotMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot, HTTPClientError>) -> ()) throws -> ()
    typealias RestoreDBClusterToPointInTimeSyncType = (
            _ input: RDSModel.RestoreDBClusterToPointInTimeMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime
    typealias RestoreDBClusterToPointInTimeAsyncType = (
            _ input: RDSModel.RestoreDBClusterToPointInTimeMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime, HTTPClientError>) -> ()) throws -> ()
    typealias RestoreDBInstanceFromDBSnapshotSyncType = (
            _ input: RDSModel.RestoreDBInstanceFromDBSnapshotMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot
    typealias RestoreDBInstanceFromDBSnapshotAsyncType = (
            _ input: RDSModel.RestoreDBInstanceFromDBSnapshotMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot, HTTPClientError>) -> ()) throws -> ()
    typealias RestoreDBInstanceFromS3SyncType = (
            _ input: RDSModel.RestoreDBInstanceFromS3Message,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3
    typealias RestoreDBInstanceFromS3AsyncType = (
            _ input: RDSModel.RestoreDBInstanceFromS3Message, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3, HTTPClientError>) -> ()) throws -> ()
    typealias RestoreDBInstanceToPointInTimeSyncType = (
            _ input: RDSModel.RestoreDBInstanceToPointInTimeMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime
    typealias RestoreDBInstanceToPointInTimeAsyncType = (
            _ input: RDSModel.RestoreDBInstanceToPointInTimeMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime, HTTPClientError>) -> ()) throws -> ()
    typealias RevokeDBSecurityGroupIngressSyncType = (
            _ input: RDSModel.RevokeDBSecurityGroupIngressMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress
    typealias RevokeDBSecurityGroupIngressAsyncType = (
            _ input: RDSModel.RevokeDBSecurityGroupIngressMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress, HTTPClientError>) -> ()) throws -> ()
    typealias StartActivityStreamSyncType = (
            _ input: RDSModel.StartActivityStreamRequest,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.StartActivityStreamResponseForStartActivityStream
    typealias StartActivityStreamAsyncType = (
            _ input: RDSModel.StartActivityStreamRequest, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.StartActivityStreamResponseForStartActivityStream, HTTPClientError>) -> ()) throws -> ()
    typealias StartDBClusterSyncType = (
            _ input: RDSModel.StartDBClusterMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.StartDBClusterResultForStartDBCluster
    typealias StartDBClusterAsyncType = (
            _ input: RDSModel.StartDBClusterMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.StartDBClusterResultForStartDBCluster, HTTPClientError>) -> ()) throws -> ()
    typealias StartDBInstanceSyncType = (
            _ input: RDSModel.StartDBInstanceMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.StartDBInstanceResultForStartDBInstance
    typealias StartDBInstanceAsyncType = (
            _ input: RDSModel.StartDBInstanceMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.StartDBInstanceResultForStartDBInstance, HTTPClientError>) -> ()) throws -> ()
    typealias StopActivityStreamSyncType = (
            _ input: RDSModel.StopActivityStreamRequest,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.StopActivityStreamResponseForStopActivityStream
    typealias StopActivityStreamAsyncType = (
            _ input: RDSModel.StopActivityStreamRequest, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.StopActivityStreamResponseForStopActivityStream, HTTPClientError>) -> ()) throws -> ()
    typealias StopDBClusterSyncType = (
            _ input: RDSModel.StopDBClusterMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.StopDBClusterResultForStopDBCluster
    typealias StopDBClusterAsyncType = (
            _ input: RDSModel.StopDBClusterMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.StopDBClusterResultForStopDBCluster, HTTPClientError>) -> ()) throws -> ()
    typealias StopDBInstanceSyncType = (
            _ input: RDSModel.StopDBInstanceMessage,
            _ reporting: SmokeAWSInvocationReporting) throws -> RDSModel.StopDBInstanceResultForStopDBInstance
    typealias StopDBInstanceAsyncType = (
            _ input: RDSModel.StopDBInstanceMessage, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<RDSModel.StopDBInstanceResultForStopDBInstance, HTTPClientError>) -> ()) throws -> ()

    /**
     Invokes the AddRoleToDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddRoleToDBClusterMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBClusterNotFound, dBClusterRoleAlreadyExists, dBClusterRoleQuotaExceeded, invalidDBClusterState.
     */
    func addRoleToDBClusterAsync(
            input: RDSModel.AddRoleToDBClusterMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the AddRoleToDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddRoleToDBClusterMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBClusterRoleAlreadyExists, dBClusterRoleQuotaExceeded, invalidDBClusterState.
     */
    func addRoleToDBClusterSync(
            input: RDSModel.AddRoleToDBClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the AddRoleToDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddRoleToDBInstanceMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBInstanceNotFound, dBInstanceRoleAlreadyExists, dBInstanceRoleQuotaExceeded, invalidDBInstanceState.
     */
    func addRoleToDBInstanceAsync(
            input: RDSModel.AddRoleToDBInstanceMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the AddRoleToDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddRoleToDBInstanceMessage object being passed to this operation.
     - Throws: dBInstanceNotFound, dBInstanceRoleAlreadyExists, dBInstanceRoleQuotaExceeded, invalidDBInstanceState.
     */
    func addRoleToDBInstanceSync(
            input: RDSModel.AddRoleToDBInstanceMessage,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the AddSourceIdentifierToSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddSourceIdentifierToSubscriptionMessage object being passed to this operation.
         - completion: The AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription object or an error will be passed to this 
           callback when the operation is complete. The AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription
           object will be validated before being returned to caller.
           The possible errors are: sourceNotFound, subscriptionNotFound.
     */
    func addSourceIdentifierToSubscriptionAsync(
            input: RDSModel.AddSourceIdentifierToSubscriptionMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription, HTTPClientError>) -> ()) throws

    /**
     Invokes the AddSourceIdentifierToSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddSourceIdentifierToSubscriptionMessage object being passed to this operation.
     - Returns: The AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: sourceNotFound, subscriptionNotFound.
     */
    func addSourceIdentifierToSubscriptionSync(
            input: RDSModel.AddSourceIdentifierToSubscriptionMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription

    /**
     Invokes the AddTagsToResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddTagsToResourceMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    func addTagsToResourceAsync(
            input: RDSModel.AddTagsToResourceMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the AddTagsToResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddTagsToResourceMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    func addTagsToResourceSync(
            input: RDSModel.AddTagsToResourceMessage,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the ApplyPendingMaintenanceAction operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ApplyPendingMaintenanceActionMessage object being passed to this operation.
         - completion: The ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction object or an error will be passed to this 
           callback when the operation is complete. The ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction
           object will be validated before being returned to caller.
           The possible errors are: invalidDBClusterState, invalidDBInstanceState, resourceNotFound.
     */
    func applyPendingMaintenanceActionAsync(
            input: RDSModel.ApplyPendingMaintenanceActionMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction, HTTPClientError>) -> ()) throws

    /**
     Invokes the ApplyPendingMaintenanceAction operation waiting for the response before returning.

     - Parameters:
         - input: The validated ApplyPendingMaintenanceActionMessage object being passed to this operation.
     - Returns: The ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidDBClusterState, invalidDBInstanceState, resourceNotFound.
     */
    func applyPendingMaintenanceActionSync(
            input: RDSModel.ApplyPendingMaintenanceActionMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction

    /**
     Invokes the AuthorizeDBSecurityGroupIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AuthorizeDBSecurityGroupIngressMessage object being passed to this operation.
         - completion: The AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress object or an error will be passed to this 
           callback when the operation is complete. The AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress
           object will be validated before being returned to caller.
           The possible errors are: authorizationAlreadyExists, authorizationQuotaExceeded, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    func authorizeDBSecurityGroupIngressAsync(
            input: RDSModel.AuthorizeDBSecurityGroupIngressMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress, HTTPClientError>) -> ()) throws

    /**
     Invokes the AuthorizeDBSecurityGroupIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated AuthorizeDBSecurityGroupIngressMessage object being passed to this operation.
     - Returns: The AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationAlreadyExists, authorizationQuotaExceeded, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    func authorizeDBSecurityGroupIngressSync(
            input: RDSModel.AuthorizeDBSecurityGroupIngressMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress

    /**
     Invokes the BacktrackDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BacktrackDBClusterMessage object being passed to this operation.
         - completion: The DBClusterBacktrackForBacktrackDBCluster object or an error will be passed to this 
           callback when the operation is complete. The DBClusterBacktrackForBacktrackDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState.
     */
    func backtrackDBClusterAsync(
            input: RDSModel.BacktrackDBClusterMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterBacktrackForBacktrackDBCluster, HTTPClientError>) -> ()) throws

    /**
     Invokes the BacktrackDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated BacktrackDBClusterMessage object being passed to this operation.
     - Returns: The DBClusterBacktrackForBacktrackDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState.
     */
    func backtrackDBClusterSync(
            input: RDSModel.BacktrackDBClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterBacktrackForBacktrackDBCluster

    /**
     Invokes the CopyDBClusterParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyDBClusterParameterGroupMessage object being passed to this operation.
         - completion: The CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    func copyDBClusterParameterGroupAsync(
            input: RDSModel.CopyDBClusterParameterGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup, HTTPClientError>) -> ()) throws

    /**
     Invokes the CopyDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    func copyDBClusterParameterGroupSync(
            input: RDSModel.CopyDBClusterParameterGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup

    /**
     Invokes the CopyDBClusterSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyDBClusterSnapshotMessage object being passed to this operation.
         - completion: The CopyDBClusterSnapshotResultForCopyDBClusterSnapshot object or an error will be passed to this 
           callback when the operation is complete. The CopyDBClusterSnapshotResultForCopyDBClusterSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotAlreadyExists, dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, invalidDBClusterState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    func copyDBClusterSnapshotAsync(
            input: RDSModel.CopyDBClusterSnapshotMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CopyDBClusterSnapshotResultForCopyDBClusterSnapshot, HTTPClientError>) -> ()) throws

    /**
     Invokes the CopyDBClusterSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyDBClusterSnapshotMessage object being passed to this operation.
     - Returns: The CopyDBClusterSnapshotResultForCopyDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotAlreadyExists, dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, invalidDBClusterState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    func copyDBClusterSnapshotSync(
            input: RDSModel.CopyDBClusterSnapshotMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CopyDBClusterSnapshotResultForCopyDBClusterSnapshot

    /**
     Invokes the CopyDBParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyDBParameterGroupMessage object being passed to this operation.
         - completion: The CopyDBParameterGroupResultForCopyDBParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The CopyDBParameterGroupResultForCopyDBParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    func copyDBParameterGroupAsync(
            input: RDSModel.CopyDBParameterGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CopyDBParameterGroupResultForCopyDBParameterGroup, HTTPClientError>) -> ()) throws

    /**
     Invokes the CopyDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyDBParameterGroupMessage object being passed to this operation.
     - Returns: The CopyDBParameterGroupResultForCopyDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    func copyDBParameterGroupSync(
            input: RDSModel.CopyDBParameterGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CopyDBParameterGroupResultForCopyDBParameterGroup

    /**
     Invokes the CopyDBSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyDBSnapshotMessage object being passed to this operation.
         - completion: The CopyDBSnapshotResultForCopyDBSnapshot object or an error will be passed to this 
           callback when the operation is complete. The CopyDBSnapshotResultForCopyDBSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBSnapshotAlreadyExists, dBSnapshotNotFound, invalidDBSnapshotState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    func copyDBSnapshotAsync(
            input: RDSModel.CopyDBSnapshotMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CopyDBSnapshotResultForCopyDBSnapshot, HTTPClientError>) -> ()) throws

    /**
     Invokes the CopyDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyDBSnapshotMessage object being passed to this operation.
     - Returns: The CopyDBSnapshotResultForCopyDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotAlreadyExists, dBSnapshotNotFound, invalidDBSnapshotState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    func copyDBSnapshotSync(
            input: RDSModel.CopyDBSnapshotMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CopyDBSnapshotResultForCopyDBSnapshot

    /**
     Invokes the CopyOptionGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyOptionGroupMessage object being passed to this operation.
         - completion: The CopyOptionGroupResultForCopyOptionGroup object or an error will be passed to this 
           callback when the operation is complete. The CopyOptionGroupResultForCopyOptionGroup
           object will be validated before being returned to caller.
           The possible errors are: optionGroupAlreadyExists, optionGroupNotFound, optionGroupQuotaExceeded.
     */
    func copyOptionGroupAsync(
            input: RDSModel.CopyOptionGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CopyOptionGroupResultForCopyOptionGroup, HTTPClientError>) -> ()) throws

    /**
     Invokes the CopyOptionGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyOptionGroupMessage object being passed to this operation.
     - Returns: The CopyOptionGroupResultForCopyOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: optionGroupAlreadyExists, optionGroupNotFound, optionGroupQuotaExceeded.
     */
    func copyOptionGroupSync(
            input: RDSModel.CopyOptionGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CopyOptionGroupResultForCopyOptionGroup

    /**
     Invokes the CreateDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBClusterMessage object being passed to this operation.
         - completion: The CreateDBClusterResultForCreateDBCluster object or an error will be passed to this 
           callback when the operation is complete. The CreateDBClusterResultForCreateDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, globalClusterNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBInstanceState, invalidDBSubnetGroupState, invalidGlobalClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    func createDBClusterAsync(
            input: RDSModel.CreateDBClusterMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateDBClusterResultForCreateDBCluster, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBClusterMessage object being passed to this operation.
     - Returns: The CreateDBClusterResultForCreateDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, globalClusterNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBInstanceState, invalidDBSubnetGroupState, invalidGlobalClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    func createDBClusterSync(
            input: RDSModel.CreateDBClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBClusterResultForCreateDBCluster

    /**
     Invokes the CreateDBClusterEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBClusterEndpointMessage object being passed to this operation.
         - completion: The DBClusterEndpointForCreateDBClusterEndpoint object or an error will be passed to this 
           callback when the operation is complete. The DBClusterEndpointForCreateDBClusterEndpoint
           object will be validated before being returned to caller.
           The possible errors are: dBClusterEndpointAlreadyExists, dBClusterEndpointQuotaExceeded, dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func createDBClusterEndpointAsync(
            input: RDSModel.CreateDBClusterEndpointMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterEndpointForCreateDBClusterEndpoint, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateDBClusterEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBClusterEndpointMessage object being passed to this operation.
     - Returns: The DBClusterEndpointForCreateDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterEndpointAlreadyExists, dBClusterEndpointQuotaExceeded, dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func createDBClusterEndpointSync(
            input: RDSModel.CreateDBClusterEndpointMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterEndpointForCreateDBClusterEndpoint

    /**
     Invokes the CreateDBClusterParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBClusterParameterGroupMessage object being passed to this operation.
         - completion: The CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    func createDBClusterParameterGroupAsync(
            input: RDSModel.CreateDBClusterParameterGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    func createDBClusterParameterGroupSync(
            input: RDSModel.CreateDBClusterParameterGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup

    /**
     Invokes the CreateDBClusterSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBClusterSnapshotMessage object being passed to this operation.
         - completion: The CreateDBClusterSnapshotResultForCreateDBClusterSnapshot object or an error will be passed to this 
           callback when the operation is complete. The CreateDBClusterSnapshotResultForCreateDBClusterSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    func createDBClusterSnapshotAsync(
            input: RDSModel.CreateDBClusterSnapshotMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateDBClusterSnapshotResultForCreateDBClusterSnapshot, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateDBClusterSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBClusterSnapshotMessage object being passed to this operation.
     - Returns: The CreateDBClusterSnapshotResultForCreateDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    func createDBClusterSnapshotSync(
            input: RDSModel.CreateDBClusterSnapshotMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBClusterSnapshotResultForCreateDBClusterSnapshot

    /**
     Invokes the CreateDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBInstanceMessage object being passed to this operation.
         - completion: The CreateDBInstanceResultForCreateDBInstance object or an error will be passed to this 
           callback when the operation is complete. The CreateDBInstanceResultForCreateDBInstance
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBClusterNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func createDBInstanceAsync(
            input: RDSModel.CreateDBInstanceMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateDBInstanceResultForCreateDBInstance, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBInstanceMessage object being passed to this operation.
     - Returns: The CreateDBInstanceResultForCreateDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBClusterNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func createDBInstanceSync(
            input: RDSModel.CreateDBInstanceMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBInstanceResultForCreateDBInstance

    /**
     Invokes the CreateDBInstanceReadReplica operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBInstanceReadReplicaMessage object being passed to this operation.
         - completion: The CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica object or an error will be passed to this 
           callback when the operation is complete. The CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotAllowed, dBSubnetGroupNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSubnetGroup, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func createDBInstanceReadReplicaAsync(
            input: RDSModel.CreateDBInstanceReadReplicaMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateDBInstanceReadReplica operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBInstanceReadReplicaMessage object being passed to this operation.
     - Returns: The CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotAllowed, dBSubnetGroupNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSubnetGroup, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func createDBInstanceReadReplicaSync(
            input: RDSModel.CreateDBInstanceReadReplicaMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica

    /**
     Invokes the CreateDBParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBParameterGroupMessage object being passed to this operation.
         - completion: The CreateDBParameterGroupResultForCreateDBParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The CreateDBParameterGroupResultForCreateDBParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    func createDBParameterGroupAsync(
            input: RDSModel.CreateDBParameterGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateDBParameterGroupResultForCreateDBParameterGroup, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBParameterGroupMessage object being passed to this operation.
     - Returns: The CreateDBParameterGroupResultForCreateDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    func createDBParameterGroupSync(
            input: RDSModel.CreateDBParameterGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBParameterGroupResultForCreateDBParameterGroup

    /**
     Invokes the CreateDBSecurityGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBSecurityGroupMessage object being passed to this operation.
         - completion: The CreateDBSecurityGroupResultForCreateDBSecurityGroup object or an error will be passed to this 
           callback when the operation is complete. The CreateDBSecurityGroupResultForCreateDBSecurityGroup
           object will be validated before being returned to caller.
           The possible errors are: dBSecurityGroupAlreadyExists, dBSecurityGroupNotSupported, dBSecurityGroupQuotaExceeded.
     */
    func createDBSecurityGroupAsync(
            input: RDSModel.CreateDBSecurityGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateDBSecurityGroupResultForCreateDBSecurityGroup, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateDBSecurityGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBSecurityGroupMessage object being passed to this operation.
     - Returns: The CreateDBSecurityGroupResultForCreateDBSecurityGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSecurityGroupAlreadyExists, dBSecurityGroupNotSupported, dBSecurityGroupQuotaExceeded.
     */
    func createDBSecurityGroupSync(
            input: RDSModel.CreateDBSecurityGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBSecurityGroupResultForCreateDBSecurityGroup

    /**
     Invokes the CreateDBSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBSnapshotMessage object being passed to this operation.
         - completion: The CreateDBSnapshotResultForCreateDBSnapshot object or an error will be passed to this 
           callback when the operation is complete. The CreateDBSnapshotResultForCreateDBSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    func createDBSnapshotAsync(
            input: RDSModel.CreateDBSnapshotMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateDBSnapshotResultForCreateDBSnapshot, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBSnapshotMessage object being passed to this operation.
     - Returns: The CreateDBSnapshotResultForCreateDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    func createDBSnapshotSync(
            input: RDSModel.CreateDBSnapshotMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBSnapshotResultForCreateDBSnapshot

    /**
     Invokes the CreateDBSubnetGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBSubnetGroupMessage object being passed to this operation.
         - completion: The CreateDBSubnetGroupResultForCreateDBSubnetGroup object or an error will be passed to this 
           callback when the operation is complete. The CreateDBSubnetGroupResultForCreateDBSubnetGroup
           object will be validated before being returned to caller.
           The possible errors are: dBSubnetGroupAlreadyExists, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupQuotaExceeded, dBSubnetQuotaExceeded, invalidSubnet.
     */
    func createDBSubnetGroupAsync(
            input: RDSModel.CreateDBSubnetGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateDBSubnetGroupResultForCreateDBSubnetGroup, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateDBSubnetGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBSubnetGroupMessage object being passed to this operation.
     - Returns: The CreateDBSubnetGroupResultForCreateDBSubnetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSubnetGroupAlreadyExists, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupQuotaExceeded, dBSubnetQuotaExceeded, invalidSubnet.
     */
    func createDBSubnetGroupSync(
            input: RDSModel.CreateDBSubnetGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBSubnetGroupResultForCreateDBSubnetGroup

    /**
     Invokes the CreateEventSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateEventSubscriptionMessage object being passed to this operation.
         - completion: The CreateEventSubscriptionResultForCreateEventSubscription object or an error will be passed to this 
           callback when the operation is complete. The CreateEventSubscriptionResultForCreateEventSubscription
           object will be validated before being returned to caller.
           The possible errors are: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, sourceNotFound, subscriptionAlreadyExist, subscriptionCategoryNotFound.
     */
    func createEventSubscriptionAsync(
            input: RDSModel.CreateEventSubscriptionMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateEventSubscriptionResultForCreateEventSubscription, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateEventSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateEventSubscriptionMessage object being passed to this operation.
     - Returns: The CreateEventSubscriptionResultForCreateEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, sourceNotFound, subscriptionAlreadyExist, subscriptionCategoryNotFound.
     */
    func createEventSubscriptionSync(
            input: RDSModel.CreateEventSubscriptionMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateEventSubscriptionResultForCreateEventSubscription

    /**
     Invokes the CreateGlobalCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateGlobalClusterMessage object being passed to this operation.
         - completion: The CreateGlobalClusterResultForCreateGlobalCluster object or an error will be passed to this 
           callback when the operation is complete. The CreateGlobalClusterResultForCreateGlobalCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, globalClusterAlreadyExists, globalClusterQuotaExceeded, invalidDBClusterState.
     */
    func createGlobalClusterAsync(
            input: RDSModel.CreateGlobalClusterMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateGlobalClusterResultForCreateGlobalCluster, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateGlobalCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateGlobalClusterMessage object being passed to this operation.
     - Returns: The CreateGlobalClusterResultForCreateGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, globalClusterAlreadyExists, globalClusterQuotaExceeded, invalidDBClusterState.
     */
    func createGlobalClusterSync(
            input: RDSModel.CreateGlobalClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateGlobalClusterResultForCreateGlobalCluster

    /**
     Invokes the CreateOptionGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateOptionGroupMessage object being passed to this operation.
         - completion: The CreateOptionGroupResultForCreateOptionGroup object or an error will be passed to this 
           callback when the operation is complete. The CreateOptionGroupResultForCreateOptionGroup
           object will be validated before being returned to caller.
           The possible errors are: optionGroupAlreadyExists, optionGroupQuotaExceeded.
     */
    func createOptionGroupAsync(
            input: RDSModel.CreateOptionGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateOptionGroupResultForCreateOptionGroup, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateOptionGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateOptionGroupMessage object being passed to this operation.
     - Returns: The CreateOptionGroupResultForCreateOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: optionGroupAlreadyExists, optionGroupQuotaExceeded.
     */
    func createOptionGroupSync(
            input: RDSModel.CreateOptionGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateOptionGroupResultForCreateOptionGroup

    /**
     Invokes the DeleteDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBClusterMessage object being passed to this operation.
         - completion: The DeleteDBClusterResultForDeleteDBCluster object or an error will be passed to this 
           callback when the operation is complete. The DeleteDBClusterResultForDeleteDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    func deleteDBClusterAsync(
            input: RDSModel.DeleteDBClusterMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DeleteDBClusterResultForDeleteDBCluster, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBClusterMessage object being passed to this operation.
     - Returns: The DeleteDBClusterResultForDeleteDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    func deleteDBClusterSync(
            input: RDSModel.DeleteDBClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DeleteDBClusterResultForDeleteDBCluster

    /**
     Invokes the DeleteDBClusterEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBClusterEndpointMessage object being passed to this operation.
         - completion: The DBClusterEndpointForDeleteDBClusterEndpoint object or an error will be passed to this 
           callback when the operation is complete. The DBClusterEndpointForDeleteDBClusterEndpoint
           object will be validated before being returned to caller.
           The possible errors are: dBClusterEndpointNotFound, invalidDBClusterEndpointState, invalidDBClusterState.
     */
    func deleteDBClusterEndpointAsync(
            input: RDSModel.DeleteDBClusterEndpointMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterEndpointForDeleteDBClusterEndpoint, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteDBClusterEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBClusterEndpointMessage object being passed to this operation.
     - Returns: The DBClusterEndpointForDeleteDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterEndpointNotFound, invalidDBClusterEndpointState, invalidDBClusterState.
     */
    func deleteDBClusterEndpointSync(
            input: RDSModel.DeleteDBClusterEndpointMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterEndpointForDeleteDBClusterEndpoint

    /**
     Invokes the DeleteDBClusterParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBClusterParameterGroupMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func deleteDBClusterParameterGroupAsync(
            input: RDSModel.DeleteDBClusterParameterGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBClusterParameterGroupMessage object being passed to this operation.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func deleteDBClusterParameterGroupSync(
            input: RDSModel.DeleteDBClusterParameterGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the DeleteDBClusterSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBClusterSnapshotMessage object being passed to this operation.
         - completion: The DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot object or an error will be passed to this 
           callback when the operation is complete. The DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState.
     */
    func deleteDBClusterSnapshotAsync(
            input: RDSModel.DeleteDBClusterSnapshotMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteDBClusterSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBClusterSnapshotMessage object being passed to this operation.
     - Returns: The DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState.
     */
    func deleteDBClusterSnapshotSync(
            input: RDSModel.DeleteDBClusterSnapshotMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot

    /**
     Invokes the DeleteDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBInstanceMessage object being passed to this operation.
         - completion: The DeleteDBInstanceResultForDeleteDBInstance object or an error will be passed to this 
           callback when the operation is complete. The DeleteDBInstanceResultForDeleteDBInstance
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceAutomatedBackupQuotaExceeded, dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    func deleteDBInstanceAsync(
            input: RDSModel.DeleteDBInstanceMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DeleteDBInstanceResultForDeleteDBInstance, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBInstanceMessage object being passed to this operation.
     - Returns: The DeleteDBInstanceResultForDeleteDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupQuotaExceeded, dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    func deleteDBInstanceSync(
            input: RDSModel.DeleteDBInstanceMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DeleteDBInstanceResultForDeleteDBInstance

    /**
     Invokes the DeleteDBInstanceAutomatedBackup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBInstanceAutomatedBackupMessage object being passed to this operation.
         - completion: The DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup object or an error will be passed to this 
           callback when the operation is complete. The DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceAutomatedBackupNotFound, invalidDBInstanceAutomatedBackupState.
     */
    func deleteDBInstanceAutomatedBackupAsync(
            input: RDSModel.DeleteDBInstanceAutomatedBackupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteDBInstanceAutomatedBackup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBInstanceAutomatedBackupMessage object being passed to this operation.
     - Returns: The DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupNotFound, invalidDBInstanceAutomatedBackupState.
     */
    func deleteDBInstanceAutomatedBackupSync(
            input: RDSModel.DeleteDBInstanceAutomatedBackupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup

    /**
     Invokes the DeleteDBParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBParameterGroupMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func deleteDBParameterGroupAsync(
            input: RDSModel.DeleteDBParameterGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBParameterGroupMessage object being passed to this operation.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func deleteDBParameterGroupSync(
            input: RDSModel.DeleteDBParameterGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the DeleteDBSecurityGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBSecurityGroupMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    func deleteDBSecurityGroupAsync(
            input: RDSModel.DeleteDBSecurityGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteDBSecurityGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBSecurityGroupMessage object being passed to this operation.
     - Throws: dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    func deleteDBSecurityGroupSync(
            input: RDSModel.DeleteDBSecurityGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the DeleteDBSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBSnapshotMessage object being passed to this operation.
         - completion: The DeleteDBSnapshotResultForDeleteDBSnapshot object or an error will be passed to this 
           callback when the operation is complete. The DeleteDBSnapshotResultForDeleteDBSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound, invalidDBSnapshotState.
     */
    func deleteDBSnapshotAsync(
            input: RDSModel.DeleteDBSnapshotMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DeleteDBSnapshotResultForDeleteDBSnapshot, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBSnapshotMessage object being passed to this operation.
     - Returns: The DeleteDBSnapshotResultForDeleteDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound, invalidDBSnapshotState.
     */
    func deleteDBSnapshotSync(
            input: RDSModel.DeleteDBSnapshotMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DeleteDBSnapshotResultForDeleteDBSnapshot

    /**
     Invokes the DeleteDBSubnetGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBSubnetGroupMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBSubnetGroupNotFound, invalidDBSubnetGroupState, invalidDBSubnetState.
     */
    func deleteDBSubnetGroupAsync(
            input: RDSModel.DeleteDBSubnetGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteDBSubnetGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBSubnetGroupMessage object being passed to this operation.
     - Throws: dBSubnetGroupNotFound, invalidDBSubnetGroupState, invalidDBSubnetState.
     */
    func deleteDBSubnetGroupSync(
            input: RDSModel.DeleteDBSubnetGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the DeleteEventSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteEventSubscriptionMessage object being passed to this operation.
         - completion: The DeleteEventSubscriptionResultForDeleteEventSubscription object or an error will be passed to this 
           callback when the operation is complete. The DeleteEventSubscriptionResultForDeleteEventSubscription
           object will be validated before being returned to caller.
           The possible errors are: invalidEventSubscriptionState, subscriptionNotFound.
     */
    func deleteEventSubscriptionAsync(
            input: RDSModel.DeleteEventSubscriptionMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DeleteEventSubscriptionResultForDeleteEventSubscription, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteEventSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteEventSubscriptionMessage object being passed to this operation.
     - Returns: The DeleteEventSubscriptionResultForDeleteEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidEventSubscriptionState, subscriptionNotFound.
     */
    func deleteEventSubscriptionSync(
            input: RDSModel.DeleteEventSubscriptionMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DeleteEventSubscriptionResultForDeleteEventSubscription

    /**
     Invokes the DeleteGlobalCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteGlobalClusterMessage object being passed to this operation.
         - completion: The DeleteGlobalClusterResultForDeleteGlobalCluster object or an error will be passed to this 
           callback when the operation is complete. The DeleteGlobalClusterResultForDeleteGlobalCluster
           object will be validated before being returned to caller.
           The possible errors are: globalClusterNotFound, invalidGlobalClusterState.
     */
    func deleteGlobalClusterAsync(
            input: RDSModel.DeleteGlobalClusterMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DeleteGlobalClusterResultForDeleteGlobalCluster, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteGlobalCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteGlobalClusterMessage object being passed to this operation.
     - Returns: The DeleteGlobalClusterResultForDeleteGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalClusterNotFound, invalidGlobalClusterState.
     */
    func deleteGlobalClusterSync(
            input: RDSModel.DeleteGlobalClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DeleteGlobalClusterResultForDeleteGlobalCluster

    /**
     Invokes the DeleteOptionGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteOptionGroupMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidOptionGroupState, optionGroupNotFound.
     */
    func deleteOptionGroupAsync(
            input: RDSModel.DeleteOptionGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteOptionGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteOptionGroupMessage object being passed to this operation.
     - Throws: invalidOptionGroupState, optionGroupNotFound.
     */
    func deleteOptionGroupSync(
            input: RDSModel.DeleteOptionGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the DescribeAccountAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAccountAttributesMessage object being passed to this operation.
         - completion: The AccountAttributesMessageForDescribeAccountAttributes object or an error will be passed to this 
           callback when the operation is complete. The AccountAttributesMessageForDescribeAccountAttributes
           object will be validated before being returned to caller.
     */
    func describeAccountAttributesAsync(
            input: RDSModel.DescribeAccountAttributesMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.AccountAttributesMessageForDescribeAccountAttributes, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeAccountAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAccountAttributesMessage object being passed to this operation.
     - Returns: The AccountAttributesMessageForDescribeAccountAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAccountAttributesSync(
            input: RDSModel.DescribeAccountAttributesMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.AccountAttributesMessageForDescribeAccountAttributes

    /**
     Invokes the DescribeCertificates operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCertificatesMessage object being passed to this operation.
         - completion: The CertificateMessageForDescribeCertificates object or an error will be passed to this 
           callback when the operation is complete. The CertificateMessageForDescribeCertificates
           object will be validated before being returned to caller.
           The possible errors are: certificateNotFound.
     */
    func describeCertificatesAsync(
            input: RDSModel.DescribeCertificatesMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CertificateMessageForDescribeCertificates, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeCertificates operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCertificatesMessage object being passed to this operation.
     - Returns: The CertificateMessageForDescribeCertificates object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: certificateNotFound.
     */
    func describeCertificatesSync(
            input: RDSModel.DescribeCertificatesMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CertificateMessageForDescribeCertificates

    /**
     Invokes the DescribeDBClusterBacktracks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClusterBacktracksMessage object being passed to this operation.
         - completion: The DBClusterBacktrackMessageForDescribeDBClusterBacktracks object or an error will be passed to this 
           callback when the operation is complete. The DBClusterBacktrackMessageForDescribeDBClusterBacktracks
           object will be validated before being returned to caller.
           The possible errors are: dBClusterBacktrackNotFound, dBClusterNotFound.
     */
    func describeDBClusterBacktracksAsync(
            input: RDSModel.DescribeDBClusterBacktracksMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterBacktrackMessageForDescribeDBClusterBacktracks, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBClusterBacktracks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterBacktracksMessage object being passed to this operation.
     - Returns: The DBClusterBacktrackMessageForDescribeDBClusterBacktracks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterBacktrackNotFound, dBClusterNotFound.
     */
    func describeDBClusterBacktracksSync(
            input: RDSModel.DescribeDBClusterBacktracksMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterBacktrackMessageForDescribeDBClusterBacktracks

    /**
     Invokes the DescribeDBClusterEndpoints operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClusterEndpointsMessage object being passed to this operation.
         - completion: The DBClusterEndpointMessageForDescribeDBClusterEndpoints object or an error will be passed to this 
           callback when the operation is complete. The DBClusterEndpointMessageForDescribeDBClusterEndpoints
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound.
     */
    func describeDBClusterEndpointsAsync(
            input: RDSModel.DescribeDBClusterEndpointsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterEndpointMessageForDescribeDBClusterEndpoints, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBClusterEndpoints operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterEndpointsMessage object being passed to this operation.
     - Returns: The DBClusterEndpointMessageForDescribeDBClusterEndpoints object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound.
     */
    func describeDBClusterEndpointsSync(
            input: RDSModel.DescribeDBClusterEndpointsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterEndpointMessageForDescribeDBClusterEndpoints

    /**
     Invokes the DescribeDBClusterParameterGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClusterParameterGroupsMessage object being passed to this operation.
         - completion: The DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups object or an error will be passed to this 
           callback when the operation is complete. The DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound.
     */
    func describeDBClusterParameterGroupsAsync(
            input: RDSModel.DescribeDBClusterParameterGroupsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBClusterParameterGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterParameterGroupsMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    func describeDBClusterParameterGroupsSync(
            input: RDSModel.DescribeDBClusterParameterGroupsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups

    /**
     Invokes the DescribeDBClusterParameters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClusterParametersMessage object being passed to this operation.
         - completion: The DBClusterParameterGroupDetailsForDescribeDBClusterParameters object or an error will be passed to this 
           callback when the operation is complete. The DBClusterParameterGroupDetailsForDescribeDBClusterParameters
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound.
     */
    func describeDBClusterParametersAsync(
            input: RDSModel.DescribeDBClusterParametersMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterParameterGroupDetailsForDescribeDBClusterParameters, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBClusterParameters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterParametersMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupDetailsForDescribeDBClusterParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    func describeDBClusterParametersSync(
            input: RDSModel.DescribeDBClusterParametersMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterParameterGroupDetailsForDescribeDBClusterParameters

    /**
     Invokes the DescribeDBClusterSnapshotAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotAttributesMessage object being passed to this operation.
         - completion: The DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes object or an error will be passed to this 
           callback when the operation is complete. The DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes
           object will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound.
     */
    func describeDBClusterSnapshotAttributesAsync(
            input: RDSModel.DescribeDBClusterSnapshotAttributesMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBClusterSnapshotAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotAttributesMessage object being passed to this operation.
     - Returns: The DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound.
     */
    func describeDBClusterSnapshotAttributesSync(
            input: RDSModel.DescribeDBClusterSnapshotAttributesMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes

    /**
     Invokes the DescribeDBClusterSnapshots operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotsMessage object being passed to this operation.
         - completion: The DBClusterSnapshotMessageForDescribeDBClusterSnapshots object or an error will be passed to this 
           callback when the operation is complete. The DBClusterSnapshotMessageForDescribeDBClusterSnapshots
           object will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound.
     */
    func describeDBClusterSnapshotsAsync(
            input: RDSModel.DescribeDBClusterSnapshotsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterSnapshotMessageForDescribeDBClusterSnapshots, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBClusterSnapshots operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotsMessage object being passed to this operation.
     - Returns: The DBClusterSnapshotMessageForDescribeDBClusterSnapshots object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound.
     */
    func describeDBClusterSnapshotsSync(
            input: RDSModel.DescribeDBClusterSnapshotsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterSnapshotMessageForDescribeDBClusterSnapshots

    /**
     Invokes the DescribeDBClusters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClustersMessage object being passed to this operation.
         - completion: The DBClusterMessageForDescribeDBClusters object or an error will be passed to this 
           callback when the operation is complete. The DBClusterMessageForDescribeDBClusters
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound.
     */
    func describeDBClustersAsync(
            input: RDSModel.DescribeDBClustersMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterMessageForDescribeDBClusters, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBClusters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClustersMessage object being passed to this operation.
     - Returns: The DBClusterMessageForDescribeDBClusters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound.
     */
    func describeDBClustersSync(
            input: RDSModel.DescribeDBClustersMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterMessageForDescribeDBClusters

    /**
     Invokes the DescribeDBEngineVersions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBEngineVersionsMessage object being passed to this operation.
         - completion: The DBEngineVersionMessageForDescribeDBEngineVersions object or an error will be passed to this 
           callback when the operation is complete. The DBEngineVersionMessageForDescribeDBEngineVersions
           object will be validated before being returned to caller.
     */
    func describeDBEngineVersionsAsync(
            input: RDSModel.DescribeDBEngineVersionsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBEngineVersionMessageForDescribeDBEngineVersions, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBEngineVersions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBEngineVersionsMessage object being passed to this operation.
     - Returns: The DBEngineVersionMessageForDescribeDBEngineVersions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeDBEngineVersionsSync(
            input: RDSModel.DescribeDBEngineVersionsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBEngineVersionMessageForDescribeDBEngineVersions

    /**
     Invokes the DescribeDBInstanceAutomatedBackups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBInstanceAutomatedBackupsMessage object being passed to this operation.
         - completion: The DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups object or an error will be passed to this 
           callback when the operation is complete. The DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceAutomatedBackupNotFound.
     */
    func describeDBInstanceAutomatedBackupsAsync(
            input: RDSModel.DescribeDBInstanceAutomatedBackupsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBInstanceAutomatedBackups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBInstanceAutomatedBackupsMessage object being passed to this operation.
     - Returns: The DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupNotFound.
     */
    func describeDBInstanceAutomatedBackupsSync(
            input: RDSModel.DescribeDBInstanceAutomatedBackupsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups

    /**
     Invokes the DescribeDBInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBInstancesMessage object being passed to this operation.
         - completion: The DBInstanceMessageForDescribeDBInstances object or an error will be passed to this 
           callback when the operation is complete. The DBInstanceMessageForDescribeDBInstances
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound.
     */
    func describeDBInstancesAsync(
            input: RDSModel.DescribeDBInstancesMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBInstanceMessageForDescribeDBInstances, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBInstancesMessage object being passed to this operation.
     - Returns: The DBInstanceMessageForDescribeDBInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound.
     */
    func describeDBInstancesSync(
            input: RDSModel.DescribeDBInstancesMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBInstanceMessageForDescribeDBInstances

    /**
     Invokes the DescribeDBLogFiles operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBLogFilesMessage object being passed to this operation.
         - completion: The DescribeDBLogFilesResponseForDescribeDBLogFiles object or an error will be passed to this 
           callback when the operation is complete. The DescribeDBLogFilesResponseForDescribeDBLogFiles
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound.
     */
    func describeDBLogFilesAsync(
            input: RDSModel.DescribeDBLogFilesMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DescribeDBLogFilesResponseForDescribeDBLogFiles, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBLogFiles operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBLogFilesMessage object being passed to this operation.
     - Returns: The DescribeDBLogFilesResponseForDescribeDBLogFiles object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound.
     */
    func describeDBLogFilesSync(
            input: RDSModel.DescribeDBLogFilesMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DescribeDBLogFilesResponseForDescribeDBLogFiles

    /**
     Invokes the DescribeDBParameterGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBParameterGroupsMessage object being passed to this operation.
         - completion: The DBParameterGroupsMessageForDescribeDBParameterGroups object or an error will be passed to this 
           callback when the operation is complete. The DBParameterGroupsMessageForDescribeDBParameterGroups
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound.
     */
    func describeDBParameterGroupsAsync(
            input: RDSModel.DescribeDBParameterGroupsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBParameterGroupsMessageForDescribeDBParameterGroups, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBParameterGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBParameterGroupsMessage object being passed to this operation.
     - Returns: The DBParameterGroupsMessageForDescribeDBParameterGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    func describeDBParameterGroupsSync(
            input: RDSModel.DescribeDBParameterGroupsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBParameterGroupsMessageForDescribeDBParameterGroups

    /**
     Invokes the DescribeDBParameters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBParametersMessage object being passed to this operation.
         - completion: The DBParameterGroupDetailsForDescribeDBParameters object or an error will be passed to this 
           callback when the operation is complete. The DBParameterGroupDetailsForDescribeDBParameters
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound.
     */
    func describeDBParametersAsync(
            input: RDSModel.DescribeDBParametersMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBParameterGroupDetailsForDescribeDBParameters, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBParameters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBParametersMessage object being passed to this operation.
     - Returns: The DBParameterGroupDetailsForDescribeDBParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    func describeDBParametersSync(
            input: RDSModel.DescribeDBParametersMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBParameterGroupDetailsForDescribeDBParameters

    /**
     Invokes the DescribeDBSecurityGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBSecurityGroupsMessage object being passed to this operation.
         - completion: The DBSecurityGroupMessageForDescribeDBSecurityGroups object or an error will be passed to this 
           callback when the operation is complete. The DBSecurityGroupMessageForDescribeDBSecurityGroups
           object will be validated before being returned to caller.
           The possible errors are: dBSecurityGroupNotFound.
     */
    func describeDBSecurityGroupsAsync(
            input: RDSModel.DescribeDBSecurityGroupsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBSecurityGroupMessageForDescribeDBSecurityGroups, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBSecurityGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBSecurityGroupsMessage object being passed to this operation.
     - Returns: The DBSecurityGroupMessageForDescribeDBSecurityGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSecurityGroupNotFound.
     */
    func describeDBSecurityGroupsSync(
            input: RDSModel.DescribeDBSecurityGroupsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBSecurityGroupMessageForDescribeDBSecurityGroups

    /**
     Invokes the DescribeDBSnapshotAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBSnapshotAttributesMessage object being passed to this operation.
         - completion: The DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes object or an error will be passed to this 
           callback when the operation is complete. The DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes
           object will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound.
     */
    func describeDBSnapshotAttributesAsync(
            input: RDSModel.DescribeDBSnapshotAttributesMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBSnapshotAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBSnapshotAttributesMessage object being passed to this operation.
     - Returns: The DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound.
     */
    func describeDBSnapshotAttributesSync(
            input: RDSModel.DescribeDBSnapshotAttributesMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes

    /**
     Invokes the DescribeDBSnapshots operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBSnapshotsMessage object being passed to this operation.
         - completion: The DBSnapshotMessageForDescribeDBSnapshots object or an error will be passed to this 
           callback when the operation is complete. The DBSnapshotMessageForDescribeDBSnapshots
           object will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound.
     */
    func describeDBSnapshotsAsync(
            input: RDSModel.DescribeDBSnapshotsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBSnapshotMessageForDescribeDBSnapshots, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBSnapshots operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBSnapshotsMessage object being passed to this operation.
     - Returns: The DBSnapshotMessageForDescribeDBSnapshots object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound.
     */
    func describeDBSnapshotsSync(
            input: RDSModel.DescribeDBSnapshotsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBSnapshotMessageForDescribeDBSnapshots

    /**
     Invokes the DescribeDBSubnetGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBSubnetGroupsMessage object being passed to this operation.
         - completion: The DBSubnetGroupMessageForDescribeDBSubnetGroups object or an error will be passed to this 
           callback when the operation is complete. The DBSubnetGroupMessageForDescribeDBSubnetGroups
           object will be validated before being returned to caller.
           The possible errors are: dBSubnetGroupNotFound.
     */
    func describeDBSubnetGroupsAsync(
            input: RDSModel.DescribeDBSubnetGroupsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBSubnetGroupMessageForDescribeDBSubnetGroups, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDBSubnetGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBSubnetGroupsMessage object being passed to this operation.
     - Returns: The DBSubnetGroupMessageForDescribeDBSubnetGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSubnetGroupNotFound.
     */
    func describeDBSubnetGroupsSync(
            input: RDSModel.DescribeDBSubnetGroupsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBSubnetGroupMessageForDescribeDBSubnetGroups

    /**
     Invokes the DescribeEngineDefaultClusterParameters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEngineDefaultClusterParametersMessage object being passed to this operation.
         - completion: The DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters object or an error will be passed to this 
           callback when the operation is complete. The DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters
           object will be validated before being returned to caller.
     */
    func describeEngineDefaultClusterParametersAsync(
            input: RDSModel.DescribeEngineDefaultClusterParametersMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeEngineDefaultClusterParameters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEngineDefaultClusterParametersMessage object being passed to this operation.
     - Returns: The DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEngineDefaultClusterParametersSync(
            input: RDSModel.DescribeEngineDefaultClusterParametersMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters

    /**
     Invokes the DescribeEngineDefaultParameters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEngineDefaultParametersMessage object being passed to this operation.
         - completion: The DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters object or an error will be passed to this 
           callback when the operation is complete. The DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters
           object will be validated before being returned to caller.
     */
    func describeEngineDefaultParametersAsync(
            input: RDSModel.DescribeEngineDefaultParametersMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeEngineDefaultParameters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEngineDefaultParametersMessage object being passed to this operation.
     - Returns: The DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEngineDefaultParametersSync(
            input: RDSModel.DescribeEngineDefaultParametersMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters

    /**
     Invokes the DescribeEventCategories operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEventCategoriesMessage object being passed to this operation.
         - completion: The EventCategoriesMessageForDescribeEventCategories object or an error will be passed to this 
           callback when the operation is complete. The EventCategoriesMessageForDescribeEventCategories
           object will be validated before being returned to caller.
     */
    func describeEventCategoriesAsync(
            input: RDSModel.DescribeEventCategoriesMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.EventCategoriesMessageForDescribeEventCategories, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeEventCategories operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEventCategoriesMessage object being passed to this operation.
     - Returns: The EventCategoriesMessageForDescribeEventCategories object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEventCategoriesSync(
            input: RDSModel.DescribeEventCategoriesMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.EventCategoriesMessageForDescribeEventCategories

    /**
     Invokes the DescribeEventSubscriptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEventSubscriptionsMessage object being passed to this operation.
         - completion: The EventSubscriptionsMessageForDescribeEventSubscriptions object or an error will be passed to this 
           callback when the operation is complete. The EventSubscriptionsMessageForDescribeEventSubscriptions
           object will be validated before being returned to caller.
           The possible errors are: subscriptionNotFound.
     */
    func describeEventSubscriptionsAsync(
            input: RDSModel.DescribeEventSubscriptionsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.EventSubscriptionsMessageForDescribeEventSubscriptions, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeEventSubscriptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEventSubscriptionsMessage object being passed to this operation.
     - Returns: The EventSubscriptionsMessageForDescribeEventSubscriptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: subscriptionNotFound.
     */
    func describeEventSubscriptionsSync(
            input: RDSModel.DescribeEventSubscriptionsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.EventSubscriptionsMessageForDescribeEventSubscriptions

    /**
     Invokes the DescribeEvents operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEventsMessage object being passed to this operation.
         - completion: The EventsMessageForDescribeEvents object or an error will be passed to this 
           callback when the operation is complete. The EventsMessageForDescribeEvents
           object will be validated before being returned to caller.
     */
    func describeEventsAsync(
            input: RDSModel.DescribeEventsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.EventsMessageForDescribeEvents, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeEvents operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEventsMessage object being passed to this operation.
     - Returns: The EventsMessageForDescribeEvents object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEventsSync(
            input: RDSModel.DescribeEventsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.EventsMessageForDescribeEvents

    /**
     Invokes the DescribeGlobalClusters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeGlobalClustersMessage object being passed to this operation.
         - completion: The GlobalClustersMessageForDescribeGlobalClusters object or an error will be passed to this 
           callback when the operation is complete. The GlobalClustersMessageForDescribeGlobalClusters
           object will be validated before being returned to caller.
           The possible errors are: globalClusterNotFound.
     */
    func describeGlobalClustersAsync(
            input: RDSModel.DescribeGlobalClustersMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.GlobalClustersMessageForDescribeGlobalClusters, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeGlobalClusters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeGlobalClustersMessage object being passed to this operation.
     - Returns: The GlobalClustersMessageForDescribeGlobalClusters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalClusterNotFound.
     */
    func describeGlobalClustersSync(
            input: RDSModel.DescribeGlobalClustersMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.GlobalClustersMessageForDescribeGlobalClusters

    /**
     Invokes the DescribeOptionGroupOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeOptionGroupOptionsMessage object being passed to this operation.
         - completion: The OptionGroupOptionsMessageForDescribeOptionGroupOptions object or an error will be passed to this 
           callback when the operation is complete. The OptionGroupOptionsMessageForDescribeOptionGroupOptions
           object will be validated before being returned to caller.
     */
    func describeOptionGroupOptionsAsync(
            input: RDSModel.DescribeOptionGroupOptionsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.OptionGroupOptionsMessageForDescribeOptionGroupOptions, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeOptionGroupOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeOptionGroupOptionsMessage object being passed to this operation.
     - Returns: The OptionGroupOptionsMessageForDescribeOptionGroupOptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeOptionGroupOptionsSync(
            input: RDSModel.DescribeOptionGroupOptionsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.OptionGroupOptionsMessageForDescribeOptionGroupOptions

    /**
     Invokes the DescribeOptionGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeOptionGroupsMessage object being passed to this operation.
         - completion: The OptionGroupsForDescribeOptionGroups object or an error will be passed to this 
           callback when the operation is complete. The OptionGroupsForDescribeOptionGroups
           object will be validated before being returned to caller.
           The possible errors are: optionGroupNotFound.
     */
    func describeOptionGroupsAsync(
            input: RDSModel.DescribeOptionGroupsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.OptionGroupsForDescribeOptionGroups, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeOptionGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeOptionGroupsMessage object being passed to this operation.
     - Returns: The OptionGroupsForDescribeOptionGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: optionGroupNotFound.
     */
    func describeOptionGroupsSync(
            input: RDSModel.DescribeOptionGroupsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.OptionGroupsForDescribeOptionGroups

    /**
     Invokes the DescribeOrderableDBInstanceOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeOrderableDBInstanceOptionsMessage object being passed to this operation.
         - completion: The OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions object or an error will be passed to this 
           callback when the operation is complete. The OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions
           object will be validated before being returned to caller.
     */
    func describeOrderableDBInstanceOptionsAsync(
            input: RDSModel.DescribeOrderableDBInstanceOptionsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeOrderableDBInstanceOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeOrderableDBInstanceOptionsMessage object being passed to this operation.
     - Returns: The OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeOrderableDBInstanceOptionsSync(
            input: RDSModel.DescribeOrderableDBInstanceOptionsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions

    /**
     Invokes the DescribePendingMaintenanceActions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribePendingMaintenanceActionsMessage object being passed to this operation.
         - completion: The PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions object or an error will be passed to this 
           callback when the operation is complete. The PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions
           object will be validated before being returned to caller.
           The possible errors are: resourceNotFound.
     */
    func describePendingMaintenanceActionsAsync(
            input: RDSModel.DescribePendingMaintenanceActionsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribePendingMaintenanceActions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribePendingMaintenanceActionsMessage object being passed to this operation.
     - Returns: The PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: resourceNotFound.
     */
    func describePendingMaintenanceActionsSync(
            input: RDSModel.DescribePendingMaintenanceActionsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions

    /**
     Invokes the DescribeReservedDBInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesMessage object being passed to this operation.
         - completion: The ReservedDBInstanceMessageForDescribeReservedDBInstances object or an error will be passed to this 
           callback when the operation is complete. The ReservedDBInstanceMessageForDescribeReservedDBInstances
           object will be validated before being returned to caller.
           The possible errors are: reservedDBInstanceNotFound.
     */
    func describeReservedDBInstancesAsync(
            input: RDSModel.DescribeReservedDBInstancesMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ReservedDBInstanceMessageForDescribeReservedDBInstances, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeReservedDBInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesMessage object being passed to this operation.
     - Returns: The ReservedDBInstanceMessageForDescribeReservedDBInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: reservedDBInstanceNotFound.
     */
    func describeReservedDBInstancesSync(
            input: RDSModel.DescribeReservedDBInstancesMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ReservedDBInstanceMessageForDescribeReservedDBInstances

    /**
     Invokes the DescribeReservedDBInstancesOfferings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesOfferingsMessage object being passed to this operation.
         - completion: The ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings object or an error will be passed to this 
           callback when the operation is complete. The ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings
           object will be validated before being returned to caller.
           The possible errors are: reservedDBInstancesOfferingNotFound.
     */
    func describeReservedDBInstancesOfferingsAsync(
            input: RDSModel.DescribeReservedDBInstancesOfferingsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeReservedDBInstancesOfferings operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesOfferingsMessage object being passed to this operation.
     - Returns: The ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: reservedDBInstancesOfferingNotFound.
     */
    func describeReservedDBInstancesOfferingsSync(
            input: RDSModel.DescribeReservedDBInstancesOfferingsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings

    /**
     Invokes the DescribeSourceRegions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSourceRegionsMessage object being passed to this operation.
         - completion: The SourceRegionMessageForDescribeSourceRegions object or an error will be passed to this 
           callback when the operation is complete. The SourceRegionMessageForDescribeSourceRegions
           object will be validated before being returned to caller.
     */
    func describeSourceRegionsAsync(
            input: RDSModel.DescribeSourceRegionsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.SourceRegionMessageForDescribeSourceRegions, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeSourceRegions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSourceRegionsMessage object being passed to this operation.
     - Returns: The SourceRegionMessageForDescribeSourceRegions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSourceRegionsSync(
            input: RDSModel.DescribeSourceRegionsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.SourceRegionMessageForDescribeSourceRegions

    /**
     Invokes the DescribeValidDBInstanceModifications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeValidDBInstanceModificationsMessage object being passed to this operation.
         - completion: The DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications object or an error will be passed to this 
           callback when the operation is complete. The DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, invalidDBInstanceState.
     */
    func describeValidDBInstanceModificationsAsync(
            input: RDSModel.DescribeValidDBInstanceModificationsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeValidDBInstanceModifications operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeValidDBInstanceModificationsMessage object being passed to this operation.
     - Returns: The DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    func describeValidDBInstanceModificationsSync(
            input: RDSModel.DescribeValidDBInstanceModificationsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications

    /**
     Invokes the DownloadDBLogFilePortion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DownloadDBLogFilePortionMessage object being passed to this operation.
         - completion: The DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion object or an error will be passed to this 
           callback when the operation is complete. The DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, dBLogFileNotFound.
     */
    func downloadDBLogFilePortionAsync(
            input: RDSModel.DownloadDBLogFilePortionMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion, HTTPClientError>) -> ()) throws

    /**
     Invokes the DownloadDBLogFilePortion operation waiting for the response before returning.

     - Parameters:
         - input: The validated DownloadDBLogFilePortionMessage object being passed to this operation.
     - Returns: The DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, dBLogFileNotFound.
     */
    func downloadDBLogFilePortionSync(
            input: RDSModel.DownloadDBLogFilePortionMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion

    /**
     Invokes the FailoverDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated FailoverDBClusterMessage object being passed to this operation.
         - completion: The FailoverDBClusterResultForFailoverDBCluster object or an error will be passed to this 
           callback when the operation is complete. The FailoverDBClusterResultForFailoverDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func failoverDBClusterAsync(
            input: RDSModel.FailoverDBClusterMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.FailoverDBClusterResultForFailoverDBCluster, HTTPClientError>) -> ()) throws

    /**
     Invokes the FailoverDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated FailoverDBClusterMessage object being passed to this operation.
     - Returns: The FailoverDBClusterResultForFailoverDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func failoverDBClusterSync(
            input: RDSModel.FailoverDBClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.FailoverDBClusterResultForFailoverDBCluster

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceMessage object being passed to this operation.
         - completion: The TagListMessageForListTagsForResource object or an error will be passed to this 
           callback when the operation is complete. The TagListMessageForListTagsForResource
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    func listTagsForResourceAsync(
            input: RDSModel.ListTagsForResourceMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.TagListMessageForListTagsForResource, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceMessage object being passed to this operation.
     - Returns: The TagListMessageForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    func listTagsForResourceSync(
            input: RDSModel.ListTagsForResourceMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.TagListMessageForListTagsForResource

    /**
     Invokes the ModifyCurrentDBClusterCapacity operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyCurrentDBClusterCapacityMessage object being passed to this operation.
         - completion: The DBClusterCapacityInfoForModifyCurrentDBClusterCapacity object or an error will be passed to this 
           callback when the operation is complete. The DBClusterCapacityInfoForModifyCurrentDBClusterCapacity
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterCapacity, invalidDBClusterState.
     */
    func modifyCurrentDBClusterCapacityAsync(
            input: RDSModel.ModifyCurrentDBClusterCapacityMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterCapacityInfoForModifyCurrentDBClusterCapacity, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyCurrentDBClusterCapacity operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyCurrentDBClusterCapacityMessage object being passed to this operation.
     - Returns: The DBClusterCapacityInfoForModifyCurrentDBClusterCapacity object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterCapacity, invalidDBClusterState.
     */
    func modifyCurrentDBClusterCapacitySync(
            input: RDSModel.ModifyCurrentDBClusterCapacityMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterCapacityInfoForModifyCurrentDBClusterCapacity

    /**
     Invokes the ModifyDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBClusterMessage object being passed to this operation.
         - completion: The ModifyDBClusterResultForModifyDBCluster object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBClusterResultForModifyDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBSubnetGroupNotFound, invalidDBClusterState, invalidDBInstanceState, invalidDBSecurityGroupState, invalidDBSubnetGroupState, invalidSubnet, invalidVPCNetworkState, storageQuotaExceeded.
     */
    func modifyDBClusterAsync(
            input: RDSModel.ModifyDBClusterMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ModifyDBClusterResultForModifyDBCluster, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBClusterMessage object being passed to this operation.
     - Returns: The ModifyDBClusterResultForModifyDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBSubnetGroupNotFound, invalidDBClusterState, invalidDBInstanceState, invalidDBSecurityGroupState, invalidDBSubnetGroupState, invalidSubnet, invalidVPCNetworkState, storageQuotaExceeded.
     */
    func modifyDBClusterSync(
            input: RDSModel.ModifyDBClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyDBClusterResultForModifyDBCluster

    /**
     Invokes the ModifyDBClusterEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBClusterEndpointMessage object being passed to this operation.
         - completion: The DBClusterEndpointForModifyDBClusterEndpoint object or an error will be passed to this 
           callback when the operation is complete. The DBClusterEndpointForModifyDBClusterEndpoint
           object will be validated before being returned to caller.
           The possible errors are: dBClusterEndpointNotFound, dBInstanceNotFound, invalidDBClusterEndpointState, invalidDBClusterState, invalidDBInstanceState.
     */
    func modifyDBClusterEndpointAsync(
            input: RDSModel.ModifyDBClusterEndpointMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterEndpointForModifyDBClusterEndpoint, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyDBClusterEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBClusterEndpointMessage object being passed to this operation.
     - Returns: The DBClusterEndpointForModifyDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterEndpointNotFound, dBInstanceNotFound, invalidDBClusterEndpointState, invalidDBClusterState, invalidDBInstanceState.
     */
    func modifyDBClusterEndpointSync(
            input: RDSModel.ModifyDBClusterEndpointMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterEndpointForModifyDBClusterEndpoint

    /**
     Invokes the ModifyDBClusterParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBClusterParameterGroupMessage object being passed to this operation.
         - completion: The DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func modifyDBClusterParameterGroupAsync(
            input: RDSModel.ModifyDBClusterParameterGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func modifyDBClusterParameterGroupSync(
            input: RDSModel.ModifyDBClusterParameterGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup

    /**
     Invokes the ModifyDBClusterSnapshotAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBClusterSnapshotAttributeMessage object being passed to this operation.
         - completion: The ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute
           object will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, sharedSnapshotQuotaExceeded.
     */
    func modifyDBClusterSnapshotAttributeAsync(
            input: RDSModel.ModifyDBClusterSnapshotAttributeMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyDBClusterSnapshotAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBClusterSnapshotAttributeMessage object being passed to this operation.
     - Returns: The ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, sharedSnapshotQuotaExceeded.
     */
    func modifyDBClusterSnapshotAttributeSync(
            input: RDSModel.ModifyDBClusterSnapshotAttributeMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute

    /**
     Invokes the ModifyDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBInstanceMessage object being passed to this operation.
         - completion: The ModifyDBInstanceResultForModifyDBInstance object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBInstanceResultForModifyDBInstance
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, certificateNotFound, dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBUpgradeDependencyFailure, domainNotFound, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSecurityGroupState, invalidVPCNetworkState, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func modifyDBInstanceAsync(
            input: RDSModel.ModifyDBInstanceMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ModifyDBInstanceResultForModifyDBInstance, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBInstanceMessage object being passed to this operation.
     - Returns: The ModifyDBInstanceResultForModifyDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, certificateNotFound, dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBUpgradeDependencyFailure, domainNotFound, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSecurityGroupState, invalidVPCNetworkState, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func modifyDBInstanceSync(
            input: RDSModel.ModifyDBInstanceMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyDBInstanceResultForModifyDBInstance

    /**
     Invokes the ModifyDBParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBParameterGroupMessage object being passed to this operation.
         - completion: The DBParameterGroupNameMessageForModifyDBParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The DBParameterGroupNameMessageForModifyDBParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func modifyDBParameterGroupAsync(
            input: RDSModel.ModifyDBParameterGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBParameterGroupNameMessageForModifyDBParameterGroup, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBParameterGroupMessage object being passed to this operation.
     - Returns: The DBParameterGroupNameMessageForModifyDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func modifyDBParameterGroupSync(
            input: RDSModel.ModifyDBParameterGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBParameterGroupNameMessageForModifyDBParameterGroup

    /**
     Invokes the ModifyDBSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBSnapshotMessage object being passed to this operation.
         - completion: The ModifyDBSnapshotResultForModifyDBSnapshot object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBSnapshotResultForModifyDBSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound.
     */
    func modifyDBSnapshotAsync(
            input: RDSModel.ModifyDBSnapshotMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ModifyDBSnapshotResultForModifyDBSnapshot, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBSnapshotMessage object being passed to this operation.
     - Returns: The ModifyDBSnapshotResultForModifyDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound.
     */
    func modifyDBSnapshotSync(
            input: RDSModel.ModifyDBSnapshotMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyDBSnapshotResultForModifyDBSnapshot

    /**
     Invokes the ModifyDBSnapshotAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBSnapshotAttributeMessage object being passed to this operation.
         - completion: The ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute
           object will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound, invalidDBSnapshotState, sharedSnapshotQuotaExceeded.
     */
    func modifyDBSnapshotAttributeAsync(
            input: RDSModel.ModifyDBSnapshotAttributeMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyDBSnapshotAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBSnapshotAttributeMessage object being passed to this operation.
     - Returns: The ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound, invalidDBSnapshotState, sharedSnapshotQuotaExceeded.
     */
    func modifyDBSnapshotAttributeSync(
            input: RDSModel.ModifyDBSnapshotAttributeMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute

    /**
     Invokes the ModifyDBSubnetGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBSubnetGroupMessage object being passed to this operation.
         - completion: The ModifyDBSubnetGroupResultForModifyDBSubnetGroup object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBSubnetGroupResultForModifyDBSubnetGroup
           object will be validated before being returned to caller.
           The possible errors are: dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, dBSubnetQuotaExceeded, invalidSubnet, subnetAlreadyInUse.
     */
    func modifyDBSubnetGroupAsync(
            input: RDSModel.ModifyDBSubnetGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ModifyDBSubnetGroupResultForModifyDBSubnetGroup, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyDBSubnetGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBSubnetGroupMessage object being passed to this operation.
     - Returns: The ModifyDBSubnetGroupResultForModifyDBSubnetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, dBSubnetQuotaExceeded, invalidSubnet, subnetAlreadyInUse.
     */
    func modifyDBSubnetGroupSync(
            input: RDSModel.ModifyDBSubnetGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyDBSubnetGroupResultForModifyDBSubnetGroup

    /**
     Invokes the ModifyEventSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyEventSubscriptionMessage object being passed to this operation.
         - completion: The ModifyEventSubscriptionResultForModifyEventSubscription object or an error will be passed to this 
           callback when the operation is complete. The ModifyEventSubscriptionResultForModifyEventSubscription
           object will be validated before being returned to caller.
           The possible errors are: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, subscriptionCategoryNotFound, subscriptionNotFound.
     */
    func modifyEventSubscriptionAsync(
            input: RDSModel.ModifyEventSubscriptionMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ModifyEventSubscriptionResultForModifyEventSubscription, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyEventSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyEventSubscriptionMessage object being passed to this operation.
     - Returns: The ModifyEventSubscriptionResultForModifyEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, subscriptionCategoryNotFound, subscriptionNotFound.
     */
    func modifyEventSubscriptionSync(
            input: RDSModel.ModifyEventSubscriptionMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyEventSubscriptionResultForModifyEventSubscription

    /**
     Invokes the ModifyGlobalCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyGlobalClusterMessage object being passed to this operation.
         - completion: The ModifyGlobalClusterResultForModifyGlobalCluster object or an error will be passed to this 
           callback when the operation is complete. The ModifyGlobalClusterResultForModifyGlobalCluster
           object will be validated before being returned to caller.
           The possible errors are: globalClusterNotFound, invalidGlobalClusterState.
     */
    func modifyGlobalClusterAsync(
            input: RDSModel.ModifyGlobalClusterMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ModifyGlobalClusterResultForModifyGlobalCluster, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyGlobalCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyGlobalClusterMessage object being passed to this operation.
     - Returns: The ModifyGlobalClusterResultForModifyGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalClusterNotFound, invalidGlobalClusterState.
     */
    func modifyGlobalClusterSync(
            input: RDSModel.ModifyGlobalClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyGlobalClusterResultForModifyGlobalCluster

    /**
     Invokes the ModifyOptionGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyOptionGroupMessage object being passed to this operation.
         - completion: The ModifyOptionGroupResultForModifyOptionGroup object or an error will be passed to this 
           callback when the operation is complete. The ModifyOptionGroupResultForModifyOptionGroup
           object will be validated before being returned to caller.
           The possible errors are: invalidOptionGroupState, optionGroupNotFound.
     */
    func modifyOptionGroupAsync(
            input: RDSModel.ModifyOptionGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ModifyOptionGroupResultForModifyOptionGroup, HTTPClientError>) -> ()) throws

    /**
     Invokes the ModifyOptionGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyOptionGroupMessage object being passed to this operation.
     - Returns: The ModifyOptionGroupResultForModifyOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOptionGroupState, optionGroupNotFound.
     */
    func modifyOptionGroupSync(
            input: RDSModel.ModifyOptionGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyOptionGroupResultForModifyOptionGroup

    /**
     Invokes the PromoteReadReplica operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PromoteReadReplicaMessage object being passed to this operation.
         - completion: The PromoteReadReplicaResultForPromoteReadReplica object or an error will be passed to this 
           callback when the operation is complete. The PromoteReadReplicaResultForPromoteReadReplica
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, invalidDBInstanceState.
     */
    func promoteReadReplicaAsync(
            input: RDSModel.PromoteReadReplicaMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.PromoteReadReplicaResultForPromoteReadReplica, HTTPClientError>) -> ()) throws

    /**
     Invokes the PromoteReadReplica operation waiting for the response before returning.

     - Parameters:
         - input: The validated PromoteReadReplicaMessage object being passed to this operation.
     - Returns: The PromoteReadReplicaResultForPromoteReadReplica object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    func promoteReadReplicaSync(
            input: RDSModel.PromoteReadReplicaMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.PromoteReadReplicaResultForPromoteReadReplica

    /**
     Invokes the PromoteReadReplicaDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PromoteReadReplicaDBClusterMessage object being passed to this operation.
         - completion: The PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster object or an error will be passed to this 
           callback when the operation is complete. The PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState.
     */
    func promoteReadReplicaDBClusterAsync(
            input: RDSModel.PromoteReadReplicaDBClusterMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster, HTTPClientError>) -> ()) throws

    /**
     Invokes the PromoteReadReplicaDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated PromoteReadReplicaDBClusterMessage object being passed to this operation.
     - Returns: The PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState.
     */
    func promoteReadReplicaDBClusterSync(
            input: RDSModel.PromoteReadReplicaDBClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster

    /**
     Invokes the PurchaseReservedDBInstancesOffering operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PurchaseReservedDBInstancesOfferingMessage object being passed to this operation.
         - completion: The PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering object or an error will be passed to this 
           callback when the operation is complete. The PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering
           object will be validated before being returned to caller.
           The possible errors are: reservedDBInstanceAlreadyExists, reservedDBInstanceQuotaExceeded, reservedDBInstancesOfferingNotFound.
     */
    func purchaseReservedDBInstancesOfferingAsync(
            input: RDSModel.PurchaseReservedDBInstancesOfferingMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering, HTTPClientError>) -> ()) throws

    /**
     Invokes the PurchaseReservedDBInstancesOffering operation waiting for the response before returning.

     - Parameters:
         - input: The validated PurchaseReservedDBInstancesOfferingMessage object being passed to this operation.
     - Returns: The PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: reservedDBInstanceAlreadyExists, reservedDBInstanceQuotaExceeded, reservedDBInstancesOfferingNotFound.
     */
    func purchaseReservedDBInstancesOfferingSync(
            input: RDSModel.PurchaseReservedDBInstancesOfferingMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering

    /**
     Invokes the RebootDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RebootDBInstanceMessage object being passed to this operation.
         - completion: The RebootDBInstanceResultForRebootDBInstance object or an error will be passed to this 
           callback when the operation is complete. The RebootDBInstanceResultForRebootDBInstance
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, invalidDBInstanceState.
     */
    func rebootDBInstanceAsync(
            input: RDSModel.RebootDBInstanceMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.RebootDBInstanceResultForRebootDBInstance, HTTPClientError>) -> ()) throws

    /**
     Invokes the RebootDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated RebootDBInstanceMessage object being passed to this operation.
     - Returns: The RebootDBInstanceResultForRebootDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    func rebootDBInstanceSync(
            input: RDSModel.RebootDBInstanceMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RebootDBInstanceResultForRebootDBInstance

    /**
     Invokes the RemoveFromGlobalCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveFromGlobalClusterMessage object being passed to this operation.
         - completion: The RemoveFromGlobalClusterResultForRemoveFromGlobalCluster object or an error will be passed to this 
           callback when the operation is complete. The RemoveFromGlobalClusterResultForRemoveFromGlobalCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, globalClusterNotFound, invalidGlobalClusterState.
     */
    func removeFromGlobalClusterAsync(
            input: RDSModel.RemoveFromGlobalClusterMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.RemoveFromGlobalClusterResultForRemoveFromGlobalCluster, HTTPClientError>) -> ()) throws

    /**
     Invokes the RemoveFromGlobalCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveFromGlobalClusterMessage object being passed to this operation.
     - Returns: The RemoveFromGlobalClusterResultForRemoveFromGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, globalClusterNotFound, invalidGlobalClusterState.
     */
    func removeFromGlobalClusterSync(
            input: RDSModel.RemoveFromGlobalClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RemoveFromGlobalClusterResultForRemoveFromGlobalCluster

    /**
     Invokes the RemoveRoleFromDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveRoleFromDBClusterMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBClusterNotFound, dBClusterRoleNotFound, invalidDBClusterState.
     */
    func removeRoleFromDBClusterAsync(
            input: RDSModel.RemoveRoleFromDBClusterMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RemoveRoleFromDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveRoleFromDBClusterMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBClusterRoleNotFound, invalidDBClusterState.
     */
    func removeRoleFromDBClusterSync(
            input: RDSModel.RemoveRoleFromDBClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the RemoveRoleFromDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveRoleFromDBInstanceMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBInstanceNotFound, dBInstanceRoleNotFound, invalidDBInstanceState.
     */
    func removeRoleFromDBInstanceAsync(
            input: RDSModel.RemoveRoleFromDBInstanceMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RemoveRoleFromDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveRoleFromDBInstanceMessage object being passed to this operation.
     - Throws: dBInstanceNotFound, dBInstanceRoleNotFound, invalidDBInstanceState.
     */
    func removeRoleFromDBInstanceSync(
            input: RDSModel.RemoveRoleFromDBInstanceMessage,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the RemoveSourceIdentifierFromSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveSourceIdentifierFromSubscriptionMessage object being passed to this operation.
         - completion: The RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription object or an error will be passed to this 
           callback when the operation is complete. The RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription
           object will be validated before being returned to caller.
           The possible errors are: sourceNotFound, subscriptionNotFound.
     */
    func removeSourceIdentifierFromSubscriptionAsync(
            input: RDSModel.RemoveSourceIdentifierFromSubscriptionMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription, HTTPClientError>) -> ()) throws

    /**
     Invokes the RemoveSourceIdentifierFromSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveSourceIdentifierFromSubscriptionMessage object being passed to this operation.
     - Returns: The RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: sourceNotFound, subscriptionNotFound.
     */
    func removeSourceIdentifierFromSubscriptionSync(
            input: RDSModel.RemoveSourceIdentifierFromSubscriptionMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription

    /**
     Invokes the RemoveTagsFromResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveTagsFromResourceMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    func removeTagsFromResourceAsync(
            input: RDSModel.RemoveTagsFromResourceMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RemoveTagsFromResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveTagsFromResourceMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    func removeTagsFromResourceSync(
            input: RDSModel.RemoveTagsFromResourceMessage,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the ResetDBClusterParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetDBClusterParameterGroupMessage object being passed to this operation.
         - completion: The DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func resetDBClusterParameterGroupAsync(
            input: RDSModel.ResetDBClusterParameterGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup, HTTPClientError>) -> ()) throws

    /**
     Invokes the ResetDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func resetDBClusterParameterGroupSync(
            input: RDSModel.ResetDBClusterParameterGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup

    /**
     Invokes the ResetDBParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetDBParameterGroupMessage object being passed to this operation.
         - completion: The DBParameterGroupNameMessageForResetDBParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The DBParameterGroupNameMessageForResetDBParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func resetDBParameterGroupAsync(
            input: RDSModel.ResetDBParameterGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBParameterGroupNameMessageForResetDBParameterGroup, HTTPClientError>) -> ()) throws

    /**
     Invokes the ResetDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetDBParameterGroupMessage object being passed to this operation.
     - Returns: The DBParameterGroupNameMessageForResetDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func resetDBParameterGroupSync(
            input: RDSModel.ResetDBParameterGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBParameterGroupNameMessageForResetDBParameterGroup

    /**
     Invokes the RestoreDBClusterFromS3 operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBClusterFromS3Message object being passed to this operation.
         - completion: The RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3 object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3
           object will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBSubnetGroupNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBSubnetGroupState, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    func restoreDBClusterFromS3Async(
            input: RDSModel.RestoreDBClusterFromS3Message, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3, HTTPClientError>) -> ()) throws

    /**
     Invokes the RestoreDBClusterFromS3 operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBClusterFromS3Message object being passed to this operation.
     - Returns: The RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3 object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBSubnetGroupNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBSubnetGroupState, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    func restoreDBClusterFromS3Sync(
            input: RDSModel.RestoreDBClusterFromS3Message,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3

    /**
     Invokes the RestoreDBClusterFromSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBClusterFromSnapshotMessage object being passed to this operation.
         - completion: The RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSnapshotNotFound, dBSubnetGroupNotFound, dBSubnetGroupNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded, storageQuotaExceeded.
     */
    func restoreDBClusterFromSnapshotAsync(
            input: RDSModel.RestoreDBClusterFromSnapshotMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot, HTTPClientError>) -> ()) throws

    /**
     Invokes the RestoreDBClusterFromSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBClusterFromSnapshotMessage object being passed to this operation.
     - Returns: The RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSnapshotNotFound, dBSubnetGroupNotFound, dBSubnetGroupNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded, storageQuotaExceeded.
     */
    func restoreDBClusterFromSnapshotSync(
            input: RDSModel.RestoreDBClusterFromSnapshotMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot

    /**
     Invokes the RestoreDBClusterToPointInTime operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBClusterToPointInTimeMessage object being passed to this operation.
         - completion: The RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime
           object will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSubnetGroupNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBClusterState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded.
     */
    func restoreDBClusterToPointInTimeAsync(
            input: RDSModel.RestoreDBClusterToPointInTimeMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime, HTTPClientError>) -> ()) throws

    /**
     Invokes the RestoreDBClusterToPointInTime operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBClusterToPointInTimeMessage object being passed to this operation.
     - Returns: The RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSubnetGroupNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBClusterState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded.
     */
    func restoreDBClusterToPointInTimeSync(
            input: RDSModel.RestoreDBClusterToPointInTimeMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime

    /**
     Invokes the RestoreDBInstanceFromDBSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBInstanceFromDBSnapshotMessage object being passed to this operation.
         - completion: The RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSnapshotNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func restoreDBInstanceFromDBSnapshotAsync(
            input: RDSModel.RestoreDBInstanceFromDBSnapshotMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot, HTTPClientError>) -> ()) throws

    /**
     Invokes the RestoreDBInstanceFromDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBInstanceFromDBSnapshotMessage object being passed to this operation.
     - Returns: The RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSnapshotNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func restoreDBInstanceFromDBSnapshotSync(
            input: RDSModel.RestoreDBInstanceFromDBSnapshotMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot

    /**
     Invokes the RestoreDBInstanceFromS3 operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBInstanceFromS3Message object being passed to this operation.
         - completion: The RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3 object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func restoreDBInstanceFromS3Async(
            input: RDSModel.RestoreDBInstanceFromS3Message, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3, HTTPClientError>) -> ()) throws

    /**
     Invokes the RestoreDBInstanceFromS3 operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBInstanceFromS3Message object being passed to this operation.
     - Returns: The RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3 object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func restoreDBInstanceFromS3Sync(
            input: RDSModel.RestoreDBInstanceFromS3Message,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3

    /**
     Invokes the RestoreDBInstanceToPointInTime operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBInstanceToPointInTimeMessage object being passed to this operation.
         - completion: The RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBInstanceAutomatedBackupNotFound, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, pointInTimeRestoreNotEnabled, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func restoreDBInstanceToPointInTimeAsync(
            input: RDSModel.RestoreDBInstanceToPointInTimeMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime, HTTPClientError>) -> ()) throws

    /**
     Invokes the RestoreDBInstanceToPointInTime operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBInstanceToPointInTimeMessage object being passed to this operation.
     - Returns: The RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBInstanceAutomatedBackupNotFound, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, pointInTimeRestoreNotEnabled, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func restoreDBInstanceToPointInTimeSync(
            input: RDSModel.RestoreDBInstanceToPointInTimeMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime

    /**
     Invokes the RevokeDBSecurityGroupIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RevokeDBSecurityGroupIngressMessage object being passed to this operation.
         - completion: The RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress object or an error will be passed to this 
           callback when the operation is complete. The RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    func revokeDBSecurityGroupIngressAsync(
            input: RDSModel.RevokeDBSecurityGroupIngressMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress, HTTPClientError>) -> ()) throws

    /**
     Invokes the RevokeDBSecurityGroupIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated RevokeDBSecurityGroupIngressMessage object being passed to this operation.
     - Returns: The RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    func revokeDBSecurityGroupIngressSync(
            input: RDSModel.RevokeDBSecurityGroupIngressMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress

    /**
     Invokes the StartActivityStream operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartActivityStreamRequest object being passed to this operation.
         - completion: The StartActivityStreamResponseForStartActivityStream object or an error will be passed to this 
           callback when the operation is complete. The StartActivityStreamResponseForStartActivityStream
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState, kMSKeyNotAccessible, resourceNotFound.
     */
    func startActivityStreamAsync(
            input: RDSModel.StartActivityStreamRequest, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.StartActivityStreamResponseForStartActivityStream, HTTPClientError>) -> ()) throws

    /**
     Invokes the StartActivityStream operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartActivityStreamRequest object being passed to this operation.
     - Returns: The StartActivityStreamResponseForStartActivityStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState, kMSKeyNotAccessible, resourceNotFound.
     */
    func startActivityStreamSync(
            input: RDSModel.StartActivityStreamRequest,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.StartActivityStreamResponseForStartActivityStream

    /**
     Invokes the StartDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartDBClusterMessage object being passed to this operation.
         - completion: The StartDBClusterResultForStartDBCluster object or an error will be passed to this 
           callback when the operation is complete. The StartDBClusterResultForStartDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func startDBClusterAsync(
            input: RDSModel.StartDBClusterMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.StartDBClusterResultForStartDBCluster, HTTPClientError>) -> ()) throws

    /**
     Invokes the StartDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartDBClusterMessage object being passed to this operation.
     - Returns: The StartDBClusterResultForStartDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func startDBClusterSync(
            input: RDSModel.StartDBClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.StartDBClusterResultForStartDBCluster

    /**
     Invokes the StartDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartDBInstanceMessage object being passed to this operation.
         - completion: The StartDBInstanceResultForStartDBInstance object or an error will be passed to this 
           callback when the operation is complete. The StartDBInstanceResultForStartDBInstance
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, dBClusterNotFound, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, insufficientDBInstanceCapacity, invalidDBClusterState, invalidDBInstanceState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible.
     */
    func startDBInstanceAsync(
            input: RDSModel.StartDBInstanceMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.StartDBInstanceResultForStartDBInstance, HTTPClientError>) -> ()) throws

    /**
     Invokes the StartDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartDBInstanceMessage object being passed to this operation.
     - Returns: The StartDBInstanceResultForStartDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, dBClusterNotFound, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, insufficientDBInstanceCapacity, invalidDBClusterState, invalidDBInstanceState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible.
     */
    func startDBInstanceSync(
            input: RDSModel.StartDBInstanceMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.StartDBInstanceResultForStartDBInstance

    /**
     Invokes the StopActivityStream operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopActivityStreamRequest object being passed to this operation.
         - completion: The StopActivityStreamResponseForStopActivityStream object or an error will be passed to this 
           callback when the operation is complete. The StopActivityStreamResponseForStopActivityStream
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState, resourceNotFound.
     */
    func stopActivityStreamAsync(
            input: RDSModel.StopActivityStreamRequest, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.StopActivityStreamResponseForStopActivityStream, HTTPClientError>) -> ()) throws

    /**
     Invokes the StopActivityStream operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopActivityStreamRequest object being passed to this operation.
     - Returns: The StopActivityStreamResponseForStopActivityStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState, resourceNotFound.
     */
    func stopActivityStreamSync(
            input: RDSModel.StopActivityStreamRequest,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.StopActivityStreamResponseForStopActivityStream

    /**
     Invokes the StopDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopDBClusterMessage object being passed to this operation.
         - completion: The StopDBClusterResultForStopDBCluster object or an error will be passed to this 
           callback when the operation is complete. The StopDBClusterResultForStopDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func stopDBClusterAsync(
            input: RDSModel.StopDBClusterMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.StopDBClusterResultForStopDBCluster, HTTPClientError>) -> ()) throws

    /**
     Invokes the StopDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopDBClusterMessage object being passed to this operation.
     - Returns: The StopDBClusterResultForStopDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func stopDBClusterSync(
            input: RDSModel.StopDBClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.StopDBClusterResultForStopDBCluster

    /**
     Invokes the StopDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopDBInstanceMessage object being passed to this operation.
         - completion: The StopDBInstanceResultForStopDBInstance object or an error will be passed to this 
           callback when the operation is complete. The StopDBInstanceResultForStopDBInstance
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    func stopDBInstanceAsync(
            input: RDSModel.StopDBInstanceMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.StopDBInstanceResultForStopDBInstance, HTTPClientError>) -> ()) throws

    /**
     Invokes the StopDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopDBInstanceMessage object being passed to this operation.
     - Returns: The StopDBInstanceResultForStopDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    func stopDBInstanceSync(
            input: RDSModel.StopDBInstanceMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.StopDBInstanceResultForStopDBInstance
}
