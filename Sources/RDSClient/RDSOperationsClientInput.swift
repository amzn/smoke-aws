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
// RDSOperationsClientInput.swift
// RDSClient
//

import Foundation
import SmokeHTTPClient
import RDSModel

/**
 Type to handle the input to the AddRoleToDBCluster operation in a HTTP client.
 */
public typealias AddRoleToDBClusterOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the AddRoleToDBInstance operation in a HTTP client.
 */
public typealias AddRoleToDBInstanceOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the AddSourceIdentifierToSubscription operation in a HTTP client.
 */
public typealias AddSourceIdentifierToSubscriptionOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the AddTagsToResource operation in a HTTP client.
 */
public typealias AddTagsToResourceOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ApplyPendingMaintenanceAction operation in a HTTP client.
 */
public typealias ApplyPendingMaintenanceActionOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the AuthorizeDBSecurityGroupIngress operation in a HTTP client.
 */
public typealias AuthorizeDBSecurityGroupIngressOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the BacktrackDBCluster operation in a HTTP client.
 */
public typealias BacktrackDBClusterOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the CopyDBClusterParameterGroup operation in a HTTP client.
 */
public typealias CopyDBClusterParameterGroupOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the CopyDBClusterSnapshot operation in a HTTP client.
 */
public typealias CopyDBClusterSnapshotOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the CopyDBParameterGroup operation in a HTTP client.
 */
public typealias CopyDBParameterGroupOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the CopyDBSnapshot operation in a HTTP client.
 */
public typealias CopyDBSnapshotOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the CopyOptionGroup operation in a HTTP client.
 */
public typealias CopyOptionGroupOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the CreateDBCluster operation in a HTTP client.
 */
public typealias CreateDBClusterOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the CreateDBClusterEndpoint operation in a HTTP client.
 */
public typealias CreateDBClusterEndpointOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the CreateDBClusterParameterGroup operation in a HTTP client.
 */
public typealias CreateDBClusterParameterGroupOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the CreateDBClusterSnapshot operation in a HTTP client.
 */
public typealias CreateDBClusterSnapshotOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the CreateDBInstance operation in a HTTP client.
 */
public typealias CreateDBInstanceOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the CreateDBInstanceReadReplica operation in a HTTP client.
 */
public typealias CreateDBInstanceReadReplicaOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the CreateDBParameterGroup operation in a HTTP client.
 */
public typealias CreateDBParameterGroupOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the CreateDBSecurityGroup operation in a HTTP client.
 */
public typealias CreateDBSecurityGroupOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the CreateDBSnapshot operation in a HTTP client.
 */
public typealias CreateDBSnapshotOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the CreateDBSubnetGroup operation in a HTTP client.
 */
public typealias CreateDBSubnetGroupOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the CreateEventSubscription operation in a HTTP client.
 */
public typealias CreateEventSubscriptionOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the CreateGlobalCluster operation in a HTTP client.
 */
public typealias CreateGlobalClusterOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the CreateOptionGroup operation in a HTTP client.
 */
public typealias CreateOptionGroupOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DeleteDBCluster operation in a HTTP client.
 */
public typealias DeleteDBClusterOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DeleteDBClusterEndpoint operation in a HTTP client.
 */
public typealias DeleteDBClusterEndpointOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DeleteDBClusterParameterGroup operation in a HTTP client.
 */
public typealias DeleteDBClusterParameterGroupOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DeleteDBClusterSnapshot operation in a HTTP client.
 */
public typealias DeleteDBClusterSnapshotOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DeleteDBInstance operation in a HTTP client.
 */
public typealias DeleteDBInstanceOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DeleteDBInstanceAutomatedBackup operation in a HTTP client.
 */
public typealias DeleteDBInstanceAutomatedBackupOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DeleteDBParameterGroup operation in a HTTP client.
 */
public typealias DeleteDBParameterGroupOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DeleteDBSecurityGroup operation in a HTTP client.
 */
public typealias DeleteDBSecurityGroupOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DeleteDBSnapshot operation in a HTTP client.
 */
public typealias DeleteDBSnapshotOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DeleteDBSubnetGroup operation in a HTTP client.
 */
public typealias DeleteDBSubnetGroupOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DeleteEventSubscription operation in a HTTP client.
 */
public typealias DeleteEventSubscriptionOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DeleteGlobalCluster operation in a HTTP client.
 */
public typealias DeleteGlobalClusterOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DeleteOptionGroup operation in a HTTP client.
 */
public typealias DeleteOptionGroupOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeAccountAttributes operation in a HTTP client.
 */
public typealias DescribeAccountAttributesOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeCertificates operation in a HTTP client.
 */
public typealias DescribeCertificatesOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeDBClusterBacktracks operation in a HTTP client.
 */
public typealias DescribeDBClusterBacktracksOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeDBClusterEndpoints operation in a HTTP client.
 */
public typealias DescribeDBClusterEndpointsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeDBClusterParameterGroups operation in a HTTP client.
 */
public typealias DescribeDBClusterParameterGroupsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeDBClusterParameters operation in a HTTP client.
 */
public typealias DescribeDBClusterParametersOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeDBClusterSnapshotAttributes operation in a HTTP client.
 */
public typealias DescribeDBClusterSnapshotAttributesOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeDBClusterSnapshots operation in a HTTP client.
 */
public typealias DescribeDBClusterSnapshotsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeDBClusters operation in a HTTP client.
 */
public typealias DescribeDBClustersOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeDBEngineVersions operation in a HTTP client.
 */
public typealias DescribeDBEngineVersionsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeDBInstanceAutomatedBackups operation in a HTTP client.
 */
public typealias DescribeDBInstanceAutomatedBackupsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeDBInstances operation in a HTTP client.
 */
public typealias DescribeDBInstancesOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeDBLogFiles operation in a HTTP client.
 */
public typealias DescribeDBLogFilesOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeDBParameterGroups operation in a HTTP client.
 */
public typealias DescribeDBParameterGroupsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeDBParameters operation in a HTTP client.
 */
public typealias DescribeDBParametersOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeDBSecurityGroups operation in a HTTP client.
 */
public typealias DescribeDBSecurityGroupsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeDBSnapshotAttributes operation in a HTTP client.
 */
public typealias DescribeDBSnapshotAttributesOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeDBSnapshots operation in a HTTP client.
 */
public typealias DescribeDBSnapshotsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeDBSubnetGroups operation in a HTTP client.
 */
public typealias DescribeDBSubnetGroupsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeEngineDefaultClusterParameters operation in a HTTP client.
 */
public typealias DescribeEngineDefaultClusterParametersOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeEngineDefaultParameters operation in a HTTP client.
 */
public typealias DescribeEngineDefaultParametersOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeEventCategories operation in a HTTP client.
 */
public typealias DescribeEventCategoriesOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeEventSubscriptions operation in a HTTP client.
 */
public typealias DescribeEventSubscriptionsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeEvents operation in a HTTP client.
 */
public typealias DescribeEventsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeGlobalClusters operation in a HTTP client.
 */
public typealias DescribeGlobalClustersOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeOptionGroupOptions operation in a HTTP client.
 */
public typealias DescribeOptionGroupOptionsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeOptionGroups operation in a HTTP client.
 */
public typealias DescribeOptionGroupsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeOrderableDBInstanceOptions operation in a HTTP client.
 */
public typealias DescribeOrderableDBInstanceOptionsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribePendingMaintenanceActions operation in a HTTP client.
 */
public typealias DescribePendingMaintenanceActionsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeReservedDBInstances operation in a HTTP client.
 */
public typealias DescribeReservedDBInstancesOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeReservedDBInstancesOfferings operation in a HTTP client.
 */
public typealias DescribeReservedDBInstancesOfferingsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeSourceRegions operation in a HTTP client.
 */
public typealias DescribeSourceRegionsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeValidDBInstanceModifications operation in a HTTP client.
 */
public typealias DescribeValidDBInstanceModificationsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DownloadDBLogFilePortion operation in a HTTP client.
 */
public typealias DownloadDBLogFilePortionOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the FailoverDBCluster operation in a HTTP client.
 */
public typealias FailoverDBClusterOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ListTagsForResource operation in a HTTP client.
 */
public typealias ListTagsForResourceOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ModifyCurrentDBClusterCapacity operation in a HTTP client.
 */
public typealias ModifyCurrentDBClusterCapacityOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ModifyDBCluster operation in a HTTP client.
 */
public typealias ModifyDBClusterOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ModifyDBClusterEndpoint operation in a HTTP client.
 */
public typealias ModifyDBClusterEndpointOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ModifyDBClusterParameterGroup operation in a HTTP client.
 */
public typealias ModifyDBClusterParameterGroupOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ModifyDBClusterSnapshotAttribute operation in a HTTP client.
 */
public typealias ModifyDBClusterSnapshotAttributeOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ModifyDBInstance operation in a HTTP client.
 */
public typealias ModifyDBInstanceOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ModifyDBParameterGroup operation in a HTTP client.
 */
public typealias ModifyDBParameterGroupOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ModifyDBSnapshot operation in a HTTP client.
 */
public typealias ModifyDBSnapshotOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ModifyDBSnapshotAttribute operation in a HTTP client.
 */
public typealias ModifyDBSnapshotAttributeOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ModifyDBSubnetGroup operation in a HTTP client.
 */
public typealias ModifyDBSubnetGroupOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ModifyEventSubscription operation in a HTTP client.
 */
public typealias ModifyEventSubscriptionOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ModifyGlobalCluster operation in a HTTP client.
 */
public typealias ModifyGlobalClusterOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ModifyOptionGroup operation in a HTTP client.
 */
public typealias ModifyOptionGroupOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the PromoteReadReplica operation in a HTTP client.
 */
public typealias PromoteReadReplicaOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the PromoteReadReplicaDBCluster operation in a HTTP client.
 */
public typealias PromoteReadReplicaDBClusterOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the PurchaseReservedDBInstancesOffering operation in a HTTP client.
 */
public typealias PurchaseReservedDBInstancesOfferingOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the RebootDBInstance operation in a HTTP client.
 */
public typealias RebootDBInstanceOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the RemoveFromGlobalCluster operation in a HTTP client.
 */
public typealias RemoveFromGlobalClusterOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the RemoveRoleFromDBCluster operation in a HTTP client.
 */
public typealias RemoveRoleFromDBClusterOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the RemoveRoleFromDBInstance operation in a HTTP client.
 */
public typealias RemoveRoleFromDBInstanceOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the RemoveSourceIdentifierFromSubscription operation in a HTTP client.
 */
public typealias RemoveSourceIdentifierFromSubscriptionOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the RemoveTagsFromResource operation in a HTTP client.
 */
public typealias RemoveTagsFromResourceOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ResetDBClusterParameterGroup operation in a HTTP client.
 */
public typealias ResetDBClusterParameterGroupOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ResetDBParameterGroup operation in a HTTP client.
 */
public typealias ResetDBParameterGroupOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the RestoreDBClusterFromS3 operation in a HTTP client.
 */
public typealias RestoreDBClusterFromS3OperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the RestoreDBClusterFromSnapshot operation in a HTTP client.
 */
public typealias RestoreDBClusterFromSnapshotOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the RestoreDBClusterToPointInTime operation in a HTTP client.
 */
public typealias RestoreDBClusterToPointInTimeOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the RestoreDBInstanceFromDBSnapshot operation in a HTTP client.
 */
public typealias RestoreDBInstanceFromDBSnapshotOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the RestoreDBInstanceFromS3 operation in a HTTP client.
 */
public typealias RestoreDBInstanceFromS3OperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the RestoreDBInstanceToPointInTime operation in a HTTP client.
 */
public typealias RestoreDBInstanceToPointInTimeOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the RevokeDBSecurityGroupIngress operation in a HTTP client.
 */
public typealias RevokeDBSecurityGroupIngressOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the StartDBCluster operation in a HTTP client.
 */
public typealias StartDBClusterOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the StartDBInstance operation in a HTTP client.
 */
public typealias StartDBInstanceOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the StopDBCluster operation in a HTTP client.
 */
public typealias StopDBClusterOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the StopDBInstance operation in a HTTP client.
 */
public typealias StopDBInstanceOperationHTTPRequestInput = QueryHTTPRequestInput
