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
// RDSModelDefaultInstances.swift
// RDSModel
//

import Foundation

public extension AccountAttributesMessage {
    /**
     Default instance of the AccountAttributesMessage structure.
     */
    static let __default: RDSModel.AccountAttributesMessage = {
        let defaultInstance = RDSModel.AccountAttributesMessage(
            accountQuotas: nil)

        return defaultInstance
    }()
}

public extension AccountAttributesMessageForDescribeAccountAttributes {
    /**
     Default instance of the AccountAttributesMessageForDescribeAccountAttributes structure.
     */
    static let __default: RDSModel.AccountAttributesMessageForDescribeAccountAttributes = {
        let defaultInstance = RDSModel.AccountAttributesMessageForDescribeAccountAttributes(
            describeAccountAttributesResult: AccountAttributesMessage.__default)

        return defaultInstance
    }()
}

public extension AccountQuota {
    /**
     Default instance of the AccountQuota structure.
     */
    static let __default: RDSModel.AccountQuota = {
        let defaultInstance = RDSModel.AccountQuota(
            accountQuotaName: nil,
            max: nil,
            used: nil)

        return defaultInstance
    }()
}

public extension AddRoleToDBClusterMessage {
    /**
     Default instance of the AddRoleToDBClusterMessage structure.
     */
    static let __default: RDSModel.AddRoleToDBClusterMessage = {
        let defaultInstance = RDSModel.AddRoleToDBClusterMessage(
            dBClusterIdentifier: "value",
            featureName: nil,
            roleArn: "value")

        return defaultInstance
    }()
}

public extension AddRoleToDBInstanceMessage {
    /**
     Default instance of the AddRoleToDBInstanceMessage structure.
     */
    static let __default: RDSModel.AddRoleToDBInstanceMessage = {
        let defaultInstance = RDSModel.AddRoleToDBInstanceMessage(
            dBInstanceIdentifier: "value",
            featureName: "value",
            roleArn: "value")

        return defaultInstance
    }()
}

public extension AddSourceIdentifierToSubscriptionMessage {
    /**
     Default instance of the AddSourceIdentifierToSubscriptionMessage structure.
     */
    static let __default: RDSModel.AddSourceIdentifierToSubscriptionMessage = {
        let defaultInstance = RDSModel.AddSourceIdentifierToSubscriptionMessage(
            sourceIdentifier: "value",
            subscriptionName: "value")

        return defaultInstance
    }()
}

public extension AddSourceIdentifierToSubscriptionResult {
    /**
     Default instance of the AddSourceIdentifierToSubscriptionResult structure.
     */
    static let __default: RDSModel.AddSourceIdentifierToSubscriptionResult = {
        let defaultInstance = RDSModel.AddSourceIdentifierToSubscriptionResult(
            eventSubscription: nil)

        return defaultInstance
    }()
}

public extension AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription {
    /**
     Default instance of the AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription structure.
     */
    static let __default: RDSModel.AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription = {
        let defaultInstance = RDSModel.AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription(
            addSourceIdentifierToSubscriptionResult: AddSourceIdentifierToSubscriptionResult.__default)

        return defaultInstance
    }()
}

public extension AddTagsToResourceMessage {
    /**
     Default instance of the AddTagsToResourceMessage structure.
     */
    static let __default: RDSModel.AddTagsToResourceMessage = {
        let defaultInstance = RDSModel.AddTagsToResourceMessage(
            resourceName: "value",
            tags: [])

        return defaultInstance
    }()
}

public extension ApplyPendingMaintenanceActionMessage {
    /**
     Default instance of the ApplyPendingMaintenanceActionMessage structure.
     */
    static let __default: RDSModel.ApplyPendingMaintenanceActionMessage = {
        let defaultInstance = RDSModel.ApplyPendingMaintenanceActionMessage(
            applyAction: "value",
            optInType: "value",
            resourceIdentifier: "value")

        return defaultInstance
    }()
}

public extension ApplyPendingMaintenanceActionResult {
    /**
     Default instance of the ApplyPendingMaintenanceActionResult structure.
     */
    static let __default: RDSModel.ApplyPendingMaintenanceActionResult = {
        let defaultInstance = RDSModel.ApplyPendingMaintenanceActionResult(
            resourcePendingMaintenanceActions: nil)

        return defaultInstance
    }()
}

public extension ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction {
    /**
     Default instance of the ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction structure.
     */
    static let __default: RDSModel.ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction = {
        let defaultInstance = RDSModel.ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction(
            applyPendingMaintenanceActionResult: ApplyPendingMaintenanceActionResult.__default)

        return defaultInstance
    }()
}

public extension AuthorizationAlreadyExistsFault {
    /**
     Default instance of the AuthorizationAlreadyExistsFault structure.
     */
    static let __default: RDSModel.AuthorizationAlreadyExistsFault = {
        let defaultInstance = RDSModel.AuthorizationAlreadyExistsFault()

        return defaultInstance
    }()
}

public extension AuthorizationNotFoundFault {
    /**
     Default instance of the AuthorizationNotFoundFault structure.
     */
    static let __default: RDSModel.AuthorizationNotFoundFault = {
        let defaultInstance = RDSModel.AuthorizationNotFoundFault()

        return defaultInstance
    }()
}

public extension AuthorizationQuotaExceededFault {
    /**
     Default instance of the AuthorizationQuotaExceededFault structure.
     */
    static let __default: RDSModel.AuthorizationQuotaExceededFault = {
        let defaultInstance = RDSModel.AuthorizationQuotaExceededFault()

        return defaultInstance
    }()
}

public extension AuthorizeDBSecurityGroupIngressMessage {
    /**
     Default instance of the AuthorizeDBSecurityGroupIngressMessage structure.
     */
    static let __default: RDSModel.AuthorizeDBSecurityGroupIngressMessage = {
        let defaultInstance = RDSModel.AuthorizeDBSecurityGroupIngressMessage(
            cIDRIP: nil,
            dBSecurityGroupName: "value",
            eC2SecurityGroupId: nil,
            eC2SecurityGroupName: nil,
            eC2SecurityGroupOwnerId: nil)

        return defaultInstance
    }()
}

public extension AuthorizeDBSecurityGroupIngressResult {
    /**
     Default instance of the AuthorizeDBSecurityGroupIngressResult structure.
     */
    static let __default: RDSModel.AuthorizeDBSecurityGroupIngressResult = {
        let defaultInstance = RDSModel.AuthorizeDBSecurityGroupIngressResult(
            dBSecurityGroup: nil)

        return defaultInstance
    }()
}

public extension AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress {
    /**
     Default instance of the AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress structure.
     */
    static let __default: RDSModel.AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress = {
        let defaultInstance = RDSModel.AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress(
            authorizeDBSecurityGroupIngressResult: AuthorizeDBSecurityGroupIngressResult.__default)

        return defaultInstance
    }()
}

public extension AvailabilityZone {
    /**
     Default instance of the AvailabilityZone structure.
     */
    static let __default: RDSModel.AvailabilityZone = {
        let defaultInstance = RDSModel.AvailabilityZone(
            name: nil)

        return defaultInstance
    }()
}

public extension AvailableProcessorFeature {
    /**
     Default instance of the AvailableProcessorFeature structure.
     */
    static let __default: RDSModel.AvailableProcessorFeature = {
        let defaultInstance = RDSModel.AvailableProcessorFeature(
            allowedValues: nil,
            defaultValue: nil,
            name: nil)

        return defaultInstance
    }()
}

public extension BacktrackDBClusterMessage {
    /**
     Default instance of the BacktrackDBClusterMessage structure.
     */
    static let __default: RDSModel.BacktrackDBClusterMessage = {
        let defaultInstance = RDSModel.BacktrackDBClusterMessage(
            backtrackTo: "2013-02-18T17:00:00Z",
            dBClusterIdentifier: "value",
            force: nil,
            useEarliestTimeOnPointInTimeUnavailable: nil)

        return defaultInstance
    }()
}

public extension BackupPolicyNotFoundFault {
    /**
     Default instance of the BackupPolicyNotFoundFault structure.
     */
    static let __default: RDSModel.BackupPolicyNotFoundFault = {
        let defaultInstance = RDSModel.BackupPolicyNotFoundFault()

        return defaultInstance
    }()
}

public extension CancelExportTaskMessage {
    /**
     Default instance of the CancelExportTaskMessage structure.
     */
    static let __default: RDSModel.CancelExportTaskMessage = {
        let defaultInstance = RDSModel.CancelExportTaskMessage(
            exportTaskIdentifier: "value")

        return defaultInstance
    }()
}

public extension Certificate {
    /**
     Default instance of the Certificate structure.
     */
    static let __default: RDSModel.Certificate = {
        let defaultInstance = RDSModel.Certificate(
            certificateArn: nil,
            certificateIdentifier: nil,
            certificateType: nil,
            customerOverride: nil,
            customerOverrideValidTill: nil,
            thumbprint: nil,
            validFrom: nil,
            validTill: nil)

        return defaultInstance
    }()
}

public extension CertificateMessage {
    /**
     Default instance of the CertificateMessage structure.
     */
    static let __default: RDSModel.CertificateMessage = {
        let defaultInstance = RDSModel.CertificateMessage(
            certificates: nil,
            marker: nil)

        return defaultInstance
    }()
}

public extension CertificateMessageForDescribeCertificates {
    /**
     Default instance of the CertificateMessageForDescribeCertificates structure.
     */
    static let __default: RDSModel.CertificateMessageForDescribeCertificates = {
        let defaultInstance = RDSModel.CertificateMessageForDescribeCertificates(
            describeCertificatesResult: CertificateMessage.__default)

        return defaultInstance
    }()
}

public extension CertificateNotFoundFault {
    /**
     Default instance of the CertificateNotFoundFault structure.
     */
    static let __default: RDSModel.CertificateNotFoundFault = {
        let defaultInstance = RDSModel.CertificateNotFoundFault()

        return defaultInstance
    }()
}

public extension CharacterSet {
    /**
     Default instance of the CharacterSet structure.
     */
    static let __default: RDSModel.CharacterSet = {
        let defaultInstance = RDSModel.CharacterSet(
            characterSetDescription: nil,
            characterSetName: nil)

        return defaultInstance
    }()
}

public extension CloudwatchLogsExportConfiguration {
    /**
     Default instance of the CloudwatchLogsExportConfiguration structure.
     */
    static let __default: RDSModel.CloudwatchLogsExportConfiguration = {
        let defaultInstance = RDSModel.CloudwatchLogsExportConfiguration(
            disableLogTypes: nil,
            enableLogTypes: nil)

        return defaultInstance
    }()
}

public extension ClusterPendingModifiedValues {
    /**
     Default instance of the ClusterPendingModifiedValues structure.
     */
    static let __default: RDSModel.ClusterPendingModifiedValues = {
        let defaultInstance = RDSModel.ClusterPendingModifiedValues(
            dBClusterIdentifier: nil,
            engineVersion: nil,
            iAMDatabaseAuthenticationEnabled: nil,
            masterUserPassword: nil,
            pendingCloudwatchLogsExports: nil)

        return defaultInstance
    }()
}

public extension ConnectionPoolConfiguration {
    /**
     Default instance of the ConnectionPoolConfiguration structure.
     */
    static let __default: RDSModel.ConnectionPoolConfiguration = {
        let defaultInstance = RDSModel.ConnectionPoolConfiguration(
            connectionBorrowTimeout: nil,
            initQuery: nil,
            maxConnectionsPercent: nil,
            maxIdleConnectionsPercent: nil,
            sessionPinningFilters: nil)

        return defaultInstance
    }()
}

public extension ConnectionPoolConfigurationInfo {
    /**
     Default instance of the ConnectionPoolConfigurationInfo structure.
     */
    static let __default: RDSModel.ConnectionPoolConfigurationInfo = {
        let defaultInstance = RDSModel.ConnectionPoolConfigurationInfo(
            connectionBorrowTimeout: nil,
            initQuery: nil,
            maxConnectionsPercent: nil,
            maxIdleConnectionsPercent: nil,
            sessionPinningFilters: nil)

        return defaultInstance
    }()
}

public extension CopyDBClusterParameterGroupMessage {
    /**
     Default instance of the CopyDBClusterParameterGroupMessage structure.
     */
    static let __default: RDSModel.CopyDBClusterParameterGroupMessage = {
        let defaultInstance = RDSModel.CopyDBClusterParameterGroupMessage(
            sourceDBClusterParameterGroupIdentifier: "value",
            tags: nil,
            targetDBClusterParameterGroupDescription: "value",
            targetDBClusterParameterGroupIdentifier: "value")

        return defaultInstance
    }()
}

public extension CopyDBClusterParameterGroupResult {
    /**
     Default instance of the CopyDBClusterParameterGroupResult structure.
     */
    static let __default: RDSModel.CopyDBClusterParameterGroupResult = {
        let defaultInstance = RDSModel.CopyDBClusterParameterGroupResult(
            dBClusterParameterGroup: nil)

        return defaultInstance
    }()
}

public extension CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup {
    /**
     Default instance of the CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup structure.
     */
    static let __default: RDSModel.CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup = {
        let defaultInstance = RDSModel.CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup(
            copyDBClusterParameterGroupResult: CopyDBClusterParameterGroupResult.__default)

        return defaultInstance
    }()
}

public extension CopyDBClusterSnapshotMessage {
    /**
     Default instance of the CopyDBClusterSnapshotMessage structure.
     */
    static let __default: RDSModel.CopyDBClusterSnapshotMessage = {
        let defaultInstance = RDSModel.CopyDBClusterSnapshotMessage(
            copyTags: nil,
            kmsKeyId: nil,
            preSignedUrl: nil,
            sourceDBClusterSnapshotIdentifier: "value",
            tags: nil,
            targetDBClusterSnapshotIdentifier: "value")

        return defaultInstance
    }()
}

public extension CopyDBClusterSnapshotResult {
    /**
     Default instance of the CopyDBClusterSnapshotResult structure.
     */
    static let __default: RDSModel.CopyDBClusterSnapshotResult = {
        let defaultInstance = RDSModel.CopyDBClusterSnapshotResult(
            dBClusterSnapshot: nil)

        return defaultInstance
    }()
}

public extension CopyDBClusterSnapshotResultForCopyDBClusterSnapshot {
    /**
     Default instance of the CopyDBClusterSnapshotResultForCopyDBClusterSnapshot structure.
     */
    static let __default: RDSModel.CopyDBClusterSnapshotResultForCopyDBClusterSnapshot = {
        let defaultInstance = RDSModel.CopyDBClusterSnapshotResultForCopyDBClusterSnapshot(
            copyDBClusterSnapshotResult: CopyDBClusterSnapshotResult.__default)

        return defaultInstance
    }()
}

public extension CopyDBParameterGroupMessage {
    /**
     Default instance of the CopyDBParameterGroupMessage structure.
     */
    static let __default: RDSModel.CopyDBParameterGroupMessage = {
        let defaultInstance = RDSModel.CopyDBParameterGroupMessage(
            sourceDBParameterGroupIdentifier: "value",
            tags: nil,
            targetDBParameterGroupDescription: "value",
            targetDBParameterGroupIdentifier: "value")

        return defaultInstance
    }()
}

public extension CopyDBParameterGroupResult {
    /**
     Default instance of the CopyDBParameterGroupResult structure.
     */
    static let __default: RDSModel.CopyDBParameterGroupResult = {
        let defaultInstance = RDSModel.CopyDBParameterGroupResult(
            dBParameterGroup: nil)

        return defaultInstance
    }()
}

public extension CopyDBParameterGroupResultForCopyDBParameterGroup {
    /**
     Default instance of the CopyDBParameterGroupResultForCopyDBParameterGroup structure.
     */
    static let __default: RDSModel.CopyDBParameterGroupResultForCopyDBParameterGroup = {
        let defaultInstance = RDSModel.CopyDBParameterGroupResultForCopyDBParameterGroup(
            copyDBParameterGroupResult: CopyDBParameterGroupResult.__default)

        return defaultInstance
    }()
}

public extension CopyDBSnapshotMessage {
    /**
     Default instance of the CopyDBSnapshotMessage structure.
     */
    static let __default: RDSModel.CopyDBSnapshotMessage = {
        let defaultInstance = RDSModel.CopyDBSnapshotMessage(
            copyTags: nil,
            kmsKeyId: nil,
            optionGroupName: nil,
            preSignedUrl: nil,
            sourceDBSnapshotIdentifier: "value",
            tags: nil,
            targetCustomAvailabilityZone: nil,
            targetDBSnapshotIdentifier: "value")

        return defaultInstance
    }()
}

public extension CopyDBSnapshotResult {
    /**
     Default instance of the CopyDBSnapshotResult structure.
     */
    static let __default: RDSModel.CopyDBSnapshotResult = {
        let defaultInstance = RDSModel.CopyDBSnapshotResult(
            dBSnapshot: nil)

        return defaultInstance
    }()
}

public extension CopyDBSnapshotResultForCopyDBSnapshot {
    /**
     Default instance of the CopyDBSnapshotResultForCopyDBSnapshot structure.
     */
    static let __default: RDSModel.CopyDBSnapshotResultForCopyDBSnapshot = {
        let defaultInstance = RDSModel.CopyDBSnapshotResultForCopyDBSnapshot(
            copyDBSnapshotResult: CopyDBSnapshotResult.__default)

        return defaultInstance
    }()
}

public extension CopyOptionGroupMessage {
    /**
     Default instance of the CopyOptionGroupMessage structure.
     */
    static let __default: RDSModel.CopyOptionGroupMessage = {
        let defaultInstance = RDSModel.CopyOptionGroupMessage(
            sourceOptionGroupIdentifier: "value",
            tags: nil,
            targetOptionGroupDescription: "value",
            targetOptionGroupIdentifier: "value")

        return defaultInstance
    }()
}

public extension CopyOptionGroupResult {
    /**
     Default instance of the CopyOptionGroupResult structure.
     */
    static let __default: RDSModel.CopyOptionGroupResult = {
        let defaultInstance = RDSModel.CopyOptionGroupResult(
            optionGroup: nil)

        return defaultInstance
    }()
}

public extension CopyOptionGroupResultForCopyOptionGroup {
    /**
     Default instance of the CopyOptionGroupResultForCopyOptionGroup structure.
     */
    static let __default: RDSModel.CopyOptionGroupResultForCopyOptionGroup = {
        let defaultInstance = RDSModel.CopyOptionGroupResultForCopyOptionGroup(
            copyOptionGroupResult: CopyOptionGroupResult.__default)

        return defaultInstance
    }()
}

public extension CreateCustomAvailabilityZoneMessage {
    /**
     Default instance of the CreateCustomAvailabilityZoneMessage structure.
     */
    static let __default: RDSModel.CreateCustomAvailabilityZoneMessage = {
        let defaultInstance = RDSModel.CreateCustomAvailabilityZoneMessage(
            customAvailabilityZoneName: "value",
            existingVpnId: nil,
            newVpnTunnelName: nil,
            vpnTunnelOriginatorIP: nil)

        return defaultInstance
    }()
}

public extension CreateCustomAvailabilityZoneResult {
    /**
     Default instance of the CreateCustomAvailabilityZoneResult structure.
     */
    static let __default: RDSModel.CreateCustomAvailabilityZoneResult = {
        let defaultInstance = RDSModel.CreateCustomAvailabilityZoneResult(
            customAvailabilityZone: nil)

        return defaultInstance
    }()
}

public extension CreateCustomAvailabilityZoneResultForCreateCustomAvailabilityZone {
    /**
     Default instance of the CreateCustomAvailabilityZoneResultForCreateCustomAvailabilityZone structure.
     */
    static let __default: RDSModel.CreateCustomAvailabilityZoneResultForCreateCustomAvailabilityZone = {
        let defaultInstance = RDSModel.CreateCustomAvailabilityZoneResultForCreateCustomAvailabilityZone(
            createCustomAvailabilityZoneResult: CreateCustomAvailabilityZoneResult.__default)

        return defaultInstance
    }()
}

public extension CreateDBClusterEndpointMessage {
    /**
     Default instance of the CreateDBClusterEndpointMessage structure.
     */
    static let __default: RDSModel.CreateDBClusterEndpointMessage = {
        let defaultInstance = RDSModel.CreateDBClusterEndpointMessage(
            dBClusterEndpointIdentifier: "value",
            dBClusterIdentifier: "value",
            endpointType: "value",
            excludedMembers: nil,
            staticMembers: nil,
            tags: nil)

        return defaultInstance
    }()
}

public extension CreateDBClusterMessage {
    /**
     Default instance of the CreateDBClusterMessage structure.
     */
    static let __default: RDSModel.CreateDBClusterMessage = {
        let defaultInstance = RDSModel.CreateDBClusterMessage(
            availabilityZones: nil,
            backtrackWindow: nil,
            backupRetentionPeriod: nil,
            characterSetName: nil,
            copyTagsToSnapshot: nil,
            dBClusterIdentifier: "value",
            dBClusterParameterGroupName: nil,
            dBSubnetGroupName: nil,
            databaseName: nil,
            deletionProtection: nil,
            domain: nil,
            domainIAMRoleName: nil,
            enableCloudwatchLogsExports: nil,
            enableGlobalWriteForwarding: nil,
            enableHttpEndpoint: nil,
            enableIAMDatabaseAuthentication: nil,
            engine: "value",
            engineMode: nil,
            engineVersion: nil,
            globalClusterIdentifier: nil,
            kmsKeyId: nil,
            masterUserPassword: nil,
            masterUsername: nil,
            optionGroupName: nil,
            port: nil,
            preSignedUrl: nil,
            preferredBackupWindow: nil,
            preferredMaintenanceWindow: nil,
            replicationSourceIdentifier: nil,
            scalingConfiguration: nil,
            storageEncrypted: nil,
            tags: nil,
            vpcSecurityGroupIds: nil)

        return defaultInstance
    }()
}

public extension CreateDBClusterParameterGroupMessage {
    /**
     Default instance of the CreateDBClusterParameterGroupMessage structure.
     */
    static let __default: RDSModel.CreateDBClusterParameterGroupMessage = {
        let defaultInstance = RDSModel.CreateDBClusterParameterGroupMessage(
            dBClusterParameterGroupName: "value",
            dBParameterGroupFamily: "value",
            description: "value",
            tags: nil)

        return defaultInstance
    }()
}

public extension CreateDBClusterParameterGroupResult {
    /**
     Default instance of the CreateDBClusterParameterGroupResult structure.
     */
    static let __default: RDSModel.CreateDBClusterParameterGroupResult = {
        let defaultInstance = RDSModel.CreateDBClusterParameterGroupResult(
            dBClusterParameterGroup: nil)

        return defaultInstance
    }()
}

public extension CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup {
    /**
     Default instance of the CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup structure.
     */
    static let __default: RDSModel.CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup = {
        let defaultInstance = RDSModel.CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup(
            createDBClusterParameterGroupResult: CreateDBClusterParameterGroupResult.__default)

        return defaultInstance
    }()
}

public extension CreateDBClusterResult {
    /**
     Default instance of the CreateDBClusterResult structure.
     */
    static let __default: RDSModel.CreateDBClusterResult = {
        let defaultInstance = RDSModel.CreateDBClusterResult(
            dBCluster: nil)

        return defaultInstance
    }()
}

public extension CreateDBClusterResultForCreateDBCluster {
    /**
     Default instance of the CreateDBClusterResultForCreateDBCluster structure.
     */
    static let __default: RDSModel.CreateDBClusterResultForCreateDBCluster = {
        let defaultInstance = RDSModel.CreateDBClusterResultForCreateDBCluster(
            createDBClusterResult: CreateDBClusterResult.__default)

        return defaultInstance
    }()
}

public extension CreateDBClusterSnapshotMessage {
    /**
     Default instance of the CreateDBClusterSnapshotMessage structure.
     */
    static let __default: RDSModel.CreateDBClusterSnapshotMessage = {
        let defaultInstance = RDSModel.CreateDBClusterSnapshotMessage(
            dBClusterIdentifier: "value",
            dBClusterSnapshotIdentifier: "value",
            tags: nil)

        return defaultInstance
    }()
}

public extension CreateDBClusterSnapshotResult {
    /**
     Default instance of the CreateDBClusterSnapshotResult structure.
     */
    static let __default: RDSModel.CreateDBClusterSnapshotResult = {
        let defaultInstance = RDSModel.CreateDBClusterSnapshotResult(
            dBClusterSnapshot: nil)

        return defaultInstance
    }()
}

public extension CreateDBClusterSnapshotResultForCreateDBClusterSnapshot {
    /**
     Default instance of the CreateDBClusterSnapshotResultForCreateDBClusterSnapshot structure.
     */
    static let __default: RDSModel.CreateDBClusterSnapshotResultForCreateDBClusterSnapshot = {
        let defaultInstance = RDSModel.CreateDBClusterSnapshotResultForCreateDBClusterSnapshot(
            createDBClusterSnapshotResult: CreateDBClusterSnapshotResult.__default)

        return defaultInstance
    }()
}

public extension CreateDBInstanceMessage {
    /**
     Default instance of the CreateDBInstanceMessage structure.
     */
    static let __default: RDSModel.CreateDBInstanceMessage = {
        let defaultInstance = RDSModel.CreateDBInstanceMessage(
            allocatedStorage: nil,
            autoMinorVersionUpgrade: nil,
            availabilityZone: nil,
            backupRetentionPeriod: nil,
            characterSetName: nil,
            copyTagsToSnapshot: nil,
            dBClusterIdentifier: nil,
            dBInstanceClass: "value",
            dBInstanceIdentifier: "value",
            dBName: nil,
            dBParameterGroupName: nil,
            dBSecurityGroups: nil,
            dBSubnetGroupName: nil,
            deletionProtection: nil,
            domain: nil,
            domainIAMRoleName: nil,
            enableCloudwatchLogsExports: nil,
            enableCustomerOwnedIp: nil,
            enableIAMDatabaseAuthentication: nil,
            enablePerformanceInsights: nil,
            engine: "value",
            engineVersion: nil,
            iops: nil,
            kmsKeyId: nil,
            licenseModel: nil,
            masterUserPassword: nil,
            masterUsername: nil,
            maxAllocatedStorage: nil,
            monitoringInterval: nil,
            monitoringRoleArn: nil,
            multiAZ: nil,
            ncharCharacterSetName: nil,
            optionGroupName: nil,
            performanceInsightsKMSKeyId: nil,
            performanceInsightsRetentionPeriod: nil,
            port: nil,
            preferredBackupWindow: nil,
            preferredMaintenanceWindow: nil,
            processorFeatures: nil,
            promotionTier: nil,
            publiclyAccessible: nil,
            storageEncrypted: nil,
            storageType: nil,
            tags: nil,
            tdeCredentialArn: nil,
            tdeCredentialPassword: nil,
            timezone: nil,
            vpcSecurityGroupIds: nil)

        return defaultInstance
    }()
}

public extension CreateDBInstanceReadReplicaMessage {
    /**
     Default instance of the CreateDBInstanceReadReplicaMessage structure.
     */
    static let __default: RDSModel.CreateDBInstanceReadReplicaMessage = {
        let defaultInstance = RDSModel.CreateDBInstanceReadReplicaMessage(
            autoMinorVersionUpgrade: nil,
            availabilityZone: nil,
            copyTagsToSnapshot: nil,
            dBInstanceClass: nil,
            dBInstanceIdentifier: "value",
            dBParameterGroupName: nil,
            dBSubnetGroupName: nil,
            deletionProtection: nil,
            domain: nil,
            domainIAMRoleName: nil,
            enableCloudwatchLogsExports: nil,
            enableIAMDatabaseAuthentication: nil,
            enablePerformanceInsights: nil,
            iops: nil,
            kmsKeyId: nil,
            maxAllocatedStorage: nil,
            monitoringInterval: nil,
            monitoringRoleArn: nil,
            multiAZ: nil,
            optionGroupName: nil,
            performanceInsightsKMSKeyId: nil,
            performanceInsightsRetentionPeriod: nil,
            port: nil,
            preSignedUrl: nil,
            processorFeatures: nil,
            publiclyAccessible: nil,
            replicaMode: nil,
            sourceDBInstanceIdentifier: "value",
            storageType: nil,
            tags: nil,
            useDefaultProcessorFeatures: nil,
            vpcSecurityGroupIds: nil)

        return defaultInstance
    }()
}

public extension CreateDBInstanceReadReplicaResult {
    /**
     Default instance of the CreateDBInstanceReadReplicaResult structure.
     */
    static let __default: RDSModel.CreateDBInstanceReadReplicaResult = {
        let defaultInstance = RDSModel.CreateDBInstanceReadReplicaResult(
            dBInstance: nil)

        return defaultInstance
    }()
}

public extension CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica {
    /**
     Default instance of the CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica structure.
     */
    static let __default: RDSModel.CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica = {
        let defaultInstance = RDSModel.CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica(
            createDBInstanceReadReplicaResult: CreateDBInstanceReadReplicaResult.__default)

        return defaultInstance
    }()
}

public extension CreateDBInstanceResult {
    /**
     Default instance of the CreateDBInstanceResult structure.
     */
    static let __default: RDSModel.CreateDBInstanceResult = {
        let defaultInstance = RDSModel.CreateDBInstanceResult(
            dBInstance: nil)

        return defaultInstance
    }()
}

public extension CreateDBInstanceResultForCreateDBInstance {
    /**
     Default instance of the CreateDBInstanceResultForCreateDBInstance structure.
     */
    static let __default: RDSModel.CreateDBInstanceResultForCreateDBInstance = {
        let defaultInstance = RDSModel.CreateDBInstanceResultForCreateDBInstance(
            createDBInstanceResult: CreateDBInstanceResult.__default)

        return defaultInstance
    }()
}

public extension CreateDBParameterGroupMessage {
    /**
     Default instance of the CreateDBParameterGroupMessage structure.
     */
    static let __default: RDSModel.CreateDBParameterGroupMessage = {
        let defaultInstance = RDSModel.CreateDBParameterGroupMessage(
            dBParameterGroupFamily: "value",
            dBParameterGroupName: "value",
            description: "value",
            tags: nil)

        return defaultInstance
    }()
}

public extension CreateDBParameterGroupResult {
    /**
     Default instance of the CreateDBParameterGroupResult structure.
     */
    static let __default: RDSModel.CreateDBParameterGroupResult = {
        let defaultInstance = RDSModel.CreateDBParameterGroupResult(
            dBParameterGroup: nil)

        return defaultInstance
    }()
}

public extension CreateDBParameterGroupResultForCreateDBParameterGroup {
    /**
     Default instance of the CreateDBParameterGroupResultForCreateDBParameterGroup structure.
     */
    static let __default: RDSModel.CreateDBParameterGroupResultForCreateDBParameterGroup = {
        let defaultInstance = RDSModel.CreateDBParameterGroupResultForCreateDBParameterGroup(
            createDBParameterGroupResult: CreateDBParameterGroupResult.__default)

        return defaultInstance
    }()
}

public extension CreateDBProxyEndpointRequest {
    /**
     Default instance of the CreateDBProxyEndpointRequest structure.
     */
    static let __default: RDSModel.CreateDBProxyEndpointRequest = {
        let defaultInstance = RDSModel.CreateDBProxyEndpointRequest(
            dBProxyEndpointName: "0",
            dBProxyName: "0",
            tags: nil,
            targetRole: nil,
            vpcSecurityGroupIds: nil,
            vpcSubnetIds: [])

        return defaultInstance
    }()
}

public extension CreateDBProxyEndpointResponse {
    /**
     Default instance of the CreateDBProxyEndpointResponse structure.
     */
    static let __default: RDSModel.CreateDBProxyEndpointResponse = {
        let defaultInstance = RDSModel.CreateDBProxyEndpointResponse(
            dBProxyEndpoint: nil)

        return defaultInstance
    }()
}

public extension CreateDBProxyEndpointResponseForCreateDBProxyEndpoint {
    /**
     Default instance of the CreateDBProxyEndpointResponseForCreateDBProxyEndpoint structure.
     */
    static let __default: RDSModel.CreateDBProxyEndpointResponseForCreateDBProxyEndpoint = {
        let defaultInstance = RDSModel.CreateDBProxyEndpointResponseForCreateDBProxyEndpoint(
            createDBProxyEndpointResult: CreateDBProxyEndpointResponse.__default)

        return defaultInstance
    }()
}

public extension CreateDBProxyRequest {
    /**
     Default instance of the CreateDBProxyRequest structure.
     */
    static let __default: RDSModel.CreateDBProxyRequest = {
        let defaultInstance = RDSModel.CreateDBProxyRequest(
            auth: [],
            dBProxyName: "value",
            debugLogging: nil,
            engineFamily: .__default,
            idleClientTimeout: nil,
            requireTLS: nil,
            roleArn: "value",
            tags: nil,
            vpcSecurityGroupIds: nil,
            vpcSubnetIds: [])

        return defaultInstance
    }()
}

public extension CreateDBProxyResponse {
    /**
     Default instance of the CreateDBProxyResponse structure.
     */
    static let __default: RDSModel.CreateDBProxyResponse = {
        let defaultInstance = RDSModel.CreateDBProxyResponse(
            dBProxy: nil)

        return defaultInstance
    }()
}

public extension CreateDBProxyResponseForCreateDBProxy {
    /**
     Default instance of the CreateDBProxyResponseForCreateDBProxy structure.
     */
    static let __default: RDSModel.CreateDBProxyResponseForCreateDBProxy = {
        let defaultInstance = RDSModel.CreateDBProxyResponseForCreateDBProxy(
            createDBProxyResult: CreateDBProxyResponse.__default)

        return defaultInstance
    }()
}

public extension CreateDBSecurityGroupMessage {
    /**
     Default instance of the CreateDBSecurityGroupMessage structure.
     */
    static let __default: RDSModel.CreateDBSecurityGroupMessage = {
        let defaultInstance = RDSModel.CreateDBSecurityGroupMessage(
            dBSecurityGroupDescription: "value",
            dBSecurityGroupName: "value",
            tags: nil)

        return defaultInstance
    }()
}

public extension CreateDBSecurityGroupResult {
    /**
     Default instance of the CreateDBSecurityGroupResult structure.
     */
    static let __default: RDSModel.CreateDBSecurityGroupResult = {
        let defaultInstance = RDSModel.CreateDBSecurityGroupResult(
            dBSecurityGroup: nil)

        return defaultInstance
    }()
}

public extension CreateDBSecurityGroupResultForCreateDBSecurityGroup {
    /**
     Default instance of the CreateDBSecurityGroupResultForCreateDBSecurityGroup structure.
     */
    static let __default: RDSModel.CreateDBSecurityGroupResultForCreateDBSecurityGroup = {
        let defaultInstance = RDSModel.CreateDBSecurityGroupResultForCreateDBSecurityGroup(
            createDBSecurityGroupResult: CreateDBSecurityGroupResult.__default)

        return defaultInstance
    }()
}

public extension CreateDBSnapshotMessage {
    /**
     Default instance of the CreateDBSnapshotMessage structure.
     */
    static let __default: RDSModel.CreateDBSnapshotMessage = {
        let defaultInstance = RDSModel.CreateDBSnapshotMessage(
            dBInstanceIdentifier: "value",
            dBSnapshotIdentifier: "value",
            tags: nil)

        return defaultInstance
    }()
}

public extension CreateDBSnapshotResult {
    /**
     Default instance of the CreateDBSnapshotResult structure.
     */
    static let __default: RDSModel.CreateDBSnapshotResult = {
        let defaultInstance = RDSModel.CreateDBSnapshotResult(
            dBSnapshot: nil)

        return defaultInstance
    }()
}

public extension CreateDBSnapshotResultForCreateDBSnapshot {
    /**
     Default instance of the CreateDBSnapshotResultForCreateDBSnapshot structure.
     */
    static let __default: RDSModel.CreateDBSnapshotResultForCreateDBSnapshot = {
        let defaultInstance = RDSModel.CreateDBSnapshotResultForCreateDBSnapshot(
            createDBSnapshotResult: CreateDBSnapshotResult.__default)

        return defaultInstance
    }()
}

public extension CreateDBSubnetGroupMessage {
    /**
     Default instance of the CreateDBSubnetGroupMessage structure.
     */
    static let __default: RDSModel.CreateDBSubnetGroupMessage = {
        let defaultInstance = RDSModel.CreateDBSubnetGroupMessage(
            dBSubnetGroupDescription: "value",
            dBSubnetGroupName: "value",
            subnetIds: [],
            tags: nil)

        return defaultInstance
    }()
}

public extension CreateDBSubnetGroupResult {
    /**
     Default instance of the CreateDBSubnetGroupResult structure.
     */
    static let __default: RDSModel.CreateDBSubnetGroupResult = {
        let defaultInstance = RDSModel.CreateDBSubnetGroupResult(
            dBSubnetGroup: nil)

        return defaultInstance
    }()
}

public extension CreateDBSubnetGroupResultForCreateDBSubnetGroup {
    /**
     Default instance of the CreateDBSubnetGroupResultForCreateDBSubnetGroup structure.
     */
    static let __default: RDSModel.CreateDBSubnetGroupResultForCreateDBSubnetGroup = {
        let defaultInstance = RDSModel.CreateDBSubnetGroupResultForCreateDBSubnetGroup(
            createDBSubnetGroupResult: CreateDBSubnetGroupResult.__default)

        return defaultInstance
    }()
}

public extension CreateEventSubscriptionMessage {
    /**
     Default instance of the CreateEventSubscriptionMessage structure.
     */
    static let __default: RDSModel.CreateEventSubscriptionMessage = {
        let defaultInstance = RDSModel.CreateEventSubscriptionMessage(
            enabled: nil,
            eventCategories: nil,
            snsTopicArn: "value",
            sourceIds: nil,
            sourceType: nil,
            subscriptionName: "value",
            tags: nil)

        return defaultInstance
    }()
}

public extension CreateEventSubscriptionResult {
    /**
     Default instance of the CreateEventSubscriptionResult structure.
     */
    static let __default: RDSModel.CreateEventSubscriptionResult = {
        let defaultInstance = RDSModel.CreateEventSubscriptionResult(
            eventSubscription: nil)

        return defaultInstance
    }()
}

public extension CreateEventSubscriptionResultForCreateEventSubscription {
    /**
     Default instance of the CreateEventSubscriptionResultForCreateEventSubscription structure.
     */
    static let __default: RDSModel.CreateEventSubscriptionResultForCreateEventSubscription = {
        let defaultInstance = RDSModel.CreateEventSubscriptionResultForCreateEventSubscription(
            createEventSubscriptionResult: CreateEventSubscriptionResult.__default)

        return defaultInstance
    }()
}

public extension CreateGlobalClusterMessage {
    /**
     Default instance of the CreateGlobalClusterMessage structure.
     */
    static let __default: RDSModel.CreateGlobalClusterMessage = {
        let defaultInstance = RDSModel.CreateGlobalClusterMessage(
            databaseName: nil,
            deletionProtection: nil,
            engine: nil,
            engineVersion: nil,
            globalClusterIdentifier: nil,
            sourceDBClusterIdentifier: nil,
            storageEncrypted: nil)

        return defaultInstance
    }()
}

public extension CreateGlobalClusterResult {
    /**
     Default instance of the CreateGlobalClusterResult structure.
     */
    static let __default: RDSModel.CreateGlobalClusterResult = {
        let defaultInstance = RDSModel.CreateGlobalClusterResult(
            globalCluster: nil)

        return defaultInstance
    }()
}

public extension CreateGlobalClusterResultForCreateGlobalCluster {
    /**
     Default instance of the CreateGlobalClusterResultForCreateGlobalCluster structure.
     */
    static let __default: RDSModel.CreateGlobalClusterResultForCreateGlobalCluster = {
        let defaultInstance = RDSModel.CreateGlobalClusterResultForCreateGlobalCluster(
            createGlobalClusterResult: CreateGlobalClusterResult.__default)

        return defaultInstance
    }()
}

public extension CreateOptionGroupMessage {
    /**
     Default instance of the CreateOptionGroupMessage structure.
     */
    static let __default: RDSModel.CreateOptionGroupMessage = {
        let defaultInstance = RDSModel.CreateOptionGroupMessage(
            engineName: "value",
            majorEngineVersion: "value",
            optionGroupDescription: "value",
            optionGroupName: "value",
            tags: nil)

        return defaultInstance
    }()
}

public extension CreateOptionGroupResult {
    /**
     Default instance of the CreateOptionGroupResult structure.
     */
    static let __default: RDSModel.CreateOptionGroupResult = {
        let defaultInstance = RDSModel.CreateOptionGroupResult(
            optionGroup: nil)

        return defaultInstance
    }()
}

public extension CreateOptionGroupResultForCreateOptionGroup {
    /**
     Default instance of the CreateOptionGroupResultForCreateOptionGroup structure.
     */
    static let __default: RDSModel.CreateOptionGroupResultForCreateOptionGroup = {
        let defaultInstance = RDSModel.CreateOptionGroupResultForCreateOptionGroup(
            createOptionGroupResult: CreateOptionGroupResult.__default)

        return defaultInstance
    }()
}

public extension CustomAvailabilityZone {
    /**
     Default instance of the CustomAvailabilityZone structure.
     */
    static let __default: RDSModel.CustomAvailabilityZone = {
        let defaultInstance = RDSModel.CustomAvailabilityZone(
            customAvailabilityZoneId: nil,
            customAvailabilityZoneName: nil,
            customAvailabilityZoneStatus: nil,
            vpnDetails: nil)

        return defaultInstance
    }()
}

public extension CustomAvailabilityZoneAlreadyExistsFault {
    /**
     Default instance of the CustomAvailabilityZoneAlreadyExistsFault structure.
     */
    static let __default: RDSModel.CustomAvailabilityZoneAlreadyExistsFault = {
        let defaultInstance = RDSModel.CustomAvailabilityZoneAlreadyExistsFault()

        return defaultInstance
    }()
}

public extension CustomAvailabilityZoneMessage {
    /**
     Default instance of the CustomAvailabilityZoneMessage structure.
     */
    static let __default: RDSModel.CustomAvailabilityZoneMessage = {
        let defaultInstance = RDSModel.CustomAvailabilityZoneMessage(
            customAvailabilityZones: nil,
            marker: nil)

        return defaultInstance
    }()
}

public extension CustomAvailabilityZoneMessageForDescribeCustomAvailabilityZones {
    /**
     Default instance of the CustomAvailabilityZoneMessageForDescribeCustomAvailabilityZones structure.
     */
    static let __default: RDSModel.CustomAvailabilityZoneMessageForDescribeCustomAvailabilityZones = {
        let defaultInstance = RDSModel.CustomAvailabilityZoneMessageForDescribeCustomAvailabilityZones(
            describeCustomAvailabilityZonesResult: CustomAvailabilityZoneMessage.__default)

        return defaultInstance
    }()
}

public extension CustomAvailabilityZoneNotFoundFault {
    /**
     Default instance of the CustomAvailabilityZoneNotFoundFault structure.
     */
    static let __default: RDSModel.CustomAvailabilityZoneNotFoundFault = {
        let defaultInstance = RDSModel.CustomAvailabilityZoneNotFoundFault()

        return defaultInstance
    }()
}

public extension CustomAvailabilityZoneQuotaExceededFault {
    /**
     Default instance of the CustomAvailabilityZoneQuotaExceededFault structure.
     */
    static let __default: RDSModel.CustomAvailabilityZoneQuotaExceededFault = {
        let defaultInstance = RDSModel.CustomAvailabilityZoneQuotaExceededFault()

        return defaultInstance
    }()
}

public extension DBCluster {
    /**
     Default instance of the DBCluster structure.
     */
    static let __default: RDSModel.DBCluster = {
        let defaultInstance = RDSModel.DBCluster(
            activityStreamKinesisStreamName: nil,
            activityStreamKmsKeyId: nil,
            activityStreamMode: nil,
            activityStreamStatus: nil,
            allocatedStorage: nil,
            associatedRoles: nil,
            availabilityZones: nil,
            backtrackConsumedChangeRecords: nil,
            backtrackWindow: nil,
            backupRetentionPeriod: nil,
            capacity: nil,
            characterSetName: nil,
            cloneGroupId: nil,
            clusterCreateTime: nil,
            copyTagsToSnapshot: nil,
            crossAccountClone: nil,
            customEndpoints: nil,
            dBClusterArn: nil,
            dBClusterIdentifier: nil,
            dBClusterMembers: nil,
            dBClusterOptionGroupMemberships: nil,
            dBClusterParameterGroup: nil,
            dBSubnetGroup: nil,
            databaseName: nil,
            dbClusterResourceId: nil,
            deletionProtection: nil,
            domainMemberships: nil,
            earliestBacktrackTime: nil,
            earliestRestorableTime: nil,
            enabledCloudwatchLogsExports: nil,
            endpoint: nil,
            engine: nil,
            engineMode: nil,
            engineVersion: nil,
            globalWriteForwardingRequested: nil,
            globalWriteForwardingStatus: nil,
            hostedZoneId: nil,
            httpEndpointEnabled: nil,
            iAMDatabaseAuthenticationEnabled: nil,
            kmsKeyId: nil,
            latestRestorableTime: nil,
            masterUsername: nil,
            multiAZ: nil,
            pendingModifiedValues: nil,
            percentProgress: nil,
            port: nil,
            preferredBackupWindow: nil,
            preferredMaintenanceWindow: nil,
            readReplicaIdentifiers: nil,
            readerEndpoint: nil,
            replicationSourceIdentifier: nil,
            scalingConfigurationInfo: nil,
            status: nil,
            storageEncrypted: nil,
            tagList: nil,
            vpcSecurityGroups: nil)

        return defaultInstance
    }()
}

public extension DBClusterAlreadyExistsFault {
    /**
     Default instance of the DBClusterAlreadyExistsFault structure.
     */
    static let __default: RDSModel.DBClusterAlreadyExistsFault = {
        let defaultInstance = RDSModel.DBClusterAlreadyExistsFault()

        return defaultInstance
    }()
}

public extension DBClusterBacktrack {
    /**
     Default instance of the DBClusterBacktrack structure.
     */
    static let __default: RDSModel.DBClusterBacktrack = {
        let defaultInstance = RDSModel.DBClusterBacktrack(
            backtrackIdentifier: nil,
            backtrackRequestCreationTime: nil,
            backtrackTo: nil,
            backtrackedFrom: nil,
            dBClusterIdentifier: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension DBClusterBacktrackForBacktrackDBCluster {
    /**
     Default instance of the DBClusterBacktrackForBacktrackDBCluster structure.
     */
    static let __default: RDSModel.DBClusterBacktrackForBacktrackDBCluster = {
        let defaultInstance = RDSModel.DBClusterBacktrackForBacktrackDBCluster(
            backtrackDBClusterResult: DBClusterBacktrack.__default)

        return defaultInstance
    }()
}

public extension DBClusterBacktrackMessage {
    /**
     Default instance of the DBClusterBacktrackMessage structure.
     */
    static let __default: RDSModel.DBClusterBacktrackMessage = {
        let defaultInstance = RDSModel.DBClusterBacktrackMessage(
            dBClusterBacktracks: nil,
            marker: nil)

        return defaultInstance
    }()
}

public extension DBClusterBacktrackMessageForDescribeDBClusterBacktracks {
    /**
     Default instance of the DBClusterBacktrackMessageForDescribeDBClusterBacktracks structure.
     */
    static let __default: RDSModel.DBClusterBacktrackMessageForDescribeDBClusterBacktracks = {
        let defaultInstance = RDSModel.DBClusterBacktrackMessageForDescribeDBClusterBacktracks(
            describeDBClusterBacktracksResult: DBClusterBacktrackMessage.__default)

        return defaultInstance
    }()
}

public extension DBClusterBacktrackNotFoundFault {
    /**
     Default instance of the DBClusterBacktrackNotFoundFault structure.
     */
    static let __default: RDSModel.DBClusterBacktrackNotFoundFault = {
        let defaultInstance = RDSModel.DBClusterBacktrackNotFoundFault()

        return defaultInstance
    }()
}

public extension DBClusterCapacityInfo {
    /**
     Default instance of the DBClusterCapacityInfo structure.
     */
    static let __default: RDSModel.DBClusterCapacityInfo = {
        let defaultInstance = RDSModel.DBClusterCapacityInfo(
            currentCapacity: nil,
            dBClusterIdentifier: nil,
            pendingCapacity: nil,
            secondsBeforeTimeout: nil,
            timeoutAction: nil)

        return defaultInstance
    }()
}

public extension DBClusterCapacityInfoForModifyCurrentDBClusterCapacity {
    /**
     Default instance of the DBClusterCapacityInfoForModifyCurrentDBClusterCapacity structure.
     */
    static let __default: RDSModel.DBClusterCapacityInfoForModifyCurrentDBClusterCapacity = {
        let defaultInstance = RDSModel.DBClusterCapacityInfoForModifyCurrentDBClusterCapacity(
            modifyCurrentDBClusterCapacityResult: DBClusterCapacityInfo.__default)

        return defaultInstance
    }()
}

public extension DBClusterEndpoint {
    /**
     Default instance of the DBClusterEndpoint structure.
     */
    static let __default: RDSModel.DBClusterEndpoint = {
        let defaultInstance = RDSModel.DBClusterEndpoint(
            customEndpointType: nil,
            dBClusterEndpointArn: nil,
            dBClusterEndpointIdentifier: nil,
            dBClusterEndpointResourceIdentifier: nil,
            dBClusterIdentifier: nil,
            endpoint: nil,
            endpointType: nil,
            excludedMembers: nil,
            staticMembers: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension DBClusterEndpointAlreadyExistsFault {
    /**
     Default instance of the DBClusterEndpointAlreadyExistsFault structure.
     */
    static let __default: RDSModel.DBClusterEndpointAlreadyExistsFault = {
        let defaultInstance = RDSModel.DBClusterEndpointAlreadyExistsFault()

        return defaultInstance
    }()
}

public extension DBClusterEndpointForCreateDBClusterEndpoint {
    /**
     Default instance of the DBClusterEndpointForCreateDBClusterEndpoint structure.
     */
    static let __default: RDSModel.DBClusterEndpointForCreateDBClusterEndpoint = {
        let defaultInstance = RDSModel.DBClusterEndpointForCreateDBClusterEndpoint(
            createDBClusterEndpointResult: DBClusterEndpoint.__default)

        return defaultInstance
    }()
}

public extension DBClusterEndpointForDeleteDBClusterEndpoint {
    /**
     Default instance of the DBClusterEndpointForDeleteDBClusterEndpoint structure.
     */
    static let __default: RDSModel.DBClusterEndpointForDeleteDBClusterEndpoint = {
        let defaultInstance = RDSModel.DBClusterEndpointForDeleteDBClusterEndpoint(
            deleteDBClusterEndpointResult: DBClusterEndpoint.__default)

        return defaultInstance
    }()
}

public extension DBClusterEndpointForModifyDBClusterEndpoint {
    /**
     Default instance of the DBClusterEndpointForModifyDBClusterEndpoint structure.
     */
    static let __default: RDSModel.DBClusterEndpointForModifyDBClusterEndpoint = {
        let defaultInstance = RDSModel.DBClusterEndpointForModifyDBClusterEndpoint(
            modifyDBClusterEndpointResult: DBClusterEndpoint.__default)

        return defaultInstance
    }()
}

public extension DBClusterEndpointMessage {
    /**
     Default instance of the DBClusterEndpointMessage structure.
     */
    static let __default: RDSModel.DBClusterEndpointMessage = {
        let defaultInstance = RDSModel.DBClusterEndpointMessage(
            dBClusterEndpoints: nil,
            marker: nil)

        return defaultInstance
    }()
}

public extension DBClusterEndpointMessageForDescribeDBClusterEndpoints {
    /**
     Default instance of the DBClusterEndpointMessageForDescribeDBClusterEndpoints structure.
     */
    static let __default: RDSModel.DBClusterEndpointMessageForDescribeDBClusterEndpoints = {
        let defaultInstance = RDSModel.DBClusterEndpointMessageForDescribeDBClusterEndpoints(
            describeDBClusterEndpointsResult: DBClusterEndpointMessage.__default)

        return defaultInstance
    }()
}

public extension DBClusterEndpointNotFoundFault {
    /**
     Default instance of the DBClusterEndpointNotFoundFault structure.
     */
    static let __default: RDSModel.DBClusterEndpointNotFoundFault = {
        let defaultInstance = RDSModel.DBClusterEndpointNotFoundFault()

        return defaultInstance
    }()
}

public extension DBClusterEndpointQuotaExceededFault {
    /**
     Default instance of the DBClusterEndpointQuotaExceededFault structure.
     */
    static let __default: RDSModel.DBClusterEndpointQuotaExceededFault = {
        let defaultInstance = RDSModel.DBClusterEndpointQuotaExceededFault()

        return defaultInstance
    }()
}

public extension DBClusterMember {
    /**
     Default instance of the DBClusterMember structure.
     */
    static let __default: RDSModel.DBClusterMember = {
        let defaultInstance = RDSModel.DBClusterMember(
            dBClusterParameterGroupStatus: nil,
            dBInstanceIdentifier: nil,
            isClusterWriter: nil,
            promotionTier: nil)

        return defaultInstance
    }()
}

public extension DBClusterMessage {
    /**
     Default instance of the DBClusterMessage structure.
     */
    static let __default: RDSModel.DBClusterMessage = {
        let defaultInstance = RDSModel.DBClusterMessage(
            dBClusters: nil,
            marker: nil)

        return defaultInstance
    }()
}

public extension DBClusterMessageForDescribeDBClusters {
    /**
     Default instance of the DBClusterMessageForDescribeDBClusters structure.
     */
    static let __default: RDSModel.DBClusterMessageForDescribeDBClusters = {
        let defaultInstance = RDSModel.DBClusterMessageForDescribeDBClusters(
            describeDBClustersResult: DBClusterMessage.__default)

        return defaultInstance
    }()
}

public extension DBClusterNotFoundFault {
    /**
     Default instance of the DBClusterNotFoundFault structure.
     */
    static let __default: RDSModel.DBClusterNotFoundFault = {
        let defaultInstance = RDSModel.DBClusterNotFoundFault()

        return defaultInstance
    }()
}

public extension DBClusterOptionGroupStatus {
    /**
     Default instance of the DBClusterOptionGroupStatus structure.
     */
    static let __default: RDSModel.DBClusterOptionGroupStatus = {
        let defaultInstance = RDSModel.DBClusterOptionGroupStatus(
            dBClusterOptionGroupName: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension DBClusterParameterGroup {
    /**
     Default instance of the DBClusterParameterGroup structure.
     */
    static let __default: RDSModel.DBClusterParameterGroup = {
        let defaultInstance = RDSModel.DBClusterParameterGroup(
            dBClusterParameterGroupArn: nil,
            dBClusterParameterGroupName: nil,
            dBParameterGroupFamily: nil,
            description: nil)

        return defaultInstance
    }()
}

public extension DBClusterParameterGroupDetails {
    /**
     Default instance of the DBClusterParameterGroupDetails structure.
     */
    static let __default: RDSModel.DBClusterParameterGroupDetails = {
        let defaultInstance = RDSModel.DBClusterParameterGroupDetails(
            marker: nil,
            parameters: nil)

        return defaultInstance
    }()
}

public extension DBClusterParameterGroupDetailsForDescribeDBClusterParameters {
    /**
     Default instance of the DBClusterParameterGroupDetailsForDescribeDBClusterParameters structure.
     */
    static let __default: RDSModel.DBClusterParameterGroupDetailsForDescribeDBClusterParameters = {
        let defaultInstance = RDSModel.DBClusterParameterGroupDetailsForDescribeDBClusterParameters(
            describeDBClusterParametersResult: DBClusterParameterGroupDetails.__default)

        return defaultInstance
    }()
}

public extension DBClusterParameterGroupNameMessage {
    /**
     Default instance of the DBClusterParameterGroupNameMessage structure.
     */
    static let __default: RDSModel.DBClusterParameterGroupNameMessage = {
        let defaultInstance = RDSModel.DBClusterParameterGroupNameMessage(
            dBClusterParameterGroupName: nil)

        return defaultInstance
    }()
}

public extension DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup {
    /**
     Default instance of the DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup structure.
     */
    static let __default: RDSModel.DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup = {
        let defaultInstance = RDSModel.DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup(
            modifyDBClusterParameterGroupResult: DBClusterParameterGroupNameMessage.__default)

        return defaultInstance
    }()
}

public extension DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup {
    /**
     Default instance of the DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup structure.
     */
    static let __default: RDSModel.DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup = {
        let defaultInstance = RDSModel.DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup(
            resetDBClusterParameterGroupResult: DBClusterParameterGroupNameMessage.__default)

        return defaultInstance
    }()
}

public extension DBClusterParameterGroupNotFoundFault {
    /**
     Default instance of the DBClusterParameterGroupNotFoundFault structure.
     */
    static let __default: RDSModel.DBClusterParameterGroupNotFoundFault = {
        let defaultInstance = RDSModel.DBClusterParameterGroupNotFoundFault()

        return defaultInstance
    }()
}

public extension DBClusterParameterGroupsMessage {
    /**
     Default instance of the DBClusterParameterGroupsMessage structure.
     */
    static let __default: RDSModel.DBClusterParameterGroupsMessage = {
        let defaultInstance = RDSModel.DBClusterParameterGroupsMessage(
            dBClusterParameterGroups: nil,
            marker: nil)

        return defaultInstance
    }()
}

public extension DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups {
    /**
     Default instance of the DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups structure.
     */
    static let __default: RDSModel.DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups = {
        let defaultInstance = RDSModel.DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups(
            describeDBClusterParameterGroupsResult: DBClusterParameterGroupsMessage.__default)

        return defaultInstance
    }()
}

public extension DBClusterQuotaExceededFault {
    /**
     Default instance of the DBClusterQuotaExceededFault structure.
     */
    static let __default: RDSModel.DBClusterQuotaExceededFault = {
        let defaultInstance = RDSModel.DBClusterQuotaExceededFault()

        return defaultInstance
    }()
}

public extension DBClusterRole {
    /**
     Default instance of the DBClusterRole structure.
     */
    static let __default: RDSModel.DBClusterRole = {
        let defaultInstance = RDSModel.DBClusterRole(
            featureName: nil,
            roleArn: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension DBClusterRoleAlreadyExistsFault {
    /**
     Default instance of the DBClusterRoleAlreadyExistsFault structure.
     */
    static let __default: RDSModel.DBClusterRoleAlreadyExistsFault = {
        let defaultInstance = RDSModel.DBClusterRoleAlreadyExistsFault()

        return defaultInstance
    }()
}

public extension DBClusterRoleNotFoundFault {
    /**
     Default instance of the DBClusterRoleNotFoundFault structure.
     */
    static let __default: RDSModel.DBClusterRoleNotFoundFault = {
        let defaultInstance = RDSModel.DBClusterRoleNotFoundFault()

        return defaultInstance
    }()
}

public extension DBClusterRoleQuotaExceededFault {
    /**
     Default instance of the DBClusterRoleQuotaExceededFault structure.
     */
    static let __default: RDSModel.DBClusterRoleQuotaExceededFault = {
        let defaultInstance = RDSModel.DBClusterRoleQuotaExceededFault()

        return defaultInstance
    }()
}

public extension DBClusterSnapshot {
    /**
     Default instance of the DBClusterSnapshot structure.
     */
    static let __default: RDSModel.DBClusterSnapshot = {
        let defaultInstance = RDSModel.DBClusterSnapshot(
            allocatedStorage: nil,
            availabilityZones: nil,
            clusterCreateTime: nil,
            dBClusterIdentifier: nil,
            dBClusterSnapshotArn: nil,
            dBClusterSnapshotIdentifier: nil,
            engine: nil,
            engineMode: nil,
            engineVersion: nil,
            iAMDatabaseAuthenticationEnabled: nil,
            kmsKeyId: nil,
            licenseModel: nil,
            masterUsername: nil,
            percentProgress: nil,
            port: nil,
            snapshotCreateTime: nil,
            snapshotType: nil,
            sourceDBClusterSnapshotArn: nil,
            status: nil,
            storageEncrypted: nil,
            tagList: nil,
            vpcId: nil)

        return defaultInstance
    }()
}

public extension DBClusterSnapshotAlreadyExistsFault {
    /**
     Default instance of the DBClusterSnapshotAlreadyExistsFault structure.
     */
    static let __default: RDSModel.DBClusterSnapshotAlreadyExistsFault = {
        let defaultInstance = RDSModel.DBClusterSnapshotAlreadyExistsFault()

        return defaultInstance
    }()
}

public extension DBClusterSnapshotAttribute {
    /**
     Default instance of the DBClusterSnapshotAttribute structure.
     */
    static let __default: RDSModel.DBClusterSnapshotAttribute = {
        let defaultInstance = RDSModel.DBClusterSnapshotAttribute(
            attributeName: nil,
            attributeValues: nil)

        return defaultInstance
    }()
}

public extension DBClusterSnapshotAttributesResult {
    /**
     Default instance of the DBClusterSnapshotAttributesResult structure.
     */
    static let __default: RDSModel.DBClusterSnapshotAttributesResult = {
        let defaultInstance = RDSModel.DBClusterSnapshotAttributesResult(
            dBClusterSnapshotAttributes: nil,
            dBClusterSnapshotIdentifier: nil)

        return defaultInstance
    }()
}

public extension DBClusterSnapshotMessage {
    /**
     Default instance of the DBClusterSnapshotMessage structure.
     */
    static let __default: RDSModel.DBClusterSnapshotMessage = {
        let defaultInstance = RDSModel.DBClusterSnapshotMessage(
            dBClusterSnapshots: nil,
            marker: nil)

        return defaultInstance
    }()
}

public extension DBClusterSnapshotMessageForDescribeDBClusterSnapshots {
    /**
     Default instance of the DBClusterSnapshotMessageForDescribeDBClusterSnapshots structure.
     */
    static let __default: RDSModel.DBClusterSnapshotMessageForDescribeDBClusterSnapshots = {
        let defaultInstance = RDSModel.DBClusterSnapshotMessageForDescribeDBClusterSnapshots(
            describeDBClusterSnapshotsResult: DBClusterSnapshotMessage.__default)

        return defaultInstance
    }()
}

public extension DBClusterSnapshotNotFoundFault {
    /**
     Default instance of the DBClusterSnapshotNotFoundFault structure.
     */
    static let __default: RDSModel.DBClusterSnapshotNotFoundFault = {
        let defaultInstance = RDSModel.DBClusterSnapshotNotFoundFault()

        return defaultInstance
    }()
}

public extension DBEngineVersion {
    /**
     Default instance of the DBEngineVersion structure.
     */
    static let __default: RDSModel.DBEngineVersion = {
        let defaultInstance = RDSModel.DBEngineVersion(
            dBEngineDescription: nil,
            dBEngineVersionDescription: nil,
            dBParameterGroupFamily: nil,
            defaultCharacterSet: nil,
            engine: nil,
            engineVersion: nil,
            exportableLogTypes: nil,
            status: nil,
            supportedCharacterSets: nil,
            supportedEngineModes: nil,
            supportedFeatureNames: nil,
            supportedNcharCharacterSets: nil,
            supportedTimezones: nil,
            supportsGlobalDatabases: nil,
            supportsLogExportsToCloudwatchLogs: nil,
            supportsParallelQuery: nil,
            supportsReadReplica: nil,
            validUpgradeTarget: nil)

        return defaultInstance
    }()
}

public extension DBEngineVersionMessage {
    /**
     Default instance of the DBEngineVersionMessage structure.
     */
    static let __default: RDSModel.DBEngineVersionMessage = {
        let defaultInstance = RDSModel.DBEngineVersionMessage(
            dBEngineVersions: nil,
            marker: nil)

        return defaultInstance
    }()
}

public extension DBEngineVersionMessageForDescribeDBEngineVersions {
    /**
     Default instance of the DBEngineVersionMessageForDescribeDBEngineVersions structure.
     */
    static let __default: RDSModel.DBEngineVersionMessageForDescribeDBEngineVersions = {
        let defaultInstance = RDSModel.DBEngineVersionMessageForDescribeDBEngineVersions(
            describeDBEngineVersionsResult: DBEngineVersionMessage.__default)

        return defaultInstance
    }()
}

public extension DBInstance {
    /**
     Default instance of the DBInstance structure.
     */
    static let __default: RDSModel.DBInstance = {
        let defaultInstance = RDSModel.DBInstance(
            allocatedStorage: nil,
            associatedRoles: nil,
            autoMinorVersionUpgrade: nil,
            availabilityZone: nil,
            awsBackupRecoveryPointArn: nil,
            backupRetentionPeriod: nil,
            cACertificateIdentifier: nil,
            characterSetName: nil,
            copyTagsToSnapshot: nil,
            customerOwnedIpEnabled: nil,
            dBClusterIdentifier: nil,
            dBInstanceArn: nil,
            dBInstanceAutomatedBackupsReplications: nil,
            dBInstanceClass: nil,
            dBInstanceIdentifier: nil,
            dBInstanceStatus: nil,
            dBName: nil,
            dBParameterGroups: nil,
            dBSecurityGroups: nil,
            dBSubnetGroup: nil,
            dbInstancePort: nil,
            dbiResourceId: nil,
            deletionProtection: nil,
            domainMemberships: nil,
            enabledCloudwatchLogsExports: nil,
            endpoint: nil,
            engine: nil,
            engineVersion: nil,
            enhancedMonitoringResourceArn: nil,
            iAMDatabaseAuthenticationEnabled: nil,
            instanceCreateTime: nil,
            iops: nil,
            kmsKeyId: nil,
            latestRestorableTime: nil,
            licenseModel: nil,
            listenerEndpoint: nil,
            masterUsername: nil,
            maxAllocatedStorage: nil,
            monitoringInterval: nil,
            monitoringRoleArn: nil,
            multiAZ: nil,
            ncharCharacterSetName: nil,
            optionGroupMemberships: nil,
            pendingModifiedValues: nil,
            performanceInsightsEnabled: nil,
            performanceInsightsKMSKeyId: nil,
            performanceInsightsRetentionPeriod: nil,
            preferredBackupWindow: nil,
            preferredMaintenanceWindow: nil,
            processorFeatures: nil,
            promotionTier: nil,
            publiclyAccessible: nil,
            readReplicaDBClusterIdentifiers: nil,
            readReplicaDBInstanceIdentifiers: nil,
            readReplicaSourceDBInstanceIdentifier: nil,
            replicaMode: nil,
            secondaryAvailabilityZone: nil,
            statusInfos: nil,
            storageEncrypted: nil,
            storageType: nil,
            tagList: nil,
            tdeCredentialArn: nil,
            timezone: nil,
            vpcSecurityGroups: nil)

        return defaultInstance
    }()
}

public extension DBInstanceAlreadyExistsFault {
    /**
     Default instance of the DBInstanceAlreadyExistsFault structure.
     */
    static let __default: RDSModel.DBInstanceAlreadyExistsFault = {
        let defaultInstance = RDSModel.DBInstanceAlreadyExistsFault()

        return defaultInstance
    }()
}

public extension DBInstanceAutomatedBackup {
    /**
     Default instance of the DBInstanceAutomatedBackup structure.
     */
    static let __default: RDSModel.DBInstanceAutomatedBackup = {
        let defaultInstance = RDSModel.DBInstanceAutomatedBackup(
            allocatedStorage: nil,
            availabilityZone: nil,
            backupRetentionPeriod: nil,
            dBInstanceArn: nil,
            dBInstanceAutomatedBackupsArn: nil,
            dBInstanceAutomatedBackupsReplications: nil,
            dBInstanceIdentifier: nil,
            dbiResourceId: nil,
            encrypted: nil,
            engine: nil,
            engineVersion: nil,
            iAMDatabaseAuthenticationEnabled: nil,
            instanceCreateTime: nil,
            iops: nil,
            kmsKeyId: nil,
            licenseModel: nil,
            masterUsername: nil,
            optionGroupName: nil,
            port: nil,
            region: nil,
            restoreWindow: nil,
            status: nil,
            storageType: nil,
            tdeCredentialArn: nil,
            timezone: nil,
            vpcId: nil)

        return defaultInstance
    }()
}

public extension DBInstanceAutomatedBackupMessage {
    /**
     Default instance of the DBInstanceAutomatedBackupMessage structure.
     */
    static let __default: RDSModel.DBInstanceAutomatedBackupMessage = {
        let defaultInstance = RDSModel.DBInstanceAutomatedBackupMessage(
            dBInstanceAutomatedBackups: nil,
            marker: nil)

        return defaultInstance
    }()
}

public extension DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups {
    /**
     Default instance of the DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups structure.
     */
    static let __default: RDSModel.DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups = {
        let defaultInstance = RDSModel.DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups(
            describeDBInstanceAutomatedBackupsResult: DBInstanceAutomatedBackupMessage.__default)

        return defaultInstance
    }()
}

public extension DBInstanceAutomatedBackupNotFoundFault {
    /**
     Default instance of the DBInstanceAutomatedBackupNotFoundFault structure.
     */
    static let __default: RDSModel.DBInstanceAutomatedBackupNotFoundFault = {
        let defaultInstance = RDSModel.DBInstanceAutomatedBackupNotFoundFault()

        return defaultInstance
    }()
}

public extension DBInstanceAutomatedBackupQuotaExceededFault {
    /**
     Default instance of the DBInstanceAutomatedBackupQuotaExceededFault structure.
     */
    static let __default: RDSModel.DBInstanceAutomatedBackupQuotaExceededFault = {
        let defaultInstance = RDSModel.DBInstanceAutomatedBackupQuotaExceededFault()

        return defaultInstance
    }()
}

public extension DBInstanceAutomatedBackupsReplication {
    /**
     Default instance of the DBInstanceAutomatedBackupsReplication structure.
     */
    static let __default: RDSModel.DBInstanceAutomatedBackupsReplication = {
        let defaultInstance = RDSModel.DBInstanceAutomatedBackupsReplication(
            dBInstanceAutomatedBackupsArn: nil)

        return defaultInstance
    }()
}

public extension DBInstanceMessage {
    /**
     Default instance of the DBInstanceMessage structure.
     */
    static let __default: RDSModel.DBInstanceMessage = {
        let defaultInstance = RDSModel.DBInstanceMessage(
            dBInstances: nil,
            marker: nil)

        return defaultInstance
    }()
}

public extension DBInstanceMessageForDescribeDBInstances {
    /**
     Default instance of the DBInstanceMessageForDescribeDBInstances structure.
     */
    static let __default: RDSModel.DBInstanceMessageForDescribeDBInstances = {
        let defaultInstance = RDSModel.DBInstanceMessageForDescribeDBInstances(
            describeDBInstancesResult: DBInstanceMessage.__default)

        return defaultInstance
    }()
}

public extension DBInstanceNotFoundFault {
    /**
     Default instance of the DBInstanceNotFoundFault structure.
     */
    static let __default: RDSModel.DBInstanceNotFoundFault = {
        let defaultInstance = RDSModel.DBInstanceNotFoundFault()

        return defaultInstance
    }()
}

public extension DBInstanceRole {
    /**
     Default instance of the DBInstanceRole structure.
     */
    static let __default: RDSModel.DBInstanceRole = {
        let defaultInstance = RDSModel.DBInstanceRole(
            featureName: nil,
            roleArn: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension DBInstanceRoleAlreadyExistsFault {
    /**
     Default instance of the DBInstanceRoleAlreadyExistsFault structure.
     */
    static let __default: RDSModel.DBInstanceRoleAlreadyExistsFault = {
        let defaultInstance = RDSModel.DBInstanceRoleAlreadyExistsFault()

        return defaultInstance
    }()
}

public extension DBInstanceRoleNotFoundFault {
    /**
     Default instance of the DBInstanceRoleNotFoundFault structure.
     */
    static let __default: RDSModel.DBInstanceRoleNotFoundFault = {
        let defaultInstance = RDSModel.DBInstanceRoleNotFoundFault()

        return defaultInstance
    }()
}

public extension DBInstanceRoleQuotaExceededFault {
    /**
     Default instance of the DBInstanceRoleQuotaExceededFault structure.
     */
    static let __default: RDSModel.DBInstanceRoleQuotaExceededFault = {
        let defaultInstance = RDSModel.DBInstanceRoleQuotaExceededFault()

        return defaultInstance
    }()
}

public extension DBInstanceStatusInfo {
    /**
     Default instance of the DBInstanceStatusInfo structure.
     */
    static let __default: RDSModel.DBInstanceStatusInfo = {
        let defaultInstance = RDSModel.DBInstanceStatusInfo(
            message: nil,
            normal: nil,
            status: nil,
            statusType: nil)

        return defaultInstance
    }()
}

public extension DBLogFileNotFoundFault {
    /**
     Default instance of the DBLogFileNotFoundFault structure.
     */
    static let __default: RDSModel.DBLogFileNotFoundFault = {
        let defaultInstance = RDSModel.DBLogFileNotFoundFault()

        return defaultInstance
    }()
}

public extension DBParameterGroup {
    /**
     Default instance of the DBParameterGroup structure.
     */
    static let __default: RDSModel.DBParameterGroup = {
        let defaultInstance = RDSModel.DBParameterGroup(
            dBParameterGroupArn: nil,
            dBParameterGroupFamily: nil,
            dBParameterGroupName: nil,
            description: nil)

        return defaultInstance
    }()
}

public extension DBParameterGroupAlreadyExistsFault {
    /**
     Default instance of the DBParameterGroupAlreadyExistsFault structure.
     */
    static let __default: RDSModel.DBParameterGroupAlreadyExistsFault = {
        let defaultInstance = RDSModel.DBParameterGroupAlreadyExistsFault()

        return defaultInstance
    }()
}

public extension DBParameterGroupDetails {
    /**
     Default instance of the DBParameterGroupDetails structure.
     */
    static let __default: RDSModel.DBParameterGroupDetails = {
        let defaultInstance = RDSModel.DBParameterGroupDetails(
            marker: nil,
            parameters: nil)

        return defaultInstance
    }()
}

public extension DBParameterGroupDetailsForDescribeDBParameters {
    /**
     Default instance of the DBParameterGroupDetailsForDescribeDBParameters structure.
     */
    static let __default: RDSModel.DBParameterGroupDetailsForDescribeDBParameters = {
        let defaultInstance = RDSModel.DBParameterGroupDetailsForDescribeDBParameters(
            describeDBParametersResult: DBParameterGroupDetails.__default)

        return defaultInstance
    }()
}

public extension DBParameterGroupNameMessage {
    /**
     Default instance of the DBParameterGroupNameMessage structure.
     */
    static let __default: RDSModel.DBParameterGroupNameMessage = {
        let defaultInstance = RDSModel.DBParameterGroupNameMessage(
            dBParameterGroupName: nil)

        return defaultInstance
    }()
}

public extension DBParameterGroupNameMessageForModifyDBParameterGroup {
    /**
     Default instance of the DBParameterGroupNameMessageForModifyDBParameterGroup structure.
     */
    static let __default: RDSModel.DBParameterGroupNameMessageForModifyDBParameterGroup = {
        let defaultInstance = RDSModel.DBParameterGroupNameMessageForModifyDBParameterGroup(
            modifyDBParameterGroupResult: DBParameterGroupNameMessage.__default)

        return defaultInstance
    }()
}

public extension DBParameterGroupNameMessageForResetDBParameterGroup {
    /**
     Default instance of the DBParameterGroupNameMessageForResetDBParameterGroup structure.
     */
    static let __default: RDSModel.DBParameterGroupNameMessageForResetDBParameterGroup = {
        let defaultInstance = RDSModel.DBParameterGroupNameMessageForResetDBParameterGroup(
            resetDBParameterGroupResult: DBParameterGroupNameMessage.__default)

        return defaultInstance
    }()
}

public extension DBParameterGroupNotFoundFault {
    /**
     Default instance of the DBParameterGroupNotFoundFault structure.
     */
    static let __default: RDSModel.DBParameterGroupNotFoundFault = {
        let defaultInstance = RDSModel.DBParameterGroupNotFoundFault()

        return defaultInstance
    }()
}

public extension DBParameterGroupQuotaExceededFault {
    /**
     Default instance of the DBParameterGroupQuotaExceededFault structure.
     */
    static let __default: RDSModel.DBParameterGroupQuotaExceededFault = {
        let defaultInstance = RDSModel.DBParameterGroupQuotaExceededFault()

        return defaultInstance
    }()
}

public extension DBParameterGroupStatus {
    /**
     Default instance of the DBParameterGroupStatus structure.
     */
    static let __default: RDSModel.DBParameterGroupStatus = {
        let defaultInstance = RDSModel.DBParameterGroupStatus(
            dBParameterGroupName: nil,
            parameterApplyStatus: nil)

        return defaultInstance
    }()
}

public extension DBParameterGroupsMessage {
    /**
     Default instance of the DBParameterGroupsMessage structure.
     */
    static let __default: RDSModel.DBParameterGroupsMessage = {
        let defaultInstance = RDSModel.DBParameterGroupsMessage(
            dBParameterGroups: nil,
            marker: nil)

        return defaultInstance
    }()
}

public extension DBParameterGroupsMessageForDescribeDBParameterGroups {
    /**
     Default instance of the DBParameterGroupsMessageForDescribeDBParameterGroups structure.
     */
    static let __default: RDSModel.DBParameterGroupsMessageForDescribeDBParameterGroups = {
        let defaultInstance = RDSModel.DBParameterGroupsMessageForDescribeDBParameterGroups(
            describeDBParameterGroupsResult: DBParameterGroupsMessage.__default)

        return defaultInstance
    }()
}

public extension DBProxy {
    /**
     Default instance of the DBProxy structure.
     */
    static let __default: RDSModel.DBProxy = {
        let defaultInstance = RDSModel.DBProxy(
            auth: nil,
            createdDate: nil,
            dBProxyArn: nil,
            dBProxyName: nil,
            debugLogging: nil,
            endpoint: nil,
            engineFamily: nil,
            idleClientTimeout: nil,
            requireTLS: nil,
            roleArn: nil,
            status: nil,
            updatedDate: nil,
            vpcId: nil,
            vpcSecurityGroupIds: nil,
            vpcSubnetIds: nil)

        return defaultInstance
    }()
}

public extension DBProxyAlreadyExistsFault {
    /**
     Default instance of the DBProxyAlreadyExistsFault structure.
     */
    static let __default: RDSModel.DBProxyAlreadyExistsFault = {
        let defaultInstance = RDSModel.DBProxyAlreadyExistsFault()

        return defaultInstance
    }()
}

public extension DBProxyEndpoint {
    /**
     Default instance of the DBProxyEndpoint structure.
     */
    static let __default: RDSModel.DBProxyEndpoint = {
        let defaultInstance = RDSModel.DBProxyEndpoint(
            createdDate: nil,
            dBProxyEndpointArn: nil,
            dBProxyEndpointName: nil,
            dBProxyName: nil,
            endpoint: nil,
            isDefault: nil,
            status: nil,
            targetRole: nil,
            vpcId: nil,
            vpcSecurityGroupIds: nil,
            vpcSubnetIds: nil)

        return defaultInstance
    }()
}

public extension DBProxyEndpointAlreadyExistsFault {
    /**
     Default instance of the DBProxyEndpointAlreadyExistsFault structure.
     */
    static let __default: RDSModel.DBProxyEndpointAlreadyExistsFault = {
        let defaultInstance = RDSModel.DBProxyEndpointAlreadyExistsFault()

        return defaultInstance
    }()
}

public extension DBProxyEndpointNotFoundFault {
    /**
     Default instance of the DBProxyEndpointNotFoundFault structure.
     */
    static let __default: RDSModel.DBProxyEndpointNotFoundFault = {
        let defaultInstance = RDSModel.DBProxyEndpointNotFoundFault()

        return defaultInstance
    }()
}

public extension DBProxyEndpointQuotaExceededFault {
    /**
     Default instance of the DBProxyEndpointQuotaExceededFault structure.
     */
    static let __default: RDSModel.DBProxyEndpointQuotaExceededFault = {
        let defaultInstance = RDSModel.DBProxyEndpointQuotaExceededFault()

        return defaultInstance
    }()
}

public extension DBProxyNotFoundFault {
    /**
     Default instance of the DBProxyNotFoundFault structure.
     */
    static let __default: RDSModel.DBProxyNotFoundFault = {
        let defaultInstance = RDSModel.DBProxyNotFoundFault()

        return defaultInstance
    }()
}

public extension DBProxyQuotaExceededFault {
    /**
     Default instance of the DBProxyQuotaExceededFault structure.
     */
    static let __default: RDSModel.DBProxyQuotaExceededFault = {
        let defaultInstance = RDSModel.DBProxyQuotaExceededFault()

        return defaultInstance
    }()
}

public extension DBProxyTarget {
    /**
     Default instance of the DBProxyTarget structure.
     */
    static let __default: RDSModel.DBProxyTarget = {
        let defaultInstance = RDSModel.DBProxyTarget(
            endpoint: nil,
            port: nil,
            rdsResourceId: nil,
            role: nil,
            targetArn: nil,
            targetHealth: nil,
            trackedClusterId: nil,
            type: nil)

        return defaultInstance
    }()
}

public extension DBProxyTargetAlreadyRegisteredFault {
    /**
     Default instance of the DBProxyTargetAlreadyRegisteredFault structure.
     */
    static let __default: RDSModel.DBProxyTargetAlreadyRegisteredFault = {
        let defaultInstance = RDSModel.DBProxyTargetAlreadyRegisteredFault()

        return defaultInstance
    }()
}

public extension DBProxyTargetGroup {
    /**
     Default instance of the DBProxyTargetGroup structure.
     */
    static let __default: RDSModel.DBProxyTargetGroup = {
        let defaultInstance = RDSModel.DBProxyTargetGroup(
            connectionPoolConfig: nil,
            createdDate: nil,
            dBProxyName: nil,
            isDefault: nil,
            status: nil,
            targetGroupArn: nil,
            targetGroupName: nil,
            updatedDate: nil)

        return defaultInstance
    }()
}

public extension DBProxyTargetGroupNotFoundFault {
    /**
     Default instance of the DBProxyTargetGroupNotFoundFault structure.
     */
    static let __default: RDSModel.DBProxyTargetGroupNotFoundFault = {
        let defaultInstance = RDSModel.DBProxyTargetGroupNotFoundFault()

        return defaultInstance
    }()
}

public extension DBProxyTargetNotFoundFault {
    /**
     Default instance of the DBProxyTargetNotFoundFault structure.
     */
    static let __default: RDSModel.DBProxyTargetNotFoundFault = {
        let defaultInstance = RDSModel.DBProxyTargetNotFoundFault()

        return defaultInstance
    }()
}

public extension DBSecurityGroup {
    /**
     Default instance of the DBSecurityGroup structure.
     */
    static let __default: RDSModel.DBSecurityGroup = {
        let defaultInstance = RDSModel.DBSecurityGroup(
            dBSecurityGroupArn: nil,
            dBSecurityGroupDescription: nil,
            dBSecurityGroupName: nil,
            eC2SecurityGroups: nil,
            iPRanges: nil,
            ownerId: nil,
            vpcId: nil)

        return defaultInstance
    }()
}

public extension DBSecurityGroupAlreadyExistsFault {
    /**
     Default instance of the DBSecurityGroupAlreadyExistsFault structure.
     */
    static let __default: RDSModel.DBSecurityGroupAlreadyExistsFault = {
        let defaultInstance = RDSModel.DBSecurityGroupAlreadyExistsFault()

        return defaultInstance
    }()
}

public extension DBSecurityGroupMembership {
    /**
     Default instance of the DBSecurityGroupMembership structure.
     */
    static let __default: RDSModel.DBSecurityGroupMembership = {
        let defaultInstance = RDSModel.DBSecurityGroupMembership(
            dBSecurityGroupName: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension DBSecurityGroupMessage {
    /**
     Default instance of the DBSecurityGroupMessage structure.
     */
    static let __default: RDSModel.DBSecurityGroupMessage = {
        let defaultInstance = RDSModel.DBSecurityGroupMessage(
            dBSecurityGroups: nil,
            marker: nil)

        return defaultInstance
    }()
}

public extension DBSecurityGroupMessageForDescribeDBSecurityGroups {
    /**
     Default instance of the DBSecurityGroupMessageForDescribeDBSecurityGroups structure.
     */
    static let __default: RDSModel.DBSecurityGroupMessageForDescribeDBSecurityGroups = {
        let defaultInstance = RDSModel.DBSecurityGroupMessageForDescribeDBSecurityGroups(
            describeDBSecurityGroupsResult: DBSecurityGroupMessage.__default)

        return defaultInstance
    }()
}

public extension DBSecurityGroupNotFoundFault {
    /**
     Default instance of the DBSecurityGroupNotFoundFault structure.
     */
    static let __default: RDSModel.DBSecurityGroupNotFoundFault = {
        let defaultInstance = RDSModel.DBSecurityGroupNotFoundFault()

        return defaultInstance
    }()
}

public extension DBSecurityGroupNotSupportedFault {
    /**
     Default instance of the DBSecurityGroupNotSupportedFault structure.
     */
    static let __default: RDSModel.DBSecurityGroupNotSupportedFault = {
        let defaultInstance = RDSModel.DBSecurityGroupNotSupportedFault()

        return defaultInstance
    }()
}

public extension DBSecurityGroupQuotaExceededFault {
    /**
     Default instance of the DBSecurityGroupQuotaExceededFault structure.
     */
    static let __default: RDSModel.DBSecurityGroupQuotaExceededFault = {
        let defaultInstance = RDSModel.DBSecurityGroupQuotaExceededFault()

        return defaultInstance
    }()
}

public extension DBSnapshot {
    /**
     Default instance of the DBSnapshot structure.
     */
    static let __default: RDSModel.DBSnapshot = {
        let defaultInstance = RDSModel.DBSnapshot(
            allocatedStorage: nil,
            availabilityZone: nil,
            dBInstanceIdentifier: nil,
            dBSnapshotArn: nil,
            dBSnapshotIdentifier: nil,
            dbiResourceId: nil,
            encrypted: nil,
            engine: nil,
            engineVersion: nil,
            iAMDatabaseAuthenticationEnabled: nil,
            instanceCreateTime: nil,
            iops: nil,
            kmsKeyId: nil,
            licenseModel: nil,
            masterUsername: nil,
            optionGroupName: nil,
            percentProgress: nil,
            port: nil,
            processorFeatures: nil,
            snapshotCreateTime: nil,
            snapshotType: nil,
            sourceDBSnapshotIdentifier: nil,
            sourceRegion: nil,
            status: nil,
            storageType: nil,
            tagList: nil,
            tdeCredentialArn: nil,
            timezone: nil,
            vpcId: nil)

        return defaultInstance
    }()
}

public extension DBSnapshotAlreadyExistsFault {
    /**
     Default instance of the DBSnapshotAlreadyExistsFault structure.
     */
    static let __default: RDSModel.DBSnapshotAlreadyExistsFault = {
        let defaultInstance = RDSModel.DBSnapshotAlreadyExistsFault()

        return defaultInstance
    }()
}

public extension DBSnapshotAttribute {
    /**
     Default instance of the DBSnapshotAttribute structure.
     */
    static let __default: RDSModel.DBSnapshotAttribute = {
        let defaultInstance = RDSModel.DBSnapshotAttribute(
            attributeName: nil,
            attributeValues: nil)

        return defaultInstance
    }()
}

public extension DBSnapshotAttributesResult {
    /**
     Default instance of the DBSnapshotAttributesResult structure.
     */
    static let __default: RDSModel.DBSnapshotAttributesResult = {
        let defaultInstance = RDSModel.DBSnapshotAttributesResult(
            dBSnapshotAttributes: nil,
            dBSnapshotIdentifier: nil)

        return defaultInstance
    }()
}

public extension DBSnapshotMessage {
    /**
     Default instance of the DBSnapshotMessage structure.
     */
    static let __default: RDSModel.DBSnapshotMessage = {
        let defaultInstance = RDSModel.DBSnapshotMessage(
            dBSnapshots: nil,
            marker: nil)

        return defaultInstance
    }()
}

public extension DBSnapshotMessageForDescribeDBSnapshots {
    /**
     Default instance of the DBSnapshotMessageForDescribeDBSnapshots structure.
     */
    static let __default: RDSModel.DBSnapshotMessageForDescribeDBSnapshots = {
        let defaultInstance = RDSModel.DBSnapshotMessageForDescribeDBSnapshots(
            describeDBSnapshotsResult: DBSnapshotMessage.__default)

        return defaultInstance
    }()
}

public extension DBSnapshotNotFoundFault {
    /**
     Default instance of the DBSnapshotNotFoundFault structure.
     */
    static let __default: RDSModel.DBSnapshotNotFoundFault = {
        let defaultInstance = RDSModel.DBSnapshotNotFoundFault()

        return defaultInstance
    }()
}

public extension DBSubnetGroup {
    /**
     Default instance of the DBSubnetGroup structure.
     */
    static let __default: RDSModel.DBSubnetGroup = {
        let defaultInstance = RDSModel.DBSubnetGroup(
            dBSubnetGroupArn: nil,
            dBSubnetGroupDescription: nil,
            dBSubnetGroupName: nil,
            subnetGroupStatus: nil,
            subnets: nil,
            vpcId: nil)

        return defaultInstance
    }()
}

public extension DBSubnetGroupAlreadyExistsFault {
    /**
     Default instance of the DBSubnetGroupAlreadyExistsFault structure.
     */
    static let __default: RDSModel.DBSubnetGroupAlreadyExistsFault = {
        let defaultInstance = RDSModel.DBSubnetGroupAlreadyExistsFault()

        return defaultInstance
    }()
}

public extension DBSubnetGroupDoesNotCoverEnoughAZs {
    /**
     Default instance of the DBSubnetGroupDoesNotCoverEnoughAZs structure.
     */
    static let __default: RDSModel.DBSubnetGroupDoesNotCoverEnoughAZs = {
        let defaultInstance = RDSModel.DBSubnetGroupDoesNotCoverEnoughAZs()

        return defaultInstance
    }()
}

public extension DBSubnetGroupMessage {
    /**
     Default instance of the DBSubnetGroupMessage structure.
     */
    static let __default: RDSModel.DBSubnetGroupMessage = {
        let defaultInstance = RDSModel.DBSubnetGroupMessage(
            dBSubnetGroups: nil,
            marker: nil)

        return defaultInstance
    }()
}

public extension DBSubnetGroupMessageForDescribeDBSubnetGroups {
    /**
     Default instance of the DBSubnetGroupMessageForDescribeDBSubnetGroups structure.
     */
    static let __default: RDSModel.DBSubnetGroupMessageForDescribeDBSubnetGroups = {
        let defaultInstance = RDSModel.DBSubnetGroupMessageForDescribeDBSubnetGroups(
            describeDBSubnetGroupsResult: DBSubnetGroupMessage.__default)

        return defaultInstance
    }()
}

public extension DBSubnetGroupNotAllowedFault {
    /**
     Default instance of the DBSubnetGroupNotAllowedFault structure.
     */
    static let __default: RDSModel.DBSubnetGroupNotAllowedFault = {
        let defaultInstance = RDSModel.DBSubnetGroupNotAllowedFault()

        return defaultInstance
    }()
}

public extension DBSubnetGroupNotFoundFault {
    /**
     Default instance of the DBSubnetGroupNotFoundFault structure.
     */
    static let __default: RDSModel.DBSubnetGroupNotFoundFault = {
        let defaultInstance = RDSModel.DBSubnetGroupNotFoundFault()

        return defaultInstance
    }()
}

public extension DBSubnetGroupQuotaExceededFault {
    /**
     Default instance of the DBSubnetGroupQuotaExceededFault structure.
     */
    static let __default: RDSModel.DBSubnetGroupQuotaExceededFault = {
        let defaultInstance = RDSModel.DBSubnetGroupQuotaExceededFault()

        return defaultInstance
    }()
}

public extension DBSubnetQuotaExceededFault {
    /**
     Default instance of the DBSubnetQuotaExceededFault structure.
     */
    static let __default: RDSModel.DBSubnetQuotaExceededFault = {
        let defaultInstance = RDSModel.DBSubnetQuotaExceededFault()

        return defaultInstance
    }()
}

public extension DBUpgradeDependencyFailureFault {
    /**
     Default instance of the DBUpgradeDependencyFailureFault structure.
     */
    static let __default: RDSModel.DBUpgradeDependencyFailureFault = {
        let defaultInstance = RDSModel.DBUpgradeDependencyFailureFault()

        return defaultInstance
    }()
}

public extension DeleteCustomAvailabilityZoneMessage {
    /**
     Default instance of the DeleteCustomAvailabilityZoneMessage structure.
     */
    static let __default: RDSModel.DeleteCustomAvailabilityZoneMessage = {
        let defaultInstance = RDSModel.DeleteCustomAvailabilityZoneMessage(
            customAvailabilityZoneId: "value")

        return defaultInstance
    }()
}

public extension DeleteCustomAvailabilityZoneResult {
    /**
     Default instance of the DeleteCustomAvailabilityZoneResult structure.
     */
    static let __default: RDSModel.DeleteCustomAvailabilityZoneResult = {
        let defaultInstance = RDSModel.DeleteCustomAvailabilityZoneResult(
            customAvailabilityZone: nil)

        return defaultInstance
    }()
}

public extension DeleteCustomAvailabilityZoneResultForDeleteCustomAvailabilityZone {
    /**
     Default instance of the DeleteCustomAvailabilityZoneResultForDeleteCustomAvailabilityZone structure.
     */
    static let __default: RDSModel.DeleteCustomAvailabilityZoneResultForDeleteCustomAvailabilityZone = {
        let defaultInstance = RDSModel.DeleteCustomAvailabilityZoneResultForDeleteCustomAvailabilityZone(
            deleteCustomAvailabilityZoneResult: DeleteCustomAvailabilityZoneResult.__default)

        return defaultInstance
    }()
}

public extension DeleteDBClusterEndpointMessage {
    /**
     Default instance of the DeleteDBClusterEndpointMessage structure.
     */
    static let __default: RDSModel.DeleteDBClusterEndpointMessage = {
        let defaultInstance = RDSModel.DeleteDBClusterEndpointMessage(
            dBClusterEndpointIdentifier: "value")

        return defaultInstance
    }()
}

public extension DeleteDBClusterMessage {
    /**
     Default instance of the DeleteDBClusterMessage structure.
     */
    static let __default: RDSModel.DeleteDBClusterMessage = {
        let defaultInstance = RDSModel.DeleteDBClusterMessage(
            dBClusterIdentifier: "value",
            finalDBSnapshotIdentifier: nil,
            skipFinalSnapshot: nil)

        return defaultInstance
    }()
}

public extension DeleteDBClusterParameterGroupMessage {
    /**
     Default instance of the DeleteDBClusterParameterGroupMessage structure.
     */
    static let __default: RDSModel.DeleteDBClusterParameterGroupMessage = {
        let defaultInstance = RDSModel.DeleteDBClusterParameterGroupMessage(
            dBClusterParameterGroupName: "value")

        return defaultInstance
    }()
}

public extension DeleteDBClusterResult {
    /**
     Default instance of the DeleteDBClusterResult structure.
     */
    static let __default: RDSModel.DeleteDBClusterResult = {
        let defaultInstance = RDSModel.DeleteDBClusterResult(
            dBCluster: nil)

        return defaultInstance
    }()
}

public extension DeleteDBClusterResultForDeleteDBCluster {
    /**
     Default instance of the DeleteDBClusterResultForDeleteDBCluster structure.
     */
    static let __default: RDSModel.DeleteDBClusterResultForDeleteDBCluster = {
        let defaultInstance = RDSModel.DeleteDBClusterResultForDeleteDBCluster(
            deleteDBClusterResult: DeleteDBClusterResult.__default)

        return defaultInstance
    }()
}

public extension DeleteDBClusterSnapshotMessage {
    /**
     Default instance of the DeleteDBClusterSnapshotMessage structure.
     */
    static let __default: RDSModel.DeleteDBClusterSnapshotMessage = {
        let defaultInstance = RDSModel.DeleteDBClusterSnapshotMessage(
            dBClusterSnapshotIdentifier: "value")

        return defaultInstance
    }()
}

public extension DeleteDBClusterSnapshotResult {
    /**
     Default instance of the DeleteDBClusterSnapshotResult structure.
     */
    static let __default: RDSModel.DeleteDBClusterSnapshotResult = {
        let defaultInstance = RDSModel.DeleteDBClusterSnapshotResult(
            dBClusterSnapshot: nil)

        return defaultInstance
    }()
}

public extension DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot {
    /**
     Default instance of the DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot structure.
     */
    static let __default: RDSModel.DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot = {
        let defaultInstance = RDSModel.DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot(
            deleteDBClusterSnapshotResult: DeleteDBClusterSnapshotResult.__default)

        return defaultInstance
    }()
}

public extension DeleteDBInstanceAutomatedBackupMessage {
    /**
     Default instance of the DeleteDBInstanceAutomatedBackupMessage structure.
     */
    static let __default: RDSModel.DeleteDBInstanceAutomatedBackupMessage = {
        let defaultInstance = RDSModel.DeleteDBInstanceAutomatedBackupMessage(
            dBInstanceAutomatedBackupsArn: nil,
            dbiResourceId: nil)

        return defaultInstance
    }()
}

public extension DeleteDBInstanceAutomatedBackupResult {
    /**
     Default instance of the DeleteDBInstanceAutomatedBackupResult structure.
     */
    static let __default: RDSModel.DeleteDBInstanceAutomatedBackupResult = {
        let defaultInstance = RDSModel.DeleteDBInstanceAutomatedBackupResult(
            dBInstanceAutomatedBackup: nil)

        return defaultInstance
    }()
}

public extension DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup {
    /**
     Default instance of the DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup structure.
     */
    static let __default: RDSModel.DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup = {
        let defaultInstance = RDSModel.DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup(
            deleteDBInstanceAutomatedBackupResult: DeleteDBInstanceAutomatedBackupResult.__default)

        return defaultInstance
    }()
}

public extension DeleteDBInstanceMessage {
    /**
     Default instance of the DeleteDBInstanceMessage structure.
     */
    static let __default: RDSModel.DeleteDBInstanceMessage = {
        let defaultInstance = RDSModel.DeleteDBInstanceMessage(
            dBInstanceIdentifier: "value",
            deleteAutomatedBackups: nil,
            finalDBSnapshotIdentifier: nil,
            skipFinalSnapshot: nil)

        return defaultInstance
    }()
}

public extension DeleteDBInstanceResult {
    /**
     Default instance of the DeleteDBInstanceResult structure.
     */
    static let __default: RDSModel.DeleteDBInstanceResult = {
        let defaultInstance = RDSModel.DeleteDBInstanceResult(
            dBInstance: nil)

        return defaultInstance
    }()
}

public extension DeleteDBInstanceResultForDeleteDBInstance {
    /**
     Default instance of the DeleteDBInstanceResultForDeleteDBInstance structure.
     */
    static let __default: RDSModel.DeleteDBInstanceResultForDeleteDBInstance = {
        let defaultInstance = RDSModel.DeleteDBInstanceResultForDeleteDBInstance(
            deleteDBInstanceResult: DeleteDBInstanceResult.__default)

        return defaultInstance
    }()
}

public extension DeleteDBParameterGroupMessage {
    /**
     Default instance of the DeleteDBParameterGroupMessage structure.
     */
    static let __default: RDSModel.DeleteDBParameterGroupMessage = {
        let defaultInstance = RDSModel.DeleteDBParameterGroupMessage(
            dBParameterGroupName: "value")

        return defaultInstance
    }()
}

public extension DeleteDBProxyEndpointRequest {
    /**
     Default instance of the DeleteDBProxyEndpointRequest structure.
     */
    static let __default: RDSModel.DeleteDBProxyEndpointRequest = {
        let defaultInstance = RDSModel.DeleteDBProxyEndpointRequest(
            dBProxyEndpointName: "0")

        return defaultInstance
    }()
}

public extension DeleteDBProxyEndpointResponse {
    /**
     Default instance of the DeleteDBProxyEndpointResponse structure.
     */
    static let __default: RDSModel.DeleteDBProxyEndpointResponse = {
        let defaultInstance = RDSModel.DeleteDBProxyEndpointResponse(
            dBProxyEndpoint: nil)

        return defaultInstance
    }()
}

public extension DeleteDBProxyEndpointResponseForDeleteDBProxyEndpoint {
    /**
     Default instance of the DeleteDBProxyEndpointResponseForDeleteDBProxyEndpoint structure.
     */
    static let __default: RDSModel.DeleteDBProxyEndpointResponseForDeleteDBProxyEndpoint = {
        let defaultInstance = RDSModel.DeleteDBProxyEndpointResponseForDeleteDBProxyEndpoint(
            deleteDBProxyEndpointResult: DeleteDBProxyEndpointResponse.__default)

        return defaultInstance
    }()
}

public extension DeleteDBProxyRequest {
    /**
     Default instance of the DeleteDBProxyRequest structure.
     */
    static let __default: RDSModel.DeleteDBProxyRequest = {
        let defaultInstance = RDSModel.DeleteDBProxyRequest(
            dBProxyName: "value")

        return defaultInstance
    }()
}

public extension DeleteDBProxyResponse {
    /**
     Default instance of the DeleteDBProxyResponse structure.
     */
    static let __default: RDSModel.DeleteDBProxyResponse = {
        let defaultInstance = RDSModel.DeleteDBProxyResponse(
            dBProxy: nil)

        return defaultInstance
    }()
}

public extension DeleteDBProxyResponseForDeleteDBProxy {
    /**
     Default instance of the DeleteDBProxyResponseForDeleteDBProxy structure.
     */
    static let __default: RDSModel.DeleteDBProxyResponseForDeleteDBProxy = {
        let defaultInstance = RDSModel.DeleteDBProxyResponseForDeleteDBProxy(
            deleteDBProxyResult: DeleteDBProxyResponse.__default)

        return defaultInstance
    }()
}

public extension DeleteDBSecurityGroupMessage {
    /**
     Default instance of the DeleteDBSecurityGroupMessage structure.
     */
    static let __default: RDSModel.DeleteDBSecurityGroupMessage = {
        let defaultInstance = RDSModel.DeleteDBSecurityGroupMessage(
            dBSecurityGroupName: "value")

        return defaultInstance
    }()
}

public extension DeleteDBSnapshotMessage {
    /**
     Default instance of the DeleteDBSnapshotMessage structure.
     */
    static let __default: RDSModel.DeleteDBSnapshotMessage = {
        let defaultInstance = RDSModel.DeleteDBSnapshotMessage(
            dBSnapshotIdentifier: "value")

        return defaultInstance
    }()
}

public extension DeleteDBSnapshotResult {
    /**
     Default instance of the DeleteDBSnapshotResult structure.
     */
    static let __default: RDSModel.DeleteDBSnapshotResult = {
        let defaultInstance = RDSModel.DeleteDBSnapshotResult(
            dBSnapshot: nil)

        return defaultInstance
    }()
}

public extension DeleteDBSnapshotResultForDeleteDBSnapshot {
    /**
     Default instance of the DeleteDBSnapshotResultForDeleteDBSnapshot structure.
     */
    static let __default: RDSModel.DeleteDBSnapshotResultForDeleteDBSnapshot = {
        let defaultInstance = RDSModel.DeleteDBSnapshotResultForDeleteDBSnapshot(
            deleteDBSnapshotResult: DeleteDBSnapshotResult.__default)

        return defaultInstance
    }()
}

public extension DeleteDBSubnetGroupMessage {
    /**
     Default instance of the DeleteDBSubnetGroupMessage structure.
     */
    static let __default: RDSModel.DeleteDBSubnetGroupMessage = {
        let defaultInstance = RDSModel.DeleteDBSubnetGroupMessage(
            dBSubnetGroupName: "value")

        return defaultInstance
    }()
}

public extension DeleteEventSubscriptionMessage {
    /**
     Default instance of the DeleteEventSubscriptionMessage structure.
     */
    static let __default: RDSModel.DeleteEventSubscriptionMessage = {
        let defaultInstance = RDSModel.DeleteEventSubscriptionMessage(
            subscriptionName: "value")

        return defaultInstance
    }()
}

public extension DeleteEventSubscriptionResult {
    /**
     Default instance of the DeleteEventSubscriptionResult structure.
     */
    static let __default: RDSModel.DeleteEventSubscriptionResult = {
        let defaultInstance = RDSModel.DeleteEventSubscriptionResult(
            eventSubscription: nil)

        return defaultInstance
    }()
}

public extension DeleteEventSubscriptionResultForDeleteEventSubscription {
    /**
     Default instance of the DeleteEventSubscriptionResultForDeleteEventSubscription structure.
     */
    static let __default: RDSModel.DeleteEventSubscriptionResultForDeleteEventSubscription = {
        let defaultInstance = RDSModel.DeleteEventSubscriptionResultForDeleteEventSubscription(
            deleteEventSubscriptionResult: DeleteEventSubscriptionResult.__default)

        return defaultInstance
    }()
}

public extension DeleteGlobalClusterMessage {
    /**
     Default instance of the DeleteGlobalClusterMessage structure.
     */
    static let __default: RDSModel.DeleteGlobalClusterMessage = {
        let defaultInstance = RDSModel.DeleteGlobalClusterMessage(
            globalClusterIdentifier: "value")

        return defaultInstance
    }()
}

public extension DeleteGlobalClusterResult {
    /**
     Default instance of the DeleteGlobalClusterResult structure.
     */
    static let __default: RDSModel.DeleteGlobalClusterResult = {
        let defaultInstance = RDSModel.DeleteGlobalClusterResult(
            globalCluster: nil)

        return defaultInstance
    }()
}

public extension DeleteGlobalClusterResultForDeleteGlobalCluster {
    /**
     Default instance of the DeleteGlobalClusterResultForDeleteGlobalCluster structure.
     */
    static let __default: RDSModel.DeleteGlobalClusterResultForDeleteGlobalCluster = {
        let defaultInstance = RDSModel.DeleteGlobalClusterResultForDeleteGlobalCluster(
            deleteGlobalClusterResult: DeleteGlobalClusterResult.__default)

        return defaultInstance
    }()
}

public extension DeleteInstallationMediaMessage {
    /**
     Default instance of the DeleteInstallationMediaMessage structure.
     */
    static let __default: RDSModel.DeleteInstallationMediaMessage = {
        let defaultInstance = RDSModel.DeleteInstallationMediaMessage(
            installationMediaId: "value")

        return defaultInstance
    }()
}

public extension DeleteOptionGroupMessage {
    /**
     Default instance of the DeleteOptionGroupMessage structure.
     */
    static let __default: RDSModel.DeleteOptionGroupMessage = {
        let defaultInstance = RDSModel.DeleteOptionGroupMessage(
            optionGroupName: "value")

        return defaultInstance
    }()
}

public extension DeregisterDBProxyTargetsRequest {
    /**
     Default instance of the DeregisterDBProxyTargetsRequest structure.
     */
    static let __default: RDSModel.DeregisterDBProxyTargetsRequest = {
        let defaultInstance = RDSModel.DeregisterDBProxyTargetsRequest(
            dBClusterIdentifiers: nil,
            dBInstanceIdentifiers: nil,
            dBProxyName: "value",
            targetGroupName: nil)

        return defaultInstance
    }()
}

public extension DeregisterDBProxyTargetsResponse {
    /**
     Default instance of the DeregisterDBProxyTargetsResponse structure.
     */
    static let __default: RDSModel.DeregisterDBProxyTargetsResponse = {
        let defaultInstance = RDSModel.DeregisterDBProxyTargetsResponse()

        return defaultInstance
    }()
}

public extension DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets {
    /**
     Default instance of the DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets structure.
     */
    static let __default: RDSModel.DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets = {
        let defaultInstance = RDSModel.DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets(
            deregisterDBProxyTargetsResult: DeregisterDBProxyTargetsResponse.__default)

        return defaultInstance
    }()
}

public extension DescribeAccountAttributesMessage {
    /**
     Default instance of the DescribeAccountAttributesMessage structure.
     */
    static let __default: RDSModel.DescribeAccountAttributesMessage = {
        let defaultInstance = RDSModel.DescribeAccountAttributesMessage()

        return defaultInstance
    }()
}

public extension DescribeCertificatesMessage {
    /**
     Default instance of the DescribeCertificatesMessage structure.
     */
    static let __default: RDSModel.DescribeCertificatesMessage = {
        let defaultInstance = RDSModel.DescribeCertificatesMessage(
            certificateIdentifier: nil,
            filters: nil,
            marker: nil,
            maxRecords: nil)

        return defaultInstance
    }()
}

public extension DescribeCustomAvailabilityZonesMessage {
    /**
     Default instance of the DescribeCustomAvailabilityZonesMessage structure.
     */
    static let __default: RDSModel.DescribeCustomAvailabilityZonesMessage = {
        let defaultInstance = RDSModel.DescribeCustomAvailabilityZonesMessage(
            customAvailabilityZoneId: nil,
            filters: nil,
            marker: nil,
            maxRecords: nil)

        return defaultInstance
    }()
}

public extension DescribeDBClusterBacktracksMessage {
    /**
     Default instance of the DescribeDBClusterBacktracksMessage structure.
     */
    static let __default: RDSModel.DescribeDBClusterBacktracksMessage = {
        let defaultInstance = RDSModel.DescribeDBClusterBacktracksMessage(
            backtrackIdentifier: nil,
            dBClusterIdentifier: "value",
            filters: nil,
            marker: nil,
            maxRecords: nil)

        return defaultInstance
    }()
}

public extension DescribeDBClusterEndpointsMessage {
    /**
     Default instance of the DescribeDBClusterEndpointsMessage structure.
     */
    static let __default: RDSModel.DescribeDBClusterEndpointsMessage = {
        let defaultInstance = RDSModel.DescribeDBClusterEndpointsMessage(
            dBClusterEndpointIdentifier: nil,
            dBClusterIdentifier: nil,
            filters: nil,
            marker: nil,
            maxRecords: nil)

        return defaultInstance
    }()
}

public extension DescribeDBClusterParameterGroupsMessage {
    /**
     Default instance of the DescribeDBClusterParameterGroupsMessage structure.
     */
    static let __default: RDSModel.DescribeDBClusterParameterGroupsMessage = {
        let defaultInstance = RDSModel.DescribeDBClusterParameterGroupsMessage(
            dBClusterParameterGroupName: nil,
            filters: nil,
            marker: nil,
            maxRecords: nil)

        return defaultInstance
    }()
}

public extension DescribeDBClusterParametersMessage {
    /**
     Default instance of the DescribeDBClusterParametersMessage structure.
     */
    static let __default: RDSModel.DescribeDBClusterParametersMessage = {
        let defaultInstance = RDSModel.DescribeDBClusterParametersMessage(
            dBClusterParameterGroupName: "value",
            filters: nil,
            marker: nil,
            maxRecords: nil,
            source: nil)

        return defaultInstance
    }()
}

public extension DescribeDBClusterSnapshotAttributesMessage {
    /**
     Default instance of the DescribeDBClusterSnapshotAttributesMessage structure.
     */
    static let __default: RDSModel.DescribeDBClusterSnapshotAttributesMessage = {
        let defaultInstance = RDSModel.DescribeDBClusterSnapshotAttributesMessage(
            dBClusterSnapshotIdentifier: "value")

        return defaultInstance
    }()
}

public extension DescribeDBClusterSnapshotAttributesResult {
    /**
     Default instance of the DescribeDBClusterSnapshotAttributesResult structure.
     */
    static let __default: RDSModel.DescribeDBClusterSnapshotAttributesResult = {
        let defaultInstance = RDSModel.DescribeDBClusterSnapshotAttributesResult(
            dBClusterSnapshotAttributesResult: nil)

        return defaultInstance
    }()
}

public extension DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes {
    /**
     Default instance of the DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes structure.
     */
    static let __default: RDSModel.DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes = {
        let defaultInstance = RDSModel.DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes(
            describeDBClusterSnapshotAttributesResult: DescribeDBClusterSnapshotAttributesResult.__default)

        return defaultInstance
    }()
}

public extension DescribeDBClusterSnapshotsMessage {
    /**
     Default instance of the DescribeDBClusterSnapshotsMessage structure.
     */
    static let __default: RDSModel.DescribeDBClusterSnapshotsMessage = {
        let defaultInstance = RDSModel.DescribeDBClusterSnapshotsMessage(
            dBClusterIdentifier: nil,
            dBClusterSnapshotIdentifier: nil,
            filters: nil,
            includePublic: nil,
            includeShared: nil,
            marker: nil,
            maxRecords: nil,
            snapshotType: nil)

        return defaultInstance
    }()
}

public extension DescribeDBClustersMessage {
    /**
     Default instance of the DescribeDBClustersMessage structure.
     */
    static let __default: RDSModel.DescribeDBClustersMessage = {
        let defaultInstance = RDSModel.DescribeDBClustersMessage(
            dBClusterIdentifier: nil,
            filters: nil,
            includeShared: nil,
            marker: nil,
            maxRecords: nil)

        return defaultInstance
    }()
}

public extension DescribeDBEngineVersionsMessage {
    /**
     Default instance of the DescribeDBEngineVersionsMessage structure.
     */
    static let __default: RDSModel.DescribeDBEngineVersionsMessage = {
        let defaultInstance = RDSModel.DescribeDBEngineVersionsMessage(
            dBParameterGroupFamily: nil,
            defaultOnly: nil,
            engine: nil,
            engineVersion: nil,
            filters: nil,
            includeAll: nil,
            listSupportedCharacterSets: nil,
            listSupportedTimezones: nil,
            marker: nil,
            maxRecords: nil)

        return defaultInstance
    }()
}

public extension DescribeDBInstanceAutomatedBackupsMessage {
    /**
     Default instance of the DescribeDBInstanceAutomatedBackupsMessage structure.
     */
    static let __default: RDSModel.DescribeDBInstanceAutomatedBackupsMessage = {
        let defaultInstance = RDSModel.DescribeDBInstanceAutomatedBackupsMessage(
            dBInstanceAutomatedBackupsArn: nil,
            dBInstanceIdentifier: nil,
            dbiResourceId: nil,
            filters: nil,
            marker: nil,
            maxRecords: nil)

        return defaultInstance
    }()
}

public extension DescribeDBInstancesMessage {
    /**
     Default instance of the DescribeDBInstancesMessage structure.
     */
    static let __default: RDSModel.DescribeDBInstancesMessage = {
        let defaultInstance = RDSModel.DescribeDBInstancesMessage(
            dBInstanceIdentifier: nil,
            filters: nil,
            marker: nil,
            maxRecords: nil)

        return defaultInstance
    }()
}

public extension DescribeDBLogFilesDetails {
    /**
     Default instance of the DescribeDBLogFilesDetails structure.
     */
    static let __default: RDSModel.DescribeDBLogFilesDetails = {
        let defaultInstance = RDSModel.DescribeDBLogFilesDetails(
            lastWritten: nil,
            logFileName: nil,
            size: nil)

        return defaultInstance
    }()
}

public extension DescribeDBLogFilesMessage {
    /**
     Default instance of the DescribeDBLogFilesMessage structure.
     */
    static let __default: RDSModel.DescribeDBLogFilesMessage = {
        let defaultInstance = RDSModel.DescribeDBLogFilesMessage(
            dBInstanceIdentifier: "value",
            fileLastWritten: nil,
            fileSize: nil,
            filenameContains: nil,
            filters: nil,
            marker: nil,
            maxRecords: nil)

        return defaultInstance
    }()
}

public extension DescribeDBLogFilesResponse {
    /**
     Default instance of the DescribeDBLogFilesResponse structure.
     */
    static let __default: RDSModel.DescribeDBLogFilesResponse = {
        let defaultInstance = RDSModel.DescribeDBLogFilesResponse(
            describeDBLogFiles: nil,
            marker: nil)

        return defaultInstance
    }()
}

public extension DescribeDBLogFilesResponseForDescribeDBLogFiles {
    /**
     Default instance of the DescribeDBLogFilesResponseForDescribeDBLogFiles structure.
     */
    static let __default: RDSModel.DescribeDBLogFilesResponseForDescribeDBLogFiles = {
        let defaultInstance = RDSModel.DescribeDBLogFilesResponseForDescribeDBLogFiles(
            describeDBLogFilesResult: DescribeDBLogFilesResponse.__default)

        return defaultInstance
    }()
}

public extension DescribeDBParameterGroupsMessage {
    /**
     Default instance of the DescribeDBParameterGroupsMessage structure.
     */
    static let __default: RDSModel.DescribeDBParameterGroupsMessage = {
        let defaultInstance = RDSModel.DescribeDBParameterGroupsMessage(
            dBParameterGroupName: nil,
            filters: nil,
            marker: nil,
            maxRecords: nil)

        return defaultInstance
    }()
}

public extension DescribeDBParametersMessage {
    /**
     Default instance of the DescribeDBParametersMessage structure.
     */
    static let __default: RDSModel.DescribeDBParametersMessage = {
        let defaultInstance = RDSModel.DescribeDBParametersMessage(
            dBParameterGroupName: "value",
            filters: nil,
            marker: nil,
            maxRecords: nil,
            source: nil)

        return defaultInstance
    }()
}

public extension DescribeDBProxiesRequest {
    /**
     Default instance of the DescribeDBProxiesRequest structure.
     */
    static let __default: RDSModel.DescribeDBProxiesRequest = {
        let defaultInstance = RDSModel.DescribeDBProxiesRequest(
            dBProxyName: nil,
            filters: nil,
            marker: nil,
            maxRecords: nil)

        return defaultInstance
    }()
}

public extension DescribeDBProxiesResponse {
    /**
     Default instance of the DescribeDBProxiesResponse structure.
     */
    static let __default: RDSModel.DescribeDBProxiesResponse = {
        let defaultInstance = RDSModel.DescribeDBProxiesResponse(
            dBProxies: nil,
            marker: nil)

        return defaultInstance
    }()
}

public extension DescribeDBProxiesResponseForDescribeDBProxies {
    /**
     Default instance of the DescribeDBProxiesResponseForDescribeDBProxies structure.
     */
    static let __default: RDSModel.DescribeDBProxiesResponseForDescribeDBProxies = {
        let defaultInstance = RDSModel.DescribeDBProxiesResponseForDescribeDBProxies(
            describeDBProxiesResult: DescribeDBProxiesResponse.__default)

        return defaultInstance
    }()
}

public extension DescribeDBProxyEndpointsRequest {
    /**
     Default instance of the DescribeDBProxyEndpointsRequest structure.
     */
    static let __default: RDSModel.DescribeDBProxyEndpointsRequest = {
        let defaultInstance = RDSModel.DescribeDBProxyEndpointsRequest(
            dBProxyEndpointName: nil,
            dBProxyName: nil,
            filters: nil,
            marker: nil,
            maxRecords: nil)

        return defaultInstance
    }()
}

public extension DescribeDBProxyEndpointsResponse {
    /**
     Default instance of the DescribeDBProxyEndpointsResponse structure.
     */
    static let __default: RDSModel.DescribeDBProxyEndpointsResponse = {
        let defaultInstance = RDSModel.DescribeDBProxyEndpointsResponse(
            dBProxyEndpoints: nil,
            marker: nil)

        return defaultInstance
    }()
}

public extension DescribeDBProxyEndpointsResponseForDescribeDBProxyEndpoints {
    /**
     Default instance of the DescribeDBProxyEndpointsResponseForDescribeDBProxyEndpoints structure.
     */
    static let __default: RDSModel.DescribeDBProxyEndpointsResponseForDescribeDBProxyEndpoints = {
        let defaultInstance = RDSModel.DescribeDBProxyEndpointsResponseForDescribeDBProxyEndpoints(
            describeDBProxyEndpointsResult: DescribeDBProxyEndpointsResponse.__default)

        return defaultInstance
    }()
}

public extension DescribeDBProxyTargetGroupsRequest {
    /**
     Default instance of the DescribeDBProxyTargetGroupsRequest structure.
     */
    static let __default: RDSModel.DescribeDBProxyTargetGroupsRequest = {
        let defaultInstance = RDSModel.DescribeDBProxyTargetGroupsRequest(
            dBProxyName: "value",
            filters: nil,
            marker: nil,
            maxRecords: nil,
            targetGroupName: nil)

        return defaultInstance
    }()
}

public extension DescribeDBProxyTargetGroupsResponse {
    /**
     Default instance of the DescribeDBProxyTargetGroupsResponse structure.
     */
    static let __default: RDSModel.DescribeDBProxyTargetGroupsResponse = {
        let defaultInstance = RDSModel.DescribeDBProxyTargetGroupsResponse(
            marker: nil,
            targetGroups: nil)

        return defaultInstance
    }()
}

public extension DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups {
    /**
     Default instance of the DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups structure.
     */
    static let __default: RDSModel.DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups = {
        let defaultInstance = RDSModel.DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups(
            describeDBProxyTargetGroupsResult: DescribeDBProxyTargetGroupsResponse.__default)

        return defaultInstance
    }()
}

public extension DescribeDBProxyTargetsRequest {
    /**
     Default instance of the DescribeDBProxyTargetsRequest structure.
     */
    static let __default: RDSModel.DescribeDBProxyTargetsRequest = {
        let defaultInstance = RDSModel.DescribeDBProxyTargetsRequest(
            dBProxyName: "value",
            filters: nil,
            marker: nil,
            maxRecords: nil,
            targetGroupName: nil)

        return defaultInstance
    }()
}

public extension DescribeDBProxyTargetsResponse {
    /**
     Default instance of the DescribeDBProxyTargetsResponse structure.
     */
    static let __default: RDSModel.DescribeDBProxyTargetsResponse = {
        let defaultInstance = RDSModel.DescribeDBProxyTargetsResponse(
            marker: nil,
            targets: nil)

        return defaultInstance
    }()
}

public extension DescribeDBProxyTargetsResponseForDescribeDBProxyTargets {
    /**
     Default instance of the DescribeDBProxyTargetsResponseForDescribeDBProxyTargets structure.
     */
    static let __default: RDSModel.DescribeDBProxyTargetsResponseForDescribeDBProxyTargets = {
        let defaultInstance = RDSModel.DescribeDBProxyTargetsResponseForDescribeDBProxyTargets(
            describeDBProxyTargetsResult: DescribeDBProxyTargetsResponse.__default)

        return defaultInstance
    }()
}

public extension DescribeDBSecurityGroupsMessage {
    /**
     Default instance of the DescribeDBSecurityGroupsMessage structure.
     */
    static let __default: RDSModel.DescribeDBSecurityGroupsMessage = {
        let defaultInstance = RDSModel.DescribeDBSecurityGroupsMessage(
            dBSecurityGroupName: nil,
            filters: nil,
            marker: nil,
            maxRecords: nil)

        return defaultInstance
    }()
}

public extension DescribeDBSnapshotAttributesMessage {
    /**
     Default instance of the DescribeDBSnapshotAttributesMessage structure.
     */
    static let __default: RDSModel.DescribeDBSnapshotAttributesMessage = {
        let defaultInstance = RDSModel.DescribeDBSnapshotAttributesMessage(
            dBSnapshotIdentifier: "value")

        return defaultInstance
    }()
}

public extension DescribeDBSnapshotAttributesResult {
    /**
     Default instance of the DescribeDBSnapshotAttributesResult structure.
     */
    static let __default: RDSModel.DescribeDBSnapshotAttributesResult = {
        let defaultInstance = RDSModel.DescribeDBSnapshotAttributesResult(
            dBSnapshotAttributesResult: nil)

        return defaultInstance
    }()
}

public extension DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes {
    /**
     Default instance of the DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes structure.
     */
    static let __default: RDSModel.DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes = {
        let defaultInstance = RDSModel.DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes(
            describeDBSnapshotAttributesResult: DescribeDBSnapshotAttributesResult.__default)

        return defaultInstance
    }()
}

public extension DescribeDBSnapshotsMessage {
    /**
     Default instance of the DescribeDBSnapshotsMessage structure.
     */
    static let __default: RDSModel.DescribeDBSnapshotsMessage = {
        let defaultInstance = RDSModel.DescribeDBSnapshotsMessage(
            dBInstanceIdentifier: nil,
            dBSnapshotIdentifier: nil,
            dbiResourceId: nil,
            filters: nil,
            includePublic: nil,
            includeShared: nil,
            marker: nil,
            maxRecords: nil,
            snapshotType: nil)

        return defaultInstance
    }()
}

public extension DescribeDBSubnetGroupsMessage {
    /**
     Default instance of the DescribeDBSubnetGroupsMessage structure.
     */
    static let __default: RDSModel.DescribeDBSubnetGroupsMessage = {
        let defaultInstance = RDSModel.DescribeDBSubnetGroupsMessage(
            dBSubnetGroupName: nil,
            filters: nil,
            marker: nil,
            maxRecords: nil)

        return defaultInstance
    }()
}

public extension DescribeEngineDefaultClusterParametersMessage {
    /**
     Default instance of the DescribeEngineDefaultClusterParametersMessage structure.
     */
    static let __default: RDSModel.DescribeEngineDefaultClusterParametersMessage = {
        let defaultInstance = RDSModel.DescribeEngineDefaultClusterParametersMessage(
            dBParameterGroupFamily: "value",
            filters: nil,
            marker: nil,
            maxRecords: nil)

        return defaultInstance
    }()
}

public extension DescribeEngineDefaultClusterParametersResult {
    /**
     Default instance of the DescribeEngineDefaultClusterParametersResult structure.
     */
    static let __default: RDSModel.DescribeEngineDefaultClusterParametersResult = {
        let defaultInstance = RDSModel.DescribeEngineDefaultClusterParametersResult(
            engineDefaults: nil)

        return defaultInstance
    }()
}

public extension DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters {
    /**
     Default instance of the DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters structure.
     */
    static let __default: RDSModel.DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters = {
        let defaultInstance = RDSModel.DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters(
            describeEngineDefaultClusterParametersResult: DescribeEngineDefaultClusterParametersResult.__default)

        return defaultInstance
    }()
}

public extension DescribeEngineDefaultParametersMessage {
    /**
     Default instance of the DescribeEngineDefaultParametersMessage structure.
     */
    static let __default: RDSModel.DescribeEngineDefaultParametersMessage = {
        let defaultInstance = RDSModel.DescribeEngineDefaultParametersMessage(
            dBParameterGroupFamily: "value",
            filters: nil,
            marker: nil,
            maxRecords: nil)

        return defaultInstance
    }()
}

public extension DescribeEngineDefaultParametersResult {
    /**
     Default instance of the DescribeEngineDefaultParametersResult structure.
     */
    static let __default: RDSModel.DescribeEngineDefaultParametersResult = {
        let defaultInstance = RDSModel.DescribeEngineDefaultParametersResult(
            engineDefaults: nil)

        return defaultInstance
    }()
}

public extension DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters {
    /**
     Default instance of the DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters structure.
     */
    static let __default: RDSModel.DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters = {
        let defaultInstance = RDSModel.DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters(
            describeEngineDefaultParametersResult: DescribeEngineDefaultParametersResult.__default)

        return defaultInstance
    }()
}

public extension DescribeEventCategoriesMessage {
    /**
     Default instance of the DescribeEventCategoriesMessage structure.
     */
    static let __default: RDSModel.DescribeEventCategoriesMessage = {
        let defaultInstance = RDSModel.DescribeEventCategoriesMessage(
            filters: nil,
            sourceType: nil)

        return defaultInstance
    }()
}

public extension DescribeEventSubscriptionsMessage {
    /**
     Default instance of the DescribeEventSubscriptionsMessage structure.
     */
    static let __default: RDSModel.DescribeEventSubscriptionsMessage = {
        let defaultInstance = RDSModel.DescribeEventSubscriptionsMessage(
            filters: nil,
            marker: nil,
            maxRecords: nil,
            subscriptionName: nil)

        return defaultInstance
    }()
}

public extension DescribeEventsMessage {
    /**
     Default instance of the DescribeEventsMessage structure.
     */
    static let __default: RDSModel.DescribeEventsMessage = {
        let defaultInstance = RDSModel.DescribeEventsMessage(
            duration: nil,
            endTime: nil,
            eventCategories: nil,
            filters: nil,
            marker: nil,
            maxRecords: nil,
            sourceIdentifier: nil,
            sourceType: nil,
            startTime: nil)

        return defaultInstance
    }()
}

public extension DescribeExportTasksMessage {
    /**
     Default instance of the DescribeExportTasksMessage structure.
     */
    static let __default: RDSModel.DescribeExportTasksMessage = {
        let defaultInstance = RDSModel.DescribeExportTasksMessage(
            exportTaskIdentifier: nil,
            filters: nil,
            marker: nil,
            maxRecords: nil,
            sourceArn: nil)

        return defaultInstance
    }()
}

public extension DescribeGlobalClustersMessage {
    /**
     Default instance of the DescribeGlobalClustersMessage structure.
     */
    static let __default: RDSModel.DescribeGlobalClustersMessage = {
        let defaultInstance = RDSModel.DescribeGlobalClustersMessage(
            filters: nil,
            globalClusterIdentifier: nil,
            marker: nil,
            maxRecords: nil)

        return defaultInstance
    }()
}

public extension DescribeInstallationMediaMessage {
    /**
     Default instance of the DescribeInstallationMediaMessage structure.
     */
    static let __default: RDSModel.DescribeInstallationMediaMessage = {
        let defaultInstance = RDSModel.DescribeInstallationMediaMessage(
            filters: nil,
            installationMediaId: nil,
            marker: nil,
            maxRecords: nil)

        return defaultInstance
    }()
}

public extension DescribeOptionGroupOptionsMessage {
    /**
     Default instance of the DescribeOptionGroupOptionsMessage structure.
     */
    static let __default: RDSModel.DescribeOptionGroupOptionsMessage = {
        let defaultInstance = RDSModel.DescribeOptionGroupOptionsMessage(
            engineName: "value",
            filters: nil,
            majorEngineVersion: nil,
            marker: nil,
            maxRecords: nil)

        return defaultInstance
    }()
}

public extension DescribeOptionGroupsMessage {
    /**
     Default instance of the DescribeOptionGroupsMessage structure.
     */
    static let __default: RDSModel.DescribeOptionGroupsMessage = {
        let defaultInstance = RDSModel.DescribeOptionGroupsMessage(
            engineName: nil,
            filters: nil,
            majorEngineVersion: nil,
            marker: nil,
            maxRecords: nil,
            optionGroupName: nil)

        return defaultInstance
    }()
}

public extension DescribeOrderableDBInstanceOptionsMessage {
    /**
     Default instance of the DescribeOrderableDBInstanceOptionsMessage structure.
     */
    static let __default: RDSModel.DescribeOrderableDBInstanceOptionsMessage = {
        let defaultInstance = RDSModel.DescribeOrderableDBInstanceOptionsMessage(
            availabilityZoneGroup: nil,
            dBInstanceClass: nil,
            engine: "value",
            engineVersion: nil,
            filters: nil,
            licenseModel: nil,
            marker: nil,
            maxRecords: nil,
            vpc: nil)

        return defaultInstance
    }()
}

public extension DescribePendingMaintenanceActionsMessage {
    /**
     Default instance of the DescribePendingMaintenanceActionsMessage structure.
     */
    static let __default: RDSModel.DescribePendingMaintenanceActionsMessage = {
        let defaultInstance = RDSModel.DescribePendingMaintenanceActionsMessage(
            filters: nil,
            marker: nil,
            maxRecords: nil,
            resourceIdentifier: nil)

        return defaultInstance
    }()
}

public extension DescribeReservedDBInstancesMessage {
    /**
     Default instance of the DescribeReservedDBInstancesMessage structure.
     */
    static let __default: RDSModel.DescribeReservedDBInstancesMessage = {
        let defaultInstance = RDSModel.DescribeReservedDBInstancesMessage(
            dBInstanceClass: nil,
            duration: nil,
            filters: nil,
            leaseId: nil,
            marker: nil,
            maxRecords: nil,
            multiAZ: nil,
            offeringType: nil,
            productDescription: nil,
            reservedDBInstanceId: nil,
            reservedDBInstancesOfferingId: nil)

        return defaultInstance
    }()
}

public extension DescribeReservedDBInstancesOfferingsMessage {
    /**
     Default instance of the DescribeReservedDBInstancesOfferingsMessage structure.
     */
    static let __default: RDSModel.DescribeReservedDBInstancesOfferingsMessage = {
        let defaultInstance = RDSModel.DescribeReservedDBInstancesOfferingsMessage(
            dBInstanceClass: nil,
            duration: nil,
            filters: nil,
            marker: nil,
            maxRecords: nil,
            multiAZ: nil,
            offeringType: nil,
            productDescription: nil,
            reservedDBInstancesOfferingId: nil)

        return defaultInstance
    }()
}

public extension DescribeSourceRegionsMessage {
    /**
     Default instance of the DescribeSourceRegionsMessage structure.
     */
    static let __default: RDSModel.DescribeSourceRegionsMessage = {
        let defaultInstance = RDSModel.DescribeSourceRegionsMessage(
            filters: nil,
            marker: nil,
            maxRecords: nil,
            regionName: nil)

        return defaultInstance
    }()
}

public extension DescribeValidDBInstanceModificationsMessage {
    /**
     Default instance of the DescribeValidDBInstanceModificationsMessage structure.
     */
    static let __default: RDSModel.DescribeValidDBInstanceModificationsMessage = {
        let defaultInstance = RDSModel.DescribeValidDBInstanceModificationsMessage(
            dBInstanceIdentifier: "value")

        return defaultInstance
    }()
}

public extension DescribeValidDBInstanceModificationsResult {
    /**
     Default instance of the DescribeValidDBInstanceModificationsResult structure.
     */
    static let __default: RDSModel.DescribeValidDBInstanceModificationsResult = {
        let defaultInstance = RDSModel.DescribeValidDBInstanceModificationsResult(
            validDBInstanceModificationsMessage: nil)

        return defaultInstance
    }()
}

public extension DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications {
    /**
     Default instance of the DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications structure.
     */
    static let __default: RDSModel.DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications = {
        let defaultInstance = RDSModel.DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications(
            describeValidDBInstanceModificationsResult: DescribeValidDBInstanceModificationsResult.__default)

        return defaultInstance
    }()
}

public extension DomainMembership {
    /**
     Default instance of the DomainMembership structure.
     */
    static let __default: RDSModel.DomainMembership = {
        let defaultInstance = RDSModel.DomainMembership(
            domain: nil,
            fQDN: nil,
            iAMRoleName: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension DomainNotFoundFault {
    /**
     Default instance of the DomainNotFoundFault structure.
     */
    static let __default: RDSModel.DomainNotFoundFault = {
        let defaultInstance = RDSModel.DomainNotFoundFault()

        return defaultInstance
    }()
}

public extension DoubleRange {
    /**
     Default instance of the DoubleRange structure.
     */
    static let __default: RDSModel.DoubleRange = {
        let defaultInstance = RDSModel.DoubleRange(
            from: nil,
            to: nil)

        return defaultInstance
    }()
}

public extension DownloadDBLogFilePortionDetails {
    /**
     Default instance of the DownloadDBLogFilePortionDetails structure.
     */
    static let __default: RDSModel.DownloadDBLogFilePortionDetails = {
        let defaultInstance = RDSModel.DownloadDBLogFilePortionDetails(
            additionalDataPending: nil,
            logFileData: nil,
            marker: nil)

        return defaultInstance
    }()
}

public extension DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion {
    /**
     Default instance of the DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion structure.
     */
    static let __default: RDSModel.DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion = {
        let defaultInstance = RDSModel.DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion(
            downloadDBLogFilePortionResult: DownloadDBLogFilePortionDetails.__default)

        return defaultInstance
    }()
}

public extension DownloadDBLogFilePortionMessage {
    /**
     Default instance of the DownloadDBLogFilePortionMessage structure.
     */
    static let __default: RDSModel.DownloadDBLogFilePortionMessage = {
        let defaultInstance = RDSModel.DownloadDBLogFilePortionMessage(
            dBInstanceIdentifier: "value",
            logFileName: "value",
            marker: nil,
            numberOfLines: nil)

        return defaultInstance
    }()
}

public extension EC2SecurityGroup {
    /**
     Default instance of the EC2SecurityGroup structure.
     */
    static let __default: RDSModel.EC2SecurityGroup = {
        let defaultInstance = RDSModel.EC2SecurityGroup(
            eC2SecurityGroupId: nil,
            eC2SecurityGroupName: nil,
            eC2SecurityGroupOwnerId: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension Endpoint {
    /**
     Default instance of the Endpoint structure.
     */
    static let __default: RDSModel.Endpoint = {
        let defaultInstance = RDSModel.Endpoint(
            address: nil,
            hostedZoneId: nil,
            port: nil)

        return defaultInstance
    }()
}

public extension EngineDefaults {
    /**
     Default instance of the EngineDefaults structure.
     */
    static let __default: RDSModel.EngineDefaults = {
        let defaultInstance = RDSModel.EngineDefaults(
            dBParameterGroupFamily: nil,
            marker: nil,
            parameters: nil)

        return defaultInstance
    }()
}

public extension Event {
    /**
     Default instance of the Event structure.
     */
    static let __default: RDSModel.Event = {
        let defaultInstance = RDSModel.Event(
            date: nil,
            eventCategories: nil,
            message: nil,
            sourceArn: nil,
            sourceIdentifier: nil,
            sourceType: nil)

        return defaultInstance
    }()
}

public extension EventCategoriesMap {
    /**
     Default instance of the EventCategoriesMap structure.
     */
    static let __default: RDSModel.EventCategoriesMap = {
        let defaultInstance = RDSModel.EventCategoriesMap(
            eventCategories: nil,
            sourceType: nil)

        return defaultInstance
    }()
}

public extension EventCategoriesMessage {
    /**
     Default instance of the EventCategoriesMessage structure.
     */
    static let __default: RDSModel.EventCategoriesMessage = {
        let defaultInstance = RDSModel.EventCategoriesMessage(
            eventCategoriesMapList: nil)

        return defaultInstance
    }()
}

public extension EventCategoriesMessageForDescribeEventCategories {
    /**
     Default instance of the EventCategoriesMessageForDescribeEventCategories structure.
     */
    static let __default: RDSModel.EventCategoriesMessageForDescribeEventCategories = {
        let defaultInstance = RDSModel.EventCategoriesMessageForDescribeEventCategories(
            describeEventCategoriesResult: EventCategoriesMessage.__default)

        return defaultInstance
    }()
}

public extension EventSubscription {
    /**
     Default instance of the EventSubscription structure.
     */
    static let __default: RDSModel.EventSubscription = {
        let defaultInstance = RDSModel.EventSubscription(
            custSubscriptionId: nil,
            customerAwsId: nil,
            enabled: nil,
            eventCategoriesList: nil,
            eventSubscriptionArn: nil,
            snsTopicArn: nil,
            sourceIdsList: nil,
            sourceType: nil,
            status: nil,
            subscriptionCreationTime: nil)

        return defaultInstance
    }()
}

public extension EventSubscriptionQuotaExceededFault {
    /**
     Default instance of the EventSubscriptionQuotaExceededFault structure.
     */
    static let __default: RDSModel.EventSubscriptionQuotaExceededFault = {
        let defaultInstance = RDSModel.EventSubscriptionQuotaExceededFault()

        return defaultInstance
    }()
}

public extension EventSubscriptionsMessage {
    /**
     Default instance of the EventSubscriptionsMessage structure.
     */
    static let __default: RDSModel.EventSubscriptionsMessage = {
        let defaultInstance = RDSModel.EventSubscriptionsMessage(
            eventSubscriptionsList: nil,
            marker: nil)

        return defaultInstance
    }()
}

public extension EventSubscriptionsMessageForDescribeEventSubscriptions {
    /**
     Default instance of the EventSubscriptionsMessageForDescribeEventSubscriptions structure.
     */
    static let __default: RDSModel.EventSubscriptionsMessageForDescribeEventSubscriptions = {
        let defaultInstance = RDSModel.EventSubscriptionsMessageForDescribeEventSubscriptions(
            describeEventSubscriptionsResult: EventSubscriptionsMessage.__default)

        return defaultInstance
    }()
}

public extension EventsMessage {
    /**
     Default instance of the EventsMessage structure.
     */
    static let __default: RDSModel.EventsMessage = {
        let defaultInstance = RDSModel.EventsMessage(
            events: nil,
            marker: nil)

        return defaultInstance
    }()
}

public extension EventsMessageForDescribeEvents {
    /**
     Default instance of the EventsMessageForDescribeEvents structure.
     */
    static let __default: RDSModel.EventsMessageForDescribeEvents = {
        let defaultInstance = RDSModel.EventsMessageForDescribeEvents(
            describeEventsResult: EventsMessage.__default)

        return defaultInstance
    }()
}

public extension ExportTask {
    /**
     Default instance of the ExportTask structure.
     */
    static let __default: RDSModel.ExportTask = {
        let defaultInstance = RDSModel.ExportTask(
            exportOnly: nil,
            exportTaskIdentifier: nil,
            failureCause: nil,
            iamRoleArn: nil,
            kmsKeyId: nil,
            percentProgress: nil,
            s3Bucket: nil,
            s3Prefix: nil,
            snapshotTime: nil,
            sourceArn: nil,
            status: nil,
            taskEndTime: nil,
            taskStartTime: nil,
            totalExtractedDataInGB: nil,
            warningMessage: nil)

        return defaultInstance
    }()
}

public extension ExportTaskAlreadyExistsFault {
    /**
     Default instance of the ExportTaskAlreadyExistsFault structure.
     */
    static let __default: RDSModel.ExportTaskAlreadyExistsFault = {
        let defaultInstance = RDSModel.ExportTaskAlreadyExistsFault()

        return defaultInstance
    }()
}

public extension ExportTaskForCancelExportTask {
    /**
     Default instance of the ExportTaskForCancelExportTask structure.
     */
    static let __default: RDSModel.ExportTaskForCancelExportTask = {
        let defaultInstance = RDSModel.ExportTaskForCancelExportTask(
            cancelExportTaskResult: ExportTask.__default)

        return defaultInstance
    }()
}

public extension ExportTaskForStartExportTask {
    /**
     Default instance of the ExportTaskForStartExportTask structure.
     */
    static let __default: RDSModel.ExportTaskForStartExportTask = {
        let defaultInstance = RDSModel.ExportTaskForStartExportTask(
            startExportTaskResult: ExportTask.__default)

        return defaultInstance
    }()
}

public extension ExportTaskNotFoundFault {
    /**
     Default instance of the ExportTaskNotFoundFault structure.
     */
    static let __default: RDSModel.ExportTaskNotFoundFault = {
        let defaultInstance = RDSModel.ExportTaskNotFoundFault()

        return defaultInstance
    }()
}

public extension ExportTasksMessage {
    /**
     Default instance of the ExportTasksMessage structure.
     */
    static let __default: RDSModel.ExportTasksMessage = {
        let defaultInstance = RDSModel.ExportTasksMessage(
            exportTasks: nil,
            marker: nil)

        return defaultInstance
    }()
}

public extension ExportTasksMessageForDescribeExportTasks {
    /**
     Default instance of the ExportTasksMessageForDescribeExportTasks structure.
     */
    static let __default: RDSModel.ExportTasksMessageForDescribeExportTasks = {
        let defaultInstance = RDSModel.ExportTasksMessageForDescribeExportTasks(
            describeExportTasksResult: ExportTasksMessage.__default)

        return defaultInstance
    }()
}

public extension FailoverDBClusterMessage {
    /**
     Default instance of the FailoverDBClusterMessage structure.
     */
    static let __default: RDSModel.FailoverDBClusterMessage = {
        let defaultInstance = RDSModel.FailoverDBClusterMessage(
            dBClusterIdentifier: "value",
            targetDBInstanceIdentifier: nil)

        return defaultInstance
    }()
}

public extension FailoverDBClusterResult {
    /**
     Default instance of the FailoverDBClusterResult structure.
     */
    static let __default: RDSModel.FailoverDBClusterResult = {
        let defaultInstance = RDSModel.FailoverDBClusterResult(
            dBCluster: nil)

        return defaultInstance
    }()
}

public extension FailoverDBClusterResultForFailoverDBCluster {
    /**
     Default instance of the FailoverDBClusterResultForFailoverDBCluster structure.
     */
    static let __default: RDSModel.FailoverDBClusterResultForFailoverDBCluster = {
        let defaultInstance = RDSModel.FailoverDBClusterResultForFailoverDBCluster(
            failoverDBClusterResult: FailoverDBClusterResult.__default)

        return defaultInstance
    }()
}

public extension FailoverGlobalClusterMessage {
    /**
     Default instance of the FailoverGlobalClusterMessage structure.
     */
    static let __default: RDSModel.FailoverGlobalClusterMessage = {
        let defaultInstance = RDSModel.FailoverGlobalClusterMessage(
            globalClusterIdentifier: "0",
            targetDbClusterIdentifier: "0")

        return defaultInstance
    }()
}

public extension FailoverGlobalClusterResult {
    /**
     Default instance of the FailoverGlobalClusterResult structure.
     */
    static let __default: RDSModel.FailoverGlobalClusterResult = {
        let defaultInstance = RDSModel.FailoverGlobalClusterResult(
            globalCluster: nil)

        return defaultInstance
    }()
}

public extension FailoverGlobalClusterResultForFailoverGlobalCluster {
    /**
     Default instance of the FailoverGlobalClusterResultForFailoverGlobalCluster structure.
     */
    static let __default: RDSModel.FailoverGlobalClusterResultForFailoverGlobalCluster = {
        let defaultInstance = RDSModel.FailoverGlobalClusterResultForFailoverGlobalCluster(
            failoverGlobalClusterResult: FailoverGlobalClusterResult.__default)

        return defaultInstance
    }()
}

public extension FailoverState {
    /**
     Default instance of the FailoverState structure.
     */
    static let __default: RDSModel.FailoverState = {
        let defaultInstance = RDSModel.FailoverState(
            fromDbClusterArn: nil,
            status: nil,
            toDbClusterArn: nil)

        return defaultInstance
    }()
}

public extension Filter {
    /**
     Default instance of the Filter structure.
     */
    static let __default: RDSModel.Filter = {
        let defaultInstance = RDSModel.Filter(
            name: "value",
            values: [])

        return defaultInstance
    }()
}

public extension GlobalCluster {
    /**
     Default instance of the GlobalCluster structure.
     */
    static let __default: RDSModel.GlobalCluster = {
        let defaultInstance = RDSModel.GlobalCluster(
            databaseName: nil,
            deletionProtection: nil,
            engine: nil,
            engineVersion: nil,
            failoverState: nil,
            globalClusterArn: nil,
            globalClusterIdentifier: nil,
            globalClusterMembers: nil,
            globalClusterResourceId: nil,
            status: nil,
            storageEncrypted: nil)

        return defaultInstance
    }()
}

public extension GlobalClusterAlreadyExistsFault {
    /**
     Default instance of the GlobalClusterAlreadyExistsFault structure.
     */
    static let __default: RDSModel.GlobalClusterAlreadyExistsFault = {
        let defaultInstance = RDSModel.GlobalClusterAlreadyExistsFault()

        return defaultInstance
    }()
}

public extension GlobalClusterMember {
    /**
     Default instance of the GlobalClusterMember structure.
     */
    static let __default: RDSModel.GlobalClusterMember = {
        let defaultInstance = RDSModel.GlobalClusterMember(
            dBClusterArn: nil,
            globalWriteForwardingStatus: nil,
            isWriter: nil,
            readers: nil)

        return defaultInstance
    }()
}

public extension GlobalClusterNotFoundFault {
    /**
     Default instance of the GlobalClusterNotFoundFault structure.
     */
    static let __default: RDSModel.GlobalClusterNotFoundFault = {
        let defaultInstance = RDSModel.GlobalClusterNotFoundFault()

        return defaultInstance
    }()
}

public extension GlobalClusterQuotaExceededFault {
    /**
     Default instance of the GlobalClusterQuotaExceededFault structure.
     */
    static let __default: RDSModel.GlobalClusterQuotaExceededFault = {
        let defaultInstance = RDSModel.GlobalClusterQuotaExceededFault()

        return defaultInstance
    }()
}

public extension GlobalClustersMessage {
    /**
     Default instance of the GlobalClustersMessage structure.
     */
    static let __default: RDSModel.GlobalClustersMessage = {
        let defaultInstance = RDSModel.GlobalClustersMessage(
            globalClusters: nil,
            marker: nil)

        return defaultInstance
    }()
}

public extension GlobalClustersMessageForDescribeGlobalClusters {
    /**
     Default instance of the GlobalClustersMessageForDescribeGlobalClusters structure.
     */
    static let __default: RDSModel.GlobalClustersMessageForDescribeGlobalClusters = {
        let defaultInstance = RDSModel.GlobalClustersMessageForDescribeGlobalClusters(
            describeGlobalClustersResult: GlobalClustersMessage.__default)

        return defaultInstance
    }()
}

public extension IPRange {
    /**
     Default instance of the IPRange structure.
     */
    static let __default: RDSModel.IPRange = {
        let defaultInstance = RDSModel.IPRange(
            cIDRIP: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension IamRoleMissingPermissionsFault {
    /**
     Default instance of the IamRoleMissingPermissionsFault structure.
     */
    static let __default: RDSModel.IamRoleMissingPermissionsFault = {
        let defaultInstance = RDSModel.IamRoleMissingPermissionsFault()

        return defaultInstance
    }()
}

public extension IamRoleNotFoundFault {
    /**
     Default instance of the IamRoleNotFoundFault structure.
     */
    static let __default: RDSModel.IamRoleNotFoundFault = {
        let defaultInstance = RDSModel.IamRoleNotFoundFault()

        return defaultInstance
    }()
}

public extension ImportInstallationMediaMessage {
    /**
     Default instance of the ImportInstallationMediaMessage structure.
     */
    static let __default: RDSModel.ImportInstallationMediaMessage = {
        let defaultInstance = RDSModel.ImportInstallationMediaMessage(
            customAvailabilityZoneId: "value",
            engine: "value",
            engineInstallationMediaPath: "value",
            engineVersion: "value",
            oSInstallationMediaPath: "value")

        return defaultInstance
    }()
}

public extension InstallationMedia {
    /**
     Default instance of the InstallationMedia structure.
     */
    static let __default: RDSModel.InstallationMedia = {
        let defaultInstance = RDSModel.InstallationMedia(
            customAvailabilityZoneId: nil,
            engine: nil,
            engineInstallationMediaPath: nil,
            engineVersion: nil,
            failureCause: nil,
            installationMediaId: nil,
            oSInstallationMediaPath: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension InstallationMediaAlreadyExistsFault {
    /**
     Default instance of the InstallationMediaAlreadyExistsFault structure.
     */
    static let __default: RDSModel.InstallationMediaAlreadyExistsFault = {
        let defaultInstance = RDSModel.InstallationMediaAlreadyExistsFault()

        return defaultInstance
    }()
}

public extension InstallationMediaFailureCause {
    /**
     Default instance of the InstallationMediaFailureCause structure.
     */
    static let __default: RDSModel.InstallationMediaFailureCause = {
        let defaultInstance = RDSModel.InstallationMediaFailureCause(
            message: nil)

        return defaultInstance
    }()
}

public extension InstallationMediaForDeleteInstallationMedia {
    /**
     Default instance of the InstallationMediaForDeleteInstallationMedia structure.
     */
    static let __default: RDSModel.InstallationMediaForDeleteInstallationMedia = {
        let defaultInstance = RDSModel.InstallationMediaForDeleteInstallationMedia(
            deleteInstallationMediaResult: InstallationMedia.__default)

        return defaultInstance
    }()
}

public extension InstallationMediaForImportInstallationMedia {
    /**
     Default instance of the InstallationMediaForImportInstallationMedia structure.
     */
    static let __default: RDSModel.InstallationMediaForImportInstallationMedia = {
        let defaultInstance = RDSModel.InstallationMediaForImportInstallationMedia(
            importInstallationMediaResult: InstallationMedia.__default)

        return defaultInstance
    }()
}

public extension InstallationMediaMessage {
    /**
     Default instance of the InstallationMediaMessage structure.
     */
    static let __default: RDSModel.InstallationMediaMessage = {
        let defaultInstance = RDSModel.InstallationMediaMessage(
            installationMedia: nil,
            marker: nil)

        return defaultInstance
    }()
}

public extension InstallationMediaMessageForDescribeInstallationMedia {
    /**
     Default instance of the InstallationMediaMessageForDescribeInstallationMedia structure.
     */
    static let __default: RDSModel.InstallationMediaMessageForDescribeInstallationMedia = {
        let defaultInstance = RDSModel.InstallationMediaMessageForDescribeInstallationMedia(
            describeInstallationMediaResult: InstallationMediaMessage.__default)

        return defaultInstance
    }()
}

public extension InstallationMediaNotFoundFault {
    /**
     Default instance of the InstallationMediaNotFoundFault structure.
     */
    static let __default: RDSModel.InstallationMediaNotFoundFault = {
        let defaultInstance = RDSModel.InstallationMediaNotFoundFault()

        return defaultInstance
    }()
}

public extension InstanceQuotaExceededFault {
    /**
     Default instance of the InstanceQuotaExceededFault structure.
     */
    static let __default: RDSModel.InstanceQuotaExceededFault = {
        let defaultInstance = RDSModel.InstanceQuotaExceededFault()

        return defaultInstance
    }()
}

public extension InsufficientAvailableIPsInSubnetFault {
    /**
     Default instance of the InsufficientAvailableIPsInSubnetFault structure.
     */
    static let __default: RDSModel.InsufficientAvailableIPsInSubnetFault = {
        let defaultInstance = RDSModel.InsufficientAvailableIPsInSubnetFault()

        return defaultInstance
    }()
}

public extension InsufficientDBClusterCapacityFault {
    /**
     Default instance of the InsufficientDBClusterCapacityFault structure.
     */
    static let __default: RDSModel.InsufficientDBClusterCapacityFault = {
        let defaultInstance = RDSModel.InsufficientDBClusterCapacityFault()

        return defaultInstance
    }()
}

public extension InsufficientDBInstanceCapacityFault {
    /**
     Default instance of the InsufficientDBInstanceCapacityFault structure.
     */
    static let __default: RDSModel.InsufficientDBInstanceCapacityFault = {
        let defaultInstance = RDSModel.InsufficientDBInstanceCapacityFault()

        return defaultInstance
    }()
}

public extension InsufficientStorageClusterCapacityFault {
    /**
     Default instance of the InsufficientStorageClusterCapacityFault structure.
     */
    static let __default: RDSModel.InsufficientStorageClusterCapacityFault = {
        let defaultInstance = RDSModel.InsufficientStorageClusterCapacityFault()

        return defaultInstance
    }()
}

public extension InvalidDBClusterCapacityFault {
    /**
     Default instance of the InvalidDBClusterCapacityFault structure.
     */
    static let __default: RDSModel.InvalidDBClusterCapacityFault = {
        let defaultInstance = RDSModel.InvalidDBClusterCapacityFault()

        return defaultInstance
    }()
}

public extension InvalidDBClusterEndpointStateFault {
    /**
     Default instance of the InvalidDBClusterEndpointStateFault structure.
     */
    static let __default: RDSModel.InvalidDBClusterEndpointStateFault = {
        let defaultInstance = RDSModel.InvalidDBClusterEndpointStateFault()

        return defaultInstance
    }()
}

public extension InvalidDBClusterSnapshotStateFault {
    /**
     Default instance of the InvalidDBClusterSnapshotStateFault structure.
     */
    static let __default: RDSModel.InvalidDBClusterSnapshotStateFault = {
        let defaultInstance = RDSModel.InvalidDBClusterSnapshotStateFault()

        return defaultInstance
    }()
}

public extension InvalidDBClusterStateFault {
    /**
     Default instance of the InvalidDBClusterStateFault structure.
     */
    static let __default: RDSModel.InvalidDBClusterStateFault = {
        let defaultInstance = RDSModel.InvalidDBClusterStateFault()

        return defaultInstance
    }()
}

public extension InvalidDBInstanceAutomatedBackupStateFault {
    /**
     Default instance of the InvalidDBInstanceAutomatedBackupStateFault structure.
     */
    static let __default: RDSModel.InvalidDBInstanceAutomatedBackupStateFault = {
        let defaultInstance = RDSModel.InvalidDBInstanceAutomatedBackupStateFault()

        return defaultInstance
    }()
}

public extension InvalidDBInstanceStateFault {
    /**
     Default instance of the InvalidDBInstanceStateFault structure.
     */
    static let __default: RDSModel.InvalidDBInstanceStateFault = {
        let defaultInstance = RDSModel.InvalidDBInstanceStateFault()

        return defaultInstance
    }()
}

public extension InvalidDBParameterGroupStateFault {
    /**
     Default instance of the InvalidDBParameterGroupStateFault structure.
     */
    static let __default: RDSModel.InvalidDBParameterGroupStateFault = {
        let defaultInstance = RDSModel.InvalidDBParameterGroupStateFault()

        return defaultInstance
    }()
}

public extension InvalidDBProxyEndpointStateFault {
    /**
     Default instance of the InvalidDBProxyEndpointStateFault structure.
     */
    static let __default: RDSModel.InvalidDBProxyEndpointStateFault = {
        let defaultInstance = RDSModel.InvalidDBProxyEndpointStateFault()

        return defaultInstance
    }()
}

public extension InvalidDBProxyStateFault {
    /**
     Default instance of the InvalidDBProxyStateFault structure.
     */
    static let __default: RDSModel.InvalidDBProxyStateFault = {
        let defaultInstance = RDSModel.InvalidDBProxyStateFault()

        return defaultInstance
    }()
}

public extension InvalidDBSecurityGroupStateFault {
    /**
     Default instance of the InvalidDBSecurityGroupStateFault structure.
     */
    static let __default: RDSModel.InvalidDBSecurityGroupStateFault = {
        let defaultInstance = RDSModel.InvalidDBSecurityGroupStateFault()

        return defaultInstance
    }()
}

public extension InvalidDBSnapshotStateFault {
    /**
     Default instance of the InvalidDBSnapshotStateFault structure.
     */
    static let __default: RDSModel.InvalidDBSnapshotStateFault = {
        let defaultInstance = RDSModel.InvalidDBSnapshotStateFault()

        return defaultInstance
    }()
}

public extension InvalidDBSubnetGroupFault {
    /**
     Default instance of the InvalidDBSubnetGroupFault structure.
     */
    static let __default: RDSModel.InvalidDBSubnetGroupFault = {
        let defaultInstance = RDSModel.InvalidDBSubnetGroupFault()

        return defaultInstance
    }()
}

public extension InvalidDBSubnetGroupStateFault {
    /**
     Default instance of the InvalidDBSubnetGroupStateFault structure.
     */
    static let __default: RDSModel.InvalidDBSubnetGroupStateFault = {
        let defaultInstance = RDSModel.InvalidDBSubnetGroupStateFault()

        return defaultInstance
    }()
}

public extension InvalidDBSubnetStateFault {
    /**
     Default instance of the InvalidDBSubnetStateFault structure.
     */
    static let __default: RDSModel.InvalidDBSubnetStateFault = {
        let defaultInstance = RDSModel.InvalidDBSubnetStateFault()

        return defaultInstance
    }()
}

public extension InvalidEventSubscriptionStateFault {
    /**
     Default instance of the InvalidEventSubscriptionStateFault structure.
     */
    static let __default: RDSModel.InvalidEventSubscriptionStateFault = {
        let defaultInstance = RDSModel.InvalidEventSubscriptionStateFault()

        return defaultInstance
    }()
}

public extension InvalidExportOnlyFault {
    /**
     Default instance of the InvalidExportOnlyFault structure.
     */
    static let __default: RDSModel.InvalidExportOnlyFault = {
        let defaultInstance = RDSModel.InvalidExportOnlyFault()

        return defaultInstance
    }()
}

public extension InvalidExportSourceStateFault {
    /**
     Default instance of the InvalidExportSourceStateFault structure.
     */
    static let __default: RDSModel.InvalidExportSourceStateFault = {
        let defaultInstance = RDSModel.InvalidExportSourceStateFault()

        return defaultInstance
    }()
}

public extension InvalidExportTaskStateFault {
    /**
     Default instance of the InvalidExportTaskStateFault structure.
     */
    static let __default: RDSModel.InvalidExportTaskStateFault = {
        let defaultInstance = RDSModel.InvalidExportTaskStateFault()

        return defaultInstance
    }()
}

public extension InvalidGlobalClusterStateFault {
    /**
     Default instance of the InvalidGlobalClusterStateFault structure.
     */
    static let __default: RDSModel.InvalidGlobalClusterStateFault = {
        let defaultInstance = RDSModel.InvalidGlobalClusterStateFault()

        return defaultInstance
    }()
}

public extension InvalidOptionGroupStateFault {
    /**
     Default instance of the InvalidOptionGroupStateFault structure.
     */
    static let __default: RDSModel.InvalidOptionGroupStateFault = {
        let defaultInstance = RDSModel.InvalidOptionGroupStateFault()

        return defaultInstance
    }()
}

public extension InvalidRestoreFault {
    /**
     Default instance of the InvalidRestoreFault structure.
     */
    static let __default: RDSModel.InvalidRestoreFault = {
        let defaultInstance = RDSModel.InvalidRestoreFault()

        return defaultInstance
    }()
}

public extension InvalidS3BucketFault {
    /**
     Default instance of the InvalidS3BucketFault structure.
     */
    static let __default: RDSModel.InvalidS3BucketFault = {
        let defaultInstance = RDSModel.InvalidS3BucketFault()

        return defaultInstance
    }()
}

public extension InvalidSubnet {
    /**
     Default instance of the InvalidSubnet structure.
     */
    static let __default: RDSModel.InvalidSubnet = {
        let defaultInstance = RDSModel.InvalidSubnet()

        return defaultInstance
    }()
}

public extension InvalidVPCNetworkStateFault {
    /**
     Default instance of the InvalidVPCNetworkStateFault structure.
     */
    static let __default: RDSModel.InvalidVPCNetworkStateFault = {
        let defaultInstance = RDSModel.InvalidVPCNetworkStateFault()

        return defaultInstance
    }()
}

public extension KMSKeyNotAccessibleFault {
    /**
     Default instance of the KMSKeyNotAccessibleFault structure.
     */
    static let __default: RDSModel.KMSKeyNotAccessibleFault = {
        let defaultInstance = RDSModel.KMSKeyNotAccessibleFault()

        return defaultInstance
    }()
}

public extension ListTagsForResourceMessage {
    /**
     Default instance of the ListTagsForResourceMessage structure.
     */
    static let __default: RDSModel.ListTagsForResourceMessage = {
        let defaultInstance = RDSModel.ListTagsForResourceMessage(
            filters: nil,
            resourceName: "value")

        return defaultInstance
    }()
}

public extension MinimumEngineVersionPerAllowedValue {
    /**
     Default instance of the MinimumEngineVersionPerAllowedValue structure.
     */
    static let __default: RDSModel.MinimumEngineVersionPerAllowedValue = {
        let defaultInstance = RDSModel.MinimumEngineVersionPerAllowedValue(
            allowedValue: nil,
            minimumEngineVersion: nil)

        return defaultInstance
    }()
}

public extension ModifyCertificatesMessage {
    /**
     Default instance of the ModifyCertificatesMessage structure.
     */
    static let __default: RDSModel.ModifyCertificatesMessage = {
        let defaultInstance = RDSModel.ModifyCertificatesMessage(
            certificateIdentifier: nil,
            removeCustomerOverride: nil)

        return defaultInstance
    }()
}

public extension ModifyCertificatesResult {
    /**
     Default instance of the ModifyCertificatesResult structure.
     */
    static let __default: RDSModel.ModifyCertificatesResult = {
        let defaultInstance = RDSModel.ModifyCertificatesResult(
            certificate: nil)

        return defaultInstance
    }()
}

public extension ModifyCertificatesResultForModifyCertificates {
    /**
     Default instance of the ModifyCertificatesResultForModifyCertificates structure.
     */
    static let __default: RDSModel.ModifyCertificatesResultForModifyCertificates = {
        let defaultInstance = RDSModel.ModifyCertificatesResultForModifyCertificates(
            modifyCertificatesResult: ModifyCertificatesResult.__default)

        return defaultInstance
    }()
}

public extension ModifyCurrentDBClusterCapacityMessage {
    /**
     Default instance of the ModifyCurrentDBClusterCapacityMessage structure.
     */
    static let __default: RDSModel.ModifyCurrentDBClusterCapacityMessage = {
        let defaultInstance = RDSModel.ModifyCurrentDBClusterCapacityMessage(
            capacity: nil,
            dBClusterIdentifier: "value",
            secondsBeforeTimeout: nil,
            timeoutAction: nil)

        return defaultInstance
    }()
}

public extension ModifyDBClusterEndpointMessage {
    /**
     Default instance of the ModifyDBClusterEndpointMessage structure.
     */
    static let __default: RDSModel.ModifyDBClusterEndpointMessage = {
        let defaultInstance = RDSModel.ModifyDBClusterEndpointMessage(
            dBClusterEndpointIdentifier: "value",
            endpointType: nil,
            excludedMembers: nil,
            staticMembers: nil)

        return defaultInstance
    }()
}

public extension ModifyDBClusterMessage {
    /**
     Default instance of the ModifyDBClusterMessage structure.
     */
    static let __default: RDSModel.ModifyDBClusterMessage = {
        let defaultInstance = RDSModel.ModifyDBClusterMessage(
            allowMajorVersionUpgrade: nil,
            applyImmediately: nil,
            backtrackWindow: nil,
            backupRetentionPeriod: nil,
            cloudwatchLogsExportConfiguration: nil,
            copyTagsToSnapshot: nil,
            dBClusterIdentifier: "value",
            dBClusterParameterGroupName: nil,
            dBInstanceParameterGroupName: nil,
            deletionProtection: nil,
            domain: nil,
            domainIAMRoleName: nil,
            enableGlobalWriteForwarding: nil,
            enableHttpEndpoint: nil,
            enableIAMDatabaseAuthentication: nil,
            engineVersion: nil,
            masterUserPassword: nil,
            newDBClusterIdentifier: nil,
            optionGroupName: nil,
            port: nil,
            preferredBackupWindow: nil,
            preferredMaintenanceWindow: nil,
            scalingConfiguration: nil,
            vpcSecurityGroupIds: nil)

        return defaultInstance
    }()
}

public extension ModifyDBClusterParameterGroupMessage {
    /**
     Default instance of the ModifyDBClusterParameterGroupMessage structure.
     */
    static let __default: RDSModel.ModifyDBClusterParameterGroupMessage = {
        let defaultInstance = RDSModel.ModifyDBClusterParameterGroupMessage(
            dBClusterParameterGroupName: "value",
            parameters: [])

        return defaultInstance
    }()
}

public extension ModifyDBClusterResult {
    /**
     Default instance of the ModifyDBClusterResult structure.
     */
    static let __default: RDSModel.ModifyDBClusterResult = {
        let defaultInstance = RDSModel.ModifyDBClusterResult(
            dBCluster: nil)

        return defaultInstance
    }()
}

public extension ModifyDBClusterResultForModifyDBCluster {
    /**
     Default instance of the ModifyDBClusterResultForModifyDBCluster structure.
     */
    static let __default: RDSModel.ModifyDBClusterResultForModifyDBCluster = {
        let defaultInstance = RDSModel.ModifyDBClusterResultForModifyDBCluster(
            modifyDBClusterResult: ModifyDBClusterResult.__default)

        return defaultInstance
    }()
}

public extension ModifyDBClusterSnapshotAttributeMessage {
    /**
     Default instance of the ModifyDBClusterSnapshotAttributeMessage structure.
     */
    static let __default: RDSModel.ModifyDBClusterSnapshotAttributeMessage = {
        let defaultInstance = RDSModel.ModifyDBClusterSnapshotAttributeMessage(
            attributeName: "value",
            dBClusterSnapshotIdentifier: "value",
            valuesToAdd: nil,
            valuesToRemove: nil)

        return defaultInstance
    }()
}

public extension ModifyDBClusterSnapshotAttributeResult {
    /**
     Default instance of the ModifyDBClusterSnapshotAttributeResult structure.
     */
    static let __default: RDSModel.ModifyDBClusterSnapshotAttributeResult = {
        let defaultInstance = RDSModel.ModifyDBClusterSnapshotAttributeResult(
            dBClusterSnapshotAttributesResult: nil)

        return defaultInstance
    }()
}

public extension ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute {
    /**
     Default instance of the ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute structure.
     */
    static let __default: RDSModel.ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute = {
        let defaultInstance = RDSModel.ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute(
            modifyDBClusterSnapshotAttributeResult: ModifyDBClusterSnapshotAttributeResult.__default)

        return defaultInstance
    }()
}

public extension ModifyDBInstanceMessage {
    /**
     Default instance of the ModifyDBInstanceMessage structure.
     */
    static let __default: RDSModel.ModifyDBInstanceMessage = {
        let defaultInstance = RDSModel.ModifyDBInstanceMessage(
            allocatedStorage: nil,
            allowMajorVersionUpgrade: nil,
            applyImmediately: nil,
            autoMinorVersionUpgrade: nil,
            awsBackupRecoveryPointArn: nil,
            backupRetentionPeriod: nil,
            cACertificateIdentifier: nil,
            certificateRotationRestart: nil,
            cloudwatchLogsExportConfiguration: nil,
            copyTagsToSnapshot: nil,
            dBInstanceClass: nil,
            dBInstanceIdentifier: "value",
            dBParameterGroupName: nil,
            dBPortNumber: nil,
            dBSecurityGroups: nil,
            dBSubnetGroupName: nil,
            deletionProtection: nil,
            domain: nil,
            domainIAMRoleName: nil,
            enableCustomerOwnedIp: nil,
            enableIAMDatabaseAuthentication: nil,
            enablePerformanceInsights: nil,
            engineVersion: nil,
            iops: nil,
            licenseModel: nil,
            masterUserPassword: nil,
            maxAllocatedStorage: nil,
            monitoringInterval: nil,
            monitoringRoleArn: nil,
            multiAZ: nil,
            newDBInstanceIdentifier: nil,
            optionGroupName: nil,
            performanceInsightsKMSKeyId: nil,
            performanceInsightsRetentionPeriod: nil,
            preferredBackupWindow: nil,
            preferredMaintenanceWindow: nil,
            processorFeatures: nil,
            promotionTier: nil,
            publiclyAccessible: nil,
            replicaMode: nil,
            storageType: nil,
            tdeCredentialArn: nil,
            tdeCredentialPassword: nil,
            useDefaultProcessorFeatures: nil,
            vpcSecurityGroupIds: nil)

        return defaultInstance
    }()
}

public extension ModifyDBInstanceResult {
    /**
     Default instance of the ModifyDBInstanceResult structure.
     */
    static let __default: RDSModel.ModifyDBInstanceResult = {
        let defaultInstance = RDSModel.ModifyDBInstanceResult(
            dBInstance: nil)

        return defaultInstance
    }()
}

public extension ModifyDBInstanceResultForModifyDBInstance {
    /**
     Default instance of the ModifyDBInstanceResultForModifyDBInstance structure.
     */
    static let __default: RDSModel.ModifyDBInstanceResultForModifyDBInstance = {
        let defaultInstance = RDSModel.ModifyDBInstanceResultForModifyDBInstance(
            modifyDBInstanceResult: ModifyDBInstanceResult.__default)

        return defaultInstance
    }()
}

public extension ModifyDBParameterGroupMessage {
    /**
     Default instance of the ModifyDBParameterGroupMessage structure.
     */
    static let __default: RDSModel.ModifyDBParameterGroupMessage = {
        let defaultInstance = RDSModel.ModifyDBParameterGroupMessage(
            dBParameterGroupName: "value",
            parameters: [])

        return defaultInstance
    }()
}

public extension ModifyDBProxyEndpointRequest {
    /**
     Default instance of the ModifyDBProxyEndpointRequest structure.
     */
    static let __default: RDSModel.ModifyDBProxyEndpointRequest = {
        let defaultInstance = RDSModel.ModifyDBProxyEndpointRequest(
            dBProxyEndpointName: "0",
            newDBProxyEndpointName: nil,
            vpcSecurityGroupIds: nil)

        return defaultInstance
    }()
}

public extension ModifyDBProxyEndpointResponse {
    /**
     Default instance of the ModifyDBProxyEndpointResponse structure.
     */
    static let __default: RDSModel.ModifyDBProxyEndpointResponse = {
        let defaultInstance = RDSModel.ModifyDBProxyEndpointResponse(
            dBProxyEndpoint: nil)

        return defaultInstance
    }()
}

public extension ModifyDBProxyEndpointResponseForModifyDBProxyEndpoint {
    /**
     Default instance of the ModifyDBProxyEndpointResponseForModifyDBProxyEndpoint structure.
     */
    static let __default: RDSModel.ModifyDBProxyEndpointResponseForModifyDBProxyEndpoint = {
        let defaultInstance = RDSModel.ModifyDBProxyEndpointResponseForModifyDBProxyEndpoint(
            modifyDBProxyEndpointResult: ModifyDBProxyEndpointResponse.__default)

        return defaultInstance
    }()
}

public extension ModifyDBProxyRequest {
    /**
     Default instance of the ModifyDBProxyRequest structure.
     */
    static let __default: RDSModel.ModifyDBProxyRequest = {
        let defaultInstance = RDSModel.ModifyDBProxyRequest(
            auth: nil,
            dBProxyName: "value",
            debugLogging: nil,
            idleClientTimeout: nil,
            newDBProxyName: nil,
            requireTLS: nil,
            roleArn: nil,
            securityGroups: nil)

        return defaultInstance
    }()
}

public extension ModifyDBProxyResponse {
    /**
     Default instance of the ModifyDBProxyResponse structure.
     */
    static let __default: RDSModel.ModifyDBProxyResponse = {
        let defaultInstance = RDSModel.ModifyDBProxyResponse(
            dBProxy: nil)

        return defaultInstance
    }()
}

public extension ModifyDBProxyResponseForModifyDBProxy {
    /**
     Default instance of the ModifyDBProxyResponseForModifyDBProxy structure.
     */
    static let __default: RDSModel.ModifyDBProxyResponseForModifyDBProxy = {
        let defaultInstance = RDSModel.ModifyDBProxyResponseForModifyDBProxy(
            modifyDBProxyResult: ModifyDBProxyResponse.__default)

        return defaultInstance
    }()
}

public extension ModifyDBProxyTargetGroupRequest {
    /**
     Default instance of the ModifyDBProxyTargetGroupRequest structure.
     */
    static let __default: RDSModel.ModifyDBProxyTargetGroupRequest = {
        let defaultInstance = RDSModel.ModifyDBProxyTargetGroupRequest(
            connectionPoolConfig: nil,
            dBProxyName: "value",
            newName: nil,
            targetGroupName: "value")

        return defaultInstance
    }()
}

public extension ModifyDBProxyTargetGroupResponse {
    /**
     Default instance of the ModifyDBProxyTargetGroupResponse structure.
     */
    static let __default: RDSModel.ModifyDBProxyTargetGroupResponse = {
        let defaultInstance = RDSModel.ModifyDBProxyTargetGroupResponse(
            dBProxyTargetGroup: nil)

        return defaultInstance
    }()
}

public extension ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup {
    /**
     Default instance of the ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup structure.
     */
    static let __default: RDSModel.ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup = {
        let defaultInstance = RDSModel.ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup(
            modifyDBProxyTargetGroupResult: ModifyDBProxyTargetGroupResponse.__default)

        return defaultInstance
    }()
}

public extension ModifyDBSnapshotAttributeMessage {
    /**
     Default instance of the ModifyDBSnapshotAttributeMessage structure.
     */
    static let __default: RDSModel.ModifyDBSnapshotAttributeMessage = {
        let defaultInstance = RDSModel.ModifyDBSnapshotAttributeMessage(
            attributeName: "value",
            dBSnapshotIdentifier: "value",
            valuesToAdd: nil,
            valuesToRemove: nil)

        return defaultInstance
    }()
}

public extension ModifyDBSnapshotAttributeResult {
    /**
     Default instance of the ModifyDBSnapshotAttributeResult structure.
     */
    static let __default: RDSModel.ModifyDBSnapshotAttributeResult = {
        let defaultInstance = RDSModel.ModifyDBSnapshotAttributeResult(
            dBSnapshotAttributesResult: nil)

        return defaultInstance
    }()
}

public extension ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute {
    /**
     Default instance of the ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute structure.
     */
    static let __default: RDSModel.ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute = {
        let defaultInstance = RDSModel.ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute(
            modifyDBSnapshotAttributeResult: ModifyDBSnapshotAttributeResult.__default)

        return defaultInstance
    }()
}

public extension ModifyDBSnapshotMessage {
    /**
     Default instance of the ModifyDBSnapshotMessage structure.
     */
    static let __default: RDSModel.ModifyDBSnapshotMessage = {
        let defaultInstance = RDSModel.ModifyDBSnapshotMessage(
            dBSnapshotIdentifier: "value",
            engineVersion: nil,
            optionGroupName: nil)

        return defaultInstance
    }()
}

public extension ModifyDBSnapshotResult {
    /**
     Default instance of the ModifyDBSnapshotResult structure.
     */
    static let __default: RDSModel.ModifyDBSnapshotResult = {
        let defaultInstance = RDSModel.ModifyDBSnapshotResult(
            dBSnapshot: nil)

        return defaultInstance
    }()
}

public extension ModifyDBSnapshotResultForModifyDBSnapshot {
    /**
     Default instance of the ModifyDBSnapshotResultForModifyDBSnapshot structure.
     */
    static let __default: RDSModel.ModifyDBSnapshotResultForModifyDBSnapshot = {
        let defaultInstance = RDSModel.ModifyDBSnapshotResultForModifyDBSnapshot(
            modifyDBSnapshotResult: ModifyDBSnapshotResult.__default)

        return defaultInstance
    }()
}

public extension ModifyDBSubnetGroupMessage {
    /**
     Default instance of the ModifyDBSubnetGroupMessage structure.
     */
    static let __default: RDSModel.ModifyDBSubnetGroupMessage = {
        let defaultInstance = RDSModel.ModifyDBSubnetGroupMessage(
            dBSubnetGroupDescription: nil,
            dBSubnetGroupName: "value",
            subnetIds: [])

        return defaultInstance
    }()
}

public extension ModifyDBSubnetGroupResult {
    /**
     Default instance of the ModifyDBSubnetGroupResult structure.
     */
    static let __default: RDSModel.ModifyDBSubnetGroupResult = {
        let defaultInstance = RDSModel.ModifyDBSubnetGroupResult(
            dBSubnetGroup: nil)

        return defaultInstance
    }()
}

public extension ModifyDBSubnetGroupResultForModifyDBSubnetGroup {
    /**
     Default instance of the ModifyDBSubnetGroupResultForModifyDBSubnetGroup structure.
     */
    static let __default: RDSModel.ModifyDBSubnetGroupResultForModifyDBSubnetGroup = {
        let defaultInstance = RDSModel.ModifyDBSubnetGroupResultForModifyDBSubnetGroup(
            modifyDBSubnetGroupResult: ModifyDBSubnetGroupResult.__default)

        return defaultInstance
    }()
}

public extension ModifyEventSubscriptionMessage {
    /**
     Default instance of the ModifyEventSubscriptionMessage structure.
     */
    static let __default: RDSModel.ModifyEventSubscriptionMessage = {
        let defaultInstance = RDSModel.ModifyEventSubscriptionMessage(
            enabled: nil,
            eventCategories: nil,
            snsTopicArn: nil,
            sourceType: nil,
            subscriptionName: "value")

        return defaultInstance
    }()
}

public extension ModifyEventSubscriptionResult {
    /**
     Default instance of the ModifyEventSubscriptionResult structure.
     */
    static let __default: RDSModel.ModifyEventSubscriptionResult = {
        let defaultInstance = RDSModel.ModifyEventSubscriptionResult(
            eventSubscription: nil)

        return defaultInstance
    }()
}

public extension ModifyEventSubscriptionResultForModifyEventSubscription {
    /**
     Default instance of the ModifyEventSubscriptionResultForModifyEventSubscription structure.
     */
    static let __default: RDSModel.ModifyEventSubscriptionResultForModifyEventSubscription = {
        let defaultInstance = RDSModel.ModifyEventSubscriptionResultForModifyEventSubscription(
            modifyEventSubscriptionResult: ModifyEventSubscriptionResult.__default)

        return defaultInstance
    }()
}

public extension ModifyGlobalClusterMessage {
    /**
     Default instance of the ModifyGlobalClusterMessage structure.
     */
    static let __default: RDSModel.ModifyGlobalClusterMessage = {
        let defaultInstance = RDSModel.ModifyGlobalClusterMessage(
            allowMajorVersionUpgrade: nil,
            deletionProtection: nil,
            engineVersion: nil,
            globalClusterIdentifier: nil,
            newGlobalClusterIdentifier: nil)

        return defaultInstance
    }()
}

public extension ModifyGlobalClusterResult {
    /**
     Default instance of the ModifyGlobalClusterResult structure.
     */
    static let __default: RDSModel.ModifyGlobalClusterResult = {
        let defaultInstance = RDSModel.ModifyGlobalClusterResult(
            globalCluster: nil)

        return defaultInstance
    }()
}

public extension ModifyGlobalClusterResultForModifyGlobalCluster {
    /**
     Default instance of the ModifyGlobalClusterResultForModifyGlobalCluster structure.
     */
    static let __default: RDSModel.ModifyGlobalClusterResultForModifyGlobalCluster = {
        let defaultInstance = RDSModel.ModifyGlobalClusterResultForModifyGlobalCluster(
            modifyGlobalClusterResult: ModifyGlobalClusterResult.__default)

        return defaultInstance
    }()
}

public extension ModifyOptionGroupMessage {
    /**
     Default instance of the ModifyOptionGroupMessage structure.
     */
    static let __default: RDSModel.ModifyOptionGroupMessage = {
        let defaultInstance = RDSModel.ModifyOptionGroupMessage(
            applyImmediately: nil,
            optionGroupName: "value",
            optionsToInclude: nil,
            optionsToRemove: nil)

        return defaultInstance
    }()
}

public extension ModifyOptionGroupResult {
    /**
     Default instance of the ModifyOptionGroupResult structure.
     */
    static let __default: RDSModel.ModifyOptionGroupResult = {
        let defaultInstance = RDSModel.ModifyOptionGroupResult(
            optionGroup: nil)

        return defaultInstance
    }()
}

public extension ModifyOptionGroupResultForModifyOptionGroup {
    /**
     Default instance of the ModifyOptionGroupResultForModifyOptionGroup structure.
     */
    static let __default: RDSModel.ModifyOptionGroupResultForModifyOptionGroup = {
        let defaultInstance = RDSModel.ModifyOptionGroupResultForModifyOptionGroup(
            modifyOptionGroupResult: ModifyOptionGroupResult.__default)

        return defaultInstance
    }()
}

public extension Option {
    /**
     Default instance of the Option structure.
     */
    static let __default: RDSModel.Option = {
        let defaultInstance = RDSModel.Option(
            dBSecurityGroupMemberships: nil,
            optionDescription: nil,
            optionName: nil,
            optionSettings: nil,
            optionVersion: nil,
            permanent: nil,
            persistent: nil,
            port: nil,
            vpcSecurityGroupMemberships: nil)

        return defaultInstance
    }()
}

public extension OptionConfiguration {
    /**
     Default instance of the OptionConfiguration structure.
     */
    static let __default: RDSModel.OptionConfiguration = {
        let defaultInstance = RDSModel.OptionConfiguration(
            dBSecurityGroupMemberships: nil,
            optionName: "value",
            optionSettings: nil,
            optionVersion: nil,
            port: nil,
            vpcSecurityGroupMemberships: nil)

        return defaultInstance
    }()
}

public extension OptionGroup {
    /**
     Default instance of the OptionGroup structure.
     */
    static let __default: RDSModel.OptionGroup = {
        let defaultInstance = RDSModel.OptionGroup(
            allowsVpcAndNonVpcInstanceMemberships: nil,
            engineName: nil,
            majorEngineVersion: nil,
            optionGroupArn: nil,
            optionGroupDescription: nil,
            optionGroupName: nil,
            options: nil,
            vpcId: nil)

        return defaultInstance
    }()
}

public extension OptionGroupAlreadyExistsFault {
    /**
     Default instance of the OptionGroupAlreadyExistsFault structure.
     */
    static let __default: RDSModel.OptionGroupAlreadyExistsFault = {
        let defaultInstance = RDSModel.OptionGroupAlreadyExistsFault()

        return defaultInstance
    }()
}

public extension OptionGroupMembership {
    /**
     Default instance of the OptionGroupMembership structure.
     */
    static let __default: RDSModel.OptionGroupMembership = {
        let defaultInstance = RDSModel.OptionGroupMembership(
            optionGroupName: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension OptionGroupNotFoundFault {
    /**
     Default instance of the OptionGroupNotFoundFault structure.
     */
    static let __default: RDSModel.OptionGroupNotFoundFault = {
        let defaultInstance = RDSModel.OptionGroupNotFoundFault()

        return defaultInstance
    }()
}

public extension OptionGroupOption {
    /**
     Default instance of the OptionGroupOption structure.
     */
    static let __default: RDSModel.OptionGroupOption = {
        let defaultInstance = RDSModel.OptionGroupOption(
            defaultPort: nil,
            description: nil,
            engineName: nil,
            majorEngineVersion: nil,
            minimumRequiredMinorEngineVersion: nil,
            name: nil,
            optionGroupOptionSettings: nil,
            optionGroupOptionVersions: nil,
            optionsConflictsWith: nil,
            optionsDependedOn: nil,
            permanent: nil,
            persistent: nil,
            portRequired: nil,
            requiresAutoMinorEngineVersionUpgrade: nil,
            supportsOptionVersionDowngrade: nil,
            vpcOnly: nil)

        return defaultInstance
    }()
}

public extension OptionGroupOptionSetting {
    /**
     Default instance of the OptionGroupOptionSetting structure.
     */
    static let __default: RDSModel.OptionGroupOptionSetting = {
        let defaultInstance = RDSModel.OptionGroupOptionSetting(
            allowedValues: nil,
            applyType: nil,
            defaultValue: nil,
            isModifiable: nil,
            isRequired: nil,
            minimumEngineVersionPerAllowedValue: nil,
            settingDescription: nil,
            settingName: nil)

        return defaultInstance
    }()
}

public extension OptionGroupOptionsMessage {
    /**
     Default instance of the OptionGroupOptionsMessage structure.
     */
    static let __default: RDSModel.OptionGroupOptionsMessage = {
        let defaultInstance = RDSModel.OptionGroupOptionsMessage(
            marker: nil,
            optionGroupOptions: nil)

        return defaultInstance
    }()
}

public extension OptionGroupOptionsMessageForDescribeOptionGroupOptions {
    /**
     Default instance of the OptionGroupOptionsMessageForDescribeOptionGroupOptions structure.
     */
    static let __default: RDSModel.OptionGroupOptionsMessageForDescribeOptionGroupOptions = {
        let defaultInstance = RDSModel.OptionGroupOptionsMessageForDescribeOptionGroupOptions(
            describeOptionGroupOptionsResult: OptionGroupOptionsMessage.__default)

        return defaultInstance
    }()
}

public extension OptionGroupQuotaExceededFault {
    /**
     Default instance of the OptionGroupQuotaExceededFault structure.
     */
    static let __default: RDSModel.OptionGroupQuotaExceededFault = {
        let defaultInstance = RDSModel.OptionGroupQuotaExceededFault()

        return defaultInstance
    }()
}

public extension OptionGroups {
    /**
     Default instance of the OptionGroups structure.
     */
    static let __default: RDSModel.OptionGroups = {
        let defaultInstance = RDSModel.OptionGroups(
            marker: nil,
            optionGroupsList: nil)

        return defaultInstance
    }()
}

public extension OptionGroupsForDescribeOptionGroups {
    /**
     Default instance of the OptionGroupsForDescribeOptionGroups structure.
     */
    static let __default: RDSModel.OptionGroupsForDescribeOptionGroups = {
        let defaultInstance = RDSModel.OptionGroupsForDescribeOptionGroups(
            describeOptionGroupsResult: OptionGroups.__default)

        return defaultInstance
    }()
}

public extension OptionSetting {
    /**
     Default instance of the OptionSetting structure.
     */
    static let __default: RDSModel.OptionSetting = {
        let defaultInstance = RDSModel.OptionSetting(
            allowedValues: nil,
            applyType: nil,
            dataType: nil,
            defaultValue: nil,
            description: nil,
            isCollection: nil,
            isModifiable: nil,
            name: nil,
            value: nil)

        return defaultInstance
    }()
}

public extension OptionVersion {
    /**
     Default instance of the OptionVersion structure.
     */
    static let __default: RDSModel.OptionVersion = {
        let defaultInstance = RDSModel.OptionVersion(
            isDefault: nil,
            version: nil)

        return defaultInstance
    }()
}

public extension OrderableDBInstanceOption {
    /**
     Default instance of the OrderableDBInstanceOption structure.
     */
    static let __default: RDSModel.OrderableDBInstanceOption = {
        let defaultInstance = RDSModel.OrderableDBInstanceOption(
            availabilityZoneGroup: nil,
            availabilityZones: nil,
            availableProcessorFeatures: nil,
            dBInstanceClass: nil,
            engine: nil,
            engineVersion: nil,
            licenseModel: nil,
            maxIopsPerDbInstance: nil,
            maxIopsPerGib: nil,
            maxStorageSize: nil,
            minIopsPerDbInstance: nil,
            minIopsPerGib: nil,
            minStorageSize: nil,
            multiAZCapable: nil,
            outpostCapable: nil,
            readReplicaCapable: nil,
            storageType: nil,
            supportedEngineModes: nil,
            supportsEnhancedMonitoring: nil,
            supportsGlobalDatabases: nil,
            supportsIAMDatabaseAuthentication: nil,
            supportsIops: nil,
            supportsKerberosAuthentication: nil,
            supportsPerformanceInsights: nil,
            supportsStorageAutoscaling: nil,
            supportsStorageEncryption: nil,
            vpc: nil)

        return defaultInstance
    }()
}

public extension OrderableDBInstanceOptionsMessage {
    /**
     Default instance of the OrderableDBInstanceOptionsMessage structure.
     */
    static let __default: RDSModel.OrderableDBInstanceOptionsMessage = {
        let defaultInstance = RDSModel.OrderableDBInstanceOptionsMessage(
            marker: nil,
            orderableDBInstanceOptions: nil)

        return defaultInstance
    }()
}

public extension OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions {
    /**
     Default instance of the OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions structure.
     */
    static let __default: RDSModel.OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions = {
        let defaultInstance = RDSModel.OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions(
            describeOrderableDBInstanceOptionsResult: OrderableDBInstanceOptionsMessage.__default)

        return defaultInstance
    }()
}

public extension Outpost {
    /**
     Default instance of the Outpost structure.
     */
    static let __default: RDSModel.Outpost = {
        let defaultInstance = RDSModel.Outpost(
            arn: nil)

        return defaultInstance
    }()
}

public extension Parameter {
    /**
     Default instance of the Parameter structure.
     */
    static let __default: RDSModel.Parameter = {
        let defaultInstance = RDSModel.Parameter(
            allowedValues: nil,
            applyMethod: nil,
            applyType: nil,
            dataType: nil,
            description: nil,
            isModifiable: nil,
            minimumEngineVersion: nil,
            parameterName: nil,
            parameterValue: nil,
            source: nil,
            supportedEngineModes: nil)

        return defaultInstance
    }()
}

public extension PendingCloudwatchLogsExports {
    /**
     Default instance of the PendingCloudwatchLogsExports structure.
     */
    static let __default: RDSModel.PendingCloudwatchLogsExports = {
        let defaultInstance = RDSModel.PendingCloudwatchLogsExports(
            logTypesToDisable: nil,
            logTypesToEnable: nil)

        return defaultInstance
    }()
}

public extension PendingMaintenanceAction {
    /**
     Default instance of the PendingMaintenanceAction structure.
     */
    static let __default: RDSModel.PendingMaintenanceAction = {
        let defaultInstance = RDSModel.PendingMaintenanceAction(
            action: nil,
            autoAppliedAfterDate: nil,
            currentApplyDate: nil,
            description: nil,
            forcedApplyDate: nil,
            optInStatus: nil)

        return defaultInstance
    }()
}

public extension PendingMaintenanceActionsMessage {
    /**
     Default instance of the PendingMaintenanceActionsMessage structure.
     */
    static let __default: RDSModel.PendingMaintenanceActionsMessage = {
        let defaultInstance = RDSModel.PendingMaintenanceActionsMessage(
            marker: nil,
            pendingMaintenanceActions: nil)

        return defaultInstance
    }()
}

public extension PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions {
    /**
     Default instance of the PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions structure.
     */
    static let __default: RDSModel.PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions = {
        let defaultInstance = RDSModel.PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions(
            describePendingMaintenanceActionsResult: PendingMaintenanceActionsMessage.__default)

        return defaultInstance
    }()
}

public extension PendingModifiedValues {
    /**
     Default instance of the PendingModifiedValues structure.
     */
    static let __default: RDSModel.PendingModifiedValues = {
        let defaultInstance = RDSModel.PendingModifiedValues(
            allocatedStorage: nil,
            backupRetentionPeriod: nil,
            cACertificateIdentifier: nil,
            dBInstanceClass: nil,
            dBInstanceIdentifier: nil,
            dBSubnetGroupName: nil,
            engineVersion: nil,
            iAMDatabaseAuthenticationEnabled: nil,
            iops: nil,
            licenseModel: nil,
            masterUserPassword: nil,
            multiAZ: nil,
            pendingCloudwatchLogsExports: nil,
            port: nil,
            processorFeatures: nil,
            storageType: nil)

        return defaultInstance
    }()
}

public extension PointInTimeRestoreNotEnabledFault {
    /**
     Default instance of the PointInTimeRestoreNotEnabledFault structure.
     */
    static let __default: RDSModel.PointInTimeRestoreNotEnabledFault = {
        let defaultInstance = RDSModel.PointInTimeRestoreNotEnabledFault()

        return defaultInstance
    }()
}

public extension ProcessorFeature {
    /**
     Default instance of the ProcessorFeature structure.
     */
    static let __default: RDSModel.ProcessorFeature = {
        let defaultInstance = RDSModel.ProcessorFeature(
            name: nil,
            value: nil)

        return defaultInstance
    }()
}

public extension PromoteReadReplicaDBClusterMessage {
    /**
     Default instance of the PromoteReadReplicaDBClusterMessage structure.
     */
    static let __default: RDSModel.PromoteReadReplicaDBClusterMessage = {
        let defaultInstance = RDSModel.PromoteReadReplicaDBClusterMessage(
            dBClusterIdentifier: "value")

        return defaultInstance
    }()
}

public extension PromoteReadReplicaDBClusterResult {
    /**
     Default instance of the PromoteReadReplicaDBClusterResult structure.
     */
    static let __default: RDSModel.PromoteReadReplicaDBClusterResult = {
        let defaultInstance = RDSModel.PromoteReadReplicaDBClusterResult(
            dBCluster: nil)

        return defaultInstance
    }()
}

public extension PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster {
    /**
     Default instance of the PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster structure.
     */
    static let __default: RDSModel.PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster = {
        let defaultInstance = RDSModel.PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster(
            promoteReadReplicaDBClusterResult: PromoteReadReplicaDBClusterResult.__default)

        return defaultInstance
    }()
}

public extension PromoteReadReplicaMessage {
    /**
     Default instance of the PromoteReadReplicaMessage structure.
     */
    static let __default: RDSModel.PromoteReadReplicaMessage = {
        let defaultInstance = RDSModel.PromoteReadReplicaMessage(
            backupRetentionPeriod: nil,
            dBInstanceIdentifier: "value",
            preferredBackupWindow: nil)

        return defaultInstance
    }()
}

public extension PromoteReadReplicaResult {
    /**
     Default instance of the PromoteReadReplicaResult structure.
     */
    static let __default: RDSModel.PromoteReadReplicaResult = {
        let defaultInstance = RDSModel.PromoteReadReplicaResult(
            dBInstance: nil)

        return defaultInstance
    }()
}

public extension PromoteReadReplicaResultForPromoteReadReplica {
    /**
     Default instance of the PromoteReadReplicaResultForPromoteReadReplica structure.
     */
    static let __default: RDSModel.PromoteReadReplicaResultForPromoteReadReplica = {
        let defaultInstance = RDSModel.PromoteReadReplicaResultForPromoteReadReplica(
            promoteReadReplicaResult: PromoteReadReplicaResult.__default)

        return defaultInstance
    }()
}

public extension ProvisionedIopsNotAvailableInAZFault {
    /**
     Default instance of the ProvisionedIopsNotAvailableInAZFault structure.
     */
    static let __default: RDSModel.ProvisionedIopsNotAvailableInAZFault = {
        let defaultInstance = RDSModel.ProvisionedIopsNotAvailableInAZFault()

        return defaultInstance
    }()
}

public extension PurchaseReservedDBInstancesOfferingMessage {
    /**
     Default instance of the PurchaseReservedDBInstancesOfferingMessage structure.
     */
    static let __default: RDSModel.PurchaseReservedDBInstancesOfferingMessage = {
        let defaultInstance = RDSModel.PurchaseReservedDBInstancesOfferingMessage(
            dBInstanceCount: nil,
            reservedDBInstanceId: nil,
            reservedDBInstancesOfferingId: "value",
            tags: nil)

        return defaultInstance
    }()
}

public extension PurchaseReservedDBInstancesOfferingResult {
    /**
     Default instance of the PurchaseReservedDBInstancesOfferingResult structure.
     */
    static let __default: RDSModel.PurchaseReservedDBInstancesOfferingResult = {
        let defaultInstance = RDSModel.PurchaseReservedDBInstancesOfferingResult(
            reservedDBInstance: nil)

        return defaultInstance
    }()
}

public extension PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering {
    /**
     Default instance of the PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering structure.
     */
    static let __default: RDSModel.PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering = {
        let defaultInstance = RDSModel.PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering(
            purchaseReservedDBInstancesOfferingResult: PurchaseReservedDBInstancesOfferingResult.__default)

        return defaultInstance
    }()
}

public extension Range {
    /**
     Default instance of the Range structure.
     */
    static let __default: RDSModel.Range = {
        let defaultInstance = RDSModel.Range(
            from: nil,
            step: nil,
            to: nil)

        return defaultInstance
    }()
}

public extension RebootDBInstanceMessage {
    /**
     Default instance of the RebootDBInstanceMessage structure.
     */
    static let __default: RDSModel.RebootDBInstanceMessage = {
        let defaultInstance = RDSModel.RebootDBInstanceMessage(
            dBInstanceIdentifier: "value",
            forceFailover: nil)

        return defaultInstance
    }()
}

public extension RebootDBInstanceResult {
    /**
     Default instance of the RebootDBInstanceResult structure.
     */
    static let __default: RDSModel.RebootDBInstanceResult = {
        let defaultInstance = RDSModel.RebootDBInstanceResult(
            dBInstance: nil)

        return defaultInstance
    }()
}

public extension RebootDBInstanceResultForRebootDBInstance {
    /**
     Default instance of the RebootDBInstanceResultForRebootDBInstance structure.
     */
    static let __default: RDSModel.RebootDBInstanceResultForRebootDBInstance = {
        let defaultInstance = RDSModel.RebootDBInstanceResultForRebootDBInstance(
            rebootDBInstanceResult: RebootDBInstanceResult.__default)

        return defaultInstance
    }()
}

public extension RecurringCharge {
    /**
     Default instance of the RecurringCharge structure.
     */
    static let __default: RDSModel.RecurringCharge = {
        let defaultInstance = RDSModel.RecurringCharge(
            recurringChargeAmount: nil,
            recurringChargeFrequency: nil)

        return defaultInstance
    }()
}

public extension RegisterDBProxyTargetsRequest {
    /**
     Default instance of the RegisterDBProxyTargetsRequest structure.
     */
    static let __default: RDSModel.RegisterDBProxyTargetsRequest = {
        let defaultInstance = RDSModel.RegisterDBProxyTargetsRequest(
            dBClusterIdentifiers: nil,
            dBInstanceIdentifiers: nil,
            dBProxyName: "value",
            targetGroupName: nil)

        return defaultInstance
    }()
}

public extension RegisterDBProxyTargetsResponse {
    /**
     Default instance of the RegisterDBProxyTargetsResponse structure.
     */
    static let __default: RDSModel.RegisterDBProxyTargetsResponse = {
        let defaultInstance = RDSModel.RegisterDBProxyTargetsResponse(
            dBProxyTargets: nil)

        return defaultInstance
    }()
}

public extension RegisterDBProxyTargetsResponseForRegisterDBProxyTargets {
    /**
     Default instance of the RegisterDBProxyTargetsResponseForRegisterDBProxyTargets structure.
     */
    static let __default: RDSModel.RegisterDBProxyTargetsResponseForRegisterDBProxyTargets = {
        let defaultInstance = RDSModel.RegisterDBProxyTargetsResponseForRegisterDBProxyTargets(
            registerDBProxyTargetsResult: RegisterDBProxyTargetsResponse.__default)

        return defaultInstance
    }()
}

public extension RemoveFromGlobalClusterMessage {
    /**
     Default instance of the RemoveFromGlobalClusterMessage structure.
     */
    static let __default: RDSModel.RemoveFromGlobalClusterMessage = {
        let defaultInstance = RDSModel.RemoveFromGlobalClusterMessage(
            dbClusterIdentifier: nil,
            globalClusterIdentifier: nil)

        return defaultInstance
    }()
}

public extension RemoveFromGlobalClusterResult {
    /**
     Default instance of the RemoveFromGlobalClusterResult structure.
     */
    static let __default: RDSModel.RemoveFromGlobalClusterResult = {
        let defaultInstance = RDSModel.RemoveFromGlobalClusterResult(
            globalCluster: nil)

        return defaultInstance
    }()
}

public extension RemoveFromGlobalClusterResultForRemoveFromGlobalCluster {
    /**
     Default instance of the RemoveFromGlobalClusterResultForRemoveFromGlobalCluster structure.
     */
    static let __default: RDSModel.RemoveFromGlobalClusterResultForRemoveFromGlobalCluster = {
        let defaultInstance = RDSModel.RemoveFromGlobalClusterResultForRemoveFromGlobalCluster(
            removeFromGlobalClusterResult: RemoveFromGlobalClusterResult.__default)

        return defaultInstance
    }()
}

public extension RemoveRoleFromDBClusterMessage {
    /**
     Default instance of the RemoveRoleFromDBClusterMessage structure.
     */
    static let __default: RDSModel.RemoveRoleFromDBClusterMessage = {
        let defaultInstance = RDSModel.RemoveRoleFromDBClusterMessage(
            dBClusterIdentifier: "value",
            featureName: nil,
            roleArn: "value")

        return defaultInstance
    }()
}

public extension RemoveRoleFromDBInstanceMessage {
    /**
     Default instance of the RemoveRoleFromDBInstanceMessage structure.
     */
    static let __default: RDSModel.RemoveRoleFromDBInstanceMessage = {
        let defaultInstance = RDSModel.RemoveRoleFromDBInstanceMessage(
            dBInstanceIdentifier: "value",
            featureName: "value",
            roleArn: "value")

        return defaultInstance
    }()
}

public extension RemoveSourceIdentifierFromSubscriptionMessage {
    /**
     Default instance of the RemoveSourceIdentifierFromSubscriptionMessage structure.
     */
    static let __default: RDSModel.RemoveSourceIdentifierFromSubscriptionMessage = {
        let defaultInstance = RDSModel.RemoveSourceIdentifierFromSubscriptionMessage(
            sourceIdentifier: "value",
            subscriptionName: "value")

        return defaultInstance
    }()
}

public extension RemoveSourceIdentifierFromSubscriptionResult {
    /**
     Default instance of the RemoveSourceIdentifierFromSubscriptionResult structure.
     */
    static let __default: RDSModel.RemoveSourceIdentifierFromSubscriptionResult = {
        let defaultInstance = RDSModel.RemoveSourceIdentifierFromSubscriptionResult(
            eventSubscription: nil)

        return defaultInstance
    }()
}

public extension RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription {
    /**
     Default instance of the RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription structure.
     */
    static let __default: RDSModel.RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription = {
        let defaultInstance = RDSModel.RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription(
            removeSourceIdentifierFromSubscriptionResult: RemoveSourceIdentifierFromSubscriptionResult.__default)

        return defaultInstance
    }()
}

public extension RemoveTagsFromResourceMessage {
    /**
     Default instance of the RemoveTagsFromResourceMessage structure.
     */
    static let __default: RDSModel.RemoveTagsFromResourceMessage = {
        let defaultInstance = RDSModel.RemoveTagsFromResourceMessage(
            resourceName: "value",
            tagKeys: [])

        return defaultInstance
    }()
}

public extension ReservedDBInstance {
    /**
     Default instance of the ReservedDBInstance structure.
     */
    static let __default: RDSModel.ReservedDBInstance = {
        let defaultInstance = RDSModel.ReservedDBInstance(
            currencyCode: nil,
            dBInstanceClass: nil,
            dBInstanceCount: nil,
            duration: nil,
            fixedPrice: nil,
            leaseId: nil,
            multiAZ: nil,
            offeringType: nil,
            productDescription: nil,
            recurringCharges: nil,
            reservedDBInstanceArn: nil,
            reservedDBInstanceId: nil,
            reservedDBInstancesOfferingId: nil,
            startTime: nil,
            state: nil,
            usagePrice: nil)

        return defaultInstance
    }()
}

public extension ReservedDBInstanceAlreadyExistsFault {
    /**
     Default instance of the ReservedDBInstanceAlreadyExistsFault structure.
     */
    static let __default: RDSModel.ReservedDBInstanceAlreadyExistsFault = {
        let defaultInstance = RDSModel.ReservedDBInstanceAlreadyExistsFault()

        return defaultInstance
    }()
}

public extension ReservedDBInstanceMessage {
    /**
     Default instance of the ReservedDBInstanceMessage structure.
     */
    static let __default: RDSModel.ReservedDBInstanceMessage = {
        let defaultInstance = RDSModel.ReservedDBInstanceMessage(
            marker: nil,
            reservedDBInstances: nil)

        return defaultInstance
    }()
}

public extension ReservedDBInstanceMessageForDescribeReservedDBInstances {
    /**
     Default instance of the ReservedDBInstanceMessageForDescribeReservedDBInstances structure.
     */
    static let __default: RDSModel.ReservedDBInstanceMessageForDescribeReservedDBInstances = {
        let defaultInstance = RDSModel.ReservedDBInstanceMessageForDescribeReservedDBInstances(
            describeReservedDBInstancesResult: ReservedDBInstanceMessage.__default)

        return defaultInstance
    }()
}

public extension ReservedDBInstanceNotFoundFault {
    /**
     Default instance of the ReservedDBInstanceNotFoundFault structure.
     */
    static let __default: RDSModel.ReservedDBInstanceNotFoundFault = {
        let defaultInstance = RDSModel.ReservedDBInstanceNotFoundFault()

        return defaultInstance
    }()
}

public extension ReservedDBInstanceQuotaExceededFault {
    /**
     Default instance of the ReservedDBInstanceQuotaExceededFault structure.
     */
    static let __default: RDSModel.ReservedDBInstanceQuotaExceededFault = {
        let defaultInstance = RDSModel.ReservedDBInstanceQuotaExceededFault()

        return defaultInstance
    }()
}

public extension ReservedDBInstancesOffering {
    /**
     Default instance of the ReservedDBInstancesOffering structure.
     */
    static let __default: RDSModel.ReservedDBInstancesOffering = {
        let defaultInstance = RDSModel.ReservedDBInstancesOffering(
            currencyCode: nil,
            dBInstanceClass: nil,
            duration: nil,
            fixedPrice: nil,
            multiAZ: nil,
            offeringType: nil,
            productDescription: nil,
            recurringCharges: nil,
            reservedDBInstancesOfferingId: nil,
            usagePrice: nil)

        return defaultInstance
    }()
}

public extension ReservedDBInstancesOfferingMessage {
    /**
     Default instance of the ReservedDBInstancesOfferingMessage structure.
     */
    static let __default: RDSModel.ReservedDBInstancesOfferingMessage = {
        let defaultInstance = RDSModel.ReservedDBInstancesOfferingMessage(
            marker: nil,
            reservedDBInstancesOfferings: nil)

        return defaultInstance
    }()
}

public extension ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings {
    /**
     Default instance of the ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings structure.
     */
    static let __default: RDSModel.ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings = {
        let defaultInstance = RDSModel.ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings(
            describeReservedDBInstancesOfferingsResult: ReservedDBInstancesOfferingMessage.__default)

        return defaultInstance
    }()
}

public extension ReservedDBInstancesOfferingNotFoundFault {
    /**
     Default instance of the ReservedDBInstancesOfferingNotFoundFault structure.
     */
    static let __default: RDSModel.ReservedDBInstancesOfferingNotFoundFault = {
        let defaultInstance = RDSModel.ReservedDBInstancesOfferingNotFoundFault()

        return defaultInstance
    }()
}

public extension ResetDBClusterParameterGroupMessage {
    /**
     Default instance of the ResetDBClusterParameterGroupMessage structure.
     */
    static let __default: RDSModel.ResetDBClusterParameterGroupMessage = {
        let defaultInstance = RDSModel.ResetDBClusterParameterGroupMessage(
            dBClusterParameterGroupName: "value",
            parameters: nil,
            resetAllParameters: nil)

        return defaultInstance
    }()
}

public extension ResetDBParameterGroupMessage {
    /**
     Default instance of the ResetDBParameterGroupMessage structure.
     */
    static let __default: RDSModel.ResetDBParameterGroupMessage = {
        let defaultInstance = RDSModel.ResetDBParameterGroupMessage(
            dBParameterGroupName: "value",
            parameters: nil,
            resetAllParameters: nil)

        return defaultInstance
    }()
}

public extension ResourceNotFoundFault {
    /**
     Default instance of the ResourceNotFoundFault structure.
     */
    static let __default: RDSModel.ResourceNotFoundFault = {
        let defaultInstance = RDSModel.ResourceNotFoundFault()

        return defaultInstance
    }()
}

public extension ResourcePendingMaintenanceActions {
    /**
     Default instance of the ResourcePendingMaintenanceActions structure.
     */
    static let __default: RDSModel.ResourcePendingMaintenanceActions = {
        let defaultInstance = RDSModel.ResourcePendingMaintenanceActions(
            pendingMaintenanceActionDetails: nil,
            resourceIdentifier: nil)

        return defaultInstance
    }()
}

public extension RestoreDBClusterFromS3Message {
    /**
     Default instance of the RestoreDBClusterFromS3Message structure.
     */
    static let __default: RDSModel.RestoreDBClusterFromS3Message = {
        let defaultInstance = RDSModel.RestoreDBClusterFromS3Message(
            availabilityZones: nil,
            backtrackWindow: nil,
            backupRetentionPeriod: nil,
            characterSetName: nil,
            copyTagsToSnapshot: nil,
            dBClusterIdentifier: "value",
            dBClusterParameterGroupName: nil,
            dBSubnetGroupName: nil,
            databaseName: nil,
            deletionProtection: nil,
            domain: nil,
            domainIAMRoleName: nil,
            enableCloudwatchLogsExports: nil,
            enableIAMDatabaseAuthentication: nil,
            engine: "value",
            engineVersion: nil,
            kmsKeyId: nil,
            masterUserPassword: "value",
            masterUsername: "value",
            optionGroupName: nil,
            port: nil,
            preferredBackupWindow: nil,
            preferredMaintenanceWindow: nil,
            s3BucketName: "value",
            s3IngestionRoleArn: "value",
            s3Prefix: nil,
            sourceEngine: "value",
            sourceEngineVersion: "value",
            storageEncrypted: nil,
            tags: nil,
            vpcSecurityGroupIds: nil)

        return defaultInstance
    }()
}

public extension RestoreDBClusterFromS3Result {
    /**
     Default instance of the RestoreDBClusterFromS3Result structure.
     */
    static let __default: RDSModel.RestoreDBClusterFromS3Result = {
        let defaultInstance = RDSModel.RestoreDBClusterFromS3Result(
            dBCluster: nil)

        return defaultInstance
    }()
}

public extension RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3 {
    /**
     Default instance of the RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3 structure.
     */
    static let __default: RDSModel.RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3 = {
        let defaultInstance = RDSModel.RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3(
            restoreDBClusterFromS3Result: RestoreDBClusterFromS3Result.__default)

        return defaultInstance
    }()
}

public extension RestoreDBClusterFromSnapshotMessage {
    /**
     Default instance of the RestoreDBClusterFromSnapshotMessage structure.
     */
    static let __default: RDSModel.RestoreDBClusterFromSnapshotMessage = {
        let defaultInstance = RDSModel.RestoreDBClusterFromSnapshotMessage(
            availabilityZones: nil,
            backtrackWindow: nil,
            copyTagsToSnapshot: nil,
            dBClusterIdentifier: "value",
            dBClusterParameterGroupName: nil,
            dBSubnetGroupName: nil,
            databaseName: nil,
            deletionProtection: nil,
            domain: nil,
            domainIAMRoleName: nil,
            enableCloudwatchLogsExports: nil,
            enableIAMDatabaseAuthentication: nil,
            engine: "value",
            engineMode: nil,
            engineVersion: nil,
            kmsKeyId: nil,
            optionGroupName: nil,
            port: nil,
            scalingConfiguration: nil,
            snapshotIdentifier: "value",
            tags: nil,
            vpcSecurityGroupIds: nil)

        return defaultInstance
    }()
}

public extension RestoreDBClusterFromSnapshotResult {
    /**
     Default instance of the RestoreDBClusterFromSnapshotResult structure.
     */
    static let __default: RDSModel.RestoreDBClusterFromSnapshotResult = {
        let defaultInstance = RDSModel.RestoreDBClusterFromSnapshotResult(
            dBCluster: nil)

        return defaultInstance
    }()
}

public extension RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot {
    /**
     Default instance of the RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot structure.
     */
    static let __default: RDSModel.RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot = {
        let defaultInstance = RDSModel.RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot(
            restoreDBClusterFromSnapshotResult: RestoreDBClusterFromSnapshotResult.__default)

        return defaultInstance
    }()
}

public extension RestoreDBClusterToPointInTimeMessage {
    /**
     Default instance of the RestoreDBClusterToPointInTimeMessage structure.
     */
    static let __default: RDSModel.RestoreDBClusterToPointInTimeMessage = {
        let defaultInstance = RDSModel.RestoreDBClusterToPointInTimeMessage(
            backtrackWindow: nil,
            copyTagsToSnapshot: nil,
            dBClusterIdentifier: "value",
            dBClusterParameterGroupName: nil,
            dBSubnetGroupName: nil,
            deletionProtection: nil,
            domain: nil,
            domainIAMRoleName: nil,
            enableCloudwatchLogsExports: nil,
            enableIAMDatabaseAuthentication: nil,
            kmsKeyId: nil,
            optionGroupName: nil,
            port: nil,
            restoreToTime: nil,
            restoreType: nil,
            sourceDBClusterIdentifier: "value",
            tags: nil,
            useLatestRestorableTime: nil,
            vpcSecurityGroupIds: nil)

        return defaultInstance
    }()
}

public extension RestoreDBClusterToPointInTimeResult {
    /**
     Default instance of the RestoreDBClusterToPointInTimeResult structure.
     */
    static let __default: RDSModel.RestoreDBClusterToPointInTimeResult = {
        let defaultInstance = RDSModel.RestoreDBClusterToPointInTimeResult(
            dBCluster: nil)

        return defaultInstance
    }()
}

public extension RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime {
    /**
     Default instance of the RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime structure.
     */
    static let __default: RDSModel.RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime = {
        let defaultInstance = RDSModel.RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime(
            restoreDBClusterToPointInTimeResult: RestoreDBClusterToPointInTimeResult.__default)

        return defaultInstance
    }()
}

public extension RestoreDBInstanceFromDBSnapshotMessage {
    /**
     Default instance of the RestoreDBInstanceFromDBSnapshotMessage structure.
     */
    static let __default: RDSModel.RestoreDBInstanceFromDBSnapshotMessage = {
        let defaultInstance = RDSModel.RestoreDBInstanceFromDBSnapshotMessage(
            autoMinorVersionUpgrade: nil,
            availabilityZone: nil,
            copyTagsToSnapshot: nil,
            dBInstanceClass: nil,
            dBInstanceIdentifier: "value",
            dBName: nil,
            dBParameterGroupName: nil,
            dBSnapshotIdentifier: "value",
            dBSubnetGroupName: nil,
            deletionProtection: nil,
            domain: nil,
            domainIAMRoleName: nil,
            enableCloudwatchLogsExports: nil,
            enableCustomerOwnedIp: nil,
            enableIAMDatabaseAuthentication: nil,
            engine: nil,
            iops: nil,
            licenseModel: nil,
            multiAZ: nil,
            optionGroupName: nil,
            port: nil,
            processorFeatures: nil,
            publiclyAccessible: nil,
            storageType: nil,
            tags: nil,
            tdeCredentialArn: nil,
            tdeCredentialPassword: nil,
            useDefaultProcessorFeatures: nil,
            vpcSecurityGroupIds: nil)

        return defaultInstance
    }()
}

public extension RestoreDBInstanceFromDBSnapshotResult {
    /**
     Default instance of the RestoreDBInstanceFromDBSnapshotResult structure.
     */
    static let __default: RDSModel.RestoreDBInstanceFromDBSnapshotResult = {
        let defaultInstance = RDSModel.RestoreDBInstanceFromDBSnapshotResult(
            dBInstance: nil)

        return defaultInstance
    }()
}

public extension RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot {
    /**
     Default instance of the RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot structure.
     */
    static let __default: RDSModel.RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot = {
        let defaultInstance = RDSModel.RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot(
            restoreDBInstanceFromDBSnapshotResult: RestoreDBInstanceFromDBSnapshotResult.__default)

        return defaultInstance
    }()
}

public extension RestoreDBInstanceFromS3Message {
    /**
     Default instance of the RestoreDBInstanceFromS3Message structure.
     */
    static let __default: RDSModel.RestoreDBInstanceFromS3Message = {
        let defaultInstance = RDSModel.RestoreDBInstanceFromS3Message(
            allocatedStorage: nil,
            autoMinorVersionUpgrade: nil,
            availabilityZone: nil,
            backupRetentionPeriod: nil,
            copyTagsToSnapshot: nil,
            dBInstanceClass: "value",
            dBInstanceIdentifier: "value",
            dBName: nil,
            dBParameterGroupName: nil,
            dBSecurityGroups: nil,
            dBSubnetGroupName: nil,
            deletionProtection: nil,
            enableCloudwatchLogsExports: nil,
            enableIAMDatabaseAuthentication: nil,
            enablePerformanceInsights: nil,
            engine: "value",
            engineVersion: nil,
            iops: nil,
            kmsKeyId: nil,
            licenseModel: nil,
            masterUserPassword: nil,
            masterUsername: nil,
            maxAllocatedStorage: nil,
            monitoringInterval: nil,
            monitoringRoleArn: nil,
            multiAZ: nil,
            optionGroupName: nil,
            performanceInsightsKMSKeyId: nil,
            performanceInsightsRetentionPeriod: nil,
            port: nil,
            preferredBackupWindow: nil,
            preferredMaintenanceWindow: nil,
            processorFeatures: nil,
            publiclyAccessible: nil,
            s3BucketName: "value",
            s3IngestionRoleArn: "value",
            s3Prefix: nil,
            sourceEngine: "value",
            sourceEngineVersion: "value",
            storageEncrypted: nil,
            storageType: nil,
            tags: nil,
            useDefaultProcessorFeatures: nil,
            vpcSecurityGroupIds: nil)

        return defaultInstance
    }()
}

public extension RestoreDBInstanceFromS3Result {
    /**
     Default instance of the RestoreDBInstanceFromS3Result structure.
     */
    static let __default: RDSModel.RestoreDBInstanceFromS3Result = {
        let defaultInstance = RDSModel.RestoreDBInstanceFromS3Result(
            dBInstance: nil)

        return defaultInstance
    }()
}

public extension RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3 {
    /**
     Default instance of the RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3 structure.
     */
    static let __default: RDSModel.RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3 = {
        let defaultInstance = RDSModel.RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3(
            restoreDBInstanceFromS3Result: RestoreDBInstanceFromS3Result.__default)

        return defaultInstance
    }()
}

public extension RestoreDBInstanceToPointInTimeMessage {
    /**
     Default instance of the RestoreDBInstanceToPointInTimeMessage structure.
     */
    static let __default: RDSModel.RestoreDBInstanceToPointInTimeMessage = {
        let defaultInstance = RDSModel.RestoreDBInstanceToPointInTimeMessage(
            autoMinorVersionUpgrade: nil,
            availabilityZone: nil,
            copyTagsToSnapshot: nil,
            dBInstanceClass: nil,
            dBName: nil,
            dBParameterGroupName: nil,
            dBSubnetGroupName: nil,
            deletionProtection: nil,
            domain: nil,
            domainIAMRoleName: nil,
            enableCloudwatchLogsExports: nil,
            enableCustomerOwnedIp: nil,
            enableIAMDatabaseAuthentication: nil,
            engine: nil,
            iops: nil,
            licenseModel: nil,
            maxAllocatedStorage: nil,
            multiAZ: nil,
            optionGroupName: nil,
            port: nil,
            processorFeatures: nil,
            publiclyAccessible: nil,
            restoreTime: nil,
            sourceDBInstanceAutomatedBackupsArn: nil,
            sourceDBInstanceIdentifier: nil,
            sourceDbiResourceId: nil,
            storageType: nil,
            tags: nil,
            targetDBInstanceIdentifier: "value",
            tdeCredentialArn: nil,
            tdeCredentialPassword: nil,
            useDefaultProcessorFeatures: nil,
            useLatestRestorableTime: nil,
            vpcSecurityGroupIds: nil)

        return defaultInstance
    }()
}

public extension RestoreDBInstanceToPointInTimeResult {
    /**
     Default instance of the RestoreDBInstanceToPointInTimeResult structure.
     */
    static let __default: RDSModel.RestoreDBInstanceToPointInTimeResult = {
        let defaultInstance = RDSModel.RestoreDBInstanceToPointInTimeResult(
            dBInstance: nil)

        return defaultInstance
    }()
}

public extension RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime {
    /**
     Default instance of the RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime structure.
     */
    static let __default: RDSModel.RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime = {
        let defaultInstance = RDSModel.RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime(
            restoreDBInstanceToPointInTimeResult: RestoreDBInstanceToPointInTimeResult.__default)

        return defaultInstance
    }()
}

public extension RestoreWindow {
    /**
     Default instance of the RestoreWindow structure.
     */
    static let __default: RDSModel.RestoreWindow = {
        let defaultInstance = RDSModel.RestoreWindow(
            earliestTime: nil,
            latestTime: nil)

        return defaultInstance
    }()
}

public extension RevokeDBSecurityGroupIngressMessage {
    /**
     Default instance of the RevokeDBSecurityGroupIngressMessage structure.
     */
    static let __default: RDSModel.RevokeDBSecurityGroupIngressMessage = {
        let defaultInstance = RDSModel.RevokeDBSecurityGroupIngressMessage(
            cIDRIP: nil,
            dBSecurityGroupName: "value",
            eC2SecurityGroupId: nil,
            eC2SecurityGroupName: nil,
            eC2SecurityGroupOwnerId: nil)

        return defaultInstance
    }()
}

public extension RevokeDBSecurityGroupIngressResult {
    /**
     Default instance of the RevokeDBSecurityGroupIngressResult structure.
     */
    static let __default: RDSModel.RevokeDBSecurityGroupIngressResult = {
        let defaultInstance = RDSModel.RevokeDBSecurityGroupIngressResult(
            dBSecurityGroup: nil)

        return defaultInstance
    }()
}

public extension RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress {
    /**
     Default instance of the RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress structure.
     */
    static let __default: RDSModel.RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress = {
        let defaultInstance = RDSModel.RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress(
            revokeDBSecurityGroupIngressResult: RevokeDBSecurityGroupIngressResult.__default)

        return defaultInstance
    }()
}

public extension SNSInvalidTopicFault {
    /**
     Default instance of the SNSInvalidTopicFault structure.
     */
    static let __default: RDSModel.SNSInvalidTopicFault = {
        let defaultInstance = RDSModel.SNSInvalidTopicFault()

        return defaultInstance
    }()
}

public extension SNSNoAuthorizationFault {
    /**
     Default instance of the SNSNoAuthorizationFault structure.
     */
    static let __default: RDSModel.SNSNoAuthorizationFault = {
        let defaultInstance = RDSModel.SNSNoAuthorizationFault()

        return defaultInstance
    }()
}

public extension SNSTopicArnNotFoundFault {
    /**
     Default instance of the SNSTopicArnNotFoundFault structure.
     */
    static let __default: RDSModel.SNSTopicArnNotFoundFault = {
        let defaultInstance = RDSModel.SNSTopicArnNotFoundFault()

        return defaultInstance
    }()
}

public extension ScalingConfiguration {
    /**
     Default instance of the ScalingConfiguration structure.
     */
    static let __default: RDSModel.ScalingConfiguration = {
        let defaultInstance = RDSModel.ScalingConfiguration(
            autoPause: nil,
            maxCapacity: nil,
            minCapacity: nil,
            secondsUntilAutoPause: nil,
            timeoutAction: nil)

        return defaultInstance
    }()
}

public extension ScalingConfigurationInfo {
    /**
     Default instance of the ScalingConfigurationInfo structure.
     */
    static let __default: RDSModel.ScalingConfigurationInfo = {
        let defaultInstance = RDSModel.ScalingConfigurationInfo(
            autoPause: nil,
            maxCapacity: nil,
            minCapacity: nil,
            secondsUntilAutoPause: nil,
            timeoutAction: nil)

        return defaultInstance
    }()
}

public extension SharedSnapshotQuotaExceededFault {
    /**
     Default instance of the SharedSnapshotQuotaExceededFault structure.
     */
    static let __default: RDSModel.SharedSnapshotQuotaExceededFault = {
        let defaultInstance = RDSModel.SharedSnapshotQuotaExceededFault()

        return defaultInstance
    }()
}

public extension SnapshotQuotaExceededFault {
    /**
     Default instance of the SnapshotQuotaExceededFault structure.
     */
    static let __default: RDSModel.SnapshotQuotaExceededFault = {
        let defaultInstance = RDSModel.SnapshotQuotaExceededFault()

        return defaultInstance
    }()
}

public extension SourceNotFoundFault {
    /**
     Default instance of the SourceNotFoundFault structure.
     */
    static let __default: RDSModel.SourceNotFoundFault = {
        let defaultInstance = RDSModel.SourceNotFoundFault()

        return defaultInstance
    }()
}

public extension SourceRegion {
    /**
     Default instance of the SourceRegion structure.
     */
    static let __default: RDSModel.SourceRegion = {
        let defaultInstance = RDSModel.SourceRegion(
            endpoint: nil,
            regionName: nil,
            status: nil,
            supportsDBInstanceAutomatedBackupsReplication: nil)

        return defaultInstance
    }()
}

public extension SourceRegionMessage {
    /**
     Default instance of the SourceRegionMessage structure.
     */
    static let __default: RDSModel.SourceRegionMessage = {
        let defaultInstance = RDSModel.SourceRegionMessage(
            marker: nil,
            sourceRegions: nil)

        return defaultInstance
    }()
}

public extension SourceRegionMessageForDescribeSourceRegions {
    /**
     Default instance of the SourceRegionMessageForDescribeSourceRegions structure.
     */
    static let __default: RDSModel.SourceRegionMessageForDescribeSourceRegions = {
        let defaultInstance = RDSModel.SourceRegionMessageForDescribeSourceRegions(
            describeSourceRegionsResult: SourceRegionMessage.__default)

        return defaultInstance
    }()
}

public extension StartActivityStreamRequest {
    /**
     Default instance of the StartActivityStreamRequest structure.
     */
    static let __default: RDSModel.StartActivityStreamRequest = {
        let defaultInstance = RDSModel.StartActivityStreamRequest(
            applyImmediately: nil,
            kmsKeyId: "value",
            mode: .__default,
            resourceArn: "value")

        return defaultInstance
    }()
}

public extension StartActivityStreamResponse {
    /**
     Default instance of the StartActivityStreamResponse structure.
     */
    static let __default: RDSModel.StartActivityStreamResponse = {
        let defaultInstance = RDSModel.StartActivityStreamResponse(
            applyImmediately: nil,
            kinesisStreamName: nil,
            kmsKeyId: nil,
            mode: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension StartActivityStreamResponseForStartActivityStream {
    /**
     Default instance of the StartActivityStreamResponseForStartActivityStream structure.
     */
    static let __default: RDSModel.StartActivityStreamResponseForStartActivityStream = {
        let defaultInstance = RDSModel.StartActivityStreamResponseForStartActivityStream(
            startActivityStreamResult: StartActivityStreamResponse.__default)

        return defaultInstance
    }()
}

public extension StartDBClusterMessage {
    /**
     Default instance of the StartDBClusterMessage structure.
     */
    static let __default: RDSModel.StartDBClusterMessage = {
        let defaultInstance = RDSModel.StartDBClusterMessage(
            dBClusterIdentifier: "value")

        return defaultInstance
    }()
}

public extension StartDBClusterResult {
    /**
     Default instance of the StartDBClusterResult structure.
     */
    static let __default: RDSModel.StartDBClusterResult = {
        let defaultInstance = RDSModel.StartDBClusterResult(
            dBCluster: nil)

        return defaultInstance
    }()
}

public extension StartDBClusterResultForStartDBCluster {
    /**
     Default instance of the StartDBClusterResultForStartDBCluster structure.
     */
    static let __default: RDSModel.StartDBClusterResultForStartDBCluster = {
        let defaultInstance = RDSModel.StartDBClusterResultForStartDBCluster(
            startDBClusterResult: StartDBClusterResult.__default)

        return defaultInstance
    }()
}

public extension StartDBInstanceAutomatedBackupsReplicationMessage {
    /**
     Default instance of the StartDBInstanceAutomatedBackupsReplicationMessage structure.
     */
    static let __default: RDSModel.StartDBInstanceAutomatedBackupsReplicationMessage = {
        let defaultInstance = RDSModel.StartDBInstanceAutomatedBackupsReplicationMessage(
            backupRetentionPeriod: nil,
            kmsKeyId: nil,
            preSignedUrl: nil,
            sourceDBInstanceArn: "value")

        return defaultInstance
    }()
}

public extension StartDBInstanceAutomatedBackupsReplicationResult {
    /**
     Default instance of the StartDBInstanceAutomatedBackupsReplicationResult structure.
     */
    static let __default: RDSModel.StartDBInstanceAutomatedBackupsReplicationResult = {
        let defaultInstance = RDSModel.StartDBInstanceAutomatedBackupsReplicationResult(
            dBInstanceAutomatedBackup: nil)

        return defaultInstance
    }()
}

public extension StartDBInstanceAutomatedBackupsReplicationResultForStartDBInstanceAutomatedBackupsReplication {
    /**
     Default instance of the StartDBInstanceAutomatedBackupsReplicationResultForStartDBInstanceAutomatedBackupsReplication structure.
     */
    static let __default: RDSModel.StartDBInstanceAutomatedBackupsReplicationResultForStartDBInstanceAutomatedBackupsReplication = {
        let defaultInstance = RDSModel.StartDBInstanceAutomatedBackupsReplicationResultForStartDBInstanceAutomatedBackupsReplication(
            startDBInstanceAutomatedBackupsReplicationResult: StartDBInstanceAutomatedBackupsReplicationResult.__default)

        return defaultInstance
    }()
}

public extension StartDBInstanceMessage {
    /**
     Default instance of the StartDBInstanceMessage structure.
     */
    static let __default: RDSModel.StartDBInstanceMessage = {
        let defaultInstance = RDSModel.StartDBInstanceMessage(
            dBInstanceIdentifier: "value")

        return defaultInstance
    }()
}

public extension StartDBInstanceResult {
    /**
     Default instance of the StartDBInstanceResult structure.
     */
    static let __default: RDSModel.StartDBInstanceResult = {
        let defaultInstance = RDSModel.StartDBInstanceResult(
            dBInstance: nil)

        return defaultInstance
    }()
}

public extension StartDBInstanceResultForStartDBInstance {
    /**
     Default instance of the StartDBInstanceResultForStartDBInstance structure.
     */
    static let __default: RDSModel.StartDBInstanceResultForStartDBInstance = {
        let defaultInstance = RDSModel.StartDBInstanceResultForStartDBInstance(
            startDBInstanceResult: StartDBInstanceResult.__default)

        return defaultInstance
    }()
}

public extension StartExportTaskMessage {
    /**
     Default instance of the StartExportTaskMessage structure.
     */
    static let __default: RDSModel.StartExportTaskMessage = {
        let defaultInstance = RDSModel.StartExportTaskMessage(
            exportOnly: nil,
            exportTaskIdentifier: "value",
            iamRoleArn: "value",
            kmsKeyId: "value",
            s3BucketName: "value",
            s3Prefix: nil,
            sourceArn: "value")

        return defaultInstance
    }()
}

public extension StopActivityStreamRequest {
    /**
     Default instance of the StopActivityStreamRequest structure.
     */
    static let __default: RDSModel.StopActivityStreamRequest = {
        let defaultInstance = RDSModel.StopActivityStreamRequest(
            applyImmediately: nil,
            resourceArn: "value")

        return defaultInstance
    }()
}

public extension StopActivityStreamResponse {
    /**
     Default instance of the StopActivityStreamResponse structure.
     */
    static let __default: RDSModel.StopActivityStreamResponse = {
        let defaultInstance = RDSModel.StopActivityStreamResponse(
            kinesisStreamName: nil,
            kmsKeyId: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension StopActivityStreamResponseForStopActivityStream {
    /**
     Default instance of the StopActivityStreamResponseForStopActivityStream structure.
     */
    static let __default: RDSModel.StopActivityStreamResponseForStopActivityStream = {
        let defaultInstance = RDSModel.StopActivityStreamResponseForStopActivityStream(
            stopActivityStreamResult: StopActivityStreamResponse.__default)

        return defaultInstance
    }()
}

public extension StopDBClusterMessage {
    /**
     Default instance of the StopDBClusterMessage structure.
     */
    static let __default: RDSModel.StopDBClusterMessage = {
        let defaultInstance = RDSModel.StopDBClusterMessage(
            dBClusterIdentifier: "value")

        return defaultInstance
    }()
}

public extension StopDBClusterResult {
    /**
     Default instance of the StopDBClusterResult structure.
     */
    static let __default: RDSModel.StopDBClusterResult = {
        let defaultInstance = RDSModel.StopDBClusterResult(
            dBCluster: nil)

        return defaultInstance
    }()
}

public extension StopDBClusterResultForStopDBCluster {
    /**
     Default instance of the StopDBClusterResultForStopDBCluster structure.
     */
    static let __default: RDSModel.StopDBClusterResultForStopDBCluster = {
        let defaultInstance = RDSModel.StopDBClusterResultForStopDBCluster(
            stopDBClusterResult: StopDBClusterResult.__default)

        return defaultInstance
    }()
}

public extension StopDBInstanceAutomatedBackupsReplicationMessage {
    /**
     Default instance of the StopDBInstanceAutomatedBackupsReplicationMessage structure.
     */
    static let __default: RDSModel.StopDBInstanceAutomatedBackupsReplicationMessage = {
        let defaultInstance = RDSModel.StopDBInstanceAutomatedBackupsReplicationMessage(
            sourceDBInstanceArn: "value")

        return defaultInstance
    }()
}

public extension StopDBInstanceAutomatedBackupsReplicationResult {
    /**
     Default instance of the StopDBInstanceAutomatedBackupsReplicationResult structure.
     */
    static let __default: RDSModel.StopDBInstanceAutomatedBackupsReplicationResult = {
        let defaultInstance = RDSModel.StopDBInstanceAutomatedBackupsReplicationResult(
            dBInstanceAutomatedBackup: nil)

        return defaultInstance
    }()
}

public extension StopDBInstanceAutomatedBackupsReplicationResultForStopDBInstanceAutomatedBackupsReplication {
    /**
     Default instance of the StopDBInstanceAutomatedBackupsReplicationResultForStopDBInstanceAutomatedBackupsReplication structure.
     */
    static let __default: RDSModel.StopDBInstanceAutomatedBackupsReplicationResultForStopDBInstanceAutomatedBackupsReplication = {
        let defaultInstance = RDSModel.StopDBInstanceAutomatedBackupsReplicationResultForStopDBInstanceAutomatedBackupsReplication(
            stopDBInstanceAutomatedBackupsReplicationResult: StopDBInstanceAutomatedBackupsReplicationResult.__default)

        return defaultInstance
    }()
}

public extension StopDBInstanceMessage {
    /**
     Default instance of the StopDBInstanceMessage structure.
     */
    static let __default: RDSModel.StopDBInstanceMessage = {
        let defaultInstance = RDSModel.StopDBInstanceMessage(
            dBInstanceIdentifier: "value",
            dBSnapshotIdentifier: nil)

        return defaultInstance
    }()
}

public extension StopDBInstanceResult {
    /**
     Default instance of the StopDBInstanceResult structure.
     */
    static let __default: RDSModel.StopDBInstanceResult = {
        let defaultInstance = RDSModel.StopDBInstanceResult(
            dBInstance: nil)

        return defaultInstance
    }()
}

public extension StopDBInstanceResultForStopDBInstance {
    /**
     Default instance of the StopDBInstanceResultForStopDBInstance structure.
     */
    static let __default: RDSModel.StopDBInstanceResultForStopDBInstance = {
        let defaultInstance = RDSModel.StopDBInstanceResultForStopDBInstance(
            stopDBInstanceResult: StopDBInstanceResult.__default)

        return defaultInstance
    }()
}

public extension StorageQuotaExceededFault {
    /**
     Default instance of the StorageQuotaExceededFault structure.
     */
    static let __default: RDSModel.StorageQuotaExceededFault = {
        let defaultInstance = RDSModel.StorageQuotaExceededFault()

        return defaultInstance
    }()
}

public extension StorageTypeNotSupportedFault {
    /**
     Default instance of the StorageTypeNotSupportedFault structure.
     */
    static let __default: RDSModel.StorageTypeNotSupportedFault = {
        let defaultInstance = RDSModel.StorageTypeNotSupportedFault()

        return defaultInstance
    }()
}

public extension Subnet {
    /**
     Default instance of the Subnet structure.
     */
    static let __default: RDSModel.Subnet = {
        let defaultInstance = RDSModel.Subnet(
            subnetAvailabilityZone: nil,
            subnetIdentifier: nil,
            subnetOutpost: nil,
            subnetStatus: nil)

        return defaultInstance
    }()
}

public extension SubnetAlreadyInUse {
    /**
     Default instance of the SubnetAlreadyInUse structure.
     */
    static let __default: RDSModel.SubnetAlreadyInUse = {
        let defaultInstance = RDSModel.SubnetAlreadyInUse()

        return defaultInstance
    }()
}

public extension SubscriptionAlreadyExistFault {
    /**
     Default instance of the SubscriptionAlreadyExistFault structure.
     */
    static let __default: RDSModel.SubscriptionAlreadyExistFault = {
        let defaultInstance = RDSModel.SubscriptionAlreadyExistFault()

        return defaultInstance
    }()
}

public extension SubscriptionCategoryNotFoundFault {
    /**
     Default instance of the SubscriptionCategoryNotFoundFault structure.
     */
    static let __default: RDSModel.SubscriptionCategoryNotFoundFault = {
        let defaultInstance = RDSModel.SubscriptionCategoryNotFoundFault()

        return defaultInstance
    }()
}

public extension SubscriptionNotFoundFault {
    /**
     Default instance of the SubscriptionNotFoundFault structure.
     */
    static let __default: RDSModel.SubscriptionNotFoundFault = {
        let defaultInstance = RDSModel.SubscriptionNotFoundFault()

        return defaultInstance
    }()
}

public extension Tag {
    /**
     Default instance of the Tag structure.
     */
    static let __default: RDSModel.Tag = {
        let defaultInstance = RDSModel.Tag(
            key: nil,
            value: nil)

        return defaultInstance
    }()
}

public extension TagListMessage {
    /**
     Default instance of the TagListMessage structure.
     */
    static let __default: RDSModel.TagListMessage = {
        let defaultInstance = RDSModel.TagListMessage(
            tagList: nil)

        return defaultInstance
    }()
}

public extension TagListMessageForListTagsForResource {
    /**
     Default instance of the TagListMessageForListTagsForResource structure.
     */
    static let __default: RDSModel.TagListMessageForListTagsForResource = {
        let defaultInstance = RDSModel.TagListMessageForListTagsForResource(
            listTagsForResourceResult: TagListMessage.__default)

        return defaultInstance
    }()
}

public extension TargetHealth {
    /**
     Default instance of the TargetHealth structure.
     */
    static let __default: RDSModel.TargetHealth = {
        let defaultInstance = RDSModel.TargetHealth(
            description: nil,
            reason: nil,
            state: nil)

        return defaultInstance
    }()
}

public extension Timezone {
    /**
     Default instance of the Timezone structure.
     */
    static let __default: RDSModel.Timezone = {
        let defaultInstance = RDSModel.Timezone(
            timezoneName: nil)

        return defaultInstance
    }()
}

public extension UpgradeTarget {
    /**
     Default instance of the UpgradeTarget structure.
     */
    static let __default: RDSModel.UpgradeTarget = {
        let defaultInstance = RDSModel.UpgradeTarget(
            autoUpgrade: nil,
            description: nil,
            engine: nil,
            engineVersion: nil,
            isMajorVersionUpgrade: nil,
            supportedEngineModes: nil,
            supportsGlobalDatabases: nil,
            supportsParallelQuery: nil)

        return defaultInstance
    }()
}

public extension UserAuthConfig {
    /**
     Default instance of the UserAuthConfig structure.
     */
    static let __default: RDSModel.UserAuthConfig = {
        let defaultInstance = RDSModel.UserAuthConfig(
            authScheme: nil,
            description: nil,
            iAMAuth: nil,
            secretArn: nil,
            userName: nil)

        return defaultInstance
    }()
}

public extension UserAuthConfigInfo {
    /**
     Default instance of the UserAuthConfigInfo structure.
     */
    static let __default: RDSModel.UserAuthConfigInfo = {
        let defaultInstance = RDSModel.UserAuthConfigInfo(
            authScheme: nil,
            description: nil,
            iAMAuth: nil,
            secretArn: nil,
            userName: nil)

        return defaultInstance
    }()
}

public extension ValidDBInstanceModificationsMessage {
    /**
     Default instance of the ValidDBInstanceModificationsMessage structure.
     */
    static let __default: RDSModel.ValidDBInstanceModificationsMessage = {
        let defaultInstance = RDSModel.ValidDBInstanceModificationsMessage(
            storage: nil,
            validProcessorFeatures: nil)

        return defaultInstance
    }()
}

public extension ValidStorageOptions {
    /**
     Default instance of the ValidStorageOptions structure.
     */
    static let __default: RDSModel.ValidStorageOptions = {
        let defaultInstance = RDSModel.ValidStorageOptions(
            iopsToStorageRatio: nil,
            provisionedIops: nil,
            storageSize: nil,
            storageType: nil,
            supportsStorageAutoscaling: nil)

        return defaultInstance
    }()
}

public extension VpcSecurityGroupMembership {
    /**
     Default instance of the VpcSecurityGroupMembership structure.
     */
    static let __default: RDSModel.VpcSecurityGroupMembership = {
        let defaultInstance = RDSModel.VpcSecurityGroupMembership(
            status: nil,
            vpcSecurityGroupId: nil)

        return defaultInstance
    }()
}

public extension VpnDetails {
    /**
     Default instance of the VpnDetails structure.
     */
    static let __default: RDSModel.VpnDetails = {
        let defaultInstance = RDSModel.VpnDetails(
            vpnGatewayIp: nil,
            vpnId: nil,
            vpnName: nil,
            vpnPSK: nil,
            vpnState: nil,
            vpnTunnelOriginatorIP: nil)

        return defaultInstance
    }()
}
