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
// RDSClientProtocol+async.swift
// RDSClient
//

import Foundation
import RDSModel

#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)

/**
 Async extensions for the RDSClientProtocol type.
 */
public extension RDSClientProtocol {

    /**
     Invokes the AddRoleToDBCluster operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AddRoleToDBClusterMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBClusterRoleAlreadyExists, dBClusterRoleQuotaExceeded, invalidDBClusterState.
     */
    func addRoleToDBCluster(input: RDSModel.AddRoleToDBClusterMessage) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try addRoleToDBClusterAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AddRoleToDBInstance operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AddRoleToDBInstanceMessage object being passed to this operation.
     - Throws: dBInstanceNotFound, dBInstanceRoleAlreadyExists, dBInstanceRoleQuotaExceeded, invalidDBInstanceState.
     */
    func addRoleToDBInstance(input: RDSModel.AddRoleToDBInstanceMessage) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try addRoleToDBInstanceAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AddSourceIdentifierToSubscription operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AddSourceIdentifierToSubscriptionMessage object being passed to this operation.
     - Returns: The AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: sourceNotFound, subscriptionNotFound.
     */
    func addSourceIdentifierToSubscription(input: RDSModel.AddSourceIdentifierToSubscriptionMessage) async throws
     -> RDSModel.AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try addSourceIdentifierToSubscriptionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AddTagsToResource operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AddTagsToResourceMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetGroupNotFound, dBSnapshotNotFound.
     */
    func addTagsToResource(input: RDSModel.AddTagsToResourceMessage) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try addTagsToResourceAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ApplyPendingMaintenanceAction operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ApplyPendingMaintenanceActionMessage object being passed to this operation.
     - Returns: The ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidDBClusterState, invalidDBInstanceState, resourceNotFound.
     */
    func applyPendingMaintenanceAction(input: RDSModel.ApplyPendingMaintenanceActionMessage) async throws
     -> RDSModel.ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try applyPendingMaintenanceActionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AuthorizeDBSecurityGroupIngress operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AuthorizeDBSecurityGroupIngressMessage object being passed to this operation.
     - Returns: The AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationAlreadyExists, authorizationQuotaExceeded, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    func authorizeDBSecurityGroupIngress(input: RDSModel.AuthorizeDBSecurityGroupIngressMessage) async throws
     -> RDSModel.AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try authorizeDBSecurityGroupIngressAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the BacktrackDBCluster operation and asynchronously returning the response.

     - Parameters:
         - input: The validated BacktrackDBClusterMessage object being passed to this operation.
     - Returns: The DBClusterBacktrackForBacktrackDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState.
     */
    func backtrackDBCluster(input: RDSModel.BacktrackDBClusterMessage) async throws
     -> RDSModel.DBClusterBacktrackForBacktrackDBCluster {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try backtrackDBClusterAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CancelExportTask operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CancelExportTaskMessage object being passed to this operation.
     - Returns: The ExportTaskForCancelExportTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: exportTaskNotFound, invalidExportTaskState.
     */
    func cancelExportTask(input: RDSModel.CancelExportTaskMessage) async throws
     -> RDSModel.ExportTaskForCancelExportTask {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try cancelExportTaskAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CopyDBClusterParameterGroup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CopyDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    func copyDBClusterParameterGroup(input: RDSModel.CopyDBClusterParameterGroupMessage) async throws
     -> RDSModel.CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try copyDBClusterParameterGroupAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CopyDBClusterSnapshot operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CopyDBClusterSnapshotMessage object being passed to this operation.
     - Returns: The CopyDBClusterSnapshotResultForCopyDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotAlreadyExists, dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, invalidDBClusterState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    func copyDBClusterSnapshot(input: RDSModel.CopyDBClusterSnapshotMessage) async throws
     -> RDSModel.CopyDBClusterSnapshotResultForCopyDBClusterSnapshot {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try copyDBClusterSnapshotAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CopyDBParameterGroup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CopyDBParameterGroupMessage object being passed to this operation.
     - Returns: The CopyDBParameterGroupResultForCopyDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    func copyDBParameterGroup(input: RDSModel.CopyDBParameterGroupMessage) async throws
     -> RDSModel.CopyDBParameterGroupResultForCopyDBParameterGroup {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try copyDBParameterGroupAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CopyDBSnapshot operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CopyDBSnapshotMessage object being passed to this operation.
     - Returns: The CopyDBSnapshotResultForCopyDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: customAvailabilityZoneNotFound, dBSnapshotAlreadyExists, dBSnapshotNotFound, invalidDBSnapshotState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    func copyDBSnapshot(input: RDSModel.CopyDBSnapshotMessage) async throws
     -> RDSModel.CopyDBSnapshotResultForCopyDBSnapshot {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try copyDBSnapshotAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CopyOptionGroup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CopyOptionGroupMessage object being passed to this operation.
     - Returns: The CopyOptionGroupResultForCopyOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: optionGroupAlreadyExists, optionGroupNotFound, optionGroupQuotaExceeded.
     */
    func copyOptionGroup(input: RDSModel.CopyOptionGroupMessage) async throws
     -> RDSModel.CopyOptionGroupResultForCopyOptionGroup {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try copyOptionGroupAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateCustomDBEngineVersion operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateCustomDBEngineVersionMessage object being passed to this operation.
     - Returns: The DBEngineVersionForCreateCustomDBEngineVersion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: customDBEngineVersionAlreadyExists, customDBEngineVersionQuotaExceeded, kMSKeyNotAccessible.
     */
    func createCustomDBEngineVersion(input: RDSModel.CreateCustomDBEngineVersionMessage) async throws
     -> RDSModel.DBEngineVersionForCreateCustomDBEngineVersion {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createCustomDBEngineVersionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateDBCluster operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateDBClusterMessage object being passed to this operation.
     - Returns: The CreateDBClusterResultForCreateDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, globalClusterNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBInstanceState, invalidDBSubnetGroupState, invalidGlobalClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    func createDBCluster(input: RDSModel.CreateDBClusterMessage) async throws
     -> RDSModel.CreateDBClusterResultForCreateDBCluster {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createDBClusterAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateDBClusterEndpoint operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateDBClusterEndpointMessage object being passed to this operation.
     - Returns: The DBClusterEndpointForCreateDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterEndpointAlreadyExists, dBClusterEndpointQuotaExceeded, dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func createDBClusterEndpoint(input: RDSModel.CreateDBClusterEndpointMessage) async throws
     -> RDSModel.DBClusterEndpointForCreateDBClusterEndpoint {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createDBClusterEndpointAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateDBClusterParameterGroup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    func createDBClusterParameterGroup(input: RDSModel.CreateDBClusterParameterGroupMessage) async throws
     -> RDSModel.CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createDBClusterParameterGroupAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateDBClusterSnapshot operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateDBClusterSnapshotMessage object being passed to this operation.
     - Returns: The CreateDBClusterSnapshotResultForCreateDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    func createDBClusterSnapshot(input: RDSModel.CreateDBClusterSnapshotMessage) async throws
     -> RDSModel.CreateDBClusterSnapshotResultForCreateDBClusterSnapshot {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createDBClusterSnapshotAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateDBInstance operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateDBInstanceMessage object being passed to this operation.
     - Returns: The CreateDBInstanceResultForCreateDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBClusterNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, networkTypeNotSupported, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func createDBInstance(input: RDSModel.CreateDBInstanceMessage) async throws
     -> RDSModel.CreateDBInstanceResultForCreateDBInstance {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createDBInstanceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateDBInstanceReadReplica operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateDBInstanceReadReplicaMessage object being passed to this operation.
     - Returns: The CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotAllowed, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSubnetGroup, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, networkTypeNotSupported, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func createDBInstanceReadReplica(input: RDSModel.CreateDBInstanceReadReplicaMessage) async throws
     -> RDSModel.CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createDBInstanceReadReplicaAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateDBParameterGroup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateDBParameterGroupMessage object being passed to this operation.
     - Returns: The CreateDBParameterGroupResultForCreateDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    func createDBParameterGroup(input: RDSModel.CreateDBParameterGroupMessage) async throws
     -> RDSModel.CreateDBParameterGroupResultForCreateDBParameterGroup {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createDBParameterGroupAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateDBProxy operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateDBProxyRequest object being passed to this operation.
     - Returns: The CreateDBProxyResponseForCreateDBProxy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyAlreadyExists, dBProxyQuotaExceeded, invalidSubnet.
     */
    func createDBProxy(input: RDSModel.CreateDBProxyRequest) async throws
     -> RDSModel.CreateDBProxyResponseForCreateDBProxy {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createDBProxyAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateDBProxyEndpoint operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateDBProxyEndpointRequest object being passed to this operation.
     - Returns: The CreateDBProxyEndpointResponseForCreateDBProxyEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyEndpointAlreadyExists, dBProxyEndpointQuotaExceeded, dBProxyNotFound, invalidDBProxyState, invalidSubnet.
     */
    func createDBProxyEndpoint(input: RDSModel.CreateDBProxyEndpointRequest) async throws
     -> RDSModel.CreateDBProxyEndpointResponseForCreateDBProxyEndpoint {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createDBProxyEndpointAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateDBSecurityGroup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateDBSecurityGroupMessage object being passed to this operation.
     - Returns: The CreateDBSecurityGroupResultForCreateDBSecurityGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSecurityGroupAlreadyExists, dBSecurityGroupNotSupported, dBSecurityGroupQuotaExceeded.
     */
    func createDBSecurityGroup(input: RDSModel.CreateDBSecurityGroupMessage) async throws
     -> RDSModel.CreateDBSecurityGroupResultForCreateDBSecurityGroup {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createDBSecurityGroupAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateDBSnapshot operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateDBSnapshotMessage object being passed to this operation.
     - Returns: The CreateDBSnapshotResultForCreateDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    func createDBSnapshot(input: RDSModel.CreateDBSnapshotMessage) async throws
     -> RDSModel.CreateDBSnapshotResultForCreateDBSnapshot {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createDBSnapshotAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateDBSubnetGroup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateDBSubnetGroupMessage object being passed to this operation.
     - Returns: The CreateDBSubnetGroupResultForCreateDBSubnetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSubnetGroupAlreadyExists, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupQuotaExceeded, dBSubnetQuotaExceeded, invalidSubnet.
     */
    func createDBSubnetGroup(input: RDSModel.CreateDBSubnetGroupMessage) async throws
     -> RDSModel.CreateDBSubnetGroupResultForCreateDBSubnetGroup {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createDBSubnetGroupAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateEventSubscription operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateEventSubscriptionMessage object being passed to this operation.
     - Returns: The CreateEventSubscriptionResultForCreateEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, sourceNotFound, subscriptionAlreadyExist, subscriptionCategoryNotFound.
     */
    func createEventSubscription(input: RDSModel.CreateEventSubscriptionMessage) async throws
     -> RDSModel.CreateEventSubscriptionResultForCreateEventSubscription {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createEventSubscriptionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateGlobalCluster operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateGlobalClusterMessage object being passed to this operation.
     - Returns: The CreateGlobalClusterResultForCreateGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, globalClusterAlreadyExists, globalClusterQuotaExceeded, invalidDBClusterState.
     */
    func createGlobalCluster(input: RDSModel.CreateGlobalClusterMessage) async throws
     -> RDSModel.CreateGlobalClusterResultForCreateGlobalCluster {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createGlobalClusterAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateOptionGroup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateOptionGroupMessage object being passed to this operation.
     - Returns: The CreateOptionGroupResultForCreateOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: optionGroupAlreadyExists, optionGroupQuotaExceeded.
     */
    func createOptionGroup(input: RDSModel.CreateOptionGroupMessage) async throws
     -> RDSModel.CreateOptionGroupResultForCreateOptionGroup {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createOptionGroupAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteCustomDBEngineVersion operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteCustomDBEngineVersionMessage object being passed to this operation.
     - Returns: The DBEngineVersionForDeleteCustomDBEngineVersion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: customDBEngineVersionNotFound, invalidCustomDBEngineVersionState.
     */
    func deleteCustomDBEngineVersion(input: RDSModel.DeleteCustomDBEngineVersionMessage) async throws
     -> RDSModel.DBEngineVersionForDeleteCustomDBEngineVersion {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteCustomDBEngineVersionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteDBCluster operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteDBClusterMessage object being passed to this operation.
     - Returns: The DeleteDBClusterResultForDeleteDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    func deleteDBCluster(input: RDSModel.DeleteDBClusterMessage) async throws
     -> RDSModel.DeleteDBClusterResultForDeleteDBCluster {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteDBClusterAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteDBClusterEndpoint operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteDBClusterEndpointMessage object being passed to this operation.
     - Returns: The DBClusterEndpointForDeleteDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterEndpointNotFound, invalidDBClusterEndpointState, invalidDBClusterState.
     */
    func deleteDBClusterEndpoint(input: RDSModel.DeleteDBClusterEndpointMessage) async throws
     -> RDSModel.DBClusterEndpointForDeleteDBClusterEndpoint {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteDBClusterEndpointAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteDBClusterParameterGroup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteDBClusterParameterGroupMessage object being passed to this operation.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func deleteDBClusterParameterGroup(input: RDSModel.DeleteDBClusterParameterGroupMessage) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteDBClusterParameterGroupAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteDBClusterSnapshot operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteDBClusterSnapshotMessage object being passed to this operation.
     - Returns: The DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState.
     */
    func deleteDBClusterSnapshot(input: RDSModel.DeleteDBClusterSnapshotMessage) async throws
     -> RDSModel.DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteDBClusterSnapshotAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteDBInstance operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteDBInstanceMessage object being passed to this operation.
     - Returns: The DeleteDBInstanceResultForDeleteDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupQuotaExceeded, dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    func deleteDBInstance(input: RDSModel.DeleteDBInstanceMessage) async throws
     -> RDSModel.DeleteDBInstanceResultForDeleteDBInstance {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteDBInstanceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteDBInstanceAutomatedBackup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteDBInstanceAutomatedBackupMessage object being passed to this operation.
     - Returns: The DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupNotFound, invalidDBInstanceAutomatedBackupState.
     */
    func deleteDBInstanceAutomatedBackup(input: RDSModel.DeleteDBInstanceAutomatedBackupMessage) async throws
     -> RDSModel.DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteDBInstanceAutomatedBackupAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteDBParameterGroup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteDBParameterGroupMessage object being passed to this operation.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func deleteDBParameterGroup(input: RDSModel.DeleteDBParameterGroupMessage) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteDBParameterGroupAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteDBProxy operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteDBProxyRequest object being passed to this operation.
     - Returns: The DeleteDBProxyResponseForDeleteDBProxy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound, invalidDBProxyState.
     */
    func deleteDBProxy(input: RDSModel.DeleteDBProxyRequest) async throws
     -> RDSModel.DeleteDBProxyResponseForDeleteDBProxy {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteDBProxyAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteDBProxyEndpoint operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteDBProxyEndpointRequest object being passed to this operation.
     - Returns: The DeleteDBProxyEndpointResponseForDeleteDBProxyEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyEndpointNotFound, invalidDBProxyEndpointState.
     */
    func deleteDBProxyEndpoint(input: RDSModel.DeleteDBProxyEndpointRequest) async throws
     -> RDSModel.DeleteDBProxyEndpointResponseForDeleteDBProxyEndpoint {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteDBProxyEndpointAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteDBSecurityGroup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteDBSecurityGroupMessage object being passed to this operation.
     - Throws: dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    func deleteDBSecurityGroup(input: RDSModel.DeleteDBSecurityGroupMessage) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteDBSecurityGroupAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteDBSnapshot operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteDBSnapshotMessage object being passed to this operation.
     - Returns: The DeleteDBSnapshotResultForDeleteDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound, invalidDBSnapshotState.
     */
    func deleteDBSnapshot(input: RDSModel.DeleteDBSnapshotMessage) async throws
     -> RDSModel.DeleteDBSnapshotResultForDeleteDBSnapshot {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteDBSnapshotAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteDBSubnetGroup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteDBSubnetGroupMessage object being passed to this operation.
     - Throws: dBSubnetGroupNotFound, invalidDBSubnetGroupState, invalidDBSubnetState.
     */
    func deleteDBSubnetGroup(input: RDSModel.DeleteDBSubnetGroupMessage) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteDBSubnetGroupAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteEventSubscription operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteEventSubscriptionMessage object being passed to this operation.
     - Returns: The DeleteEventSubscriptionResultForDeleteEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidEventSubscriptionState, subscriptionNotFound.
     */
    func deleteEventSubscription(input: RDSModel.DeleteEventSubscriptionMessage) async throws
     -> RDSModel.DeleteEventSubscriptionResultForDeleteEventSubscription {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteEventSubscriptionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteGlobalCluster operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteGlobalClusterMessage object being passed to this operation.
     - Returns: The DeleteGlobalClusterResultForDeleteGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalClusterNotFound, invalidGlobalClusterState.
     */
    func deleteGlobalCluster(input: RDSModel.DeleteGlobalClusterMessage) async throws
     -> RDSModel.DeleteGlobalClusterResultForDeleteGlobalCluster {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteGlobalClusterAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteOptionGroup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteOptionGroupMessage object being passed to this operation.
     - Throws: invalidOptionGroupState, optionGroupNotFound.
     */
    func deleteOptionGroup(input: RDSModel.DeleteOptionGroupMessage) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteOptionGroupAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeregisterDBProxyTargets operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeregisterDBProxyTargetsRequest object being passed to this operation.
     - Returns: The DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound, dBProxyTargetGroupNotFound, dBProxyTargetNotFound, invalidDBProxyState.
     */
    func deregisterDBProxyTargets(input: RDSModel.DeregisterDBProxyTargetsRequest) async throws
     -> RDSModel.DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deregisterDBProxyTargetsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeAccountAttributes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeAccountAttributesMessage object being passed to this operation.
     - Returns: The AccountAttributesMessageForDescribeAccountAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAccountAttributes(input: RDSModel.DescribeAccountAttributesMessage) async throws
     -> RDSModel.AccountAttributesMessageForDescribeAccountAttributes {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeAccountAttributesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeCertificates operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeCertificatesMessage object being passed to this operation.
     - Returns: The CertificateMessageForDescribeCertificates object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: certificateNotFound.
     */
    func describeCertificates(input: RDSModel.DescribeCertificatesMessage) async throws
     -> RDSModel.CertificateMessageForDescribeCertificates {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeCertificatesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeDBClusterBacktracks operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeDBClusterBacktracksMessage object being passed to this operation.
     - Returns: The DBClusterBacktrackMessageForDescribeDBClusterBacktracks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterBacktrackNotFound, dBClusterNotFound.
     */
    func describeDBClusterBacktracks(input: RDSModel.DescribeDBClusterBacktracksMessage) async throws
     -> RDSModel.DBClusterBacktrackMessageForDescribeDBClusterBacktracks {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeDBClusterBacktracksAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeDBClusterEndpoints operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeDBClusterEndpointsMessage object being passed to this operation.
     - Returns: The DBClusterEndpointMessageForDescribeDBClusterEndpoints object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound.
     */
    func describeDBClusterEndpoints(input: RDSModel.DescribeDBClusterEndpointsMessage) async throws
     -> RDSModel.DBClusterEndpointMessageForDescribeDBClusterEndpoints {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeDBClusterEndpointsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeDBClusterParameterGroups operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeDBClusterParameterGroupsMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    func describeDBClusterParameterGroups(input: RDSModel.DescribeDBClusterParameterGroupsMessage) async throws
     -> RDSModel.DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeDBClusterParameterGroupsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeDBClusterParameters operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeDBClusterParametersMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupDetailsForDescribeDBClusterParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    func describeDBClusterParameters(input: RDSModel.DescribeDBClusterParametersMessage) async throws
     -> RDSModel.DBClusterParameterGroupDetailsForDescribeDBClusterParameters {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeDBClusterParametersAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeDBClusterSnapshotAttributes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotAttributesMessage object being passed to this operation.
     - Returns: The DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound.
     */
    func describeDBClusterSnapshotAttributes(input: RDSModel.DescribeDBClusterSnapshotAttributesMessage) async throws
     -> RDSModel.DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeDBClusterSnapshotAttributesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeDBClusterSnapshots operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotsMessage object being passed to this operation.
     - Returns: The DBClusterSnapshotMessageForDescribeDBClusterSnapshots object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound.
     */
    func describeDBClusterSnapshots(input: RDSModel.DescribeDBClusterSnapshotsMessage) async throws
     -> RDSModel.DBClusterSnapshotMessageForDescribeDBClusterSnapshots {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeDBClusterSnapshotsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeDBClusters operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeDBClustersMessage object being passed to this operation.
     - Returns: The DBClusterMessageForDescribeDBClusters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound.
     */
    func describeDBClusters(input: RDSModel.DescribeDBClustersMessage) async throws
     -> RDSModel.DBClusterMessageForDescribeDBClusters {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeDBClustersAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeDBEngineVersions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeDBEngineVersionsMessage object being passed to this operation.
     - Returns: The DBEngineVersionMessageForDescribeDBEngineVersions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeDBEngineVersions(input: RDSModel.DescribeDBEngineVersionsMessage) async throws
     -> RDSModel.DBEngineVersionMessageForDescribeDBEngineVersions {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeDBEngineVersionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeDBInstanceAutomatedBackups operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeDBInstanceAutomatedBackupsMessage object being passed to this operation.
     - Returns: The DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupNotFound.
     */
    func describeDBInstanceAutomatedBackups(input: RDSModel.DescribeDBInstanceAutomatedBackupsMessage) async throws
     -> RDSModel.DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeDBInstanceAutomatedBackupsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeDBInstances operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeDBInstancesMessage object being passed to this operation.
     - Returns: The DBInstanceMessageForDescribeDBInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound.
     */
    func describeDBInstances(input: RDSModel.DescribeDBInstancesMessage) async throws
     -> RDSModel.DBInstanceMessageForDescribeDBInstances {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeDBInstancesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeDBLogFiles operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeDBLogFilesMessage object being passed to this operation.
     - Returns: The DescribeDBLogFilesResponseForDescribeDBLogFiles object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound.
     */
    func describeDBLogFiles(input: RDSModel.DescribeDBLogFilesMessage) async throws
     -> RDSModel.DescribeDBLogFilesResponseForDescribeDBLogFiles {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeDBLogFilesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeDBParameterGroups operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeDBParameterGroupsMessage object being passed to this operation.
     - Returns: The DBParameterGroupsMessageForDescribeDBParameterGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    func describeDBParameterGroups(input: RDSModel.DescribeDBParameterGroupsMessage) async throws
     -> RDSModel.DBParameterGroupsMessageForDescribeDBParameterGroups {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeDBParameterGroupsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeDBParameters operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeDBParametersMessage object being passed to this operation.
     - Returns: The DBParameterGroupDetailsForDescribeDBParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    func describeDBParameters(input: RDSModel.DescribeDBParametersMessage) async throws
     -> RDSModel.DBParameterGroupDetailsForDescribeDBParameters {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeDBParametersAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeDBProxies operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeDBProxiesRequest object being passed to this operation.
     - Returns: The DescribeDBProxiesResponseForDescribeDBProxies object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound.
     */
    func describeDBProxies(input: RDSModel.DescribeDBProxiesRequest) async throws
     -> RDSModel.DescribeDBProxiesResponseForDescribeDBProxies {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeDBProxiesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeDBProxyEndpoints operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeDBProxyEndpointsRequest object being passed to this operation.
     - Returns: The DescribeDBProxyEndpointsResponseForDescribeDBProxyEndpoints object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyEndpointNotFound, dBProxyNotFound.
     */
    func describeDBProxyEndpoints(input: RDSModel.DescribeDBProxyEndpointsRequest) async throws
     -> RDSModel.DescribeDBProxyEndpointsResponseForDescribeDBProxyEndpoints {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeDBProxyEndpointsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeDBProxyTargetGroups operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeDBProxyTargetGroupsRequest object being passed to this operation.
     - Returns: The DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound, dBProxyTargetGroupNotFound, invalidDBProxyState.
     */
    func describeDBProxyTargetGroups(input: RDSModel.DescribeDBProxyTargetGroupsRequest) async throws
     -> RDSModel.DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeDBProxyTargetGroupsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeDBProxyTargets operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeDBProxyTargetsRequest object being passed to this operation.
     - Returns: The DescribeDBProxyTargetsResponseForDescribeDBProxyTargets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound, dBProxyTargetGroupNotFound, dBProxyTargetNotFound, invalidDBProxyState.
     */
    func describeDBProxyTargets(input: RDSModel.DescribeDBProxyTargetsRequest) async throws
     -> RDSModel.DescribeDBProxyTargetsResponseForDescribeDBProxyTargets {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeDBProxyTargetsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeDBSecurityGroups operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeDBSecurityGroupsMessage object being passed to this operation.
     - Returns: The DBSecurityGroupMessageForDescribeDBSecurityGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSecurityGroupNotFound.
     */
    func describeDBSecurityGroups(input: RDSModel.DescribeDBSecurityGroupsMessage) async throws
     -> RDSModel.DBSecurityGroupMessageForDescribeDBSecurityGroups {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeDBSecurityGroupsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeDBSnapshotAttributes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeDBSnapshotAttributesMessage object being passed to this operation.
     - Returns: The DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound.
     */
    func describeDBSnapshotAttributes(input: RDSModel.DescribeDBSnapshotAttributesMessage) async throws
     -> RDSModel.DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeDBSnapshotAttributesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeDBSnapshots operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeDBSnapshotsMessage object being passed to this operation.
     - Returns: The DBSnapshotMessageForDescribeDBSnapshots object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound.
     */
    func describeDBSnapshots(input: RDSModel.DescribeDBSnapshotsMessage) async throws
     -> RDSModel.DBSnapshotMessageForDescribeDBSnapshots {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeDBSnapshotsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeDBSubnetGroups operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeDBSubnetGroupsMessage object being passed to this operation.
     - Returns: The DBSubnetGroupMessageForDescribeDBSubnetGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSubnetGroupNotFound.
     */
    func describeDBSubnetGroups(input: RDSModel.DescribeDBSubnetGroupsMessage) async throws
     -> RDSModel.DBSubnetGroupMessageForDescribeDBSubnetGroups {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeDBSubnetGroupsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeEngineDefaultClusterParameters operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeEngineDefaultClusterParametersMessage object being passed to this operation.
     - Returns: The DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEngineDefaultClusterParameters(input: RDSModel.DescribeEngineDefaultClusterParametersMessage) async throws
     -> RDSModel.DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeEngineDefaultClusterParametersAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeEngineDefaultParameters operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeEngineDefaultParametersMessage object being passed to this operation.
     - Returns: The DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEngineDefaultParameters(input: RDSModel.DescribeEngineDefaultParametersMessage) async throws
     -> RDSModel.DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeEngineDefaultParametersAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeEventCategories operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeEventCategoriesMessage object being passed to this operation.
     - Returns: The EventCategoriesMessageForDescribeEventCategories object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEventCategories(input: RDSModel.DescribeEventCategoriesMessage) async throws
     -> RDSModel.EventCategoriesMessageForDescribeEventCategories {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeEventCategoriesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeEventSubscriptions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeEventSubscriptionsMessage object being passed to this operation.
     - Returns: The EventSubscriptionsMessageForDescribeEventSubscriptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: subscriptionNotFound.
     */
    func describeEventSubscriptions(input: RDSModel.DescribeEventSubscriptionsMessage) async throws
     -> RDSModel.EventSubscriptionsMessageForDescribeEventSubscriptions {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeEventSubscriptionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeEvents operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeEventsMessage object being passed to this operation.
     - Returns: The EventsMessageForDescribeEvents object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEvents(input: RDSModel.DescribeEventsMessage) async throws
     -> RDSModel.EventsMessageForDescribeEvents {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeEventsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeExportTasks operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeExportTasksMessage object being passed to this operation.
     - Returns: The ExportTasksMessageForDescribeExportTasks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: exportTaskNotFound.
     */
    func describeExportTasks(input: RDSModel.DescribeExportTasksMessage) async throws
     -> RDSModel.ExportTasksMessageForDescribeExportTasks {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeExportTasksAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeGlobalClusters operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeGlobalClustersMessage object being passed to this operation.
     - Returns: The GlobalClustersMessageForDescribeGlobalClusters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalClusterNotFound.
     */
    func describeGlobalClusters(input: RDSModel.DescribeGlobalClustersMessage) async throws
     -> RDSModel.GlobalClustersMessageForDescribeGlobalClusters {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeGlobalClustersAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeOptionGroupOptions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeOptionGroupOptionsMessage object being passed to this operation.
     - Returns: The OptionGroupOptionsMessageForDescribeOptionGroupOptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeOptionGroupOptions(input: RDSModel.DescribeOptionGroupOptionsMessage) async throws
     -> RDSModel.OptionGroupOptionsMessageForDescribeOptionGroupOptions {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeOptionGroupOptionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeOptionGroups operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeOptionGroupsMessage object being passed to this operation.
     - Returns: The OptionGroupsForDescribeOptionGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: optionGroupNotFound.
     */
    func describeOptionGroups(input: RDSModel.DescribeOptionGroupsMessage) async throws
     -> RDSModel.OptionGroupsForDescribeOptionGroups {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeOptionGroupsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeOrderableDBInstanceOptions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeOrderableDBInstanceOptionsMessage object being passed to this operation.
     - Returns: The OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeOrderableDBInstanceOptions(input: RDSModel.DescribeOrderableDBInstanceOptionsMessage) async throws
     -> RDSModel.OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeOrderableDBInstanceOptionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribePendingMaintenanceActions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribePendingMaintenanceActionsMessage object being passed to this operation.
     - Returns: The PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: resourceNotFound.
     */
    func describePendingMaintenanceActions(input: RDSModel.DescribePendingMaintenanceActionsMessage) async throws
     -> RDSModel.PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describePendingMaintenanceActionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeReservedDBInstances operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesMessage object being passed to this operation.
     - Returns: The ReservedDBInstanceMessageForDescribeReservedDBInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: reservedDBInstanceNotFound.
     */
    func describeReservedDBInstances(input: RDSModel.DescribeReservedDBInstancesMessage) async throws
     -> RDSModel.ReservedDBInstanceMessageForDescribeReservedDBInstances {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeReservedDBInstancesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeReservedDBInstancesOfferings operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesOfferingsMessage object being passed to this operation.
     - Returns: The ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: reservedDBInstancesOfferingNotFound.
     */
    func describeReservedDBInstancesOfferings(input: RDSModel.DescribeReservedDBInstancesOfferingsMessage) async throws
     -> RDSModel.ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeReservedDBInstancesOfferingsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeSourceRegions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeSourceRegionsMessage object being passed to this operation.
     - Returns: The SourceRegionMessageForDescribeSourceRegions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSourceRegions(input: RDSModel.DescribeSourceRegionsMessage) async throws
     -> RDSModel.SourceRegionMessageForDescribeSourceRegions {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeSourceRegionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeValidDBInstanceModifications operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeValidDBInstanceModificationsMessage object being passed to this operation.
     - Returns: The DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    func describeValidDBInstanceModifications(input: RDSModel.DescribeValidDBInstanceModificationsMessage) async throws
     -> RDSModel.DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeValidDBInstanceModificationsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DownloadDBLogFilePortion operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DownloadDBLogFilePortionMessage object being passed to this operation.
     - Returns: The DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, dBLogFileNotFound.
     */
    func downloadDBLogFilePortion(input: RDSModel.DownloadDBLogFilePortionMessage) async throws
     -> RDSModel.DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try downloadDBLogFilePortionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the FailoverDBCluster operation and asynchronously returning the response.

     - Parameters:
         - input: The validated FailoverDBClusterMessage object being passed to this operation.
     - Returns: The FailoverDBClusterResultForFailoverDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func failoverDBCluster(input: RDSModel.FailoverDBClusterMessage) async throws
     -> RDSModel.FailoverDBClusterResultForFailoverDBCluster {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try failoverDBClusterAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the FailoverGlobalCluster operation and asynchronously returning the response.

     - Parameters:
         - input: The validated FailoverGlobalClusterMessage object being passed to this operation.
     - Returns: The FailoverGlobalClusterResultForFailoverGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, globalClusterNotFound, invalidDBClusterState, invalidGlobalClusterState.
     */
    func failoverGlobalCluster(input: RDSModel.FailoverGlobalClusterMessage) async throws
     -> RDSModel.FailoverGlobalClusterResultForFailoverGlobalCluster {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try failoverGlobalClusterAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListTagsForResource operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListTagsForResourceMessage object being passed to this operation.
     - Returns: The TagListMessageForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetGroupNotFound, dBSnapshotNotFound.
     */
    func listTagsForResource(input: RDSModel.ListTagsForResourceMessage) async throws
     -> RDSModel.TagListMessageForListTagsForResource {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listTagsForResourceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyCertificates operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyCertificatesMessage object being passed to this operation.
     - Returns: The ModifyCertificatesResultForModifyCertificates object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: certificateNotFound.
     */
    func modifyCertificates(input: RDSModel.ModifyCertificatesMessage) async throws
     -> RDSModel.ModifyCertificatesResultForModifyCertificates {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try modifyCertificatesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyCurrentDBClusterCapacity operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyCurrentDBClusterCapacityMessage object being passed to this operation.
     - Returns: The DBClusterCapacityInfoForModifyCurrentDBClusterCapacity object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterCapacity, invalidDBClusterState.
     */
    func modifyCurrentDBClusterCapacity(input: RDSModel.ModifyCurrentDBClusterCapacityMessage) async throws
     -> RDSModel.DBClusterCapacityInfoForModifyCurrentDBClusterCapacity {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try modifyCurrentDBClusterCapacityAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyCustomDBEngineVersion operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyCustomDBEngineVersionMessage object being passed to this operation.
     - Returns: The DBEngineVersionForModifyCustomDBEngineVersion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: customDBEngineVersionNotFound, invalidCustomDBEngineVersionState.
     */
    func modifyCustomDBEngineVersion(input: RDSModel.ModifyCustomDBEngineVersionMessage) async throws
     -> RDSModel.DBEngineVersionForModifyCustomDBEngineVersion {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try modifyCustomDBEngineVersionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyDBCluster operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyDBClusterMessage object being passed to this operation.
     - Returns: The ModifyDBClusterResultForModifyDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBSubnetGroupNotFound, domainNotFound, invalidDBClusterState, invalidDBInstanceState, invalidDBSecurityGroupState, invalidDBSubnetGroupState, invalidSubnet, invalidVPCNetworkState, storageQuotaExceeded.
     */
    func modifyDBCluster(input: RDSModel.ModifyDBClusterMessage) async throws
     -> RDSModel.ModifyDBClusterResultForModifyDBCluster {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try modifyDBClusterAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyDBClusterEndpoint operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyDBClusterEndpointMessage object being passed to this operation.
     - Returns: The DBClusterEndpointForModifyDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterEndpointNotFound, dBInstanceNotFound, invalidDBClusterEndpointState, invalidDBClusterState, invalidDBInstanceState.
     */
    func modifyDBClusterEndpoint(input: RDSModel.ModifyDBClusterEndpointMessage) async throws
     -> RDSModel.DBClusterEndpointForModifyDBClusterEndpoint {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try modifyDBClusterEndpointAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyDBClusterParameterGroup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func modifyDBClusterParameterGroup(input: RDSModel.ModifyDBClusterParameterGroupMessage) async throws
     -> RDSModel.DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try modifyDBClusterParameterGroupAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyDBClusterSnapshotAttribute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyDBClusterSnapshotAttributeMessage object being passed to this operation.
     - Returns: The ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, sharedSnapshotQuotaExceeded.
     */
    func modifyDBClusterSnapshotAttribute(input: RDSModel.ModifyDBClusterSnapshotAttributeMessage) async throws
     -> RDSModel.ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try modifyDBClusterSnapshotAttributeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyDBInstance operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyDBInstanceMessage object being passed to this operation.
     - Returns: The ModifyDBInstanceResultForModifyDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, certificateNotFound, dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBUpgradeDependencyFailure, domainNotFound, insufficientDBInstanceCapacity, invalidDBClusterState, invalidDBInstanceState, invalidDBSecurityGroupState, invalidVPCNetworkState, kMSKeyNotAccessible, networkTypeNotSupported, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func modifyDBInstance(input: RDSModel.ModifyDBInstanceMessage) async throws
     -> RDSModel.ModifyDBInstanceResultForModifyDBInstance {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try modifyDBInstanceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyDBParameterGroup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyDBParameterGroupMessage object being passed to this operation.
     - Returns: The DBParameterGroupNameMessageForModifyDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func modifyDBParameterGroup(input: RDSModel.ModifyDBParameterGroupMessage) async throws
     -> RDSModel.DBParameterGroupNameMessageForModifyDBParameterGroup {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try modifyDBParameterGroupAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyDBProxy operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyDBProxyRequest object being passed to this operation.
     - Returns: The ModifyDBProxyResponseForModifyDBProxy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyAlreadyExists, dBProxyNotFound, invalidDBProxyState.
     */
    func modifyDBProxy(input: RDSModel.ModifyDBProxyRequest) async throws
     -> RDSModel.ModifyDBProxyResponseForModifyDBProxy {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try modifyDBProxyAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyDBProxyEndpoint operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyDBProxyEndpointRequest object being passed to this operation.
     - Returns: The ModifyDBProxyEndpointResponseForModifyDBProxyEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyEndpointAlreadyExists, dBProxyEndpointNotFound, invalidDBProxyEndpointState, invalidDBProxyState.
     */
    func modifyDBProxyEndpoint(input: RDSModel.ModifyDBProxyEndpointRequest) async throws
     -> RDSModel.ModifyDBProxyEndpointResponseForModifyDBProxyEndpoint {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try modifyDBProxyEndpointAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyDBProxyTargetGroup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyDBProxyTargetGroupRequest object being passed to this operation.
     - Returns: The ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound, dBProxyTargetGroupNotFound, invalidDBProxyState.
     */
    func modifyDBProxyTargetGroup(input: RDSModel.ModifyDBProxyTargetGroupRequest) async throws
     -> RDSModel.ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try modifyDBProxyTargetGroupAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyDBSnapshot operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyDBSnapshotMessage object being passed to this operation.
     - Returns: The ModifyDBSnapshotResultForModifyDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound.
     */
    func modifyDBSnapshot(input: RDSModel.ModifyDBSnapshotMessage) async throws
     -> RDSModel.ModifyDBSnapshotResultForModifyDBSnapshot {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try modifyDBSnapshotAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyDBSnapshotAttribute operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyDBSnapshotAttributeMessage object being passed to this operation.
     - Returns: The ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound, invalidDBSnapshotState, sharedSnapshotQuotaExceeded.
     */
    func modifyDBSnapshotAttribute(input: RDSModel.ModifyDBSnapshotAttributeMessage) async throws
     -> RDSModel.ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try modifyDBSnapshotAttributeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyDBSubnetGroup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyDBSubnetGroupMessage object being passed to this operation.
     - Returns: The ModifyDBSubnetGroupResultForModifyDBSubnetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, dBSubnetQuotaExceeded, invalidSubnet, subnetAlreadyInUse.
     */
    func modifyDBSubnetGroup(input: RDSModel.ModifyDBSubnetGroupMessage) async throws
     -> RDSModel.ModifyDBSubnetGroupResultForModifyDBSubnetGroup {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try modifyDBSubnetGroupAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyEventSubscription operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyEventSubscriptionMessage object being passed to this operation.
     - Returns: The ModifyEventSubscriptionResultForModifyEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, subscriptionCategoryNotFound, subscriptionNotFound.
     */
    func modifyEventSubscription(input: RDSModel.ModifyEventSubscriptionMessage) async throws
     -> RDSModel.ModifyEventSubscriptionResultForModifyEventSubscription {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try modifyEventSubscriptionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyGlobalCluster operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyGlobalClusterMessage object being passed to this operation.
     - Returns: The ModifyGlobalClusterResultForModifyGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalClusterNotFound, invalidDBClusterState, invalidDBInstanceState, invalidGlobalClusterState.
     */
    func modifyGlobalCluster(input: RDSModel.ModifyGlobalClusterMessage) async throws
     -> RDSModel.ModifyGlobalClusterResultForModifyGlobalCluster {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try modifyGlobalClusterAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ModifyOptionGroup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ModifyOptionGroupMessage object being passed to this operation.
     - Returns: The ModifyOptionGroupResultForModifyOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOptionGroupState, optionGroupNotFound.
     */
    func modifyOptionGroup(input: RDSModel.ModifyOptionGroupMessage) async throws
     -> RDSModel.ModifyOptionGroupResultForModifyOptionGroup {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try modifyOptionGroupAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PromoteReadReplica operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PromoteReadReplicaMessage object being passed to this operation.
     - Returns: The PromoteReadReplicaResultForPromoteReadReplica object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    func promoteReadReplica(input: RDSModel.PromoteReadReplicaMessage) async throws
     -> RDSModel.PromoteReadReplicaResultForPromoteReadReplica {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try promoteReadReplicaAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PromoteReadReplicaDBCluster operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PromoteReadReplicaDBClusterMessage object being passed to this operation.
     - Returns: The PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState.
     */
    func promoteReadReplicaDBCluster(input: RDSModel.PromoteReadReplicaDBClusterMessage) async throws
     -> RDSModel.PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try promoteReadReplicaDBClusterAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PurchaseReservedDBInstancesOffering operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PurchaseReservedDBInstancesOfferingMessage object being passed to this operation.
     - Returns: The PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: reservedDBInstanceAlreadyExists, reservedDBInstanceQuotaExceeded, reservedDBInstancesOfferingNotFound.
     */
    func purchaseReservedDBInstancesOffering(input: RDSModel.PurchaseReservedDBInstancesOfferingMessage) async throws
     -> RDSModel.PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try purchaseReservedDBInstancesOfferingAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RebootDBCluster operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RebootDBClusterMessage object being passed to this operation.
     - Returns: The RebootDBClusterResultForRebootDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func rebootDBCluster(input: RDSModel.RebootDBClusterMessage) async throws
     -> RDSModel.RebootDBClusterResultForRebootDBCluster {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try rebootDBClusterAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RebootDBInstance operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RebootDBInstanceMessage object being passed to this operation.
     - Returns: The RebootDBInstanceResultForRebootDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    func rebootDBInstance(input: RDSModel.RebootDBInstanceMessage) async throws
     -> RDSModel.RebootDBInstanceResultForRebootDBInstance {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try rebootDBInstanceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RegisterDBProxyTargets operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RegisterDBProxyTargetsRequest object being passed to this operation.
     - Returns: The RegisterDBProxyTargetsResponseForRegisterDBProxyTargets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetAlreadyRegistered, dBProxyTargetGroupNotFound, insufficientAvailableIPsInSubnet, invalidDBClusterState, invalidDBInstanceState, invalidDBProxyState.
     */
    func registerDBProxyTargets(input: RDSModel.RegisterDBProxyTargetsRequest) async throws
     -> RDSModel.RegisterDBProxyTargetsResponseForRegisterDBProxyTargets {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try registerDBProxyTargetsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RemoveFromGlobalCluster operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RemoveFromGlobalClusterMessage object being passed to this operation.
     - Returns: The RemoveFromGlobalClusterResultForRemoveFromGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, globalClusterNotFound, invalidGlobalClusterState.
     */
    func removeFromGlobalCluster(input: RDSModel.RemoveFromGlobalClusterMessage) async throws
     -> RDSModel.RemoveFromGlobalClusterResultForRemoveFromGlobalCluster {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try removeFromGlobalClusterAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RemoveRoleFromDBCluster operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RemoveRoleFromDBClusterMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBClusterRoleNotFound, invalidDBClusterState.
     */
    func removeRoleFromDBCluster(input: RDSModel.RemoveRoleFromDBClusterMessage) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try removeRoleFromDBClusterAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RemoveRoleFromDBInstance operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RemoveRoleFromDBInstanceMessage object being passed to this operation.
     - Throws: dBInstanceNotFound, dBInstanceRoleNotFound, invalidDBInstanceState.
     */
    func removeRoleFromDBInstance(input: RDSModel.RemoveRoleFromDBInstanceMessage) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try removeRoleFromDBInstanceAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RemoveSourceIdentifierFromSubscription operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RemoveSourceIdentifierFromSubscriptionMessage object being passed to this operation.
     - Returns: The RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: sourceNotFound, subscriptionNotFound.
     */
    func removeSourceIdentifierFromSubscription(input: RDSModel.RemoveSourceIdentifierFromSubscriptionMessage) async throws
     -> RDSModel.RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try removeSourceIdentifierFromSubscriptionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RemoveTagsFromResource operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RemoveTagsFromResourceMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetGroupNotFound, dBSnapshotNotFound.
     */
    func removeTagsFromResource(input: RDSModel.RemoveTagsFromResourceMessage) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try removeTagsFromResourceAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ResetDBClusterParameterGroup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ResetDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func resetDBClusterParameterGroup(input: RDSModel.ResetDBClusterParameterGroupMessage) async throws
     -> RDSModel.DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try resetDBClusterParameterGroupAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ResetDBParameterGroup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ResetDBParameterGroupMessage object being passed to this operation.
     - Returns: The DBParameterGroupNameMessageForResetDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func resetDBParameterGroup(input: RDSModel.ResetDBParameterGroupMessage) async throws
     -> RDSModel.DBParameterGroupNameMessageForResetDBParameterGroup {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try resetDBParameterGroupAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RestoreDBClusterFromS3 operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RestoreDBClusterFromS3Message object being passed to this operation.
     - Returns: The RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3 object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBSubnetGroupNotFound, domainNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBSubnetGroupState, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    func restoreDBClusterFromS3(input: RDSModel.RestoreDBClusterFromS3Message) async throws
     -> RDSModel.RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3 {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try restoreDBClusterFromS3Async(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RestoreDBClusterFromSnapshot operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RestoreDBClusterFromSnapshotMessage object being passed to this operation.
     - Returns: The RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSnapshotNotFound, dBSubnetGroupNotFound, dBSubnetGroupNotFound, domainNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded, storageQuotaExceeded.
     */
    func restoreDBClusterFromSnapshot(input: RDSModel.RestoreDBClusterFromSnapshotMessage) async throws
     -> RDSModel.RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try restoreDBClusterFromSnapshotAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RestoreDBClusterToPointInTime operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RestoreDBClusterToPointInTimeMessage object being passed to this operation.
     - Returns: The RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSubnetGroupNotFound, domainNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBClusterState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded.
     */
    func restoreDBClusterToPointInTime(input: RDSModel.RestoreDBClusterToPointInTimeMessage) async throws
     -> RDSModel.RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try restoreDBClusterToPointInTimeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RestoreDBInstanceFromDBSnapshot operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RestoreDBInstanceFromDBSnapshotMessage object being passed to this operation.
     - Returns: The RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSnapshotNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, networkTypeNotSupported, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func restoreDBInstanceFromDBSnapshot(input: RDSModel.RestoreDBInstanceFromDBSnapshotMessage) async throws
     -> RDSModel.RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try restoreDBInstanceFromDBSnapshotAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RestoreDBInstanceFromS3 operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RestoreDBInstanceFromS3Message object being passed to this operation.
     - Returns: The RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3 object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, networkTypeNotSupported, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func restoreDBInstanceFromS3(input: RDSModel.RestoreDBInstanceFromS3Message) async throws
     -> RDSModel.RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3 {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try restoreDBInstanceFromS3Async(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RestoreDBInstanceToPointInTime operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RestoreDBInstanceToPointInTimeMessage object being passed to this operation.
     - Returns: The RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBInstanceAutomatedBackupNotFound, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, networkTypeNotSupported, optionGroupNotFound, pointInTimeRestoreNotEnabled, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func restoreDBInstanceToPointInTime(input: RDSModel.RestoreDBInstanceToPointInTimeMessage) async throws
     -> RDSModel.RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try restoreDBInstanceToPointInTimeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RevokeDBSecurityGroupIngress operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RevokeDBSecurityGroupIngressMessage object being passed to this operation.
     - Returns: The RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    func revokeDBSecurityGroupIngress(input: RDSModel.RevokeDBSecurityGroupIngressMessage) async throws
     -> RDSModel.RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try revokeDBSecurityGroupIngressAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the StartActivityStream operation and asynchronously returning the response.

     - Parameters:
         - input: The validated StartActivityStreamRequest object being passed to this operation.
     - Returns: The StartActivityStreamResponseForStartActivityStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState, kMSKeyNotAccessible, resourceNotFound.
     */
    func startActivityStream(input: RDSModel.StartActivityStreamRequest) async throws
     -> RDSModel.StartActivityStreamResponseForStartActivityStream {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try startActivityStreamAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the StartDBCluster operation and asynchronously returning the response.

     - Parameters:
         - input: The validated StartDBClusterMessage object being passed to this operation.
     - Returns: The StartDBClusterResultForStartDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func startDBCluster(input: RDSModel.StartDBClusterMessage) async throws
     -> RDSModel.StartDBClusterResultForStartDBCluster {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try startDBClusterAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the StartDBInstance operation and asynchronously returning the response.

     - Parameters:
         - input: The validated StartDBInstanceMessage object being passed to this operation.
     - Returns: The StartDBInstanceResultForStartDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, dBClusterNotFound, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, insufficientDBInstanceCapacity, invalidDBClusterState, invalidDBInstanceState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible.
     */
    func startDBInstance(input: RDSModel.StartDBInstanceMessage) async throws
     -> RDSModel.StartDBInstanceResultForStartDBInstance {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try startDBInstanceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the StartDBInstanceAutomatedBackupsReplication operation and asynchronously returning the response.

     - Parameters:
         - input: The validated StartDBInstanceAutomatedBackupsReplicationMessage object being passed to this operation.
     - Returns: The StartDBInstanceAutomatedBackupsReplicationResultForStartDBInstanceAutomatedBackupsReplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupQuotaExceeded, dBInstanceNotFound, invalidDBInstanceState, kMSKeyNotAccessible, storageTypeNotSupported.
     */
    func startDBInstanceAutomatedBackupsReplication(input: RDSModel.StartDBInstanceAutomatedBackupsReplicationMessage) async throws
     -> RDSModel.StartDBInstanceAutomatedBackupsReplicationResultForStartDBInstanceAutomatedBackupsReplication {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try startDBInstanceAutomatedBackupsReplicationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the StartExportTask operation and asynchronously returning the response.

     - Parameters:
         - input: The validated StartExportTaskMessage object being passed to this operation.
     - Returns: The ExportTaskForStartExportTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound, dBSnapshotNotFound, exportTaskAlreadyExists, iamRoleMissingPermissions, iamRoleNotFound, invalidExportOnly, invalidExportSourceState, invalidS3Bucket, kMSKeyNotAccessible.
     */
    func startExportTask(input: RDSModel.StartExportTaskMessage) async throws
     -> RDSModel.ExportTaskForStartExportTask {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try startExportTaskAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the StopActivityStream operation and asynchronously returning the response.

     - Parameters:
         - input: The validated StopActivityStreamRequest object being passed to this operation.
     - Returns: The StopActivityStreamResponseForStopActivityStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState, resourceNotFound.
     */
    func stopActivityStream(input: RDSModel.StopActivityStreamRequest) async throws
     -> RDSModel.StopActivityStreamResponseForStopActivityStream {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try stopActivityStreamAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the StopDBCluster operation and asynchronously returning the response.

     - Parameters:
         - input: The validated StopDBClusterMessage object being passed to this operation.
     - Returns: The StopDBClusterResultForStopDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func stopDBCluster(input: RDSModel.StopDBClusterMessage) async throws
     -> RDSModel.StopDBClusterResultForStopDBCluster {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try stopDBClusterAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the StopDBInstance operation and asynchronously returning the response.

     - Parameters:
         - input: The validated StopDBInstanceMessage object being passed to this operation.
     - Returns: The StopDBInstanceResultForStopDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    func stopDBInstance(input: RDSModel.StopDBInstanceMessage) async throws
     -> RDSModel.StopDBInstanceResultForStopDBInstance {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try stopDBInstanceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the StopDBInstanceAutomatedBackupsReplication operation and asynchronously returning the response.

     - Parameters:
         - input: The validated StopDBInstanceAutomatedBackupsReplicationMessage object being passed to this operation.
     - Returns: The StopDBInstanceAutomatedBackupsReplicationResultForStopDBInstanceAutomatedBackupsReplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    func stopDBInstanceAutomatedBackupsReplication(input: RDSModel.StopDBInstanceAutomatedBackupsReplicationMessage) async throws
     -> RDSModel.StopDBInstanceAutomatedBackupsReplicationResultForStopDBInstanceAutomatedBackupsReplication {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try stopDBInstanceAutomatedBackupsReplicationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }
}

#endif
