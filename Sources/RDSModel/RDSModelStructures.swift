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
// RDSModelStructures.swift
// RDSModel
//

import Foundation

public struct AccountAttributesMessage: Codable, Equatable {
    public var accountQuotas: AccountQuotaList?

    public init(accountQuotas: AccountQuotaList? = nil) {
        self.accountQuotas = accountQuotas
    }

    enum CodingKeys: String, CodingKey {
        case accountQuotas = "AccountQuotas"
    }

    public func validate() throws {
    }
}

public struct AccountAttributesMessageForDescribeAccountAttributes: Codable, Equatable {
    public var describeAccountAttributesResult: AccountAttributesMessage

    public init(describeAccountAttributesResult: AccountAttributesMessage) {
        self.describeAccountAttributesResult = describeAccountAttributesResult
    }

    enum CodingKeys: String, CodingKey {
        case describeAccountAttributesResult = "DescribeAccountAttributesResult"
    }

    public func validate() throws {
        try describeAccountAttributesResult.validate()
    }
}

public struct AccountQuota: Codable, Equatable {
    public var accountQuotaName: String?
    public var max: Long?
    public var used: Long?

    public init(accountQuotaName: String? = nil,
                max: Long? = nil,
                used: Long? = nil) {
        self.accountQuotaName = accountQuotaName
        self.max = max
        self.used = used
    }

    enum CodingKeys: String, CodingKey {
        case accountQuotaName = "AccountQuotaName"
        case max = "Max"
        case used = "Used"
    }

    public func validate() throws {
    }
}

public struct AddRoleToDBClusterMessage: Codable, Equatable {
    public var dBClusterIdentifier: String
    public var roleArn: String

    public init(dBClusterIdentifier: String,
                roleArn: String) {
        self.dBClusterIdentifier = dBClusterIdentifier
        self.roleArn = roleArn
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterIdentifier = "DBClusterIdentifier"
        case roleArn = "RoleArn"
    }

    public func validate() throws {
    }
}

public struct AddRoleToDBInstanceMessage: Codable, Equatable {
    public var dBInstanceIdentifier: String
    public var featureName: String
    public var roleArn: String

    public init(dBInstanceIdentifier: String,
                featureName: String,
                roleArn: String) {
        self.dBInstanceIdentifier = dBInstanceIdentifier
        self.featureName = featureName
        self.roleArn = roleArn
    }

    enum CodingKeys: String, CodingKey {
        case dBInstanceIdentifier = "DBInstanceIdentifier"
        case featureName = "FeatureName"
        case roleArn = "RoleArn"
    }

    public func validate() throws {
    }
}

public struct AddSourceIdentifierToSubscriptionMessage: Codable, Equatable {
    public var sourceIdentifier: String
    public var subscriptionName: String

    public init(sourceIdentifier: String,
                subscriptionName: String) {
        self.sourceIdentifier = sourceIdentifier
        self.subscriptionName = subscriptionName
    }

    enum CodingKeys: String, CodingKey {
        case sourceIdentifier = "SourceIdentifier"
        case subscriptionName = "SubscriptionName"
    }

    public func validate() throws {
    }
}

public struct AddSourceIdentifierToSubscriptionResult: Codable, Equatable {
    public var eventSubscription: EventSubscription?

    public init(eventSubscription: EventSubscription? = nil) {
        self.eventSubscription = eventSubscription
    }

    enum CodingKeys: String, CodingKey {
        case eventSubscription = "EventSubscription"
    }

    public func validate() throws {
        try eventSubscription?.validate()
    }
}

public struct AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription: Codable, Equatable {
    public var addSourceIdentifierToSubscriptionResult: AddSourceIdentifierToSubscriptionResult

    public init(addSourceIdentifierToSubscriptionResult: AddSourceIdentifierToSubscriptionResult) {
        self.addSourceIdentifierToSubscriptionResult = addSourceIdentifierToSubscriptionResult
    }

    enum CodingKeys: String, CodingKey {
        case addSourceIdentifierToSubscriptionResult = "AddSourceIdentifierToSubscriptionResult"
    }

    public func validate() throws {
        try addSourceIdentifierToSubscriptionResult.validate()
    }
}

public struct AddTagsToResourceMessage: Codable, Equatable {
    public var resourceName: String
    public var tags: TagList

    public init(resourceName: String,
                tags: TagList) {
        self.resourceName = resourceName
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case resourceName = "ResourceName"
        case tags = "Tags"
    }

    public func validate() throws {
    }
}

public struct ApplyPendingMaintenanceActionMessage: Codable, Equatable {
    public var applyAction: String
    public var optInType: String
    public var resourceIdentifier: String

    public init(applyAction: String,
                optInType: String,
                resourceIdentifier: String) {
        self.applyAction = applyAction
        self.optInType = optInType
        self.resourceIdentifier = resourceIdentifier
    }

    enum CodingKeys: String, CodingKey {
        case applyAction = "ApplyAction"
        case optInType = "OptInType"
        case resourceIdentifier = "ResourceIdentifier"
    }

    public func validate() throws {
    }
}

public struct ApplyPendingMaintenanceActionResult: Codable, Equatable {
    public var resourcePendingMaintenanceActions: ResourcePendingMaintenanceActions?

    public init(resourcePendingMaintenanceActions: ResourcePendingMaintenanceActions? = nil) {
        self.resourcePendingMaintenanceActions = resourcePendingMaintenanceActions
    }

    enum CodingKeys: String, CodingKey {
        case resourcePendingMaintenanceActions = "ResourcePendingMaintenanceActions"
    }

    public func validate() throws {
        try resourcePendingMaintenanceActions?.validate()
    }
}

public struct ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction: Codable, Equatable {
    public var applyPendingMaintenanceActionResult: ApplyPendingMaintenanceActionResult

    public init(applyPendingMaintenanceActionResult: ApplyPendingMaintenanceActionResult) {
        self.applyPendingMaintenanceActionResult = applyPendingMaintenanceActionResult
    }

    enum CodingKeys: String, CodingKey {
        case applyPendingMaintenanceActionResult = "ApplyPendingMaintenanceActionResult"
    }

    public func validate() throws {
        try applyPendingMaintenanceActionResult.validate()
    }
}

public struct AuthorizationAlreadyExistsFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct AuthorizationNotFoundFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct AuthorizationQuotaExceededFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct AuthorizeDBSecurityGroupIngressMessage: Codable, Equatable {
    public var cIDRIP: String?
    public var dBSecurityGroupName: String
    public var eC2SecurityGroupId: String?
    public var eC2SecurityGroupName: String?
    public var eC2SecurityGroupOwnerId: String?

    public init(cIDRIP: String? = nil,
                dBSecurityGroupName: String,
                eC2SecurityGroupId: String? = nil,
                eC2SecurityGroupName: String? = nil,
                eC2SecurityGroupOwnerId: String? = nil) {
        self.cIDRIP = cIDRIP
        self.dBSecurityGroupName = dBSecurityGroupName
        self.eC2SecurityGroupId = eC2SecurityGroupId
        self.eC2SecurityGroupName = eC2SecurityGroupName
        self.eC2SecurityGroupOwnerId = eC2SecurityGroupOwnerId
    }

    enum CodingKeys: String, CodingKey {
        case cIDRIP = "CIDRIP"
        case dBSecurityGroupName = "DBSecurityGroupName"
        case eC2SecurityGroupId = "EC2SecurityGroupId"
        case eC2SecurityGroupName = "EC2SecurityGroupName"
        case eC2SecurityGroupOwnerId = "EC2SecurityGroupOwnerId"
    }

    public func validate() throws {
    }
}

public struct AuthorizeDBSecurityGroupIngressResult: Codable, Equatable {
    public var dBSecurityGroup: DBSecurityGroup?

    public init(dBSecurityGroup: DBSecurityGroup? = nil) {
        self.dBSecurityGroup = dBSecurityGroup
    }

    enum CodingKeys: String, CodingKey {
        case dBSecurityGroup = "DBSecurityGroup"
    }

    public func validate() throws {
        try dBSecurityGroup?.validate()
    }
}

public struct AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress: Codable, Equatable {
    public var authorizeDBSecurityGroupIngressResult: AuthorizeDBSecurityGroupIngressResult

    public init(authorizeDBSecurityGroupIngressResult: AuthorizeDBSecurityGroupIngressResult) {
        self.authorizeDBSecurityGroupIngressResult = authorizeDBSecurityGroupIngressResult
    }

    enum CodingKeys: String, CodingKey {
        case authorizeDBSecurityGroupIngressResult = "AuthorizeDBSecurityGroupIngressResult"
    }

    public func validate() throws {
        try authorizeDBSecurityGroupIngressResult.validate()
    }
}

public struct AvailabilityZone: Codable, Equatable {
    public var name: String?

    public init(name: String? = nil) {
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case name = "Name"
    }

    public func validate() throws {
    }
}

public struct AvailableProcessorFeature: Codable, Equatable {
    public var allowedValues: String?
    public var defaultValue: String?
    public var name: String?

    public init(allowedValues: String? = nil,
                defaultValue: String? = nil,
                name: String? = nil) {
        self.allowedValues = allowedValues
        self.defaultValue = defaultValue
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case allowedValues = "AllowedValues"
        case defaultValue = "DefaultValue"
        case name = "Name"
    }

    public func validate() throws {
    }
}

public struct BacktrackDBClusterMessage: Codable, Equatable {
    public var backtrackTo: TStamp
    public var dBClusterIdentifier: String
    public var force: BooleanOptional?
    public var useEarliestTimeOnPointInTimeUnavailable: BooleanOptional?

    public init(backtrackTo: TStamp,
                dBClusterIdentifier: String,
                force: BooleanOptional? = nil,
                useEarliestTimeOnPointInTimeUnavailable: BooleanOptional? = nil) {
        self.backtrackTo = backtrackTo
        self.dBClusterIdentifier = dBClusterIdentifier
        self.force = force
        self.useEarliestTimeOnPointInTimeUnavailable = useEarliestTimeOnPointInTimeUnavailable
    }

    enum CodingKeys: String, CodingKey {
        case backtrackTo = "BacktrackTo"
        case dBClusterIdentifier = "DBClusterIdentifier"
        case force = "Force"
        case useEarliestTimeOnPointInTimeUnavailable = "UseEarliestTimeOnPointInTimeUnavailable"
    }

    public func validate() throws {
    }
}

public struct BackupPolicyNotFoundFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct Certificate: Codable, Equatable {
    public var certificateArn: String?
    public var certificateIdentifier: String?
    public var certificateType: String?
    public var thumbprint: String?
    public var validFrom: TStamp?
    public var validTill: TStamp?

    public init(certificateArn: String? = nil,
                certificateIdentifier: String? = nil,
                certificateType: String? = nil,
                thumbprint: String? = nil,
                validFrom: TStamp? = nil,
                validTill: TStamp? = nil) {
        self.certificateArn = certificateArn
        self.certificateIdentifier = certificateIdentifier
        self.certificateType = certificateType
        self.thumbprint = thumbprint
        self.validFrom = validFrom
        self.validTill = validTill
    }

    enum CodingKeys: String, CodingKey {
        case certificateArn = "CertificateArn"
        case certificateIdentifier = "CertificateIdentifier"
        case certificateType = "CertificateType"
        case thumbprint = "Thumbprint"
        case validFrom = "ValidFrom"
        case validTill = "ValidTill"
    }

    public func validate() throws {
    }
}

public struct CertificateMessage: Codable, Equatable {
    public var certificates: CertificateList?
    public var marker: String?

    public init(certificates: CertificateList? = nil,
                marker: String? = nil) {
        self.certificates = certificates
        self.marker = marker
    }

    enum CodingKeys: String, CodingKey {
        case certificates = "Certificates"
        case marker = "Marker"
    }

    public func validate() throws {
    }
}

public struct CertificateMessageForDescribeCertificates: Codable, Equatable {
    public var describeCertificatesResult: CertificateMessage

    public init(describeCertificatesResult: CertificateMessage) {
        self.describeCertificatesResult = describeCertificatesResult
    }

    enum CodingKeys: String, CodingKey {
        case describeCertificatesResult = "DescribeCertificatesResult"
    }

    public func validate() throws {
        try describeCertificatesResult.validate()
    }
}

public struct CertificateNotFoundFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct CharacterSet: Codable, Equatable {
    public var characterSetDescription: String?
    public var characterSetName: String?

    public init(characterSetDescription: String? = nil,
                characterSetName: String? = nil) {
        self.characterSetDescription = characterSetDescription
        self.characterSetName = characterSetName
    }

    enum CodingKeys: String, CodingKey {
        case characterSetDescription = "CharacterSetDescription"
        case characterSetName = "CharacterSetName"
    }

    public func validate() throws {
    }
}

public struct CloudwatchLogsExportConfiguration: Codable, Equatable {
    public var disableLogTypes: LogTypeList?
    public var enableLogTypes: LogTypeList?

    public init(disableLogTypes: LogTypeList? = nil,
                enableLogTypes: LogTypeList? = nil) {
        self.disableLogTypes = disableLogTypes
        self.enableLogTypes = enableLogTypes
    }

    enum CodingKeys: String, CodingKey {
        case disableLogTypes = "DisableLogTypes"
        case enableLogTypes = "EnableLogTypes"
    }

    public func validate() throws {
    }
}

public struct CopyDBClusterParameterGroupMessage: Codable, Equatable {
    public var sourceDBClusterParameterGroupIdentifier: String
    public var tags: TagList?
    public var targetDBClusterParameterGroupDescription: String
    public var targetDBClusterParameterGroupIdentifier: String

    public init(sourceDBClusterParameterGroupIdentifier: String,
                tags: TagList? = nil,
                targetDBClusterParameterGroupDescription: String,
                targetDBClusterParameterGroupIdentifier: String) {
        self.sourceDBClusterParameterGroupIdentifier = sourceDBClusterParameterGroupIdentifier
        self.tags = tags
        self.targetDBClusterParameterGroupDescription = targetDBClusterParameterGroupDescription
        self.targetDBClusterParameterGroupIdentifier = targetDBClusterParameterGroupIdentifier
    }

    enum CodingKeys: String, CodingKey {
        case sourceDBClusterParameterGroupIdentifier = "SourceDBClusterParameterGroupIdentifier"
        case tags = "Tags"
        case targetDBClusterParameterGroupDescription = "TargetDBClusterParameterGroupDescription"
        case targetDBClusterParameterGroupIdentifier = "TargetDBClusterParameterGroupIdentifier"
    }

    public func validate() throws {
    }
}

public struct CopyDBClusterParameterGroupResult: Codable, Equatable {
    public var dBClusterParameterGroup: DBClusterParameterGroup?

    public init(dBClusterParameterGroup: DBClusterParameterGroup? = nil) {
        self.dBClusterParameterGroup = dBClusterParameterGroup
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterParameterGroup = "DBClusterParameterGroup"
    }

    public func validate() throws {
        try dBClusterParameterGroup?.validate()
    }
}

public struct CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup: Codable, Equatable {
    public var copyDBClusterParameterGroupResult: CopyDBClusterParameterGroupResult

    public init(copyDBClusterParameterGroupResult: CopyDBClusterParameterGroupResult) {
        self.copyDBClusterParameterGroupResult = copyDBClusterParameterGroupResult
    }

    enum CodingKeys: String, CodingKey {
        case copyDBClusterParameterGroupResult = "CopyDBClusterParameterGroupResult"
    }

    public func validate() throws {
        try copyDBClusterParameterGroupResult.validate()
    }
}

public struct CopyDBClusterSnapshotMessage: Codable, Equatable {
    public var copyTags: BooleanOptional?
    public var kmsKeyId: String?
    public var preSignedUrl: String?
    public var sourceDBClusterSnapshotIdentifier: String
    public var tags: TagList?
    public var targetDBClusterSnapshotIdentifier: String

    public init(copyTags: BooleanOptional? = nil,
                kmsKeyId: String? = nil,
                preSignedUrl: String? = nil,
                sourceDBClusterSnapshotIdentifier: String,
                tags: TagList? = nil,
                targetDBClusterSnapshotIdentifier: String) {
        self.copyTags = copyTags
        self.kmsKeyId = kmsKeyId
        self.preSignedUrl = preSignedUrl
        self.sourceDBClusterSnapshotIdentifier = sourceDBClusterSnapshotIdentifier
        self.tags = tags
        self.targetDBClusterSnapshotIdentifier = targetDBClusterSnapshotIdentifier
    }

    enum CodingKeys: String, CodingKey {
        case copyTags = "CopyTags"
        case kmsKeyId = "KmsKeyId"
        case preSignedUrl = "PreSignedUrl"
        case sourceDBClusterSnapshotIdentifier = "SourceDBClusterSnapshotIdentifier"
        case tags = "Tags"
        case targetDBClusterSnapshotIdentifier = "TargetDBClusterSnapshotIdentifier"
    }

    public func validate() throws {
    }
}

public struct CopyDBClusterSnapshotResult: Codable, Equatable {
    public var dBClusterSnapshot: DBClusterSnapshot?

    public init(dBClusterSnapshot: DBClusterSnapshot? = nil) {
        self.dBClusterSnapshot = dBClusterSnapshot
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterSnapshot = "DBClusterSnapshot"
    }

    public func validate() throws {
        try dBClusterSnapshot?.validate()
    }
}

public struct CopyDBClusterSnapshotResultForCopyDBClusterSnapshot: Codable, Equatable {
    public var copyDBClusterSnapshotResult: CopyDBClusterSnapshotResult

    public init(copyDBClusterSnapshotResult: CopyDBClusterSnapshotResult) {
        self.copyDBClusterSnapshotResult = copyDBClusterSnapshotResult
    }

    enum CodingKeys: String, CodingKey {
        case copyDBClusterSnapshotResult = "CopyDBClusterSnapshotResult"
    }

    public func validate() throws {
        try copyDBClusterSnapshotResult.validate()
    }
}

public struct CopyDBParameterGroupMessage: Codable, Equatable {
    public var sourceDBParameterGroupIdentifier: String
    public var tags: TagList?
    public var targetDBParameterGroupDescription: String
    public var targetDBParameterGroupIdentifier: String

    public init(sourceDBParameterGroupIdentifier: String,
                tags: TagList? = nil,
                targetDBParameterGroupDescription: String,
                targetDBParameterGroupIdentifier: String) {
        self.sourceDBParameterGroupIdentifier = sourceDBParameterGroupIdentifier
        self.tags = tags
        self.targetDBParameterGroupDescription = targetDBParameterGroupDescription
        self.targetDBParameterGroupIdentifier = targetDBParameterGroupIdentifier
    }

    enum CodingKeys: String, CodingKey {
        case sourceDBParameterGroupIdentifier = "SourceDBParameterGroupIdentifier"
        case tags = "Tags"
        case targetDBParameterGroupDescription = "TargetDBParameterGroupDescription"
        case targetDBParameterGroupIdentifier = "TargetDBParameterGroupIdentifier"
    }

    public func validate() throws {
    }
}

public struct CopyDBParameterGroupResult: Codable, Equatable {
    public var dBParameterGroup: DBParameterGroup?

    public init(dBParameterGroup: DBParameterGroup? = nil) {
        self.dBParameterGroup = dBParameterGroup
    }

    enum CodingKeys: String, CodingKey {
        case dBParameterGroup = "DBParameterGroup"
    }

    public func validate() throws {
        try dBParameterGroup?.validate()
    }
}

public struct CopyDBParameterGroupResultForCopyDBParameterGroup: Codable, Equatable {
    public var copyDBParameterGroupResult: CopyDBParameterGroupResult

    public init(copyDBParameterGroupResult: CopyDBParameterGroupResult) {
        self.copyDBParameterGroupResult = copyDBParameterGroupResult
    }

    enum CodingKeys: String, CodingKey {
        case copyDBParameterGroupResult = "CopyDBParameterGroupResult"
    }

    public func validate() throws {
        try copyDBParameterGroupResult.validate()
    }
}

public struct CopyDBSnapshotMessage: Codable, Equatable {
    public var copyTags: BooleanOptional?
    public var kmsKeyId: String?
    public var optionGroupName: String?
    public var preSignedUrl: String?
    public var sourceDBSnapshotIdentifier: String
    public var tags: TagList?
    public var targetDBSnapshotIdentifier: String

    public init(copyTags: BooleanOptional? = nil,
                kmsKeyId: String? = nil,
                optionGroupName: String? = nil,
                preSignedUrl: String? = nil,
                sourceDBSnapshotIdentifier: String,
                tags: TagList? = nil,
                targetDBSnapshotIdentifier: String) {
        self.copyTags = copyTags
        self.kmsKeyId = kmsKeyId
        self.optionGroupName = optionGroupName
        self.preSignedUrl = preSignedUrl
        self.sourceDBSnapshotIdentifier = sourceDBSnapshotIdentifier
        self.tags = tags
        self.targetDBSnapshotIdentifier = targetDBSnapshotIdentifier
    }

    enum CodingKeys: String, CodingKey {
        case copyTags = "CopyTags"
        case kmsKeyId = "KmsKeyId"
        case optionGroupName = "OptionGroupName"
        case preSignedUrl = "PreSignedUrl"
        case sourceDBSnapshotIdentifier = "SourceDBSnapshotIdentifier"
        case tags = "Tags"
        case targetDBSnapshotIdentifier = "TargetDBSnapshotIdentifier"
    }

    public func validate() throws {
    }
}

public struct CopyDBSnapshotResult: Codable, Equatable {
    public var dBSnapshot: DBSnapshot?

    public init(dBSnapshot: DBSnapshot? = nil) {
        self.dBSnapshot = dBSnapshot
    }

    enum CodingKeys: String, CodingKey {
        case dBSnapshot = "DBSnapshot"
    }

    public func validate() throws {
        try dBSnapshot?.validate()
    }
}

public struct CopyDBSnapshotResultForCopyDBSnapshot: Codable, Equatable {
    public var copyDBSnapshotResult: CopyDBSnapshotResult

    public init(copyDBSnapshotResult: CopyDBSnapshotResult) {
        self.copyDBSnapshotResult = copyDBSnapshotResult
    }

    enum CodingKeys: String, CodingKey {
        case copyDBSnapshotResult = "CopyDBSnapshotResult"
    }

    public func validate() throws {
        try copyDBSnapshotResult.validate()
    }
}

public struct CopyOptionGroupMessage: Codable, Equatable {
    public var sourceOptionGroupIdentifier: String
    public var tags: TagList?
    public var targetOptionGroupDescription: String
    public var targetOptionGroupIdentifier: String

    public init(sourceOptionGroupIdentifier: String,
                tags: TagList? = nil,
                targetOptionGroupDescription: String,
                targetOptionGroupIdentifier: String) {
        self.sourceOptionGroupIdentifier = sourceOptionGroupIdentifier
        self.tags = tags
        self.targetOptionGroupDescription = targetOptionGroupDescription
        self.targetOptionGroupIdentifier = targetOptionGroupIdentifier
    }

    enum CodingKeys: String, CodingKey {
        case sourceOptionGroupIdentifier = "SourceOptionGroupIdentifier"
        case tags = "Tags"
        case targetOptionGroupDescription = "TargetOptionGroupDescription"
        case targetOptionGroupIdentifier = "TargetOptionGroupIdentifier"
    }

    public func validate() throws {
    }
}

public struct CopyOptionGroupResult: Codable, Equatable {
    public var optionGroup: OptionGroup?

    public init(optionGroup: OptionGroup? = nil) {
        self.optionGroup = optionGroup
    }

    enum CodingKeys: String, CodingKey {
        case optionGroup = "OptionGroup"
    }

    public func validate() throws {
        try optionGroup?.validate()
    }
}

public struct CopyOptionGroupResultForCopyOptionGroup: Codable, Equatable {
    public var copyOptionGroupResult: CopyOptionGroupResult

    public init(copyOptionGroupResult: CopyOptionGroupResult) {
        self.copyOptionGroupResult = copyOptionGroupResult
    }

    enum CodingKeys: String, CodingKey {
        case copyOptionGroupResult = "CopyOptionGroupResult"
    }

    public func validate() throws {
        try copyOptionGroupResult.validate()
    }
}

public struct CreateDBClusterEndpointMessage: Codable, Equatable {
    public var dBClusterEndpointIdentifier: String
    public var dBClusterIdentifier: String
    public var endpointType: String
    public var excludedMembers: StringList?
    public var staticMembers: StringList?

    public init(dBClusterEndpointIdentifier: String,
                dBClusterIdentifier: String,
                endpointType: String,
                excludedMembers: StringList? = nil,
                staticMembers: StringList? = nil) {
        self.dBClusterEndpointIdentifier = dBClusterEndpointIdentifier
        self.dBClusterIdentifier = dBClusterIdentifier
        self.endpointType = endpointType
        self.excludedMembers = excludedMembers
        self.staticMembers = staticMembers
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterEndpointIdentifier = "DBClusterEndpointIdentifier"
        case dBClusterIdentifier = "DBClusterIdentifier"
        case endpointType = "EndpointType"
        case excludedMembers = "ExcludedMembers"
        case staticMembers = "StaticMembers"
    }

    public func validate() throws {
    }
}

public struct CreateDBClusterMessage: Codable, Equatable {
    public var availabilityZones: AvailabilityZones?
    public var backtrackWindow: LongOptional?
    public var backupRetentionPeriod: IntegerOptional?
    public var characterSetName: String?
    public var copyTagsToSnapshot: BooleanOptional?
    public var dBClusterIdentifier: String
    public var dBClusterParameterGroupName: String?
    public var dBSubnetGroupName: String?
    public var databaseName: String?
    public var deletionProtection: BooleanOptional?
    public var enableCloudwatchLogsExports: LogTypeList?
    public var enableIAMDatabaseAuthentication: BooleanOptional?
    public var engine: String
    public var engineMode: String?
    public var engineVersion: String?
    public var globalClusterIdentifier: String?
    public var kmsKeyId: String?
    public var masterUserPassword: String?
    public var masterUsername: String?
    public var optionGroupName: String?
    public var port: IntegerOptional?
    public var preSignedUrl: String?
    public var preferredBackupWindow: String?
    public var preferredMaintenanceWindow: String?
    public var replicationSourceIdentifier: String?
    public var scalingConfiguration: ScalingConfiguration?
    public var storageEncrypted: BooleanOptional?
    public var tags: TagList?
    public var vpcSecurityGroupIds: VpcSecurityGroupIdList?

    public init(availabilityZones: AvailabilityZones? = nil,
                backtrackWindow: LongOptional? = nil,
                backupRetentionPeriod: IntegerOptional? = nil,
                characterSetName: String? = nil,
                copyTagsToSnapshot: BooleanOptional? = nil,
                dBClusterIdentifier: String,
                dBClusterParameterGroupName: String? = nil,
                dBSubnetGroupName: String? = nil,
                databaseName: String? = nil,
                deletionProtection: BooleanOptional? = nil,
                enableCloudwatchLogsExports: LogTypeList? = nil,
                enableIAMDatabaseAuthentication: BooleanOptional? = nil,
                engine: String,
                engineMode: String? = nil,
                engineVersion: String? = nil,
                globalClusterIdentifier: String? = nil,
                kmsKeyId: String? = nil,
                masterUserPassword: String? = nil,
                masterUsername: String? = nil,
                optionGroupName: String? = nil,
                port: IntegerOptional? = nil,
                preSignedUrl: String? = nil,
                preferredBackupWindow: String? = nil,
                preferredMaintenanceWindow: String? = nil,
                replicationSourceIdentifier: String? = nil,
                scalingConfiguration: ScalingConfiguration? = nil,
                storageEncrypted: BooleanOptional? = nil,
                tags: TagList? = nil,
                vpcSecurityGroupIds: VpcSecurityGroupIdList? = nil) {
        self.availabilityZones = availabilityZones
        self.backtrackWindow = backtrackWindow
        self.backupRetentionPeriod = backupRetentionPeriod
        self.characterSetName = characterSetName
        self.copyTagsToSnapshot = copyTagsToSnapshot
        self.dBClusterIdentifier = dBClusterIdentifier
        self.dBClusterParameterGroupName = dBClusterParameterGroupName
        self.dBSubnetGroupName = dBSubnetGroupName
        self.databaseName = databaseName
        self.deletionProtection = deletionProtection
        self.enableCloudwatchLogsExports = enableCloudwatchLogsExports
        self.enableIAMDatabaseAuthentication = enableIAMDatabaseAuthentication
        self.engine = engine
        self.engineMode = engineMode
        self.engineVersion = engineVersion
        self.globalClusterIdentifier = globalClusterIdentifier
        self.kmsKeyId = kmsKeyId
        self.masterUserPassword = masterUserPassword
        self.masterUsername = masterUsername
        self.optionGroupName = optionGroupName
        self.port = port
        self.preSignedUrl = preSignedUrl
        self.preferredBackupWindow = preferredBackupWindow
        self.preferredMaintenanceWindow = preferredMaintenanceWindow
        self.replicationSourceIdentifier = replicationSourceIdentifier
        self.scalingConfiguration = scalingConfiguration
        self.storageEncrypted = storageEncrypted
        self.tags = tags
        self.vpcSecurityGroupIds = vpcSecurityGroupIds
    }

    enum CodingKeys: String, CodingKey {
        case availabilityZones = "AvailabilityZones"
        case backtrackWindow = "BacktrackWindow"
        case backupRetentionPeriod = "BackupRetentionPeriod"
        case characterSetName = "CharacterSetName"
        case copyTagsToSnapshot = "CopyTagsToSnapshot"
        case dBClusterIdentifier = "DBClusterIdentifier"
        case dBClusterParameterGroupName = "DBClusterParameterGroupName"
        case dBSubnetGroupName = "DBSubnetGroupName"
        case databaseName = "DatabaseName"
        case deletionProtection = "DeletionProtection"
        case enableCloudwatchLogsExports = "EnableCloudwatchLogsExports"
        case enableIAMDatabaseAuthentication = "EnableIAMDatabaseAuthentication"
        case engine = "Engine"
        case engineMode = "EngineMode"
        case engineVersion = "EngineVersion"
        case globalClusterIdentifier = "GlobalClusterIdentifier"
        case kmsKeyId = "KmsKeyId"
        case masterUserPassword = "MasterUserPassword"
        case masterUsername = "MasterUsername"
        case optionGroupName = "OptionGroupName"
        case port = "Port"
        case preSignedUrl = "PreSignedUrl"
        case preferredBackupWindow = "PreferredBackupWindow"
        case preferredMaintenanceWindow = "PreferredMaintenanceWindow"
        case replicationSourceIdentifier = "ReplicationSourceIdentifier"
        case scalingConfiguration = "ScalingConfiguration"
        case storageEncrypted = "StorageEncrypted"
        case tags = "Tags"
        case vpcSecurityGroupIds = "VpcSecurityGroupIds"
    }

    public func validate() throws {
        try scalingConfiguration?.validate()
    }
}

public struct CreateDBClusterParameterGroupMessage: Codable, Equatable {
    public var dBClusterParameterGroupName: String
    public var dBParameterGroupFamily: String
    public var description: String
    public var tags: TagList?

    public init(dBClusterParameterGroupName: String,
                dBParameterGroupFamily: String,
                description: String,
                tags: TagList? = nil) {
        self.dBClusterParameterGroupName = dBClusterParameterGroupName
        self.dBParameterGroupFamily = dBParameterGroupFamily
        self.description = description
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterParameterGroupName = "DBClusterParameterGroupName"
        case dBParameterGroupFamily = "DBParameterGroupFamily"
        case description = "Description"
        case tags = "Tags"
    }

    public func validate() throws {
    }
}

public struct CreateDBClusterParameterGroupResult: Codable, Equatable {
    public var dBClusterParameterGroup: DBClusterParameterGroup?

    public init(dBClusterParameterGroup: DBClusterParameterGroup? = nil) {
        self.dBClusterParameterGroup = dBClusterParameterGroup
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterParameterGroup = "DBClusterParameterGroup"
    }

    public func validate() throws {
        try dBClusterParameterGroup?.validate()
    }
}

public struct CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup: Codable, Equatable {
    public var createDBClusterParameterGroupResult: CreateDBClusterParameterGroupResult

    public init(createDBClusterParameterGroupResult: CreateDBClusterParameterGroupResult) {
        self.createDBClusterParameterGroupResult = createDBClusterParameterGroupResult
    }

    enum CodingKeys: String, CodingKey {
        case createDBClusterParameterGroupResult = "CreateDBClusterParameterGroupResult"
    }

    public func validate() throws {
        try createDBClusterParameterGroupResult.validate()
    }
}

public struct CreateDBClusterResult: Codable, Equatable {
    public var dBCluster: DBCluster?

    public init(dBCluster: DBCluster? = nil) {
        self.dBCluster = dBCluster
    }

    enum CodingKeys: String, CodingKey {
        case dBCluster = "DBCluster"
    }

    public func validate() throws {
        try dBCluster?.validate()
    }
}

public struct CreateDBClusterResultForCreateDBCluster: Codable, Equatable {
    public var createDBClusterResult: CreateDBClusterResult

    public init(createDBClusterResult: CreateDBClusterResult) {
        self.createDBClusterResult = createDBClusterResult
    }

    enum CodingKeys: String, CodingKey {
        case createDBClusterResult = "CreateDBClusterResult"
    }

    public func validate() throws {
        try createDBClusterResult.validate()
    }
}

public struct CreateDBClusterSnapshotMessage: Codable, Equatable {
    public var dBClusterIdentifier: String
    public var dBClusterSnapshotIdentifier: String
    public var tags: TagList?

    public init(dBClusterIdentifier: String,
                dBClusterSnapshotIdentifier: String,
                tags: TagList? = nil) {
        self.dBClusterIdentifier = dBClusterIdentifier
        self.dBClusterSnapshotIdentifier = dBClusterSnapshotIdentifier
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterIdentifier = "DBClusterIdentifier"
        case dBClusterSnapshotIdentifier = "DBClusterSnapshotIdentifier"
        case tags = "Tags"
    }

    public func validate() throws {
    }
}

public struct CreateDBClusterSnapshotResult: Codable, Equatable {
    public var dBClusterSnapshot: DBClusterSnapshot?

    public init(dBClusterSnapshot: DBClusterSnapshot? = nil) {
        self.dBClusterSnapshot = dBClusterSnapshot
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterSnapshot = "DBClusterSnapshot"
    }

    public func validate() throws {
        try dBClusterSnapshot?.validate()
    }
}

public struct CreateDBClusterSnapshotResultForCreateDBClusterSnapshot: Codable, Equatable {
    public var createDBClusterSnapshotResult: CreateDBClusterSnapshotResult

    public init(createDBClusterSnapshotResult: CreateDBClusterSnapshotResult) {
        self.createDBClusterSnapshotResult = createDBClusterSnapshotResult
    }

    enum CodingKeys: String, CodingKey {
        case createDBClusterSnapshotResult = "CreateDBClusterSnapshotResult"
    }

    public func validate() throws {
        try createDBClusterSnapshotResult.validate()
    }
}

public struct CreateDBInstanceMessage: Codable, Equatable {
    public var allocatedStorage: IntegerOptional?
    public var autoMinorVersionUpgrade: BooleanOptional?
    public var availabilityZone: String?
    public var backupRetentionPeriod: IntegerOptional?
    public var characterSetName: String?
    public var copyTagsToSnapshot: BooleanOptional?
    public var dBClusterIdentifier: String?
    public var dBInstanceClass: String
    public var dBInstanceIdentifier: String
    public var dBName: String?
    public var dBParameterGroupName: String?
    public var dBSecurityGroups: DBSecurityGroupNameList?
    public var dBSubnetGroupName: String?
    public var deletionProtection: BooleanOptional?
    public var domain: String?
    public var domainIAMRoleName: String?
    public var enableCloudwatchLogsExports: LogTypeList?
    public var enableIAMDatabaseAuthentication: BooleanOptional?
    public var enablePerformanceInsights: BooleanOptional?
    public var engine: String
    public var engineVersion: String?
    public var iops: IntegerOptional?
    public var kmsKeyId: String?
    public var licenseModel: String?
    public var masterUserPassword: String?
    public var masterUsername: String?
    public var monitoringInterval: IntegerOptional?
    public var monitoringRoleArn: String?
    public var multiAZ: BooleanOptional?
    public var optionGroupName: String?
    public var performanceInsightsKMSKeyId: String?
    public var performanceInsightsRetentionPeriod: IntegerOptional?
    public var port: IntegerOptional?
    public var preferredBackupWindow: String?
    public var preferredMaintenanceWindow: String?
    public var processorFeatures: ProcessorFeatureList?
    public var promotionTier: IntegerOptional?
    public var publiclyAccessible: BooleanOptional?
    public var storageEncrypted: BooleanOptional?
    public var storageType: String?
    public var tags: TagList?
    public var tdeCredentialArn: String?
    public var tdeCredentialPassword: String?
    public var timezone: String?
    public var vpcSecurityGroupIds: VpcSecurityGroupIdList?

    public init(allocatedStorage: IntegerOptional? = nil,
                autoMinorVersionUpgrade: BooleanOptional? = nil,
                availabilityZone: String? = nil,
                backupRetentionPeriod: IntegerOptional? = nil,
                characterSetName: String? = nil,
                copyTagsToSnapshot: BooleanOptional? = nil,
                dBClusterIdentifier: String? = nil,
                dBInstanceClass: String,
                dBInstanceIdentifier: String,
                dBName: String? = nil,
                dBParameterGroupName: String? = nil,
                dBSecurityGroups: DBSecurityGroupNameList? = nil,
                dBSubnetGroupName: String? = nil,
                deletionProtection: BooleanOptional? = nil,
                domain: String? = nil,
                domainIAMRoleName: String? = nil,
                enableCloudwatchLogsExports: LogTypeList? = nil,
                enableIAMDatabaseAuthentication: BooleanOptional? = nil,
                enablePerformanceInsights: BooleanOptional? = nil,
                engine: String,
                engineVersion: String? = nil,
                iops: IntegerOptional? = nil,
                kmsKeyId: String? = nil,
                licenseModel: String? = nil,
                masterUserPassword: String? = nil,
                masterUsername: String? = nil,
                monitoringInterval: IntegerOptional? = nil,
                monitoringRoleArn: String? = nil,
                multiAZ: BooleanOptional? = nil,
                optionGroupName: String? = nil,
                performanceInsightsKMSKeyId: String? = nil,
                performanceInsightsRetentionPeriod: IntegerOptional? = nil,
                port: IntegerOptional? = nil,
                preferredBackupWindow: String? = nil,
                preferredMaintenanceWindow: String? = nil,
                processorFeatures: ProcessorFeatureList? = nil,
                promotionTier: IntegerOptional? = nil,
                publiclyAccessible: BooleanOptional? = nil,
                storageEncrypted: BooleanOptional? = nil,
                storageType: String? = nil,
                tags: TagList? = nil,
                tdeCredentialArn: String? = nil,
                tdeCredentialPassword: String? = nil,
                timezone: String? = nil,
                vpcSecurityGroupIds: VpcSecurityGroupIdList? = nil) {
        self.allocatedStorage = allocatedStorage
        self.autoMinorVersionUpgrade = autoMinorVersionUpgrade
        self.availabilityZone = availabilityZone
        self.backupRetentionPeriod = backupRetentionPeriod
        self.characterSetName = characterSetName
        self.copyTagsToSnapshot = copyTagsToSnapshot
        self.dBClusterIdentifier = dBClusterIdentifier
        self.dBInstanceClass = dBInstanceClass
        self.dBInstanceIdentifier = dBInstanceIdentifier
        self.dBName = dBName
        self.dBParameterGroupName = dBParameterGroupName
        self.dBSecurityGroups = dBSecurityGroups
        self.dBSubnetGroupName = dBSubnetGroupName
        self.deletionProtection = deletionProtection
        self.domain = domain
        self.domainIAMRoleName = domainIAMRoleName
        self.enableCloudwatchLogsExports = enableCloudwatchLogsExports
        self.enableIAMDatabaseAuthentication = enableIAMDatabaseAuthentication
        self.enablePerformanceInsights = enablePerformanceInsights
        self.engine = engine
        self.engineVersion = engineVersion
        self.iops = iops
        self.kmsKeyId = kmsKeyId
        self.licenseModel = licenseModel
        self.masterUserPassword = masterUserPassword
        self.masterUsername = masterUsername
        self.monitoringInterval = monitoringInterval
        self.monitoringRoleArn = monitoringRoleArn
        self.multiAZ = multiAZ
        self.optionGroupName = optionGroupName
        self.performanceInsightsKMSKeyId = performanceInsightsKMSKeyId
        self.performanceInsightsRetentionPeriod = performanceInsightsRetentionPeriod
        self.port = port
        self.preferredBackupWindow = preferredBackupWindow
        self.preferredMaintenanceWindow = preferredMaintenanceWindow
        self.processorFeatures = processorFeatures
        self.promotionTier = promotionTier
        self.publiclyAccessible = publiclyAccessible
        self.storageEncrypted = storageEncrypted
        self.storageType = storageType
        self.tags = tags
        self.tdeCredentialArn = tdeCredentialArn
        self.tdeCredentialPassword = tdeCredentialPassword
        self.timezone = timezone
        self.vpcSecurityGroupIds = vpcSecurityGroupIds
    }

    enum CodingKeys: String, CodingKey {
        case allocatedStorage = "AllocatedStorage"
        case autoMinorVersionUpgrade = "AutoMinorVersionUpgrade"
        case availabilityZone = "AvailabilityZone"
        case backupRetentionPeriod = "BackupRetentionPeriod"
        case characterSetName = "CharacterSetName"
        case copyTagsToSnapshot = "CopyTagsToSnapshot"
        case dBClusterIdentifier = "DBClusterIdentifier"
        case dBInstanceClass = "DBInstanceClass"
        case dBInstanceIdentifier = "DBInstanceIdentifier"
        case dBName = "DBName"
        case dBParameterGroupName = "DBParameterGroupName"
        case dBSecurityGroups = "DBSecurityGroups"
        case dBSubnetGroupName = "DBSubnetGroupName"
        case deletionProtection = "DeletionProtection"
        case domain = "Domain"
        case domainIAMRoleName = "DomainIAMRoleName"
        case enableCloudwatchLogsExports = "EnableCloudwatchLogsExports"
        case enableIAMDatabaseAuthentication = "EnableIAMDatabaseAuthentication"
        case enablePerformanceInsights = "EnablePerformanceInsights"
        case engine = "Engine"
        case engineVersion = "EngineVersion"
        case iops = "Iops"
        case kmsKeyId = "KmsKeyId"
        case licenseModel = "LicenseModel"
        case masterUserPassword = "MasterUserPassword"
        case masterUsername = "MasterUsername"
        case monitoringInterval = "MonitoringInterval"
        case monitoringRoleArn = "MonitoringRoleArn"
        case multiAZ = "MultiAZ"
        case optionGroupName = "OptionGroupName"
        case performanceInsightsKMSKeyId = "PerformanceInsightsKMSKeyId"
        case performanceInsightsRetentionPeriod = "PerformanceInsightsRetentionPeriod"
        case port = "Port"
        case preferredBackupWindow = "PreferredBackupWindow"
        case preferredMaintenanceWindow = "PreferredMaintenanceWindow"
        case processorFeatures = "ProcessorFeatures"
        case promotionTier = "PromotionTier"
        case publiclyAccessible = "PubliclyAccessible"
        case storageEncrypted = "StorageEncrypted"
        case storageType = "StorageType"
        case tags = "Tags"
        case tdeCredentialArn = "TdeCredentialArn"
        case tdeCredentialPassword = "TdeCredentialPassword"
        case timezone = "Timezone"
        case vpcSecurityGroupIds = "VpcSecurityGroupIds"
    }

    public func validate() throws {
    }
}

public struct CreateDBInstanceReadReplicaMessage: Codable, Equatable {
    public var autoMinorVersionUpgrade: BooleanOptional?
    public var availabilityZone: String?
    public var copyTagsToSnapshot: BooleanOptional?
    public var dBInstanceClass: String?
    public var dBInstanceIdentifier: String
    public var dBSubnetGroupName: String?
    public var deletionProtection: BooleanOptional?
    public var enableCloudwatchLogsExports: LogTypeList?
    public var enableIAMDatabaseAuthentication: BooleanOptional?
    public var enablePerformanceInsights: BooleanOptional?
    public var iops: IntegerOptional?
    public var kmsKeyId: String?
    public var monitoringInterval: IntegerOptional?
    public var monitoringRoleArn: String?
    public var multiAZ: BooleanOptional?
    public var optionGroupName: String?
    public var performanceInsightsKMSKeyId: String?
    public var performanceInsightsRetentionPeriod: IntegerOptional?
    public var port: IntegerOptional?
    public var preSignedUrl: String?
    public var processorFeatures: ProcessorFeatureList?
    public var publiclyAccessible: BooleanOptional?
    public var sourceDBInstanceIdentifier: String
    public var storageType: String?
    public var tags: TagList?
    public var useDefaultProcessorFeatures: BooleanOptional?
    public var vpcSecurityGroupIds: VpcSecurityGroupIdList?

    public init(autoMinorVersionUpgrade: BooleanOptional? = nil,
                availabilityZone: String? = nil,
                copyTagsToSnapshot: BooleanOptional? = nil,
                dBInstanceClass: String? = nil,
                dBInstanceIdentifier: String,
                dBSubnetGroupName: String? = nil,
                deletionProtection: BooleanOptional? = nil,
                enableCloudwatchLogsExports: LogTypeList? = nil,
                enableIAMDatabaseAuthentication: BooleanOptional? = nil,
                enablePerformanceInsights: BooleanOptional? = nil,
                iops: IntegerOptional? = nil,
                kmsKeyId: String? = nil,
                monitoringInterval: IntegerOptional? = nil,
                monitoringRoleArn: String? = nil,
                multiAZ: BooleanOptional? = nil,
                optionGroupName: String? = nil,
                performanceInsightsKMSKeyId: String? = nil,
                performanceInsightsRetentionPeriod: IntegerOptional? = nil,
                port: IntegerOptional? = nil,
                preSignedUrl: String? = nil,
                processorFeatures: ProcessorFeatureList? = nil,
                publiclyAccessible: BooleanOptional? = nil,
                sourceDBInstanceIdentifier: String,
                storageType: String? = nil,
                tags: TagList? = nil,
                useDefaultProcessorFeatures: BooleanOptional? = nil,
                vpcSecurityGroupIds: VpcSecurityGroupIdList? = nil) {
        self.autoMinorVersionUpgrade = autoMinorVersionUpgrade
        self.availabilityZone = availabilityZone
        self.copyTagsToSnapshot = copyTagsToSnapshot
        self.dBInstanceClass = dBInstanceClass
        self.dBInstanceIdentifier = dBInstanceIdentifier
        self.dBSubnetGroupName = dBSubnetGroupName
        self.deletionProtection = deletionProtection
        self.enableCloudwatchLogsExports = enableCloudwatchLogsExports
        self.enableIAMDatabaseAuthentication = enableIAMDatabaseAuthentication
        self.enablePerformanceInsights = enablePerformanceInsights
        self.iops = iops
        self.kmsKeyId = kmsKeyId
        self.monitoringInterval = monitoringInterval
        self.monitoringRoleArn = monitoringRoleArn
        self.multiAZ = multiAZ
        self.optionGroupName = optionGroupName
        self.performanceInsightsKMSKeyId = performanceInsightsKMSKeyId
        self.performanceInsightsRetentionPeriod = performanceInsightsRetentionPeriod
        self.port = port
        self.preSignedUrl = preSignedUrl
        self.processorFeatures = processorFeatures
        self.publiclyAccessible = publiclyAccessible
        self.sourceDBInstanceIdentifier = sourceDBInstanceIdentifier
        self.storageType = storageType
        self.tags = tags
        self.useDefaultProcessorFeatures = useDefaultProcessorFeatures
        self.vpcSecurityGroupIds = vpcSecurityGroupIds
    }

    enum CodingKeys: String, CodingKey {
        case autoMinorVersionUpgrade = "AutoMinorVersionUpgrade"
        case availabilityZone = "AvailabilityZone"
        case copyTagsToSnapshot = "CopyTagsToSnapshot"
        case dBInstanceClass = "DBInstanceClass"
        case dBInstanceIdentifier = "DBInstanceIdentifier"
        case dBSubnetGroupName = "DBSubnetGroupName"
        case deletionProtection = "DeletionProtection"
        case enableCloudwatchLogsExports = "EnableCloudwatchLogsExports"
        case enableIAMDatabaseAuthentication = "EnableIAMDatabaseAuthentication"
        case enablePerformanceInsights = "EnablePerformanceInsights"
        case iops = "Iops"
        case kmsKeyId = "KmsKeyId"
        case monitoringInterval = "MonitoringInterval"
        case monitoringRoleArn = "MonitoringRoleArn"
        case multiAZ = "MultiAZ"
        case optionGroupName = "OptionGroupName"
        case performanceInsightsKMSKeyId = "PerformanceInsightsKMSKeyId"
        case performanceInsightsRetentionPeriod = "PerformanceInsightsRetentionPeriod"
        case port = "Port"
        case preSignedUrl = "PreSignedUrl"
        case processorFeatures = "ProcessorFeatures"
        case publiclyAccessible = "PubliclyAccessible"
        case sourceDBInstanceIdentifier = "SourceDBInstanceIdentifier"
        case storageType = "StorageType"
        case tags = "Tags"
        case useDefaultProcessorFeatures = "UseDefaultProcessorFeatures"
        case vpcSecurityGroupIds = "VpcSecurityGroupIds"
    }

    public func validate() throws {
    }
}

public struct CreateDBInstanceReadReplicaResult: Codable, Equatable {
    public var dBInstance: DBInstance?

    public init(dBInstance: DBInstance? = nil) {
        self.dBInstance = dBInstance
    }

    enum CodingKeys: String, CodingKey {
        case dBInstance = "DBInstance"
    }

    public func validate() throws {
        try dBInstance?.validate()
    }
}

public struct CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica: Codable, Equatable {
    public var createDBInstanceReadReplicaResult: CreateDBInstanceReadReplicaResult

    public init(createDBInstanceReadReplicaResult: CreateDBInstanceReadReplicaResult) {
        self.createDBInstanceReadReplicaResult = createDBInstanceReadReplicaResult
    }

    enum CodingKeys: String, CodingKey {
        case createDBInstanceReadReplicaResult = "CreateDBInstanceReadReplicaResult"
    }

    public func validate() throws {
        try createDBInstanceReadReplicaResult.validate()
    }
}

public struct CreateDBInstanceResult: Codable, Equatable {
    public var dBInstance: DBInstance?

    public init(dBInstance: DBInstance? = nil) {
        self.dBInstance = dBInstance
    }

    enum CodingKeys: String, CodingKey {
        case dBInstance = "DBInstance"
    }

    public func validate() throws {
        try dBInstance?.validate()
    }
}

public struct CreateDBInstanceResultForCreateDBInstance: Codable, Equatable {
    public var createDBInstanceResult: CreateDBInstanceResult

    public init(createDBInstanceResult: CreateDBInstanceResult) {
        self.createDBInstanceResult = createDBInstanceResult
    }

    enum CodingKeys: String, CodingKey {
        case createDBInstanceResult = "CreateDBInstanceResult"
    }

    public func validate() throws {
        try createDBInstanceResult.validate()
    }
}

public struct CreateDBParameterGroupMessage: Codable, Equatable {
    public var dBParameterGroupFamily: String
    public var dBParameterGroupName: String
    public var description: String
    public var tags: TagList?

    public init(dBParameterGroupFamily: String,
                dBParameterGroupName: String,
                description: String,
                tags: TagList? = nil) {
        self.dBParameterGroupFamily = dBParameterGroupFamily
        self.dBParameterGroupName = dBParameterGroupName
        self.description = description
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case dBParameterGroupFamily = "DBParameterGroupFamily"
        case dBParameterGroupName = "DBParameterGroupName"
        case description = "Description"
        case tags = "Tags"
    }

    public func validate() throws {
    }
}

public struct CreateDBParameterGroupResult: Codable, Equatable {
    public var dBParameterGroup: DBParameterGroup?

    public init(dBParameterGroup: DBParameterGroup? = nil) {
        self.dBParameterGroup = dBParameterGroup
    }

    enum CodingKeys: String, CodingKey {
        case dBParameterGroup = "DBParameterGroup"
    }

    public func validate() throws {
        try dBParameterGroup?.validate()
    }
}

public struct CreateDBParameterGroupResultForCreateDBParameterGroup: Codable, Equatable {
    public var createDBParameterGroupResult: CreateDBParameterGroupResult

    public init(createDBParameterGroupResult: CreateDBParameterGroupResult) {
        self.createDBParameterGroupResult = createDBParameterGroupResult
    }

    enum CodingKeys: String, CodingKey {
        case createDBParameterGroupResult = "CreateDBParameterGroupResult"
    }

    public func validate() throws {
        try createDBParameterGroupResult.validate()
    }
}

public struct CreateDBSecurityGroupMessage: Codable, Equatable {
    public var dBSecurityGroupDescription: String
    public var dBSecurityGroupName: String
    public var tags: TagList?

    public init(dBSecurityGroupDescription: String,
                dBSecurityGroupName: String,
                tags: TagList? = nil) {
        self.dBSecurityGroupDescription = dBSecurityGroupDescription
        self.dBSecurityGroupName = dBSecurityGroupName
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case dBSecurityGroupDescription = "DBSecurityGroupDescription"
        case dBSecurityGroupName = "DBSecurityGroupName"
        case tags = "Tags"
    }

    public func validate() throws {
    }
}

public struct CreateDBSecurityGroupResult: Codable, Equatable {
    public var dBSecurityGroup: DBSecurityGroup?

    public init(dBSecurityGroup: DBSecurityGroup? = nil) {
        self.dBSecurityGroup = dBSecurityGroup
    }

    enum CodingKeys: String, CodingKey {
        case dBSecurityGroup = "DBSecurityGroup"
    }

    public func validate() throws {
        try dBSecurityGroup?.validate()
    }
}

public struct CreateDBSecurityGroupResultForCreateDBSecurityGroup: Codable, Equatable {
    public var createDBSecurityGroupResult: CreateDBSecurityGroupResult

    public init(createDBSecurityGroupResult: CreateDBSecurityGroupResult) {
        self.createDBSecurityGroupResult = createDBSecurityGroupResult
    }

    enum CodingKeys: String, CodingKey {
        case createDBSecurityGroupResult = "CreateDBSecurityGroupResult"
    }

    public func validate() throws {
        try createDBSecurityGroupResult.validate()
    }
}

public struct CreateDBSnapshotMessage: Codable, Equatable {
    public var dBInstanceIdentifier: String
    public var dBSnapshotIdentifier: String
    public var tags: TagList?

    public init(dBInstanceIdentifier: String,
                dBSnapshotIdentifier: String,
                tags: TagList? = nil) {
        self.dBInstanceIdentifier = dBInstanceIdentifier
        self.dBSnapshotIdentifier = dBSnapshotIdentifier
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case dBInstanceIdentifier = "DBInstanceIdentifier"
        case dBSnapshotIdentifier = "DBSnapshotIdentifier"
        case tags = "Tags"
    }

    public func validate() throws {
    }
}

public struct CreateDBSnapshotResult: Codable, Equatable {
    public var dBSnapshot: DBSnapshot?

    public init(dBSnapshot: DBSnapshot? = nil) {
        self.dBSnapshot = dBSnapshot
    }

    enum CodingKeys: String, CodingKey {
        case dBSnapshot = "DBSnapshot"
    }

    public func validate() throws {
        try dBSnapshot?.validate()
    }
}

public struct CreateDBSnapshotResultForCreateDBSnapshot: Codable, Equatable {
    public var createDBSnapshotResult: CreateDBSnapshotResult

    public init(createDBSnapshotResult: CreateDBSnapshotResult) {
        self.createDBSnapshotResult = createDBSnapshotResult
    }

    enum CodingKeys: String, CodingKey {
        case createDBSnapshotResult = "CreateDBSnapshotResult"
    }

    public func validate() throws {
        try createDBSnapshotResult.validate()
    }
}

public struct CreateDBSubnetGroupMessage: Codable, Equatable {
    public var dBSubnetGroupDescription: String
    public var dBSubnetGroupName: String
    public var subnetIds: SubnetIdentifierList
    public var tags: TagList?

    public init(dBSubnetGroupDescription: String,
                dBSubnetGroupName: String,
                subnetIds: SubnetIdentifierList,
                tags: TagList? = nil) {
        self.dBSubnetGroupDescription = dBSubnetGroupDescription
        self.dBSubnetGroupName = dBSubnetGroupName
        self.subnetIds = subnetIds
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case dBSubnetGroupDescription = "DBSubnetGroupDescription"
        case dBSubnetGroupName = "DBSubnetGroupName"
        case subnetIds = "SubnetIds"
        case tags = "Tags"
    }

    public func validate() throws {
    }
}

public struct CreateDBSubnetGroupResult: Codable, Equatable {
    public var dBSubnetGroup: DBSubnetGroup?

    public init(dBSubnetGroup: DBSubnetGroup? = nil) {
        self.dBSubnetGroup = dBSubnetGroup
    }

    enum CodingKeys: String, CodingKey {
        case dBSubnetGroup = "DBSubnetGroup"
    }

    public func validate() throws {
        try dBSubnetGroup?.validate()
    }
}

public struct CreateDBSubnetGroupResultForCreateDBSubnetGroup: Codable, Equatable {
    public var createDBSubnetGroupResult: CreateDBSubnetGroupResult

    public init(createDBSubnetGroupResult: CreateDBSubnetGroupResult) {
        self.createDBSubnetGroupResult = createDBSubnetGroupResult
    }

    enum CodingKeys: String, CodingKey {
        case createDBSubnetGroupResult = "CreateDBSubnetGroupResult"
    }

    public func validate() throws {
        try createDBSubnetGroupResult.validate()
    }
}

public struct CreateEventSubscriptionMessage: Codable, Equatable {
    public var enabled: BooleanOptional?
    public var eventCategories: EventCategoriesList?
    public var snsTopicArn: String
    public var sourceIds: SourceIdsList?
    public var sourceType: String?
    public var subscriptionName: String
    public var tags: TagList?

    public init(enabled: BooleanOptional? = nil,
                eventCategories: EventCategoriesList? = nil,
                snsTopicArn: String,
                sourceIds: SourceIdsList? = nil,
                sourceType: String? = nil,
                subscriptionName: String,
                tags: TagList? = nil) {
        self.enabled = enabled
        self.eventCategories = eventCategories
        self.snsTopicArn = snsTopicArn
        self.sourceIds = sourceIds
        self.sourceType = sourceType
        self.subscriptionName = subscriptionName
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case enabled = "Enabled"
        case eventCategories = "EventCategories"
        case snsTopicArn = "SnsTopicArn"
        case sourceIds = "SourceIds"
        case sourceType = "SourceType"
        case subscriptionName = "SubscriptionName"
        case tags = "Tags"
    }

    public func validate() throws {
    }
}

public struct CreateEventSubscriptionResult: Codable, Equatable {
    public var eventSubscription: EventSubscription?

    public init(eventSubscription: EventSubscription? = nil) {
        self.eventSubscription = eventSubscription
    }

    enum CodingKeys: String, CodingKey {
        case eventSubscription = "EventSubscription"
    }

    public func validate() throws {
        try eventSubscription?.validate()
    }
}

public struct CreateEventSubscriptionResultForCreateEventSubscription: Codable, Equatable {
    public var createEventSubscriptionResult: CreateEventSubscriptionResult

    public init(createEventSubscriptionResult: CreateEventSubscriptionResult) {
        self.createEventSubscriptionResult = createEventSubscriptionResult
    }

    enum CodingKeys: String, CodingKey {
        case createEventSubscriptionResult = "CreateEventSubscriptionResult"
    }

    public func validate() throws {
        try createEventSubscriptionResult.validate()
    }
}

public struct CreateGlobalClusterMessage: Codable, Equatable {
    public var databaseName: String?
    public var deletionProtection: BooleanOptional?
    public var engine: String?
    public var engineVersion: String?
    public var globalClusterIdentifier: String?
    public var sourceDBClusterIdentifier: String?
    public var storageEncrypted: BooleanOptional?

    public init(databaseName: String? = nil,
                deletionProtection: BooleanOptional? = nil,
                engine: String? = nil,
                engineVersion: String? = nil,
                globalClusterIdentifier: String? = nil,
                sourceDBClusterIdentifier: String? = nil,
                storageEncrypted: BooleanOptional? = nil) {
        self.databaseName = databaseName
        self.deletionProtection = deletionProtection
        self.engine = engine
        self.engineVersion = engineVersion
        self.globalClusterIdentifier = globalClusterIdentifier
        self.sourceDBClusterIdentifier = sourceDBClusterIdentifier
        self.storageEncrypted = storageEncrypted
    }

    enum CodingKeys: String, CodingKey {
        case databaseName = "DatabaseName"
        case deletionProtection = "DeletionProtection"
        case engine = "Engine"
        case engineVersion = "EngineVersion"
        case globalClusterIdentifier = "GlobalClusterIdentifier"
        case sourceDBClusterIdentifier = "SourceDBClusterIdentifier"
        case storageEncrypted = "StorageEncrypted"
    }

    public func validate() throws {
    }
}

public struct CreateGlobalClusterResult: Codable, Equatable {
    public var globalCluster: GlobalCluster?

    public init(globalCluster: GlobalCluster? = nil) {
        self.globalCluster = globalCluster
    }

    enum CodingKeys: String, CodingKey {
        case globalCluster = "GlobalCluster"
    }

    public func validate() throws {
        try globalCluster?.validate()
    }
}

public struct CreateGlobalClusterResultForCreateGlobalCluster: Codable, Equatable {
    public var createGlobalClusterResult: CreateGlobalClusterResult

    public init(createGlobalClusterResult: CreateGlobalClusterResult) {
        self.createGlobalClusterResult = createGlobalClusterResult
    }

    enum CodingKeys: String, CodingKey {
        case createGlobalClusterResult = "CreateGlobalClusterResult"
    }

    public func validate() throws {
        try createGlobalClusterResult.validate()
    }
}

public struct CreateOptionGroupMessage: Codable, Equatable {
    public var engineName: String
    public var majorEngineVersion: String
    public var optionGroupDescription: String
    public var optionGroupName: String
    public var tags: TagList?

    public init(engineName: String,
                majorEngineVersion: String,
                optionGroupDescription: String,
                optionGroupName: String,
                tags: TagList? = nil) {
        self.engineName = engineName
        self.majorEngineVersion = majorEngineVersion
        self.optionGroupDescription = optionGroupDescription
        self.optionGroupName = optionGroupName
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case engineName = "EngineName"
        case majorEngineVersion = "MajorEngineVersion"
        case optionGroupDescription = "OptionGroupDescription"
        case optionGroupName = "OptionGroupName"
        case tags = "Tags"
    }

    public func validate() throws {
    }
}

public struct CreateOptionGroupResult: Codable, Equatable {
    public var optionGroup: OptionGroup?

    public init(optionGroup: OptionGroup? = nil) {
        self.optionGroup = optionGroup
    }

    enum CodingKeys: String, CodingKey {
        case optionGroup = "OptionGroup"
    }

    public func validate() throws {
        try optionGroup?.validate()
    }
}

public struct CreateOptionGroupResultForCreateOptionGroup: Codable, Equatable {
    public var createOptionGroupResult: CreateOptionGroupResult

    public init(createOptionGroupResult: CreateOptionGroupResult) {
        self.createOptionGroupResult = createOptionGroupResult
    }

    enum CodingKeys: String, CodingKey {
        case createOptionGroupResult = "CreateOptionGroupResult"
    }

    public func validate() throws {
        try createOptionGroupResult.validate()
    }
}

public struct DBCluster: Codable, Equatable {
    public var allocatedStorage: IntegerOptional?
    public var associatedRoles: DBClusterRoles?
    public var availabilityZones: AvailabilityZones?
    public var backtrackConsumedChangeRecords: LongOptional?
    public var backtrackWindow: LongOptional?
    public var backupRetentionPeriod: IntegerOptional?
    public var capacity: IntegerOptional?
    public var characterSetName: String?
    public var cloneGroupId: String?
    public var clusterCreateTime: TStamp?
    public var copyTagsToSnapshot: Boolean?
    public var customEndpoints: StringList?
    public var dBClusterArn: String?
    public var dBClusterIdentifier: String?
    public var dBClusterMembers: DBClusterMemberList?
    public var dBClusterOptionGroupMemberships: DBClusterOptionGroupMemberships?
    public var dBClusterParameterGroup: String?
    public var dBSubnetGroup: String?
    public var databaseName: String?
    public var dbClusterResourceId: String?
    public var deletionProtection: Boolean?
    public var earliestBacktrackTime: TStamp?
    public var earliestRestorableTime: TStamp?
    public var enabledCloudwatchLogsExports: LogTypeList?
    public var endpoint: String?
    public var engine: String?
    public var engineMode: String?
    public var engineVersion: String?
    public var hostedZoneId: String?
    public var httpEndpointEnabled: Boolean?
    public var iAMDatabaseAuthenticationEnabled: Boolean?
    public var kmsKeyId: String?
    public var latestRestorableTime: TStamp?
    public var masterUsername: String?
    public var multiAZ: Boolean?
    public var percentProgress: String?
    public var port: IntegerOptional?
    public var preferredBackupWindow: String?
    public var preferredMaintenanceWindow: String?
    public var readReplicaIdentifiers: ReadReplicaIdentifierList?
    public var readerEndpoint: String?
    public var replicationSourceIdentifier: String?
    public var scalingConfigurationInfo: ScalingConfigurationInfo?
    public var status: String?
    public var storageEncrypted: Boolean?
    public var vpcSecurityGroups: VpcSecurityGroupMembershipList?

    public init(allocatedStorage: IntegerOptional? = nil,
                associatedRoles: DBClusterRoles? = nil,
                availabilityZones: AvailabilityZones? = nil,
                backtrackConsumedChangeRecords: LongOptional? = nil,
                backtrackWindow: LongOptional? = nil,
                backupRetentionPeriod: IntegerOptional? = nil,
                capacity: IntegerOptional? = nil,
                characterSetName: String? = nil,
                cloneGroupId: String? = nil,
                clusterCreateTime: TStamp? = nil,
                copyTagsToSnapshot: Boolean? = nil,
                customEndpoints: StringList? = nil,
                dBClusterArn: String? = nil,
                dBClusterIdentifier: String? = nil,
                dBClusterMembers: DBClusterMemberList? = nil,
                dBClusterOptionGroupMemberships: DBClusterOptionGroupMemberships? = nil,
                dBClusterParameterGroup: String? = nil,
                dBSubnetGroup: String? = nil,
                databaseName: String? = nil,
                dbClusterResourceId: String? = nil,
                deletionProtection: Boolean? = nil,
                earliestBacktrackTime: TStamp? = nil,
                earliestRestorableTime: TStamp? = nil,
                enabledCloudwatchLogsExports: LogTypeList? = nil,
                endpoint: String? = nil,
                engine: String? = nil,
                engineMode: String? = nil,
                engineVersion: String? = nil,
                hostedZoneId: String? = nil,
                httpEndpointEnabled: Boolean? = nil,
                iAMDatabaseAuthenticationEnabled: Boolean? = nil,
                kmsKeyId: String? = nil,
                latestRestorableTime: TStamp? = nil,
                masterUsername: String? = nil,
                multiAZ: Boolean? = nil,
                percentProgress: String? = nil,
                port: IntegerOptional? = nil,
                preferredBackupWindow: String? = nil,
                preferredMaintenanceWindow: String? = nil,
                readReplicaIdentifiers: ReadReplicaIdentifierList? = nil,
                readerEndpoint: String? = nil,
                replicationSourceIdentifier: String? = nil,
                scalingConfigurationInfo: ScalingConfigurationInfo? = nil,
                status: String? = nil,
                storageEncrypted: Boolean? = nil,
                vpcSecurityGroups: VpcSecurityGroupMembershipList? = nil) {
        self.allocatedStorage = allocatedStorage
        self.associatedRoles = associatedRoles
        self.availabilityZones = availabilityZones
        self.backtrackConsumedChangeRecords = backtrackConsumedChangeRecords
        self.backtrackWindow = backtrackWindow
        self.backupRetentionPeriod = backupRetentionPeriod
        self.capacity = capacity
        self.characterSetName = characterSetName
        self.cloneGroupId = cloneGroupId
        self.clusterCreateTime = clusterCreateTime
        self.copyTagsToSnapshot = copyTagsToSnapshot
        self.customEndpoints = customEndpoints
        self.dBClusterArn = dBClusterArn
        self.dBClusterIdentifier = dBClusterIdentifier
        self.dBClusterMembers = dBClusterMembers
        self.dBClusterOptionGroupMemberships = dBClusterOptionGroupMemberships
        self.dBClusterParameterGroup = dBClusterParameterGroup
        self.dBSubnetGroup = dBSubnetGroup
        self.databaseName = databaseName
        self.dbClusterResourceId = dbClusterResourceId
        self.deletionProtection = deletionProtection
        self.earliestBacktrackTime = earliestBacktrackTime
        self.earliestRestorableTime = earliestRestorableTime
        self.enabledCloudwatchLogsExports = enabledCloudwatchLogsExports
        self.endpoint = endpoint
        self.engine = engine
        self.engineMode = engineMode
        self.engineVersion = engineVersion
        self.hostedZoneId = hostedZoneId
        self.httpEndpointEnabled = httpEndpointEnabled
        self.iAMDatabaseAuthenticationEnabled = iAMDatabaseAuthenticationEnabled
        self.kmsKeyId = kmsKeyId
        self.latestRestorableTime = latestRestorableTime
        self.masterUsername = masterUsername
        self.multiAZ = multiAZ
        self.percentProgress = percentProgress
        self.port = port
        self.preferredBackupWindow = preferredBackupWindow
        self.preferredMaintenanceWindow = preferredMaintenanceWindow
        self.readReplicaIdentifiers = readReplicaIdentifiers
        self.readerEndpoint = readerEndpoint
        self.replicationSourceIdentifier = replicationSourceIdentifier
        self.scalingConfigurationInfo = scalingConfigurationInfo
        self.status = status
        self.storageEncrypted = storageEncrypted
        self.vpcSecurityGroups = vpcSecurityGroups
    }

    enum CodingKeys: String, CodingKey {
        case allocatedStorage = "AllocatedStorage"
        case associatedRoles = "AssociatedRoles"
        case availabilityZones = "AvailabilityZones"
        case backtrackConsumedChangeRecords = "BacktrackConsumedChangeRecords"
        case backtrackWindow = "BacktrackWindow"
        case backupRetentionPeriod = "BackupRetentionPeriod"
        case capacity = "Capacity"
        case characterSetName = "CharacterSetName"
        case cloneGroupId = "CloneGroupId"
        case clusterCreateTime = "ClusterCreateTime"
        case copyTagsToSnapshot = "CopyTagsToSnapshot"
        case customEndpoints = "CustomEndpoints"
        case dBClusterArn = "DBClusterArn"
        case dBClusterIdentifier = "DBClusterIdentifier"
        case dBClusterMembers = "DBClusterMembers"
        case dBClusterOptionGroupMemberships = "DBClusterOptionGroupMemberships"
        case dBClusterParameterGroup = "DBClusterParameterGroup"
        case dBSubnetGroup = "DBSubnetGroup"
        case databaseName = "DatabaseName"
        case dbClusterResourceId = "DbClusterResourceId"
        case deletionProtection = "DeletionProtection"
        case earliestBacktrackTime = "EarliestBacktrackTime"
        case earliestRestorableTime = "EarliestRestorableTime"
        case enabledCloudwatchLogsExports = "EnabledCloudwatchLogsExports"
        case endpoint = "Endpoint"
        case engine = "Engine"
        case engineMode = "EngineMode"
        case engineVersion = "EngineVersion"
        case hostedZoneId = "HostedZoneId"
        case httpEndpointEnabled = "HttpEndpointEnabled"
        case iAMDatabaseAuthenticationEnabled = "IAMDatabaseAuthenticationEnabled"
        case kmsKeyId = "KmsKeyId"
        case latestRestorableTime = "LatestRestorableTime"
        case masterUsername = "MasterUsername"
        case multiAZ = "MultiAZ"
        case percentProgress = "PercentProgress"
        case port = "Port"
        case preferredBackupWindow = "PreferredBackupWindow"
        case preferredMaintenanceWindow = "PreferredMaintenanceWindow"
        case readReplicaIdentifiers = "ReadReplicaIdentifiers"
        case readerEndpoint = "ReaderEndpoint"
        case replicationSourceIdentifier = "ReplicationSourceIdentifier"
        case scalingConfigurationInfo = "ScalingConfigurationInfo"
        case status = "Status"
        case storageEncrypted = "StorageEncrypted"
        case vpcSecurityGroups = "VpcSecurityGroups"
    }

    public func validate() throws {
        try scalingConfigurationInfo?.validate()
    }
}

public struct DBClusterAlreadyExistsFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBClusterBacktrack: Codable, Equatable {
    public var backtrackIdentifier: String?
    public var backtrackRequestCreationTime: TStamp?
    public var backtrackTo: TStamp?
    public var backtrackedFrom: TStamp?
    public var dBClusterIdentifier: String?
    public var status: String?

    public init(backtrackIdentifier: String? = nil,
                backtrackRequestCreationTime: TStamp? = nil,
                backtrackTo: TStamp? = nil,
                backtrackedFrom: TStamp? = nil,
                dBClusterIdentifier: String? = nil,
                status: String? = nil) {
        self.backtrackIdentifier = backtrackIdentifier
        self.backtrackRequestCreationTime = backtrackRequestCreationTime
        self.backtrackTo = backtrackTo
        self.backtrackedFrom = backtrackedFrom
        self.dBClusterIdentifier = dBClusterIdentifier
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case backtrackIdentifier = "BacktrackIdentifier"
        case backtrackRequestCreationTime = "BacktrackRequestCreationTime"
        case backtrackTo = "BacktrackTo"
        case backtrackedFrom = "BacktrackedFrom"
        case dBClusterIdentifier = "DBClusterIdentifier"
        case status = "Status"
    }

    public func validate() throws {
    }
}

public struct DBClusterBacktrackForBacktrackDBCluster: Codable, Equatable {
    public var backtrackDBClusterResult: DBClusterBacktrack

    public init(backtrackDBClusterResult: DBClusterBacktrack) {
        self.backtrackDBClusterResult = backtrackDBClusterResult
    }

    enum CodingKeys: String, CodingKey {
        case backtrackDBClusterResult = "BacktrackDBClusterResult"
    }

    public func validate() throws {
        try backtrackDBClusterResult.validate()
    }
}

public struct DBClusterBacktrackMessage: Codable, Equatable {
    public var dBClusterBacktracks: DBClusterBacktrackList?
    public var marker: String?

    public init(dBClusterBacktracks: DBClusterBacktrackList? = nil,
                marker: String? = nil) {
        self.dBClusterBacktracks = dBClusterBacktracks
        self.marker = marker
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterBacktracks = "DBClusterBacktracks"
        case marker = "Marker"
    }

    public func validate() throws {
    }
}

public struct DBClusterBacktrackMessageForDescribeDBClusterBacktracks: Codable, Equatable {
    public var describeDBClusterBacktracksResult: DBClusterBacktrackMessage

    public init(describeDBClusterBacktracksResult: DBClusterBacktrackMessage) {
        self.describeDBClusterBacktracksResult = describeDBClusterBacktracksResult
    }

    enum CodingKeys: String, CodingKey {
        case describeDBClusterBacktracksResult = "DescribeDBClusterBacktracksResult"
    }

    public func validate() throws {
        try describeDBClusterBacktracksResult.validate()
    }
}

public struct DBClusterBacktrackNotFoundFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBClusterCapacityInfo: Codable, Equatable {
    public var currentCapacity: IntegerOptional?
    public var dBClusterIdentifier: String?
    public var pendingCapacity: IntegerOptional?
    public var secondsBeforeTimeout: IntegerOptional?
    public var timeoutAction: String?

    public init(currentCapacity: IntegerOptional? = nil,
                dBClusterIdentifier: String? = nil,
                pendingCapacity: IntegerOptional? = nil,
                secondsBeforeTimeout: IntegerOptional? = nil,
                timeoutAction: String? = nil) {
        self.currentCapacity = currentCapacity
        self.dBClusterIdentifier = dBClusterIdentifier
        self.pendingCapacity = pendingCapacity
        self.secondsBeforeTimeout = secondsBeforeTimeout
        self.timeoutAction = timeoutAction
    }

    enum CodingKeys: String, CodingKey {
        case currentCapacity = "CurrentCapacity"
        case dBClusterIdentifier = "DBClusterIdentifier"
        case pendingCapacity = "PendingCapacity"
        case secondsBeforeTimeout = "SecondsBeforeTimeout"
        case timeoutAction = "TimeoutAction"
    }

    public func validate() throws {
    }
}

public struct DBClusterCapacityInfoForModifyCurrentDBClusterCapacity: Codable, Equatable {
    public var modifyCurrentDBClusterCapacityResult: DBClusterCapacityInfo

    public init(modifyCurrentDBClusterCapacityResult: DBClusterCapacityInfo) {
        self.modifyCurrentDBClusterCapacityResult = modifyCurrentDBClusterCapacityResult
    }

    enum CodingKeys: String, CodingKey {
        case modifyCurrentDBClusterCapacityResult = "ModifyCurrentDBClusterCapacityResult"
    }

    public func validate() throws {
        try modifyCurrentDBClusterCapacityResult.validate()
    }
}

public struct DBClusterEndpoint: Codable, Equatable {
    public var customEndpointType: String?
    public var dBClusterEndpointArn: String?
    public var dBClusterEndpointIdentifier: String?
    public var dBClusterEndpointResourceIdentifier: String?
    public var dBClusterIdentifier: String?
    public var endpoint: String?
    public var endpointType: String?
    public var excludedMembers: StringList?
    public var staticMembers: StringList?
    public var status: String?

    public init(customEndpointType: String? = nil,
                dBClusterEndpointArn: String? = nil,
                dBClusterEndpointIdentifier: String? = nil,
                dBClusterEndpointResourceIdentifier: String? = nil,
                dBClusterIdentifier: String? = nil,
                endpoint: String? = nil,
                endpointType: String? = nil,
                excludedMembers: StringList? = nil,
                staticMembers: StringList? = nil,
                status: String? = nil) {
        self.customEndpointType = customEndpointType
        self.dBClusterEndpointArn = dBClusterEndpointArn
        self.dBClusterEndpointIdentifier = dBClusterEndpointIdentifier
        self.dBClusterEndpointResourceIdentifier = dBClusterEndpointResourceIdentifier
        self.dBClusterIdentifier = dBClusterIdentifier
        self.endpoint = endpoint
        self.endpointType = endpointType
        self.excludedMembers = excludedMembers
        self.staticMembers = staticMembers
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case customEndpointType = "CustomEndpointType"
        case dBClusterEndpointArn = "DBClusterEndpointArn"
        case dBClusterEndpointIdentifier = "DBClusterEndpointIdentifier"
        case dBClusterEndpointResourceIdentifier = "DBClusterEndpointResourceIdentifier"
        case dBClusterIdentifier = "DBClusterIdentifier"
        case endpoint = "Endpoint"
        case endpointType = "EndpointType"
        case excludedMembers = "ExcludedMembers"
        case staticMembers = "StaticMembers"
        case status = "Status"
    }

    public func validate() throws {
    }
}

public struct DBClusterEndpointAlreadyExistsFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBClusterEndpointForCreateDBClusterEndpoint: Codable, Equatable {
    public var createDBClusterEndpointResult: DBClusterEndpoint

    public init(createDBClusterEndpointResult: DBClusterEndpoint) {
        self.createDBClusterEndpointResult = createDBClusterEndpointResult
    }

    enum CodingKeys: String, CodingKey {
        case createDBClusterEndpointResult = "CreateDBClusterEndpointResult"
    }

    public func validate() throws {
        try createDBClusterEndpointResult.validate()
    }
}

public struct DBClusterEndpointForDeleteDBClusterEndpoint: Codable, Equatable {
    public var deleteDBClusterEndpointResult: DBClusterEndpoint

    public init(deleteDBClusterEndpointResult: DBClusterEndpoint) {
        self.deleteDBClusterEndpointResult = deleteDBClusterEndpointResult
    }

    enum CodingKeys: String, CodingKey {
        case deleteDBClusterEndpointResult = "DeleteDBClusterEndpointResult"
    }

    public func validate() throws {
        try deleteDBClusterEndpointResult.validate()
    }
}

public struct DBClusterEndpointForModifyDBClusterEndpoint: Codable, Equatable {
    public var modifyDBClusterEndpointResult: DBClusterEndpoint

    public init(modifyDBClusterEndpointResult: DBClusterEndpoint) {
        self.modifyDBClusterEndpointResult = modifyDBClusterEndpointResult
    }

    enum CodingKeys: String, CodingKey {
        case modifyDBClusterEndpointResult = "ModifyDBClusterEndpointResult"
    }

    public func validate() throws {
        try modifyDBClusterEndpointResult.validate()
    }
}

public struct DBClusterEndpointMessage: Codable, Equatable {
    public var dBClusterEndpoints: DBClusterEndpointList?
    public var marker: String?

    public init(dBClusterEndpoints: DBClusterEndpointList? = nil,
                marker: String? = nil) {
        self.dBClusterEndpoints = dBClusterEndpoints
        self.marker = marker
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterEndpoints = "DBClusterEndpoints"
        case marker = "Marker"
    }

    public func validate() throws {
    }
}

public struct DBClusterEndpointMessageForDescribeDBClusterEndpoints: Codable, Equatable {
    public var describeDBClusterEndpointsResult: DBClusterEndpointMessage

    public init(describeDBClusterEndpointsResult: DBClusterEndpointMessage) {
        self.describeDBClusterEndpointsResult = describeDBClusterEndpointsResult
    }

    enum CodingKeys: String, CodingKey {
        case describeDBClusterEndpointsResult = "DescribeDBClusterEndpointsResult"
    }

    public func validate() throws {
        try describeDBClusterEndpointsResult.validate()
    }
}

public struct DBClusterEndpointNotFoundFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBClusterEndpointQuotaExceededFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBClusterMember: Codable, Equatable {
    public var dBClusterParameterGroupStatus: String?
    public var dBInstanceIdentifier: String?
    public var isClusterWriter: Boolean?
    public var promotionTier: IntegerOptional?

    public init(dBClusterParameterGroupStatus: String? = nil,
                dBInstanceIdentifier: String? = nil,
                isClusterWriter: Boolean? = nil,
                promotionTier: IntegerOptional? = nil) {
        self.dBClusterParameterGroupStatus = dBClusterParameterGroupStatus
        self.dBInstanceIdentifier = dBInstanceIdentifier
        self.isClusterWriter = isClusterWriter
        self.promotionTier = promotionTier
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterParameterGroupStatus = "DBClusterParameterGroupStatus"
        case dBInstanceIdentifier = "DBInstanceIdentifier"
        case isClusterWriter = "IsClusterWriter"
        case promotionTier = "PromotionTier"
    }

    public func validate() throws {
    }
}

public struct DBClusterMessage: Codable, Equatable {
    public var dBClusters: DBClusterList?
    public var marker: String?

    public init(dBClusters: DBClusterList? = nil,
                marker: String? = nil) {
        self.dBClusters = dBClusters
        self.marker = marker
    }

    enum CodingKeys: String, CodingKey {
        case dBClusters = "DBClusters"
        case marker = "Marker"
    }

    public func validate() throws {
    }
}

public struct DBClusterMessageForDescribeDBClusters: Codable, Equatable {
    public var describeDBClustersResult: DBClusterMessage

    public init(describeDBClustersResult: DBClusterMessage) {
        self.describeDBClustersResult = describeDBClustersResult
    }

    enum CodingKeys: String, CodingKey {
        case describeDBClustersResult = "DescribeDBClustersResult"
    }

    public func validate() throws {
        try describeDBClustersResult.validate()
    }
}

public struct DBClusterNotFoundFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBClusterOptionGroupStatus: Codable, Equatable {
    public var dBClusterOptionGroupName: String?
    public var status: String?

    public init(dBClusterOptionGroupName: String? = nil,
                status: String? = nil) {
        self.dBClusterOptionGroupName = dBClusterOptionGroupName
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterOptionGroupName = "DBClusterOptionGroupName"
        case status = "Status"
    }

    public func validate() throws {
    }
}

public struct DBClusterParameterGroup: Codable, Equatable {
    public var dBClusterParameterGroupArn: String?
    public var dBClusterParameterGroupName: String?
    public var dBParameterGroupFamily: String?
    public var description: String?

    public init(dBClusterParameterGroupArn: String? = nil,
                dBClusterParameterGroupName: String? = nil,
                dBParameterGroupFamily: String? = nil,
                description: String? = nil) {
        self.dBClusterParameterGroupArn = dBClusterParameterGroupArn
        self.dBClusterParameterGroupName = dBClusterParameterGroupName
        self.dBParameterGroupFamily = dBParameterGroupFamily
        self.description = description
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterParameterGroupArn = "DBClusterParameterGroupArn"
        case dBClusterParameterGroupName = "DBClusterParameterGroupName"
        case dBParameterGroupFamily = "DBParameterGroupFamily"
        case description = "Description"
    }

    public func validate() throws {
    }
}

public struct DBClusterParameterGroupDetails: Codable, Equatable {
    public var marker: String?
    public var parameters: ParametersList?

    public init(marker: String? = nil,
                parameters: ParametersList? = nil) {
        self.marker = marker
        self.parameters = parameters
    }

    enum CodingKeys: String, CodingKey {
        case marker = "Marker"
        case parameters = "Parameters"
    }

    public func validate() throws {
    }
}

public struct DBClusterParameterGroupDetailsForDescribeDBClusterParameters: Codable, Equatable {
    public var describeDBClusterParametersResult: DBClusterParameterGroupDetails

    public init(describeDBClusterParametersResult: DBClusterParameterGroupDetails) {
        self.describeDBClusterParametersResult = describeDBClusterParametersResult
    }

    enum CodingKeys: String, CodingKey {
        case describeDBClusterParametersResult = "DescribeDBClusterParametersResult"
    }

    public func validate() throws {
        try describeDBClusterParametersResult.validate()
    }
}

public struct DBClusterParameterGroupNameMessage: Codable, Equatable {
    public var dBClusterParameterGroupName: String?

    public init(dBClusterParameterGroupName: String? = nil) {
        self.dBClusterParameterGroupName = dBClusterParameterGroupName
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterParameterGroupName = "DBClusterParameterGroupName"
    }

    public func validate() throws {
    }
}

public struct DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup: Codable, Equatable {
    public var modifyDBClusterParameterGroupResult: DBClusterParameterGroupNameMessage

    public init(modifyDBClusterParameterGroupResult: DBClusterParameterGroupNameMessage) {
        self.modifyDBClusterParameterGroupResult = modifyDBClusterParameterGroupResult
    }

    enum CodingKeys: String, CodingKey {
        case modifyDBClusterParameterGroupResult = "ModifyDBClusterParameterGroupResult"
    }

    public func validate() throws {
        try modifyDBClusterParameterGroupResult.validate()
    }
}

public struct DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup: Codable, Equatable {
    public var resetDBClusterParameterGroupResult: DBClusterParameterGroupNameMessage

    public init(resetDBClusterParameterGroupResult: DBClusterParameterGroupNameMessage) {
        self.resetDBClusterParameterGroupResult = resetDBClusterParameterGroupResult
    }

    enum CodingKeys: String, CodingKey {
        case resetDBClusterParameterGroupResult = "ResetDBClusterParameterGroupResult"
    }

    public func validate() throws {
        try resetDBClusterParameterGroupResult.validate()
    }
}

public struct DBClusterParameterGroupNotFoundFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBClusterParameterGroupsMessage: Codable, Equatable {
    public var dBClusterParameterGroups: DBClusterParameterGroupList?
    public var marker: String?

    public init(dBClusterParameterGroups: DBClusterParameterGroupList? = nil,
                marker: String? = nil) {
        self.dBClusterParameterGroups = dBClusterParameterGroups
        self.marker = marker
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterParameterGroups = "DBClusterParameterGroups"
        case marker = "Marker"
    }

    public func validate() throws {
    }
}

public struct DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups: Codable, Equatable {
    public var describeDBClusterParameterGroupsResult: DBClusterParameterGroupsMessage

    public init(describeDBClusterParameterGroupsResult: DBClusterParameterGroupsMessage) {
        self.describeDBClusterParameterGroupsResult = describeDBClusterParameterGroupsResult
    }

    enum CodingKeys: String, CodingKey {
        case describeDBClusterParameterGroupsResult = "DescribeDBClusterParameterGroupsResult"
    }

    public func validate() throws {
        try describeDBClusterParameterGroupsResult.validate()
    }
}

public struct DBClusterQuotaExceededFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBClusterRole: Codable, Equatable {
    public var featureName: String?
    public var roleArn: String?
    public var status: String?

    public init(featureName: String? = nil,
                roleArn: String? = nil,
                status: String? = nil) {
        self.featureName = featureName
        self.roleArn = roleArn
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case featureName = "FeatureName"
        case roleArn = "RoleArn"
        case status = "Status"
    }

    public func validate() throws {
    }
}

public struct DBClusterRoleAlreadyExistsFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBClusterRoleNotFoundFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBClusterRoleQuotaExceededFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBClusterSnapshot: Codable, Equatable {
    public var allocatedStorage: Integer?
    public var availabilityZones: AvailabilityZones?
    public var clusterCreateTime: TStamp?
    public var dBClusterIdentifier: String?
    public var dBClusterSnapshotArn: String?
    public var dBClusterSnapshotIdentifier: String?
    public var engine: String?
    public var engineVersion: String?
    public var iAMDatabaseAuthenticationEnabled: Boolean?
    public var kmsKeyId: String?
    public var licenseModel: String?
    public var masterUsername: String?
    public var percentProgress: Integer?
    public var port: Integer?
    public var snapshotCreateTime: TStamp?
    public var snapshotType: String?
    public var sourceDBClusterSnapshotArn: String?
    public var status: String?
    public var storageEncrypted: Boolean?
    public var vpcId: String?

    public init(allocatedStorage: Integer? = nil,
                availabilityZones: AvailabilityZones? = nil,
                clusterCreateTime: TStamp? = nil,
                dBClusterIdentifier: String? = nil,
                dBClusterSnapshotArn: String? = nil,
                dBClusterSnapshotIdentifier: String? = nil,
                engine: String? = nil,
                engineVersion: String? = nil,
                iAMDatabaseAuthenticationEnabled: Boolean? = nil,
                kmsKeyId: String? = nil,
                licenseModel: String? = nil,
                masterUsername: String? = nil,
                percentProgress: Integer? = nil,
                port: Integer? = nil,
                snapshotCreateTime: TStamp? = nil,
                snapshotType: String? = nil,
                sourceDBClusterSnapshotArn: String? = nil,
                status: String? = nil,
                storageEncrypted: Boolean? = nil,
                vpcId: String? = nil) {
        self.allocatedStorage = allocatedStorage
        self.availabilityZones = availabilityZones
        self.clusterCreateTime = clusterCreateTime
        self.dBClusterIdentifier = dBClusterIdentifier
        self.dBClusterSnapshotArn = dBClusterSnapshotArn
        self.dBClusterSnapshotIdentifier = dBClusterSnapshotIdentifier
        self.engine = engine
        self.engineVersion = engineVersion
        self.iAMDatabaseAuthenticationEnabled = iAMDatabaseAuthenticationEnabled
        self.kmsKeyId = kmsKeyId
        self.licenseModel = licenseModel
        self.masterUsername = masterUsername
        self.percentProgress = percentProgress
        self.port = port
        self.snapshotCreateTime = snapshotCreateTime
        self.snapshotType = snapshotType
        self.sourceDBClusterSnapshotArn = sourceDBClusterSnapshotArn
        self.status = status
        self.storageEncrypted = storageEncrypted
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case allocatedStorage = "AllocatedStorage"
        case availabilityZones = "AvailabilityZones"
        case clusterCreateTime = "ClusterCreateTime"
        case dBClusterIdentifier = "DBClusterIdentifier"
        case dBClusterSnapshotArn = "DBClusterSnapshotArn"
        case dBClusterSnapshotIdentifier = "DBClusterSnapshotIdentifier"
        case engine = "Engine"
        case engineVersion = "EngineVersion"
        case iAMDatabaseAuthenticationEnabled = "IAMDatabaseAuthenticationEnabled"
        case kmsKeyId = "KmsKeyId"
        case licenseModel = "LicenseModel"
        case masterUsername = "MasterUsername"
        case percentProgress = "PercentProgress"
        case port = "Port"
        case snapshotCreateTime = "SnapshotCreateTime"
        case snapshotType = "SnapshotType"
        case sourceDBClusterSnapshotArn = "SourceDBClusterSnapshotArn"
        case status = "Status"
        case storageEncrypted = "StorageEncrypted"
        case vpcId = "VpcId"
    }

    public func validate() throws {
    }
}

public struct DBClusterSnapshotAlreadyExistsFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBClusterSnapshotAttribute: Codable, Equatable {
    public var attributeName: String?
    public var attributeValues: AttributeValueList?

    public init(attributeName: String? = nil,
                attributeValues: AttributeValueList? = nil) {
        self.attributeName = attributeName
        self.attributeValues = attributeValues
    }

    enum CodingKeys: String, CodingKey {
        case attributeName = "AttributeName"
        case attributeValues = "AttributeValues"
    }

    public func validate() throws {
    }
}

public struct DBClusterSnapshotAttributesResult: Codable, Equatable {
    public var dBClusterSnapshotAttributes: DBClusterSnapshotAttributeList?
    public var dBClusterSnapshotIdentifier: String?

    public init(dBClusterSnapshotAttributes: DBClusterSnapshotAttributeList? = nil,
                dBClusterSnapshotIdentifier: String? = nil) {
        self.dBClusterSnapshotAttributes = dBClusterSnapshotAttributes
        self.dBClusterSnapshotIdentifier = dBClusterSnapshotIdentifier
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterSnapshotAttributes = "DBClusterSnapshotAttributes"
        case dBClusterSnapshotIdentifier = "DBClusterSnapshotIdentifier"
    }

    public func validate() throws {
    }
}

public struct DBClusterSnapshotMessage: Codable, Equatable {
    public var dBClusterSnapshots: DBClusterSnapshotList?
    public var marker: String?

    public init(dBClusterSnapshots: DBClusterSnapshotList? = nil,
                marker: String? = nil) {
        self.dBClusterSnapshots = dBClusterSnapshots
        self.marker = marker
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterSnapshots = "DBClusterSnapshots"
        case marker = "Marker"
    }

    public func validate() throws {
    }
}

public struct DBClusterSnapshotMessageForDescribeDBClusterSnapshots: Codable, Equatable {
    public var describeDBClusterSnapshotsResult: DBClusterSnapshotMessage

    public init(describeDBClusterSnapshotsResult: DBClusterSnapshotMessage) {
        self.describeDBClusterSnapshotsResult = describeDBClusterSnapshotsResult
    }

    enum CodingKeys: String, CodingKey {
        case describeDBClusterSnapshotsResult = "DescribeDBClusterSnapshotsResult"
    }

    public func validate() throws {
        try describeDBClusterSnapshotsResult.validate()
    }
}

public struct DBClusterSnapshotNotFoundFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBEngineVersion: Codable, Equatable {
    public var dBEngineDescription: String?
    public var dBEngineVersionDescription: String?
    public var dBParameterGroupFamily: String?
    public var defaultCharacterSet: CharacterSet?
    public var engine: String?
    public var engineVersion: String?
    public var exportableLogTypes: LogTypeList?
    public var supportedCharacterSets: SupportedCharacterSetsList?
    public var supportedEngineModes: EngineModeList?
    public var supportedFeatureNames: FeatureNameList?
    public var supportedTimezones: SupportedTimezonesList?
    public var supportsLogExportsToCloudwatchLogs: Boolean?
    public var supportsReadReplica: Boolean?
    public var validUpgradeTarget: ValidUpgradeTargetList?

    public init(dBEngineDescription: String? = nil,
                dBEngineVersionDescription: String? = nil,
                dBParameterGroupFamily: String? = nil,
                defaultCharacterSet: CharacterSet? = nil,
                engine: String? = nil,
                engineVersion: String? = nil,
                exportableLogTypes: LogTypeList? = nil,
                supportedCharacterSets: SupportedCharacterSetsList? = nil,
                supportedEngineModes: EngineModeList? = nil,
                supportedFeatureNames: FeatureNameList? = nil,
                supportedTimezones: SupportedTimezonesList? = nil,
                supportsLogExportsToCloudwatchLogs: Boolean? = nil,
                supportsReadReplica: Boolean? = nil,
                validUpgradeTarget: ValidUpgradeTargetList? = nil) {
        self.dBEngineDescription = dBEngineDescription
        self.dBEngineVersionDescription = dBEngineVersionDescription
        self.dBParameterGroupFamily = dBParameterGroupFamily
        self.defaultCharacterSet = defaultCharacterSet
        self.engine = engine
        self.engineVersion = engineVersion
        self.exportableLogTypes = exportableLogTypes
        self.supportedCharacterSets = supportedCharacterSets
        self.supportedEngineModes = supportedEngineModes
        self.supportedFeatureNames = supportedFeatureNames
        self.supportedTimezones = supportedTimezones
        self.supportsLogExportsToCloudwatchLogs = supportsLogExportsToCloudwatchLogs
        self.supportsReadReplica = supportsReadReplica
        self.validUpgradeTarget = validUpgradeTarget
    }

    enum CodingKeys: String, CodingKey {
        case dBEngineDescription = "DBEngineDescription"
        case dBEngineVersionDescription = "DBEngineVersionDescription"
        case dBParameterGroupFamily = "DBParameterGroupFamily"
        case defaultCharacterSet = "DefaultCharacterSet"
        case engine = "Engine"
        case engineVersion = "EngineVersion"
        case exportableLogTypes = "ExportableLogTypes"
        case supportedCharacterSets = "SupportedCharacterSets"
        case supportedEngineModes = "SupportedEngineModes"
        case supportedFeatureNames = "SupportedFeatureNames"
        case supportedTimezones = "SupportedTimezones"
        case supportsLogExportsToCloudwatchLogs = "SupportsLogExportsToCloudwatchLogs"
        case supportsReadReplica = "SupportsReadReplica"
        case validUpgradeTarget = "ValidUpgradeTarget"
    }

    public func validate() throws {
        try defaultCharacterSet?.validate()
    }
}

public struct DBEngineVersionMessage: Codable, Equatable {
    public var dBEngineVersions: DBEngineVersionList?
    public var marker: String?

    public init(dBEngineVersions: DBEngineVersionList? = nil,
                marker: String? = nil) {
        self.dBEngineVersions = dBEngineVersions
        self.marker = marker
    }

    enum CodingKeys: String, CodingKey {
        case dBEngineVersions = "DBEngineVersions"
        case marker = "Marker"
    }

    public func validate() throws {
    }
}

public struct DBEngineVersionMessageForDescribeDBEngineVersions: Codable, Equatable {
    public var describeDBEngineVersionsResult: DBEngineVersionMessage

    public init(describeDBEngineVersionsResult: DBEngineVersionMessage) {
        self.describeDBEngineVersionsResult = describeDBEngineVersionsResult
    }

    enum CodingKeys: String, CodingKey {
        case describeDBEngineVersionsResult = "DescribeDBEngineVersionsResult"
    }

    public func validate() throws {
        try describeDBEngineVersionsResult.validate()
    }
}

public struct DBInstance: Codable, Equatable {
    public var allocatedStorage: Integer?
    public var associatedRoles: DBInstanceRoles?
    public var autoMinorVersionUpgrade: Boolean?
    public var availabilityZone: String?
    public var backupRetentionPeriod: Integer?
    public var cACertificateIdentifier: String?
    public var characterSetName: String?
    public var copyTagsToSnapshot: Boolean?
    public var dBClusterIdentifier: String?
    public var dBInstanceArn: String?
    public var dBInstanceClass: String?
    public var dBInstanceIdentifier: String?
    public var dBInstanceStatus: String?
    public var dBName: String?
    public var dBParameterGroups: DBParameterGroupStatusList?
    public var dBSecurityGroups: DBSecurityGroupMembershipList?
    public var dBSubnetGroup: DBSubnetGroup?
    public var dbInstancePort: Integer?
    public var dbiResourceId: String?
    public var deletionProtection: Boolean?
    public var domainMemberships: DomainMembershipList?
    public var enabledCloudwatchLogsExports: LogTypeList?
    public var endpoint: Endpoint?
    public var engine: String?
    public var engineVersion: String?
    public var enhancedMonitoringResourceArn: String?
    public var iAMDatabaseAuthenticationEnabled: Boolean?
    public var instanceCreateTime: TStamp?
    public var iops: IntegerOptional?
    public var kmsKeyId: String?
    public var latestRestorableTime: TStamp?
    public var licenseModel: String?
    public var listenerEndpoint: Endpoint?
    public var masterUsername: String?
    public var monitoringInterval: IntegerOptional?
    public var monitoringRoleArn: String?
    public var multiAZ: Boolean?
    public var optionGroupMemberships: OptionGroupMembershipList?
    public var pendingModifiedValues: PendingModifiedValues?
    public var performanceInsightsEnabled: BooleanOptional?
    public var performanceInsightsKMSKeyId: String?
    public var performanceInsightsRetentionPeriod: IntegerOptional?
    public var preferredBackupWindow: String?
    public var preferredMaintenanceWindow: String?
    public var processorFeatures: ProcessorFeatureList?
    public var promotionTier: IntegerOptional?
    public var publiclyAccessible: Boolean?
    public var readReplicaDBClusterIdentifiers: ReadReplicaDBClusterIdentifierList?
    public var readReplicaDBInstanceIdentifiers: ReadReplicaDBInstanceIdentifierList?
    public var readReplicaSourceDBInstanceIdentifier: String?
    public var secondaryAvailabilityZone: String?
    public var statusInfos: DBInstanceStatusInfoList?
    public var storageEncrypted: Boolean?
    public var storageType: String?
    public var tdeCredentialArn: String?
    public var timezone: String?
    public var vpcSecurityGroups: VpcSecurityGroupMembershipList?

    public init(allocatedStorage: Integer? = nil,
                associatedRoles: DBInstanceRoles? = nil,
                autoMinorVersionUpgrade: Boolean? = nil,
                availabilityZone: String? = nil,
                backupRetentionPeriod: Integer? = nil,
                cACertificateIdentifier: String? = nil,
                characterSetName: String? = nil,
                copyTagsToSnapshot: Boolean? = nil,
                dBClusterIdentifier: String? = nil,
                dBInstanceArn: String? = nil,
                dBInstanceClass: String? = nil,
                dBInstanceIdentifier: String? = nil,
                dBInstanceStatus: String? = nil,
                dBName: String? = nil,
                dBParameterGroups: DBParameterGroupStatusList? = nil,
                dBSecurityGroups: DBSecurityGroupMembershipList? = nil,
                dBSubnetGroup: DBSubnetGroup? = nil,
                dbInstancePort: Integer? = nil,
                dbiResourceId: String? = nil,
                deletionProtection: Boolean? = nil,
                domainMemberships: DomainMembershipList? = nil,
                enabledCloudwatchLogsExports: LogTypeList? = nil,
                endpoint: Endpoint? = nil,
                engine: String? = nil,
                engineVersion: String? = nil,
                enhancedMonitoringResourceArn: String? = nil,
                iAMDatabaseAuthenticationEnabled: Boolean? = nil,
                instanceCreateTime: TStamp? = nil,
                iops: IntegerOptional? = nil,
                kmsKeyId: String? = nil,
                latestRestorableTime: TStamp? = nil,
                licenseModel: String? = nil,
                listenerEndpoint: Endpoint? = nil,
                masterUsername: String? = nil,
                monitoringInterval: IntegerOptional? = nil,
                monitoringRoleArn: String? = nil,
                multiAZ: Boolean? = nil,
                optionGroupMemberships: OptionGroupMembershipList? = nil,
                pendingModifiedValues: PendingModifiedValues? = nil,
                performanceInsightsEnabled: BooleanOptional? = nil,
                performanceInsightsKMSKeyId: String? = nil,
                performanceInsightsRetentionPeriod: IntegerOptional? = nil,
                preferredBackupWindow: String? = nil,
                preferredMaintenanceWindow: String? = nil,
                processorFeatures: ProcessorFeatureList? = nil,
                promotionTier: IntegerOptional? = nil,
                publiclyAccessible: Boolean? = nil,
                readReplicaDBClusterIdentifiers: ReadReplicaDBClusterIdentifierList? = nil,
                readReplicaDBInstanceIdentifiers: ReadReplicaDBInstanceIdentifierList? = nil,
                readReplicaSourceDBInstanceIdentifier: String? = nil,
                secondaryAvailabilityZone: String? = nil,
                statusInfos: DBInstanceStatusInfoList? = nil,
                storageEncrypted: Boolean? = nil,
                storageType: String? = nil,
                tdeCredentialArn: String? = nil,
                timezone: String? = nil,
                vpcSecurityGroups: VpcSecurityGroupMembershipList? = nil) {
        self.allocatedStorage = allocatedStorage
        self.associatedRoles = associatedRoles
        self.autoMinorVersionUpgrade = autoMinorVersionUpgrade
        self.availabilityZone = availabilityZone
        self.backupRetentionPeriod = backupRetentionPeriod
        self.cACertificateIdentifier = cACertificateIdentifier
        self.characterSetName = characterSetName
        self.copyTagsToSnapshot = copyTagsToSnapshot
        self.dBClusterIdentifier = dBClusterIdentifier
        self.dBInstanceArn = dBInstanceArn
        self.dBInstanceClass = dBInstanceClass
        self.dBInstanceIdentifier = dBInstanceIdentifier
        self.dBInstanceStatus = dBInstanceStatus
        self.dBName = dBName
        self.dBParameterGroups = dBParameterGroups
        self.dBSecurityGroups = dBSecurityGroups
        self.dBSubnetGroup = dBSubnetGroup
        self.dbInstancePort = dbInstancePort
        self.dbiResourceId = dbiResourceId
        self.deletionProtection = deletionProtection
        self.domainMemberships = domainMemberships
        self.enabledCloudwatchLogsExports = enabledCloudwatchLogsExports
        self.endpoint = endpoint
        self.engine = engine
        self.engineVersion = engineVersion
        self.enhancedMonitoringResourceArn = enhancedMonitoringResourceArn
        self.iAMDatabaseAuthenticationEnabled = iAMDatabaseAuthenticationEnabled
        self.instanceCreateTime = instanceCreateTime
        self.iops = iops
        self.kmsKeyId = kmsKeyId
        self.latestRestorableTime = latestRestorableTime
        self.licenseModel = licenseModel
        self.listenerEndpoint = listenerEndpoint
        self.masterUsername = masterUsername
        self.monitoringInterval = monitoringInterval
        self.monitoringRoleArn = monitoringRoleArn
        self.multiAZ = multiAZ
        self.optionGroupMemberships = optionGroupMemberships
        self.pendingModifiedValues = pendingModifiedValues
        self.performanceInsightsEnabled = performanceInsightsEnabled
        self.performanceInsightsKMSKeyId = performanceInsightsKMSKeyId
        self.performanceInsightsRetentionPeriod = performanceInsightsRetentionPeriod
        self.preferredBackupWindow = preferredBackupWindow
        self.preferredMaintenanceWindow = preferredMaintenanceWindow
        self.processorFeatures = processorFeatures
        self.promotionTier = promotionTier
        self.publiclyAccessible = publiclyAccessible
        self.readReplicaDBClusterIdentifiers = readReplicaDBClusterIdentifiers
        self.readReplicaDBInstanceIdentifiers = readReplicaDBInstanceIdentifiers
        self.readReplicaSourceDBInstanceIdentifier = readReplicaSourceDBInstanceIdentifier
        self.secondaryAvailabilityZone = secondaryAvailabilityZone
        self.statusInfos = statusInfos
        self.storageEncrypted = storageEncrypted
        self.storageType = storageType
        self.tdeCredentialArn = tdeCredentialArn
        self.timezone = timezone
        self.vpcSecurityGroups = vpcSecurityGroups
    }

    enum CodingKeys: String, CodingKey {
        case allocatedStorage = "AllocatedStorage"
        case associatedRoles = "AssociatedRoles"
        case autoMinorVersionUpgrade = "AutoMinorVersionUpgrade"
        case availabilityZone = "AvailabilityZone"
        case backupRetentionPeriod = "BackupRetentionPeriod"
        case cACertificateIdentifier = "CACertificateIdentifier"
        case characterSetName = "CharacterSetName"
        case copyTagsToSnapshot = "CopyTagsToSnapshot"
        case dBClusterIdentifier = "DBClusterIdentifier"
        case dBInstanceArn = "DBInstanceArn"
        case dBInstanceClass = "DBInstanceClass"
        case dBInstanceIdentifier = "DBInstanceIdentifier"
        case dBInstanceStatus = "DBInstanceStatus"
        case dBName = "DBName"
        case dBParameterGroups = "DBParameterGroups"
        case dBSecurityGroups = "DBSecurityGroups"
        case dBSubnetGroup = "DBSubnetGroup"
        case dbInstancePort = "DbInstancePort"
        case dbiResourceId = "DbiResourceId"
        case deletionProtection = "DeletionProtection"
        case domainMemberships = "DomainMemberships"
        case enabledCloudwatchLogsExports = "EnabledCloudwatchLogsExports"
        case endpoint = "Endpoint"
        case engine = "Engine"
        case engineVersion = "EngineVersion"
        case enhancedMonitoringResourceArn = "EnhancedMonitoringResourceArn"
        case iAMDatabaseAuthenticationEnabled = "IAMDatabaseAuthenticationEnabled"
        case instanceCreateTime = "InstanceCreateTime"
        case iops = "Iops"
        case kmsKeyId = "KmsKeyId"
        case latestRestorableTime = "LatestRestorableTime"
        case licenseModel = "LicenseModel"
        case listenerEndpoint = "ListenerEndpoint"
        case masterUsername = "MasterUsername"
        case monitoringInterval = "MonitoringInterval"
        case monitoringRoleArn = "MonitoringRoleArn"
        case multiAZ = "MultiAZ"
        case optionGroupMemberships = "OptionGroupMemberships"
        case pendingModifiedValues = "PendingModifiedValues"
        case performanceInsightsEnabled = "PerformanceInsightsEnabled"
        case performanceInsightsKMSKeyId = "PerformanceInsightsKMSKeyId"
        case performanceInsightsRetentionPeriod = "PerformanceInsightsRetentionPeriod"
        case preferredBackupWindow = "PreferredBackupWindow"
        case preferredMaintenanceWindow = "PreferredMaintenanceWindow"
        case processorFeatures = "ProcessorFeatures"
        case promotionTier = "PromotionTier"
        case publiclyAccessible = "PubliclyAccessible"
        case readReplicaDBClusterIdentifiers = "ReadReplicaDBClusterIdentifiers"
        case readReplicaDBInstanceIdentifiers = "ReadReplicaDBInstanceIdentifiers"
        case readReplicaSourceDBInstanceIdentifier = "ReadReplicaSourceDBInstanceIdentifier"
        case secondaryAvailabilityZone = "SecondaryAvailabilityZone"
        case statusInfos = "StatusInfos"
        case storageEncrypted = "StorageEncrypted"
        case storageType = "StorageType"
        case tdeCredentialArn = "TdeCredentialArn"
        case timezone = "Timezone"
        case vpcSecurityGroups = "VpcSecurityGroups"
    }

    public func validate() throws {
        try dBSubnetGroup?.validate()
        try endpoint?.validate()
        try listenerEndpoint?.validate()
        try pendingModifiedValues?.validate()
    }
}

public struct DBInstanceAlreadyExistsFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBInstanceAutomatedBackup: Codable, Equatable {
    public var allocatedStorage: Integer?
    public var availabilityZone: String?
    public var dBInstanceArn: String?
    public var dBInstanceIdentifier: String?
    public var dbiResourceId: String?
    public var encrypted: Boolean?
    public var engine: String?
    public var engineVersion: String?
    public var iAMDatabaseAuthenticationEnabled: Boolean?
    public var instanceCreateTime: TStamp?
    public var iops: IntegerOptional?
    public var kmsKeyId: String?
    public var licenseModel: String?
    public var masterUsername: String?
    public var optionGroupName: String?
    public var port: Integer?
    public var region: String?
    public var restoreWindow: RestoreWindow?
    public var status: String?
    public var storageType: String?
    public var tdeCredentialArn: String?
    public var timezone: String?
    public var vpcId: String?

    public init(allocatedStorage: Integer? = nil,
                availabilityZone: String? = nil,
                dBInstanceArn: String? = nil,
                dBInstanceIdentifier: String? = nil,
                dbiResourceId: String? = nil,
                encrypted: Boolean? = nil,
                engine: String? = nil,
                engineVersion: String? = nil,
                iAMDatabaseAuthenticationEnabled: Boolean? = nil,
                instanceCreateTime: TStamp? = nil,
                iops: IntegerOptional? = nil,
                kmsKeyId: String? = nil,
                licenseModel: String? = nil,
                masterUsername: String? = nil,
                optionGroupName: String? = nil,
                port: Integer? = nil,
                region: String? = nil,
                restoreWindow: RestoreWindow? = nil,
                status: String? = nil,
                storageType: String? = nil,
                tdeCredentialArn: String? = nil,
                timezone: String? = nil,
                vpcId: String? = nil) {
        self.allocatedStorage = allocatedStorage
        self.availabilityZone = availabilityZone
        self.dBInstanceArn = dBInstanceArn
        self.dBInstanceIdentifier = dBInstanceIdentifier
        self.dbiResourceId = dbiResourceId
        self.encrypted = encrypted
        self.engine = engine
        self.engineVersion = engineVersion
        self.iAMDatabaseAuthenticationEnabled = iAMDatabaseAuthenticationEnabled
        self.instanceCreateTime = instanceCreateTime
        self.iops = iops
        self.kmsKeyId = kmsKeyId
        self.licenseModel = licenseModel
        self.masterUsername = masterUsername
        self.optionGroupName = optionGroupName
        self.port = port
        self.region = region
        self.restoreWindow = restoreWindow
        self.status = status
        self.storageType = storageType
        self.tdeCredentialArn = tdeCredentialArn
        self.timezone = timezone
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case allocatedStorage = "AllocatedStorage"
        case availabilityZone = "AvailabilityZone"
        case dBInstanceArn = "DBInstanceArn"
        case dBInstanceIdentifier = "DBInstanceIdentifier"
        case dbiResourceId = "DbiResourceId"
        case encrypted = "Encrypted"
        case engine = "Engine"
        case engineVersion = "EngineVersion"
        case iAMDatabaseAuthenticationEnabled = "IAMDatabaseAuthenticationEnabled"
        case instanceCreateTime = "InstanceCreateTime"
        case iops = "Iops"
        case kmsKeyId = "KmsKeyId"
        case licenseModel = "LicenseModel"
        case masterUsername = "MasterUsername"
        case optionGroupName = "OptionGroupName"
        case port = "Port"
        case region = "Region"
        case restoreWindow = "RestoreWindow"
        case status = "Status"
        case storageType = "StorageType"
        case tdeCredentialArn = "TdeCredentialArn"
        case timezone = "Timezone"
        case vpcId = "VpcId"
    }

    public func validate() throws {
        try restoreWindow?.validate()
    }
}

public struct DBInstanceAutomatedBackupMessage: Codable, Equatable {
    public var dBInstanceAutomatedBackups: DBInstanceAutomatedBackupList?
    public var marker: String?

    public init(dBInstanceAutomatedBackups: DBInstanceAutomatedBackupList? = nil,
                marker: String? = nil) {
        self.dBInstanceAutomatedBackups = dBInstanceAutomatedBackups
        self.marker = marker
    }

    enum CodingKeys: String, CodingKey {
        case dBInstanceAutomatedBackups = "DBInstanceAutomatedBackups"
        case marker = "Marker"
    }

    public func validate() throws {
    }
}

public struct DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups: Codable, Equatable {
    public var describeDBInstanceAutomatedBackupsResult: DBInstanceAutomatedBackupMessage

    public init(describeDBInstanceAutomatedBackupsResult: DBInstanceAutomatedBackupMessage) {
        self.describeDBInstanceAutomatedBackupsResult = describeDBInstanceAutomatedBackupsResult
    }

    enum CodingKeys: String, CodingKey {
        case describeDBInstanceAutomatedBackupsResult = "DescribeDBInstanceAutomatedBackupsResult"
    }

    public func validate() throws {
        try describeDBInstanceAutomatedBackupsResult.validate()
    }
}

public struct DBInstanceAutomatedBackupNotFoundFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBInstanceAutomatedBackupQuotaExceededFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBInstanceMessage: Codable, Equatable {
    public var dBInstances: DBInstanceList?
    public var marker: String?

    public init(dBInstances: DBInstanceList? = nil,
                marker: String? = nil) {
        self.dBInstances = dBInstances
        self.marker = marker
    }

    enum CodingKeys: String, CodingKey {
        case dBInstances = "DBInstances"
        case marker = "Marker"
    }

    public func validate() throws {
    }
}

public struct DBInstanceMessageForDescribeDBInstances: Codable, Equatable {
    public var describeDBInstancesResult: DBInstanceMessage

    public init(describeDBInstancesResult: DBInstanceMessage) {
        self.describeDBInstancesResult = describeDBInstancesResult
    }

    enum CodingKeys: String, CodingKey {
        case describeDBInstancesResult = "DescribeDBInstancesResult"
    }

    public func validate() throws {
        try describeDBInstancesResult.validate()
    }
}

public struct DBInstanceNotFoundFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBInstanceRole: Codable, Equatable {
    public var featureName: String?
    public var roleArn: String?
    public var status: String?

    public init(featureName: String? = nil,
                roleArn: String? = nil,
                status: String? = nil) {
        self.featureName = featureName
        self.roleArn = roleArn
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case featureName = "FeatureName"
        case roleArn = "RoleArn"
        case status = "Status"
    }

    public func validate() throws {
    }
}

public struct DBInstanceRoleAlreadyExistsFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBInstanceRoleNotFoundFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBInstanceRoleQuotaExceededFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBInstanceStatusInfo: Codable, Equatable {
    public var message: String?
    public var normal: Boolean?
    public var status: String?
    public var statusType: String?

    public init(message: String? = nil,
                normal: Boolean? = nil,
                status: String? = nil,
                statusType: String? = nil) {
        self.message = message
        self.normal = normal
        self.status = status
        self.statusType = statusType
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
        case normal = "Normal"
        case status = "Status"
        case statusType = "StatusType"
    }

    public func validate() throws {
    }
}

public struct DBLogFileNotFoundFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBParameterGroup: Codable, Equatable {
    public var dBParameterGroupArn: String?
    public var dBParameterGroupFamily: String?
    public var dBParameterGroupName: String?
    public var description: String?

    public init(dBParameterGroupArn: String? = nil,
                dBParameterGroupFamily: String? = nil,
                dBParameterGroupName: String? = nil,
                description: String? = nil) {
        self.dBParameterGroupArn = dBParameterGroupArn
        self.dBParameterGroupFamily = dBParameterGroupFamily
        self.dBParameterGroupName = dBParameterGroupName
        self.description = description
    }

    enum CodingKeys: String, CodingKey {
        case dBParameterGroupArn = "DBParameterGroupArn"
        case dBParameterGroupFamily = "DBParameterGroupFamily"
        case dBParameterGroupName = "DBParameterGroupName"
        case description = "Description"
    }

    public func validate() throws {
    }
}

public struct DBParameterGroupAlreadyExistsFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBParameterGroupDetails: Codable, Equatable {
    public var marker: String?
    public var parameters: ParametersList?

    public init(marker: String? = nil,
                parameters: ParametersList? = nil) {
        self.marker = marker
        self.parameters = parameters
    }

    enum CodingKeys: String, CodingKey {
        case marker = "Marker"
        case parameters = "Parameters"
    }

    public func validate() throws {
    }
}

public struct DBParameterGroupDetailsForDescribeDBParameters: Codable, Equatable {
    public var describeDBParametersResult: DBParameterGroupDetails

    public init(describeDBParametersResult: DBParameterGroupDetails) {
        self.describeDBParametersResult = describeDBParametersResult
    }

    enum CodingKeys: String, CodingKey {
        case describeDBParametersResult = "DescribeDBParametersResult"
    }

    public func validate() throws {
        try describeDBParametersResult.validate()
    }
}

public struct DBParameterGroupNameMessage: Codable, Equatable {
    public var dBParameterGroupName: String?

    public init(dBParameterGroupName: String? = nil) {
        self.dBParameterGroupName = dBParameterGroupName
    }

    enum CodingKeys: String, CodingKey {
        case dBParameterGroupName = "DBParameterGroupName"
    }

    public func validate() throws {
    }
}

public struct DBParameterGroupNameMessageForModifyDBParameterGroup: Codable, Equatable {
    public var modifyDBParameterGroupResult: DBParameterGroupNameMessage

    public init(modifyDBParameterGroupResult: DBParameterGroupNameMessage) {
        self.modifyDBParameterGroupResult = modifyDBParameterGroupResult
    }

    enum CodingKeys: String, CodingKey {
        case modifyDBParameterGroupResult = "ModifyDBParameterGroupResult"
    }

    public func validate() throws {
        try modifyDBParameterGroupResult.validate()
    }
}

public struct DBParameterGroupNameMessageForResetDBParameterGroup: Codable, Equatable {
    public var resetDBParameterGroupResult: DBParameterGroupNameMessage

    public init(resetDBParameterGroupResult: DBParameterGroupNameMessage) {
        self.resetDBParameterGroupResult = resetDBParameterGroupResult
    }

    enum CodingKeys: String, CodingKey {
        case resetDBParameterGroupResult = "ResetDBParameterGroupResult"
    }

    public func validate() throws {
        try resetDBParameterGroupResult.validate()
    }
}

public struct DBParameterGroupNotFoundFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBParameterGroupQuotaExceededFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBParameterGroupStatus: Codable, Equatable {
    public var dBParameterGroupName: String?
    public var parameterApplyStatus: String?

    public init(dBParameterGroupName: String? = nil,
                parameterApplyStatus: String? = nil) {
        self.dBParameterGroupName = dBParameterGroupName
        self.parameterApplyStatus = parameterApplyStatus
    }

    enum CodingKeys: String, CodingKey {
        case dBParameterGroupName = "DBParameterGroupName"
        case parameterApplyStatus = "ParameterApplyStatus"
    }

    public func validate() throws {
    }
}

public struct DBParameterGroupsMessage: Codable, Equatable {
    public var dBParameterGroups: DBParameterGroupList?
    public var marker: String?

    public init(dBParameterGroups: DBParameterGroupList? = nil,
                marker: String? = nil) {
        self.dBParameterGroups = dBParameterGroups
        self.marker = marker
    }

    enum CodingKeys: String, CodingKey {
        case dBParameterGroups = "DBParameterGroups"
        case marker = "Marker"
    }

    public func validate() throws {
    }
}

public struct DBParameterGroupsMessageForDescribeDBParameterGroups: Codable, Equatable {
    public var describeDBParameterGroupsResult: DBParameterGroupsMessage

    public init(describeDBParameterGroupsResult: DBParameterGroupsMessage) {
        self.describeDBParameterGroupsResult = describeDBParameterGroupsResult
    }

    enum CodingKeys: String, CodingKey {
        case describeDBParameterGroupsResult = "DescribeDBParameterGroupsResult"
    }

    public func validate() throws {
        try describeDBParameterGroupsResult.validate()
    }
}

public struct DBSecurityGroup: Codable, Equatable {
    public var dBSecurityGroupArn: String?
    public var dBSecurityGroupDescription: String?
    public var dBSecurityGroupName: String?
    public var eC2SecurityGroups: EC2SecurityGroupList?
    public var iPRanges: IPRangeList?
    public var ownerId: String?
    public var vpcId: String?

    public init(dBSecurityGroupArn: String? = nil,
                dBSecurityGroupDescription: String? = nil,
                dBSecurityGroupName: String? = nil,
                eC2SecurityGroups: EC2SecurityGroupList? = nil,
                iPRanges: IPRangeList? = nil,
                ownerId: String? = nil,
                vpcId: String? = nil) {
        self.dBSecurityGroupArn = dBSecurityGroupArn
        self.dBSecurityGroupDescription = dBSecurityGroupDescription
        self.dBSecurityGroupName = dBSecurityGroupName
        self.eC2SecurityGroups = eC2SecurityGroups
        self.iPRanges = iPRanges
        self.ownerId = ownerId
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case dBSecurityGroupArn = "DBSecurityGroupArn"
        case dBSecurityGroupDescription = "DBSecurityGroupDescription"
        case dBSecurityGroupName = "DBSecurityGroupName"
        case eC2SecurityGroups = "EC2SecurityGroups"
        case iPRanges = "IPRanges"
        case ownerId = "OwnerId"
        case vpcId = "VpcId"
    }

    public func validate() throws {
    }
}

public struct DBSecurityGroupAlreadyExistsFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBSecurityGroupMembership: Codable, Equatable {
    public var dBSecurityGroupName: String?
    public var status: String?

    public init(dBSecurityGroupName: String? = nil,
                status: String? = nil) {
        self.dBSecurityGroupName = dBSecurityGroupName
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case dBSecurityGroupName = "DBSecurityGroupName"
        case status = "Status"
    }

    public func validate() throws {
    }
}

public struct DBSecurityGroupMessage: Codable, Equatable {
    public var dBSecurityGroups: DBSecurityGroups?
    public var marker: String?

    public init(dBSecurityGroups: DBSecurityGroups? = nil,
                marker: String? = nil) {
        self.dBSecurityGroups = dBSecurityGroups
        self.marker = marker
    }

    enum CodingKeys: String, CodingKey {
        case dBSecurityGroups = "DBSecurityGroups"
        case marker = "Marker"
    }

    public func validate() throws {
    }
}

public struct DBSecurityGroupMessageForDescribeDBSecurityGroups: Codable, Equatable {
    public var describeDBSecurityGroupsResult: DBSecurityGroupMessage

    public init(describeDBSecurityGroupsResult: DBSecurityGroupMessage) {
        self.describeDBSecurityGroupsResult = describeDBSecurityGroupsResult
    }

    enum CodingKeys: String, CodingKey {
        case describeDBSecurityGroupsResult = "DescribeDBSecurityGroupsResult"
    }

    public func validate() throws {
        try describeDBSecurityGroupsResult.validate()
    }
}

public struct DBSecurityGroupNotFoundFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBSecurityGroupNotSupportedFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBSecurityGroupQuotaExceededFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBSnapshot: Codable, Equatable {
    public var allocatedStorage: Integer?
    public var availabilityZone: String?
    public var dBInstanceIdentifier: String?
    public var dBSnapshotArn: String?
    public var dBSnapshotIdentifier: String?
    public var dbiResourceId: String?
    public var encrypted: Boolean?
    public var engine: String?
    public var engineVersion: String?
    public var iAMDatabaseAuthenticationEnabled: Boolean?
    public var instanceCreateTime: TStamp?
    public var iops: IntegerOptional?
    public var kmsKeyId: String?
    public var licenseModel: String?
    public var masterUsername: String?
    public var optionGroupName: String?
    public var percentProgress: Integer?
    public var port: Integer?
    public var processorFeatures: ProcessorFeatureList?
    public var snapshotCreateTime: TStamp?
    public var snapshotType: String?
    public var sourceDBSnapshotIdentifier: String?
    public var sourceRegion: String?
    public var status: String?
    public var storageType: String?
    public var tdeCredentialArn: String?
    public var timezone: String?
    public var vpcId: String?

    public init(allocatedStorage: Integer? = nil,
                availabilityZone: String? = nil,
                dBInstanceIdentifier: String? = nil,
                dBSnapshotArn: String? = nil,
                dBSnapshotIdentifier: String? = nil,
                dbiResourceId: String? = nil,
                encrypted: Boolean? = nil,
                engine: String? = nil,
                engineVersion: String? = nil,
                iAMDatabaseAuthenticationEnabled: Boolean? = nil,
                instanceCreateTime: TStamp? = nil,
                iops: IntegerOptional? = nil,
                kmsKeyId: String? = nil,
                licenseModel: String? = nil,
                masterUsername: String? = nil,
                optionGroupName: String? = nil,
                percentProgress: Integer? = nil,
                port: Integer? = nil,
                processorFeatures: ProcessorFeatureList? = nil,
                snapshotCreateTime: TStamp? = nil,
                snapshotType: String? = nil,
                sourceDBSnapshotIdentifier: String? = nil,
                sourceRegion: String? = nil,
                status: String? = nil,
                storageType: String? = nil,
                tdeCredentialArn: String? = nil,
                timezone: String? = nil,
                vpcId: String? = nil) {
        self.allocatedStorage = allocatedStorage
        self.availabilityZone = availabilityZone
        self.dBInstanceIdentifier = dBInstanceIdentifier
        self.dBSnapshotArn = dBSnapshotArn
        self.dBSnapshotIdentifier = dBSnapshotIdentifier
        self.dbiResourceId = dbiResourceId
        self.encrypted = encrypted
        self.engine = engine
        self.engineVersion = engineVersion
        self.iAMDatabaseAuthenticationEnabled = iAMDatabaseAuthenticationEnabled
        self.instanceCreateTime = instanceCreateTime
        self.iops = iops
        self.kmsKeyId = kmsKeyId
        self.licenseModel = licenseModel
        self.masterUsername = masterUsername
        self.optionGroupName = optionGroupName
        self.percentProgress = percentProgress
        self.port = port
        self.processorFeatures = processorFeatures
        self.snapshotCreateTime = snapshotCreateTime
        self.snapshotType = snapshotType
        self.sourceDBSnapshotIdentifier = sourceDBSnapshotIdentifier
        self.sourceRegion = sourceRegion
        self.status = status
        self.storageType = storageType
        self.tdeCredentialArn = tdeCredentialArn
        self.timezone = timezone
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case allocatedStorage = "AllocatedStorage"
        case availabilityZone = "AvailabilityZone"
        case dBInstanceIdentifier = "DBInstanceIdentifier"
        case dBSnapshotArn = "DBSnapshotArn"
        case dBSnapshotIdentifier = "DBSnapshotIdentifier"
        case dbiResourceId = "DbiResourceId"
        case encrypted = "Encrypted"
        case engine = "Engine"
        case engineVersion = "EngineVersion"
        case iAMDatabaseAuthenticationEnabled = "IAMDatabaseAuthenticationEnabled"
        case instanceCreateTime = "InstanceCreateTime"
        case iops = "Iops"
        case kmsKeyId = "KmsKeyId"
        case licenseModel = "LicenseModel"
        case masterUsername = "MasterUsername"
        case optionGroupName = "OptionGroupName"
        case percentProgress = "PercentProgress"
        case port = "Port"
        case processorFeatures = "ProcessorFeatures"
        case snapshotCreateTime = "SnapshotCreateTime"
        case snapshotType = "SnapshotType"
        case sourceDBSnapshotIdentifier = "SourceDBSnapshotIdentifier"
        case sourceRegion = "SourceRegion"
        case status = "Status"
        case storageType = "StorageType"
        case tdeCredentialArn = "TdeCredentialArn"
        case timezone = "Timezone"
        case vpcId = "VpcId"
    }

    public func validate() throws {
    }
}

public struct DBSnapshotAlreadyExistsFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBSnapshotAttribute: Codable, Equatable {
    public var attributeName: String?
    public var attributeValues: AttributeValueList?

    public init(attributeName: String? = nil,
                attributeValues: AttributeValueList? = nil) {
        self.attributeName = attributeName
        self.attributeValues = attributeValues
    }

    enum CodingKeys: String, CodingKey {
        case attributeName = "AttributeName"
        case attributeValues = "AttributeValues"
    }

    public func validate() throws {
    }
}

public struct DBSnapshotAttributesResult: Codable, Equatable {
    public var dBSnapshotAttributes: DBSnapshotAttributeList?
    public var dBSnapshotIdentifier: String?

    public init(dBSnapshotAttributes: DBSnapshotAttributeList? = nil,
                dBSnapshotIdentifier: String? = nil) {
        self.dBSnapshotAttributes = dBSnapshotAttributes
        self.dBSnapshotIdentifier = dBSnapshotIdentifier
    }

    enum CodingKeys: String, CodingKey {
        case dBSnapshotAttributes = "DBSnapshotAttributes"
        case dBSnapshotIdentifier = "DBSnapshotIdentifier"
    }

    public func validate() throws {
    }
}

public struct DBSnapshotMessage: Codable, Equatable {
    public var dBSnapshots: DBSnapshotList?
    public var marker: String?

    public init(dBSnapshots: DBSnapshotList? = nil,
                marker: String? = nil) {
        self.dBSnapshots = dBSnapshots
        self.marker = marker
    }

    enum CodingKeys: String, CodingKey {
        case dBSnapshots = "DBSnapshots"
        case marker = "Marker"
    }

    public func validate() throws {
    }
}

public struct DBSnapshotMessageForDescribeDBSnapshots: Codable, Equatable {
    public var describeDBSnapshotsResult: DBSnapshotMessage

    public init(describeDBSnapshotsResult: DBSnapshotMessage) {
        self.describeDBSnapshotsResult = describeDBSnapshotsResult
    }

    enum CodingKeys: String, CodingKey {
        case describeDBSnapshotsResult = "DescribeDBSnapshotsResult"
    }

    public func validate() throws {
        try describeDBSnapshotsResult.validate()
    }
}

public struct DBSnapshotNotFoundFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBSubnetGroup: Codable, Equatable {
    public var dBSubnetGroupArn: String?
    public var dBSubnetGroupDescription: String?
    public var dBSubnetGroupName: String?
    public var subnetGroupStatus: String?
    public var subnets: SubnetList?
    public var vpcId: String?

    public init(dBSubnetGroupArn: String? = nil,
                dBSubnetGroupDescription: String? = nil,
                dBSubnetGroupName: String? = nil,
                subnetGroupStatus: String? = nil,
                subnets: SubnetList? = nil,
                vpcId: String? = nil) {
        self.dBSubnetGroupArn = dBSubnetGroupArn
        self.dBSubnetGroupDescription = dBSubnetGroupDescription
        self.dBSubnetGroupName = dBSubnetGroupName
        self.subnetGroupStatus = subnetGroupStatus
        self.subnets = subnets
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case dBSubnetGroupArn = "DBSubnetGroupArn"
        case dBSubnetGroupDescription = "DBSubnetGroupDescription"
        case dBSubnetGroupName = "DBSubnetGroupName"
        case subnetGroupStatus = "SubnetGroupStatus"
        case subnets = "Subnets"
        case vpcId = "VpcId"
    }

    public func validate() throws {
    }
}

public struct DBSubnetGroupAlreadyExistsFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBSubnetGroupDoesNotCoverEnoughAZs: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBSubnetGroupMessage: Codable, Equatable {
    public var dBSubnetGroups: DBSubnetGroups?
    public var marker: String?

    public init(dBSubnetGroups: DBSubnetGroups? = nil,
                marker: String? = nil) {
        self.dBSubnetGroups = dBSubnetGroups
        self.marker = marker
    }

    enum CodingKeys: String, CodingKey {
        case dBSubnetGroups = "DBSubnetGroups"
        case marker = "Marker"
    }

    public func validate() throws {
    }
}

public struct DBSubnetGroupMessageForDescribeDBSubnetGroups: Codable, Equatable {
    public var describeDBSubnetGroupsResult: DBSubnetGroupMessage

    public init(describeDBSubnetGroupsResult: DBSubnetGroupMessage) {
        self.describeDBSubnetGroupsResult = describeDBSubnetGroupsResult
    }

    enum CodingKeys: String, CodingKey {
        case describeDBSubnetGroupsResult = "DescribeDBSubnetGroupsResult"
    }

    public func validate() throws {
        try describeDBSubnetGroupsResult.validate()
    }
}

public struct DBSubnetGroupNotAllowedFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBSubnetGroupNotFoundFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBSubnetGroupQuotaExceededFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBSubnetQuotaExceededFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DBUpgradeDependencyFailureFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeleteDBClusterEndpointMessage: Codable, Equatable {
    public var dBClusterEndpointIdentifier: String

    public init(dBClusterEndpointIdentifier: String) {
        self.dBClusterEndpointIdentifier = dBClusterEndpointIdentifier
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterEndpointIdentifier = "DBClusterEndpointIdentifier"
    }

    public func validate() throws {
    }
}

public struct DeleteDBClusterMessage: Codable, Equatable {
    public var dBClusterIdentifier: String
    public var finalDBSnapshotIdentifier: String?
    public var skipFinalSnapshot: Boolean?

    public init(dBClusterIdentifier: String,
                finalDBSnapshotIdentifier: String? = nil,
                skipFinalSnapshot: Boolean? = nil) {
        self.dBClusterIdentifier = dBClusterIdentifier
        self.finalDBSnapshotIdentifier = finalDBSnapshotIdentifier
        self.skipFinalSnapshot = skipFinalSnapshot
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterIdentifier = "DBClusterIdentifier"
        case finalDBSnapshotIdentifier = "FinalDBSnapshotIdentifier"
        case skipFinalSnapshot = "SkipFinalSnapshot"
    }

    public func validate() throws {
    }
}

public struct DeleteDBClusterParameterGroupMessage: Codable, Equatable {
    public var dBClusterParameterGroupName: String

    public init(dBClusterParameterGroupName: String) {
        self.dBClusterParameterGroupName = dBClusterParameterGroupName
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterParameterGroupName = "DBClusterParameterGroupName"
    }

    public func validate() throws {
    }
}

public struct DeleteDBClusterResult: Codable, Equatable {
    public var dBCluster: DBCluster?

    public init(dBCluster: DBCluster? = nil) {
        self.dBCluster = dBCluster
    }

    enum CodingKeys: String, CodingKey {
        case dBCluster = "DBCluster"
    }

    public func validate() throws {
        try dBCluster?.validate()
    }
}

public struct DeleteDBClusterResultForDeleteDBCluster: Codable, Equatable {
    public var deleteDBClusterResult: DeleteDBClusterResult

    public init(deleteDBClusterResult: DeleteDBClusterResult) {
        self.deleteDBClusterResult = deleteDBClusterResult
    }

    enum CodingKeys: String, CodingKey {
        case deleteDBClusterResult = "DeleteDBClusterResult"
    }

    public func validate() throws {
        try deleteDBClusterResult.validate()
    }
}

public struct DeleteDBClusterSnapshotMessage: Codable, Equatable {
    public var dBClusterSnapshotIdentifier: String

    public init(dBClusterSnapshotIdentifier: String) {
        self.dBClusterSnapshotIdentifier = dBClusterSnapshotIdentifier
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterSnapshotIdentifier = "DBClusterSnapshotIdentifier"
    }

    public func validate() throws {
    }
}

public struct DeleteDBClusterSnapshotResult: Codable, Equatable {
    public var dBClusterSnapshot: DBClusterSnapshot?

    public init(dBClusterSnapshot: DBClusterSnapshot? = nil) {
        self.dBClusterSnapshot = dBClusterSnapshot
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterSnapshot = "DBClusterSnapshot"
    }

    public func validate() throws {
        try dBClusterSnapshot?.validate()
    }
}

public struct DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot: Codable, Equatable {
    public var deleteDBClusterSnapshotResult: DeleteDBClusterSnapshotResult

    public init(deleteDBClusterSnapshotResult: DeleteDBClusterSnapshotResult) {
        self.deleteDBClusterSnapshotResult = deleteDBClusterSnapshotResult
    }

    enum CodingKeys: String, CodingKey {
        case deleteDBClusterSnapshotResult = "DeleteDBClusterSnapshotResult"
    }

    public func validate() throws {
        try deleteDBClusterSnapshotResult.validate()
    }
}

public struct DeleteDBInstanceAutomatedBackupMessage: Codable, Equatable {
    public var dbiResourceId: String

    public init(dbiResourceId: String) {
        self.dbiResourceId = dbiResourceId
    }

    enum CodingKeys: String, CodingKey {
        case dbiResourceId = "DbiResourceId"
    }

    public func validate() throws {
    }
}

public struct DeleteDBInstanceAutomatedBackupResult: Codable, Equatable {
    public var dBInstanceAutomatedBackup: DBInstanceAutomatedBackup?

    public init(dBInstanceAutomatedBackup: DBInstanceAutomatedBackup? = nil) {
        self.dBInstanceAutomatedBackup = dBInstanceAutomatedBackup
    }

    enum CodingKeys: String, CodingKey {
        case dBInstanceAutomatedBackup = "DBInstanceAutomatedBackup"
    }

    public func validate() throws {
        try dBInstanceAutomatedBackup?.validate()
    }
}

public struct DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup: Codable, Equatable {
    public var deleteDBInstanceAutomatedBackupResult: DeleteDBInstanceAutomatedBackupResult

    public init(deleteDBInstanceAutomatedBackupResult: DeleteDBInstanceAutomatedBackupResult) {
        self.deleteDBInstanceAutomatedBackupResult = deleteDBInstanceAutomatedBackupResult
    }

    enum CodingKeys: String, CodingKey {
        case deleteDBInstanceAutomatedBackupResult = "DeleteDBInstanceAutomatedBackupResult"
    }

    public func validate() throws {
        try deleteDBInstanceAutomatedBackupResult.validate()
    }
}

public struct DeleteDBInstanceMessage: Codable, Equatable {
    public var dBInstanceIdentifier: String
    public var deleteAutomatedBackups: BooleanOptional?
    public var finalDBSnapshotIdentifier: String?
    public var skipFinalSnapshot: Boolean?

    public init(dBInstanceIdentifier: String,
                deleteAutomatedBackups: BooleanOptional? = nil,
                finalDBSnapshotIdentifier: String? = nil,
                skipFinalSnapshot: Boolean? = nil) {
        self.dBInstanceIdentifier = dBInstanceIdentifier
        self.deleteAutomatedBackups = deleteAutomatedBackups
        self.finalDBSnapshotIdentifier = finalDBSnapshotIdentifier
        self.skipFinalSnapshot = skipFinalSnapshot
    }

    enum CodingKeys: String, CodingKey {
        case dBInstanceIdentifier = "DBInstanceIdentifier"
        case deleteAutomatedBackups = "DeleteAutomatedBackups"
        case finalDBSnapshotIdentifier = "FinalDBSnapshotIdentifier"
        case skipFinalSnapshot = "SkipFinalSnapshot"
    }

    public func validate() throws {
    }
}

public struct DeleteDBInstanceResult: Codable, Equatable {
    public var dBInstance: DBInstance?

    public init(dBInstance: DBInstance? = nil) {
        self.dBInstance = dBInstance
    }

    enum CodingKeys: String, CodingKey {
        case dBInstance = "DBInstance"
    }

    public func validate() throws {
        try dBInstance?.validate()
    }
}

public struct DeleteDBInstanceResultForDeleteDBInstance: Codable, Equatable {
    public var deleteDBInstanceResult: DeleteDBInstanceResult

    public init(deleteDBInstanceResult: DeleteDBInstanceResult) {
        self.deleteDBInstanceResult = deleteDBInstanceResult
    }

    enum CodingKeys: String, CodingKey {
        case deleteDBInstanceResult = "DeleteDBInstanceResult"
    }

    public func validate() throws {
        try deleteDBInstanceResult.validate()
    }
}

public struct DeleteDBParameterGroupMessage: Codable, Equatable {
    public var dBParameterGroupName: String

    public init(dBParameterGroupName: String) {
        self.dBParameterGroupName = dBParameterGroupName
    }

    enum CodingKeys: String, CodingKey {
        case dBParameterGroupName = "DBParameterGroupName"
    }

    public func validate() throws {
    }
}

public struct DeleteDBSecurityGroupMessage: Codable, Equatable {
    public var dBSecurityGroupName: String

    public init(dBSecurityGroupName: String) {
        self.dBSecurityGroupName = dBSecurityGroupName
    }

    enum CodingKeys: String, CodingKey {
        case dBSecurityGroupName = "DBSecurityGroupName"
    }

    public func validate() throws {
    }
}

public struct DeleteDBSnapshotMessage: Codable, Equatable {
    public var dBSnapshotIdentifier: String

    public init(dBSnapshotIdentifier: String) {
        self.dBSnapshotIdentifier = dBSnapshotIdentifier
    }

    enum CodingKeys: String, CodingKey {
        case dBSnapshotIdentifier = "DBSnapshotIdentifier"
    }

    public func validate() throws {
    }
}

public struct DeleteDBSnapshotResult: Codable, Equatable {
    public var dBSnapshot: DBSnapshot?

    public init(dBSnapshot: DBSnapshot? = nil) {
        self.dBSnapshot = dBSnapshot
    }

    enum CodingKeys: String, CodingKey {
        case dBSnapshot = "DBSnapshot"
    }

    public func validate() throws {
        try dBSnapshot?.validate()
    }
}

public struct DeleteDBSnapshotResultForDeleteDBSnapshot: Codable, Equatable {
    public var deleteDBSnapshotResult: DeleteDBSnapshotResult

    public init(deleteDBSnapshotResult: DeleteDBSnapshotResult) {
        self.deleteDBSnapshotResult = deleteDBSnapshotResult
    }

    enum CodingKeys: String, CodingKey {
        case deleteDBSnapshotResult = "DeleteDBSnapshotResult"
    }

    public func validate() throws {
        try deleteDBSnapshotResult.validate()
    }
}

public struct DeleteDBSubnetGroupMessage: Codable, Equatable {
    public var dBSubnetGroupName: String

    public init(dBSubnetGroupName: String) {
        self.dBSubnetGroupName = dBSubnetGroupName
    }

    enum CodingKeys: String, CodingKey {
        case dBSubnetGroupName = "DBSubnetGroupName"
    }

    public func validate() throws {
    }
}

public struct DeleteEventSubscriptionMessage: Codable, Equatable {
    public var subscriptionName: String

    public init(subscriptionName: String) {
        self.subscriptionName = subscriptionName
    }

    enum CodingKeys: String, CodingKey {
        case subscriptionName = "SubscriptionName"
    }

    public func validate() throws {
    }
}

public struct DeleteEventSubscriptionResult: Codable, Equatable {
    public var eventSubscription: EventSubscription?

    public init(eventSubscription: EventSubscription? = nil) {
        self.eventSubscription = eventSubscription
    }

    enum CodingKeys: String, CodingKey {
        case eventSubscription = "EventSubscription"
    }

    public func validate() throws {
        try eventSubscription?.validate()
    }
}

public struct DeleteEventSubscriptionResultForDeleteEventSubscription: Codable, Equatable {
    public var deleteEventSubscriptionResult: DeleteEventSubscriptionResult

    public init(deleteEventSubscriptionResult: DeleteEventSubscriptionResult) {
        self.deleteEventSubscriptionResult = deleteEventSubscriptionResult
    }

    enum CodingKeys: String, CodingKey {
        case deleteEventSubscriptionResult = "DeleteEventSubscriptionResult"
    }

    public func validate() throws {
        try deleteEventSubscriptionResult.validate()
    }
}

public struct DeleteGlobalClusterMessage: Codable, Equatable {
    public var globalClusterIdentifier: String

    public init(globalClusterIdentifier: String) {
        self.globalClusterIdentifier = globalClusterIdentifier
    }

    enum CodingKeys: String, CodingKey {
        case globalClusterIdentifier = "GlobalClusterIdentifier"
    }

    public func validate() throws {
    }
}

public struct DeleteGlobalClusterResult: Codable, Equatable {
    public var globalCluster: GlobalCluster?

    public init(globalCluster: GlobalCluster? = nil) {
        self.globalCluster = globalCluster
    }

    enum CodingKeys: String, CodingKey {
        case globalCluster = "GlobalCluster"
    }

    public func validate() throws {
        try globalCluster?.validate()
    }
}

public struct DeleteGlobalClusterResultForDeleteGlobalCluster: Codable, Equatable {
    public var deleteGlobalClusterResult: DeleteGlobalClusterResult

    public init(deleteGlobalClusterResult: DeleteGlobalClusterResult) {
        self.deleteGlobalClusterResult = deleteGlobalClusterResult
    }

    enum CodingKeys: String, CodingKey {
        case deleteGlobalClusterResult = "DeleteGlobalClusterResult"
    }

    public func validate() throws {
        try deleteGlobalClusterResult.validate()
    }
}

public struct DeleteOptionGroupMessage: Codable, Equatable {
    public var optionGroupName: String

    public init(optionGroupName: String) {
        self.optionGroupName = optionGroupName
    }

    enum CodingKeys: String, CodingKey {
        case optionGroupName = "OptionGroupName"
    }

    public func validate() throws {
    }
}

public struct DescribeAccountAttributesMessage: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DescribeCertificatesMessage: Codable, Equatable {
    public var certificateIdentifier: String?
    public var filters: FilterList?
    public var marker: String?
    public var maxRecords: IntegerOptional?

    public init(certificateIdentifier: String? = nil,
                filters: FilterList? = nil,
                marker: String? = nil,
                maxRecords: IntegerOptional? = nil) {
        self.certificateIdentifier = certificateIdentifier
        self.filters = filters
        self.marker = marker
        self.maxRecords = maxRecords
    }

    enum CodingKeys: String, CodingKey {
        case certificateIdentifier = "CertificateIdentifier"
        case filters = "Filters"
        case marker = "Marker"
        case maxRecords = "MaxRecords"
    }

    public func validate() throws {
    }
}

public struct DescribeDBClusterBacktracksMessage: Codable, Equatable {
    public var backtrackIdentifier: String?
    public var dBClusterIdentifier: String
    public var filters: FilterList?
    public var marker: String?
    public var maxRecords: IntegerOptional?

    public init(backtrackIdentifier: String? = nil,
                dBClusterIdentifier: String,
                filters: FilterList? = nil,
                marker: String? = nil,
                maxRecords: IntegerOptional? = nil) {
        self.backtrackIdentifier = backtrackIdentifier
        self.dBClusterIdentifier = dBClusterIdentifier
        self.filters = filters
        self.marker = marker
        self.maxRecords = maxRecords
    }

    enum CodingKeys: String, CodingKey {
        case backtrackIdentifier = "BacktrackIdentifier"
        case dBClusterIdentifier = "DBClusterIdentifier"
        case filters = "Filters"
        case marker = "Marker"
        case maxRecords = "MaxRecords"
    }

    public func validate() throws {
    }
}

public struct DescribeDBClusterEndpointsMessage: Codable, Equatable {
    public var dBClusterEndpointIdentifier: String?
    public var dBClusterIdentifier: String?
    public var filters: FilterList?
    public var marker: String?
    public var maxRecords: IntegerOptional?

    public init(dBClusterEndpointIdentifier: String? = nil,
                dBClusterIdentifier: String? = nil,
                filters: FilterList? = nil,
                marker: String? = nil,
                maxRecords: IntegerOptional? = nil) {
        self.dBClusterEndpointIdentifier = dBClusterEndpointIdentifier
        self.dBClusterIdentifier = dBClusterIdentifier
        self.filters = filters
        self.marker = marker
        self.maxRecords = maxRecords
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterEndpointIdentifier = "DBClusterEndpointIdentifier"
        case dBClusterIdentifier = "DBClusterIdentifier"
        case filters = "Filters"
        case marker = "Marker"
        case maxRecords = "MaxRecords"
    }

    public func validate() throws {
    }
}

public struct DescribeDBClusterParameterGroupsMessage: Codable, Equatable {
    public var dBClusterParameterGroupName: String?
    public var filters: FilterList?
    public var marker: String?
    public var maxRecords: IntegerOptional?

    public init(dBClusterParameterGroupName: String? = nil,
                filters: FilterList? = nil,
                marker: String? = nil,
                maxRecords: IntegerOptional? = nil) {
        self.dBClusterParameterGroupName = dBClusterParameterGroupName
        self.filters = filters
        self.marker = marker
        self.maxRecords = maxRecords
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterParameterGroupName = "DBClusterParameterGroupName"
        case filters = "Filters"
        case marker = "Marker"
        case maxRecords = "MaxRecords"
    }

    public func validate() throws {
    }
}

public struct DescribeDBClusterParametersMessage: Codable, Equatable {
    public var dBClusterParameterGroupName: String
    public var filters: FilterList?
    public var marker: String?
    public var maxRecords: IntegerOptional?
    public var source: String?

    public init(dBClusterParameterGroupName: String,
                filters: FilterList? = nil,
                marker: String? = nil,
                maxRecords: IntegerOptional? = nil,
                source: String? = nil) {
        self.dBClusterParameterGroupName = dBClusterParameterGroupName
        self.filters = filters
        self.marker = marker
        self.maxRecords = maxRecords
        self.source = source
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterParameterGroupName = "DBClusterParameterGroupName"
        case filters = "Filters"
        case marker = "Marker"
        case maxRecords = "MaxRecords"
        case source = "Source"
    }

    public func validate() throws {
    }
}

public struct DescribeDBClusterSnapshotAttributesMessage: Codable, Equatable {
    public var dBClusterSnapshotIdentifier: String

    public init(dBClusterSnapshotIdentifier: String) {
        self.dBClusterSnapshotIdentifier = dBClusterSnapshotIdentifier
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterSnapshotIdentifier = "DBClusterSnapshotIdentifier"
    }

    public func validate() throws {
    }
}

public struct DescribeDBClusterSnapshotAttributesResult: Codable, Equatable {
    public var dBClusterSnapshotAttributesResult: DBClusterSnapshotAttributesResult?

    public init(dBClusterSnapshotAttributesResult: DBClusterSnapshotAttributesResult? = nil) {
        self.dBClusterSnapshotAttributesResult = dBClusterSnapshotAttributesResult
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterSnapshotAttributesResult = "DBClusterSnapshotAttributesResult"
    }

    public func validate() throws {
        try dBClusterSnapshotAttributesResult?.validate()
    }
}

public struct DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes: Codable, Equatable {
    public var describeDBClusterSnapshotAttributesResult: DescribeDBClusterSnapshotAttributesResult

    public init(describeDBClusterSnapshotAttributesResult: DescribeDBClusterSnapshotAttributesResult) {
        self.describeDBClusterSnapshotAttributesResult = describeDBClusterSnapshotAttributesResult
    }

    enum CodingKeys: String, CodingKey {
        case describeDBClusterSnapshotAttributesResult = "DescribeDBClusterSnapshotAttributesResult"
    }

    public func validate() throws {
        try describeDBClusterSnapshotAttributesResult.validate()
    }
}

public struct DescribeDBClusterSnapshotsMessage: Codable, Equatable {
    public var dBClusterIdentifier: String?
    public var dBClusterSnapshotIdentifier: String?
    public var filters: FilterList?
    public var includePublic: Boolean?
    public var includeShared: Boolean?
    public var marker: String?
    public var maxRecords: IntegerOptional?
    public var snapshotType: String?

    public init(dBClusterIdentifier: String? = nil,
                dBClusterSnapshotIdentifier: String? = nil,
                filters: FilterList? = nil,
                includePublic: Boolean? = nil,
                includeShared: Boolean? = nil,
                marker: String? = nil,
                maxRecords: IntegerOptional? = nil,
                snapshotType: String? = nil) {
        self.dBClusterIdentifier = dBClusterIdentifier
        self.dBClusterSnapshotIdentifier = dBClusterSnapshotIdentifier
        self.filters = filters
        self.includePublic = includePublic
        self.includeShared = includeShared
        self.marker = marker
        self.maxRecords = maxRecords
        self.snapshotType = snapshotType
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterIdentifier = "DBClusterIdentifier"
        case dBClusterSnapshotIdentifier = "DBClusterSnapshotIdentifier"
        case filters = "Filters"
        case includePublic = "IncludePublic"
        case includeShared = "IncludeShared"
        case marker = "Marker"
        case maxRecords = "MaxRecords"
        case snapshotType = "SnapshotType"
    }

    public func validate() throws {
    }
}

public struct DescribeDBClustersMessage: Codable, Equatable {
    public var dBClusterIdentifier: String?
    public var filters: FilterList?
    public var marker: String?
    public var maxRecords: IntegerOptional?

    public init(dBClusterIdentifier: String? = nil,
                filters: FilterList? = nil,
                marker: String? = nil,
                maxRecords: IntegerOptional? = nil) {
        self.dBClusterIdentifier = dBClusterIdentifier
        self.filters = filters
        self.marker = marker
        self.maxRecords = maxRecords
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterIdentifier = "DBClusterIdentifier"
        case filters = "Filters"
        case marker = "Marker"
        case maxRecords = "MaxRecords"
    }

    public func validate() throws {
    }
}

public struct DescribeDBEngineVersionsMessage: Codable, Equatable {
    public var dBParameterGroupFamily: String?
    public var defaultOnly: Boolean?
    public var engine: String?
    public var engineVersion: String?
    public var filters: FilterList?
    public var listSupportedCharacterSets: BooleanOptional?
    public var listSupportedTimezones: BooleanOptional?
    public var marker: String?
    public var maxRecords: IntegerOptional?

    public init(dBParameterGroupFamily: String? = nil,
                defaultOnly: Boolean? = nil,
                engine: String? = nil,
                engineVersion: String? = nil,
                filters: FilterList? = nil,
                listSupportedCharacterSets: BooleanOptional? = nil,
                listSupportedTimezones: BooleanOptional? = nil,
                marker: String? = nil,
                maxRecords: IntegerOptional? = nil) {
        self.dBParameterGroupFamily = dBParameterGroupFamily
        self.defaultOnly = defaultOnly
        self.engine = engine
        self.engineVersion = engineVersion
        self.filters = filters
        self.listSupportedCharacterSets = listSupportedCharacterSets
        self.listSupportedTimezones = listSupportedTimezones
        self.marker = marker
        self.maxRecords = maxRecords
    }

    enum CodingKeys: String, CodingKey {
        case dBParameterGroupFamily = "DBParameterGroupFamily"
        case defaultOnly = "DefaultOnly"
        case engine = "Engine"
        case engineVersion = "EngineVersion"
        case filters = "Filters"
        case listSupportedCharacterSets = "ListSupportedCharacterSets"
        case listSupportedTimezones = "ListSupportedTimezones"
        case marker = "Marker"
        case maxRecords = "MaxRecords"
    }

    public func validate() throws {
    }
}

public struct DescribeDBInstanceAutomatedBackupsMessage: Codable, Equatable {
    public var dBInstanceIdentifier: String?
    public var dbiResourceId: String?
    public var filters: FilterList?
    public var marker: String?
    public var maxRecords: IntegerOptional?

    public init(dBInstanceIdentifier: String? = nil,
                dbiResourceId: String? = nil,
                filters: FilterList? = nil,
                marker: String? = nil,
                maxRecords: IntegerOptional? = nil) {
        self.dBInstanceIdentifier = dBInstanceIdentifier
        self.dbiResourceId = dbiResourceId
        self.filters = filters
        self.marker = marker
        self.maxRecords = maxRecords
    }

    enum CodingKeys: String, CodingKey {
        case dBInstanceIdentifier = "DBInstanceIdentifier"
        case dbiResourceId = "DbiResourceId"
        case filters = "Filters"
        case marker = "Marker"
        case maxRecords = "MaxRecords"
    }

    public func validate() throws {
    }
}

public struct DescribeDBInstancesMessage: Codable, Equatable {
    public var dBInstanceIdentifier: String?
    public var filters: FilterList?
    public var marker: String?
    public var maxRecords: IntegerOptional?

    public init(dBInstanceIdentifier: String? = nil,
                filters: FilterList? = nil,
                marker: String? = nil,
                maxRecords: IntegerOptional? = nil) {
        self.dBInstanceIdentifier = dBInstanceIdentifier
        self.filters = filters
        self.marker = marker
        self.maxRecords = maxRecords
    }

    enum CodingKeys: String, CodingKey {
        case dBInstanceIdentifier = "DBInstanceIdentifier"
        case filters = "Filters"
        case marker = "Marker"
        case maxRecords = "MaxRecords"
    }

    public func validate() throws {
    }
}

public struct DescribeDBLogFilesDetails: Codable, Equatable {
    public var lastWritten: Long?
    public var logFileName: String?
    public var size: Long?

    public init(lastWritten: Long? = nil,
                logFileName: String? = nil,
                size: Long? = nil) {
        self.lastWritten = lastWritten
        self.logFileName = logFileName
        self.size = size
    }

    enum CodingKeys: String, CodingKey {
        case lastWritten = "LastWritten"
        case logFileName = "LogFileName"
        case size = "Size"
    }

    public func validate() throws {
    }
}

public struct DescribeDBLogFilesMessage: Codable, Equatable {
    public var dBInstanceIdentifier: String
    public var fileLastWritten: Long?
    public var fileSize: Long?
    public var filenameContains: String?
    public var filters: FilterList?
    public var marker: String?
    public var maxRecords: IntegerOptional?

    public init(dBInstanceIdentifier: String,
                fileLastWritten: Long? = nil,
                fileSize: Long? = nil,
                filenameContains: String? = nil,
                filters: FilterList? = nil,
                marker: String? = nil,
                maxRecords: IntegerOptional? = nil) {
        self.dBInstanceIdentifier = dBInstanceIdentifier
        self.fileLastWritten = fileLastWritten
        self.fileSize = fileSize
        self.filenameContains = filenameContains
        self.filters = filters
        self.marker = marker
        self.maxRecords = maxRecords
    }

    enum CodingKeys: String, CodingKey {
        case dBInstanceIdentifier = "DBInstanceIdentifier"
        case fileLastWritten = "FileLastWritten"
        case fileSize = "FileSize"
        case filenameContains = "FilenameContains"
        case filters = "Filters"
        case marker = "Marker"
        case maxRecords = "MaxRecords"
    }

    public func validate() throws {
    }
}

public struct DescribeDBLogFilesResponse: Codable, Equatable {
    public var describeDBLogFiles: DescribeDBLogFilesList?
    public var marker: String?

    public init(describeDBLogFiles: DescribeDBLogFilesList? = nil,
                marker: String? = nil) {
        self.describeDBLogFiles = describeDBLogFiles
        self.marker = marker
    }

    enum CodingKeys: String, CodingKey {
        case describeDBLogFiles = "DescribeDBLogFiles"
        case marker = "Marker"
    }

    public func validate() throws {
    }
}

public struct DescribeDBLogFilesResponseForDescribeDBLogFiles: Codable, Equatable {
    public var describeDBLogFilesResult: DescribeDBLogFilesResponse

    public init(describeDBLogFilesResult: DescribeDBLogFilesResponse) {
        self.describeDBLogFilesResult = describeDBLogFilesResult
    }

    enum CodingKeys: String, CodingKey {
        case describeDBLogFilesResult = "DescribeDBLogFilesResult"
    }

    public func validate() throws {
        try describeDBLogFilesResult.validate()
    }
}

public struct DescribeDBParameterGroupsMessage: Codable, Equatable {
    public var dBParameterGroupName: String?
    public var filters: FilterList?
    public var marker: String?
    public var maxRecords: IntegerOptional?

    public init(dBParameterGroupName: String? = nil,
                filters: FilterList? = nil,
                marker: String? = nil,
                maxRecords: IntegerOptional? = nil) {
        self.dBParameterGroupName = dBParameterGroupName
        self.filters = filters
        self.marker = marker
        self.maxRecords = maxRecords
    }

    enum CodingKeys: String, CodingKey {
        case dBParameterGroupName = "DBParameterGroupName"
        case filters = "Filters"
        case marker = "Marker"
        case maxRecords = "MaxRecords"
    }

    public func validate() throws {
    }
}

public struct DescribeDBParametersMessage: Codable, Equatable {
    public var dBParameterGroupName: String
    public var filters: FilterList?
    public var marker: String?
    public var maxRecords: IntegerOptional?
    public var source: String?

    public init(dBParameterGroupName: String,
                filters: FilterList? = nil,
                marker: String? = nil,
                maxRecords: IntegerOptional? = nil,
                source: String? = nil) {
        self.dBParameterGroupName = dBParameterGroupName
        self.filters = filters
        self.marker = marker
        self.maxRecords = maxRecords
        self.source = source
    }

    enum CodingKeys: String, CodingKey {
        case dBParameterGroupName = "DBParameterGroupName"
        case filters = "Filters"
        case marker = "Marker"
        case maxRecords = "MaxRecords"
        case source = "Source"
    }

    public func validate() throws {
    }
}

public struct DescribeDBSecurityGroupsMessage: Codable, Equatable {
    public var dBSecurityGroupName: String?
    public var filters: FilterList?
    public var marker: String?
    public var maxRecords: IntegerOptional?

    public init(dBSecurityGroupName: String? = nil,
                filters: FilterList? = nil,
                marker: String? = nil,
                maxRecords: IntegerOptional? = nil) {
        self.dBSecurityGroupName = dBSecurityGroupName
        self.filters = filters
        self.marker = marker
        self.maxRecords = maxRecords
    }

    enum CodingKeys: String, CodingKey {
        case dBSecurityGroupName = "DBSecurityGroupName"
        case filters = "Filters"
        case marker = "Marker"
        case maxRecords = "MaxRecords"
    }

    public func validate() throws {
    }
}

public struct DescribeDBSnapshotAttributesMessage: Codable, Equatable {
    public var dBSnapshotIdentifier: String

    public init(dBSnapshotIdentifier: String) {
        self.dBSnapshotIdentifier = dBSnapshotIdentifier
    }

    enum CodingKeys: String, CodingKey {
        case dBSnapshotIdentifier = "DBSnapshotIdentifier"
    }

    public func validate() throws {
    }
}

public struct DescribeDBSnapshotAttributesResult: Codable, Equatable {
    public var dBSnapshotAttributesResult: DBSnapshotAttributesResult?

    public init(dBSnapshotAttributesResult: DBSnapshotAttributesResult? = nil) {
        self.dBSnapshotAttributesResult = dBSnapshotAttributesResult
    }

    enum CodingKeys: String, CodingKey {
        case dBSnapshotAttributesResult = "DBSnapshotAttributesResult"
    }

    public func validate() throws {
        try dBSnapshotAttributesResult?.validate()
    }
}

public struct DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes: Codable, Equatable {
    public var describeDBSnapshotAttributesResult: DescribeDBSnapshotAttributesResult

    public init(describeDBSnapshotAttributesResult: DescribeDBSnapshotAttributesResult) {
        self.describeDBSnapshotAttributesResult = describeDBSnapshotAttributesResult
    }

    enum CodingKeys: String, CodingKey {
        case describeDBSnapshotAttributesResult = "DescribeDBSnapshotAttributesResult"
    }

    public func validate() throws {
        try describeDBSnapshotAttributesResult.validate()
    }
}

public struct DescribeDBSnapshotsMessage: Codable, Equatable {
    public var dBInstanceIdentifier: String?
    public var dBSnapshotIdentifier: String?
    public var dbiResourceId: String?
    public var filters: FilterList?
    public var includePublic: Boolean?
    public var includeShared: Boolean?
    public var marker: String?
    public var maxRecords: IntegerOptional?
    public var snapshotType: String?

    public init(dBInstanceIdentifier: String? = nil,
                dBSnapshotIdentifier: String? = nil,
                dbiResourceId: String? = nil,
                filters: FilterList? = nil,
                includePublic: Boolean? = nil,
                includeShared: Boolean? = nil,
                marker: String? = nil,
                maxRecords: IntegerOptional? = nil,
                snapshotType: String? = nil) {
        self.dBInstanceIdentifier = dBInstanceIdentifier
        self.dBSnapshotIdentifier = dBSnapshotIdentifier
        self.dbiResourceId = dbiResourceId
        self.filters = filters
        self.includePublic = includePublic
        self.includeShared = includeShared
        self.marker = marker
        self.maxRecords = maxRecords
        self.snapshotType = snapshotType
    }

    enum CodingKeys: String, CodingKey {
        case dBInstanceIdentifier = "DBInstanceIdentifier"
        case dBSnapshotIdentifier = "DBSnapshotIdentifier"
        case dbiResourceId = "DbiResourceId"
        case filters = "Filters"
        case includePublic = "IncludePublic"
        case includeShared = "IncludeShared"
        case marker = "Marker"
        case maxRecords = "MaxRecords"
        case snapshotType = "SnapshotType"
    }

    public func validate() throws {
    }
}

public struct DescribeDBSubnetGroupsMessage: Codable, Equatable {
    public var dBSubnetGroupName: String?
    public var filters: FilterList?
    public var marker: String?
    public var maxRecords: IntegerOptional?

    public init(dBSubnetGroupName: String? = nil,
                filters: FilterList? = nil,
                marker: String? = nil,
                maxRecords: IntegerOptional? = nil) {
        self.dBSubnetGroupName = dBSubnetGroupName
        self.filters = filters
        self.marker = marker
        self.maxRecords = maxRecords
    }

    enum CodingKeys: String, CodingKey {
        case dBSubnetGroupName = "DBSubnetGroupName"
        case filters = "Filters"
        case marker = "Marker"
        case maxRecords = "MaxRecords"
    }

    public func validate() throws {
    }
}

public struct DescribeEngineDefaultClusterParametersMessage: Codable, Equatable {
    public var dBParameterGroupFamily: String
    public var filters: FilterList?
    public var marker: String?
    public var maxRecords: IntegerOptional?

    public init(dBParameterGroupFamily: String,
                filters: FilterList? = nil,
                marker: String? = nil,
                maxRecords: IntegerOptional? = nil) {
        self.dBParameterGroupFamily = dBParameterGroupFamily
        self.filters = filters
        self.marker = marker
        self.maxRecords = maxRecords
    }

    enum CodingKeys: String, CodingKey {
        case dBParameterGroupFamily = "DBParameterGroupFamily"
        case filters = "Filters"
        case marker = "Marker"
        case maxRecords = "MaxRecords"
    }

    public func validate() throws {
    }
}

public struct DescribeEngineDefaultClusterParametersResult: Codable, Equatable {
    public var engineDefaults: EngineDefaults?

    public init(engineDefaults: EngineDefaults? = nil) {
        self.engineDefaults = engineDefaults
    }

    enum CodingKeys: String, CodingKey {
        case engineDefaults = "EngineDefaults"
    }

    public func validate() throws {
        try engineDefaults?.validate()
    }
}

public struct DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters: Codable, Equatable {
    public var describeEngineDefaultClusterParametersResult: DescribeEngineDefaultClusterParametersResult

    public init(describeEngineDefaultClusterParametersResult: DescribeEngineDefaultClusterParametersResult) {
        self.describeEngineDefaultClusterParametersResult = describeEngineDefaultClusterParametersResult
    }

    enum CodingKeys: String, CodingKey {
        case describeEngineDefaultClusterParametersResult = "DescribeEngineDefaultClusterParametersResult"
    }

    public func validate() throws {
        try describeEngineDefaultClusterParametersResult.validate()
    }
}

public struct DescribeEngineDefaultParametersMessage: Codable, Equatable {
    public var dBParameterGroupFamily: String
    public var filters: FilterList?
    public var marker: String?
    public var maxRecords: IntegerOptional?

    public init(dBParameterGroupFamily: String,
                filters: FilterList? = nil,
                marker: String? = nil,
                maxRecords: IntegerOptional? = nil) {
        self.dBParameterGroupFamily = dBParameterGroupFamily
        self.filters = filters
        self.marker = marker
        self.maxRecords = maxRecords
    }

    enum CodingKeys: String, CodingKey {
        case dBParameterGroupFamily = "DBParameterGroupFamily"
        case filters = "Filters"
        case marker = "Marker"
        case maxRecords = "MaxRecords"
    }

    public func validate() throws {
    }
}

public struct DescribeEngineDefaultParametersResult: Codable, Equatable {
    public var engineDefaults: EngineDefaults?

    public init(engineDefaults: EngineDefaults? = nil) {
        self.engineDefaults = engineDefaults
    }

    enum CodingKeys: String, CodingKey {
        case engineDefaults = "EngineDefaults"
    }

    public func validate() throws {
        try engineDefaults?.validate()
    }
}

public struct DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters: Codable, Equatable {
    public var describeEngineDefaultParametersResult: DescribeEngineDefaultParametersResult

    public init(describeEngineDefaultParametersResult: DescribeEngineDefaultParametersResult) {
        self.describeEngineDefaultParametersResult = describeEngineDefaultParametersResult
    }

    enum CodingKeys: String, CodingKey {
        case describeEngineDefaultParametersResult = "DescribeEngineDefaultParametersResult"
    }

    public func validate() throws {
        try describeEngineDefaultParametersResult.validate()
    }
}

public struct DescribeEventCategoriesMessage: Codable, Equatable {
    public var filters: FilterList?
    public var sourceType: String?

    public init(filters: FilterList? = nil,
                sourceType: String? = nil) {
        self.filters = filters
        self.sourceType = sourceType
    }

    enum CodingKeys: String, CodingKey {
        case filters = "Filters"
        case sourceType = "SourceType"
    }

    public func validate() throws {
    }
}

public struct DescribeEventSubscriptionsMessage: Codable, Equatable {
    public var filters: FilterList?
    public var marker: String?
    public var maxRecords: IntegerOptional?
    public var subscriptionName: String?

    public init(filters: FilterList? = nil,
                marker: String? = nil,
                maxRecords: IntegerOptional? = nil,
                subscriptionName: String? = nil) {
        self.filters = filters
        self.marker = marker
        self.maxRecords = maxRecords
        self.subscriptionName = subscriptionName
    }

    enum CodingKeys: String, CodingKey {
        case filters = "Filters"
        case marker = "Marker"
        case maxRecords = "MaxRecords"
        case subscriptionName = "SubscriptionName"
    }

    public func validate() throws {
    }
}

public struct DescribeEventsMessage: Codable, Equatable {
    public var duration: IntegerOptional?
    public var endTime: TStamp?
    public var eventCategories: EventCategoriesList?
    public var filters: FilterList?
    public var marker: String?
    public var maxRecords: IntegerOptional?
    public var sourceIdentifier: String?
    public var sourceType: SourceType?
    public var startTime: TStamp?

    public init(duration: IntegerOptional? = nil,
                endTime: TStamp? = nil,
                eventCategories: EventCategoriesList? = nil,
                filters: FilterList? = nil,
                marker: String? = nil,
                maxRecords: IntegerOptional? = nil,
                sourceIdentifier: String? = nil,
                sourceType: SourceType? = nil,
                startTime: TStamp? = nil) {
        self.duration = duration
        self.endTime = endTime
        self.eventCategories = eventCategories
        self.filters = filters
        self.marker = marker
        self.maxRecords = maxRecords
        self.sourceIdentifier = sourceIdentifier
        self.sourceType = sourceType
        self.startTime = startTime
    }

    enum CodingKeys: String, CodingKey {
        case duration = "Duration"
        case endTime = "EndTime"
        case eventCategories = "EventCategories"
        case filters = "Filters"
        case marker = "Marker"
        case maxRecords = "MaxRecords"
        case sourceIdentifier = "SourceIdentifier"
        case sourceType = "SourceType"
        case startTime = "StartTime"
    }

    public func validate() throws {
    }
}

public struct DescribeGlobalClustersMessage: Codable, Equatable {
    public var filters: FilterList?
    public var globalClusterIdentifier: String?
    public var marker: String?
    public var maxRecords: IntegerOptional?

    public init(filters: FilterList? = nil,
                globalClusterIdentifier: String? = nil,
                marker: String? = nil,
                maxRecords: IntegerOptional? = nil) {
        self.filters = filters
        self.globalClusterIdentifier = globalClusterIdentifier
        self.marker = marker
        self.maxRecords = maxRecords
    }

    enum CodingKeys: String, CodingKey {
        case filters = "Filters"
        case globalClusterIdentifier = "GlobalClusterIdentifier"
        case marker = "Marker"
        case maxRecords = "MaxRecords"
    }

    public func validate() throws {
    }
}

public struct DescribeOptionGroupOptionsMessage: Codable, Equatable {
    public var engineName: String
    public var filters: FilterList?
    public var majorEngineVersion: String?
    public var marker: String?
    public var maxRecords: IntegerOptional?

    public init(engineName: String,
                filters: FilterList? = nil,
                majorEngineVersion: String? = nil,
                marker: String? = nil,
                maxRecords: IntegerOptional? = nil) {
        self.engineName = engineName
        self.filters = filters
        self.majorEngineVersion = majorEngineVersion
        self.marker = marker
        self.maxRecords = maxRecords
    }

    enum CodingKeys: String, CodingKey {
        case engineName = "EngineName"
        case filters = "Filters"
        case majorEngineVersion = "MajorEngineVersion"
        case marker = "Marker"
        case maxRecords = "MaxRecords"
    }

    public func validate() throws {
    }
}

public struct DescribeOptionGroupsMessage: Codable, Equatable {
    public var engineName: String?
    public var filters: FilterList?
    public var majorEngineVersion: String?
    public var marker: String?
    public var maxRecords: IntegerOptional?
    public var optionGroupName: String?

    public init(engineName: String? = nil,
                filters: FilterList? = nil,
                majorEngineVersion: String? = nil,
                marker: String? = nil,
                maxRecords: IntegerOptional? = nil,
                optionGroupName: String? = nil) {
        self.engineName = engineName
        self.filters = filters
        self.majorEngineVersion = majorEngineVersion
        self.marker = marker
        self.maxRecords = maxRecords
        self.optionGroupName = optionGroupName
    }

    enum CodingKeys: String, CodingKey {
        case engineName = "EngineName"
        case filters = "Filters"
        case majorEngineVersion = "MajorEngineVersion"
        case marker = "Marker"
        case maxRecords = "MaxRecords"
        case optionGroupName = "OptionGroupName"
    }

    public func validate() throws {
    }
}

public struct DescribeOrderableDBInstanceOptionsMessage: Codable, Equatable {
    public var dBInstanceClass: String?
    public var engine: String
    public var engineVersion: String?
    public var filters: FilterList?
    public var licenseModel: String?
    public var marker: String?
    public var maxRecords: IntegerOptional?
    public var vpc: BooleanOptional?

    public init(dBInstanceClass: String? = nil,
                engine: String,
                engineVersion: String? = nil,
                filters: FilterList? = nil,
                licenseModel: String? = nil,
                marker: String? = nil,
                maxRecords: IntegerOptional? = nil,
                vpc: BooleanOptional? = nil) {
        self.dBInstanceClass = dBInstanceClass
        self.engine = engine
        self.engineVersion = engineVersion
        self.filters = filters
        self.licenseModel = licenseModel
        self.marker = marker
        self.maxRecords = maxRecords
        self.vpc = vpc
    }

    enum CodingKeys: String, CodingKey {
        case dBInstanceClass = "DBInstanceClass"
        case engine = "Engine"
        case engineVersion = "EngineVersion"
        case filters = "Filters"
        case licenseModel = "LicenseModel"
        case marker = "Marker"
        case maxRecords = "MaxRecords"
        case vpc = "Vpc"
    }

    public func validate() throws {
    }
}

public struct DescribePendingMaintenanceActionsMessage: Codable, Equatable {
    public var filters: FilterList?
    public var marker: String?
    public var maxRecords: IntegerOptional?
    public var resourceIdentifier: String?

    public init(filters: FilterList? = nil,
                marker: String? = nil,
                maxRecords: IntegerOptional? = nil,
                resourceIdentifier: String? = nil) {
        self.filters = filters
        self.marker = marker
        self.maxRecords = maxRecords
        self.resourceIdentifier = resourceIdentifier
    }

    enum CodingKeys: String, CodingKey {
        case filters = "Filters"
        case marker = "Marker"
        case maxRecords = "MaxRecords"
        case resourceIdentifier = "ResourceIdentifier"
    }

    public func validate() throws {
    }
}

public struct DescribeReservedDBInstancesMessage: Codable, Equatable {
    public var dBInstanceClass: String?
    public var duration: String?
    public var filters: FilterList?
    public var marker: String?
    public var maxRecords: IntegerOptional?
    public var multiAZ: BooleanOptional?
    public var offeringType: String?
    public var productDescription: String?
    public var reservedDBInstanceId: String?
    public var reservedDBInstancesOfferingId: String?

    public init(dBInstanceClass: String? = nil,
                duration: String? = nil,
                filters: FilterList? = nil,
                marker: String? = nil,
                maxRecords: IntegerOptional? = nil,
                multiAZ: BooleanOptional? = nil,
                offeringType: String? = nil,
                productDescription: String? = nil,
                reservedDBInstanceId: String? = nil,
                reservedDBInstancesOfferingId: String? = nil) {
        self.dBInstanceClass = dBInstanceClass
        self.duration = duration
        self.filters = filters
        self.marker = marker
        self.maxRecords = maxRecords
        self.multiAZ = multiAZ
        self.offeringType = offeringType
        self.productDescription = productDescription
        self.reservedDBInstanceId = reservedDBInstanceId
        self.reservedDBInstancesOfferingId = reservedDBInstancesOfferingId
    }

    enum CodingKeys: String, CodingKey {
        case dBInstanceClass = "DBInstanceClass"
        case duration = "Duration"
        case filters = "Filters"
        case marker = "Marker"
        case maxRecords = "MaxRecords"
        case multiAZ = "MultiAZ"
        case offeringType = "OfferingType"
        case productDescription = "ProductDescription"
        case reservedDBInstanceId = "ReservedDBInstanceId"
        case reservedDBInstancesOfferingId = "ReservedDBInstancesOfferingId"
    }

    public func validate() throws {
    }
}

public struct DescribeReservedDBInstancesOfferingsMessage: Codable, Equatable {
    public var dBInstanceClass: String?
    public var duration: String?
    public var filters: FilterList?
    public var marker: String?
    public var maxRecords: IntegerOptional?
    public var multiAZ: BooleanOptional?
    public var offeringType: String?
    public var productDescription: String?
    public var reservedDBInstancesOfferingId: String?

    public init(dBInstanceClass: String? = nil,
                duration: String? = nil,
                filters: FilterList? = nil,
                marker: String? = nil,
                maxRecords: IntegerOptional? = nil,
                multiAZ: BooleanOptional? = nil,
                offeringType: String? = nil,
                productDescription: String? = nil,
                reservedDBInstancesOfferingId: String? = nil) {
        self.dBInstanceClass = dBInstanceClass
        self.duration = duration
        self.filters = filters
        self.marker = marker
        self.maxRecords = maxRecords
        self.multiAZ = multiAZ
        self.offeringType = offeringType
        self.productDescription = productDescription
        self.reservedDBInstancesOfferingId = reservedDBInstancesOfferingId
    }

    enum CodingKeys: String, CodingKey {
        case dBInstanceClass = "DBInstanceClass"
        case duration = "Duration"
        case filters = "Filters"
        case marker = "Marker"
        case maxRecords = "MaxRecords"
        case multiAZ = "MultiAZ"
        case offeringType = "OfferingType"
        case productDescription = "ProductDescription"
        case reservedDBInstancesOfferingId = "ReservedDBInstancesOfferingId"
    }

    public func validate() throws {
    }
}

public struct DescribeSourceRegionsMessage: Codable, Equatable {
    public var filters: FilterList?
    public var marker: String?
    public var maxRecords: IntegerOptional?
    public var regionName: String?

    public init(filters: FilterList? = nil,
                marker: String? = nil,
                maxRecords: IntegerOptional? = nil,
                regionName: String? = nil) {
        self.filters = filters
        self.marker = marker
        self.maxRecords = maxRecords
        self.regionName = regionName
    }

    enum CodingKeys: String, CodingKey {
        case filters = "Filters"
        case marker = "Marker"
        case maxRecords = "MaxRecords"
        case regionName = "RegionName"
    }

    public func validate() throws {
    }
}

public struct DescribeValidDBInstanceModificationsMessage: Codable, Equatable {
    public var dBInstanceIdentifier: String

    public init(dBInstanceIdentifier: String) {
        self.dBInstanceIdentifier = dBInstanceIdentifier
    }

    enum CodingKeys: String, CodingKey {
        case dBInstanceIdentifier = "DBInstanceIdentifier"
    }

    public func validate() throws {
    }
}

public struct DescribeValidDBInstanceModificationsResult: Codable, Equatable {
    public var validDBInstanceModificationsMessage: ValidDBInstanceModificationsMessage?

    public init(validDBInstanceModificationsMessage: ValidDBInstanceModificationsMessage? = nil) {
        self.validDBInstanceModificationsMessage = validDBInstanceModificationsMessage
    }

    enum CodingKeys: String, CodingKey {
        case validDBInstanceModificationsMessage = "ValidDBInstanceModificationsMessage"
    }

    public func validate() throws {
        try validDBInstanceModificationsMessage?.validate()
    }
}

public struct DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications: Codable, Equatable {
    public var describeValidDBInstanceModificationsResult: DescribeValidDBInstanceModificationsResult

    public init(describeValidDBInstanceModificationsResult: DescribeValidDBInstanceModificationsResult) {
        self.describeValidDBInstanceModificationsResult = describeValidDBInstanceModificationsResult
    }

    enum CodingKeys: String, CodingKey {
        case describeValidDBInstanceModificationsResult = "DescribeValidDBInstanceModificationsResult"
    }

    public func validate() throws {
        try describeValidDBInstanceModificationsResult.validate()
    }
}

public struct DomainMembership: Codable, Equatable {
    public var domain: String?
    public var fQDN: String?
    public var iAMRoleName: String?
    public var status: String?

    public init(domain: String? = nil,
                fQDN: String? = nil,
                iAMRoleName: String? = nil,
                status: String? = nil) {
        self.domain = domain
        self.fQDN = fQDN
        self.iAMRoleName = iAMRoleName
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case domain = "Domain"
        case fQDN = "FQDN"
        case iAMRoleName = "IAMRoleName"
        case status = "Status"
    }

    public func validate() throws {
    }
}

public struct DomainNotFoundFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DoubleRange: Codable, Equatable {
    public var from: Double?
    public var to: Double?

    public init(from: Double? = nil,
                to: Double? = nil) {
        self.from = from
        self.to = to
    }

    enum CodingKeys: String, CodingKey {
        case from = "From"
        case to = "To"
    }

    public func validate() throws {
    }
}

public struct DownloadDBLogFilePortionDetails: Codable, Equatable {
    public var additionalDataPending: Boolean?
    public var logFileData: String?
    public var marker: String?

    public init(additionalDataPending: Boolean? = nil,
                logFileData: String? = nil,
                marker: String? = nil) {
        self.additionalDataPending = additionalDataPending
        self.logFileData = logFileData
        self.marker = marker
    }

    enum CodingKeys: String, CodingKey {
        case additionalDataPending = "AdditionalDataPending"
        case logFileData = "LogFileData"
        case marker = "Marker"
    }

    public func validate() throws {
    }
}

public struct DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion: Codable, Equatable {
    public var downloadDBLogFilePortionResult: DownloadDBLogFilePortionDetails

    public init(downloadDBLogFilePortionResult: DownloadDBLogFilePortionDetails) {
        self.downloadDBLogFilePortionResult = downloadDBLogFilePortionResult
    }

    enum CodingKeys: String, CodingKey {
        case downloadDBLogFilePortionResult = "DownloadDBLogFilePortionResult"
    }

    public func validate() throws {
        try downloadDBLogFilePortionResult.validate()
    }
}

public struct DownloadDBLogFilePortionMessage: Codable, Equatable {
    public var dBInstanceIdentifier: String
    public var logFileName: String
    public var marker: String?
    public var numberOfLines: Integer?

    public init(dBInstanceIdentifier: String,
                logFileName: String,
                marker: String? = nil,
                numberOfLines: Integer? = nil) {
        self.dBInstanceIdentifier = dBInstanceIdentifier
        self.logFileName = logFileName
        self.marker = marker
        self.numberOfLines = numberOfLines
    }

    enum CodingKeys: String, CodingKey {
        case dBInstanceIdentifier = "DBInstanceIdentifier"
        case logFileName = "LogFileName"
        case marker = "Marker"
        case numberOfLines = "NumberOfLines"
    }

    public func validate() throws {
    }
}

public struct EC2SecurityGroup: Codable, Equatable {
    public var eC2SecurityGroupId: String?
    public var eC2SecurityGroupName: String?
    public var eC2SecurityGroupOwnerId: String?
    public var status: String?

    public init(eC2SecurityGroupId: String? = nil,
                eC2SecurityGroupName: String? = nil,
                eC2SecurityGroupOwnerId: String? = nil,
                status: String? = nil) {
        self.eC2SecurityGroupId = eC2SecurityGroupId
        self.eC2SecurityGroupName = eC2SecurityGroupName
        self.eC2SecurityGroupOwnerId = eC2SecurityGroupOwnerId
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case eC2SecurityGroupId = "EC2SecurityGroupId"
        case eC2SecurityGroupName = "EC2SecurityGroupName"
        case eC2SecurityGroupOwnerId = "EC2SecurityGroupOwnerId"
        case status = "Status"
    }

    public func validate() throws {
    }
}

public struct Endpoint: Codable, Equatable {
    public var address: String?
    public var hostedZoneId: String?
    public var port: Integer?

    public init(address: String? = nil,
                hostedZoneId: String? = nil,
                port: Integer? = nil) {
        self.address = address
        self.hostedZoneId = hostedZoneId
        self.port = port
    }

    enum CodingKeys: String, CodingKey {
        case address = "Address"
        case hostedZoneId = "HostedZoneId"
        case port = "Port"
    }

    public func validate() throws {
    }
}

public struct EngineDefaults: Codable, Equatable {
    public var dBParameterGroupFamily: String?
    public var marker: String?
    public var parameters: ParametersList?

    public init(dBParameterGroupFamily: String? = nil,
                marker: String? = nil,
                parameters: ParametersList? = nil) {
        self.dBParameterGroupFamily = dBParameterGroupFamily
        self.marker = marker
        self.parameters = parameters
    }

    enum CodingKeys: String, CodingKey {
        case dBParameterGroupFamily = "DBParameterGroupFamily"
        case marker = "Marker"
        case parameters = "Parameters"
    }

    public func validate() throws {
    }
}

public struct Event: Codable, Equatable {
    public var date: TStamp?
    public var eventCategories: EventCategoriesList?
    public var message: String?
    public var sourceArn: String?
    public var sourceIdentifier: String?
    public var sourceType: SourceType?

    public init(date: TStamp? = nil,
                eventCategories: EventCategoriesList? = nil,
                message: String? = nil,
                sourceArn: String? = nil,
                sourceIdentifier: String? = nil,
                sourceType: SourceType? = nil) {
        self.date = date
        self.eventCategories = eventCategories
        self.message = message
        self.sourceArn = sourceArn
        self.sourceIdentifier = sourceIdentifier
        self.sourceType = sourceType
    }

    enum CodingKeys: String, CodingKey {
        case date = "Date"
        case eventCategories = "EventCategories"
        case message = "Message"
        case sourceArn = "SourceArn"
        case sourceIdentifier = "SourceIdentifier"
        case sourceType = "SourceType"
    }

    public func validate() throws {
    }
}

public struct EventCategoriesMap: Codable, Equatable {
    public var eventCategories: EventCategoriesList?
    public var sourceType: String?

    public init(eventCategories: EventCategoriesList? = nil,
                sourceType: String? = nil) {
        self.eventCategories = eventCategories
        self.sourceType = sourceType
    }

    enum CodingKeys: String, CodingKey {
        case eventCategories = "EventCategories"
        case sourceType = "SourceType"
    }

    public func validate() throws {
    }
}

public struct EventCategoriesMessage: Codable, Equatable {
    public var eventCategoriesMapList: EventCategoriesMapList?

    public init(eventCategoriesMapList: EventCategoriesMapList? = nil) {
        self.eventCategoriesMapList = eventCategoriesMapList
    }

    enum CodingKeys: String, CodingKey {
        case eventCategoriesMapList = "EventCategoriesMapList"
    }

    public func validate() throws {
    }
}

public struct EventCategoriesMessageForDescribeEventCategories: Codable, Equatable {
    public var describeEventCategoriesResult: EventCategoriesMessage

    public init(describeEventCategoriesResult: EventCategoriesMessage) {
        self.describeEventCategoriesResult = describeEventCategoriesResult
    }

    enum CodingKeys: String, CodingKey {
        case describeEventCategoriesResult = "DescribeEventCategoriesResult"
    }

    public func validate() throws {
        try describeEventCategoriesResult.validate()
    }
}

public struct EventSubscription: Codable, Equatable {
    public var custSubscriptionId: String?
    public var customerAwsId: String?
    public var enabled: Boolean?
    public var eventCategoriesList: EventCategoriesList?
    public var eventSubscriptionArn: String?
    public var snsTopicArn: String?
    public var sourceIdsList: SourceIdsList?
    public var sourceType: String?
    public var status: String?
    public var subscriptionCreationTime: String?

    public init(custSubscriptionId: String? = nil,
                customerAwsId: String? = nil,
                enabled: Boolean? = nil,
                eventCategoriesList: EventCategoriesList? = nil,
                eventSubscriptionArn: String? = nil,
                snsTopicArn: String? = nil,
                sourceIdsList: SourceIdsList? = nil,
                sourceType: String? = nil,
                status: String? = nil,
                subscriptionCreationTime: String? = nil) {
        self.custSubscriptionId = custSubscriptionId
        self.customerAwsId = customerAwsId
        self.enabled = enabled
        self.eventCategoriesList = eventCategoriesList
        self.eventSubscriptionArn = eventSubscriptionArn
        self.snsTopicArn = snsTopicArn
        self.sourceIdsList = sourceIdsList
        self.sourceType = sourceType
        self.status = status
        self.subscriptionCreationTime = subscriptionCreationTime
    }

    enum CodingKeys: String, CodingKey {
        case custSubscriptionId = "CustSubscriptionId"
        case customerAwsId = "CustomerAwsId"
        case enabled = "Enabled"
        case eventCategoriesList = "EventCategoriesList"
        case eventSubscriptionArn = "EventSubscriptionArn"
        case snsTopicArn = "SnsTopicArn"
        case sourceIdsList = "SourceIdsList"
        case sourceType = "SourceType"
        case status = "Status"
        case subscriptionCreationTime = "SubscriptionCreationTime"
    }

    public func validate() throws {
    }
}

public struct EventSubscriptionQuotaExceededFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct EventSubscriptionsMessage: Codable, Equatable {
    public var eventSubscriptionsList: EventSubscriptionsList?
    public var marker: String?

    public init(eventSubscriptionsList: EventSubscriptionsList? = nil,
                marker: String? = nil) {
        self.eventSubscriptionsList = eventSubscriptionsList
        self.marker = marker
    }

    enum CodingKeys: String, CodingKey {
        case eventSubscriptionsList = "EventSubscriptionsList"
        case marker = "Marker"
    }

    public func validate() throws {
    }
}

public struct EventSubscriptionsMessageForDescribeEventSubscriptions: Codable, Equatable {
    public var describeEventSubscriptionsResult: EventSubscriptionsMessage

    public init(describeEventSubscriptionsResult: EventSubscriptionsMessage) {
        self.describeEventSubscriptionsResult = describeEventSubscriptionsResult
    }

    enum CodingKeys: String, CodingKey {
        case describeEventSubscriptionsResult = "DescribeEventSubscriptionsResult"
    }

    public func validate() throws {
        try describeEventSubscriptionsResult.validate()
    }
}

public struct EventsMessage: Codable, Equatable {
    public var events: EventList?
    public var marker: String?

    public init(events: EventList? = nil,
                marker: String? = nil) {
        self.events = events
        self.marker = marker
    }

    enum CodingKeys: String, CodingKey {
        case events = "Events"
        case marker = "Marker"
    }

    public func validate() throws {
    }
}

public struct EventsMessageForDescribeEvents: Codable, Equatable {
    public var describeEventsResult: EventsMessage

    public init(describeEventsResult: EventsMessage) {
        self.describeEventsResult = describeEventsResult
    }

    enum CodingKeys: String, CodingKey {
        case describeEventsResult = "DescribeEventsResult"
    }

    public func validate() throws {
        try describeEventsResult.validate()
    }
}

public struct FailoverDBClusterMessage: Codable, Equatable {
    public var dBClusterIdentifier: String
    public var targetDBInstanceIdentifier: String?

    public init(dBClusterIdentifier: String,
                targetDBInstanceIdentifier: String? = nil) {
        self.dBClusterIdentifier = dBClusterIdentifier
        self.targetDBInstanceIdentifier = targetDBInstanceIdentifier
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterIdentifier = "DBClusterIdentifier"
        case targetDBInstanceIdentifier = "TargetDBInstanceIdentifier"
    }

    public func validate() throws {
    }
}

public struct FailoverDBClusterResult: Codable, Equatable {
    public var dBCluster: DBCluster?

    public init(dBCluster: DBCluster? = nil) {
        self.dBCluster = dBCluster
    }

    enum CodingKeys: String, CodingKey {
        case dBCluster = "DBCluster"
    }

    public func validate() throws {
        try dBCluster?.validate()
    }
}

public struct FailoverDBClusterResultForFailoverDBCluster: Codable, Equatable {
    public var failoverDBClusterResult: FailoverDBClusterResult

    public init(failoverDBClusterResult: FailoverDBClusterResult) {
        self.failoverDBClusterResult = failoverDBClusterResult
    }

    enum CodingKeys: String, CodingKey {
        case failoverDBClusterResult = "FailoverDBClusterResult"
    }

    public func validate() throws {
        try failoverDBClusterResult.validate()
    }
}

public struct Filter: Codable, Equatable {
    public var name: String
    public var values: FilterValueList

    public init(name: String,
                values: FilterValueList) {
        self.name = name
        self.values = values
    }

    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case values = "Values"
    }

    public func validate() throws {
    }
}

public struct GlobalCluster: Codable, Equatable {
    public var databaseName: String?
    public var deletionProtection: BooleanOptional?
    public var engine: String?
    public var engineVersion: String?
    public var globalClusterArn: String?
    public var globalClusterIdentifier: String?
    public var globalClusterMembers: GlobalClusterMemberList?
    public var globalClusterResourceId: String?
    public var status: String?
    public var storageEncrypted: BooleanOptional?

    public init(databaseName: String? = nil,
                deletionProtection: BooleanOptional? = nil,
                engine: String? = nil,
                engineVersion: String? = nil,
                globalClusterArn: String? = nil,
                globalClusterIdentifier: String? = nil,
                globalClusterMembers: GlobalClusterMemberList? = nil,
                globalClusterResourceId: String? = nil,
                status: String? = nil,
                storageEncrypted: BooleanOptional? = nil) {
        self.databaseName = databaseName
        self.deletionProtection = deletionProtection
        self.engine = engine
        self.engineVersion = engineVersion
        self.globalClusterArn = globalClusterArn
        self.globalClusterIdentifier = globalClusterIdentifier
        self.globalClusterMembers = globalClusterMembers
        self.globalClusterResourceId = globalClusterResourceId
        self.status = status
        self.storageEncrypted = storageEncrypted
    }

    enum CodingKeys: String, CodingKey {
        case databaseName = "DatabaseName"
        case deletionProtection = "DeletionProtection"
        case engine = "Engine"
        case engineVersion = "EngineVersion"
        case globalClusterArn = "GlobalClusterArn"
        case globalClusterIdentifier = "GlobalClusterIdentifier"
        case globalClusterMembers = "GlobalClusterMembers"
        case globalClusterResourceId = "GlobalClusterResourceId"
        case status = "Status"
        case storageEncrypted = "StorageEncrypted"
    }

    public func validate() throws {
    }
}

public struct GlobalClusterAlreadyExistsFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct GlobalClusterMember: Codable, Equatable {
    public var dBClusterArn: String?
    public var isWriter: Boolean?
    public var readers: ReadersArnList?

    public init(dBClusterArn: String? = nil,
                isWriter: Boolean? = nil,
                readers: ReadersArnList? = nil) {
        self.dBClusterArn = dBClusterArn
        self.isWriter = isWriter
        self.readers = readers
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterArn = "DBClusterArn"
        case isWriter = "IsWriter"
        case readers = "Readers"
    }

    public func validate() throws {
    }
}

public struct GlobalClusterNotFoundFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct GlobalClusterQuotaExceededFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct GlobalClustersMessage: Codable, Equatable {
    public var globalClusters: GlobalClusterList?
    public var marker: String?

    public init(globalClusters: GlobalClusterList? = nil,
                marker: String? = nil) {
        self.globalClusters = globalClusters
        self.marker = marker
    }

    enum CodingKeys: String, CodingKey {
        case globalClusters = "GlobalClusters"
        case marker = "Marker"
    }

    public func validate() throws {
    }
}

public struct GlobalClustersMessageForDescribeGlobalClusters: Codable, Equatable {
    public var describeGlobalClustersResult: GlobalClustersMessage

    public init(describeGlobalClustersResult: GlobalClustersMessage) {
        self.describeGlobalClustersResult = describeGlobalClustersResult
    }

    enum CodingKeys: String, CodingKey {
        case describeGlobalClustersResult = "DescribeGlobalClustersResult"
    }

    public func validate() throws {
        try describeGlobalClustersResult.validate()
    }
}

public struct IPRange: Codable, Equatable {
    public var cIDRIP: String?
    public var status: String?

    public init(cIDRIP: String? = nil,
                status: String? = nil) {
        self.cIDRIP = cIDRIP
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case cIDRIP = "CIDRIP"
        case status = "Status"
    }

    public func validate() throws {
    }
}

public struct InstanceQuotaExceededFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InsufficientDBClusterCapacityFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InsufficientDBInstanceCapacityFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InsufficientStorageClusterCapacityFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidDBClusterCapacityFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidDBClusterEndpointStateFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidDBClusterSnapshotStateFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidDBClusterStateFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidDBInstanceAutomatedBackupStateFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidDBInstanceStateFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidDBParameterGroupStateFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidDBSecurityGroupStateFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidDBSnapshotStateFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidDBSubnetGroupFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidDBSubnetGroupStateFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidDBSubnetStateFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidEventSubscriptionStateFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidGlobalClusterStateFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidOptionGroupStateFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidRestoreFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidS3BucketFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidSubnet: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidVPCNetworkStateFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct KMSKeyNotAccessibleFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ListTagsForResourceMessage: Codable, Equatable {
    public var filters: FilterList?
    public var resourceName: String

    public init(filters: FilterList? = nil,
                resourceName: String) {
        self.filters = filters
        self.resourceName = resourceName
    }

    enum CodingKeys: String, CodingKey {
        case filters = "Filters"
        case resourceName = "ResourceName"
    }

    public func validate() throws {
    }
}

public struct MinimumEngineVersionPerAllowedValue: Codable, Equatable {
    public var allowedValue: String?
    public var minimumEngineVersion: String?

    public init(allowedValue: String? = nil,
                minimumEngineVersion: String? = nil) {
        self.allowedValue = allowedValue
        self.minimumEngineVersion = minimumEngineVersion
    }

    enum CodingKeys: String, CodingKey {
        case allowedValue = "AllowedValue"
        case minimumEngineVersion = "MinimumEngineVersion"
    }

    public func validate() throws {
    }
}

public struct ModifyCurrentDBClusterCapacityMessage: Codable, Equatable {
    public var capacity: IntegerOptional?
    public var dBClusterIdentifier: String
    public var secondsBeforeTimeout: IntegerOptional?
    public var timeoutAction: String?

    public init(capacity: IntegerOptional? = nil,
                dBClusterIdentifier: String,
                secondsBeforeTimeout: IntegerOptional? = nil,
                timeoutAction: String? = nil) {
        self.capacity = capacity
        self.dBClusterIdentifier = dBClusterIdentifier
        self.secondsBeforeTimeout = secondsBeforeTimeout
        self.timeoutAction = timeoutAction
    }

    enum CodingKeys: String, CodingKey {
        case capacity = "Capacity"
        case dBClusterIdentifier = "DBClusterIdentifier"
        case secondsBeforeTimeout = "SecondsBeforeTimeout"
        case timeoutAction = "TimeoutAction"
    }

    public func validate() throws {
    }
}

public struct ModifyDBClusterEndpointMessage: Codable, Equatable {
    public var dBClusterEndpointIdentifier: String
    public var endpointType: String?
    public var excludedMembers: StringList?
    public var staticMembers: StringList?

    public init(dBClusterEndpointIdentifier: String,
                endpointType: String? = nil,
                excludedMembers: StringList? = nil,
                staticMembers: StringList? = nil) {
        self.dBClusterEndpointIdentifier = dBClusterEndpointIdentifier
        self.endpointType = endpointType
        self.excludedMembers = excludedMembers
        self.staticMembers = staticMembers
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterEndpointIdentifier = "DBClusterEndpointIdentifier"
        case endpointType = "EndpointType"
        case excludedMembers = "ExcludedMembers"
        case staticMembers = "StaticMembers"
    }

    public func validate() throws {
    }
}

public struct ModifyDBClusterMessage: Codable, Equatable {
    public var applyImmediately: Boolean?
    public var backtrackWindow: LongOptional?
    public var backupRetentionPeriod: IntegerOptional?
    public var cloudwatchLogsExportConfiguration: CloudwatchLogsExportConfiguration?
    public var copyTagsToSnapshot: BooleanOptional?
    public var dBClusterIdentifier: String
    public var dBClusterParameterGroupName: String?
    public var deletionProtection: BooleanOptional?
    public var enableHttpEndpoint: BooleanOptional?
    public var enableIAMDatabaseAuthentication: BooleanOptional?
    public var engineVersion: String?
    public var masterUserPassword: String?
    public var newDBClusterIdentifier: String?
    public var optionGroupName: String?
    public var port: IntegerOptional?
    public var preferredBackupWindow: String?
    public var preferredMaintenanceWindow: String?
    public var scalingConfiguration: ScalingConfiguration?
    public var vpcSecurityGroupIds: VpcSecurityGroupIdList?

    public init(applyImmediately: Boolean? = nil,
                backtrackWindow: LongOptional? = nil,
                backupRetentionPeriod: IntegerOptional? = nil,
                cloudwatchLogsExportConfiguration: CloudwatchLogsExportConfiguration? = nil,
                copyTagsToSnapshot: BooleanOptional? = nil,
                dBClusterIdentifier: String,
                dBClusterParameterGroupName: String? = nil,
                deletionProtection: BooleanOptional? = nil,
                enableHttpEndpoint: BooleanOptional? = nil,
                enableIAMDatabaseAuthentication: BooleanOptional? = nil,
                engineVersion: String? = nil,
                masterUserPassword: String? = nil,
                newDBClusterIdentifier: String? = nil,
                optionGroupName: String? = nil,
                port: IntegerOptional? = nil,
                preferredBackupWindow: String? = nil,
                preferredMaintenanceWindow: String? = nil,
                scalingConfiguration: ScalingConfiguration? = nil,
                vpcSecurityGroupIds: VpcSecurityGroupIdList? = nil) {
        self.applyImmediately = applyImmediately
        self.backtrackWindow = backtrackWindow
        self.backupRetentionPeriod = backupRetentionPeriod
        self.cloudwatchLogsExportConfiguration = cloudwatchLogsExportConfiguration
        self.copyTagsToSnapshot = copyTagsToSnapshot
        self.dBClusterIdentifier = dBClusterIdentifier
        self.dBClusterParameterGroupName = dBClusterParameterGroupName
        self.deletionProtection = deletionProtection
        self.enableHttpEndpoint = enableHttpEndpoint
        self.enableIAMDatabaseAuthentication = enableIAMDatabaseAuthentication
        self.engineVersion = engineVersion
        self.masterUserPassword = masterUserPassword
        self.newDBClusterIdentifier = newDBClusterIdentifier
        self.optionGroupName = optionGroupName
        self.port = port
        self.preferredBackupWindow = preferredBackupWindow
        self.preferredMaintenanceWindow = preferredMaintenanceWindow
        self.scalingConfiguration = scalingConfiguration
        self.vpcSecurityGroupIds = vpcSecurityGroupIds
    }

    enum CodingKeys: String, CodingKey {
        case applyImmediately = "ApplyImmediately"
        case backtrackWindow = "BacktrackWindow"
        case backupRetentionPeriod = "BackupRetentionPeriod"
        case cloudwatchLogsExportConfiguration = "CloudwatchLogsExportConfiguration"
        case copyTagsToSnapshot = "CopyTagsToSnapshot"
        case dBClusterIdentifier = "DBClusterIdentifier"
        case dBClusterParameterGroupName = "DBClusterParameterGroupName"
        case deletionProtection = "DeletionProtection"
        case enableHttpEndpoint = "EnableHttpEndpoint"
        case enableIAMDatabaseAuthentication = "EnableIAMDatabaseAuthentication"
        case engineVersion = "EngineVersion"
        case masterUserPassword = "MasterUserPassword"
        case newDBClusterIdentifier = "NewDBClusterIdentifier"
        case optionGroupName = "OptionGroupName"
        case port = "Port"
        case preferredBackupWindow = "PreferredBackupWindow"
        case preferredMaintenanceWindow = "PreferredMaintenanceWindow"
        case scalingConfiguration = "ScalingConfiguration"
        case vpcSecurityGroupIds = "VpcSecurityGroupIds"
    }

    public func validate() throws {
        try cloudwatchLogsExportConfiguration?.validate()
        try scalingConfiguration?.validate()
    }
}

public struct ModifyDBClusterParameterGroupMessage: Codable, Equatable {
    public var dBClusterParameterGroupName: String
    public var parameters: ParametersList

    public init(dBClusterParameterGroupName: String,
                parameters: ParametersList) {
        self.dBClusterParameterGroupName = dBClusterParameterGroupName
        self.parameters = parameters
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterParameterGroupName = "DBClusterParameterGroupName"
        case parameters = "Parameters"
    }

    public func validate() throws {
    }
}

public struct ModifyDBClusterResult: Codable, Equatable {
    public var dBCluster: DBCluster?

    public init(dBCluster: DBCluster? = nil) {
        self.dBCluster = dBCluster
    }

    enum CodingKeys: String, CodingKey {
        case dBCluster = "DBCluster"
    }

    public func validate() throws {
        try dBCluster?.validate()
    }
}

public struct ModifyDBClusterResultForModifyDBCluster: Codable, Equatable {
    public var modifyDBClusterResult: ModifyDBClusterResult

    public init(modifyDBClusterResult: ModifyDBClusterResult) {
        self.modifyDBClusterResult = modifyDBClusterResult
    }

    enum CodingKeys: String, CodingKey {
        case modifyDBClusterResult = "ModifyDBClusterResult"
    }

    public func validate() throws {
        try modifyDBClusterResult.validate()
    }
}

public struct ModifyDBClusterSnapshotAttributeMessage: Codable, Equatable {
    public var attributeName: String
    public var dBClusterSnapshotIdentifier: String
    public var valuesToAdd: AttributeValueList?
    public var valuesToRemove: AttributeValueList?

    public init(attributeName: String,
                dBClusterSnapshotIdentifier: String,
                valuesToAdd: AttributeValueList? = nil,
                valuesToRemove: AttributeValueList? = nil) {
        self.attributeName = attributeName
        self.dBClusterSnapshotIdentifier = dBClusterSnapshotIdentifier
        self.valuesToAdd = valuesToAdd
        self.valuesToRemove = valuesToRemove
    }

    enum CodingKeys: String, CodingKey {
        case attributeName = "AttributeName"
        case dBClusterSnapshotIdentifier = "DBClusterSnapshotIdentifier"
        case valuesToAdd = "ValuesToAdd"
        case valuesToRemove = "ValuesToRemove"
    }

    public func validate() throws {
    }
}

public struct ModifyDBClusterSnapshotAttributeResult: Codable, Equatable {
    public var dBClusterSnapshotAttributesResult: DBClusterSnapshotAttributesResult?

    public init(dBClusterSnapshotAttributesResult: DBClusterSnapshotAttributesResult? = nil) {
        self.dBClusterSnapshotAttributesResult = dBClusterSnapshotAttributesResult
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterSnapshotAttributesResult = "DBClusterSnapshotAttributesResult"
    }

    public func validate() throws {
        try dBClusterSnapshotAttributesResult?.validate()
    }
}

public struct ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute: Codable, Equatable {
    public var modifyDBClusterSnapshotAttributeResult: ModifyDBClusterSnapshotAttributeResult

    public init(modifyDBClusterSnapshotAttributeResult: ModifyDBClusterSnapshotAttributeResult) {
        self.modifyDBClusterSnapshotAttributeResult = modifyDBClusterSnapshotAttributeResult
    }

    enum CodingKeys: String, CodingKey {
        case modifyDBClusterSnapshotAttributeResult = "ModifyDBClusterSnapshotAttributeResult"
    }

    public func validate() throws {
        try modifyDBClusterSnapshotAttributeResult.validate()
    }
}

public struct ModifyDBInstanceMessage: Codable, Equatable {
    public var allocatedStorage: IntegerOptional?
    public var allowMajorVersionUpgrade: Boolean?
    public var applyImmediately: Boolean?
    public var autoMinorVersionUpgrade: BooleanOptional?
    public var backupRetentionPeriod: IntegerOptional?
    public var cACertificateIdentifier: String?
    public var cloudwatchLogsExportConfiguration: CloudwatchLogsExportConfiguration?
    public var copyTagsToSnapshot: BooleanOptional?
    public var dBInstanceClass: String?
    public var dBInstanceIdentifier: String
    public var dBParameterGroupName: String?
    public var dBPortNumber: IntegerOptional?
    public var dBSecurityGroups: DBSecurityGroupNameList?
    public var dBSubnetGroupName: String?
    public var deletionProtection: BooleanOptional?
    public var domain: String?
    public var domainIAMRoleName: String?
    public var enableIAMDatabaseAuthentication: BooleanOptional?
    public var enablePerformanceInsights: BooleanOptional?
    public var engineVersion: String?
    public var iops: IntegerOptional?
    public var licenseModel: String?
    public var masterUserPassword: String?
    public var monitoringInterval: IntegerOptional?
    public var monitoringRoleArn: String?
    public var multiAZ: BooleanOptional?
    public var newDBInstanceIdentifier: String?
    public var optionGroupName: String?
    public var performanceInsightsKMSKeyId: String?
    public var performanceInsightsRetentionPeriod: IntegerOptional?
    public var preferredBackupWindow: String?
    public var preferredMaintenanceWindow: String?
    public var processorFeatures: ProcessorFeatureList?
    public var promotionTier: IntegerOptional?
    public var publiclyAccessible: BooleanOptional?
    public var storageType: String?
    public var tdeCredentialArn: String?
    public var tdeCredentialPassword: String?
    public var useDefaultProcessorFeatures: BooleanOptional?
    public var vpcSecurityGroupIds: VpcSecurityGroupIdList?

    public init(allocatedStorage: IntegerOptional? = nil,
                allowMajorVersionUpgrade: Boolean? = nil,
                applyImmediately: Boolean? = nil,
                autoMinorVersionUpgrade: BooleanOptional? = nil,
                backupRetentionPeriod: IntegerOptional? = nil,
                cACertificateIdentifier: String? = nil,
                cloudwatchLogsExportConfiguration: CloudwatchLogsExportConfiguration? = nil,
                copyTagsToSnapshot: BooleanOptional? = nil,
                dBInstanceClass: String? = nil,
                dBInstanceIdentifier: String,
                dBParameterGroupName: String? = nil,
                dBPortNumber: IntegerOptional? = nil,
                dBSecurityGroups: DBSecurityGroupNameList? = nil,
                dBSubnetGroupName: String? = nil,
                deletionProtection: BooleanOptional? = nil,
                domain: String? = nil,
                domainIAMRoleName: String? = nil,
                enableIAMDatabaseAuthentication: BooleanOptional? = nil,
                enablePerformanceInsights: BooleanOptional? = nil,
                engineVersion: String? = nil,
                iops: IntegerOptional? = nil,
                licenseModel: String? = nil,
                masterUserPassword: String? = nil,
                monitoringInterval: IntegerOptional? = nil,
                monitoringRoleArn: String? = nil,
                multiAZ: BooleanOptional? = nil,
                newDBInstanceIdentifier: String? = nil,
                optionGroupName: String? = nil,
                performanceInsightsKMSKeyId: String? = nil,
                performanceInsightsRetentionPeriod: IntegerOptional? = nil,
                preferredBackupWindow: String? = nil,
                preferredMaintenanceWindow: String? = nil,
                processorFeatures: ProcessorFeatureList? = nil,
                promotionTier: IntegerOptional? = nil,
                publiclyAccessible: BooleanOptional? = nil,
                storageType: String? = nil,
                tdeCredentialArn: String? = nil,
                tdeCredentialPassword: String? = nil,
                useDefaultProcessorFeatures: BooleanOptional? = nil,
                vpcSecurityGroupIds: VpcSecurityGroupIdList? = nil) {
        self.allocatedStorage = allocatedStorage
        self.allowMajorVersionUpgrade = allowMajorVersionUpgrade
        self.applyImmediately = applyImmediately
        self.autoMinorVersionUpgrade = autoMinorVersionUpgrade
        self.backupRetentionPeriod = backupRetentionPeriod
        self.cACertificateIdentifier = cACertificateIdentifier
        self.cloudwatchLogsExportConfiguration = cloudwatchLogsExportConfiguration
        self.copyTagsToSnapshot = copyTagsToSnapshot
        self.dBInstanceClass = dBInstanceClass
        self.dBInstanceIdentifier = dBInstanceIdentifier
        self.dBParameterGroupName = dBParameterGroupName
        self.dBPortNumber = dBPortNumber
        self.dBSecurityGroups = dBSecurityGroups
        self.dBSubnetGroupName = dBSubnetGroupName
        self.deletionProtection = deletionProtection
        self.domain = domain
        self.domainIAMRoleName = domainIAMRoleName
        self.enableIAMDatabaseAuthentication = enableIAMDatabaseAuthentication
        self.enablePerformanceInsights = enablePerformanceInsights
        self.engineVersion = engineVersion
        self.iops = iops
        self.licenseModel = licenseModel
        self.masterUserPassword = masterUserPassword
        self.monitoringInterval = monitoringInterval
        self.monitoringRoleArn = monitoringRoleArn
        self.multiAZ = multiAZ
        self.newDBInstanceIdentifier = newDBInstanceIdentifier
        self.optionGroupName = optionGroupName
        self.performanceInsightsKMSKeyId = performanceInsightsKMSKeyId
        self.performanceInsightsRetentionPeriod = performanceInsightsRetentionPeriod
        self.preferredBackupWindow = preferredBackupWindow
        self.preferredMaintenanceWindow = preferredMaintenanceWindow
        self.processorFeatures = processorFeatures
        self.promotionTier = promotionTier
        self.publiclyAccessible = publiclyAccessible
        self.storageType = storageType
        self.tdeCredentialArn = tdeCredentialArn
        self.tdeCredentialPassword = tdeCredentialPassword
        self.useDefaultProcessorFeatures = useDefaultProcessorFeatures
        self.vpcSecurityGroupIds = vpcSecurityGroupIds
    }

    enum CodingKeys: String, CodingKey {
        case allocatedStorage = "AllocatedStorage"
        case allowMajorVersionUpgrade = "AllowMajorVersionUpgrade"
        case applyImmediately = "ApplyImmediately"
        case autoMinorVersionUpgrade = "AutoMinorVersionUpgrade"
        case backupRetentionPeriod = "BackupRetentionPeriod"
        case cACertificateIdentifier = "CACertificateIdentifier"
        case cloudwatchLogsExportConfiguration = "CloudwatchLogsExportConfiguration"
        case copyTagsToSnapshot = "CopyTagsToSnapshot"
        case dBInstanceClass = "DBInstanceClass"
        case dBInstanceIdentifier = "DBInstanceIdentifier"
        case dBParameterGroupName = "DBParameterGroupName"
        case dBPortNumber = "DBPortNumber"
        case dBSecurityGroups = "DBSecurityGroups"
        case dBSubnetGroupName = "DBSubnetGroupName"
        case deletionProtection = "DeletionProtection"
        case domain = "Domain"
        case domainIAMRoleName = "DomainIAMRoleName"
        case enableIAMDatabaseAuthentication = "EnableIAMDatabaseAuthentication"
        case enablePerformanceInsights = "EnablePerformanceInsights"
        case engineVersion = "EngineVersion"
        case iops = "Iops"
        case licenseModel = "LicenseModel"
        case masterUserPassword = "MasterUserPassword"
        case monitoringInterval = "MonitoringInterval"
        case monitoringRoleArn = "MonitoringRoleArn"
        case multiAZ = "MultiAZ"
        case newDBInstanceIdentifier = "NewDBInstanceIdentifier"
        case optionGroupName = "OptionGroupName"
        case performanceInsightsKMSKeyId = "PerformanceInsightsKMSKeyId"
        case performanceInsightsRetentionPeriod = "PerformanceInsightsRetentionPeriod"
        case preferredBackupWindow = "PreferredBackupWindow"
        case preferredMaintenanceWindow = "PreferredMaintenanceWindow"
        case processorFeatures = "ProcessorFeatures"
        case promotionTier = "PromotionTier"
        case publiclyAccessible = "PubliclyAccessible"
        case storageType = "StorageType"
        case tdeCredentialArn = "TdeCredentialArn"
        case tdeCredentialPassword = "TdeCredentialPassword"
        case useDefaultProcessorFeatures = "UseDefaultProcessorFeatures"
        case vpcSecurityGroupIds = "VpcSecurityGroupIds"
    }

    public func validate() throws {
        try cloudwatchLogsExportConfiguration?.validate()
    }
}

public struct ModifyDBInstanceResult: Codable, Equatable {
    public var dBInstance: DBInstance?

    public init(dBInstance: DBInstance? = nil) {
        self.dBInstance = dBInstance
    }

    enum CodingKeys: String, CodingKey {
        case dBInstance = "DBInstance"
    }

    public func validate() throws {
        try dBInstance?.validate()
    }
}

public struct ModifyDBInstanceResultForModifyDBInstance: Codable, Equatable {
    public var modifyDBInstanceResult: ModifyDBInstanceResult

    public init(modifyDBInstanceResult: ModifyDBInstanceResult) {
        self.modifyDBInstanceResult = modifyDBInstanceResult
    }

    enum CodingKeys: String, CodingKey {
        case modifyDBInstanceResult = "ModifyDBInstanceResult"
    }

    public func validate() throws {
        try modifyDBInstanceResult.validate()
    }
}

public struct ModifyDBParameterGroupMessage: Codable, Equatable {
    public var dBParameterGroupName: String
    public var parameters: ParametersList

    public init(dBParameterGroupName: String,
                parameters: ParametersList) {
        self.dBParameterGroupName = dBParameterGroupName
        self.parameters = parameters
    }

    enum CodingKeys: String, CodingKey {
        case dBParameterGroupName = "DBParameterGroupName"
        case parameters = "Parameters"
    }

    public func validate() throws {
    }
}

public struct ModifyDBSnapshotAttributeMessage: Codable, Equatable {
    public var attributeName: String
    public var dBSnapshotIdentifier: String
    public var valuesToAdd: AttributeValueList?
    public var valuesToRemove: AttributeValueList?

    public init(attributeName: String,
                dBSnapshotIdentifier: String,
                valuesToAdd: AttributeValueList? = nil,
                valuesToRemove: AttributeValueList? = nil) {
        self.attributeName = attributeName
        self.dBSnapshotIdentifier = dBSnapshotIdentifier
        self.valuesToAdd = valuesToAdd
        self.valuesToRemove = valuesToRemove
    }

    enum CodingKeys: String, CodingKey {
        case attributeName = "AttributeName"
        case dBSnapshotIdentifier = "DBSnapshotIdentifier"
        case valuesToAdd = "ValuesToAdd"
        case valuesToRemove = "ValuesToRemove"
    }

    public func validate() throws {
    }
}

public struct ModifyDBSnapshotAttributeResult: Codable, Equatable {
    public var dBSnapshotAttributesResult: DBSnapshotAttributesResult?

    public init(dBSnapshotAttributesResult: DBSnapshotAttributesResult? = nil) {
        self.dBSnapshotAttributesResult = dBSnapshotAttributesResult
    }

    enum CodingKeys: String, CodingKey {
        case dBSnapshotAttributesResult = "DBSnapshotAttributesResult"
    }

    public func validate() throws {
        try dBSnapshotAttributesResult?.validate()
    }
}

public struct ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute: Codable, Equatable {
    public var modifyDBSnapshotAttributeResult: ModifyDBSnapshotAttributeResult

    public init(modifyDBSnapshotAttributeResult: ModifyDBSnapshotAttributeResult) {
        self.modifyDBSnapshotAttributeResult = modifyDBSnapshotAttributeResult
    }

    enum CodingKeys: String, CodingKey {
        case modifyDBSnapshotAttributeResult = "ModifyDBSnapshotAttributeResult"
    }

    public func validate() throws {
        try modifyDBSnapshotAttributeResult.validate()
    }
}

public struct ModifyDBSnapshotMessage: Codable, Equatable {
    public var dBSnapshotIdentifier: String
    public var engineVersion: String?
    public var optionGroupName: String?

    public init(dBSnapshotIdentifier: String,
                engineVersion: String? = nil,
                optionGroupName: String? = nil) {
        self.dBSnapshotIdentifier = dBSnapshotIdentifier
        self.engineVersion = engineVersion
        self.optionGroupName = optionGroupName
    }

    enum CodingKeys: String, CodingKey {
        case dBSnapshotIdentifier = "DBSnapshotIdentifier"
        case engineVersion = "EngineVersion"
        case optionGroupName = "OptionGroupName"
    }

    public func validate() throws {
    }
}

public struct ModifyDBSnapshotResult: Codable, Equatable {
    public var dBSnapshot: DBSnapshot?

    public init(dBSnapshot: DBSnapshot? = nil) {
        self.dBSnapshot = dBSnapshot
    }

    enum CodingKeys: String, CodingKey {
        case dBSnapshot = "DBSnapshot"
    }

    public func validate() throws {
        try dBSnapshot?.validate()
    }
}

public struct ModifyDBSnapshotResultForModifyDBSnapshot: Codable, Equatable {
    public var modifyDBSnapshotResult: ModifyDBSnapshotResult

    public init(modifyDBSnapshotResult: ModifyDBSnapshotResult) {
        self.modifyDBSnapshotResult = modifyDBSnapshotResult
    }

    enum CodingKeys: String, CodingKey {
        case modifyDBSnapshotResult = "ModifyDBSnapshotResult"
    }

    public func validate() throws {
        try modifyDBSnapshotResult.validate()
    }
}

public struct ModifyDBSubnetGroupMessage: Codable, Equatable {
    public var dBSubnetGroupDescription: String?
    public var dBSubnetGroupName: String
    public var subnetIds: SubnetIdentifierList

    public init(dBSubnetGroupDescription: String? = nil,
                dBSubnetGroupName: String,
                subnetIds: SubnetIdentifierList) {
        self.dBSubnetGroupDescription = dBSubnetGroupDescription
        self.dBSubnetGroupName = dBSubnetGroupName
        self.subnetIds = subnetIds
    }

    enum CodingKeys: String, CodingKey {
        case dBSubnetGroupDescription = "DBSubnetGroupDescription"
        case dBSubnetGroupName = "DBSubnetGroupName"
        case subnetIds = "SubnetIds"
    }

    public func validate() throws {
    }
}

public struct ModifyDBSubnetGroupResult: Codable, Equatable {
    public var dBSubnetGroup: DBSubnetGroup?

    public init(dBSubnetGroup: DBSubnetGroup? = nil) {
        self.dBSubnetGroup = dBSubnetGroup
    }

    enum CodingKeys: String, CodingKey {
        case dBSubnetGroup = "DBSubnetGroup"
    }

    public func validate() throws {
        try dBSubnetGroup?.validate()
    }
}

public struct ModifyDBSubnetGroupResultForModifyDBSubnetGroup: Codable, Equatable {
    public var modifyDBSubnetGroupResult: ModifyDBSubnetGroupResult

    public init(modifyDBSubnetGroupResult: ModifyDBSubnetGroupResult) {
        self.modifyDBSubnetGroupResult = modifyDBSubnetGroupResult
    }

    enum CodingKeys: String, CodingKey {
        case modifyDBSubnetGroupResult = "ModifyDBSubnetGroupResult"
    }

    public func validate() throws {
        try modifyDBSubnetGroupResult.validate()
    }
}

public struct ModifyEventSubscriptionMessage: Codable, Equatable {
    public var enabled: BooleanOptional?
    public var eventCategories: EventCategoriesList?
    public var snsTopicArn: String?
    public var sourceType: String?
    public var subscriptionName: String

    public init(enabled: BooleanOptional? = nil,
                eventCategories: EventCategoriesList? = nil,
                snsTopicArn: String? = nil,
                sourceType: String? = nil,
                subscriptionName: String) {
        self.enabled = enabled
        self.eventCategories = eventCategories
        self.snsTopicArn = snsTopicArn
        self.sourceType = sourceType
        self.subscriptionName = subscriptionName
    }

    enum CodingKeys: String, CodingKey {
        case enabled = "Enabled"
        case eventCategories = "EventCategories"
        case snsTopicArn = "SnsTopicArn"
        case sourceType = "SourceType"
        case subscriptionName = "SubscriptionName"
    }

    public func validate() throws {
    }
}

public struct ModifyEventSubscriptionResult: Codable, Equatable {
    public var eventSubscription: EventSubscription?

    public init(eventSubscription: EventSubscription? = nil) {
        self.eventSubscription = eventSubscription
    }

    enum CodingKeys: String, CodingKey {
        case eventSubscription = "EventSubscription"
    }

    public func validate() throws {
        try eventSubscription?.validate()
    }
}

public struct ModifyEventSubscriptionResultForModifyEventSubscription: Codable, Equatable {
    public var modifyEventSubscriptionResult: ModifyEventSubscriptionResult

    public init(modifyEventSubscriptionResult: ModifyEventSubscriptionResult) {
        self.modifyEventSubscriptionResult = modifyEventSubscriptionResult
    }

    enum CodingKeys: String, CodingKey {
        case modifyEventSubscriptionResult = "ModifyEventSubscriptionResult"
    }

    public func validate() throws {
        try modifyEventSubscriptionResult.validate()
    }
}

public struct ModifyGlobalClusterMessage: Codable, Equatable {
    public var deletionProtection: BooleanOptional?
    public var globalClusterIdentifier: String?
    public var newGlobalClusterIdentifier: String?

    public init(deletionProtection: BooleanOptional? = nil,
                globalClusterIdentifier: String? = nil,
                newGlobalClusterIdentifier: String? = nil) {
        self.deletionProtection = deletionProtection
        self.globalClusterIdentifier = globalClusterIdentifier
        self.newGlobalClusterIdentifier = newGlobalClusterIdentifier
    }

    enum CodingKeys: String, CodingKey {
        case deletionProtection = "DeletionProtection"
        case globalClusterIdentifier = "GlobalClusterIdentifier"
        case newGlobalClusterIdentifier = "NewGlobalClusterIdentifier"
    }

    public func validate() throws {
    }
}

public struct ModifyGlobalClusterResult: Codable, Equatable {
    public var globalCluster: GlobalCluster?

    public init(globalCluster: GlobalCluster? = nil) {
        self.globalCluster = globalCluster
    }

    enum CodingKeys: String, CodingKey {
        case globalCluster = "GlobalCluster"
    }

    public func validate() throws {
        try globalCluster?.validate()
    }
}

public struct ModifyGlobalClusterResultForModifyGlobalCluster: Codable, Equatable {
    public var modifyGlobalClusterResult: ModifyGlobalClusterResult

    public init(modifyGlobalClusterResult: ModifyGlobalClusterResult) {
        self.modifyGlobalClusterResult = modifyGlobalClusterResult
    }

    enum CodingKeys: String, CodingKey {
        case modifyGlobalClusterResult = "ModifyGlobalClusterResult"
    }

    public func validate() throws {
        try modifyGlobalClusterResult.validate()
    }
}

public struct ModifyOptionGroupMessage: Codable, Equatable {
    public var applyImmediately: Boolean?
    public var optionGroupName: String
    public var optionsToInclude: OptionConfigurationList?
    public var optionsToRemove: OptionNamesList?

    public init(applyImmediately: Boolean? = nil,
                optionGroupName: String,
                optionsToInclude: OptionConfigurationList? = nil,
                optionsToRemove: OptionNamesList? = nil) {
        self.applyImmediately = applyImmediately
        self.optionGroupName = optionGroupName
        self.optionsToInclude = optionsToInclude
        self.optionsToRemove = optionsToRemove
    }

    enum CodingKeys: String, CodingKey {
        case applyImmediately = "ApplyImmediately"
        case optionGroupName = "OptionGroupName"
        case optionsToInclude = "OptionsToInclude"
        case optionsToRemove = "OptionsToRemove"
    }

    public func validate() throws {
    }
}

public struct ModifyOptionGroupResult: Codable, Equatable {
    public var optionGroup: OptionGroup?

    public init(optionGroup: OptionGroup? = nil) {
        self.optionGroup = optionGroup
    }

    enum CodingKeys: String, CodingKey {
        case optionGroup = "OptionGroup"
    }

    public func validate() throws {
        try optionGroup?.validate()
    }
}

public struct ModifyOptionGroupResultForModifyOptionGroup: Codable, Equatable {
    public var modifyOptionGroupResult: ModifyOptionGroupResult

    public init(modifyOptionGroupResult: ModifyOptionGroupResult) {
        self.modifyOptionGroupResult = modifyOptionGroupResult
    }

    enum CodingKeys: String, CodingKey {
        case modifyOptionGroupResult = "ModifyOptionGroupResult"
    }

    public func validate() throws {
        try modifyOptionGroupResult.validate()
    }
}

public struct Option: Codable, Equatable {
    public var dBSecurityGroupMemberships: DBSecurityGroupMembershipList?
    public var optionDescription: String?
    public var optionName: String?
    public var optionSettings: OptionSettingConfigurationList?
    public var optionVersion: String?
    public var permanent: Boolean?
    public var persistent: Boolean?
    public var port: IntegerOptional?
    public var vpcSecurityGroupMemberships: VpcSecurityGroupMembershipList?

    public init(dBSecurityGroupMemberships: DBSecurityGroupMembershipList? = nil,
                optionDescription: String? = nil,
                optionName: String? = nil,
                optionSettings: OptionSettingConfigurationList? = nil,
                optionVersion: String? = nil,
                permanent: Boolean? = nil,
                persistent: Boolean? = nil,
                port: IntegerOptional? = nil,
                vpcSecurityGroupMemberships: VpcSecurityGroupMembershipList? = nil) {
        self.dBSecurityGroupMemberships = dBSecurityGroupMemberships
        self.optionDescription = optionDescription
        self.optionName = optionName
        self.optionSettings = optionSettings
        self.optionVersion = optionVersion
        self.permanent = permanent
        self.persistent = persistent
        self.port = port
        self.vpcSecurityGroupMemberships = vpcSecurityGroupMemberships
    }

    enum CodingKeys: String, CodingKey {
        case dBSecurityGroupMemberships = "DBSecurityGroupMemberships"
        case optionDescription = "OptionDescription"
        case optionName = "OptionName"
        case optionSettings = "OptionSettings"
        case optionVersion = "OptionVersion"
        case permanent = "Permanent"
        case persistent = "Persistent"
        case port = "Port"
        case vpcSecurityGroupMemberships = "VpcSecurityGroupMemberships"
    }

    public func validate() throws {
    }
}

public struct OptionConfiguration: Codable, Equatable {
    public var dBSecurityGroupMemberships: DBSecurityGroupNameList?
    public var optionName: String
    public var optionSettings: OptionSettingsList?
    public var optionVersion: String?
    public var port: IntegerOptional?
    public var vpcSecurityGroupMemberships: VpcSecurityGroupIdList?

    public init(dBSecurityGroupMemberships: DBSecurityGroupNameList? = nil,
                optionName: String,
                optionSettings: OptionSettingsList? = nil,
                optionVersion: String? = nil,
                port: IntegerOptional? = nil,
                vpcSecurityGroupMemberships: VpcSecurityGroupIdList? = nil) {
        self.dBSecurityGroupMemberships = dBSecurityGroupMemberships
        self.optionName = optionName
        self.optionSettings = optionSettings
        self.optionVersion = optionVersion
        self.port = port
        self.vpcSecurityGroupMemberships = vpcSecurityGroupMemberships
    }

    enum CodingKeys: String, CodingKey {
        case dBSecurityGroupMemberships = "DBSecurityGroupMemberships"
        case optionName = "OptionName"
        case optionSettings = "OptionSettings"
        case optionVersion = "OptionVersion"
        case port = "Port"
        case vpcSecurityGroupMemberships = "VpcSecurityGroupMemberships"
    }

    public func validate() throws {
    }
}

public struct OptionGroup: Codable, Equatable {
    public var allowsVpcAndNonVpcInstanceMemberships: Boolean?
    public var engineName: String?
    public var majorEngineVersion: String?
    public var optionGroupArn: String?
    public var optionGroupDescription: String?
    public var optionGroupName: String?
    public var options: OptionsList?
    public var vpcId: String?

    public init(allowsVpcAndNonVpcInstanceMemberships: Boolean? = nil,
                engineName: String? = nil,
                majorEngineVersion: String? = nil,
                optionGroupArn: String? = nil,
                optionGroupDescription: String? = nil,
                optionGroupName: String? = nil,
                options: OptionsList? = nil,
                vpcId: String? = nil) {
        self.allowsVpcAndNonVpcInstanceMemberships = allowsVpcAndNonVpcInstanceMemberships
        self.engineName = engineName
        self.majorEngineVersion = majorEngineVersion
        self.optionGroupArn = optionGroupArn
        self.optionGroupDescription = optionGroupDescription
        self.optionGroupName = optionGroupName
        self.options = options
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case allowsVpcAndNonVpcInstanceMemberships = "AllowsVpcAndNonVpcInstanceMemberships"
        case engineName = "EngineName"
        case majorEngineVersion = "MajorEngineVersion"
        case optionGroupArn = "OptionGroupArn"
        case optionGroupDescription = "OptionGroupDescription"
        case optionGroupName = "OptionGroupName"
        case options = "Options"
        case vpcId = "VpcId"
    }

    public func validate() throws {
    }
}

public struct OptionGroupAlreadyExistsFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct OptionGroupMembership: Codable, Equatable {
    public var optionGroupName: String?
    public var status: String?

    public init(optionGroupName: String? = nil,
                status: String? = nil) {
        self.optionGroupName = optionGroupName
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case optionGroupName = "OptionGroupName"
        case status = "Status"
    }

    public func validate() throws {
    }
}

public struct OptionGroupNotFoundFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct OptionGroupOption: Codable, Equatable {
    public var defaultPort: IntegerOptional?
    public var description: String?
    public var engineName: String?
    public var majorEngineVersion: String?
    public var minimumRequiredMinorEngineVersion: String?
    public var name: String?
    public var optionGroupOptionSettings: OptionGroupOptionSettingsList?
    public var optionGroupOptionVersions: OptionGroupOptionVersionsList?
    public var optionsConflictsWith: OptionsConflictsWith?
    public var optionsDependedOn: OptionsDependedOn?
    public var permanent: Boolean?
    public var persistent: Boolean?
    public var portRequired: Boolean?
    public var requiresAutoMinorEngineVersionUpgrade: Boolean?
    public var supportsOptionVersionDowngrade: BooleanOptional?
    public var vpcOnly: Boolean?

    public init(defaultPort: IntegerOptional? = nil,
                description: String? = nil,
                engineName: String? = nil,
                majorEngineVersion: String? = nil,
                minimumRequiredMinorEngineVersion: String? = nil,
                name: String? = nil,
                optionGroupOptionSettings: OptionGroupOptionSettingsList? = nil,
                optionGroupOptionVersions: OptionGroupOptionVersionsList? = nil,
                optionsConflictsWith: OptionsConflictsWith? = nil,
                optionsDependedOn: OptionsDependedOn? = nil,
                permanent: Boolean? = nil,
                persistent: Boolean? = nil,
                portRequired: Boolean? = nil,
                requiresAutoMinorEngineVersionUpgrade: Boolean? = nil,
                supportsOptionVersionDowngrade: BooleanOptional? = nil,
                vpcOnly: Boolean? = nil) {
        self.defaultPort = defaultPort
        self.description = description
        self.engineName = engineName
        self.majorEngineVersion = majorEngineVersion
        self.minimumRequiredMinorEngineVersion = minimumRequiredMinorEngineVersion
        self.name = name
        self.optionGroupOptionSettings = optionGroupOptionSettings
        self.optionGroupOptionVersions = optionGroupOptionVersions
        self.optionsConflictsWith = optionsConflictsWith
        self.optionsDependedOn = optionsDependedOn
        self.permanent = permanent
        self.persistent = persistent
        self.portRequired = portRequired
        self.requiresAutoMinorEngineVersionUpgrade = requiresAutoMinorEngineVersionUpgrade
        self.supportsOptionVersionDowngrade = supportsOptionVersionDowngrade
        self.vpcOnly = vpcOnly
    }

    enum CodingKeys: String, CodingKey {
        case defaultPort = "DefaultPort"
        case description = "Description"
        case engineName = "EngineName"
        case majorEngineVersion = "MajorEngineVersion"
        case minimumRequiredMinorEngineVersion = "MinimumRequiredMinorEngineVersion"
        case name = "Name"
        case optionGroupOptionSettings = "OptionGroupOptionSettings"
        case optionGroupOptionVersions = "OptionGroupOptionVersions"
        case optionsConflictsWith = "OptionsConflictsWith"
        case optionsDependedOn = "OptionsDependedOn"
        case permanent = "Permanent"
        case persistent = "Persistent"
        case portRequired = "PortRequired"
        case requiresAutoMinorEngineVersionUpgrade = "RequiresAutoMinorEngineVersionUpgrade"
        case supportsOptionVersionDowngrade = "SupportsOptionVersionDowngrade"
        case vpcOnly = "VpcOnly"
    }

    public func validate() throws {
    }
}

public struct OptionGroupOptionSetting: Codable, Equatable {
    public var allowedValues: String?
    public var applyType: String?
    public var defaultValue: String?
    public var isModifiable: Boolean?
    public var isRequired: Boolean?
    public var minimumEngineVersionPerAllowedValue: MinimumEngineVersionPerAllowedValueList?
    public var settingDescription: String?
    public var settingName: String?

    public init(allowedValues: String? = nil,
                applyType: String? = nil,
                defaultValue: String? = nil,
                isModifiable: Boolean? = nil,
                isRequired: Boolean? = nil,
                minimumEngineVersionPerAllowedValue: MinimumEngineVersionPerAllowedValueList? = nil,
                settingDescription: String? = nil,
                settingName: String? = nil) {
        self.allowedValues = allowedValues
        self.applyType = applyType
        self.defaultValue = defaultValue
        self.isModifiable = isModifiable
        self.isRequired = isRequired
        self.minimumEngineVersionPerAllowedValue = minimumEngineVersionPerAllowedValue
        self.settingDescription = settingDescription
        self.settingName = settingName
    }

    enum CodingKeys: String, CodingKey {
        case allowedValues = "AllowedValues"
        case applyType = "ApplyType"
        case defaultValue = "DefaultValue"
        case isModifiable = "IsModifiable"
        case isRequired = "IsRequired"
        case minimumEngineVersionPerAllowedValue = "MinimumEngineVersionPerAllowedValue"
        case settingDescription = "SettingDescription"
        case settingName = "SettingName"
    }

    public func validate() throws {
    }
}

public struct OptionGroupOptionsMessage: Codable, Equatable {
    public var marker: String?
    public var optionGroupOptions: OptionGroupOptionsList?

    public init(marker: String? = nil,
                optionGroupOptions: OptionGroupOptionsList? = nil) {
        self.marker = marker
        self.optionGroupOptions = optionGroupOptions
    }

    enum CodingKeys: String, CodingKey {
        case marker = "Marker"
        case optionGroupOptions = "OptionGroupOptions"
    }

    public func validate() throws {
    }
}

public struct OptionGroupOptionsMessageForDescribeOptionGroupOptions: Codable, Equatable {
    public var describeOptionGroupOptionsResult: OptionGroupOptionsMessage

    public init(describeOptionGroupOptionsResult: OptionGroupOptionsMessage) {
        self.describeOptionGroupOptionsResult = describeOptionGroupOptionsResult
    }

    enum CodingKeys: String, CodingKey {
        case describeOptionGroupOptionsResult = "DescribeOptionGroupOptionsResult"
    }

    public func validate() throws {
        try describeOptionGroupOptionsResult.validate()
    }
}

public struct OptionGroupQuotaExceededFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct OptionGroups: Codable, Equatable {
    public var marker: String?
    public var optionGroupsList: OptionGroupsList?

    public init(marker: String? = nil,
                optionGroupsList: OptionGroupsList? = nil) {
        self.marker = marker
        self.optionGroupsList = optionGroupsList
    }

    enum CodingKeys: String, CodingKey {
        case marker = "Marker"
        case optionGroupsList = "OptionGroupsList"
    }

    public func validate() throws {
    }
}

public struct OptionGroupsForDescribeOptionGroups: Codable, Equatable {
    public var describeOptionGroupsResult: OptionGroups

    public init(describeOptionGroupsResult: OptionGroups) {
        self.describeOptionGroupsResult = describeOptionGroupsResult
    }

    enum CodingKeys: String, CodingKey {
        case describeOptionGroupsResult = "DescribeOptionGroupsResult"
    }

    public func validate() throws {
        try describeOptionGroupsResult.validate()
    }
}

public struct OptionSetting: Codable, Equatable {
    public var allowedValues: String?
    public var applyType: String?
    public var dataType: String?
    public var defaultValue: String?
    public var description: String?
    public var isCollection: Boolean?
    public var isModifiable: Boolean?
    public var name: String?
    public var value: String?

    public init(allowedValues: String? = nil,
                applyType: String? = nil,
                dataType: String? = nil,
                defaultValue: String? = nil,
                description: String? = nil,
                isCollection: Boolean? = nil,
                isModifiable: Boolean? = nil,
                name: String? = nil,
                value: String? = nil) {
        self.allowedValues = allowedValues
        self.applyType = applyType
        self.dataType = dataType
        self.defaultValue = defaultValue
        self.description = description
        self.isCollection = isCollection
        self.isModifiable = isModifiable
        self.name = name
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case allowedValues = "AllowedValues"
        case applyType = "ApplyType"
        case dataType = "DataType"
        case defaultValue = "DefaultValue"
        case description = "Description"
        case isCollection = "IsCollection"
        case isModifiable = "IsModifiable"
        case name = "Name"
        case value = "Value"
    }

    public func validate() throws {
    }
}

public struct OptionVersion: Codable, Equatable {
    public var isDefault: Boolean?
    public var version: String?

    public init(isDefault: Boolean? = nil,
                version: String? = nil) {
        self.isDefault = isDefault
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case isDefault = "IsDefault"
        case version = "Version"
    }

    public func validate() throws {
    }
}

public struct OrderableDBInstanceOption: Codable, Equatable {
    public var availabilityZones: AvailabilityZoneList?
    public var availableProcessorFeatures: AvailableProcessorFeatureList?
    public var dBInstanceClass: String?
    public var engine: String?
    public var engineVersion: String?
    public var licenseModel: String?
    public var maxIopsPerDbInstance: IntegerOptional?
    public var maxIopsPerGib: DoubleOptional?
    public var maxStorageSize: IntegerOptional?
    public var minIopsPerDbInstance: IntegerOptional?
    public var minIopsPerGib: DoubleOptional?
    public var minStorageSize: IntegerOptional?
    public var multiAZCapable: Boolean?
    public var readReplicaCapable: Boolean?
    public var storageType: String?
    public var supportedEngineModes: EngineModeList?
    public var supportsEnhancedMonitoring: Boolean?
    public var supportsIAMDatabaseAuthentication: Boolean?
    public var supportsIops: Boolean?
    public var supportsPerformanceInsights: Boolean?
    public var supportsStorageEncryption: Boolean?
    public var vpc: Boolean?

    public init(availabilityZones: AvailabilityZoneList? = nil,
                availableProcessorFeatures: AvailableProcessorFeatureList? = nil,
                dBInstanceClass: String? = nil,
                engine: String? = nil,
                engineVersion: String? = nil,
                licenseModel: String? = nil,
                maxIopsPerDbInstance: IntegerOptional? = nil,
                maxIopsPerGib: DoubleOptional? = nil,
                maxStorageSize: IntegerOptional? = nil,
                minIopsPerDbInstance: IntegerOptional? = nil,
                minIopsPerGib: DoubleOptional? = nil,
                minStorageSize: IntegerOptional? = nil,
                multiAZCapable: Boolean? = nil,
                readReplicaCapable: Boolean? = nil,
                storageType: String? = nil,
                supportedEngineModes: EngineModeList? = nil,
                supportsEnhancedMonitoring: Boolean? = nil,
                supportsIAMDatabaseAuthentication: Boolean? = nil,
                supportsIops: Boolean? = nil,
                supportsPerformanceInsights: Boolean? = nil,
                supportsStorageEncryption: Boolean? = nil,
                vpc: Boolean? = nil) {
        self.availabilityZones = availabilityZones
        self.availableProcessorFeatures = availableProcessorFeatures
        self.dBInstanceClass = dBInstanceClass
        self.engine = engine
        self.engineVersion = engineVersion
        self.licenseModel = licenseModel
        self.maxIopsPerDbInstance = maxIopsPerDbInstance
        self.maxIopsPerGib = maxIopsPerGib
        self.maxStorageSize = maxStorageSize
        self.minIopsPerDbInstance = minIopsPerDbInstance
        self.minIopsPerGib = minIopsPerGib
        self.minStorageSize = minStorageSize
        self.multiAZCapable = multiAZCapable
        self.readReplicaCapable = readReplicaCapable
        self.storageType = storageType
        self.supportedEngineModes = supportedEngineModes
        self.supportsEnhancedMonitoring = supportsEnhancedMonitoring
        self.supportsIAMDatabaseAuthentication = supportsIAMDatabaseAuthentication
        self.supportsIops = supportsIops
        self.supportsPerformanceInsights = supportsPerformanceInsights
        self.supportsStorageEncryption = supportsStorageEncryption
        self.vpc = vpc
    }

    enum CodingKeys: String, CodingKey {
        case availabilityZones = "AvailabilityZones"
        case availableProcessorFeatures = "AvailableProcessorFeatures"
        case dBInstanceClass = "DBInstanceClass"
        case engine = "Engine"
        case engineVersion = "EngineVersion"
        case licenseModel = "LicenseModel"
        case maxIopsPerDbInstance = "MaxIopsPerDbInstance"
        case maxIopsPerGib = "MaxIopsPerGib"
        case maxStorageSize = "MaxStorageSize"
        case minIopsPerDbInstance = "MinIopsPerDbInstance"
        case minIopsPerGib = "MinIopsPerGib"
        case minStorageSize = "MinStorageSize"
        case multiAZCapable = "MultiAZCapable"
        case readReplicaCapable = "ReadReplicaCapable"
        case storageType = "StorageType"
        case supportedEngineModes = "SupportedEngineModes"
        case supportsEnhancedMonitoring = "SupportsEnhancedMonitoring"
        case supportsIAMDatabaseAuthentication = "SupportsIAMDatabaseAuthentication"
        case supportsIops = "SupportsIops"
        case supportsPerformanceInsights = "SupportsPerformanceInsights"
        case supportsStorageEncryption = "SupportsStorageEncryption"
        case vpc = "Vpc"
    }

    public func validate() throws {
    }
}

public struct OrderableDBInstanceOptionsMessage: Codable, Equatable {
    public var marker: String?
    public var orderableDBInstanceOptions: OrderableDBInstanceOptionsList?

    public init(marker: String? = nil,
                orderableDBInstanceOptions: OrderableDBInstanceOptionsList? = nil) {
        self.marker = marker
        self.orderableDBInstanceOptions = orderableDBInstanceOptions
    }

    enum CodingKeys: String, CodingKey {
        case marker = "Marker"
        case orderableDBInstanceOptions = "OrderableDBInstanceOptions"
    }

    public func validate() throws {
    }
}

public struct OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions: Codable, Equatable {
    public var describeOrderableDBInstanceOptionsResult: OrderableDBInstanceOptionsMessage

    public init(describeOrderableDBInstanceOptionsResult: OrderableDBInstanceOptionsMessage) {
        self.describeOrderableDBInstanceOptionsResult = describeOrderableDBInstanceOptionsResult
    }

    enum CodingKeys: String, CodingKey {
        case describeOrderableDBInstanceOptionsResult = "DescribeOrderableDBInstanceOptionsResult"
    }

    public func validate() throws {
        try describeOrderableDBInstanceOptionsResult.validate()
    }
}

public struct Parameter: Codable, Equatable {
    public var allowedValues: String?
    public var applyMethod: ApplyMethod?
    public var applyType: String?
    public var dataType: String?
    public var description: String?
    public var isModifiable: Boolean?
    public var minimumEngineVersion: String?
    public var parameterName: String?
    public var parameterValue: String?
    public var source: String?
    public var supportedEngineModes: EngineModeList?

    public init(allowedValues: String? = nil,
                applyMethod: ApplyMethod? = nil,
                applyType: String? = nil,
                dataType: String? = nil,
                description: String? = nil,
                isModifiable: Boolean? = nil,
                minimumEngineVersion: String? = nil,
                parameterName: String? = nil,
                parameterValue: String? = nil,
                source: String? = nil,
                supportedEngineModes: EngineModeList? = nil) {
        self.allowedValues = allowedValues
        self.applyMethod = applyMethod
        self.applyType = applyType
        self.dataType = dataType
        self.description = description
        self.isModifiable = isModifiable
        self.minimumEngineVersion = minimumEngineVersion
        self.parameterName = parameterName
        self.parameterValue = parameterValue
        self.source = source
        self.supportedEngineModes = supportedEngineModes
    }

    enum CodingKeys: String, CodingKey {
        case allowedValues = "AllowedValues"
        case applyMethod = "ApplyMethod"
        case applyType = "ApplyType"
        case dataType = "DataType"
        case description = "Description"
        case isModifiable = "IsModifiable"
        case minimumEngineVersion = "MinimumEngineVersion"
        case parameterName = "ParameterName"
        case parameterValue = "ParameterValue"
        case source = "Source"
        case supportedEngineModes = "SupportedEngineModes"
    }

    public func validate() throws {
    }
}

public struct PendingCloudwatchLogsExports: Codable, Equatable {
    public var logTypesToDisable: LogTypeList?
    public var logTypesToEnable: LogTypeList?

    public init(logTypesToDisable: LogTypeList? = nil,
                logTypesToEnable: LogTypeList? = nil) {
        self.logTypesToDisable = logTypesToDisable
        self.logTypesToEnable = logTypesToEnable
    }

    enum CodingKeys: String, CodingKey {
        case logTypesToDisable = "LogTypesToDisable"
        case logTypesToEnable = "LogTypesToEnable"
    }

    public func validate() throws {
    }
}

public struct PendingMaintenanceAction: Codable, Equatable {
    public var action: String?
    public var autoAppliedAfterDate: TStamp?
    public var currentApplyDate: TStamp?
    public var description: String?
    public var forcedApplyDate: TStamp?
    public var optInStatus: String?

    public init(action: String? = nil,
                autoAppliedAfterDate: TStamp? = nil,
                currentApplyDate: TStamp? = nil,
                description: String? = nil,
                forcedApplyDate: TStamp? = nil,
                optInStatus: String? = nil) {
        self.action = action
        self.autoAppliedAfterDate = autoAppliedAfterDate
        self.currentApplyDate = currentApplyDate
        self.description = description
        self.forcedApplyDate = forcedApplyDate
        self.optInStatus = optInStatus
    }

    enum CodingKeys: String, CodingKey {
        case action = "Action"
        case autoAppliedAfterDate = "AutoAppliedAfterDate"
        case currentApplyDate = "CurrentApplyDate"
        case description = "Description"
        case forcedApplyDate = "ForcedApplyDate"
        case optInStatus = "OptInStatus"
    }

    public func validate() throws {
    }
}

public struct PendingMaintenanceActionsMessage: Codable, Equatable {
    public var marker: String?
    public var pendingMaintenanceActions: PendingMaintenanceActions?

    public init(marker: String? = nil,
                pendingMaintenanceActions: PendingMaintenanceActions? = nil) {
        self.marker = marker
        self.pendingMaintenanceActions = pendingMaintenanceActions
    }

    enum CodingKeys: String, CodingKey {
        case marker = "Marker"
        case pendingMaintenanceActions = "PendingMaintenanceActions"
    }

    public func validate() throws {
    }
}

public struct PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions: Codable, Equatable {
    public var describePendingMaintenanceActionsResult: PendingMaintenanceActionsMessage

    public init(describePendingMaintenanceActionsResult: PendingMaintenanceActionsMessage) {
        self.describePendingMaintenanceActionsResult = describePendingMaintenanceActionsResult
    }

    enum CodingKeys: String, CodingKey {
        case describePendingMaintenanceActionsResult = "DescribePendingMaintenanceActionsResult"
    }

    public func validate() throws {
        try describePendingMaintenanceActionsResult.validate()
    }
}

public struct PendingModifiedValues: Codable, Equatable {
    public var allocatedStorage: IntegerOptional?
    public var backupRetentionPeriod: IntegerOptional?
    public var cACertificateIdentifier: String?
    public var dBInstanceClass: String?
    public var dBInstanceIdentifier: String?
    public var dBSubnetGroupName: String?
    public var engineVersion: String?
    public var iops: IntegerOptional?
    public var licenseModel: String?
    public var masterUserPassword: String?
    public var multiAZ: BooleanOptional?
    public var pendingCloudwatchLogsExports: PendingCloudwatchLogsExports?
    public var port: IntegerOptional?
    public var processorFeatures: ProcessorFeatureList?
    public var storageType: String?

    public init(allocatedStorage: IntegerOptional? = nil,
                backupRetentionPeriod: IntegerOptional? = nil,
                cACertificateIdentifier: String? = nil,
                dBInstanceClass: String? = nil,
                dBInstanceIdentifier: String? = nil,
                dBSubnetGroupName: String? = nil,
                engineVersion: String? = nil,
                iops: IntegerOptional? = nil,
                licenseModel: String? = nil,
                masterUserPassword: String? = nil,
                multiAZ: BooleanOptional? = nil,
                pendingCloudwatchLogsExports: PendingCloudwatchLogsExports? = nil,
                port: IntegerOptional? = nil,
                processorFeatures: ProcessorFeatureList? = nil,
                storageType: String? = nil) {
        self.allocatedStorage = allocatedStorage
        self.backupRetentionPeriod = backupRetentionPeriod
        self.cACertificateIdentifier = cACertificateIdentifier
        self.dBInstanceClass = dBInstanceClass
        self.dBInstanceIdentifier = dBInstanceIdentifier
        self.dBSubnetGroupName = dBSubnetGroupName
        self.engineVersion = engineVersion
        self.iops = iops
        self.licenseModel = licenseModel
        self.masterUserPassword = masterUserPassword
        self.multiAZ = multiAZ
        self.pendingCloudwatchLogsExports = pendingCloudwatchLogsExports
        self.port = port
        self.processorFeatures = processorFeatures
        self.storageType = storageType
    }

    enum CodingKeys: String, CodingKey {
        case allocatedStorage = "AllocatedStorage"
        case backupRetentionPeriod = "BackupRetentionPeriod"
        case cACertificateIdentifier = "CACertificateIdentifier"
        case dBInstanceClass = "DBInstanceClass"
        case dBInstanceIdentifier = "DBInstanceIdentifier"
        case dBSubnetGroupName = "DBSubnetGroupName"
        case engineVersion = "EngineVersion"
        case iops = "Iops"
        case licenseModel = "LicenseModel"
        case masterUserPassword = "MasterUserPassword"
        case multiAZ = "MultiAZ"
        case pendingCloudwatchLogsExports = "PendingCloudwatchLogsExports"
        case port = "Port"
        case processorFeatures = "ProcessorFeatures"
        case storageType = "StorageType"
    }

    public func validate() throws {
        try pendingCloudwatchLogsExports?.validate()
    }
}

public struct PointInTimeRestoreNotEnabledFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ProcessorFeature: Codable, Equatable {
    public var name: String?
    public var value: String?

    public init(name: String? = nil,
                value: String? = nil) {
        self.name = name
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case value = "Value"
    }

    public func validate() throws {
    }
}

public struct PromoteReadReplicaDBClusterMessage: Codable, Equatable {
    public var dBClusterIdentifier: String

    public init(dBClusterIdentifier: String) {
        self.dBClusterIdentifier = dBClusterIdentifier
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterIdentifier = "DBClusterIdentifier"
    }

    public func validate() throws {
    }
}

public struct PromoteReadReplicaDBClusterResult: Codable, Equatable {
    public var dBCluster: DBCluster?

    public init(dBCluster: DBCluster? = nil) {
        self.dBCluster = dBCluster
    }

    enum CodingKeys: String, CodingKey {
        case dBCluster = "DBCluster"
    }

    public func validate() throws {
        try dBCluster?.validate()
    }
}

public struct PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster: Codable, Equatable {
    public var promoteReadReplicaDBClusterResult: PromoteReadReplicaDBClusterResult

    public init(promoteReadReplicaDBClusterResult: PromoteReadReplicaDBClusterResult) {
        self.promoteReadReplicaDBClusterResult = promoteReadReplicaDBClusterResult
    }

    enum CodingKeys: String, CodingKey {
        case promoteReadReplicaDBClusterResult = "PromoteReadReplicaDBClusterResult"
    }

    public func validate() throws {
        try promoteReadReplicaDBClusterResult.validate()
    }
}

public struct PromoteReadReplicaMessage: Codable, Equatable {
    public var backupRetentionPeriod: IntegerOptional?
    public var dBInstanceIdentifier: String
    public var preferredBackupWindow: String?

    public init(backupRetentionPeriod: IntegerOptional? = nil,
                dBInstanceIdentifier: String,
                preferredBackupWindow: String? = nil) {
        self.backupRetentionPeriod = backupRetentionPeriod
        self.dBInstanceIdentifier = dBInstanceIdentifier
        self.preferredBackupWindow = preferredBackupWindow
    }

    enum CodingKeys: String, CodingKey {
        case backupRetentionPeriod = "BackupRetentionPeriod"
        case dBInstanceIdentifier = "DBInstanceIdentifier"
        case preferredBackupWindow = "PreferredBackupWindow"
    }

    public func validate() throws {
    }
}

public struct PromoteReadReplicaResult: Codable, Equatable {
    public var dBInstance: DBInstance?

    public init(dBInstance: DBInstance? = nil) {
        self.dBInstance = dBInstance
    }

    enum CodingKeys: String, CodingKey {
        case dBInstance = "DBInstance"
    }

    public func validate() throws {
        try dBInstance?.validate()
    }
}

public struct PromoteReadReplicaResultForPromoteReadReplica: Codable, Equatable {
    public var promoteReadReplicaResult: PromoteReadReplicaResult

    public init(promoteReadReplicaResult: PromoteReadReplicaResult) {
        self.promoteReadReplicaResult = promoteReadReplicaResult
    }

    enum CodingKeys: String, CodingKey {
        case promoteReadReplicaResult = "PromoteReadReplicaResult"
    }

    public func validate() throws {
        try promoteReadReplicaResult.validate()
    }
}

public struct ProvisionedIopsNotAvailableInAZFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct PurchaseReservedDBInstancesOfferingMessage: Codable, Equatable {
    public var dBInstanceCount: IntegerOptional?
    public var reservedDBInstanceId: String?
    public var reservedDBInstancesOfferingId: String
    public var tags: TagList?

    public init(dBInstanceCount: IntegerOptional? = nil,
                reservedDBInstanceId: String? = nil,
                reservedDBInstancesOfferingId: String,
                tags: TagList? = nil) {
        self.dBInstanceCount = dBInstanceCount
        self.reservedDBInstanceId = reservedDBInstanceId
        self.reservedDBInstancesOfferingId = reservedDBInstancesOfferingId
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case dBInstanceCount = "DBInstanceCount"
        case reservedDBInstanceId = "ReservedDBInstanceId"
        case reservedDBInstancesOfferingId = "ReservedDBInstancesOfferingId"
        case tags = "Tags"
    }

    public func validate() throws {
    }
}

public struct PurchaseReservedDBInstancesOfferingResult: Codable, Equatable {
    public var reservedDBInstance: ReservedDBInstance?

    public init(reservedDBInstance: ReservedDBInstance? = nil) {
        self.reservedDBInstance = reservedDBInstance
    }

    enum CodingKeys: String, CodingKey {
        case reservedDBInstance = "ReservedDBInstance"
    }

    public func validate() throws {
        try reservedDBInstance?.validate()
    }
}

public struct PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering: Codable, Equatable {
    public var purchaseReservedDBInstancesOfferingResult: PurchaseReservedDBInstancesOfferingResult

    public init(purchaseReservedDBInstancesOfferingResult: PurchaseReservedDBInstancesOfferingResult) {
        self.purchaseReservedDBInstancesOfferingResult = purchaseReservedDBInstancesOfferingResult
    }

    enum CodingKeys: String, CodingKey {
        case purchaseReservedDBInstancesOfferingResult = "PurchaseReservedDBInstancesOfferingResult"
    }

    public func validate() throws {
        try purchaseReservedDBInstancesOfferingResult.validate()
    }
}

public struct Range: Codable, Equatable {
    public var from: Integer?
    public var step: IntegerOptional?
    public var to: Integer?

    public init(from: Integer? = nil,
                step: IntegerOptional? = nil,
                to: Integer? = nil) {
        self.from = from
        self.step = step
        self.to = to
    }

    enum CodingKeys: String, CodingKey {
        case from = "From"
        case step = "Step"
        case to = "To"
    }

    public func validate() throws {
    }
}

public struct RebootDBInstanceMessage: Codable, Equatable {
    public var dBInstanceIdentifier: String
    public var forceFailover: BooleanOptional?

    public init(dBInstanceIdentifier: String,
                forceFailover: BooleanOptional? = nil) {
        self.dBInstanceIdentifier = dBInstanceIdentifier
        self.forceFailover = forceFailover
    }

    enum CodingKeys: String, CodingKey {
        case dBInstanceIdentifier = "DBInstanceIdentifier"
        case forceFailover = "ForceFailover"
    }

    public func validate() throws {
    }
}

public struct RebootDBInstanceResult: Codable, Equatable {
    public var dBInstance: DBInstance?

    public init(dBInstance: DBInstance? = nil) {
        self.dBInstance = dBInstance
    }

    enum CodingKeys: String, CodingKey {
        case dBInstance = "DBInstance"
    }

    public func validate() throws {
        try dBInstance?.validate()
    }
}

public struct RebootDBInstanceResultForRebootDBInstance: Codable, Equatable {
    public var rebootDBInstanceResult: RebootDBInstanceResult

    public init(rebootDBInstanceResult: RebootDBInstanceResult) {
        self.rebootDBInstanceResult = rebootDBInstanceResult
    }

    enum CodingKeys: String, CodingKey {
        case rebootDBInstanceResult = "RebootDBInstanceResult"
    }

    public func validate() throws {
        try rebootDBInstanceResult.validate()
    }
}

public struct RecurringCharge: Codable, Equatable {
    public var recurringChargeAmount: Double?
    public var recurringChargeFrequency: String?

    public init(recurringChargeAmount: Double? = nil,
                recurringChargeFrequency: String? = nil) {
        self.recurringChargeAmount = recurringChargeAmount
        self.recurringChargeFrequency = recurringChargeFrequency
    }

    enum CodingKeys: String, CodingKey {
        case recurringChargeAmount = "RecurringChargeAmount"
        case recurringChargeFrequency = "RecurringChargeFrequency"
    }

    public func validate() throws {
    }
}

public struct RemoveFromGlobalClusterMessage: Codable, Equatable {
    public var dbClusterIdentifier: String?
    public var globalClusterIdentifier: String?

    public init(dbClusterIdentifier: String? = nil,
                globalClusterIdentifier: String? = nil) {
        self.dbClusterIdentifier = dbClusterIdentifier
        self.globalClusterIdentifier = globalClusterIdentifier
    }

    enum CodingKeys: String, CodingKey {
        case dbClusterIdentifier = "DbClusterIdentifier"
        case globalClusterIdentifier = "GlobalClusterIdentifier"
    }

    public func validate() throws {
    }
}

public struct RemoveFromGlobalClusterResult: Codable, Equatable {
    public var globalCluster: GlobalCluster?

    public init(globalCluster: GlobalCluster? = nil) {
        self.globalCluster = globalCluster
    }

    enum CodingKeys: String, CodingKey {
        case globalCluster = "GlobalCluster"
    }

    public func validate() throws {
        try globalCluster?.validate()
    }
}

public struct RemoveFromGlobalClusterResultForRemoveFromGlobalCluster: Codable, Equatable {
    public var removeFromGlobalClusterResult: RemoveFromGlobalClusterResult

    public init(removeFromGlobalClusterResult: RemoveFromGlobalClusterResult) {
        self.removeFromGlobalClusterResult = removeFromGlobalClusterResult
    }

    enum CodingKeys: String, CodingKey {
        case removeFromGlobalClusterResult = "RemoveFromGlobalClusterResult"
    }

    public func validate() throws {
        try removeFromGlobalClusterResult.validate()
    }
}

public struct RemoveRoleFromDBClusterMessage: Codable, Equatable {
    public var dBClusterIdentifier: String
    public var roleArn: String

    public init(dBClusterIdentifier: String,
                roleArn: String) {
        self.dBClusterIdentifier = dBClusterIdentifier
        self.roleArn = roleArn
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterIdentifier = "DBClusterIdentifier"
        case roleArn = "RoleArn"
    }

    public func validate() throws {
    }
}

public struct RemoveRoleFromDBInstanceMessage: Codable, Equatable {
    public var dBInstanceIdentifier: String
    public var featureName: String
    public var roleArn: String

    public init(dBInstanceIdentifier: String,
                featureName: String,
                roleArn: String) {
        self.dBInstanceIdentifier = dBInstanceIdentifier
        self.featureName = featureName
        self.roleArn = roleArn
    }

    enum CodingKeys: String, CodingKey {
        case dBInstanceIdentifier = "DBInstanceIdentifier"
        case featureName = "FeatureName"
        case roleArn = "RoleArn"
    }

    public func validate() throws {
    }
}

public struct RemoveSourceIdentifierFromSubscriptionMessage: Codable, Equatable {
    public var sourceIdentifier: String
    public var subscriptionName: String

    public init(sourceIdentifier: String,
                subscriptionName: String) {
        self.sourceIdentifier = sourceIdentifier
        self.subscriptionName = subscriptionName
    }

    enum CodingKeys: String, CodingKey {
        case sourceIdentifier = "SourceIdentifier"
        case subscriptionName = "SubscriptionName"
    }

    public func validate() throws {
    }
}

public struct RemoveSourceIdentifierFromSubscriptionResult: Codable, Equatable {
    public var eventSubscription: EventSubscription?

    public init(eventSubscription: EventSubscription? = nil) {
        self.eventSubscription = eventSubscription
    }

    enum CodingKeys: String, CodingKey {
        case eventSubscription = "EventSubscription"
    }

    public func validate() throws {
        try eventSubscription?.validate()
    }
}

public struct RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription: Codable, Equatable {
    public var removeSourceIdentifierFromSubscriptionResult: RemoveSourceIdentifierFromSubscriptionResult

    public init(removeSourceIdentifierFromSubscriptionResult: RemoveSourceIdentifierFromSubscriptionResult) {
        self.removeSourceIdentifierFromSubscriptionResult = removeSourceIdentifierFromSubscriptionResult
    }

    enum CodingKeys: String, CodingKey {
        case removeSourceIdentifierFromSubscriptionResult = "RemoveSourceIdentifierFromSubscriptionResult"
    }

    public func validate() throws {
        try removeSourceIdentifierFromSubscriptionResult.validate()
    }
}

public struct RemoveTagsFromResourceMessage: Codable, Equatable {
    public var resourceName: String
    public var tagKeys: KeyList

    public init(resourceName: String,
                tagKeys: KeyList) {
        self.resourceName = resourceName
        self.tagKeys = tagKeys
    }

    enum CodingKeys: String, CodingKey {
        case resourceName = "ResourceName"
        case tagKeys = "TagKeys"
    }

    public func validate() throws {
    }
}

public struct ReservedDBInstance: Codable, Equatable {
    public var currencyCode: String?
    public var dBInstanceClass: String?
    public var dBInstanceCount: Integer?
    public var duration: Integer?
    public var fixedPrice: Double?
    public var multiAZ: Boolean?
    public var offeringType: String?
    public var productDescription: String?
    public var recurringCharges: RecurringChargeList?
    public var reservedDBInstanceArn: String?
    public var reservedDBInstanceId: String?
    public var reservedDBInstancesOfferingId: String?
    public var startTime: TStamp?
    public var state: String?
    public var usagePrice: Double?

    public init(currencyCode: String? = nil,
                dBInstanceClass: String? = nil,
                dBInstanceCount: Integer? = nil,
                duration: Integer? = nil,
                fixedPrice: Double? = nil,
                multiAZ: Boolean? = nil,
                offeringType: String? = nil,
                productDescription: String? = nil,
                recurringCharges: RecurringChargeList? = nil,
                reservedDBInstanceArn: String? = nil,
                reservedDBInstanceId: String? = nil,
                reservedDBInstancesOfferingId: String? = nil,
                startTime: TStamp? = nil,
                state: String? = nil,
                usagePrice: Double? = nil) {
        self.currencyCode = currencyCode
        self.dBInstanceClass = dBInstanceClass
        self.dBInstanceCount = dBInstanceCount
        self.duration = duration
        self.fixedPrice = fixedPrice
        self.multiAZ = multiAZ
        self.offeringType = offeringType
        self.productDescription = productDescription
        self.recurringCharges = recurringCharges
        self.reservedDBInstanceArn = reservedDBInstanceArn
        self.reservedDBInstanceId = reservedDBInstanceId
        self.reservedDBInstancesOfferingId = reservedDBInstancesOfferingId
        self.startTime = startTime
        self.state = state
        self.usagePrice = usagePrice
    }

    enum CodingKeys: String, CodingKey {
        case currencyCode = "CurrencyCode"
        case dBInstanceClass = "DBInstanceClass"
        case dBInstanceCount = "DBInstanceCount"
        case duration = "Duration"
        case fixedPrice = "FixedPrice"
        case multiAZ = "MultiAZ"
        case offeringType = "OfferingType"
        case productDescription = "ProductDescription"
        case recurringCharges = "RecurringCharges"
        case reservedDBInstanceArn = "ReservedDBInstanceArn"
        case reservedDBInstanceId = "ReservedDBInstanceId"
        case reservedDBInstancesOfferingId = "ReservedDBInstancesOfferingId"
        case startTime = "StartTime"
        case state = "State"
        case usagePrice = "UsagePrice"
    }

    public func validate() throws {
    }
}

public struct ReservedDBInstanceAlreadyExistsFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ReservedDBInstanceMessage: Codable, Equatable {
    public var marker: String?
    public var reservedDBInstances: ReservedDBInstanceList?

    public init(marker: String? = nil,
                reservedDBInstances: ReservedDBInstanceList? = nil) {
        self.marker = marker
        self.reservedDBInstances = reservedDBInstances
    }

    enum CodingKeys: String, CodingKey {
        case marker = "Marker"
        case reservedDBInstances = "ReservedDBInstances"
    }

    public func validate() throws {
    }
}

public struct ReservedDBInstanceMessageForDescribeReservedDBInstances: Codable, Equatable {
    public var describeReservedDBInstancesResult: ReservedDBInstanceMessage

    public init(describeReservedDBInstancesResult: ReservedDBInstanceMessage) {
        self.describeReservedDBInstancesResult = describeReservedDBInstancesResult
    }

    enum CodingKeys: String, CodingKey {
        case describeReservedDBInstancesResult = "DescribeReservedDBInstancesResult"
    }

    public func validate() throws {
        try describeReservedDBInstancesResult.validate()
    }
}

public struct ReservedDBInstanceNotFoundFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ReservedDBInstanceQuotaExceededFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ReservedDBInstancesOffering: Codable, Equatable {
    public var currencyCode: String?
    public var dBInstanceClass: String?
    public var duration: Integer?
    public var fixedPrice: Double?
    public var multiAZ: Boolean?
    public var offeringType: String?
    public var productDescription: String?
    public var recurringCharges: RecurringChargeList?
    public var reservedDBInstancesOfferingId: String?
    public var usagePrice: Double?

    public init(currencyCode: String? = nil,
                dBInstanceClass: String? = nil,
                duration: Integer? = nil,
                fixedPrice: Double? = nil,
                multiAZ: Boolean? = nil,
                offeringType: String? = nil,
                productDescription: String? = nil,
                recurringCharges: RecurringChargeList? = nil,
                reservedDBInstancesOfferingId: String? = nil,
                usagePrice: Double? = nil) {
        self.currencyCode = currencyCode
        self.dBInstanceClass = dBInstanceClass
        self.duration = duration
        self.fixedPrice = fixedPrice
        self.multiAZ = multiAZ
        self.offeringType = offeringType
        self.productDescription = productDescription
        self.recurringCharges = recurringCharges
        self.reservedDBInstancesOfferingId = reservedDBInstancesOfferingId
        self.usagePrice = usagePrice
    }

    enum CodingKeys: String, CodingKey {
        case currencyCode = "CurrencyCode"
        case dBInstanceClass = "DBInstanceClass"
        case duration = "Duration"
        case fixedPrice = "FixedPrice"
        case multiAZ = "MultiAZ"
        case offeringType = "OfferingType"
        case productDescription = "ProductDescription"
        case recurringCharges = "RecurringCharges"
        case reservedDBInstancesOfferingId = "ReservedDBInstancesOfferingId"
        case usagePrice = "UsagePrice"
    }

    public func validate() throws {
    }
}

public struct ReservedDBInstancesOfferingMessage: Codable, Equatable {
    public var marker: String?
    public var reservedDBInstancesOfferings: ReservedDBInstancesOfferingList?

    public init(marker: String? = nil,
                reservedDBInstancesOfferings: ReservedDBInstancesOfferingList? = nil) {
        self.marker = marker
        self.reservedDBInstancesOfferings = reservedDBInstancesOfferings
    }

    enum CodingKeys: String, CodingKey {
        case marker = "Marker"
        case reservedDBInstancesOfferings = "ReservedDBInstancesOfferings"
    }

    public func validate() throws {
    }
}

public struct ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings: Codable, Equatable {
    public var describeReservedDBInstancesOfferingsResult: ReservedDBInstancesOfferingMessage

    public init(describeReservedDBInstancesOfferingsResult: ReservedDBInstancesOfferingMessage) {
        self.describeReservedDBInstancesOfferingsResult = describeReservedDBInstancesOfferingsResult
    }

    enum CodingKeys: String, CodingKey {
        case describeReservedDBInstancesOfferingsResult = "DescribeReservedDBInstancesOfferingsResult"
    }

    public func validate() throws {
        try describeReservedDBInstancesOfferingsResult.validate()
    }
}

public struct ReservedDBInstancesOfferingNotFoundFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ResetDBClusterParameterGroupMessage: Codable, Equatable {
    public var dBClusterParameterGroupName: String
    public var parameters: ParametersList?
    public var resetAllParameters: Boolean?

    public init(dBClusterParameterGroupName: String,
                parameters: ParametersList? = nil,
                resetAllParameters: Boolean? = nil) {
        self.dBClusterParameterGroupName = dBClusterParameterGroupName
        self.parameters = parameters
        self.resetAllParameters = resetAllParameters
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterParameterGroupName = "DBClusterParameterGroupName"
        case parameters = "Parameters"
        case resetAllParameters = "ResetAllParameters"
    }

    public func validate() throws {
    }
}

public struct ResetDBParameterGroupMessage: Codable, Equatable {
    public var dBParameterGroupName: String
    public var parameters: ParametersList?
    public var resetAllParameters: Boolean?

    public init(dBParameterGroupName: String,
                parameters: ParametersList? = nil,
                resetAllParameters: Boolean? = nil) {
        self.dBParameterGroupName = dBParameterGroupName
        self.parameters = parameters
        self.resetAllParameters = resetAllParameters
    }

    enum CodingKeys: String, CodingKey {
        case dBParameterGroupName = "DBParameterGroupName"
        case parameters = "Parameters"
        case resetAllParameters = "ResetAllParameters"
    }

    public func validate() throws {
    }
}

public struct ResourceNotFoundFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ResourcePendingMaintenanceActions: Codable, Equatable {
    public var pendingMaintenanceActionDetails: PendingMaintenanceActionDetails?
    public var resourceIdentifier: String?

    public init(pendingMaintenanceActionDetails: PendingMaintenanceActionDetails? = nil,
                resourceIdentifier: String? = nil) {
        self.pendingMaintenanceActionDetails = pendingMaintenanceActionDetails
        self.resourceIdentifier = resourceIdentifier
    }

    enum CodingKeys: String, CodingKey {
        case pendingMaintenanceActionDetails = "PendingMaintenanceActionDetails"
        case resourceIdentifier = "ResourceIdentifier"
    }

    public func validate() throws {
    }
}

public struct RestoreDBClusterFromS3Message: Codable, Equatable {
    public var availabilityZones: AvailabilityZones?
    public var backtrackWindow: LongOptional?
    public var backupRetentionPeriod: IntegerOptional?
    public var characterSetName: String?
    public var copyTagsToSnapshot: BooleanOptional?
    public var dBClusterIdentifier: String
    public var dBClusterParameterGroupName: String?
    public var dBSubnetGroupName: String?
    public var databaseName: String?
    public var deletionProtection: BooleanOptional?
    public var enableCloudwatchLogsExports: LogTypeList?
    public var enableIAMDatabaseAuthentication: BooleanOptional?
    public var engine: String
    public var engineVersion: String?
    public var kmsKeyId: String?
    public var masterUserPassword: String
    public var masterUsername: String
    public var optionGroupName: String?
    public var port: IntegerOptional?
    public var preferredBackupWindow: String?
    public var preferredMaintenanceWindow: String?
    public var s3BucketName: String
    public var s3IngestionRoleArn: String
    public var s3Prefix: String?
    public var sourceEngine: String
    public var sourceEngineVersion: String
    public var storageEncrypted: BooleanOptional?
    public var tags: TagList?
    public var vpcSecurityGroupIds: VpcSecurityGroupIdList?

    public init(availabilityZones: AvailabilityZones? = nil,
                backtrackWindow: LongOptional? = nil,
                backupRetentionPeriod: IntegerOptional? = nil,
                characterSetName: String? = nil,
                copyTagsToSnapshot: BooleanOptional? = nil,
                dBClusterIdentifier: String,
                dBClusterParameterGroupName: String? = nil,
                dBSubnetGroupName: String? = nil,
                databaseName: String? = nil,
                deletionProtection: BooleanOptional? = nil,
                enableCloudwatchLogsExports: LogTypeList? = nil,
                enableIAMDatabaseAuthentication: BooleanOptional? = nil,
                engine: String,
                engineVersion: String? = nil,
                kmsKeyId: String? = nil,
                masterUserPassword: String,
                masterUsername: String,
                optionGroupName: String? = nil,
                port: IntegerOptional? = nil,
                preferredBackupWindow: String? = nil,
                preferredMaintenanceWindow: String? = nil,
                s3BucketName: String,
                s3IngestionRoleArn: String,
                s3Prefix: String? = nil,
                sourceEngine: String,
                sourceEngineVersion: String,
                storageEncrypted: BooleanOptional? = nil,
                tags: TagList? = nil,
                vpcSecurityGroupIds: VpcSecurityGroupIdList? = nil) {
        self.availabilityZones = availabilityZones
        self.backtrackWindow = backtrackWindow
        self.backupRetentionPeriod = backupRetentionPeriod
        self.characterSetName = characterSetName
        self.copyTagsToSnapshot = copyTagsToSnapshot
        self.dBClusterIdentifier = dBClusterIdentifier
        self.dBClusterParameterGroupName = dBClusterParameterGroupName
        self.dBSubnetGroupName = dBSubnetGroupName
        self.databaseName = databaseName
        self.deletionProtection = deletionProtection
        self.enableCloudwatchLogsExports = enableCloudwatchLogsExports
        self.enableIAMDatabaseAuthentication = enableIAMDatabaseAuthentication
        self.engine = engine
        self.engineVersion = engineVersion
        self.kmsKeyId = kmsKeyId
        self.masterUserPassword = masterUserPassword
        self.masterUsername = masterUsername
        self.optionGroupName = optionGroupName
        self.port = port
        self.preferredBackupWindow = preferredBackupWindow
        self.preferredMaintenanceWindow = preferredMaintenanceWindow
        self.s3BucketName = s3BucketName
        self.s3IngestionRoleArn = s3IngestionRoleArn
        self.s3Prefix = s3Prefix
        self.sourceEngine = sourceEngine
        self.sourceEngineVersion = sourceEngineVersion
        self.storageEncrypted = storageEncrypted
        self.tags = tags
        self.vpcSecurityGroupIds = vpcSecurityGroupIds
    }

    enum CodingKeys: String, CodingKey {
        case availabilityZones = "AvailabilityZones"
        case backtrackWindow = "BacktrackWindow"
        case backupRetentionPeriod = "BackupRetentionPeriod"
        case characterSetName = "CharacterSetName"
        case copyTagsToSnapshot = "CopyTagsToSnapshot"
        case dBClusterIdentifier = "DBClusterIdentifier"
        case dBClusterParameterGroupName = "DBClusterParameterGroupName"
        case dBSubnetGroupName = "DBSubnetGroupName"
        case databaseName = "DatabaseName"
        case deletionProtection = "DeletionProtection"
        case enableCloudwatchLogsExports = "EnableCloudwatchLogsExports"
        case enableIAMDatabaseAuthentication = "EnableIAMDatabaseAuthentication"
        case engine = "Engine"
        case engineVersion = "EngineVersion"
        case kmsKeyId = "KmsKeyId"
        case masterUserPassword = "MasterUserPassword"
        case masterUsername = "MasterUsername"
        case optionGroupName = "OptionGroupName"
        case port = "Port"
        case preferredBackupWindow = "PreferredBackupWindow"
        case preferredMaintenanceWindow = "PreferredMaintenanceWindow"
        case s3BucketName = "S3BucketName"
        case s3IngestionRoleArn = "S3IngestionRoleArn"
        case s3Prefix = "S3Prefix"
        case sourceEngine = "SourceEngine"
        case sourceEngineVersion = "SourceEngineVersion"
        case storageEncrypted = "StorageEncrypted"
        case tags = "Tags"
        case vpcSecurityGroupIds = "VpcSecurityGroupIds"
    }

    public func validate() throws {
    }
}

public struct RestoreDBClusterFromS3Result: Codable, Equatable {
    public var dBCluster: DBCluster?

    public init(dBCluster: DBCluster? = nil) {
        self.dBCluster = dBCluster
    }

    enum CodingKeys: String, CodingKey {
        case dBCluster = "DBCluster"
    }

    public func validate() throws {
        try dBCluster?.validate()
    }
}

public struct RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3: Codable, Equatable {
    public var restoreDBClusterFromS3Result: RestoreDBClusterFromS3Result

    public init(restoreDBClusterFromS3Result: RestoreDBClusterFromS3Result) {
        self.restoreDBClusterFromS3Result = restoreDBClusterFromS3Result
    }

    enum CodingKeys: String, CodingKey {
        case restoreDBClusterFromS3Result = "RestoreDBClusterFromS3Result"
    }

    public func validate() throws {
        try restoreDBClusterFromS3Result.validate()
    }
}

public struct RestoreDBClusterFromSnapshotMessage: Codable, Equatable {
    public var availabilityZones: AvailabilityZones?
    public var backtrackWindow: LongOptional?
    public var copyTagsToSnapshot: BooleanOptional?
    public var dBClusterIdentifier: String
    public var dBClusterParameterGroupName: String?
    public var dBSubnetGroupName: String?
    public var databaseName: String?
    public var deletionProtection: BooleanOptional?
    public var enableCloudwatchLogsExports: LogTypeList?
    public var enableIAMDatabaseAuthentication: BooleanOptional?
    public var engine: String
    public var engineMode: String?
    public var engineVersion: String?
    public var kmsKeyId: String?
    public var optionGroupName: String?
    public var port: IntegerOptional?
    public var scalingConfiguration: ScalingConfiguration?
    public var snapshotIdentifier: String
    public var tags: TagList?
    public var vpcSecurityGroupIds: VpcSecurityGroupIdList?

    public init(availabilityZones: AvailabilityZones? = nil,
                backtrackWindow: LongOptional? = nil,
                copyTagsToSnapshot: BooleanOptional? = nil,
                dBClusterIdentifier: String,
                dBClusterParameterGroupName: String? = nil,
                dBSubnetGroupName: String? = nil,
                databaseName: String? = nil,
                deletionProtection: BooleanOptional? = nil,
                enableCloudwatchLogsExports: LogTypeList? = nil,
                enableIAMDatabaseAuthentication: BooleanOptional? = nil,
                engine: String,
                engineMode: String? = nil,
                engineVersion: String? = nil,
                kmsKeyId: String? = nil,
                optionGroupName: String? = nil,
                port: IntegerOptional? = nil,
                scalingConfiguration: ScalingConfiguration? = nil,
                snapshotIdentifier: String,
                tags: TagList? = nil,
                vpcSecurityGroupIds: VpcSecurityGroupIdList? = nil) {
        self.availabilityZones = availabilityZones
        self.backtrackWindow = backtrackWindow
        self.copyTagsToSnapshot = copyTagsToSnapshot
        self.dBClusterIdentifier = dBClusterIdentifier
        self.dBClusterParameterGroupName = dBClusterParameterGroupName
        self.dBSubnetGroupName = dBSubnetGroupName
        self.databaseName = databaseName
        self.deletionProtection = deletionProtection
        self.enableCloudwatchLogsExports = enableCloudwatchLogsExports
        self.enableIAMDatabaseAuthentication = enableIAMDatabaseAuthentication
        self.engine = engine
        self.engineMode = engineMode
        self.engineVersion = engineVersion
        self.kmsKeyId = kmsKeyId
        self.optionGroupName = optionGroupName
        self.port = port
        self.scalingConfiguration = scalingConfiguration
        self.snapshotIdentifier = snapshotIdentifier
        self.tags = tags
        self.vpcSecurityGroupIds = vpcSecurityGroupIds
    }

    enum CodingKeys: String, CodingKey {
        case availabilityZones = "AvailabilityZones"
        case backtrackWindow = "BacktrackWindow"
        case copyTagsToSnapshot = "CopyTagsToSnapshot"
        case dBClusterIdentifier = "DBClusterIdentifier"
        case dBClusterParameterGroupName = "DBClusterParameterGroupName"
        case dBSubnetGroupName = "DBSubnetGroupName"
        case databaseName = "DatabaseName"
        case deletionProtection = "DeletionProtection"
        case enableCloudwatchLogsExports = "EnableCloudwatchLogsExports"
        case enableIAMDatabaseAuthentication = "EnableIAMDatabaseAuthentication"
        case engine = "Engine"
        case engineMode = "EngineMode"
        case engineVersion = "EngineVersion"
        case kmsKeyId = "KmsKeyId"
        case optionGroupName = "OptionGroupName"
        case port = "Port"
        case scalingConfiguration = "ScalingConfiguration"
        case snapshotIdentifier = "SnapshotIdentifier"
        case tags = "Tags"
        case vpcSecurityGroupIds = "VpcSecurityGroupIds"
    }

    public func validate() throws {
        try scalingConfiguration?.validate()
    }
}

public struct RestoreDBClusterFromSnapshotResult: Codable, Equatable {
    public var dBCluster: DBCluster?

    public init(dBCluster: DBCluster? = nil) {
        self.dBCluster = dBCluster
    }

    enum CodingKeys: String, CodingKey {
        case dBCluster = "DBCluster"
    }

    public func validate() throws {
        try dBCluster?.validate()
    }
}

public struct RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot: Codable, Equatable {
    public var restoreDBClusterFromSnapshotResult: RestoreDBClusterFromSnapshotResult

    public init(restoreDBClusterFromSnapshotResult: RestoreDBClusterFromSnapshotResult) {
        self.restoreDBClusterFromSnapshotResult = restoreDBClusterFromSnapshotResult
    }

    enum CodingKeys: String, CodingKey {
        case restoreDBClusterFromSnapshotResult = "RestoreDBClusterFromSnapshotResult"
    }

    public func validate() throws {
        try restoreDBClusterFromSnapshotResult.validate()
    }
}

public struct RestoreDBClusterToPointInTimeMessage: Codable, Equatable {
    public var backtrackWindow: LongOptional?
    public var copyTagsToSnapshot: BooleanOptional?
    public var dBClusterIdentifier: String
    public var dBClusterParameterGroupName: String?
    public var dBSubnetGroupName: String?
    public var deletionProtection: BooleanOptional?
    public var enableCloudwatchLogsExports: LogTypeList?
    public var enableIAMDatabaseAuthentication: BooleanOptional?
    public var kmsKeyId: String?
    public var optionGroupName: String?
    public var port: IntegerOptional?
    public var restoreToTime: TStamp?
    public var restoreType: String?
    public var sourceDBClusterIdentifier: String
    public var tags: TagList?
    public var useLatestRestorableTime: Boolean?
    public var vpcSecurityGroupIds: VpcSecurityGroupIdList?

    public init(backtrackWindow: LongOptional? = nil,
                copyTagsToSnapshot: BooleanOptional? = nil,
                dBClusterIdentifier: String,
                dBClusterParameterGroupName: String? = nil,
                dBSubnetGroupName: String? = nil,
                deletionProtection: BooleanOptional? = nil,
                enableCloudwatchLogsExports: LogTypeList? = nil,
                enableIAMDatabaseAuthentication: BooleanOptional? = nil,
                kmsKeyId: String? = nil,
                optionGroupName: String? = nil,
                port: IntegerOptional? = nil,
                restoreToTime: TStamp? = nil,
                restoreType: String? = nil,
                sourceDBClusterIdentifier: String,
                tags: TagList? = nil,
                useLatestRestorableTime: Boolean? = nil,
                vpcSecurityGroupIds: VpcSecurityGroupIdList? = nil) {
        self.backtrackWindow = backtrackWindow
        self.copyTagsToSnapshot = copyTagsToSnapshot
        self.dBClusterIdentifier = dBClusterIdentifier
        self.dBClusterParameterGroupName = dBClusterParameterGroupName
        self.dBSubnetGroupName = dBSubnetGroupName
        self.deletionProtection = deletionProtection
        self.enableCloudwatchLogsExports = enableCloudwatchLogsExports
        self.enableIAMDatabaseAuthentication = enableIAMDatabaseAuthentication
        self.kmsKeyId = kmsKeyId
        self.optionGroupName = optionGroupName
        self.port = port
        self.restoreToTime = restoreToTime
        self.restoreType = restoreType
        self.sourceDBClusterIdentifier = sourceDBClusterIdentifier
        self.tags = tags
        self.useLatestRestorableTime = useLatestRestorableTime
        self.vpcSecurityGroupIds = vpcSecurityGroupIds
    }

    enum CodingKeys: String, CodingKey {
        case backtrackWindow = "BacktrackWindow"
        case copyTagsToSnapshot = "CopyTagsToSnapshot"
        case dBClusterIdentifier = "DBClusterIdentifier"
        case dBClusterParameterGroupName = "DBClusterParameterGroupName"
        case dBSubnetGroupName = "DBSubnetGroupName"
        case deletionProtection = "DeletionProtection"
        case enableCloudwatchLogsExports = "EnableCloudwatchLogsExports"
        case enableIAMDatabaseAuthentication = "EnableIAMDatabaseAuthentication"
        case kmsKeyId = "KmsKeyId"
        case optionGroupName = "OptionGroupName"
        case port = "Port"
        case restoreToTime = "RestoreToTime"
        case restoreType = "RestoreType"
        case sourceDBClusterIdentifier = "SourceDBClusterIdentifier"
        case tags = "Tags"
        case useLatestRestorableTime = "UseLatestRestorableTime"
        case vpcSecurityGroupIds = "VpcSecurityGroupIds"
    }

    public func validate() throws {
    }
}

public struct RestoreDBClusterToPointInTimeResult: Codable, Equatable {
    public var dBCluster: DBCluster?

    public init(dBCluster: DBCluster? = nil) {
        self.dBCluster = dBCluster
    }

    enum CodingKeys: String, CodingKey {
        case dBCluster = "DBCluster"
    }

    public func validate() throws {
        try dBCluster?.validate()
    }
}

public struct RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime: Codable, Equatable {
    public var restoreDBClusterToPointInTimeResult: RestoreDBClusterToPointInTimeResult

    public init(restoreDBClusterToPointInTimeResult: RestoreDBClusterToPointInTimeResult) {
        self.restoreDBClusterToPointInTimeResult = restoreDBClusterToPointInTimeResult
    }

    enum CodingKeys: String, CodingKey {
        case restoreDBClusterToPointInTimeResult = "RestoreDBClusterToPointInTimeResult"
    }

    public func validate() throws {
        try restoreDBClusterToPointInTimeResult.validate()
    }
}

public struct RestoreDBInstanceFromDBSnapshotMessage: Codable, Equatable {
    public var autoMinorVersionUpgrade: BooleanOptional?
    public var availabilityZone: String?
    public var copyTagsToSnapshot: BooleanOptional?
    public var dBInstanceClass: String?
    public var dBInstanceIdentifier: String
    public var dBName: String?
    public var dBParameterGroupName: String?
    public var dBSnapshotIdentifier: String
    public var dBSubnetGroupName: String?
    public var deletionProtection: BooleanOptional?
    public var domain: String?
    public var domainIAMRoleName: String?
    public var enableCloudwatchLogsExports: LogTypeList?
    public var enableIAMDatabaseAuthentication: BooleanOptional?
    public var engine: String?
    public var iops: IntegerOptional?
    public var licenseModel: String?
    public var multiAZ: BooleanOptional?
    public var optionGroupName: String?
    public var port: IntegerOptional?
    public var processorFeatures: ProcessorFeatureList?
    public var publiclyAccessible: BooleanOptional?
    public var storageType: String?
    public var tags: TagList?
    public var tdeCredentialArn: String?
    public var tdeCredentialPassword: String?
    public var useDefaultProcessorFeatures: BooleanOptional?
    public var vpcSecurityGroupIds: VpcSecurityGroupIdList?

    public init(autoMinorVersionUpgrade: BooleanOptional? = nil,
                availabilityZone: String? = nil,
                copyTagsToSnapshot: BooleanOptional? = nil,
                dBInstanceClass: String? = nil,
                dBInstanceIdentifier: String,
                dBName: String? = nil,
                dBParameterGroupName: String? = nil,
                dBSnapshotIdentifier: String,
                dBSubnetGroupName: String? = nil,
                deletionProtection: BooleanOptional? = nil,
                domain: String? = nil,
                domainIAMRoleName: String? = nil,
                enableCloudwatchLogsExports: LogTypeList? = nil,
                enableIAMDatabaseAuthentication: BooleanOptional? = nil,
                engine: String? = nil,
                iops: IntegerOptional? = nil,
                licenseModel: String? = nil,
                multiAZ: BooleanOptional? = nil,
                optionGroupName: String? = nil,
                port: IntegerOptional? = nil,
                processorFeatures: ProcessorFeatureList? = nil,
                publiclyAccessible: BooleanOptional? = nil,
                storageType: String? = nil,
                tags: TagList? = nil,
                tdeCredentialArn: String? = nil,
                tdeCredentialPassword: String? = nil,
                useDefaultProcessorFeatures: BooleanOptional? = nil,
                vpcSecurityGroupIds: VpcSecurityGroupIdList? = nil) {
        self.autoMinorVersionUpgrade = autoMinorVersionUpgrade
        self.availabilityZone = availabilityZone
        self.copyTagsToSnapshot = copyTagsToSnapshot
        self.dBInstanceClass = dBInstanceClass
        self.dBInstanceIdentifier = dBInstanceIdentifier
        self.dBName = dBName
        self.dBParameterGroupName = dBParameterGroupName
        self.dBSnapshotIdentifier = dBSnapshotIdentifier
        self.dBSubnetGroupName = dBSubnetGroupName
        self.deletionProtection = deletionProtection
        self.domain = domain
        self.domainIAMRoleName = domainIAMRoleName
        self.enableCloudwatchLogsExports = enableCloudwatchLogsExports
        self.enableIAMDatabaseAuthentication = enableIAMDatabaseAuthentication
        self.engine = engine
        self.iops = iops
        self.licenseModel = licenseModel
        self.multiAZ = multiAZ
        self.optionGroupName = optionGroupName
        self.port = port
        self.processorFeatures = processorFeatures
        self.publiclyAccessible = publiclyAccessible
        self.storageType = storageType
        self.tags = tags
        self.tdeCredentialArn = tdeCredentialArn
        self.tdeCredentialPassword = tdeCredentialPassword
        self.useDefaultProcessorFeatures = useDefaultProcessorFeatures
        self.vpcSecurityGroupIds = vpcSecurityGroupIds
    }

    enum CodingKeys: String, CodingKey {
        case autoMinorVersionUpgrade = "AutoMinorVersionUpgrade"
        case availabilityZone = "AvailabilityZone"
        case copyTagsToSnapshot = "CopyTagsToSnapshot"
        case dBInstanceClass = "DBInstanceClass"
        case dBInstanceIdentifier = "DBInstanceIdentifier"
        case dBName = "DBName"
        case dBParameterGroupName = "DBParameterGroupName"
        case dBSnapshotIdentifier = "DBSnapshotIdentifier"
        case dBSubnetGroupName = "DBSubnetGroupName"
        case deletionProtection = "DeletionProtection"
        case domain = "Domain"
        case domainIAMRoleName = "DomainIAMRoleName"
        case enableCloudwatchLogsExports = "EnableCloudwatchLogsExports"
        case enableIAMDatabaseAuthentication = "EnableIAMDatabaseAuthentication"
        case engine = "Engine"
        case iops = "Iops"
        case licenseModel = "LicenseModel"
        case multiAZ = "MultiAZ"
        case optionGroupName = "OptionGroupName"
        case port = "Port"
        case processorFeatures = "ProcessorFeatures"
        case publiclyAccessible = "PubliclyAccessible"
        case storageType = "StorageType"
        case tags = "Tags"
        case tdeCredentialArn = "TdeCredentialArn"
        case tdeCredentialPassword = "TdeCredentialPassword"
        case useDefaultProcessorFeatures = "UseDefaultProcessorFeatures"
        case vpcSecurityGroupIds = "VpcSecurityGroupIds"
    }

    public func validate() throws {
    }
}

public struct RestoreDBInstanceFromDBSnapshotResult: Codable, Equatable {
    public var dBInstance: DBInstance?

    public init(dBInstance: DBInstance? = nil) {
        self.dBInstance = dBInstance
    }

    enum CodingKeys: String, CodingKey {
        case dBInstance = "DBInstance"
    }

    public func validate() throws {
        try dBInstance?.validate()
    }
}

public struct RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot: Codable, Equatable {
    public var restoreDBInstanceFromDBSnapshotResult: RestoreDBInstanceFromDBSnapshotResult

    public init(restoreDBInstanceFromDBSnapshotResult: RestoreDBInstanceFromDBSnapshotResult) {
        self.restoreDBInstanceFromDBSnapshotResult = restoreDBInstanceFromDBSnapshotResult
    }

    enum CodingKeys: String, CodingKey {
        case restoreDBInstanceFromDBSnapshotResult = "RestoreDBInstanceFromDBSnapshotResult"
    }

    public func validate() throws {
        try restoreDBInstanceFromDBSnapshotResult.validate()
    }
}

public struct RestoreDBInstanceFromS3Message: Codable, Equatable {
    public var allocatedStorage: IntegerOptional?
    public var autoMinorVersionUpgrade: BooleanOptional?
    public var availabilityZone: String?
    public var backupRetentionPeriod: IntegerOptional?
    public var copyTagsToSnapshot: BooleanOptional?
    public var dBInstanceClass: String
    public var dBInstanceIdentifier: String
    public var dBName: String?
    public var dBParameterGroupName: String?
    public var dBSecurityGroups: DBSecurityGroupNameList?
    public var dBSubnetGroupName: String?
    public var deletionProtection: BooleanOptional?
    public var enableCloudwatchLogsExports: LogTypeList?
    public var enableIAMDatabaseAuthentication: BooleanOptional?
    public var enablePerformanceInsights: BooleanOptional?
    public var engine: String
    public var engineVersion: String?
    public var iops: IntegerOptional?
    public var kmsKeyId: String?
    public var licenseModel: String?
    public var masterUserPassword: String?
    public var masterUsername: String?
    public var monitoringInterval: IntegerOptional?
    public var monitoringRoleArn: String?
    public var multiAZ: BooleanOptional?
    public var optionGroupName: String?
    public var performanceInsightsKMSKeyId: String?
    public var performanceInsightsRetentionPeriod: IntegerOptional?
    public var port: IntegerOptional?
    public var preferredBackupWindow: String?
    public var preferredMaintenanceWindow: String?
    public var processorFeatures: ProcessorFeatureList?
    public var publiclyAccessible: BooleanOptional?
    public var s3BucketName: String
    public var s3IngestionRoleArn: String
    public var s3Prefix: String?
    public var sourceEngine: String
    public var sourceEngineVersion: String
    public var storageEncrypted: BooleanOptional?
    public var storageType: String?
    public var tags: TagList?
    public var useDefaultProcessorFeatures: BooleanOptional?
    public var vpcSecurityGroupIds: VpcSecurityGroupIdList?

    public init(allocatedStorage: IntegerOptional? = nil,
                autoMinorVersionUpgrade: BooleanOptional? = nil,
                availabilityZone: String? = nil,
                backupRetentionPeriod: IntegerOptional? = nil,
                copyTagsToSnapshot: BooleanOptional? = nil,
                dBInstanceClass: String,
                dBInstanceIdentifier: String,
                dBName: String? = nil,
                dBParameterGroupName: String? = nil,
                dBSecurityGroups: DBSecurityGroupNameList? = nil,
                dBSubnetGroupName: String? = nil,
                deletionProtection: BooleanOptional? = nil,
                enableCloudwatchLogsExports: LogTypeList? = nil,
                enableIAMDatabaseAuthentication: BooleanOptional? = nil,
                enablePerformanceInsights: BooleanOptional? = nil,
                engine: String,
                engineVersion: String? = nil,
                iops: IntegerOptional? = nil,
                kmsKeyId: String? = nil,
                licenseModel: String? = nil,
                masterUserPassword: String? = nil,
                masterUsername: String? = nil,
                monitoringInterval: IntegerOptional? = nil,
                monitoringRoleArn: String? = nil,
                multiAZ: BooleanOptional? = nil,
                optionGroupName: String? = nil,
                performanceInsightsKMSKeyId: String? = nil,
                performanceInsightsRetentionPeriod: IntegerOptional? = nil,
                port: IntegerOptional? = nil,
                preferredBackupWindow: String? = nil,
                preferredMaintenanceWindow: String? = nil,
                processorFeatures: ProcessorFeatureList? = nil,
                publiclyAccessible: BooleanOptional? = nil,
                s3BucketName: String,
                s3IngestionRoleArn: String,
                s3Prefix: String? = nil,
                sourceEngine: String,
                sourceEngineVersion: String,
                storageEncrypted: BooleanOptional? = nil,
                storageType: String? = nil,
                tags: TagList? = nil,
                useDefaultProcessorFeatures: BooleanOptional? = nil,
                vpcSecurityGroupIds: VpcSecurityGroupIdList? = nil) {
        self.allocatedStorage = allocatedStorage
        self.autoMinorVersionUpgrade = autoMinorVersionUpgrade
        self.availabilityZone = availabilityZone
        self.backupRetentionPeriod = backupRetentionPeriod
        self.copyTagsToSnapshot = copyTagsToSnapshot
        self.dBInstanceClass = dBInstanceClass
        self.dBInstanceIdentifier = dBInstanceIdentifier
        self.dBName = dBName
        self.dBParameterGroupName = dBParameterGroupName
        self.dBSecurityGroups = dBSecurityGroups
        self.dBSubnetGroupName = dBSubnetGroupName
        self.deletionProtection = deletionProtection
        self.enableCloudwatchLogsExports = enableCloudwatchLogsExports
        self.enableIAMDatabaseAuthentication = enableIAMDatabaseAuthentication
        self.enablePerformanceInsights = enablePerformanceInsights
        self.engine = engine
        self.engineVersion = engineVersion
        self.iops = iops
        self.kmsKeyId = kmsKeyId
        self.licenseModel = licenseModel
        self.masterUserPassword = masterUserPassword
        self.masterUsername = masterUsername
        self.monitoringInterval = monitoringInterval
        self.monitoringRoleArn = monitoringRoleArn
        self.multiAZ = multiAZ
        self.optionGroupName = optionGroupName
        self.performanceInsightsKMSKeyId = performanceInsightsKMSKeyId
        self.performanceInsightsRetentionPeriod = performanceInsightsRetentionPeriod
        self.port = port
        self.preferredBackupWindow = preferredBackupWindow
        self.preferredMaintenanceWindow = preferredMaintenanceWindow
        self.processorFeatures = processorFeatures
        self.publiclyAccessible = publiclyAccessible
        self.s3BucketName = s3BucketName
        self.s3IngestionRoleArn = s3IngestionRoleArn
        self.s3Prefix = s3Prefix
        self.sourceEngine = sourceEngine
        self.sourceEngineVersion = sourceEngineVersion
        self.storageEncrypted = storageEncrypted
        self.storageType = storageType
        self.tags = tags
        self.useDefaultProcessorFeatures = useDefaultProcessorFeatures
        self.vpcSecurityGroupIds = vpcSecurityGroupIds
    }

    enum CodingKeys: String, CodingKey {
        case allocatedStorage = "AllocatedStorage"
        case autoMinorVersionUpgrade = "AutoMinorVersionUpgrade"
        case availabilityZone = "AvailabilityZone"
        case backupRetentionPeriod = "BackupRetentionPeriod"
        case copyTagsToSnapshot = "CopyTagsToSnapshot"
        case dBInstanceClass = "DBInstanceClass"
        case dBInstanceIdentifier = "DBInstanceIdentifier"
        case dBName = "DBName"
        case dBParameterGroupName = "DBParameterGroupName"
        case dBSecurityGroups = "DBSecurityGroups"
        case dBSubnetGroupName = "DBSubnetGroupName"
        case deletionProtection = "DeletionProtection"
        case enableCloudwatchLogsExports = "EnableCloudwatchLogsExports"
        case enableIAMDatabaseAuthentication = "EnableIAMDatabaseAuthentication"
        case enablePerformanceInsights = "EnablePerformanceInsights"
        case engine = "Engine"
        case engineVersion = "EngineVersion"
        case iops = "Iops"
        case kmsKeyId = "KmsKeyId"
        case licenseModel = "LicenseModel"
        case masterUserPassword = "MasterUserPassword"
        case masterUsername = "MasterUsername"
        case monitoringInterval = "MonitoringInterval"
        case monitoringRoleArn = "MonitoringRoleArn"
        case multiAZ = "MultiAZ"
        case optionGroupName = "OptionGroupName"
        case performanceInsightsKMSKeyId = "PerformanceInsightsKMSKeyId"
        case performanceInsightsRetentionPeriod = "PerformanceInsightsRetentionPeriod"
        case port = "Port"
        case preferredBackupWindow = "PreferredBackupWindow"
        case preferredMaintenanceWindow = "PreferredMaintenanceWindow"
        case processorFeatures = "ProcessorFeatures"
        case publiclyAccessible = "PubliclyAccessible"
        case s3BucketName = "S3BucketName"
        case s3IngestionRoleArn = "S3IngestionRoleArn"
        case s3Prefix = "S3Prefix"
        case sourceEngine = "SourceEngine"
        case sourceEngineVersion = "SourceEngineVersion"
        case storageEncrypted = "StorageEncrypted"
        case storageType = "StorageType"
        case tags = "Tags"
        case useDefaultProcessorFeatures = "UseDefaultProcessorFeatures"
        case vpcSecurityGroupIds = "VpcSecurityGroupIds"
    }

    public func validate() throws {
    }
}

public struct RestoreDBInstanceFromS3Result: Codable, Equatable {
    public var dBInstance: DBInstance?

    public init(dBInstance: DBInstance? = nil) {
        self.dBInstance = dBInstance
    }

    enum CodingKeys: String, CodingKey {
        case dBInstance = "DBInstance"
    }

    public func validate() throws {
        try dBInstance?.validate()
    }
}

public struct RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3: Codable, Equatable {
    public var restoreDBInstanceFromS3Result: RestoreDBInstanceFromS3Result

    public init(restoreDBInstanceFromS3Result: RestoreDBInstanceFromS3Result) {
        self.restoreDBInstanceFromS3Result = restoreDBInstanceFromS3Result
    }

    enum CodingKeys: String, CodingKey {
        case restoreDBInstanceFromS3Result = "RestoreDBInstanceFromS3Result"
    }

    public func validate() throws {
        try restoreDBInstanceFromS3Result.validate()
    }
}

public struct RestoreDBInstanceToPointInTimeMessage: Codable, Equatable {
    public var autoMinorVersionUpgrade: BooleanOptional?
    public var availabilityZone: String?
    public var copyTagsToSnapshot: BooleanOptional?
    public var dBInstanceClass: String?
    public var dBName: String?
    public var dBParameterGroupName: String?
    public var dBSubnetGroupName: String?
    public var deletionProtection: BooleanOptional?
    public var domain: String?
    public var domainIAMRoleName: String?
    public var enableCloudwatchLogsExports: LogTypeList?
    public var enableIAMDatabaseAuthentication: BooleanOptional?
    public var engine: String?
    public var iops: IntegerOptional?
    public var licenseModel: String?
    public var multiAZ: BooleanOptional?
    public var optionGroupName: String?
    public var port: IntegerOptional?
    public var processorFeatures: ProcessorFeatureList?
    public var publiclyAccessible: BooleanOptional?
    public var restoreTime: TStamp?
    public var sourceDBInstanceIdentifier: String?
    public var sourceDbiResourceId: String?
    public var storageType: String?
    public var tags: TagList?
    public var targetDBInstanceIdentifier: String
    public var tdeCredentialArn: String?
    public var tdeCredentialPassword: String?
    public var useDefaultProcessorFeatures: BooleanOptional?
    public var useLatestRestorableTime: Boolean?
    public var vpcSecurityGroupIds: VpcSecurityGroupIdList?

    public init(autoMinorVersionUpgrade: BooleanOptional? = nil,
                availabilityZone: String? = nil,
                copyTagsToSnapshot: BooleanOptional? = nil,
                dBInstanceClass: String? = nil,
                dBName: String? = nil,
                dBParameterGroupName: String? = nil,
                dBSubnetGroupName: String? = nil,
                deletionProtection: BooleanOptional? = nil,
                domain: String? = nil,
                domainIAMRoleName: String? = nil,
                enableCloudwatchLogsExports: LogTypeList? = nil,
                enableIAMDatabaseAuthentication: BooleanOptional? = nil,
                engine: String? = nil,
                iops: IntegerOptional? = nil,
                licenseModel: String? = nil,
                multiAZ: BooleanOptional? = nil,
                optionGroupName: String? = nil,
                port: IntegerOptional? = nil,
                processorFeatures: ProcessorFeatureList? = nil,
                publiclyAccessible: BooleanOptional? = nil,
                restoreTime: TStamp? = nil,
                sourceDBInstanceIdentifier: String? = nil,
                sourceDbiResourceId: String? = nil,
                storageType: String? = nil,
                tags: TagList? = nil,
                targetDBInstanceIdentifier: String,
                tdeCredentialArn: String? = nil,
                tdeCredentialPassword: String? = nil,
                useDefaultProcessorFeatures: BooleanOptional? = nil,
                useLatestRestorableTime: Boolean? = nil,
                vpcSecurityGroupIds: VpcSecurityGroupIdList? = nil) {
        self.autoMinorVersionUpgrade = autoMinorVersionUpgrade
        self.availabilityZone = availabilityZone
        self.copyTagsToSnapshot = copyTagsToSnapshot
        self.dBInstanceClass = dBInstanceClass
        self.dBName = dBName
        self.dBParameterGroupName = dBParameterGroupName
        self.dBSubnetGroupName = dBSubnetGroupName
        self.deletionProtection = deletionProtection
        self.domain = domain
        self.domainIAMRoleName = domainIAMRoleName
        self.enableCloudwatchLogsExports = enableCloudwatchLogsExports
        self.enableIAMDatabaseAuthentication = enableIAMDatabaseAuthentication
        self.engine = engine
        self.iops = iops
        self.licenseModel = licenseModel
        self.multiAZ = multiAZ
        self.optionGroupName = optionGroupName
        self.port = port
        self.processorFeatures = processorFeatures
        self.publiclyAccessible = publiclyAccessible
        self.restoreTime = restoreTime
        self.sourceDBInstanceIdentifier = sourceDBInstanceIdentifier
        self.sourceDbiResourceId = sourceDbiResourceId
        self.storageType = storageType
        self.tags = tags
        self.targetDBInstanceIdentifier = targetDBInstanceIdentifier
        self.tdeCredentialArn = tdeCredentialArn
        self.tdeCredentialPassword = tdeCredentialPassword
        self.useDefaultProcessorFeatures = useDefaultProcessorFeatures
        self.useLatestRestorableTime = useLatestRestorableTime
        self.vpcSecurityGroupIds = vpcSecurityGroupIds
    }

    enum CodingKeys: String, CodingKey {
        case autoMinorVersionUpgrade = "AutoMinorVersionUpgrade"
        case availabilityZone = "AvailabilityZone"
        case copyTagsToSnapshot = "CopyTagsToSnapshot"
        case dBInstanceClass = "DBInstanceClass"
        case dBName = "DBName"
        case dBParameterGroupName = "DBParameterGroupName"
        case dBSubnetGroupName = "DBSubnetGroupName"
        case deletionProtection = "DeletionProtection"
        case domain = "Domain"
        case domainIAMRoleName = "DomainIAMRoleName"
        case enableCloudwatchLogsExports = "EnableCloudwatchLogsExports"
        case enableIAMDatabaseAuthentication = "EnableIAMDatabaseAuthentication"
        case engine = "Engine"
        case iops = "Iops"
        case licenseModel = "LicenseModel"
        case multiAZ = "MultiAZ"
        case optionGroupName = "OptionGroupName"
        case port = "Port"
        case processorFeatures = "ProcessorFeatures"
        case publiclyAccessible = "PubliclyAccessible"
        case restoreTime = "RestoreTime"
        case sourceDBInstanceIdentifier = "SourceDBInstanceIdentifier"
        case sourceDbiResourceId = "SourceDbiResourceId"
        case storageType = "StorageType"
        case tags = "Tags"
        case targetDBInstanceIdentifier = "TargetDBInstanceIdentifier"
        case tdeCredentialArn = "TdeCredentialArn"
        case tdeCredentialPassword = "TdeCredentialPassword"
        case useDefaultProcessorFeatures = "UseDefaultProcessorFeatures"
        case useLatestRestorableTime = "UseLatestRestorableTime"
        case vpcSecurityGroupIds = "VpcSecurityGroupIds"
    }

    public func validate() throws {
    }
}

public struct RestoreDBInstanceToPointInTimeResult: Codable, Equatable {
    public var dBInstance: DBInstance?

    public init(dBInstance: DBInstance? = nil) {
        self.dBInstance = dBInstance
    }

    enum CodingKeys: String, CodingKey {
        case dBInstance = "DBInstance"
    }

    public func validate() throws {
        try dBInstance?.validate()
    }
}

public struct RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime: Codable, Equatable {
    public var restoreDBInstanceToPointInTimeResult: RestoreDBInstanceToPointInTimeResult

    public init(restoreDBInstanceToPointInTimeResult: RestoreDBInstanceToPointInTimeResult) {
        self.restoreDBInstanceToPointInTimeResult = restoreDBInstanceToPointInTimeResult
    }

    enum CodingKeys: String, CodingKey {
        case restoreDBInstanceToPointInTimeResult = "RestoreDBInstanceToPointInTimeResult"
    }

    public func validate() throws {
        try restoreDBInstanceToPointInTimeResult.validate()
    }
}

public struct RestoreWindow: Codable, Equatable {
    public var earliestTime: TStamp?
    public var latestTime: TStamp?

    public init(earliestTime: TStamp? = nil,
                latestTime: TStamp? = nil) {
        self.earliestTime = earliestTime
        self.latestTime = latestTime
    }

    enum CodingKeys: String, CodingKey {
        case earliestTime = "EarliestTime"
        case latestTime = "LatestTime"
    }

    public func validate() throws {
    }
}

public struct RevokeDBSecurityGroupIngressMessage: Codable, Equatable {
    public var cIDRIP: String?
    public var dBSecurityGroupName: String
    public var eC2SecurityGroupId: String?
    public var eC2SecurityGroupName: String?
    public var eC2SecurityGroupOwnerId: String?

    public init(cIDRIP: String? = nil,
                dBSecurityGroupName: String,
                eC2SecurityGroupId: String? = nil,
                eC2SecurityGroupName: String? = nil,
                eC2SecurityGroupOwnerId: String? = nil) {
        self.cIDRIP = cIDRIP
        self.dBSecurityGroupName = dBSecurityGroupName
        self.eC2SecurityGroupId = eC2SecurityGroupId
        self.eC2SecurityGroupName = eC2SecurityGroupName
        self.eC2SecurityGroupOwnerId = eC2SecurityGroupOwnerId
    }

    enum CodingKeys: String, CodingKey {
        case cIDRIP = "CIDRIP"
        case dBSecurityGroupName = "DBSecurityGroupName"
        case eC2SecurityGroupId = "EC2SecurityGroupId"
        case eC2SecurityGroupName = "EC2SecurityGroupName"
        case eC2SecurityGroupOwnerId = "EC2SecurityGroupOwnerId"
    }

    public func validate() throws {
    }
}

public struct RevokeDBSecurityGroupIngressResult: Codable, Equatable {
    public var dBSecurityGroup: DBSecurityGroup?

    public init(dBSecurityGroup: DBSecurityGroup? = nil) {
        self.dBSecurityGroup = dBSecurityGroup
    }

    enum CodingKeys: String, CodingKey {
        case dBSecurityGroup = "DBSecurityGroup"
    }

    public func validate() throws {
        try dBSecurityGroup?.validate()
    }
}

public struct RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress: Codable, Equatable {
    public var revokeDBSecurityGroupIngressResult: RevokeDBSecurityGroupIngressResult

    public init(revokeDBSecurityGroupIngressResult: RevokeDBSecurityGroupIngressResult) {
        self.revokeDBSecurityGroupIngressResult = revokeDBSecurityGroupIngressResult
    }

    enum CodingKeys: String, CodingKey {
        case revokeDBSecurityGroupIngressResult = "RevokeDBSecurityGroupIngressResult"
    }

    public func validate() throws {
        try revokeDBSecurityGroupIngressResult.validate()
    }
}

public struct SNSInvalidTopicFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct SNSNoAuthorizationFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct SNSTopicArnNotFoundFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ScalingConfiguration: Codable, Equatable {
    public var autoPause: BooleanOptional?
    public var maxCapacity: IntegerOptional?
    public var minCapacity: IntegerOptional?
    public var secondsUntilAutoPause: IntegerOptional?

    public init(autoPause: BooleanOptional? = nil,
                maxCapacity: IntegerOptional? = nil,
                minCapacity: IntegerOptional? = nil,
                secondsUntilAutoPause: IntegerOptional? = nil) {
        self.autoPause = autoPause
        self.maxCapacity = maxCapacity
        self.minCapacity = minCapacity
        self.secondsUntilAutoPause = secondsUntilAutoPause
    }

    enum CodingKeys: String, CodingKey {
        case autoPause = "AutoPause"
        case maxCapacity = "MaxCapacity"
        case minCapacity = "MinCapacity"
        case secondsUntilAutoPause = "SecondsUntilAutoPause"
    }

    public func validate() throws {
    }
}

public struct ScalingConfigurationInfo: Codable, Equatable {
    public var autoPause: BooleanOptional?
    public var maxCapacity: IntegerOptional?
    public var minCapacity: IntegerOptional?
    public var secondsUntilAutoPause: IntegerOptional?

    public init(autoPause: BooleanOptional? = nil,
                maxCapacity: IntegerOptional? = nil,
                minCapacity: IntegerOptional? = nil,
                secondsUntilAutoPause: IntegerOptional? = nil) {
        self.autoPause = autoPause
        self.maxCapacity = maxCapacity
        self.minCapacity = minCapacity
        self.secondsUntilAutoPause = secondsUntilAutoPause
    }

    enum CodingKeys: String, CodingKey {
        case autoPause = "AutoPause"
        case maxCapacity = "MaxCapacity"
        case minCapacity = "MinCapacity"
        case secondsUntilAutoPause = "SecondsUntilAutoPause"
    }

    public func validate() throws {
    }
}

public struct SharedSnapshotQuotaExceededFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct SnapshotQuotaExceededFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct SourceNotFoundFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct SourceRegion: Codable, Equatable {
    public var endpoint: String?
    public var regionName: String?
    public var status: String?

    public init(endpoint: String? = nil,
                regionName: String? = nil,
                status: String? = nil) {
        self.endpoint = endpoint
        self.regionName = regionName
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case endpoint = "Endpoint"
        case regionName = "RegionName"
        case status = "Status"
    }

    public func validate() throws {
    }
}

public struct SourceRegionMessage: Codable, Equatable {
    public var marker: String?
    public var sourceRegions: SourceRegionList?

    public init(marker: String? = nil,
                sourceRegions: SourceRegionList? = nil) {
        self.marker = marker
        self.sourceRegions = sourceRegions
    }

    enum CodingKeys: String, CodingKey {
        case marker = "Marker"
        case sourceRegions = "SourceRegions"
    }

    public func validate() throws {
    }
}

public struct SourceRegionMessageForDescribeSourceRegions: Codable, Equatable {
    public var describeSourceRegionsResult: SourceRegionMessage

    public init(describeSourceRegionsResult: SourceRegionMessage) {
        self.describeSourceRegionsResult = describeSourceRegionsResult
    }

    enum CodingKeys: String, CodingKey {
        case describeSourceRegionsResult = "DescribeSourceRegionsResult"
    }

    public func validate() throws {
        try describeSourceRegionsResult.validate()
    }
}

public struct StartDBClusterMessage: Codable, Equatable {
    public var dBClusterIdentifier: String

    public init(dBClusterIdentifier: String) {
        self.dBClusterIdentifier = dBClusterIdentifier
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterIdentifier = "DBClusterIdentifier"
    }

    public func validate() throws {
    }
}

public struct StartDBClusterResult: Codable, Equatable {
    public var dBCluster: DBCluster?

    public init(dBCluster: DBCluster? = nil) {
        self.dBCluster = dBCluster
    }

    enum CodingKeys: String, CodingKey {
        case dBCluster = "DBCluster"
    }

    public func validate() throws {
        try dBCluster?.validate()
    }
}

public struct StartDBClusterResultForStartDBCluster: Codable, Equatable {
    public var startDBClusterResult: StartDBClusterResult

    public init(startDBClusterResult: StartDBClusterResult) {
        self.startDBClusterResult = startDBClusterResult
    }

    enum CodingKeys: String, CodingKey {
        case startDBClusterResult = "StartDBClusterResult"
    }

    public func validate() throws {
        try startDBClusterResult.validate()
    }
}

public struct StartDBInstanceMessage: Codable, Equatable {
    public var dBInstanceIdentifier: String

    public init(dBInstanceIdentifier: String) {
        self.dBInstanceIdentifier = dBInstanceIdentifier
    }

    enum CodingKeys: String, CodingKey {
        case dBInstanceIdentifier = "DBInstanceIdentifier"
    }

    public func validate() throws {
    }
}

public struct StartDBInstanceResult: Codable, Equatable {
    public var dBInstance: DBInstance?

    public init(dBInstance: DBInstance? = nil) {
        self.dBInstance = dBInstance
    }

    enum CodingKeys: String, CodingKey {
        case dBInstance = "DBInstance"
    }

    public func validate() throws {
        try dBInstance?.validate()
    }
}

public struct StartDBInstanceResultForStartDBInstance: Codable, Equatable {
    public var startDBInstanceResult: StartDBInstanceResult

    public init(startDBInstanceResult: StartDBInstanceResult) {
        self.startDBInstanceResult = startDBInstanceResult
    }

    enum CodingKeys: String, CodingKey {
        case startDBInstanceResult = "StartDBInstanceResult"
    }

    public func validate() throws {
        try startDBInstanceResult.validate()
    }
}

public struct StopDBClusterMessage: Codable, Equatable {
    public var dBClusterIdentifier: String

    public init(dBClusterIdentifier: String) {
        self.dBClusterIdentifier = dBClusterIdentifier
    }

    enum CodingKeys: String, CodingKey {
        case dBClusterIdentifier = "DBClusterIdentifier"
    }

    public func validate() throws {
    }
}

public struct StopDBClusterResult: Codable, Equatable {
    public var dBCluster: DBCluster?

    public init(dBCluster: DBCluster? = nil) {
        self.dBCluster = dBCluster
    }

    enum CodingKeys: String, CodingKey {
        case dBCluster = "DBCluster"
    }

    public func validate() throws {
        try dBCluster?.validate()
    }
}

public struct StopDBClusterResultForStopDBCluster: Codable, Equatable {
    public var stopDBClusterResult: StopDBClusterResult

    public init(stopDBClusterResult: StopDBClusterResult) {
        self.stopDBClusterResult = stopDBClusterResult
    }

    enum CodingKeys: String, CodingKey {
        case stopDBClusterResult = "StopDBClusterResult"
    }

    public func validate() throws {
        try stopDBClusterResult.validate()
    }
}

public struct StopDBInstanceMessage: Codable, Equatable {
    public var dBInstanceIdentifier: String
    public var dBSnapshotIdentifier: String?

    public init(dBInstanceIdentifier: String,
                dBSnapshotIdentifier: String? = nil) {
        self.dBInstanceIdentifier = dBInstanceIdentifier
        self.dBSnapshotIdentifier = dBSnapshotIdentifier
    }

    enum CodingKeys: String, CodingKey {
        case dBInstanceIdentifier = "DBInstanceIdentifier"
        case dBSnapshotIdentifier = "DBSnapshotIdentifier"
    }

    public func validate() throws {
    }
}

public struct StopDBInstanceResult: Codable, Equatable {
    public var dBInstance: DBInstance?

    public init(dBInstance: DBInstance? = nil) {
        self.dBInstance = dBInstance
    }

    enum CodingKeys: String, CodingKey {
        case dBInstance = "DBInstance"
    }

    public func validate() throws {
        try dBInstance?.validate()
    }
}

public struct StopDBInstanceResultForStopDBInstance: Codable, Equatable {
    public var stopDBInstanceResult: StopDBInstanceResult

    public init(stopDBInstanceResult: StopDBInstanceResult) {
        self.stopDBInstanceResult = stopDBInstanceResult
    }

    enum CodingKeys: String, CodingKey {
        case stopDBInstanceResult = "StopDBInstanceResult"
    }

    public func validate() throws {
        try stopDBInstanceResult.validate()
    }
}

public struct StorageQuotaExceededFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct StorageTypeNotSupportedFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct Subnet: Codable, Equatable {
    public var subnetAvailabilityZone: AvailabilityZone?
    public var subnetIdentifier: String?
    public var subnetStatus: String?

    public init(subnetAvailabilityZone: AvailabilityZone? = nil,
                subnetIdentifier: String? = nil,
                subnetStatus: String? = nil) {
        self.subnetAvailabilityZone = subnetAvailabilityZone
        self.subnetIdentifier = subnetIdentifier
        self.subnetStatus = subnetStatus
    }

    enum CodingKeys: String, CodingKey {
        case subnetAvailabilityZone = "SubnetAvailabilityZone"
        case subnetIdentifier = "SubnetIdentifier"
        case subnetStatus = "SubnetStatus"
    }

    public func validate() throws {
        try subnetAvailabilityZone?.validate()
    }
}

public struct SubnetAlreadyInUse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct SubscriptionAlreadyExistFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct SubscriptionCategoryNotFoundFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct SubscriptionNotFoundFault: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct Tag: Codable, Equatable {
    public var key: String?
    public var value: String?

    public init(key: String? = nil,
                value: String? = nil) {
        self.key = key
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case key = "Key"
        case value = "Value"
    }

    public func validate() throws {
    }
}

public struct TagListMessage: Codable, Equatable {
    public var tagList: TagList?

    public init(tagList: TagList? = nil) {
        self.tagList = tagList
    }

    enum CodingKeys: String, CodingKey {
        case tagList = "TagList"
    }

    public func validate() throws {
    }
}

public struct TagListMessageForListTagsForResource: Codable, Equatable {
    public var listTagsForResourceResult: TagListMessage

    public init(listTagsForResourceResult: TagListMessage) {
        self.listTagsForResourceResult = listTagsForResourceResult
    }

    enum CodingKeys: String, CodingKey {
        case listTagsForResourceResult = "ListTagsForResourceResult"
    }

    public func validate() throws {
        try listTagsForResourceResult.validate()
    }
}

public struct Timezone: Codable, Equatable {
    public var timezoneName: String?

    public init(timezoneName: String? = nil) {
        self.timezoneName = timezoneName
    }

    enum CodingKeys: String, CodingKey {
        case timezoneName = "TimezoneName"
    }

    public func validate() throws {
    }
}

public struct UpgradeTarget: Codable, Equatable {
    public var autoUpgrade: Boolean?
    public var description: String?
    public var engine: String?
    public var engineVersion: String?
    public var isMajorVersionUpgrade: Boolean?

    public init(autoUpgrade: Boolean? = nil,
                description: String? = nil,
                engine: String? = nil,
                engineVersion: String? = nil,
                isMajorVersionUpgrade: Boolean? = nil) {
        self.autoUpgrade = autoUpgrade
        self.description = description
        self.engine = engine
        self.engineVersion = engineVersion
        self.isMajorVersionUpgrade = isMajorVersionUpgrade
    }

    enum CodingKeys: String, CodingKey {
        case autoUpgrade = "AutoUpgrade"
        case description = "Description"
        case engine = "Engine"
        case engineVersion = "EngineVersion"
        case isMajorVersionUpgrade = "IsMajorVersionUpgrade"
    }

    public func validate() throws {
    }
}

public struct ValidDBInstanceModificationsMessage: Codable, Equatable {
    public var storage: ValidStorageOptionsList?
    public var validProcessorFeatures: AvailableProcessorFeatureList?

    public init(storage: ValidStorageOptionsList? = nil,
                validProcessorFeatures: AvailableProcessorFeatureList? = nil) {
        self.storage = storage
        self.validProcessorFeatures = validProcessorFeatures
    }

    enum CodingKeys: String, CodingKey {
        case storage = "Storage"
        case validProcessorFeatures = "ValidProcessorFeatures"
    }

    public func validate() throws {
    }
}

public struct ValidStorageOptions: Codable, Equatable {
    public var iopsToStorageRatio: DoubleRangeList?
    public var provisionedIops: RangeList?
    public var storageSize: RangeList?
    public var storageType: String?

    public init(iopsToStorageRatio: DoubleRangeList? = nil,
                provisionedIops: RangeList? = nil,
                storageSize: RangeList? = nil,
                storageType: String? = nil) {
        self.iopsToStorageRatio = iopsToStorageRatio
        self.provisionedIops = provisionedIops
        self.storageSize = storageSize
        self.storageType = storageType
    }

    enum CodingKeys: String, CodingKey {
        case iopsToStorageRatio = "IopsToStorageRatio"
        case provisionedIops = "ProvisionedIops"
        case storageSize = "StorageSize"
        case storageType = "StorageType"
    }

    public func validate() throws {
    }
}

public struct VpcSecurityGroupMembership: Codable, Equatable {
    public var status: String?
    public var vpcSecurityGroupId: String?

    public init(status: String? = nil,
                vpcSecurityGroupId: String? = nil) {
        self.status = status
        self.vpcSecurityGroupId = vpcSecurityGroupId
    }

    enum CodingKeys: String, CodingKey {
        case status = "Status"
        case vpcSecurityGroupId = "VpcSecurityGroupId"
    }

    public func validate() throws {
    }
}
