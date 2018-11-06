// Copyright 2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// DynamoDBModelDefaultInstances.swift
// DynamoDBModel
//

import Foundation

public extension AttributeDefinition {
    /**
     Default instance of the AttributeDefinition structure.
     */
    public static let __default: DynamoDBModel.AttributeDefinition = {
        let defaultInstance = DynamoDBModel.AttributeDefinition(
            attributeName: "0",
            attributeType: .__default)

        return defaultInstance
    }()
}

public extension AttributeValue {
    /**
     Default instance of the AttributeValue structure.
     */
    public static let __default: DynamoDBModel.AttributeValue = {
        let defaultInstance = DynamoDBModel.AttributeValue(
            B: nil,
            BOOL: nil,
            BS: nil,
            L: nil,
            M: nil,
            N: nil,
            NS: nil,
            NULL: nil,
            S: nil,
            SS: nil)

        return defaultInstance
    }()
}

public extension AttributeValueUpdate {
    /**
     Default instance of the AttributeValueUpdate structure.
     */
    public static let __default: DynamoDBModel.AttributeValueUpdate = {
        let defaultInstance = DynamoDBModel.AttributeValueUpdate(
            action: nil,
            value: nil)

        return defaultInstance
    }()
}

public extension AutoScalingPolicyDescription {
    /**
     Default instance of the AutoScalingPolicyDescription structure.
     */
    public static let __default: DynamoDBModel.AutoScalingPolicyDescription = {
        let defaultInstance = DynamoDBModel.AutoScalingPolicyDescription(
            policyName: nil,
            targetTrackingScalingPolicyConfiguration: nil)

        return defaultInstance
    }()
}

public extension AutoScalingPolicyUpdate {
    /**
     Default instance of the AutoScalingPolicyUpdate structure.
     */
    public static let __default: DynamoDBModel.AutoScalingPolicyUpdate = {
        let defaultInstance = DynamoDBModel.AutoScalingPolicyUpdate(
            policyName: nil,
            targetTrackingScalingPolicyConfiguration: AutoScalingTargetTrackingScalingPolicyConfigurationUpdate.__default)

        return defaultInstance
    }()
}

public extension AutoScalingSettingsDescription {
    /**
     Default instance of the AutoScalingSettingsDescription structure.
     */
    public static let __default: DynamoDBModel.AutoScalingSettingsDescription = {
        let defaultInstance = DynamoDBModel.AutoScalingSettingsDescription(
            autoScalingDisabled: nil,
            autoScalingRoleArn: nil,
            maximumUnits: nil,
            minimumUnits: nil,
            scalingPolicies: nil)

        return defaultInstance
    }()
}

public extension AutoScalingSettingsUpdate {
    /**
     Default instance of the AutoScalingSettingsUpdate structure.
     */
    public static let __default: DynamoDBModel.AutoScalingSettingsUpdate = {
        let defaultInstance = DynamoDBModel.AutoScalingSettingsUpdate(
            autoScalingDisabled: nil,
            autoScalingRoleArn: nil,
            maximumUnits: nil,
            minimumUnits: nil,
            scalingPolicyUpdate: nil)

        return defaultInstance
    }()
}

public extension AutoScalingTargetTrackingScalingPolicyConfigurationDescription {
    /**
     Default instance of the AutoScalingTargetTrackingScalingPolicyConfigurationDescription structure.
     */
    public static let __default: DynamoDBModel.AutoScalingTargetTrackingScalingPolicyConfigurationDescription = {
        let defaultInstance = DynamoDBModel.AutoScalingTargetTrackingScalingPolicyConfigurationDescription(
            disableScaleIn: nil,
            scaleInCooldown: nil,
            scaleOutCooldown: nil,
            targetValue: 0.0)

        return defaultInstance
    }()
}

public extension AutoScalingTargetTrackingScalingPolicyConfigurationUpdate {
    /**
     Default instance of the AutoScalingTargetTrackingScalingPolicyConfigurationUpdate structure.
     */
    public static let __default: DynamoDBModel.AutoScalingTargetTrackingScalingPolicyConfigurationUpdate = {
        let defaultInstance = DynamoDBModel.AutoScalingTargetTrackingScalingPolicyConfigurationUpdate(
            disableScaleIn: nil,
            scaleInCooldown: nil,
            scaleOutCooldown: nil,
            targetValue: 0.0)

        return defaultInstance
    }()
}

public extension BackupDescription {
    /**
     Default instance of the BackupDescription structure.
     */
    public static let __default: DynamoDBModel.BackupDescription = {
        let defaultInstance = DynamoDBModel.BackupDescription(
            backupDetails: nil,
            sourceTableDetails: nil,
            sourceTableFeatureDetails: nil)

        return defaultInstance
    }()
}

public extension BackupDetails {
    /**
     Default instance of the BackupDetails structure.
     */
    public static let __default: DynamoDBModel.BackupDetails = {
        let defaultInstance = DynamoDBModel.BackupDetails(
            backupArn: "0123456789012345678901234567890123456",
            backupCreationDateTime: "2013-02-18T17:00:00Z",
            backupExpiryDateTime: nil,
            backupName: "012",
            backupSizeBytes: nil,
            backupStatus: .__default,
            backupType: .__default)

        return defaultInstance
    }()
}

public extension BackupInUseException {
    /**
     Default instance of the BackupInUseException structure.
     */
    public static let __default: DynamoDBModel.BackupInUseException = {
        let defaultInstance = DynamoDBModel.BackupInUseException(
            message: nil)

        return defaultInstance
    }()
}

public extension BackupNotFoundException {
    /**
     Default instance of the BackupNotFoundException structure.
     */
    public static let __default: DynamoDBModel.BackupNotFoundException = {
        let defaultInstance = DynamoDBModel.BackupNotFoundException(
            message: nil)

        return defaultInstance
    }()
}

public extension BackupSummary {
    /**
     Default instance of the BackupSummary structure.
     */
    public static let __default: DynamoDBModel.BackupSummary = {
        let defaultInstance = DynamoDBModel.BackupSummary(
            backupArn: nil,
            backupCreationDateTime: nil,
            backupExpiryDateTime: nil,
            backupName: nil,
            backupSizeBytes: nil,
            backupStatus: nil,
            backupType: nil,
            tableArn: nil,
            tableId: nil,
            tableName: nil)

        return defaultInstance
    }()
}

public extension BatchGetItemInput {
    /**
     Default instance of the BatchGetItemInput structure.
     */
    public static let __default: DynamoDBModel.BatchGetItemInput = {
        let defaultInstance = DynamoDBModel.BatchGetItemInput(
            requestItems: ["Entry_0": KeysAndAttributes.__default],
            returnConsumedCapacity: nil)

        return defaultInstance
    }()
}

public extension BatchGetItemOutput {
    /**
     Default instance of the BatchGetItemOutput structure.
     */
    public static let __default: DynamoDBModel.BatchGetItemOutput = {
        let defaultInstance = DynamoDBModel.BatchGetItemOutput(
            consumedCapacity: nil,
            responses: nil,
            unprocessedKeys: nil)

        return defaultInstance
    }()
}

public extension BatchWriteItemInput {
    /**
     Default instance of the BatchWriteItemInput structure.
     */
    public static let __default: DynamoDBModel.BatchWriteItemInput = {
        let defaultInstance = DynamoDBModel.BatchWriteItemInput(
            requestItems: ["Entry_0": [WriteRequest.__default]],
            returnConsumedCapacity: nil,
            returnItemCollectionMetrics: nil)

        return defaultInstance
    }()
}

public extension BatchWriteItemOutput {
    /**
     Default instance of the BatchWriteItemOutput structure.
     */
    public static let __default: DynamoDBModel.BatchWriteItemOutput = {
        let defaultInstance = DynamoDBModel.BatchWriteItemOutput(
            consumedCapacity: nil,
            itemCollectionMetrics: nil,
            unprocessedItems: nil)

        return defaultInstance
    }()
}

public extension Capacity {
    /**
     Default instance of the Capacity structure.
     */
    public static let __default: DynamoDBModel.Capacity = {
        let defaultInstance = DynamoDBModel.Capacity(
            capacityUnits: nil)

        return defaultInstance
    }()
}

public extension Condition {
    /**
     Default instance of the Condition structure.
     */
    public static let __default: DynamoDBModel.Condition = {
        let defaultInstance = DynamoDBModel.Condition(
            attributeValueList: nil,
            comparisonOperator: .__default)

        return defaultInstance
    }()
}

public extension ConditionalCheckFailedException {
    /**
     Default instance of the ConditionalCheckFailedException structure.
     */
    public static let __default: DynamoDBModel.ConditionalCheckFailedException = {
        let defaultInstance = DynamoDBModel.ConditionalCheckFailedException(
            message: nil)

        return defaultInstance
    }()
}

public extension ConsumedCapacity {
    /**
     Default instance of the ConsumedCapacity structure.
     */
    public static let __default: DynamoDBModel.ConsumedCapacity = {
        let defaultInstance = DynamoDBModel.ConsumedCapacity(
            capacityUnits: nil,
            globalSecondaryIndexes: nil,
            localSecondaryIndexes: nil,
            table: nil,
            tableName: nil)

        return defaultInstance
    }()
}

public extension ContinuousBackupsDescription {
    /**
     Default instance of the ContinuousBackupsDescription structure.
     */
    public static let __default: DynamoDBModel.ContinuousBackupsDescription = {
        let defaultInstance = DynamoDBModel.ContinuousBackupsDescription(
            continuousBackupsStatus: .__default,
            pointInTimeRecoveryDescription: nil)

        return defaultInstance
    }()
}

public extension ContinuousBackupsUnavailableException {
    /**
     Default instance of the ContinuousBackupsUnavailableException structure.
     */
    public static let __default: DynamoDBModel.ContinuousBackupsUnavailableException = {
        let defaultInstance = DynamoDBModel.ContinuousBackupsUnavailableException(
            message: nil)

        return defaultInstance
    }()
}

public extension CreateBackupInput {
    /**
     Default instance of the CreateBackupInput structure.
     */
    public static let __default: DynamoDBModel.CreateBackupInput = {
        let defaultInstance = DynamoDBModel.CreateBackupInput(
            backupName: "012",
            tableName: "012")

        return defaultInstance
    }()
}

public extension CreateBackupOutput {
    /**
     Default instance of the CreateBackupOutput structure.
     */
    public static let __default: DynamoDBModel.CreateBackupOutput = {
        let defaultInstance = DynamoDBModel.CreateBackupOutput(
            backupDetails: nil)

        return defaultInstance
    }()
}

public extension CreateGlobalSecondaryIndexAction {
    /**
     Default instance of the CreateGlobalSecondaryIndexAction structure.
     */
    public static let __default: DynamoDBModel.CreateGlobalSecondaryIndexAction = {
        let defaultInstance = DynamoDBModel.CreateGlobalSecondaryIndexAction(
            indexName: "012",
            keySchema: [KeySchemaElement.__default],
            projection: Projection.__default,
            provisionedThroughput: ProvisionedThroughput.__default)

        return defaultInstance
    }()
}

public extension CreateGlobalTableInput {
    /**
     Default instance of the CreateGlobalTableInput structure.
     */
    public static let __default: DynamoDBModel.CreateGlobalTableInput = {
        let defaultInstance = DynamoDBModel.CreateGlobalTableInput(
            globalTableName: "012",
            replicationGroup: [])

        return defaultInstance
    }()
}

public extension CreateGlobalTableOutput {
    /**
     Default instance of the CreateGlobalTableOutput structure.
     */
    public static let __default: DynamoDBModel.CreateGlobalTableOutput = {
        let defaultInstance = DynamoDBModel.CreateGlobalTableOutput(
            globalTableDescription: nil)

        return defaultInstance
    }()
}

public extension CreateReplicaAction {
    /**
     Default instance of the CreateReplicaAction structure.
     */
    public static let __default: DynamoDBModel.CreateReplicaAction = {
        let defaultInstance = DynamoDBModel.CreateReplicaAction(
            regionName: "value")

        return defaultInstance
    }()
}

public extension CreateTableInput {
    /**
     Default instance of the CreateTableInput structure.
     */
    public static let __default: DynamoDBModel.CreateTableInput = {
        let defaultInstance = DynamoDBModel.CreateTableInput(
            attributeDefinitions: [],
            globalSecondaryIndexes: nil,
            keySchema: [KeySchemaElement.__default],
            localSecondaryIndexes: nil,
            provisionedThroughput: ProvisionedThroughput.__default,
            sSESpecification: nil,
            streamSpecification: nil,
            tableName: "012")

        return defaultInstance
    }()
}

public extension CreateTableOutput {
    /**
     Default instance of the CreateTableOutput structure.
     */
    public static let __default: DynamoDBModel.CreateTableOutput = {
        let defaultInstance = DynamoDBModel.CreateTableOutput(
            tableDescription: nil)

        return defaultInstance
    }()
}

public extension DeleteBackupInput {
    /**
     Default instance of the DeleteBackupInput structure.
     */
    public static let __default: DynamoDBModel.DeleteBackupInput = {
        let defaultInstance = DynamoDBModel.DeleteBackupInput(
            backupArn: "0123456789012345678901234567890123456")

        return defaultInstance
    }()
}

public extension DeleteBackupOutput {
    /**
     Default instance of the DeleteBackupOutput structure.
     */
    public static let __default: DynamoDBModel.DeleteBackupOutput = {
        let defaultInstance = DynamoDBModel.DeleteBackupOutput(
            backupDescription: nil)

        return defaultInstance
    }()
}

public extension DeleteGlobalSecondaryIndexAction {
    /**
     Default instance of the DeleteGlobalSecondaryIndexAction structure.
     */
    public static let __default: DynamoDBModel.DeleteGlobalSecondaryIndexAction = {
        let defaultInstance = DynamoDBModel.DeleteGlobalSecondaryIndexAction(
            indexName: "012")

        return defaultInstance
    }()
}

public extension DeleteItemInput {
    /**
     Default instance of the DeleteItemInput structure.
     */
    public static let __default: DynamoDBModel.DeleteItemInput = {
        let defaultInstance = DynamoDBModel.DeleteItemInput(
            conditionExpression: nil,
            conditionalOperator: nil,
            expected: nil,
            expressionAttributeNames: nil,
            expressionAttributeValues: nil,
            key: [:],
            returnConsumedCapacity: nil,
            returnItemCollectionMetrics: nil,
            returnValues: nil,
            tableName: "012")

        return defaultInstance
    }()
}

public extension DeleteItemOutput {
    /**
     Default instance of the DeleteItemOutput structure.
     */
    public static let __default: DynamoDBModel.DeleteItemOutput = {
        let defaultInstance = DynamoDBModel.DeleteItemOutput(
            attributes: nil,
            consumedCapacity: nil,
            itemCollectionMetrics: nil)

        return defaultInstance
    }()
}

public extension DeleteReplicaAction {
    /**
     Default instance of the DeleteReplicaAction structure.
     */
    public static let __default: DynamoDBModel.DeleteReplicaAction = {
        let defaultInstance = DynamoDBModel.DeleteReplicaAction(
            regionName: "value")

        return defaultInstance
    }()
}

public extension DeleteRequest {
    /**
     Default instance of the DeleteRequest structure.
     */
    public static let __default: DynamoDBModel.DeleteRequest = {
        let defaultInstance = DynamoDBModel.DeleteRequest(
            key: [:])

        return defaultInstance
    }()
}

public extension DeleteTableInput {
    /**
     Default instance of the DeleteTableInput structure.
     */
    public static let __default: DynamoDBModel.DeleteTableInput = {
        let defaultInstance = DynamoDBModel.DeleteTableInput(
            tableName: "012")

        return defaultInstance
    }()
}

public extension DeleteTableOutput {
    /**
     Default instance of the DeleteTableOutput structure.
     */
    public static let __default: DynamoDBModel.DeleteTableOutput = {
        let defaultInstance = DynamoDBModel.DeleteTableOutput(
            tableDescription: nil)

        return defaultInstance
    }()
}

public extension DescribeBackupInput {
    /**
     Default instance of the DescribeBackupInput structure.
     */
    public static let __default: DynamoDBModel.DescribeBackupInput = {
        let defaultInstance = DynamoDBModel.DescribeBackupInput(
            backupArn: "0123456789012345678901234567890123456")

        return defaultInstance
    }()
}

public extension DescribeBackupOutput {
    /**
     Default instance of the DescribeBackupOutput structure.
     */
    public static let __default: DynamoDBModel.DescribeBackupOutput = {
        let defaultInstance = DynamoDBModel.DescribeBackupOutput(
            backupDescription: nil)

        return defaultInstance
    }()
}

public extension DescribeContinuousBackupsInput {
    /**
     Default instance of the DescribeContinuousBackupsInput structure.
     */
    public static let __default: DynamoDBModel.DescribeContinuousBackupsInput = {
        let defaultInstance = DynamoDBModel.DescribeContinuousBackupsInput(
            tableName: "012")

        return defaultInstance
    }()
}

public extension DescribeContinuousBackupsOutput {
    /**
     Default instance of the DescribeContinuousBackupsOutput structure.
     */
    public static let __default: DynamoDBModel.DescribeContinuousBackupsOutput = {
        let defaultInstance = DynamoDBModel.DescribeContinuousBackupsOutput(
            continuousBackupsDescription: nil)

        return defaultInstance
    }()
}

public extension DescribeEndpointsRequest {
    /**
     Default instance of the DescribeEndpointsRequest structure.
     */
    public static let __default: DynamoDBModel.DescribeEndpointsRequest = {
        let defaultInstance = DynamoDBModel.DescribeEndpointsRequest()

        return defaultInstance
    }()
}

public extension DescribeEndpointsResponse {
    /**
     Default instance of the DescribeEndpointsResponse structure.
     */
    public static let __default: DynamoDBModel.DescribeEndpointsResponse = {
        let defaultInstance = DynamoDBModel.DescribeEndpointsResponse(
            endpoints: [])

        return defaultInstance
    }()
}

public extension DescribeGlobalTableInput {
    /**
     Default instance of the DescribeGlobalTableInput structure.
     */
    public static let __default: DynamoDBModel.DescribeGlobalTableInput = {
        let defaultInstance = DynamoDBModel.DescribeGlobalTableInput(
            globalTableName: "012")

        return defaultInstance
    }()
}

public extension DescribeGlobalTableOutput {
    /**
     Default instance of the DescribeGlobalTableOutput structure.
     */
    public static let __default: DynamoDBModel.DescribeGlobalTableOutput = {
        let defaultInstance = DynamoDBModel.DescribeGlobalTableOutput(
            globalTableDescription: nil)

        return defaultInstance
    }()
}

public extension DescribeGlobalTableSettingsInput {
    /**
     Default instance of the DescribeGlobalTableSettingsInput structure.
     */
    public static let __default: DynamoDBModel.DescribeGlobalTableSettingsInput = {
        let defaultInstance = DynamoDBModel.DescribeGlobalTableSettingsInput(
            globalTableName: "012")

        return defaultInstance
    }()
}

public extension DescribeGlobalTableSettingsOutput {
    /**
     Default instance of the DescribeGlobalTableSettingsOutput structure.
     */
    public static let __default: DynamoDBModel.DescribeGlobalTableSettingsOutput = {
        let defaultInstance = DynamoDBModel.DescribeGlobalTableSettingsOutput(
            globalTableName: nil,
            replicaSettings: nil)

        return defaultInstance
    }()
}

public extension DescribeLimitsInput {
    /**
     Default instance of the DescribeLimitsInput structure.
     */
    public static let __default: DynamoDBModel.DescribeLimitsInput = {
        let defaultInstance = DynamoDBModel.DescribeLimitsInput()

        return defaultInstance
    }()
}

public extension DescribeLimitsOutput {
    /**
     Default instance of the DescribeLimitsOutput structure.
     */
    public static let __default: DynamoDBModel.DescribeLimitsOutput = {
        let defaultInstance = DynamoDBModel.DescribeLimitsOutput(
            accountMaxReadCapacityUnits: nil,
            accountMaxWriteCapacityUnits: nil,
            tableMaxReadCapacityUnits: nil,
            tableMaxWriteCapacityUnits: nil)

        return defaultInstance
    }()
}

public extension DescribeTableInput {
    /**
     Default instance of the DescribeTableInput structure.
     */
    public static let __default: DynamoDBModel.DescribeTableInput = {
        let defaultInstance = DynamoDBModel.DescribeTableInput(
            tableName: "012")

        return defaultInstance
    }()
}

public extension DescribeTableOutput {
    /**
     Default instance of the DescribeTableOutput structure.
     */
    public static let __default: DynamoDBModel.DescribeTableOutput = {
        let defaultInstance = DynamoDBModel.DescribeTableOutput(
            table: nil)

        return defaultInstance
    }()
}

public extension DescribeTimeToLiveInput {
    /**
     Default instance of the DescribeTimeToLiveInput structure.
     */
    public static let __default: DynamoDBModel.DescribeTimeToLiveInput = {
        let defaultInstance = DynamoDBModel.DescribeTimeToLiveInput(
            tableName: "012")

        return defaultInstance
    }()
}

public extension DescribeTimeToLiveOutput {
    /**
     Default instance of the DescribeTimeToLiveOutput structure.
     */
    public static let __default: DynamoDBModel.DescribeTimeToLiveOutput = {
        let defaultInstance = DynamoDBModel.DescribeTimeToLiveOutput(
            timeToLiveDescription: nil)

        return defaultInstance
    }()
}

public extension Endpoint {
    /**
     Default instance of the Endpoint structure.
     */
    public static let __default: DynamoDBModel.Endpoint = {
        let defaultInstance = DynamoDBModel.Endpoint(
            address: "value",
            cachePeriodInMinutes: 0)

        return defaultInstance
    }()
}

public extension ExpectedAttributeValue {
    /**
     Default instance of the ExpectedAttributeValue structure.
     */
    public static let __default: DynamoDBModel.ExpectedAttributeValue = {
        let defaultInstance = DynamoDBModel.ExpectedAttributeValue(
            attributeValueList: nil,
            comparisonOperator: nil,
            exists: nil,
            value: nil)

        return defaultInstance
    }()
}

public extension GetItemInput {
    /**
     Default instance of the GetItemInput structure.
     */
    public static let __default: DynamoDBModel.GetItemInput = {
        let defaultInstance = DynamoDBModel.GetItemInput(
            attributesToGet: nil,
            consistentRead: nil,
            expressionAttributeNames: nil,
            key: [:],
            projectionExpression: nil,
            returnConsumedCapacity: nil,
            tableName: "012")

        return defaultInstance
    }()
}

public extension GetItemOutput {
    /**
     Default instance of the GetItemOutput structure.
     */
    public static let __default: DynamoDBModel.GetItemOutput = {
        let defaultInstance = DynamoDBModel.GetItemOutput(
            consumedCapacity: nil,
            item: nil)

        return defaultInstance
    }()
}

public extension GlobalSecondaryIndex {
    /**
     Default instance of the GlobalSecondaryIndex structure.
     */
    public static let __default: DynamoDBModel.GlobalSecondaryIndex = {
        let defaultInstance = DynamoDBModel.GlobalSecondaryIndex(
            indexName: "012",
            keySchema: [KeySchemaElement.__default],
            projection: Projection.__default,
            provisionedThroughput: ProvisionedThroughput.__default)

        return defaultInstance
    }()
}

public extension GlobalSecondaryIndexDescription {
    /**
     Default instance of the GlobalSecondaryIndexDescription structure.
     */
    public static let __default: DynamoDBModel.GlobalSecondaryIndexDescription = {
        let defaultInstance = DynamoDBModel.GlobalSecondaryIndexDescription(
            backfilling: nil,
            indexArn: nil,
            indexName: nil,
            indexSizeBytes: nil,
            indexStatus: nil,
            itemCount: nil,
            keySchema: nil,
            projection: nil,
            provisionedThroughput: nil)

        return defaultInstance
    }()
}

public extension GlobalSecondaryIndexInfo {
    /**
     Default instance of the GlobalSecondaryIndexInfo structure.
     */
    public static let __default: DynamoDBModel.GlobalSecondaryIndexInfo = {
        let defaultInstance = DynamoDBModel.GlobalSecondaryIndexInfo(
            indexName: nil,
            keySchema: nil,
            projection: nil,
            provisionedThroughput: nil)

        return defaultInstance
    }()
}

public extension GlobalSecondaryIndexUpdate {
    /**
     Default instance of the GlobalSecondaryIndexUpdate structure.
     */
    public static let __default: DynamoDBModel.GlobalSecondaryIndexUpdate = {
        let defaultInstance = DynamoDBModel.GlobalSecondaryIndexUpdate(
            create: nil,
            delete: nil,
            update: nil)

        return defaultInstance
    }()
}

public extension GlobalTable {
    /**
     Default instance of the GlobalTable structure.
     */
    public static let __default: DynamoDBModel.GlobalTable = {
        let defaultInstance = DynamoDBModel.GlobalTable(
            globalTableName: nil,
            replicationGroup: nil)

        return defaultInstance
    }()
}

public extension GlobalTableAlreadyExistsException {
    /**
     Default instance of the GlobalTableAlreadyExistsException structure.
     */
    public static let __default: DynamoDBModel.GlobalTableAlreadyExistsException = {
        let defaultInstance = DynamoDBModel.GlobalTableAlreadyExistsException(
            message: nil)

        return defaultInstance
    }()
}

public extension GlobalTableDescription {
    /**
     Default instance of the GlobalTableDescription structure.
     */
    public static let __default: DynamoDBModel.GlobalTableDescription = {
        let defaultInstance = DynamoDBModel.GlobalTableDescription(
            creationDateTime: nil,
            globalTableArn: nil,
            globalTableName: nil,
            globalTableStatus: nil,
            replicationGroup: nil)

        return defaultInstance
    }()
}

public extension GlobalTableGlobalSecondaryIndexSettingsUpdate {
    /**
     Default instance of the GlobalTableGlobalSecondaryIndexSettingsUpdate structure.
     */
    public static let __default: DynamoDBModel.GlobalTableGlobalSecondaryIndexSettingsUpdate = {
        let defaultInstance = DynamoDBModel.GlobalTableGlobalSecondaryIndexSettingsUpdate(
            indexName: "012",
            provisionedWriteCapacityAutoScalingSettingsUpdate: nil,
            provisionedWriteCapacityUnits: nil)

        return defaultInstance
    }()
}

public extension GlobalTableNotFoundException {
    /**
     Default instance of the GlobalTableNotFoundException structure.
     */
    public static let __default: DynamoDBModel.GlobalTableNotFoundException = {
        let defaultInstance = DynamoDBModel.GlobalTableNotFoundException(
            message: nil)

        return defaultInstance
    }()
}

public extension IndexNotFoundException {
    /**
     Default instance of the IndexNotFoundException structure.
     */
    public static let __default: DynamoDBModel.IndexNotFoundException = {
        let defaultInstance = DynamoDBModel.IndexNotFoundException(
            message: nil)

        return defaultInstance
    }()
}

public extension InternalServerError {
    /**
     Default instance of the InternalServerError structure.
     */
    public static let __default: DynamoDBModel.InternalServerError = {
        let defaultInstance = DynamoDBModel.InternalServerError(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidRestoreTimeException {
    /**
     Default instance of the InvalidRestoreTimeException structure.
     */
    public static let __default: DynamoDBModel.InvalidRestoreTimeException = {
        let defaultInstance = DynamoDBModel.InvalidRestoreTimeException(
            message: nil)

        return defaultInstance
    }()
}

public extension ItemCollectionMetrics {
    /**
     Default instance of the ItemCollectionMetrics structure.
     */
    public static let __default: DynamoDBModel.ItemCollectionMetrics = {
        let defaultInstance = DynamoDBModel.ItemCollectionMetrics(
            itemCollectionKey: nil,
            sizeEstimateRangeGB: nil)

        return defaultInstance
    }()
}

public extension ItemCollectionSizeLimitExceededException {
    /**
     Default instance of the ItemCollectionSizeLimitExceededException structure.
     */
    public static let __default: DynamoDBModel.ItemCollectionSizeLimitExceededException = {
        let defaultInstance = DynamoDBModel.ItemCollectionSizeLimitExceededException(
            message: nil)

        return defaultInstance
    }()
}

public extension KeySchemaElement {
    /**
     Default instance of the KeySchemaElement structure.
     */
    public static let __default: DynamoDBModel.KeySchemaElement = {
        let defaultInstance = DynamoDBModel.KeySchemaElement(
            attributeName: "0",
            keyType: .__default)

        return defaultInstance
    }()
}

public extension KeysAndAttributes {
    /**
     Default instance of the KeysAndAttributes structure.
     */
    public static let __default: DynamoDBModel.KeysAndAttributes = {
        let defaultInstance = DynamoDBModel.KeysAndAttributes(
            attributesToGet: nil,
            consistentRead: nil,
            expressionAttributeNames: nil,
            keys: [[:]],
            projectionExpression: nil)

        return defaultInstance
    }()
}

public extension LimitExceededException {
    /**
     Default instance of the LimitExceededException structure.
     */
    public static let __default: DynamoDBModel.LimitExceededException = {
        let defaultInstance = DynamoDBModel.LimitExceededException(
            message: nil)

        return defaultInstance
    }()
}

public extension ListBackupsInput {
    /**
     Default instance of the ListBackupsInput structure.
     */
    public static let __default: DynamoDBModel.ListBackupsInput = {
        let defaultInstance = DynamoDBModel.ListBackupsInput(
            backupType: nil,
            exclusiveStartBackupArn: nil,
            limit: nil,
            tableName: nil,
            timeRangeLowerBound: nil,
            timeRangeUpperBound: nil)

        return defaultInstance
    }()
}

public extension ListBackupsOutput {
    /**
     Default instance of the ListBackupsOutput structure.
     */
    public static let __default: DynamoDBModel.ListBackupsOutput = {
        let defaultInstance = DynamoDBModel.ListBackupsOutput(
            backupSummaries: nil,
            lastEvaluatedBackupArn: nil)

        return defaultInstance
    }()
}

public extension ListGlobalTablesInput {
    /**
     Default instance of the ListGlobalTablesInput structure.
     */
    public static let __default: DynamoDBModel.ListGlobalTablesInput = {
        let defaultInstance = DynamoDBModel.ListGlobalTablesInput(
            exclusiveStartGlobalTableName: nil,
            limit: nil,
            regionName: nil)

        return defaultInstance
    }()
}

public extension ListGlobalTablesOutput {
    /**
     Default instance of the ListGlobalTablesOutput structure.
     */
    public static let __default: DynamoDBModel.ListGlobalTablesOutput = {
        let defaultInstance = DynamoDBModel.ListGlobalTablesOutput(
            globalTables: nil,
            lastEvaluatedGlobalTableName: nil)

        return defaultInstance
    }()
}

public extension ListTablesInput {
    /**
     Default instance of the ListTablesInput structure.
     */
    public static let __default: DynamoDBModel.ListTablesInput = {
        let defaultInstance = DynamoDBModel.ListTablesInput(
            exclusiveStartTableName: nil,
            limit: nil)

        return defaultInstance
    }()
}

public extension ListTablesOutput {
    /**
     Default instance of the ListTablesOutput structure.
     */
    public static let __default: DynamoDBModel.ListTablesOutput = {
        let defaultInstance = DynamoDBModel.ListTablesOutput(
            lastEvaluatedTableName: nil,
            tableNames: nil)

        return defaultInstance
    }()
}

public extension ListTagsOfResourceInput {
    /**
     Default instance of the ListTagsOfResourceInput structure.
     */
    public static let __default: DynamoDBModel.ListTagsOfResourceInput = {
        let defaultInstance = DynamoDBModel.ListTagsOfResourceInput(
            nextToken: nil,
            resourceArn: "0")

        return defaultInstance
    }()
}

public extension ListTagsOfResourceOutput {
    /**
     Default instance of the ListTagsOfResourceOutput structure.
     */
    public static let __default: DynamoDBModel.ListTagsOfResourceOutput = {
        let defaultInstance = DynamoDBModel.ListTagsOfResourceOutput(
            nextToken: nil,
            tags: nil)

        return defaultInstance
    }()
}

public extension LocalSecondaryIndex {
    /**
     Default instance of the LocalSecondaryIndex structure.
     */
    public static let __default: DynamoDBModel.LocalSecondaryIndex = {
        let defaultInstance = DynamoDBModel.LocalSecondaryIndex(
            indexName: "012",
            keySchema: [KeySchemaElement.__default],
            projection: Projection.__default)

        return defaultInstance
    }()
}

public extension LocalSecondaryIndexDescription {
    /**
     Default instance of the LocalSecondaryIndexDescription structure.
     */
    public static let __default: DynamoDBModel.LocalSecondaryIndexDescription = {
        let defaultInstance = DynamoDBModel.LocalSecondaryIndexDescription(
            indexArn: nil,
            indexName: nil,
            indexSizeBytes: nil,
            itemCount: nil,
            keySchema: nil,
            projection: nil)

        return defaultInstance
    }()
}

public extension LocalSecondaryIndexInfo {
    /**
     Default instance of the LocalSecondaryIndexInfo structure.
     */
    public static let __default: DynamoDBModel.LocalSecondaryIndexInfo = {
        let defaultInstance = DynamoDBModel.LocalSecondaryIndexInfo(
            indexName: nil,
            keySchema: nil,
            projection: nil)

        return defaultInstance
    }()
}

public extension PointInTimeRecoveryDescription {
    /**
     Default instance of the PointInTimeRecoveryDescription structure.
     */
    public static let __default: DynamoDBModel.PointInTimeRecoveryDescription = {
        let defaultInstance = DynamoDBModel.PointInTimeRecoveryDescription(
            earliestRestorableDateTime: nil,
            latestRestorableDateTime: nil,
            pointInTimeRecoveryStatus: nil)

        return defaultInstance
    }()
}

public extension PointInTimeRecoverySpecification {
    /**
     Default instance of the PointInTimeRecoverySpecification structure.
     */
    public static let __default: DynamoDBModel.PointInTimeRecoverySpecification = {
        let defaultInstance = DynamoDBModel.PointInTimeRecoverySpecification(
            pointInTimeRecoveryEnabled: false)

        return defaultInstance
    }()
}

public extension PointInTimeRecoveryUnavailableException {
    /**
     Default instance of the PointInTimeRecoveryUnavailableException structure.
     */
    public static let __default: DynamoDBModel.PointInTimeRecoveryUnavailableException = {
        let defaultInstance = DynamoDBModel.PointInTimeRecoveryUnavailableException(
            message: nil)

        return defaultInstance
    }()
}

public extension Projection {
    /**
     Default instance of the Projection structure.
     */
    public static let __default: DynamoDBModel.Projection = {
        let defaultInstance = DynamoDBModel.Projection(
            nonKeyAttributes: nil,
            projectionType: nil)

        return defaultInstance
    }()
}

public extension ProvisionedThroughput {
    /**
     Default instance of the ProvisionedThroughput structure.
     */
    public static let __default: DynamoDBModel.ProvisionedThroughput = {
        let defaultInstance = DynamoDBModel.ProvisionedThroughput(
            readCapacityUnits: 0,
            writeCapacityUnits: 0)

        return defaultInstance
    }()
}

public extension ProvisionedThroughputDescription {
    /**
     Default instance of the ProvisionedThroughputDescription structure.
     */
    public static let __default: DynamoDBModel.ProvisionedThroughputDescription = {
        let defaultInstance = DynamoDBModel.ProvisionedThroughputDescription(
            lastDecreaseDateTime: nil,
            lastIncreaseDateTime: nil,
            numberOfDecreasesToday: nil,
            readCapacityUnits: nil,
            writeCapacityUnits: nil)

        return defaultInstance
    }()
}

public extension ProvisionedThroughputExceededException {
    /**
     Default instance of the ProvisionedThroughputExceededException structure.
     */
    public static let __default: DynamoDBModel.ProvisionedThroughputExceededException = {
        let defaultInstance = DynamoDBModel.ProvisionedThroughputExceededException(
            message: nil)

        return defaultInstance
    }()
}

public extension PutItemInput {
    /**
     Default instance of the PutItemInput structure.
     */
    public static let __default: DynamoDBModel.PutItemInput = {
        let defaultInstance = DynamoDBModel.PutItemInput(
            conditionExpression: nil,
            conditionalOperator: nil,
            expected: nil,
            expressionAttributeNames: nil,
            expressionAttributeValues: nil,
            item: [:],
            returnConsumedCapacity: nil,
            returnItemCollectionMetrics: nil,
            returnValues: nil,
            tableName: "012")

        return defaultInstance
    }()
}

public extension PutItemOutput {
    /**
     Default instance of the PutItemOutput structure.
     */
    public static let __default: DynamoDBModel.PutItemOutput = {
        let defaultInstance = DynamoDBModel.PutItemOutput(
            attributes: nil,
            consumedCapacity: nil,
            itemCollectionMetrics: nil)

        return defaultInstance
    }()
}

public extension PutRequest {
    /**
     Default instance of the PutRequest structure.
     */
    public static let __default: DynamoDBModel.PutRequest = {
        let defaultInstance = DynamoDBModel.PutRequest(
            item: [:])

        return defaultInstance
    }()
}

public extension QueryInput {
    /**
     Default instance of the QueryInput structure.
     */
    public static let __default: DynamoDBModel.QueryInput = {
        let defaultInstance = DynamoDBModel.QueryInput(
            attributesToGet: nil,
            conditionalOperator: nil,
            consistentRead: nil,
            exclusiveStartKey: nil,
            expressionAttributeNames: nil,
            expressionAttributeValues: nil,
            filterExpression: nil,
            indexName: nil,
            keyConditionExpression: nil,
            keyConditions: nil,
            limit: nil,
            projectionExpression: nil,
            queryFilter: nil,
            returnConsumedCapacity: nil,
            scanIndexForward: nil,
            select: nil,
            tableName: "012")

        return defaultInstance
    }()
}

public extension QueryOutput {
    /**
     Default instance of the QueryOutput structure.
     */
    public static let __default: DynamoDBModel.QueryOutput = {
        let defaultInstance = DynamoDBModel.QueryOutput(
            consumedCapacity: nil,
            count: nil,
            items: nil,
            lastEvaluatedKey: nil,
            scannedCount: nil)

        return defaultInstance
    }()
}

public extension Replica {
    /**
     Default instance of the Replica structure.
     */
    public static let __default: DynamoDBModel.Replica = {
        let defaultInstance = DynamoDBModel.Replica(
            regionName: nil)

        return defaultInstance
    }()
}

public extension ReplicaAlreadyExistsException {
    /**
     Default instance of the ReplicaAlreadyExistsException structure.
     */
    public static let __default: DynamoDBModel.ReplicaAlreadyExistsException = {
        let defaultInstance = DynamoDBModel.ReplicaAlreadyExistsException(
            message: nil)

        return defaultInstance
    }()
}

public extension ReplicaDescription {
    /**
     Default instance of the ReplicaDescription structure.
     */
    public static let __default: DynamoDBModel.ReplicaDescription = {
        let defaultInstance = DynamoDBModel.ReplicaDescription(
            regionName: nil)

        return defaultInstance
    }()
}

public extension ReplicaGlobalSecondaryIndexSettingsDescription {
    /**
     Default instance of the ReplicaGlobalSecondaryIndexSettingsDescription structure.
     */
    public static let __default: DynamoDBModel.ReplicaGlobalSecondaryIndexSettingsDescription = {
        let defaultInstance = DynamoDBModel.ReplicaGlobalSecondaryIndexSettingsDescription(
            indexName: "012",
            indexStatus: nil,
            provisionedReadCapacityAutoScalingSettings: nil,
            provisionedReadCapacityUnits: nil,
            provisionedWriteCapacityAutoScalingSettings: nil,
            provisionedWriteCapacityUnits: nil)

        return defaultInstance
    }()
}

public extension ReplicaGlobalSecondaryIndexSettingsUpdate {
    /**
     Default instance of the ReplicaGlobalSecondaryIndexSettingsUpdate structure.
     */
    public static let __default: DynamoDBModel.ReplicaGlobalSecondaryIndexSettingsUpdate = {
        let defaultInstance = DynamoDBModel.ReplicaGlobalSecondaryIndexSettingsUpdate(
            indexName: "012",
            provisionedReadCapacityAutoScalingSettingsUpdate: nil,
            provisionedReadCapacityUnits: nil)

        return defaultInstance
    }()
}

public extension ReplicaNotFoundException {
    /**
     Default instance of the ReplicaNotFoundException structure.
     */
    public static let __default: DynamoDBModel.ReplicaNotFoundException = {
        let defaultInstance = DynamoDBModel.ReplicaNotFoundException(
            message: nil)

        return defaultInstance
    }()
}

public extension ReplicaSettingsDescription {
    /**
     Default instance of the ReplicaSettingsDescription structure.
     */
    public static let __default: DynamoDBModel.ReplicaSettingsDescription = {
        let defaultInstance = DynamoDBModel.ReplicaSettingsDescription(
            regionName: "value",
            replicaGlobalSecondaryIndexSettings: nil,
            replicaProvisionedReadCapacityAutoScalingSettings: nil,
            replicaProvisionedReadCapacityUnits: nil,
            replicaProvisionedWriteCapacityAutoScalingSettings: nil,
            replicaProvisionedWriteCapacityUnits: nil,
            replicaStatus: nil)

        return defaultInstance
    }()
}

public extension ReplicaSettingsUpdate {
    /**
     Default instance of the ReplicaSettingsUpdate structure.
     */
    public static let __default: DynamoDBModel.ReplicaSettingsUpdate = {
        let defaultInstance = DynamoDBModel.ReplicaSettingsUpdate(
            regionName: "value",
            replicaGlobalSecondaryIndexSettingsUpdate: nil,
            replicaProvisionedReadCapacityAutoScalingSettingsUpdate: nil,
            replicaProvisionedReadCapacityUnits: nil)

        return defaultInstance
    }()
}

public extension ReplicaUpdate {
    /**
     Default instance of the ReplicaUpdate structure.
     */
    public static let __default: DynamoDBModel.ReplicaUpdate = {
        let defaultInstance = DynamoDBModel.ReplicaUpdate(
            create: nil,
            delete: nil)

        return defaultInstance
    }()
}

public extension ResourceInUseException {
    /**
     Default instance of the ResourceInUseException structure.
     */
    public static let __default: DynamoDBModel.ResourceInUseException = {
        let defaultInstance = DynamoDBModel.ResourceInUseException(
            message: nil)

        return defaultInstance
    }()
}

public extension ResourceNotFoundException {
    /**
     Default instance of the ResourceNotFoundException structure.
     */
    public static let __default: DynamoDBModel.ResourceNotFoundException = {
        let defaultInstance = DynamoDBModel.ResourceNotFoundException(
            message: nil)

        return defaultInstance
    }()
}

public extension RestoreSummary {
    /**
     Default instance of the RestoreSummary structure.
     */
    public static let __default: DynamoDBModel.RestoreSummary = {
        let defaultInstance = DynamoDBModel.RestoreSummary(
            restoreDateTime: "2013-02-18T17:00:00Z",
            restoreInProgress: false,
            sourceBackupArn: nil,
            sourceTableArn: nil)

        return defaultInstance
    }()
}

public extension RestoreTableFromBackupInput {
    /**
     Default instance of the RestoreTableFromBackupInput structure.
     */
    public static let __default: DynamoDBModel.RestoreTableFromBackupInput = {
        let defaultInstance = DynamoDBModel.RestoreTableFromBackupInput(
            backupArn: "0123456789012345678901234567890123456",
            targetTableName: "012")

        return defaultInstance
    }()
}

public extension RestoreTableFromBackupOutput {
    /**
     Default instance of the RestoreTableFromBackupOutput structure.
     */
    public static let __default: DynamoDBModel.RestoreTableFromBackupOutput = {
        let defaultInstance = DynamoDBModel.RestoreTableFromBackupOutput(
            tableDescription: nil)

        return defaultInstance
    }()
}

public extension RestoreTableToPointInTimeInput {
    /**
     Default instance of the RestoreTableToPointInTimeInput structure.
     */
    public static let __default: DynamoDBModel.RestoreTableToPointInTimeInput = {
        let defaultInstance = DynamoDBModel.RestoreTableToPointInTimeInput(
            restoreDateTime: nil,
            sourceTableName: "012",
            targetTableName: "012",
            useLatestRestorableTime: nil)

        return defaultInstance
    }()
}

public extension RestoreTableToPointInTimeOutput {
    /**
     Default instance of the RestoreTableToPointInTimeOutput structure.
     */
    public static let __default: DynamoDBModel.RestoreTableToPointInTimeOutput = {
        let defaultInstance = DynamoDBModel.RestoreTableToPointInTimeOutput(
            tableDescription: nil)

        return defaultInstance
    }()
}

public extension SSEDescription {
    /**
     Default instance of the SSEDescription structure.
     */
    public static let __default: DynamoDBModel.SSEDescription = {
        let defaultInstance = DynamoDBModel.SSEDescription(
            kMSMasterKeyArn: nil,
            sSEType: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension SSESpecification {
    /**
     Default instance of the SSESpecification structure.
     */
    public static let __default: DynamoDBModel.SSESpecification = {
        let defaultInstance = DynamoDBModel.SSESpecification(
            enabled: nil,
            kMSMasterKeyId: nil,
            sSEType: nil)

        return defaultInstance
    }()
}

public extension ScanInput {
    /**
     Default instance of the ScanInput structure.
     */
    public static let __default: DynamoDBModel.ScanInput = {
        let defaultInstance = DynamoDBModel.ScanInput(
            attributesToGet: nil,
            conditionalOperator: nil,
            consistentRead: nil,
            exclusiveStartKey: nil,
            expressionAttributeNames: nil,
            expressionAttributeValues: nil,
            filterExpression: nil,
            indexName: nil,
            limit: nil,
            projectionExpression: nil,
            returnConsumedCapacity: nil,
            scanFilter: nil,
            segment: nil,
            select: nil,
            tableName: "012",
            totalSegments: nil)

        return defaultInstance
    }()
}

public extension ScanOutput {
    /**
     Default instance of the ScanOutput structure.
     */
    public static let __default: DynamoDBModel.ScanOutput = {
        let defaultInstance = DynamoDBModel.ScanOutput(
            consumedCapacity: nil,
            count: nil,
            items: nil,
            lastEvaluatedKey: nil,
            scannedCount: nil)

        return defaultInstance
    }()
}

public extension SourceTableDetails {
    /**
     Default instance of the SourceTableDetails structure.
     */
    public static let __default: DynamoDBModel.SourceTableDetails = {
        let defaultInstance = DynamoDBModel.SourceTableDetails(
            itemCount: nil,
            keySchema: [KeySchemaElement.__default],
            provisionedThroughput: ProvisionedThroughput.__default,
            tableArn: nil,
            tableCreationDateTime: "2013-02-18T17:00:00Z",
            tableId: "",
            tableName: "012",
            tableSizeBytes: nil)

        return defaultInstance
    }()
}

public extension SourceTableFeatureDetails {
    /**
     Default instance of the SourceTableFeatureDetails structure.
     */
    public static let __default: DynamoDBModel.SourceTableFeatureDetails = {
        let defaultInstance = DynamoDBModel.SourceTableFeatureDetails(
            globalSecondaryIndexes: nil,
            localSecondaryIndexes: nil,
            sSEDescription: nil,
            streamDescription: nil,
            timeToLiveDescription: nil)

        return defaultInstance
    }()
}

public extension StreamSpecification {
    /**
     Default instance of the StreamSpecification structure.
     */
    public static let __default: DynamoDBModel.StreamSpecification = {
        let defaultInstance = DynamoDBModel.StreamSpecification(
            streamEnabled: nil,
            streamViewType: nil)

        return defaultInstance
    }()
}

public extension TableAlreadyExistsException {
    /**
     Default instance of the TableAlreadyExistsException structure.
     */
    public static let __default: DynamoDBModel.TableAlreadyExistsException = {
        let defaultInstance = DynamoDBModel.TableAlreadyExistsException(
            message: nil)

        return defaultInstance
    }()
}

public extension TableDescription {
    /**
     Default instance of the TableDescription structure.
     */
    public static let __default: DynamoDBModel.TableDescription = {
        let defaultInstance = DynamoDBModel.TableDescription(
            attributeDefinitions: nil,
            creationDateTime: nil,
            globalSecondaryIndexes: nil,
            itemCount: nil,
            keySchema: nil,
            latestStreamArn: nil,
            latestStreamLabel: nil,
            localSecondaryIndexes: nil,
            provisionedThroughput: nil,
            restoreSummary: nil,
            sSEDescription: nil,
            streamSpecification: nil,
            tableArn: nil,
            tableId: nil,
            tableName: nil,
            tableSizeBytes: nil,
            tableStatus: nil)

        return defaultInstance
    }()
}

public extension TableInUseException {
    /**
     Default instance of the TableInUseException structure.
     */
    public static let __default: DynamoDBModel.TableInUseException = {
        let defaultInstance = DynamoDBModel.TableInUseException(
            message: nil)

        return defaultInstance
    }()
}

public extension TableNotFoundException {
    /**
     Default instance of the TableNotFoundException structure.
     */
    public static let __default: DynamoDBModel.TableNotFoundException = {
        let defaultInstance = DynamoDBModel.TableNotFoundException(
            message: nil)

        return defaultInstance
    }()
}

public extension Tag {
    /**
     Default instance of the Tag structure.
     */
    public static let __default: DynamoDBModel.Tag = {
        let defaultInstance = DynamoDBModel.Tag(
            key: "0",
            value: "")

        return defaultInstance
    }()
}

public extension TagResourceInput {
    /**
     Default instance of the TagResourceInput structure.
     */
    public static let __default: DynamoDBModel.TagResourceInput = {
        let defaultInstance = DynamoDBModel.TagResourceInput(
            resourceArn: "0",
            tags: [])

        return defaultInstance
    }()
}

public extension TimeToLiveDescription {
    /**
     Default instance of the TimeToLiveDescription structure.
     */
    public static let __default: DynamoDBModel.TimeToLiveDescription = {
        let defaultInstance = DynamoDBModel.TimeToLiveDescription(
            attributeName: nil,
            timeToLiveStatus: nil)

        return defaultInstance
    }()
}

public extension TimeToLiveSpecification {
    /**
     Default instance of the TimeToLiveSpecification structure.
     */
    public static let __default: DynamoDBModel.TimeToLiveSpecification = {
        let defaultInstance = DynamoDBModel.TimeToLiveSpecification(
            attributeName: "0",
            enabled: false)

        return defaultInstance
    }()
}

public extension UntagResourceInput {
    /**
     Default instance of the UntagResourceInput structure.
     */
    public static let __default: DynamoDBModel.UntagResourceInput = {
        let defaultInstance = DynamoDBModel.UntagResourceInput(
            resourceArn: "0",
            tagKeys: [])

        return defaultInstance
    }()
}

public extension UpdateContinuousBackupsInput {
    /**
     Default instance of the UpdateContinuousBackupsInput structure.
     */
    public static let __default: DynamoDBModel.UpdateContinuousBackupsInput = {
        let defaultInstance = DynamoDBModel.UpdateContinuousBackupsInput(
            pointInTimeRecoverySpecification: PointInTimeRecoverySpecification.__default,
            tableName: "012")

        return defaultInstance
    }()
}

public extension UpdateContinuousBackupsOutput {
    /**
     Default instance of the UpdateContinuousBackupsOutput structure.
     */
    public static let __default: DynamoDBModel.UpdateContinuousBackupsOutput = {
        let defaultInstance = DynamoDBModel.UpdateContinuousBackupsOutput(
            continuousBackupsDescription: nil)

        return defaultInstance
    }()
}

public extension UpdateGlobalSecondaryIndexAction {
    /**
     Default instance of the UpdateGlobalSecondaryIndexAction structure.
     */
    public static let __default: DynamoDBModel.UpdateGlobalSecondaryIndexAction = {
        let defaultInstance = DynamoDBModel.UpdateGlobalSecondaryIndexAction(
            indexName: "012",
            provisionedThroughput: ProvisionedThroughput.__default)

        return defaultInstance
    }()
}

public extension UpdateGlobalTableInput {
    /**
     Default instance of the UpdateGlobalTableInput structure.
     */
    public static let __default: DynamoDBModel.UpdateGlobalTableInput = {
        let defaultInstance = DynamoDBModel.UpdateGlobalTableInput(
            globalTableName: "012",
            replicaUpdates: [])

        return defaultInstance
    }()
}

public extension UpdateGlobalTableOutput {
    /**
     Default instance of the UpdateGlobalTableOutput structure.
     */
    public static let __default: DynamoDBModel.UpdateGlobalTableOutput = {
        let defaultInstance = DynamoDBModel.UpdateGlobalTableOutput(
            globalTableDescription: nil)

        return defaultInstance
    }()
}

public extension UpdateGlobalTableSettingsInput {
    /**
     Default instance of the UpdateGlobalTableSettingsInput structure.
     */
    public static let __default: DynamoDBModel.UpdateGlobalTableSettingsInput = {
        let defaultInstance = DynamoDBModel.UpdateGlobalTableSettingsInput(
            globalTableGlobalSecondaryIndexSettingsUpdate: nil,
            globalTableName: "012",
            globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate: nil,
            globalTableProvisionedWriteCapacityUnits: nil,
            replicaSettingsUpdate: nil)

        return defaultInstance
    }()
}

public extension UpdateGlobalTableSettingsOutput {
    /**
     Default instance of the UpdateGlobalTableSettingsOutput structure.
     */
    public static let __default: DynamoDBModel.UpdateGlobalTableSettingsOutput = {
        let defaultInstance = DynamoDBModel.UpdateGlobalTableSettingsOutput(
            globalTableName: nil,
            replicaSettings: nil)

        return defaultInstance
    }()
}

public extension UpdateItemInput {
    /**
     Default instance of the UpdateItemInput structure.
     */
    public static let __default: DynamoDBModel.UpdateItemInput = {
        let defaultInstance = DynamoDBModel.UpdateItemInput(
            attributeUpdates: nil,
            conditionExpression: nil,
            conditionalOperator: nil,
            expected: nil,
            expressionAttributeNames: nil,
            expressionAttributeValues: nil,
            key: [:],
            returnConsumedCapacity: nil,
            returnItemCollectionMetrics: nil,
            returnValues: nil,
            tableName: "012",
            updateExpression: nil)

        return defaultInstance
    }()
}

public extension UpdateItemOutput {
    /**
     Default instance of the UpdateItemOutput structure.
     */
    public static let __default: DynamoDBModel.UpdateItemOutput = {
        let defaultInstance = DynamoDBModel.UpdateItemOutput(
            attributes: nil,
            consumedCapacity: nil,
            itemCollectionMetrics: nil)

        return defaultInstance
    }()
}

public extension UpdateTableInput {
    /**
     Default instance of the UpdateTableInput structure.
     */
    public static let __default: DynamoDBModel.UpdateTableInput = {
        let defaultInstance = DynamoDBModel.UpdateTableInput(
            attributeDefinitions: nil,
            globalSecondaryIndexUpdates: nil,
            provisionedThroughput: nil,
            sSESpecification: nil,
            streamSpecification: nil,
            tableName: "012")

        return defaultInstance
    }()
}

public extension UpdateTableOutput {
    /**
     Default instance of the UpdateTableOutput structure.
     */
    public static let __default: DynamoDBModel.UpdateTableOutput = {
        let defaultInstance = DynamoDBModel.UpdateTableOutput(
            tableDescription: nil)

        return defaultInstance
    }()
}

public extension UpdateTimeToLiveInput {
    /**
     Default instance of the UpdateTimeToLiveInput structure.
     */
    public static let __default: DynamoDBModel.UpdateTimeToLiveInput = {
        let defaultInstance = DynamoDBModel.UpdateTimeToLiveInput(
            tableName: "012",
            timeToLiveSpecification: TimeToLiveSpecification.__default)

        return defaultInstance
    }()
}

public extension UpdateTimeToLiveOutput {
    /**
     Default instance of the UpdateTimeToLiveOutput structure.
     */
    public static let __default: DynamoDBModel.UpdateTimeToLiveOutput = {
        let defaultInstance = DynamoDBModel.UpdateTimeToLiveOutput(
            timeToLiveSpecification: nil)

        return defaultInstance
    }()
}

public extension WriteRequest {
    /**
     Default instance of the WriteRequest structure.
     */
    public static let __default: DynamoDBModel.WriteRequest = {
        let defaultInstance = DynamoDBModel.WriteRequest(
            deleteRequest: nil,
            putRequest: nil)

        return defaultInstance
    }()
}
