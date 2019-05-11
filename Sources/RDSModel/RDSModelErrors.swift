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
// RDSModelErrors.swift
// RDSModel
//

import Foundation
import LoggerAPI

private let authorizationAlreadyExistsIdentity = "AuthorizationAlreadyExists"
private let authorizationNotFoundIdentity = "AuthorizationNotFound"
private let authorizationQuotaExceededIdentity = "AuthorizationQuotaExceeded"
private let backupPolicyNotFoundIdentity = "BackupPolicyNotFoundFault"
private let certificateNotFoundIdentity = "CertificateNotFound"
private let dBClusterAlreadyExistsIdentity = "DBClusterAlreadyExistsFault"
private let dBClusterBacktrackNotFoundIdentity = "DBClusterBacktrackNotFoundFault"
private let dBClusterEndpointAlreadyExistsIdentity = "DBClusterEndpointAlreadyExistsFault"
private let dBClusterEndpointNotFoundIdentity = "DBClusterEndpointNotFoundFault"
private let dBClusterEndpointQuotaExceededIdentity = "DBClusterEndpointQuotaExceededFault"
private let dBClusterNotFoundIdentity = "DBClusterNotFoundFault"
private let dBClusterParameterGroupNotFoundIdentity = "DBClusterParameterGroupNotFound"
private let dBClusterQuotaExceededIdentity = "DBClusterQuotaExceededFault"
private let dBClusterRoleAlreadyExistsIdentity = "DBClusterRoleAlreadyExists"
private let dBClusterRoleNotFoundIdentity = "DBClusterRoleNotFound"
private let dBClusterRoleQuotaExceededIdentity = "DBClusterRoleQuotaExceeded"
private let dBClusterSnapshotAlreadyExistsIdentity = "DBClusterSnapshotAlreadyExistsFault"
private let dBClusterSnapshotNotFoundIdentity = "DBClusterSnapshotNotFoundFault"
private let dBInstanceAlreadyExistsIdentity = "DBInstanceAlreadyExists"
private let dBInstanceAutomatedBackupNotFoundIdentity = "DBInstanceAutomatedBackupNotFound"
private let dBInstanceAutomatedBackupQuotaExceededIdentity = "DBInstanceAutomatedBackupQuotaExceeded"
private let dBInstanceNotFoundIdentity = "DBInstanceNotFound"
private let dBInstanceRoleAlreadyExistsIdentity = "DBInstanceRoleAlreadyExists"
private let dBInstanceRoleNotFoundIdentity = "DBInstanceRoleNotFound"
private let dBInstanceRoleQuotaExceededIdentity = "DBInstanceRoleQuotaExceeded"
private let dBLogFileNotFoundIdentity = "DBLogFileNotFoundFault"
private let dBParameterGroupAlreadyExistsIdentity = "DBParameterGroupAlreadyExists"
private let dBParameterGroupNotFoundIdentity = "DBParameterGroupNotFound"
private let dBParameterGroupQuotaExceededIdentity = "DBParameterGroupQuotaExceeded"
private let dBSecurityGroupAlreadyExistsIdentity = "DBSecurityGroupAlreadyExists"
private let dBSecurityGroupNotFoundIdentity = "DBSecurityGroupNotFound"
private let dBSecurityGroupNotSupportedIdentity = "DBSecurityGroupNotSupported"
private let dBSecurityGroupQuotaExceededIdentity = "QuotaExceeded.DBSecurityGroup"
private let dBSnapshotAlreadyExistsIdentity = "DBSnapshotAlreadyExists"
private let dBSnapshotNotFoundIdentity = "DBSnapshotNotFound"
private let dBSubnetGroupAlreadyExistsIdentity = "DBSubnetGroupAlreadyExists"
private let dBSubnetGroupDoesNotCoverEnoughAZsIdentity = "DBSubnetGroupDoesNotCoverEnoughAZs"
private let dBSubnetGroupNotAllowedIdentity = "DBSubnetGroupNotAllowedFault"
private let dBSubnetGroupNotFoundIdentity = "DBSubnetGroupNotFoundFault"
private let dBSubnetGroupQuotaExceededIdentity = "DBSubnetGroupQuotaExceeded"
private let dBSubnetQuotaExceededIdentity = "DBSubnetQuotaExceededFault"
private let dBUpgradeDependencyFailureIdentity = "DBUpgradeDependencyFailure"
private let domainNotFoundIdentity = "DomainNotFoundFault"
private let eventSubscriptionQuotaExceededIdentity = "EventSubscriptionQuotaExceeded"
private let globalClusterAlreadyExistsIdentity = "GlobalClusterAlreadyExistsFault"
private let globalClusterNotFoundIdentity = "GlobalClusterNotFoundFault"
private let globalClusterQuotaExceededIdentity = "GlobalClusterQuotaExceededFault"
private let instanceQuotaExceededIdentity = "InstanceQuotaExceeded"
private let insufficientDBClusterCapacityIdentity = "InsufficientDBClusterCapacityFault"
private let insufficientDBInstanceCapacityIdentity = "InsufficientDBInstanceCapacity"
private let insufficientStorageClusterCapacityIdentity = "InsufficientStorageClusterCapacity"
private let invalidDBClusterCapacityIdentity = "InvalidDBClusterCapacityFault"
private let invalidDBClusterEndpointStateIdentity = "InvalidDBClusterEndpointStateFault"
private let invalidDBClusterSnapshotStateIdentity = "InvalidDBClusterSnapshotStateFault"
private let invalidDBClusterStateIdentity = "InvalidDBClusterStateFault"
private let invalidDBInstanceAutomatedBackupStateIdentity = "InvalidDBInstanceAutomatedBackupState"
private let invalidDBInstanceStateIdentity = "InvalidDBInstanceState"
private let invalidDBParameterGroupStateIdentity = "InvalidDBParameterGroupState"
private let invalidDBSecurityGroupStateIdentity = "InvalidDBSecurityGroupState"
private let invalidDBSnapshotStateIdentity = "InvalidDBSnapshotState"
private let invalidDBSubnetGroupIdentity = "InvalidDBSubnetGroupFault"
private let invalidDBSubnetGroupStateIdentity = "InvalidDBSubnetGroupStateFault"
private let invalidDBSubnetStateIdentity = "InvalidDBSubnetStateFault"
private let invalidEventSubscriptionStateIdentity = "InvalidEventSubscriptionState"
private let invalidGlobalClusterStateIdentity = "InvalidGlobalClusterStateFault"
private let invalidOptionGroupStateIdentity = "InvalidOptionGroupStateFault"
private let invalidRestoreIdentity = "InvalidRestoreFault"
private let invalidS3BucketIdentity = "InvalidS3BucketFault"
private let invalidSubnetIdentity = "InvalidSubnet"
private let invalidVPCNetworkStateIdentity = "InvalidVPCNetworkStateFault"
private let kMSKeyNotAccessibleIdentity = "KMSKeyNotAccessibleFault"
private let optionGroupAlreadyExistsIdentity = "OptionGroupAlreadyExistsFault"
private let optionGroupNotFoundIdentity = "OptionGroupNotFoundFault"
private let optionGroupQuotaExceededIdentity = "OptionGroupQuotaExceededFault"
private let pointInTimeRestoreNotEnabledIdentity = "PointInTimeRestoreNotEnabled"
private let provisionedIopsNotAvailableInAZIdentity = "ProvisionedIopsNotAvailableInAZFault"
private let reservedDBInstanceAlreadyExistsIdentity = "ReservedDBInstanceAlreadyExists"
private let reservedDBInstanceNotFoundIdentity = "ReservedDBInstanceNotFound"
private let reservedDBInstanceQuotaExceededIdentity = "ReservedDBInstanceQuotaExceeded"
private let reservedDBInstancesOfferingNotFoundIdentity = "ReservedDBInstancesOfferingNotFound"
private let resourceNotFoundIdentity = "ResourceNotFoundFault"
private let sNSInvalidTopicIdentity = "SNSInvalidTopic"
private let sNSNoAuthorizationIdentity = "SNSNoAuthorization"
private let sNSTopicArnNotFoundIdentity = "SNSTopicArnNotFound"
private let sharedSnapshotQuotaExceededIdentity = "SharedSnapshotQuotaExceeded"
private let snapshotQuotaExceededIdentity = "SnapshotQuotaExceeded"
private let sourceNotFoundIdentity = "SourceNotFound"
private let storageQuotaExceededIdentity = "StorageQuotaExceeded"
private let storageTypeNotSupportedIdentity = "StorageTypeNotSupported"
private let subnetAlreadyInUseIdentity = "SubnetAlreadyInUse"
private let subscriptionAlreadyExistIdentity = "SubscriptionAlreadyExist"
private let subscriptionCategoryNotFoundIdentity = "SubscriptionCategoryNotFound"
private let subscriptionNotFoundIdentity = "SubscriptionNotFound"
private let __accessDeniedIdentity = "AccessDenied"

public enum RDSCodingError: Swift.Error {
    case unknownError
    case validationError(reason: String)
    case unrecognizedError(String, String?)
}

public enum RDSError: Swift.Error, Decodable {
    case authorizationAlreadyExists(AuthorizationAlreadyExistsFault)
    case authorizationNotFound(AuthorizationNotFoundFault)
    case authorizationQuotaExceeded(AuthorizationQuotaExceededFault)
    case backupPolicyNotFound(BackupPolicyNotFoundFault)
    case certificateNotFound(CertificateNotFoundFault)
    case dBClusterAlreadyExists(DBClusterAlreadyExistsFault)
    case dBClusterBacktrackNotFound(DBClusterBacktrackNotFoundFault)
    case dBClusterEndpointAlreadyExists(DBClusterEndpointAlreadyExistsFault)
    case dBClusterEndpointNotFound(DBClusterEndpointNotFoundFault)
    case dBClusterEndpointQuotaExceeded(DBClusterEndpointQuotaExceededFault)
    case dBClusterNotFound(DBClusterNotFoundFault)
    case dBClusterParameterGroupNotFound(DBClusterParameterGroupNotFoundFault)
    case dBClusterQuotaExceeded(DBClusterQuotaExceededFault)
    case dBClusterRoleAlreadyExists(DBClusterRoleAlreadyExistsFault)
    case dBClusterRoleNotFound(DBClusterRoleNotFoundFault)
    case dBClusterRoleQuotaExceeded(DBClusterRoleQuotaExceededFault)
    case dBClusterSnapshotAlreadyExists(DBClusterSnapshotAlreadyExistsFault)
    case dBClusterSnapshotNotFound(DBClusterSnapshotNotFoundFault)
    case dBInstanceAlreadyExists(DBInstanceAlreadyExistsFault)
    case dBInstanceAutomatedBackupNotFound(DBInstanceAutomatedBackupNotFoundFault)
    case dBInstanceAutomatedBackupQuotaExceeded(DBInstanceAutomatedBackupQuotaExceededFault)
    case dBInstanceNotFound(DBInstanceNotFoundFault)
    case dBInstanceRoleAlreadyExists(DBInstanceRoleAlreadyExistsFault)
    case dBInstanceRoleNotFound(DBInstanceRoleNotFoundFault)
    case dBInstanceRoleQuotaExceeded(DBInstanceRoleQuotaExceededFault)
    case dBLogFileNotFound(DBLogFileNotFoundFault)
    case dBParameterGroupAlreadyExists(DBParameterGroupAlreadyExistsFault)
    case dBParameterGroupNotFound(DBParameterGroupNotFoundFault)
    case dBParameterGroupQuotaExceeded(DBParameterGroupQuotaExceededFault)
    case dBSecurityGroupAlreadyExists(DBSecurityGroupAlreadyExistsFault)
    case dBSecurityGroupNotFound(DBSecurityGroupNotFoundFault)
    case dBSecurityGroupNotSupported(DBSecurityGroupNotSupportedFault)
    case dBSecurityGroupQuotaExceeded(DBSecurityGroupQuotaExceededFault)
    case dBSnapshotAlreadyExists(DBSnapshotAlreadyExistsFault)
    case dBSnapshotNotFound(DBSnapshotNotFoundFault)
    case dBSubnetGroupAlreadyExists(DBSubnetGroupAlreadyExistsFault)
    case dBSubnetGroupDoesNotCoverEnoughAZs(DBSubnetGroupDoesNotCoverEnoughAZs)
    case dBSubnetGroupNotAllowed(DBSubnetGroupNotAllowedFault)
    case dBSubnetGroupNotFound(DBSubnetGroupNotFoundFault)
    case dBSubnetGroupQuotaExceeded(DBSubnetGroupQuotaExceededFault)
    case dBSubnetQuotaExceeded(DBSubnetQuotaExceededFault)
    case dBUpgradeDependencyFailure(DBUpgradeDependencyFailureFault)
    case domainNotFound(DomainNotFoundFault)
    case eventSubscriptionQuotaExceeded(EventSubscriptionQuotaExceededFault)
    case globalClusterAlreadyExists(GlobalClusterAlreadyExistsFault)
    case globalClusterNotFound(GlobalClusterNotFoundFault)
    case globalClusterQuotaExceeded(GlobalClusterQuotaExceededFault)
    case instanceQuotaExceeded(InstanceQuotaExceededFault)
    case insufficientDBClusterCapacity(InsufficientDBClusterCapacityFault)
    case insufficientDBInstanceCapacity(InsufficientDBInstanceCapacityFault)
    case insufficientStorageClusterCapacity(InsufficientStorageClusterCapacityFault)
    case invalidDBClusterCapacity(InvalidDBClusterCapacityFault)
    case invalidDBClusterEndpointState(InvalidDBClusterEndpointStateFault)
    case invalidDBClusterSnapshotState(InvalidDBClusterSnapshotStateFault)
    case invalidDBClusterState(InvalidDBClusterStateFault)
    case invalidDBInstanceAutomatedBackupState(InvalidDBInstanceAutomatedBackupStateFault)
    case invalidDBInstanceState(InvalidDBInstanceStateFault)
    case invalidDBParameterGroupState(InvalidDBParameterGroupStateFault)
    case invalidDBSecurityGroupState(InvalidDBSecurityGroupStateFault)
    case invalidDBSnapshotState(InvalidDBSnapshotStateFault)
    case invalidDBSubnetGroup(InvalidDBSubnetGroupFault)
    case invalidDBSubnetGroupState(InvalidDBSubnetGroupStateFault)
    case invalidDBSubnetState(InvalidDBSubnetStateFault)
    case invalidEventSubscriptionState(InvalidEventSubscriptionStateFault)
    case invalidGlobalClusterState(InvalidGlobalClusterStateFault)
    case invalidOptionGroupState(InvalidOptionGroupStateFault)
    case invalidRestore(InvalidRestoreFault)
    case invalidS3Bucket(InvalidS3BucketFault)
    case invalidSubnet(InvalidSubnet)
    case invalidVPCNetworkState(InvalidVPCNetworkStateFault)
    case kMSKeyNotAccessible(KMSKeyNotAccessibleFault)
    case optionGroupAlreadyExists(OptionGroupAlreadyExistsFault)
    case optionGroupNotFound(OptionGroupNotFoundFault)
    case optionGroupQuotaExceeded(OptionGroupQuotaExceededFault)
    case pointInTimeRestoreNotEnabled(PointInTimeRestoreNotEnabledFault)
    case provisionedIopsNotAvailableInAZ(ProvisionedIopsNotAvailableInAZFault)
    case reservedDBInstanceAlreadyExists(ReservedDBInstanceAlreadyExistsFault)
    case reservedDBInstanceNotFound(ReservedDBInstanceNotFoundFault)
    case reservedDBInstanceQuotaExceeded(ReservedDBInstanceQuotaExceededFault)
    case reservedDBInstancesOfferingNotFound(ReservedDBInstancesOfferingNotFoundFault)
    case resourceNotFound(ResourceNotFoundFault)
    case sNSInvalidTopic(SNSInvalidTopicFault)
    case sNSNoAuthorization(SNSNoAuthorizationFault)
    case sNSTopicArnNotFound(SNSTopicArnNotFoundFault)
    case sharedSnapshotQuotaExceeded(SharedSnapshotQuotaExceededFault)
    case snapshotQuotaExceeded(SnapshotQuotaExceededFault)
    case sourceNotFound(SourceNotFoundFault)
    case storageQuotaExceeded(StorageQuotaExceededFault)
    case storageTypeNotSupported(StorageTypeNotSupportedFault)
    case subnetAlreadyInUse(SubnetAlreadyInUse)
    case subscriptionAlreadyExist(SubscriptionAlreadyExistFault)
    case subscriptionCategoryNotFound(SubscriptionCategoryNotFoundFault)
    case subscriptionNotFound(SubscriptionNotFoundFault)
    case accessDenied(message: String?)

    enum CodingKeys: String, CodingKey {
        case type = "Code"
        case message = "Message"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        var errorReason = try values.decode(String.self, forKey: .type)
        let errorMessage = try values.decodeIfPresent(String.self, forKey: .message)
        
        if let index = errorReason.index(of: "#") {
            errorReason = String(errorReason[errorReason.index(index, offsetBy: 1)...])
        }

        switch errorReason {
        case authorizationAlreadyExistsIdentity:
            let errorPayload = try AuthorizationAlreadyExistsFault(from: decoder)
            self = RDSError.authorizationAlreadyExists(errorPayload)
        case authorizationNotFoundIdentity:
            let errorPayload = try AuthorizationNotFoundFault(from: decoder)
            self = RDSError.authorizationNotFound(errorPayload)
        case authorizationQuotaExceededIdentity:
            let errorPayload = try AuthorizationQuotaExceededFault(from: decoder)
            self = RDSError.authorizationQuotaExceeded(errorPayload)
        case backupPolicyNotFoundIdentity:
            let errorPayload = try BackupPolicyNotFoundFault(from: decoder)
            self = RDSError.backupPolicyNotFound(errorPayload)
        case certificateNotFoundIdentity:
            let errorPayload = try CertificateNotFoundFault(from: decoder)
            self = RDSError.certificateNotFound(errorPayload)
        case dBClusterAlreadyExistsIdentity:
            let errorPayload = try DBClusterAlreadyExistsFault(from: decoder)
            self = RDSError.dBClusterAlreadyExists(errorPayload)
        case dBClusterBacktrackNotFoundIdentity:
            let errorPayload = try DBClusterBacktrackNotFoundFault(from: decoder)
            self = RDSError.dBClusterBacktrackNotFound(errorPayload)
        case dBClusterEndpointAlreadyExistsIdentity:
            let errorPayload = try DBClusterEndpointAlreadyExistsFault(from: decoder)
            self = RDSError.dBClusterEndpointAlreadyExists(errorPayload)
        case dBClusterEndpointNotFoundIdentity:
            let errorPayload = try DBClusterEndpointNotFoundFault(from: decoder)
            self = RDSError.dBClusterEndpointNotFound(errorPayload)
        case dBClusterEndpointQuotaExceededIdentity:
            let errorPayload = try DBClusterEndpointQuotaExceededFault(from: decoder)
            self = RDSError.dBClusterEndpointQuotaExceeded(errorPayload)
        case dBClusterNotFoundIdentity:
            let errorPayload = try DBClusterNotFoundFault(from: decoder)
            self = RDSError.dBClusterNotFound(errorPayload)
        case dBClusterParameterGroupNotFoundIdentity:
            let errorPayload = try DBClusterParameterGroupNotFoundFault(from: decoder)
            self = RDSError.dBClusterParameterGroupNotFound(errorPayload)
        case dBClusterQuotaExceededIdentity:
            let errorPayload = try DBClusterQuotaExceededFault(from: decoder)
            self = RDSError.dBClusterQuotaExceeded(errorPayload)
        case dBClusterRoleAlreadyExistsIdentity:
            let errorPayload = try DBClusterRoleAlreadyExistsFault(from: decoder)
            self = RDSError.dBClusterRoleAlreadyExists(errorPayload)
        case dBClusterRoleNotFoundIdentity:
            let errorPayload = try DBClusterRoleNotFoundFault(from: decoder)
            self = RDSError.dBClusterRoleNotFound(errorPayload)
        case dBClusterRoleQuotaExceededIdentity:
            let errorPayload = try DBClusterRoleQuotaExceededFault(from: decoder)
            self = RDSError.dBClusterRoleQuotaExceeded(errorPayload)
        case dBClusterSnapshotAlreadyExistsIdentity:
            let errorPayload = try DBClusterSnapshotAlreadyExistsFault(from: decoder)
            self = RDSError.dBClusterSnapshotAlreadyExists(errorPayload)
        case dBClusterSnapshotNotFoundIdentity:
            let errorPayload = try DBClusterSnapshotNotFoundFault(from: decoder)
            self = RDSError.dBClusterSnapshotNotFound(errorPayload)
        case dBInstanceAlreadyExistsIdentity:
            let errorPayload = try DBInstanceAlreadyExistsFault(from: decoder)
            self = RDSError.dBInstanceAlreadyExists(errorPayload)
        case dBInstanceAutomatedBackupNotFoundIdentity:
            let errorPayload = try DBInstanceAutomatedBackupNotFoundFault(from: decoder)
            self = RDSError.dBInstanceAutomatedBackupNotFound(errorPayload)
        case dBInstanceAutomatedBackupQuotaExceededIdentity:
            let errorPayload = try DBInstanceAutomatedBackupQuotaExceededFault(from: decoder)
            self = RDSError.dBInstanceAutomatedBackupQuotaExceeded(errorPayload)
        case dBInstanceNotFoundIdentity:
            let errorPayload = try DBInstanceNotFoundFault(from: decoder)
            self = RDSError.dBInstanceNotFound(errorPayload)
        case dBInstanceRoleAlreadyExistsIdentity:
            let errorPayload = try DBInstanceRoleAlreadyExistsFault(from: decoder)
            self = RDSError.dBInstanceRoleAlreadyExists(errorPayload)
        case dBInstanceRoleNotFoundIdentity:
            let errorPayload = try DBInstanceRoleNotFoundFault(from: decoder)
            self = RDSError.dBInstanceRoleNotFound(errorPayload)
        case dBInstanceRoleQuotaExceededIdentity:
            let errorPayload = try DBInstanceRoleQuotaExceededFault(from: decoder)
            self = RDSError.dBInstanceRoleQuotaExceeded(errorPayload)
        case dBLogFileNotFoundIdentity:
            let errorPayload = try DBLogFileNotFoundFault(from: decoder)
            self = RDSError.dBLogFileNotFound(errorPayload)
        case dBParameterGroupAlreadyExistsIdentity:
            let errorPayload = try DBParameterGroupAlreadyExistsFault(from: decoder)
            self = RDSError.dBParameterGroupAlreadyExists(errorPayload)
        case dBParameterGroupNotFoundIdentity:
            let errorPayload = try DBParameterGroupNotFoundFault(from: decoder)
            self = RDSError.dBParameterGroupNotFound(errorPayload)
        case dBParameterGroupQuotaExceededIdentity:
            let errorPayload = try DBParameterGroupQuotaExceededFault(from: decoder)
            self = RDSError.dBParameterGroupQuotaExceeded(errorPayload)
        case dBSecurityGroupAlreadyExistsIdentity:
            let errorPayload = try DBSecurityGroupAlreadyExistsFault(from: decoder)
            self = RDSError.dBSecurityGroupAlreadyExists(errorPayload)
        case dBSecurityGroupNotFoundIdentity:
            let errorPayload = try DBSecurityGroupNotFoundFault(from: decoder)
            self = RDSError.dBSecurityGroupNotFound(errorPayload)
        case dBSecurityGroupNotSupportedIdentity:
            let errorPayload = try DBSecurityGroupNotSupportedFault(from: decoder)
            self = RDSError.dBSecurityGroupNotSupported(errorPayload)
        case dBSecurityGroupQuotaExceededIdentity:
            let errorPayload = try DBSecurityGroupQuotaExceededFault(from: decoder)
            self = RDSError.dBSecurityGroupQuotaExceeded(errorPayload)
        case dBSnapshotAlreadyExistsIdentity:
            let errorPayload = try DBSnapshotAlreadyExistsFault(from: decoder)
            self = RDSError.dBSnapshotAlreadyExists(errorPayload)
        case dBSnapshotNotFoundIdentity:
            let errorPayload = try DBSnapshotNotFoundFault(from: decoder)
            self = RDSError.dBSnapshotNotFound(errorPayload)
        case dBSubnetGroupAlreadyExistsIdentity:
            let errorPayload = try DBSubnetGroupAlreadyExistsFault(from: decoder)
            self = RDSError.dBSubnetGroupAlreadyExists(errorPayload)
        case dBSubnetGroupDoesNotCoverEnoughAZsIdentity:
            let errorPayload = try DBSubnetGroupDoesNotCoverEnoughAZs(from: decoder)
            self = RDSError.dBSubnetGroupDoesNotCoverEnoughAZs(errorPayload)
        case dBSubnetGroupNotAllowedIdentity:
            let errorPayload = try DBSubnetGroupNotAllowedFault(from: decoder)
            self = RDSError.dBSubnetGroupNotAllowed(errorPayload)
        case dBSubnetGroupNotFoundIdentity:
            let errorPayload = try DBSubnetGroupNotFoundFault(from: decoder)
            self = RDSError.dBSubnetGroupNotFound(errorPayload)
        case dBSubnetGroupQuotaExceededIdentity:
            let errorPayload = try DBSubnetGroupQuotaExceededFault(from: decoder)
            self = RDSError.dBSubnetGroupQuotaExceeded(errorPayload)
        case dBSubnetQuotaExceededIdentity:
            let errorPayload = try DBSubnetQuotaExceededFault(from: decoder)
            self = RDSError.dBSubnetQuotaExceeded(errorPayload)
        case dBUpgradeDependencyFailureIdentity:
            let errorPayload = try DBUpgradeDependencyFailureFault(from: decoder)
            self = RDSError.dBUpgradeDependencyFailure(errorPayload)
        case domainNotFoundIdentity:
            let errorPayload = try DomainNotFoundFault(from: decoder)
            self = RDSError.domainNotFound(errorPayload)
        case eventSubscriptionQuotaExceededIdentity:
            let errorPayload = try EventSubscriptionQuotaExceededFault(from: decoder)
            self = RDSError.eventSubscriptionQuotaExceeded(errorPayload)
        case globalClusterAlreadyExistsIdentity:
            let errorPayload = try GlobalClusterAlreadyExistsFault(from: decoder)
            self = RDSError.globalClusterAlreadyExists(errorPayload)
        case globalClusterNotFoundIdentity:
            let errorPayload = try GlobalClusterNotFoundFault(from: decoder)
            self = RDSError.globalClusterNotFound(errorPayload)
        case globalClusterQuotaExceededIdentity:
            let errorPayload = try GlobalClusterQuotaExceededFault(from: decoder)
            self = RDSError.globalClusterQuotaExceeded(errorPayload)
        case instanceQuotaExceededIdentity:
            let errorPayload = try InstanceQuotaExceededFault(from: decoder)
            self = RDSError.instanceQuotaExceeded(errorPayload)
        case insufficientDBClusterCapacityIdentity:
            let errorPayload = try InsufficientDBClusterCapacityFault(from: decoder)
            self = RDSError.insufficientDBClusterCapacity(errorPayload)
        case insufficientDBInstanceCapacityIdentity:
            let errorPayload = try InsufficientDBInstanceCapacityFault(from: decoder)
            self = RDSError.insufficientDBInstanceCapacity(errorPayload)
        case insufficientStorageClusterCapacityIdentity:
            let errorPayload = try InsufficientStorageClusterCapacityFault(from: decoder)
            self = RDSError.insufficientStorageClusterCapacity(errorPayload)
        case invalidDBClusterCapacityIdentity:
            let errorPayload = try InvalidDBClusterCapacityFault(from: decoder)
            self = RDSError.invalidDBClusterCapacity(errorPayload)
        case invalidDBClusterEndpointStateIdentity:
            let errorPayload = try InvalidDBClusterEndpointStateFault(from: decoder)
            self = RDSError.invalidDBClusterEndpointState(errorPayload)
        case invalidDBClusterSnapshotStateIdentity:
            let errorPayload = try InvalidDBClusterSnapshotStateFault(from: decoder)
            self = RDSError.invalidDBClusterSnapshotState(errorPayload)
        case invalidDBClusterStateIdentity:
            let errorPayload = try InvalidDBClusterStateFault(from: decoder)
            self = RDSError.invalidDBClusterState(errorPayload)
        case invalidDBInstanceAutomatedBackupStateIdentity:
            let errorPayload = try InvalidDBInstanceAutomatedBackupStateFault(from: decoder)
            self = RDSError.invalidDBInstanceAutomatedBackupState(errorPayload)
        case invalidDBInstanceStateIdentity:
            let errorPayload = try InvalidDBInstanceStateFault(from: decoder)
            self = RDSError.invalidDBInstanceState(errorPayload)
        case invalidDBParameterGroupStateIdentity:
            let errorPayload = try InvalidDBParameterGroupStateFault(from: decoder)
            self = RDSError.invalidDBParameterGroupState(errorPayload)
        case invalidDBSecurityGroupStateIdentity:
            let errorPayload = try InvalidDBSecurityGroupStateFault(from: decoder)
            self = RDSError.invalidDBSecurityGroupState(errorPayload)
        case invalidDBSnapshotStateIdentity:
            let errorPayload = try InvalidDBSnapshotStateFault(from: decoder)
            self = RDSError.invalidDBSnapshotState(errorPayload)
        case invalidDBSubnetGroupIdentity:
            let errorPayload = try InvalidDBSubnetGroupFault(from: decoder)
            self = RDSError.invalidDBSubnetGroup(errorPayload)
        case invalidDBSubnetGroupStateIdentity:
            let errorPayload = try InvalidDBSubnetGroupStateFault(from: decoder)
            self = RDSError.invalidDBSubnetGroupState(errorPayload)
        case invalidDBSubnetStateIdentity:
            let errorPayload = try InvalidDBSubnetStateFault(from: decoder)
            self = RDSError.invalidDBSubnetState(errorPayload)
        case invalidEventSubscriptionStateIdentity:
            let errorPayload = try InvalidEventSubscriptionStateFault(from: decoder)
            self = RDSError.invalidEventSubscriptionState(errorPayload)
        case invalidGlobalClusterStateIdentity:
            let errorPayload = try InvalidGlobalClusterStateFault(from: decoder)
            self = RDSError.invalidGlobalClusterState(errorPayload)
        case invalidOptionGroupStateIdentity:
            let errorPayload = try InvalidOptionGroupStateFault(from: decoder)
            self = RDSError.invalidOptionGroupState(errorPayload)
        case invalidRestoreIdentity:
            let errorPayload = try InvalidRestoreFault(from: decoder)
            self = RDSError.invalidRestore(errorPayload)
        case invalidS3BucketIdentity:
            let errorPayload = try InvalidS3BucketFault(from: decoder)
            self = RDSError.invalidS3Bucket(errorPayload)
        case invalidSubnetIdentity:
            let errorPayload = try InvalidSubnet(from: decoder)
            self = RDSError.invalidSubnet(errorPayload)
        case invalidVPCNetworkStateIdentity:
            let errorPayload = try InvalidVPCNetworkStateFault(from: decoder)
            self = RDSError.invalidVPCNetworkState(errorPayload)
        case kMSKeyNotAccessibleIdentity:
            let errorPayload = try KMSKeyNotAccessibleFault(from: decoder)
            self = RDSError.kMSKeyNotAccessible(errorPayload)
        case optionGroupAlreadyExistsIdentity:
            let errorPayload = try OptionGroupAlreadyExistsFault(from: decoder)
            self = RDSError.optionGroupAlreadyExists(errorPayload)
        case optionGroupNotFoundIdentity:
            let errorPayload = try OptionGroupNotFoundFault(from: decoder)
            self = RDSError.optionGroupNotFound(errorPayload)
        case optionGroupQuotaExceededIdentity:
            let errorPayload = try OptionGroupQuotaExceededFault(from: decoder)
            self = RDSError.optionGroupQuotaExceeded(errorPayload)
        case pointInTimeRestoreNotEnabledIdentity:
            let errorPayload = try PointInTimeRestoreNotEnabledFault(from: decoder)
            self = RDSError.pointInTimeRestoreNotEnabled(errorPayload)
        case provisionedIopsNotAvailableInAZIdentity:
            let errorPayload = try ProvisionedIopsNotAvailableInAZFault(from: decoder)
            self = RDSError.provisionedIopsNotAvailableInAZ(errorPayload)
        case reservedDBInstanceAlreadyExistsIdentity:
            let errorPayload = try ReservedDBInstanceAlreadyExistsFault(from: decoder)
            self = RDSError.reservedDBInstanceAlreadyExists(errorPayload)
        case reservedDBInstanceNotFoundIdentity:
            let errorPayload = try ReservedDBInstanceNotFoundFault(from: decoder)
            self = RDSError.reservedDBInstanceNotFound(errorPayload)
        case reservedDBInstanceQuotaExceededIdentity:
            let errorPayload = try ReservedDBInstanceQuotaExceededFault(from: decoder)
            self = RDSError.reservedDBInstanceQuotaExceeded(errorPayload)
        case reservedDBInstancesOfferingNotFoundIdentity:
            let errorPayload = try ReservedDBInstancesOfferingNotFoundFault(from: decoder)
            self = RDSError.reservedDBInstancesOfferingNotFound(errorPayload)
        case resourceNotFoundIdentity:
            let errorPayload = try ResourceNotFoundFault(from: decoder)
            self = RDSError.resourceNotFound(errorPayload)
        case sNSInvalidTopicIdentity:
            let errorPayload = try SNSInvalidTopicFault(from: decoder)
            self = RDSError.sNSInvalidTopic(errorPayload)
        case sNSNoAuthorizationIdentity:
            let errorPayload = try SNSNoAuthorizationFault(from: decoder)
            self = RDSError.sNSNoAuthorization(errorPayload)
        case sNSTopicArnNotFoundIdentity:
            let errorPayload = try SNSTopicArnNotFoundFault(from: decoder)
            self = RDSError.sNSTopicArnNotFound(errorPayload)
        case sharedSnapshotQuotaExceededIdentity:
            let errorPayload = try SharedSnapshotQuotaExceededFault(from: decoder)
            self = RDSError.sharedSnapshotQuotaExceeded(errorPayload)
        case snapshotQuotaExceededIdentity:
            let errorPayload = try SnapshotQuotaExceededFault(from: decoder)
            self = RDSError.snapshotQuotaExceeded(errorPayload)
        case sourceNotFoundIdentity:
            let errorPayload = try SourceNotFoundFault(from: decoder)
            self = RDSError.sourceNotFound(errorPayload)
        case storageQuotaExceededIdentity:
            let errorPayload = try StorageQuotaExceededFault(from: decoder)
            self = RDSError.storageQuotaExceeded(errorPayload)
        case storageTypeNotSupportedIdentity:
            let errorPayload = try StorageTypeNotSupportedFault(from: decoder)
            self = RDSError.storageTypeNotSupported(errorPayload)
        case subnetAlreadyInUseIdentity:
            let errorPayload = try SubnetAlreadyInUse(from: decoder)
            self = RDSError.subnetAlreadyInUse(errorPayload)
        case subscriptionAlreadyExistIdentity:
            let errorPayload = try SubscriptionAlreadyExistFault(from: decoder)
            self = RDSError.subscriptionAlreadyExist(errorPayload)
        case subscriptionCategoryNotFoundIdentity:
            let errorPayload = try SubscriptionCategoryNotFoundFault(from: decoder)
            self = RDSError.subscriptionCategoryNotFound(errorPayload)
        case subscriptionNotFoundIdentity:
            let errorPayload = try SubscriptionNotFoundFault(from: decoder)
            self = RDSError.subscriptionNotFound(errorPayload)
        case __accessDeniedIdentity:
            self = .accessDenied(message: errorMessage)
        default:
            throw RDSCodingError.unrecognizedError(errorReason, errorMessage)
        }
    }
    
}

