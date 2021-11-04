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
// RDSModelTypes.swift
// RDSModel
//

import Foundation

/**
 Type definition for the AccountQuotaList field.
 */
public typealias AccountQuotaList = [AccountQuota]

/**
 Enumeration restricting the values of the ActivityStreamMode field.
 */
public enum ActivityStreamMode: String, Codable, CustomStringConvertible {
    case async
    case sync

    public var description: String {
        return rawValue
    }
    
    public static let __default: ActivityStreamMode = .async
}

/**
 Type definition for the ActivityStreamModeList field.
 */
public typealias ActivityStreamModeList = [String]

/**
 Enumeration restricting the values of the ActivityStreamStatus field.
 */
public enum ActivityStreamStatus: String, Codable, CustomStringConvertible {
    case started
    case starting
    case stopped
    case stopping

    public var description: String {
        return rawValue
    }
    
    public static let __default: ActivityStreamStatus = .started
}

/**
 Enumeration restricting the values of the ApplyMethod field.
 */
public enum ApplyMethod: String, Codable, CustomStringConvertible {
    case immediate
    case pendingReboot = "pending-reboot"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ApplyMethod = .immediate
}

/**
 Type definition for the AttributeValueList field.
 */
public typealias AttributeValueList = [String]

/**
 Enumeration restricting the values of the AuthScheme field.
 */
public enum AuthScheme: String, Codable, CustomStringConvertible {
    case secrets = "SECRETS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: AuthScheme = .secrets
}

/**
 Enumeration restricting the values of the AutomationMode field.
 */
public enum AutomationMode: String, Codable, CustomStringConvertible {
    case allPaused = "all-paused"
    case full

    public var description: String {
        return rawValue
    }
    
    public static let __default: AutomationMode = .allPaused
}

/**
 Type definition for the AvailabilityZoneList field.
 */
public typealias AvailabilityZoneList = [AvailabilityZone]

/**
 Type definition for the AvailabilityZones field.
 */
public typealias AvailabilityZones = [String]

/**
 Type definition for the AvailableProcessorFeatureList field.
 */
public typealias AvailableProcessorFeatureList = [AvailableProcessorFeature]

/**
 Type definition for the AwsBackupRecoveryPointArn field.
 */
public typealias AwsBackupRecoveryPointArn = String

/**
 Type definition for the Boolean field.
 */
public typealias Boolean = Bool

/**
 Type definition for the BooleanOptional field.
 */
public typealias BooleanOptional = Bool

/**
 Type definition for the BucketName field.
 */
public typealias BucketName = String

/**
 Type definition for the CertificateList field.
 */
public typealias CertificateList = [Certificate]

/**
 Type definition for the CustomAvailabilityZoneList field.
 */
public typealias CustomAvailabilityZoneList = [CustomAvailabilityZone]

/**
 Type definition for the CustomDBEngineVersionManifest field.
 */
public typealias CustomDBEngineVersionManifest = String

/**
 Type definition for the CustomEngineName field.
 */
public typealias CustomEngineName = String

/**
 Type definition for the CustomEngineVersion field.
 */
public typealias CustomEngineVersion = String

/**
 Enumeration restricting the values of the CustomEngineVersionStatus field.
 */
public enum CustomEngineVersionStatus: String, Codable, CustomStringConvertible {
    case available
    case inactive
    case inactiveExceptRestore = "inactive-except-restore"

    public var description: String {
        return rawValue
    }
    
    public static let __default: CustomEngineVersionStatus = .available
}

/**
 Type definition for the DBClusterBacktrackList field.
 */
public typealias DBClusterBacktrackList = [DBClusterBacktrack]

/**
 Type definition for the DBClusterEndpointList field.
 */
public typealias DBClusterEndpointList = [DBClusterEndpoint]

/**
 Type definition for the DBClusterIdentifier field.
 */
public typealias DBClusterIdentifier = String

/**
 Type definition for the DBClusterList field.
 */
public typealias DBClusterList = [DBCluster]

/**
 Type definition for the DBClusterMemberList field.
 */
public typealias DBClusterMemberList = [DBClusterMember]

/**
 Type definition for the DBClusterOptionGroupMemberships field.
 */
public typealias DBClusterOptionGroupMemberships = [DBClusterOptionGroupStatus]

/**
 Type definition for the DBClusterParameterGroupList field.
 */
public typealias DBClusterParameterGroupList = [DBClusterParameterGroup]

/**
 Type definition for the DBClusterRoles field.
 */
public typealias DBClusterRoles = [DBClusterRole]

/**
 Type definition for the DBClusterSnapshotAttributeList field.
 */
public typealias DBClusterSnapshotAttributeList = [DBClusterSnapshotAttribute]

/**
 Type definition for the DBClusterSnapshotList field.
 */
public typealias DBClusterSnapshotList = [DBClusterSnapshot]

/**
 Type definition for the DBEngineVersionList field.
 */
public typealias DBEngineVersionList = [DBEngineVersion]

/**
 Type definition for the DBInstanceAutomatedBackupList field.
 */
public typealias DBInstanceAutomatedBackupList = [DBInstanceAutomatedBackup]

/**
 Type definition for the DBInstanceAutomatedBackupsReplicationList field.
 */
public typealias DBInstanceAutomatedBackupsReplicationList = [DBInstanceAutomatedBackupsReplication]

/**
 Type definition for the DBInstanceList field.
 */
public typealias DBInstanceList = [DBInstance]

/**
 Type definition for the DBInstanceRoles field.
 */
public typealias DBInstanceRoles = [DBInstanceRole]

/**
 Type definition for the DBInstanceStatusInfoList field.
 */
public typealias DBInstanceStatusInfoList = [DBInstanceStatusInfo]

/**
 Type definition for the DBParameterGroupList field.
 */
public typealias DBParameterGroupList = [DBParameterGroup]

/**
 Type definition for the DBParameterGroupStatusList field.
 */
public typealias DBParameterGroupStatusList = [DBParameterGroupStatus]

/**
 Type definition for the DBProxyEndpointList field.
 */
public typealias DBProxyEndpointList = [DBProxyEndpoint]

/**
 Type definition for the DBProxyEndpointName field.
 */
public typealias DBProxyEndpointName = String

/**
 Enumeration restricting the values of the DBProxyEndpointStatus field.
 */
public enum DBProxyEndpointStatus: String, Codable, CustomStringConvertible {
    case available
    case creating
    case deleting
    case incompatibleNetwork = "incompatible-network"
    case insufficientResourceLimits = "insufficient-resource-limits"
    case modifying

    public var description: String {
        return rawValue
    }
    
    public static let __default: DBProxyEndpointStatus = .available
}

/**
 Enumeration restricting the values of the DBProxyEndpointTargetRole field.
 */
public enum DBProxyEndpointTargetRole: String, Codable, CustomStringConvertible {
    case readOnly = "READ_ONLY"
    case readWrite = "READ_WRITE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: DBProxyEndpointTargetRole = .readOnly
}

/**
 Type definition for the DBProxyList field.
 */
public typealias DBProxyList = [DBProxy]

/**
 Type definition for the DBProxyName field.
 */
public typealias DBProxyName = String

/**
 Enumeration restricting the values of the DBProxyStatus field.
 */
public enum DBProxyStatus: String, Codable, CustomStringConvertible {
    case available
    case creating
    case deleting
    case incompatibleNetwork = "incompatible-network"
    case insufficientResourceLimits = "insufficient-resource-limits"
    case modifying
    case reactivating
    case suspended
    case suspending

    public var description: String {
        return rawValue
    }
    
    public static let __default: DBProxyStatus = .available
}

/**
 Type definition for the DBSecurityGroupMembershipList field.
 */
public typealias DBSecurityGroupMembershipList = [DBSecurityGroupMembership]

/**
 Type definition for the DBSecurityGroupNameList field.
 */
public typealias DBSecurityGroupNameList = [String]

/**
 Type definition for the DBSecurityGroups field.
 */
public typealias DBSecurityGroups = [DBSecurityGroup]

/**
 Type definition for the DBSnapshotAttributeList field.
 */
public typealias DBSnapshotAttributeList = [DBSnapshotAttribute]

/**
 Type definition for the DBSnapshotList field.
 */
public typealias DBSnapshotList = [DBSnapshot]

/**
 Type definition for the DBSubnetGroups field.
 */
public typealias DBSubnetGroups = [DBSubnetGroup]

/**
 Type definition for the DescribeDBLogFilesList field.
 */
public typealias DescribeDBLogFilesList = [DescribeDBLogFilesDetails]

/**
 Type definition for the Description field.
 */
public typealias Description = String

/**
 Type definition for the DomainMembershipList field.
 */
public typealias DomainMembershipList = [DomainMembership]

/**
 Type definition for the DoubleOptional field.
 */
public typealias DoubleOptional = Double

/**
 Type definition for the DoubleRangeList field.
 */
public typealias DoubleRangeList = [DoubleRange]

/**
 Type definition for the EC2SecurityGroupList field.
 */
public typealias EC2SecurityGroupList = [EC2SecurityGroup]

/**
 Enumeration restricting the values of the EngineFamily field.
 */
public enum EngineFamily: String, Codable, CustomStringConvertible {
    case mysql = "MYSQL"
    case postgresql = "POSTGRESQL"

    public var description: String {
        return rawValue
    }
    
    public static let __default: EngineFamily = .mysql
}

/**
 Type definition for the EngineModeList field.
 */
public typealias EngineModeList = [String]

/**
 Type definition for the EventCategoriesList field.
 */
public typealias EventCategoriesList = [String]

/**
 Type definition for the EventCategoriesMapList field.
 */
public typealias EventCategoriesMapList = [EventCategoriesMap]

/**
 Type definition for the EventList field.
 */
public typealias EventList = [Event]

/**
 Type definition for the EventSubscriptionsList field.
 */
public typealias EventSubscriptionsList = [EventSubscription]

/**
 Type definition for the ExportTasksList field.
 */
public typealias ExportTasksList = [ExportTask]

/**
 Enumeration restricting the values of the FailoverStatus field.
 */
public enum FailoverStatus: String, Codable, CustomStringConvertible {
    case cancelling
    case failingOver = "failing-over"
    case pending

    public var description: String {
        return rawValue
    }
    
    public static let __default: FailoverStatus = .cancelling
}

/**
 Type definition for the FeatureNameList field.
 */
public typealias FeatureNameList = [String]

/**
 Type definition for the FilterList field.
 */
public typealias FilterList = [Filter]

/**
 Type definition for the FilterValueList field.
 */
public typealias FilterValueList = [String]

/**
 Type definition for the GlobalClusterIdentifier field.
 */
public typealias GlobalClusterIdentifier = String

/**
 Type definition for the GlobalClusterList field.
 */
public typealias GlobalClusterList = [GlobalCluster]

/**
 Type definition for the GlobalClusterMemberList field.
 */
public typealias GlobalClusterMemberList = [GlobalClusterMember]

/**
 Enumeration restricting the values of the IAMAuthMode field.
 */
public enum IAMAuthMode: String, Codable, CustomStringConvertible {
    case disabled = "DISABLED"
    case required = "REQUIRED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: IAMAuthMode = .disabled
}

/**
 Type definition for the IPRangeList field.
 */
public typealias IPRangeList = [IPRange]

/**
 Type definition for the InstallationMediaList field.
 */
public typealias InstallationMediaList = [InstallationMedia]

/**
 Type definition for the Integer field.
 */
public typealias Integer = Int

/**
 Type definition for the IntegerOptional field.
 */
public typealias IntegerOptional = Int

/**
 Type definition for the KeyList field.
 */
public typealias KeyList = [String]

/**
 Type definition for the KmsKeyIdOrArn field.
 */
public typealias KmsKeyIdOrArn = String

/**
 Type definition for the LogTypeList field.
 */
public typealias LogTypeList = [String]

/**
 Type definition for the Long field.
 */
public typealias Long = Int

/**
 Type definition for the LongOptional field.
 */
public typealias LongOptional = Int

/**
 Type definition for the MaxRecords field.
 */
public typealias MaxRecords = Int

/**
 Type definition for the MinimumEngineVersionPerAllowedValueList field.
 */
public typealias MinimumEngineVersionPerAllowedValueList = [MinimumEngineVersionPerAllowedValue]

/**
 Type definition for the OptionConfigurationList field.
 */
public typealias OptionConfigurationList = [OptionConfiguration]

/**
 Type definition for the OptionGroupMembershipList field.
 */
public typealias OptionGroupMembershipList = [OptionGroupMembership]

/**
 Type definition for the OptionGroupOptionSettingsList field.
 */
public typealias OptionGroupOptionSettingsList = [OptionGroupOptionSetting]

/**
 Type definition for the OptionGroupOptionVersionsList field.
 */
public typealias OptionGroupOptionVersionsList = [OptionVersion]

/**
 Type definition for the OptionGroupOptionsList field.
 */
public typealias OptionGroupOptionsList = [OptionGroupOption]

/**
 Type definition for the OptionGroupsList field.
 */
public typealias OptionGroupsList = [OptionGroup]

/**
 Type definition for the OptionNamesList field.
 */
public typealias OptionNamesList = [String]

/**
 Type definition for the OptionSettingConfigurationList field.
 */
public typealias OptionSettingConfigurationList = [OptionSetting]

/**
 Type definition for the OptionSettingsList field.
 */
public typealias OptionSettingsList = [OptionSetting]

/**
 Type definition for the OptionsConflictsWith field.
 */
public typealias OptionsConflictsWith = [String]

/**
 Type definition for the OptionsDependedOn field.
 */
public typealias OptionsDependedOn = [String]

/**
 Type definition for the OptionsList field.
 */
public typealias OptionsList = [Option]

/**
 Type definition for the OrderableDBInstanceOptionsList field.
 */
public typealias OrderableDBInstanceOptionsList = [OrderableDBInstanceOption]

/**
 Type definition for the ParametersList field.
 */
public typealias ParametersList = [Parameter]

/**
 Type definition for the PendingMaintenanceActionDetails field.
 */
public typealias PendingMaintenanceActionDetails = [PendingMaintenanceAction]

/**
 Type definition for the PendingMaintenanceActions field.
 */
public typealias PendingMaintenanceActions = [ResourcePendingMaintenanceActions]

/**
 Type definition for the ProcessorFeatureList field.
 */
public typealias ProcessorFeatureList = [ProcessorFeature]

/**
 Type definition for the RangeList field.
 */
public typealias RangeList = [Range]

/**
 Type definition for the ReadReplicaDBClusterIdentifierList field.
 */
public typealias ReadReplicaDBClusterIdentifierList = [String]

/**
 Type definition for the ReadReplicaDBInstanceIdentifierList field.
 */
public typealias ReadReplicaDBInstanceIdentifierList = [String]

/**
 Type definition for the ReadReplicaIdentifierList field.
 */
public typealias ReadReplicaIdentifierList = [String]

/**
 Type definition for the ReadersArnList field.
 */
public typealias ReadersArnList = [String]

/**
 Type definition for the RecurringChargeList field.
 */
public typealias RecurringChargeList = [RecurringCharge]

/**
 Enumeration restricting the values of the ReplicaMode field.
 */
public enum ReplicaMode: String, Codable, CustomStringConvertible {
    case mounted
    case openReadOnly = "open-read-only"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ReplicaMode = .mounted
}

/**
 Type definition for the ReservedDBInstanceList field.
 */
public typealias ReservedDBInstanceList = [ReservedDBInstance]

/**
 Type definition for the ReservedDBInstancesOfferingList field.
 */
public typealias ReservedDBInstancesOfferingList = [ReservedDBInstancesOffering]

/**
 Type definition for the SourceIdsList field.
 */
public typealias SourceIdsList = [String]

/**
 Type definition for the SourceRegionList field.
 */
public typealias SourceRegionList = [SourceRegion]

/**
 Enumeration restricting the values of the SourceType field.
 */
public enum SourceType: String, Codable, CustomStringConvertible {
    case customEngineVersion = "custom-engine-version"
    case dbCluster = "db-cluster"
    case dbClusterSnapshot = "db-cluster-snapshot"
    case dbInstance = "db-instance"
    case dbParameterGroup = "db-parameter-group"
    case dbSecurityGroup = "db-security-group"
    case dbSnapshot = "db-snapshot"

    public var description: String {
        return rawValue
    }
    
    public static let __default: SourceType = .customEngineVersion
}

/**
 Type definition for the String255 field.
 */
public typealias String255 = String

/**
 Type definition for the StringList field.
 */
public typealias StringList = [String]

/**
 Type definition for the StringSensitive field.
 */
public typealias StringSensitive = String

/**
 Type definition for the SubnetIdentifierList field.
 */
public typealias SubnetIdentifierList = [String]

/**
 Type definition for the SubnetList field.
 */
public typealias SubnetList = [Subnet]

/**
 Type definition for the SupportedCharacterSetsList field.
 */
public typealias SupportedCharacterSetsList = [CharacterSet]

/**
 Type definition for the SupportedTimezonesList field.
 */
public typealias SupportedTimezonesList = [Timezone]

/**
 Type definition for the TStamp field.
 */
public typealias TStamp = String

/**
 Type definition for the TagList field.
 */
public typealias TagList = [Tag]

/**
 Type definition for the TargetGroupList field.
 */
public typealias TargetGroupList = [DBProxyTargetGroup]

/**
 Enumeration restricting the values of the TargetHealthReason field.
 */
public enum TargetHealthReason: String, Codable, CustomStringConvertible {
    case authFailure = "AUTH_FAILURE"
    case connectionFailed = "CONNECTION_FAILED"
    case invalidReplicationState = "INVALID_REPLICATION_STATE"
    case pendingProxyCapacity = "PENDING_PROXY_CAPACITY"
    case unreachable = "UNREACHABLE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: TargetHealthReason = .authFailure
}

/**
 Type definition for the TargetList field.
 */
public typealias TargetList = [DBProxyTarget]

/**
 Enumeration restricting the values of the TargetRole field.
 */
public enum TargetRole: String, Codable, CustomStringConvertible {
    case readOnly = "READ_ONLY"
    case readWrite = "READ_WRITE"
    case unknown = "UNKNOWN"

    public var description: String {
        return rawValue
    }
    
    public static let __default: TargetRole = .readOnly
}

/**
 Enumeration restricting the values of the TargetState field.
 */
public enum TargetState: String, Codable, CustomStringConvertible {
    case available = "AVAILABLE"
    case registering = "REGISTERING"
    case unavailable = "UNAVAILABLE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: TargetState = .available
}

/**
 Enumeration restricting the values of the TargetType field.
 */
public enum TargetType: String, Codable, CustomStringConvertible {
    case rdsInstance = "RDS_INSTANCE"
    case rdsServerlessEndpoint = "RDS_SERVERLESS_ENDPOINT"
    case trackedCluster = "TRACKED_CLUSTER"

    public var description: String {
        return rawValue
    }
    
    public static let __default: TargetType = .rdsInstance
}

/**
 Type definition for the UserAuthConfigInfoList field.
 */
public typealias UserAuthConfigInfoList = [UserAuthConfigInfo]

/**
 Type definition for the UserAuthConfigList field.
 */
public typealias UserAuthConfigList = [UserAuthConfig]

/**
 Type definition for the ValidStorageOptionsList field.
 */
public typealias ValidStorageOptionsList = [ValidStorageOptions]

/**
 Type definition for the ValidUpgradeTargetList field.
 */
public typealias ValidUpgradeTargetList = [UpgradeTarget]

/**
 Type definition for the VpcSecurityGroupIdList field.
 */
public typealias VpcSecurityGroupIdList = [String]

/**
 Type definition for the VpcSecurityGroupMembershipList field.
 */
public typealias VpcSecurityGroupMembershipList = [VpcSecurityGroupMembership]

/**
 Enumeration restricting the values of the WriteForwardingStatus field.
 */
public enum WriteForwardingStatus: String, Codable, CustomStringConvertible {
    case disabled
    case disabling
    case enabled
    case enabling
    case unknown

    public var description: String {
        return rawValue
    }
    
    public static let __default: WriteForwardingStatus = .disabled
}

/**
 Validation for the AwsBackupRecoveryPointArn field.
*/
extension RDSModel.AwsBackupRecoveryPointArn {
    public func validateAsAwsBackupRecoveryPointArn() throws {
        if self.count < 43 {
            throw RDSError.validationError(reason: "The provided value to AwsBackupRecoveryPointArn violated the minimum length constraint.")
        }

        if self.count > 350 {
            throw RDSError.validationError(reason: "The provided value to AwsBackupRecoveryPointArn violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "^arn:aws[a-z-]*:backup:[-a-z0-9]+:[0-9]{12}:[-a-z]+:([a-z0-9\\-]+:)?[a-z][a-z0-9\\-]{0,255}$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw RDSError.validationError(
                    reason: "The provided value to AwsBackupRecoveryPointArn violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the BucketName field.
*/
extension RDSModel.BucketName {
    public func validateAsBucketName() throws {
        if self.count < 3 {
            throw RDSError.validationError(reason: "The provided value to BucketName violated the minimum length constraint.")
        }

        if self.count > 63 {
            throw RDSError.validationError(reason: "The provided value to BucketName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: ".*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw RDSError.validationError(
                    reason: "The provided value to BucketName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the CustomDBEngineVersionManifest field.
*/
extension RDSModel.CustomDBEngineVersionManifest {
    public func validateAsCustomDBEngineVersionManifest() throws {
        if self.count < 1 {
            throw RDSError.validationError(reason: "The provided value to CustomDBEngineVersionManifest violated the minimum length constraint.")
        }

        if self.count > 51000 {
            throw RDSError.validationError(reason: "The provided value to CustomDBEngineVersionManifest violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[\\s\\S]*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw RDSError.validationError(
                    reason: "The provided value to CustomDBEngineVersionManifest violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the CustomEngineName field.
*/
extension RDSModel.CustomEngineName {
    public func validateAsCustomEngineName() throws {
        if self.count < 1 {
            throw RDSError.validationError(reason: "The provided value to CustomEngineName violated the minimum length constraint.")
        }

        if self.count > 35 {
            throw RDSError.validationError(reason: "The provided value to CustomEngineName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "^[A-Za-z0-9-]{1,35}$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw RDSError.validationError(
                    reason: "The provided value to CustomEngineName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the CustomEngineVersion field.
*/
extension RDSModel.CustomEngineVersion {
    public func validateAsCustomEngineVersion() throws {
        if self.count < 1 {
            throw RDSError.validationError(reason: "The provided value to CustomEngineVersion violated the minimum length constraint.")
        }

        if self.count > 60 {
            throw RDSError.validationError(reason: "The provided value to CustomEngineVersion violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "^(11\\.\\d{1}|12\\.\\d{1}|18|19)(\\.[a-zA-Z0-9_.-]{1,50})$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw RDSError.validationError(
                    reason: "The provided value to CustomEngineVersion violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the DBClusterIdentifier field.
*/
extension RDSModel.DBClusterIdentifier {
    public func validateAsDBClusterIdentifier() throws {
        if self.count < 1 {
            throw RDSError.validationError(reason: "The provided value to DBClusterIdentifier violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw RDSError.validationError(reason: "The provided value to DBClusterIdentifier violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[A-Za-z][0-9A-Za-z-:._]*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw RDSError.validationError(
                    reason: "The provided value to DBClusterIdentifier violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the DBProxyEndpointName field.
*/
extension RDSModel.DBProxyEndpointName {
    public func validateAsDBProxyEndpointName() throws {
        if self.count < 1 {
            throw RDSError.validationError(reason: "The provided value to DBProxyEndpointName violated the minimum length constraint.")
        }

        if self.count > 63 {
            throw RDSError.validationError(reason: "The provided value to DBProxyEndpointName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z][a-zA-Z0-9]*(-[a-zA-Z0-9]+)*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw RDSError.validationError(
                    reason: "The provided value to DBProxyEndpointName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the DBProxyName field.
*/
extension RDSModel.DBProxyName {
    public func validateAsDBProxyName() throws {
        if self.count < 1 {
            throw RDSError.validationError(reason: "The provided value to DBProxyName violated the minimum length constraint.")
        }

        if self.count > 63 {
            throw RDSError.validationError(reason: "The provided value to DBProxyName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z][a-zA-Z0-9]*(-[a-zA-Z0-9]+)*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw RDSError.validationError(
                    reason: "The provided value to DBProxyName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the Description field.
*/
extension RDSModel.Description {
    public func validateAsDescription() throws {
        if self.count < 1 {
            throw RDSError.validationError(reason: "The provided value to Description violated the minimum length constraint.")
        }

        if self.count > 1000 {
            throw RDSError.validationError(reason: "The provided value to Description violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: ".*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw RDSError.validationError(
                    reason: "The provided value to Description violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the GlobalClusterIdentifier field.
*/
extension RDSModel.GlobalClusterIdentifier {
    public func validateAsGlobalClusterIdentifier() throws {
        if self.count < 1 {
            throw RDSError.validationError(reason: "The provided value to GlobalClusterIdentifier violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw RDSError.validationError(reason: "The provided value to GlobalClusterIdentifier violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[A-Za-z][0-9A-Za-z-:._]*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw RDSError.validationError(
                    reason: "The provided value to GlobalClusterIdentifier violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the KmsKeyIdOrArn field.
*/
extension RDSModel.KmsKeyIdOrArn {
    public func validateAsKmsKeyIdOrArn() throws {
        if self.count < 1 {
            throw RDSError.validationError(reason: "The provided value to KmsKeyIdOrArn violated the minimum length constraint.")
        }

        if self.count > 2048 {
            throw RDSError.validationError(reason: "The provided value to KmsKeyIdOrArn violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9_:\\-\\/]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw RDSError.validationError(
                    reason: "The provided value to KmsKeyIdOrArn violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the MaxRecords field.
*/
extension RDSModel.MaxRecords {
    public func validateAsMaxRecords() throws {
        if self < 20 {
            throw RDSError.validationError(reason: "The provided value to MaxRecords violated the minimum range constraint.")
        }

        if self > 100 {
            throw RDSError.validationError(reason: "The provided value to MaxRecords violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the String255 field.
*/
extension RDSModel.String255 {
    public func validateAsString255() throws {
        if self.count < 1 {
            throw RDSError.validationError(reason: "The provided value to String255 violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw RDSError.validationError(reason: "The provided value to String255 violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: ".*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw RDSError.validationError(
                    reason: "The provided value to String255 violated the regular expression constraint.")
        }
    }
}
