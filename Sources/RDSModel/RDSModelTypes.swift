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
// RDSModelTypes.swift
// RDSModel
//

import Foundation

/**
 Type definition for the AccountQuotaList field.
 */
public typealias AccountQuotaList = [AccountQuota]

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
 Type definition for the Boolean field.
 */
public typealias Boolean = Bool

/**
 Type definition for the BooleanOptional field.
 */
public typealias BooleanOptional = Bool

/**
 Type definition for the CertificateList field.
 */
public typealias CertificateList = [Certificate]

/**
 Type definition for the DBClusterBacktrackList field.
 */
public typealias DBClusterBacktrackList = [DBClusterBacktrack]

/**
 Type definition for the DBClusterEndpointList field.
 */
public typealias DBClusterEndpointList = [DBClusterEndpoint]

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
 Type definition for the GlobalClusterList field.
 */
public typealias GlobalClusterList = [GlobalCluster]

/**
 Type definition for the GlobalClusterMemberList field.
 */
public typealias GlobalClusterMemberList = [GlobalClusterMember]

/**
 Type definition for the IPRangeList field.
 */
public typealias IPRangeList = [IPRange]

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
    case dbCluster = "db-cluster"
    case dbClusterSnapshot = "db-cluster-snapshot"
    case dbInstance = "db-instance"
    case dbParameterGroup = "db-parameter-group"
    case dbSecurityGroup = "db-security-group"
    case dbSnapshot = "db-snapshot"

    public var description: String {
        return rawValue
    }
    
    public static let __default: SourceType = .dbCluster
}

/**
 Type definition for the StringList field.
 */
public typealias StringList = [String]

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
