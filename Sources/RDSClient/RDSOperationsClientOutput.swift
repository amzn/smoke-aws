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
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment
// -- Generated Code; do not edit --
//
// RDSOperationsClientOutput.swift
// RDSClient
//

import Foundation
import SmokeHTTPClient
import RDSModel

/**
 Type to handle the output from the AddSourceIdentifierToSubscription operation in a HTTP client.
 */
extension AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription: HTTPResponseOutputProtocol {
    public typealias BodyType = AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription
    public typealias HeadersType = AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ApplyPendingMaintenanceAction operation in a HTTP client.
 */
extension ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction: HTTPResponseOutputProtocol {
    public typealias BodyType = ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction
    public typealias HeadersType = ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the AuthorizeDBSecurityGroupIngress operation in a HTTP client.
 */
extension AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress: HTTPResponseOutputProtocol {
    public typealias BodyType = AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress
    public typealias HeadersType = AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the BacktrackDBCluster operation in a HTTP client.
 */
extension DBClusterBacktrackForBacktrackDBCluster: HTTPResponseOutputProtocol {
    public typealias BodyType = DBClusterBacktrackForBacktrackDBCluster
    public typealias HeadersType = DBClusterBacktrackForBacktrackDBCluster

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DBClusterBacktrackForBacktrackDBCluster {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CopyDBClusterParameterGroup operation in a HTTP client.
 */
extension CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup: HTTPResponseOutputProtocol {
    public typealias BodyType = CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup
    public typealias HeadersType = CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CopyDBClusterSnapshot operation in a HTTP client.
 */
extension CopyDBClusterSnapshotResultForCopyDBClusterSnapshot: HTTPResponseOutputProtocol {
    public typealias BodyType = CopyDBClusterSnapshotResultForCopyDBClusterSnapshot
    public typealias HeadersType = CopyDBClusterSnapshotResultForCopyDBClusterSnapshot

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CopyDBClusterSnapshotResultForCopyDBClusterSnapshot {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CopyDBParameterGroup operation in a HTTP client.
 */
extension CopyDBParameterGroupResultForCopyDBParameterGroup: HTTPResponseOutputProtocol {
    public typealias BodyType = CopyDBParameterGroupResultForCopyDBParameterGroup
    public typealias HeadersType = CopyDBParameterGroupResultForCopyDBParameterGroup

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CopyDBParameterGroupResultForCopyDBParameterGroup {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CopyDBSnapshot operation in a HTTP client.
 */
extension CopyDBSnapshotResultForCopyDBSnapshot: HTTPResponseOutputProtocol {
    public typealias BodyType = CopyDBSnapshotResultForCopyDBSnapshot
    public typealias HeadersType = CopyDBSnapshotResultForCopyDBSnapshot

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CopyDBSnapshotResultForCopyDBSnapshot {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CopyOptionGroup operation in a HTTP client.
 */
extension CopyOptionGroupResultForCopyOptionGroup: HTTPResponseOutputProtocol {
    public typealias BodyType = CopyOptionGroupResultForCopyOptionGroup
    public typealias HeadersType = CopyOptionGroupResultForCopyOptionGroup

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CopyOptionGroupResultForCopyOptionGroup {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateDBCluster operation in a HTTP client.
 */
extension CreateDBClusterResultForCreateDBCluster: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateDBClusterResultForCreateDBCluster
    public typealias HeadersType = CreateDBClusterResultForCreateDBCluster

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateDBClusterResultForCreateDBCluster {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateDBClusterEndpoint operation in a HTTP client.
 */
extension DBClusterEndpointForCreateDBClusterEndpoint: HTTPResponseOutputProtocol {
    public typealias BodyType = DBClusterEndpointForCreateDBClusterEndpoint
    public typealias HeadersType = DBClusterEndpointForCreateDBClusterEndpoint

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DBClusterEndpointForCreateDBClusterEndpoint {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateDBClusterParameterGroup operation in a HTTP client.
 */
extension CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup
    public typealias HeadersType = CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateDBClusterSnapshot operation in a HTTP client.
 */
extension CreateDBClusterSnapshotResultForCreateDBClusterSnapshot: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateDBClusterSnapshotResultForCreateDBClusterSnapshot
    public typealias HeadersType = CreateDBClusterSnapshotResultForCreateDBClusterSnapshot

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateDBClusterSnapshotResultForCreateDBClusterSnapshot {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateDBInstance operation in a HTTP client.
 */
extension CreateDBInstanceResultForCreateDBInstance: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateDBInstanceResultForCreateDBInstance
    public typealias HeadersType = CreateDBInstanceResultForCreateDBInstance

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateDBInstanceResultForCreateDBInstance {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateDBInstanceReadReplica operation in a HTTP client.
 */
extension CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica
    public typealias HeadersType = CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateDBParameterGroup operation in a HTTP client.
 */
extension CreateDBParameterGroupResultForCreateDBParameterGroup: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateDBParameterGroupResultForCreateDBParameterGroup
    public typealias HeadersType = CreateDBParameterGroupResultForCreateDBParameterGroup

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateDBParameterGroupResultForCreateDBParameterGroup {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateDBSecurityGroup operation in a HTTP client.
 */
extension CreateDBSecurityGroupResultForCreateDBSecurityGroup: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateDBSecurityGroupResultForCreateDBSecurityGroup
    public typealias HeadersType = CreateDBSecurityGroupResultForCreateDBSecurityGroup

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateDBSecurityGroupResultForCreateDBSecurityGroup {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateDBSnapshot operation in a HTTP client.
 */
extension CreateDBSnapshotResultForCreateDBSnapshot: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateDBSnapshotResultForCreateDBSnapshot
    public typealias HeadersType = CreateDBSnapshotResultForCreateDBSnapshot

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateDBSnapshotResultForCreateDBSnapshot {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateDBSubnetGroup operation in a HTTP client.
 */
extension CreateDBSubnetGroupResultForCreateDBSubnetGroup: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateDBSubnetGroupResultForCreateDBSubnetGroup
    public typealias HeadersType = CreateDBSubnetGroupResultForCreateDBSubnetGroup

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateDBSubnetGroupResultForCreateDBSubnetGroup {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateEventSubscription operation in a HTTP client.
 */
extension CreateEventSubscriptionResultForCreateEventSubscription: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateEventSubscriptionResultForCreateEventSubscription
    public typealias HeadersType = CreateEventSubscriptionResultForCreateEventSubscription

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateEventSubscriptionResultForCreateEventSubscription {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateGlobalCluster operation in a HTTP client.
 */
extension CreateGlobalClusterResultForCreateGlobalCluster: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateGlobalClusterResultForCreateGlobalCluster
    public typealias HeadersType = CreateGlobalClusterResultForCreateGlobalCluster

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateGlobalClusterResultForCreateGlobalCluster {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateOptionGroup operation in a HTTP client.
 */
extension CreateOptionGroupResultForCreateOptionGroup: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateOptionGroupResultForCreateOptionGroup
    public typealias HeadersType = CreateOptionGroupResultForCreateOptionGroup

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateOptionGroupResultForCreateOptionGroup {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteDBCluster operation in a HTTP client.
 */
extension DeleteDBClusterResultForDeleteDBCluster: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteDBClusterResultForDeleteDBCluster
    public typealias HeadersType = DeleteDBClusterResultForDeleteDBCluster

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteDBClusterResultForDeleteDBCluster {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteDBClusterEndpoint operation in a HTTP client.
 */
extension DBClusterEndpointForDeleteDBClusterEndpoint: HTTPResponseOutputProtocol {
    public typealias BodyType = DBClusterEndpointForDeleteDBClusterEndpoint
    public typealias HeadersType = DBClusterEndpointForDeleteDBClusterEndpoint

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DBClusterEndpointForDeleteDBClusterEndpoint {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteDBClusterSnapshot operation in a HTTP client.
 */
extension DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot
    public typealias HeadersType = DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteDBInstance operation in a HTTP client.
 */
extension DeleteDBInstanceResultForDeleteDBInstance: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteDBInstanceResultForDeleteDBInstance
    public typealias HeadersType = DeleteDBInstanceResultForDeleteDBInstance

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteDBInstanceResultForDeleteDBInstance {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteDBInstanceAutomatedBackup operation in a HTTP client.
 */
extension DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup
    public typealias HeadersType = DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteDBSnapshot operation in a HTTP client.
 */
extension DeleteDBSnapshotResultForDeleteDBSnapshot: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteDBSnapshotResultForDeleteDBSnapshot
    public typealias HeadersType = DeleteDBSnapshotResultForDeleteDBSnapshot

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteDBSnapshotResultForDeleteDBSnapshot {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteEventSubscription operation in a HTTP client.
 */
extension DeleteEventSubscriptionResultForDeleteEventSubscription: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteEventSubscriptionResultForDeleteEventSubscription
    public typealias HeadersType = DeleteEventSubscriptionResultForDeleteEventSubscription

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteEventSubscriptionResultForDeleteEventSubscription {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteGlobalCluster operation in a HTTP client.
 */
extension DeleteGlobalClusterResultForDeleteGlobalCluster: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteGlobalClusterResultForDeleteGlobalCluster
    public typealias HeadersType = DeleteGlobalClusterResultForDeleteGlobalCluster

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteGlobalClusterResultForDeleteGlobalCluster {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeAccountAttributes operation in a HTTP client.
 */
extension AccountAttributesMessageForDescribeAccountAttributes: HTTPResponseOutputProtocol {
    public typealias BodyType = AccountAttributesMessageForDescribeAccountAttributes
    public typealias HeadersType = AccountAttributesMessageForDescribeAccountAttributes

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AccountAttributesMessageForDescribeAccountAttributes {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeCertificates operation in a HTTP client.
 */
extension CertificateMessageForDescribeCertificates: HTTPResponseOutputProtocol {
    public typealias BodyType = CertificateMessageForDescribeCertificates
    public typealias HeadersType = CertificateMessageForDescribeCertificates

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CertificateMessageForDescribeCertificates {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeDBClusterBacktracks operation in a HTTP client.
 */
extension DBClusterBacktrackMessageForDescribeDBClusterBacktracks: HTTPResponseOutputProtocol {
    public typealias BodyType = DBClusterBacktrackMessageForDescribeDBClusterBacktracks
    public typealias HeadersType = DBClusterBacktrackMessageForDescribeDBClusterBacktracks

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DBClusterBacktrackMessageForDescribeDBClusterBacktracks {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeDBClusterEndpoints operation in a HTTP client.
 */
extension DBClusterEndpointMessageForDescribeDBClusterEndpoints: HTTPResponseOutputProtocol {
    public typealias BodyType = DBClusterEndpointMessageForDescribeDBClusterEndpoints
    public typealias HeadersType = DBClusterEndpointMessageForDescribeDBClusterEndpoints

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DBClusterEndpointMessageForDescribeDBClusterEndpoints {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeDBClusterParameterGroups operation in a HTTP client.
 */
extension DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups: HTTPResponseOutputProtocol {
    public typealias BodyType = DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups
    public typealias HeadersType = DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeDBClusterParameters operation in a HTTP client.
 */
extension DBClusterParameterGroupDetailsForDescribeDBClusterParameters: HTTPResponseOutputProtocol {
    public typealias BodyType = DBClusterParameterGroupDetailsForDescribeDBClusterParameters
    public typealias HeadersType = DBClusterParameterGroupDetailsForDescribeDBClusterParameters

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DBClusterParameterGroupDetailsForDescribeDBClusterParameters {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeDBClusterSnapshotAttributes operation in a HTTP client.
 */
extension DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes
    public typealias HeadersType = DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeDBClusterSnapshots operation in a HTTP client.
 */
extension DBClusterSnapshotMessageForDescribeDBClusterSnapshots: HTTPResponseOutputProtocol {
    public typealias BodyType = DBClusterSnapshotMessageForDescribeDBClusterSnapshots
    public typealias HeadersType = DBClusterSnapshotMessageForDescribeDBClusterSnapshots

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DBClusterSnapshotMessageForDescribeDBClusterSnapshots {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeDBClusters operation in a HTTP client.
 */
extension DBClusterMessageForDescribeDBClusters: HTTPResponseOutputProtocol {
    public typealias BodyType = DBClusterMessageForDescribeDBClusters
    public typealias HeadersType = DBClusterMessageForDescribeDBClusters

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DBClusterMessageForDescribeDBClusters {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeDBEngineVersions operation in a HTTP client.
 */
extension DBEngineVersionMessageForDescribeDBEngineVersions: HTTPResponseOutputProtocol {
    public typealias BodyType = DBEngineVersionMessageForDescribeDBEngineVersions
    public typealias HeadersType = DBEngineVersionMessageForDescribeDBEngineVersions

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DBEngineVersionMessageForDescribeDBEngineVersions {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeDBInstanceAutomatedBackups operation in a HTTP client.
 */
extension DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups: HTTPResponseOutputProtocol {
    public typealias BodyType = DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups
    public typealias HeadersType = DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeDBInstances operation in a HTTP client.
 */
extension DBInstanceMessageForDescribeDBInstances: HTTPResponseOutputProtocol {
    public typealias BodyType = DBInstanceMessageForDescribeDBInstances
    public typealias HeadersType = DBInstanceMessageForDescribeDBInstances

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DBInstanceMessageForDescribeDBInstances {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeDBLogFiles operation in a HTTP client.
 */
extension DescribeDBLogFilesResponseForDescribeDBLogFiles: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeDBLogFilesResponseForDescribeDBLogFiles
    public typealias HeadersType = DescribeDBLogFilesResponseForDescribeDBLogFiles

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeDBLogFilesResponseForDescribeDBLogFiles {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeDBParameterGroups operation in a HTTP client.
 */
extension DBParameterGroupsMessageForDescribeDBParameterGroups: HTTPResponseOutputProtocol {
    public typealias BodyType = DBParameterGroupsMessageForDescribeDBParameterGroups
    public typealias HeadersType = DBParameterGroupsMessageForDescribeDBParameterGroups

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DBParameterGroupsMessageForDescribeDBParameterGroups {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeDBParameters operation in a HTTP client.
 */
extension DBParameterGroupDetailsForDescribeDBParameters: HTTPResponseOutputProtocol {
    public typealias BodyType = DBParameterGroupDetailsForDescribeDBParameters
    public typealias HeadersType = DBParameterGroupDetailsForDescribeDBParameters

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DBParameterGroupDetailsForDescribeDBParameters {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeDBSecurityGroups operation in a HTTP client.
 */
extension DBSecurityGroupMessageForDescribeDBSecurityGroups: HTTPResponseOutputProtocol {
    public typealias BodyType = DBSecurityGroupMessageForDescribeDBSecurityGroups
    public typealias HeadersType = DBSecurityGroupMessageForDescribeDBSecurityGroups

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DBSecurityGroupMessageForDescribeDBSecurityGroups {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeDBSnapshotAttributes operation in a HTTP client.
 */
extension DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes
    public typealias HeadersType = DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeDBSnapshots operation in a HTTP client.
 */
extension DBSnapshotMessageForDescribeDBSnapshots: HTTPResponseOutputProtocol {
    public typealias BodyType = DBSnapshotMessageForDescribeDBSnapshots
    public typealias HeadersType = DBSnapshotMessageForDescribeDBSnapshots

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DBSnapshotMessageForDescribeDBSnapshots {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeDBSubnetGroups operation in a HTTP client.
 */
extension DBSubnetGroupMessageForDescribeDBSubnetGroups: HTTPResponseOutputProtocol {
    public typealias BodyType = DBSubnetGroupMessageForDescribeDBSubnetGroups
    public typealias HeadersType = DBSubnetGroupMessageForDescribeDBSubnetGroups

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DBSubnetGroupMessageForDescribeDBSubnetGroups {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeEngineDefaultClusterParameters operation in a HTTP client.
 */
extension DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters
    public typealias HeadersType = DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeEngineDefaultParameters operation in a HTTP client.
 */
extension DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters
    public typealias HeadersType = DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeEventCategories operation in a HTTP client.
 */
extension EventCategoriesMessageForDescribeEventCategories: HTTPResponseOutputProtocol {
    public typealias BodyType = EventCategoriesMessageForDescribeEventCategories
    public typealias HeadersType = EventCategoriesMessageForDescribeEventCategories

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> EventCategoriesMessageForDescribeEventCategories {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeEventSubscriptions operation in a HTTP client.
 */
extension EventSubscriptionsMessageForDescribeEventSubscriptions: HTTPResponseOutputProtocol {
    public typealias BodyType = EventSubscriptionsMessageForDescribeEventSubscriptions
    public typealias HeadersType = EventSubscriptionsMessageForDescribeEventSubscriptions

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> EventSubscriptionsMessageForDescribeEventSubscriptions {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeEvents operation in a HTTP client.
 */
extension EventsMessageForDescribeEvents: HTTPResponseOutputProtocol {
    public typealias BodyType = EventsMessageForDescribeEvents
    public typealias HeadersType = EventsMessageForDescribeEvents

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> EventsMessageForDescribeEvents {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeGlobalClusters operation in a HTTP client.
 */
extension GlobalClustersMessageForDescribeGlobalClusters: HTTPResponseOutputProtocol {
    public typealias BodyType = GlobalClustersMessageForDescribeGlobalClusters
    public typealias HeadersType = GlobalClustersMessageForDescribeGlobalClusters

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GlobalClustersMessageForDescribeGlobalClusters {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeOptionGroupOptions operation in a HTTP client.
 */
extension OptionGroupOptionsMessageForDescribeOptionGroupOptions: HTTPResponseOutputProtocol {
    public typealias BodyType = OptionGroupOptionsMessageForDescribeOptionGroupOptions
    public typealias HeadersType = OptionGroupOptionsMessageForDescribeOptionGroupOptions

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> OptionGroupOptionsMessageForDescribeOptionGroupOptions {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeOptionGroups operation in a HTTP client.
 */
extension OptionGroupsForDescribeOptionGroups: HTTPResponseOutputProtocol {
    public typealias BodyType = OptionGroupsForDescribeOptionGroups
    public typealias HeadersType = OptionGroupsForDescribeOptionGroups

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> OptionGroupsForDescribeOptionGroups {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeOrderableDBInstanceOptions operation in a HTTP client.
 */
extension OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions: HTTPResponseOutputProtocol {
    public typealias BodyType = OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions
    public typealias HeadersType = OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribePendingMaintenanceActions operation in a HTTP client.
 */
extension PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions: HTTPResponseOutputProtocol {
    public typealias BodyType = PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions
    public typealias HeadersType = PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeReservedDBInstances operation in a HTTP client.
 */
extension ReservedDBInstanceMessageForDescribeReservedDBInstances: HTTPResponseOutputProtocol {
    public typealias BodyType = ReservedDBInstanceMessageForDescribeReservedDBInstances
    public typealias HeadersType = ReservedDBInstanceMessageForDescribeReservedDBInstances

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ReservedDBInstanceMessageForDescribeReservedDBInstances {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeReservedDBInstancesOfferings operation in a HTTP client.
 */
extension ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings: HTTPResponseOutputProtocol {
    public typealias BodyType = ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings
    public typealias HeadersType = ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeSourceRegions operation in a HTTP client.
 */
extension SourceRegionMessageForDescribeSourceRegions: HTTPResponseOutputProtocol {
    public typealias BodyType = SourceRegionMessageForDescribeSourceRegions
    public typealias HeadersType = SourceRegionMessageForDescribeSourceRegions

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> SourceRegionMessageForDescribeSourceRegions {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeValidDBInstanceModifications operation in a HTTP client.
 */
extension DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications
    public typealias HeadersType = DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DownloadDBLogFilePortion operation in a HTTP client.
 */
extension DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion: HTTPResponseOutputProtocol {
    public typealias BodyType = DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion
    public typealias HeadersType = DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the FailoverDBCluster operation in a HTTP client.
 */
extension FailoverDBClusterResultForFailoverDBCluster: HTTPResponseOutputProtocol {
    public typealias BodyType = FailoverDBClusterResultForFailoverDBCluster
    public typealias HeadersType = FailoverDBClusterResultForFailoverDBCluster

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> FailoverDBClusterResultForFailoverDBCluster {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListTagsForResource operation in a HTTP client.
 */
extension TagListMessageForListTagsForResource: HTTPResponseOutputProtocol {
    public typealias BodyType = TagListMessageForListTagsForResource
    public typealias HeadersType = TagListMessageForListTagsForResource

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> TagListMessageForListTagsForResource {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifyCurrentDBClusterCapacity operation in a HTTP client.
 */
extension DBClusterCapacityInfoForModifyCurrentDBClusterCapacity: HTTPResponseOutputProtocol {
    public typealias BodyType = DBClusterCapacityInfoForModifyCurrentDBClusterCapacity
    public typealias HeadersType = DBClusterCapacityInfoForModifyCurrentDBClusterCapacity

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DBClusterCapacityInfoForModifyCurrentDBClusterCapacity {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifyDBCluster operation in a HTTP client.
 */
extension ModifyDBClusterResultForModifyDBCluster: HTTPResponseOutputProtocol {
    public typealias BodyType = ModifyDBClusterResultForModifyDBCluster
    public typealias HeadersType = ModifyDBClusterResultForModifyDBCluster

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ModifyDBClusterResultForModifyDBCluster {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifyDBClusterEndpoint operation in a HTTP client.
 */
extension DBClusterEndpointForModifyDBClusterEndpoint: HTTPResponseOutputProtocol {
    public typealias BodyType = DBClusterEndpointForModifyDBClusterEndpoint
    public typealias HeadersType = DBClusterEndpointForModifyDBClusterEndpoint

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DBClusterEndpointForModifyDBClusterEndpoint {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifyDBClusterParameterGroup operation in a HTTP client.
 */
extension DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup: HTTPResponseOutputProtocol {
    public typealias BodyType = DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup
    public typealias HeadersType = DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifyDBClusterSnapshotAttribute operation in a HTTP client.
 */
extension ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute: HTTPResponseOutputProtocol {
    public typealias BodyType = ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute
    public typealias HeadersType = ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifyDBInstance operation in a HTTP client.
 */
extension ModifyDBInstanceResultForModifyDBInstance: HTTPResponseOutputProtocol {
    public typealias BodyType = ModifyDBInstanceResultForModifyDBInstance
    public typealias HeadersType = ModifyDBInstanceResultForModifyDBInstance

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ModifyDBInstanceResultForModifyDBInstance {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifyDBParameterGroup operation in a HTTP client.
 */
extension DBParameterGroupNameMessageForModifyDBParameterGroup: HTTPResponseOutputProtocol {
    public typealias BodyType = DBParameterGroupNameMessageForModifyDBParameterGroup
    public typealias HeadersType = DBParameterGroupNameMessageForModifyDBParameterGroup

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DBParameterGroupNameMessageForModifyDBParameterGroup {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifyDBSnapshot operation in a HTTP client.
 */
extension ModifyDBSnapshotResultForModifyDBSnapshot: HTTPResponseOutputProtocol {
    public typealias BodyType = ModifyDBSnapshotResultForModifyDBSnapshot
    public typealias HeadersType = ModifyDBSnapshotResultForModifyDBSnapshot

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ModifyDBSnapshotResultForModifyDBSnapshot {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifyDBSnapshotAttribute operation in a HTTP client.
 */
extension ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute: HTTPResponseOutputProtocol {
    public typealias BodyType = ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute
    public typealias HeadersType = ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifyDBSubnetGroup operation in a HTTP client.
 */
extension ModifyDBSubnetGroupResultForModifyDBSubnetGroup: HTTPResponseOutputProtocol {
    public typealias BodyType = ModifyDBSubnetGroupResultForModifyDBSubnetGroup
    public typealias HeadersType = ModifyDBSubnetGroupResultForModifyDBSubnetGroup

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ModifyDBSubnetGroupResultForModifyDBSubnetGroup {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifyEventSubscription operation in a HTTP client.
 */
extension ModifyEventSubscriptionResultForModifyEventSubscription: HTTPResponseOutputProtocol {
    public typealias BodyType = ModifyEventSubscriptionResultForModifyEventSubscription
    public typealias HeadersType = ModifyEventSubscriptionResultForModifyEventSubscription

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ModifyEventSubscriptionResultForModifyEventSubscription {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifyGlobalCluster operation in a HTTP client.
 */
extension ModifyGlobalClusterResultForModifyGlobalCluster: HTTPResponseOutputProtocol {
    public typealias BodyType = ModifyGlobalClusterResultForModifyGlobalCluster
    public typealias HeadersType = ModifyGlobalClusterResultForModifyGlobalCluster

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ModifyGlobalClusterResultForModifyGlobalCluster {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ModifyOptionGroup operation in a HTTP client.
 */
extension ModifyOptionGroupResultForModifyOptionGroup: HTTPResponseOutputProtocol {
    public typealias BodyType = ModifyOptionGroupResultForModifyOptionGroup
    public typealias HeadersType = ModifyOptionGroupResultForModifyOptionGroup

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ModifyOptionGroupResultForModifyOptionGroup {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the PromoteReadReplica operation in a HTTP client.
 */
extension PromoteReadReplicaResultForPromoteReadReplica: HTTPResponseOutputProtocol {
    public typealias BodyType = PromoteReadReplicaResultForPromoteReadReplica
    public typealias HeadersType = PromoteReadReplicaResultForPromoteReadReplica

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PromoteReadReplicaResultForPromoteReadReplica {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the PromoteReadReplicaDBCluster operation in a HTTP client.
 */
extension PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster: HTTPResponseOutputProtocol {
    public typealias BodyType = PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster
    public typealias HeadersType = PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the PurchaseReservedDBInstancesOffering operation in a HTTP client.
 */
extension PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering: HTTPResponseOutputProtocol {
    public typealias BodyType = PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering
    public typealias HeadersType = PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RebootDBInstance operation in a HTTP client.
 */
extension RebootDBInstanceResultForRebootDBInstance: HTTPResponseOutputProtocol {
    public typealias BodyType = RebootDBInstanceResultForRebootDBInstance
    public typealias HeadersType = RebootDBInstanceResultForRebootDBInstance

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RebootDBInstanceResultForRebootDBInstance {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RemoveFromGlobalCluster operation in a HTTP client.
 */
extension RemoveFromGlobalClusterResultForRemoveFromGlobalCluster: HTTPResponseOutputProtocol {
    public typealias BodyType = RemoveFromGlobalClusterResultForRemoveFromGlobalCluster
    public typealias HeadersType = RemoveFromGlobalClusterResultForRemoveFromGlobalCluster

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RemoveFromGlobalClusterResultForRemoveFromGlobalCluster {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RemoveSourceIdentifierFromSubscription operation in a HTTP client.
 */
extension RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription: HTTPResponseOutputProtocol {
    public typealias BodyType = RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription
    public typealias HeadersType = RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ResetDBClusterParameterGroup operation in a HTTP client.
 */
extension DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup: HTTPResponseOutputProtocol {
    public typealias BodyType = DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup
    public typealias HeadersType = DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ResetDBParameterGroup operation in a HTTP client.
 */
extension DBParameterGroupNameMessageForResetDBParameterGroup: HTTPResponseOutputProtocol {
    public typealias BodyType = DBParameterGroupNameMessageForResetDBParameterGroup
    public typealias HeadersType = DBParameterGroupNameMessageForResetDBParameterGroup

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DBParameterGroupNameMessageForResetDBParameterGroup {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RestoreDBClusterFromS3 operation in a HTTP client.
 */
extension RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3: HTTPResponseOutputProtocol {
    public typealias BodyType = RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3
    public typealias HeadersType = RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3 {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RestoreDBClusterFromSnapshot operation in a HTTP client.
 */
extension RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot: HTTPResponseOutputProtocol {
    public typealias BodyType = RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot
    public typealias HeadersType = RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RestoreDBClusterToPointInTime operation in a HTTP client.
 */
extension RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime: HTTPResponseOutputProtocol {
    public typealias BodyType = RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime
    public typealias HeadersType = RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RestoreDBInstanceFromDBSnapshot operation in a HTTP client.
 */
extension RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot: HTTPResponseOutputProtocol {
    public typealias BodyType = RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot
    public typealias HeadersType = RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RestoreDBInstanceFromS3 operation in a HTTP client.
 */
extension RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3: HTTPResponseOutputProtocol {
    public typealias BodyType = RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3
    public typealias HeadersType = RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3 {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RestoreDBInstanceToPointInTime operation in a HTTP client.
 */
extension RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime: HTTPResponseOutputProtocol {
    public typealias BodyType = RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime
    public typealias HeadersType = RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RevokeDBSecurityGroupIngress operation in a HTTP client.
 */
extension RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress: HTTPResponseOutputProtocol {
    public typealias BodyType = RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress
    public typealias HeadersType = RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the StartDBCluster operation in a HTTP client.
 */
extension StartDBClusterResultForStartDBCluster: HTTPResponseOutputProtocol {
    public typealias BodyType = StartDBClusterResultForStartDBCluster
    public typealias HeadersType = StartDBClusterResultForStartDBCluster

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> StartDBClusterResultForStartDBCluster {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the StartDBInstance operation in a HTTP client.
 */
extension StartDBInstanceResultForStartDBInstance: HTTPResponseOutputProtocol {
    public typealias BodyType = StartDBInstanceResultForStartDBInstance
    public typealias HeadersType = StartDBInstanceResultForStartDBInstance

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> StartDBInstanceResultForStartDBInstance {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the StopDBCluster operation in a HTTP client.
 */
extension StopDBClusterResultForStopDBCluster: HTTPResponseOutputProtocol {
    public typealias BodyType = StopDBClusterResultForStopDBCluster
    public typealias HeadersType = StopDBClusterResultForStopDBCluster

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> StopDBClusterResultForStopDBCluster {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the StopDBInstance operation in a HTTP client.
 */
extension StopDBInstanceResultForStopDBInstance: HTTPResponseOutputProtocol {
    public typealias BodyType = StopDBInstanceResultForStopDBInstance
    public typealias HeadersType = StopDBInstanceResultForStopDBInstance

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> StopDBInstanceResultForStopDBInstance {
        return try bodyDecodableProvider()
    }
}
