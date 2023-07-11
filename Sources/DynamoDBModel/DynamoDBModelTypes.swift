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
// DynamoDBModelTypes.swift
// DynamoDBModel
//

import Foundation

/**
 Type definition for the ArchivalReason field.
 */
public typealias ArchivalReason = String

/**
 Enumeration restricting the values of the AttributeAction field.
 */
public enum AttributeAction: String, Codable, CustomStringConvertible {
    case add = "ADD"
    case delete = "DELETE"
    case put = "PUT"

    public var description: String {
        return rawValue
    }
    
    public static let __default: AttributeAction = .add
}

/**
 Type definition for the AttributeDefinitions field.
 */
public typealias AttributeDefinitions = [AttributeDefinition]

/**
 Type definition for the AttributeMap field.
 */
public typealias AttributeMap = [AttributeName: AttributeValue]

/**
 Type definition for the AttributeName field.
 */
public typealias AttributeName = String

/**
 Type definition for the AttributeNameList field.
 */
public typealias AttributeNameList = [AttributeName]

/**
 Type definition for the AttributeUpdates field.
 */
public typealias AttributeUpdates = [AttributeName: AttributeValueUpdate]

/**
 Type definition for the AttributeValueList field.
 */
public typealias AttributeValueList = [AttributeValue]

/**
 Type definition for the AutoScalingPolicyDescriptionList field.
 */
public typealias AutoScalingPolicyDescriptionList = [AutoScalingPolicyDescription]

/**
 Type definition for the AutoScalingPolicyName field.
 */
public typealias AutoScalingPolicyName = String

/**
 Type definition for the AutoScalingRoleArn field.
 */
public typealias AutoScalingRoleArn = String

/**
 Type definition for the Backfilling field.
 */
public typealias Backfilling = Bool

/**
 Type definition for the BackupArn field.
 */
public typealias BackupArn = String

/**
 Type definition for the BackupCreationDateTime field.
 */
public typealias BackupCreationDateTime = String

/**
 Type definition for the BackupName field.
 */
public typealias BackupName = String

/**
 Type definition for the BackupSizeBytes field.
 */
public typealias BackupSizeBytes = Int

/**
 Enumeration restricting the values of the BackupStatus field.
 */
public enum BackupStatus: String, Codable, CustomStringConvertible {
    case available = "AVAILABLE"
    case creating = "CREATING"
    case deleted = "DELETED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: BackupStatus = .available
}

/**
 Type definition for the BackupSummaries field.
 */
public typealias BackupSummaries = [BackupSummary]

/**
 Enumeration restricting the values of the BackupType field.
 */
public enum BackupType: String, Codable, CustomStringConvertible {
    case awsBackup = "AWS_BACKUP"
    case system = "SYSTEM"
    case user = "USER"

    public var description: String {
        return rawValue
    }
    
    public static let __default: BackupType = .awsBackup
}

/**
 Enumeration restricting the values of the BackupTypeFilter field.
 */
public enum BackupTypeFilter: String, Codable, CustomStringConvertible {
    case all = "ALL"
    case awsBackup = "AWS_BACKUP"
    case system = "SYSTEM"
    case user = "USER"

    public var description: String {
        return rawValue
    }
    
    public static let __default: BackupTypeFilter = .all
}

/**
 Type definition for the BackupsInputLimit field.
 */
public typealias BackupsInputLimit = Int

/**
 Type definition for the BatchGetRequestMap field.
 */
public typealias BatchGetRequestMap = [TableName: KeysAndAttributes]

/**
 Type definition for the BatchGetResponseMap field.
 */
public typealias BatchGetResponseMap = [TableName: ItemList]

/**
 Enumeration restricting the values of the BatchStatementErrorCodeEnum field.
 */
public enum BatchStatementErrorCodeEnum: String, Codable, CustomStringConvertible {
    case accessdenied = "AccessDenied"
    case conditionalcheckfailed = "ConditionalCheckFailed"
    case duplicateitem = "DuplicateItem"
    case internalservererror = "InternalServerError"
    case itemcollectionsizelimitexceeded = "ItemCollectionSizeLimitExceeded"
    case provisionedthroughputexceeded = "ProvisionedThroughputExceeded"
    case requestlimitexceeded = "RequestLimitExceeded"
    case resourcenotfound = "ResourceNotFound"
    case throttlingerror = "ThrottlingError"
    case transactionconflict = "TransactionConflict"
    case validationerror = "ValidationError"

    public var description: String {
        return rawValue
    }
    
    public static let __default: BatchStatementErrorCodeEnum = .accessdenied
}

/**
 Type definition for the BatchWriteItemRequestMap field.
 */
public typealias BatchWriteItemRequestMap = [TableName: WriteRequests]

/**
 Type definition for the BilledSizeBytes field.
 */
public typealias BilledSizeBytes = Int

/**
 Enumeration restricting the values of the BillingMode field.
 */
public enum BillingMode: String, Codable, CustomStringConvertible {
    case payPerRequest = "PAY_PER_REQUEST"
    case provisioned = "PROVISIONED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: BillingMode = .payPerRequest
}

/**
 Type definition for the BinaryAttributeValue field.
 */
public typealias BinaryAttributeValue = Data

/**
 Type definition for the BinarySetAttributeValue field.
 */
public typealias BinarySetAttributeValue = [BinaryAttributeValue]

/**
 Type definition for the BooleanAttributeValue field.
 */
public typealias BooleanAttributeValue = Bool

/**
 Type definition for the BooleanObject field.
 */
public typealias BooleanObject = Bool

/**
 Type definition for the CancellationReasonList field.
 */
public typealias CancellationReasonList = [CancellationReason]

/**
 Type definition for the ClientRequestToken field.
 */
public typealias ClientRequestToken = String

/**
 Type definition for the ClientToken field.
 */
public typealias ClientToken = String

/**
 Type definition for the CloudWatchLogGroupArn field.
 */
public typealias CloudWatchLogGroupArn = String

/**
 Type definition for the Code field.
 */
public typealias Code = String

/**
 Enumeration restricting the values of the ComparisonOperator field.
 */
public enum ComparisonOperator: String, Codable, CustomStringConvertible {
    case beginsWith = "BEGINS_WITH"
    case between = "BETWEEN"
    case contains = "CONTAINS"
    case eq = "EQ"
    case ge = "GE"
    case gt = "GT"
    case `in` = "IN"
    case le = "LE"
    case lt = "LT"
    case ne = "NE"
    case notContains = "NOT_CONTAINS"
    case notNull = "NOT_NULL"
    case null = "NULL"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ComparisonOperator = .beginsWith
}

/**
 Type definition for the ConditionExpression field.
 */
public typealias ConditionExpression = String

/**
 Enumeration restricting the values of the ConditionalOperator field.
 */
public enum ConditionalOperator: String, Codable, CustomStringConvertible {
    case and = "AND"
    case or = "OR"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ConditionalOperator = .and
}

/**
 Type definition for the ConsistentRead field.
 */
public typealias ConsistentRead = Bool

/**
 Type definition for the ConsumedCapacityMultiple field.
 */
public typealias ConsumedCapacityMultiple = [ConsumedCapacity]

/**
 Type definition for the ConsumedCapacityUnits field.
 */
public typealias ConsumedCapacityUnits = Double

/**
 Enumeration restricting the values of the ContinuousBackupsStatus field.
 */
public enum ContinuousBackupsStatus: String, Codable, CustomStringConvertible {
    case disabled = "DISABLED"
    case enabled = "ENABLED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ContinuousBackupsStatus = .disabled
}

/**
 Enumeration restricting the values of the ContributorInsightsAction field.
 */
public enum ContributorInsightsAction: String, Codable, CustomStringConvertible {
    case disable = "DISABLE"
    case enable = "ENABLE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ContributorInsightsAction = .disable
}

/**
 Type definition for the ContributorInsightsRule field.
 */
public typealias ContributorInsightsRule = String

/**
 Type definition for the ContributorInsightsRuleList field.
 */
public typealias ContributorInsightsRuleList = [ContributorInsightsRule]

/**
 Enumeration restricting the values of the ContributorInsightsStatus field.
 */
public enum ContributorInsightsStatus: String, Codable, CustomStringConvertible {
    case disabled = "DISABLED"
    case disabling = "DISABLING"
    case enabled = "ENABLED"
    case enabling = "ENABLING"
    case failed = "FAILED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ContributorInsightsStatus = .disabled
}

/**
 Type definition for the ContributorInsightsSummaries field.
 */
public typealias ContributorInsightsSummaries = [ContributorInsightsSummary]

/**
 Type definition for the CsvDelimiter field.
 */
public typealias CsvDelimiter = String

/**
 Type definition for the CsvHeader field.
 */
public typealias CsvHeader = String

/**
 Type definition for the CsvHeaderList field.
 */
public typealias CsvHeaderList = [CsvHeader]

/**
 Type definition for the Date field.
 */
public typealias Date = String

/**
 Type definition for the DeletionProtectionEnabled field.
 */
public typealias DeletionProtectionEnabled = Bool

/**
 Enumeration restricting the values of the DestinationStatus field.
 */
public enum DestinationStatus: String, Codable, CustomStringConvertible {
    case active = "ACTIVE"
    case disabled = "DISABLED"
    case disabling = "DISABLING"
    case enableFailed = "ENABLE_FAILED"
    case enabling = "ENABLING"

    public var description: String {
        return rawValue
    }
    
    public static let __default: DestinationStatus = .active
}

/**
 Type definition for the DoubleObject field.
 */
public typealias DoubleObject = Double

/**
 Type definition for the Endpoints field.
 */
public typealias Endpoints = [Endpoint]

/**
 Type definition for the ErrorCount field.
 */
public typealias ErrorCount = Int

/**
 Type definition for the ErrorMessage field.
 */
public typealias ErrorMessage = String

/**
 Type definition for the ExceptionDescription field.
 */
public typealias ExceptionDescription = String

/**
 Type definition for the ExceptionName field.
 */
public typealias ExceptionName = String

/**
 Type definition for the ExpectedAttributeMap field.
 */
public typealias ExpectedAttributeMap = [AttributeName: ExpectedAttributeValue]

/**
 Type definition for the ExportArn field.
 */
public typealias ExportArn = String

/**
 Type definition for the ExportEndTime field.
 */
public typealias ExportEndTime = String

/**
 Enumeration restricting the values of the ExportFormat field.
 */
public enum ExportFormat: String, Codable, CustomStringConvertible {
    case dynamodbJson = "DYNAMODB_JSON"
    case ion = "ION"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ExportFormat = .dynamodbJson
}

/**
 Type definition for the ExportManifest field.
 */
public typealias ExportManifest = String

/**
 Type definition for the ExportNextToken field.
 */
public typealias ExportNextToken = String

/**
 Type definition for the ExportStartTime field.
 */
public typealias ExportStartTime = String

/**
 Enumeration restricting the values of the ExportStatus field.
 */
public enum ExportStatus: String, Codable, CustomStringConvertible {
    case completed = "COMPLETED"
    case failed = "FAILED"
    case inProgress = "IN_PROGRESS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ExportStatus = .completed
}

/**
 Type definition for the ExportSummaries field.
 */
public typealias ExportSummaries = [ExportSummary]

/**
 Type definition for the ExportTime field.
 */
public typealias ExportTime = String

/**
 Type definition for the ExpressionAttributeNameMap field.
 */
public typealias ExpressionAttributeNameMap = [ExpressionAttributeNameVariable: AttributeName]

/**
 Type definition for the ExpressionAttributeNameVariable field.
 */
public typealias ExpressionAttributeNameVariable = String

/**
 Type definition for the ExpressionAttributeValueMap field.
 */
public typealias ExpressionAttributeValueMap = [ExpressionAttributeValueVariable: AttributeValue]

/**
 Type definition for the ExpressionAttributeValueVariable field.
 */
public typealias ExpressionAttributeValueVariable = String

/**
 Type definition for the FailureCode field.
 */
public typealias FailureCode = String

/**
 Type definition for the FailureMessage field.
 */
public typealias FailureMessage = String

/**
 Type definition for the FilterConditionMap field.
 */
public typealias FilterConditionMap = [AttributeName: Condition]

/**
 Type definition for the GlobalSecondaryIndexAutoScalingUpdateList field.
 */
public typealias GlobalSecondaryIndexAutoScalingUpdateList = [GlobalSecondaryIndexAutoScalingUpdate]

/**
 Type definition for the GlobalSecondaryIndexDescriptionList field.
 */
public typealias GlobalSecondaryIndexDescriptionList = [GlobalSecondaryIndexDescription]

/**
 Type definition for the GlobalSecondaryIndexList field.
 */
public typealias GlobalSecondaryIndexList = [GlobalSecondaryIndex]

/**
 Type definition for the GlobalSecondaryIndexUpdateList field.
 */
public typealias GlobalSecondaryIndexUpdateList = [GlobalSecondaryIndexUpdate]

/**
 Type definition for the GlobalSecondaryIndexes field.
 */
public typealias GlobalSecondaryIndexes = [GlobalSecondaryIndexInfo]

/**
 Type definition for the GlobalTableArnString field.
 */
public typealias GlobalTableArnString = String

/**
 Type definition for the GlobalTableGlobalSecondaryIndexSettingsUpdateList field.
 */
public typealias GlobalTableGlobalSecondaryIndexSettingsUpdateList = [GlobalTableGlobalSecondaryIndexSettingsUpdate]

/**
 Type definition for the GlobalTableList field.
 */
public typealias GlobalTableList = [GlobalTable]

/**
 Enumeration restricting the values of the GlobalTableStatus field.
 */
public enum GlobalTableStatus: String, Codable, CustomStringConvertible {
    case active = "ACTIVE"
    case creating = "CREATING"
    case deleting = "DELETING"
    case updating = "UPDATING"

    public var description: String {
        return rawValue
    }
    
    public static let __default: GlobalTableStatus = .active
}

/**
 Type definition for the ImportArn field.
 */
public typealias ImportArn = String

/**
 Type definition for the ImportEndTime field.
 */
public typealias ImportEndTime = String

/**
 Type definition for the ImportNextToken field.
 */
public typealias ImportNextToken = String

/**
 Type definition for the ImportStartTime field.
 */
public typealias ImportStartTime = String

/**
 Enumeration restricting the values of the ImportStatus field.
 */
public enum ImportStatus: String, Codable, CustomStringConvertible {
    case cancelled = "CANCELLED"
    case cancelling = "CANCELLING"
    case completed = "COMPLETED"
    case failed = "FAILED"
    case inProgress = "IN_PROGRESS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ImportStatus = .cancelled
}

/**
 Type definition for the ImportSummaryList field.
 */
public typealias ImportSummaryList = [ImportSummary]

/**
 Type definition for the ImportedItemCount field.
 */
public typealias ImportedItemCount = Int

/**
 Type definition for the IndexName field.
 */
public typealias IndexName = String

/**
 Enumeration restricting the values of the IndexStatus field.
 */
public enum IndexStatus: String, Codable, CustomStringConvertible {
    case active = "ACTIVE"
    case creating = "CREATING"
    case deleting = "DELETING"
    case updating = "UPDATING"

    public var description: String {
        return rawValue
    }
    
    public static let __default: IndexStatus = .active
}

/**
 Enumeration restricting the values of the InputCompressionType field.
 */
public enum InputCompressionType: String, Codable, CustomStringConvertible {
    case gzip = "GZIP"
    case none = "NONE"
    case zstd = "ZSTD"

    public var description: String {
        return rawValue
    }
    
    public static let __default: InputCompressionType = .gzip
}

/**
 Enumeration restricting the values of the InputFormat field.
 */
public enum InputFormat: String, Codable, CustomStringConvertible {
    case csv = "CSV"
    case dynamodbJson = "DYNAMODB_JSON"
    case ion = "ION"

    public var description: String {
        return rawValue
    }
    
    public static let __default: InputFormat = .csv
}

/**
 Type definition for the Integer field.
 */
public typealias Integer = Int

/**
 Type definition for the IntegerObject field.
 */
public typealias IntegerObject = Int

/**
 Type definition for the ItemCollectionKeyAttributeMap field.
 */
public typealias ItemCollectionKeyAttributeMap = [AttributeName: AttributeValue]

/**
 Type definition for the ItemCollectionMetricsMultiple field.
 */
public typealias ItemCollectionMetricsMultiple = [ItemCollectionMetrics]

/**
 Type definition for the ItemCollectionMetricsPerTable field.
 */
public typealias ItemCollectionMetricsPerTable = [TableName: ItemCollectionMetricsMultiple]

/**
 Type definition for the ItemCollectionSizeEstimateBound field.
 */
public typealias ItemCollectionSizeEstimateBound = Double

/**
 Type definition for the ItemCollectionSizeEstimateRange field.
 */
public typealias ItemCollectionSizeEstimateRange = [ItemCollectionSizeEstimateBound]

/**
 Type definition for the ItemCount field.
 */
public typealias ItemCount = Int

/**
 Type definition for the ItemList field.
 */
public typealias ItemList = [AttributeMap]

/**
 Type definition for the ItemResponseList field.
 */
public typealias ItemResponseList = [ItemResponse]

/**
 Type definition for the KMSMasterKeyArn field.
 */
public typealias KMSMasterKeyArn = String

/**
 Type definition for the KMSMasterKeyId field.
 */
public typealias KMSMasterKeyId = String

/**
 Type definition for the Key field.
 */
public typealias Key = [AttributeName: AttributeValue]

/**
 Type definition for the KeyConditions field.
 */
public typealias KeyConditions = [AttributeName: Condition]

/**
 Type definition for the KeyExpression field.
 */
public typealias KeyExpression = String

/**
 Type definition for the KeyList field.
 */
public typealias KeyList = [Key]

/**
 Type definition for the KeySchema field.
 */
public typealias KeySchema = [KeySchemaElement]

/**
 Type definition for the KeySchemaAttributeName field.
 */
public typealias KeySchemaAttributeName = String

/**
 Enumeration restricting the values of the KeyType field.
 */
public enum KeyType: String, Codable, CustomStringConvertible {
    case hash = "HASH"
    case range = "RANGE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: KeyType = .hash
}

/**
 Type definition for the KinesisDataStreamDestinations field.
 */
public typealias KinesisDataStreamDestinations = [KinesisDataStreamDestination]

/**
 Type definition for the LastUpdateDateTime field.
 */
public typealias LastUpdateDateTime = String

/**
 Type definition for the ListAttributeValue field.
 */
public typealias ListAttributeValue = [AttributeValue]

/**
 Type definition for the ListContributorInsightsLimit field.
 */
public typealias ListContributorInsightsLimit = Int

/**
 Type definition for the ListExportsMaxLimit field.
 */
public typealias ListExportsMaxLimit = Int

/**
 Type definition for the ListImportsMaxLimit field.
 */
public typealias ListImportsMaxLimit = Int

/**
 Type definition for the ListTablesInputLimit field.
 */
public typealias ListTablesInputLimit = Int

/**
 Type definition for the LocalSecondaryIndexDescriptionList field.
 */
public typealias LocalSecondaryIndexDescriptionList = [LocalSecondaryIndexDescription]

/**
 Type definition for the LocalSecondaryIndexList field.
 */
public typealias LocalSecondaryIndexList = [LocalSecondaryIndex]

/**
 Type definition for the LocalSecondaryIndexes field.
 */
public typealias LocalSecondaryIndexes = [LocalSecondaryIndexInfo]

/**
 Type definition for the Long field.
 */
public typealias Long = Int

/**
 Type definition for the LongObject field.
 */
public typealias LongObject = Int

/**
 Type definition for the MapAttributeValue field.
 */
public typealias MapAttributeValue = [AttributeName: AttributeValue]

/**
 Type definition for the NextTokenString field.
 */
public typealias NextTokenString = String

/**
 Type definition for the NonKeyAttributeName field.
 */
public typealias NonKeyAttributeName = String

/**
 Type definition for the NonKeyAttributeNameList field.
 */
public typealias NonKeyAttributeNameList = [NonKeyAttributeName]

/**
 Type definition for the NonNegativeLongObject field.
 */
public typealias NonNegativeLongObject = Int

/**
 Type definition for the NullAttributeValue field.
 */
public typealias NullAttributeValue = Bool

/**
 Type definition for the NumberAttributeValue field.
 */
public typealias NumberAttributeValue = String

/**
 Type definition for the NumberSetAttributeValue field.
 */
public typealias NumberSetAttributeValue = [NumberAttributeValue]

/**
 Type definition for the ParameterizedStatements field.
 */
public typealias ParameterizedStatements = [ParameterizedStatement]

/**
 Type definition for the PartiQLBatchRequest field.
 */
public typealias PartiQLBatchRequest = [BatchStatementRequest]

/**
 Type definition for the PartiQLBatchResponse field.
 */
public typealias PartiQLBatchResponse = [BatchStatementResponse]

/**
 Type definition for the PartiQLNextToken field.
 */
public typealias PartiQLNextToken = String

/**
 Type definition for the PartiQLStatement field.
 */
public typealias PartiQLStatement = String

/**
 Enumeration restricting the values of the PointInTimeRecoveryStatus field.
 */
public enum PointInTimeRecoveryStatus: String, Codable, CustomStringConvertible {
    case disabled = "DISABLED"
    case enabled = "ENABLED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: PointInTimeRecoveryStatus = .disabled
}

/**
 Type definition for the PositiveIntegerObject field.
 */
public typealias PositiveIntegerObject = Int

/**
 Type definition for the PositiveLongObject field.
 */
public typealias PositiveLongObject = Int

/**
 Type definition for the PreparedStatementParameters field.
 */
public typealias PreparedStatementParameters = [AttributeValue]

/**
 Type definition for the ProcessedItemCount field.
 */
public typealias ProcessedItemCount = Int

/**
 Type definition for the ProjectionExpression field.
 */
public typealias ProjectionExpression = String

/**
 Enumeration restricting the values of the ProjectionType field.
 */
public enum ProjectionType: String, Codable, CustomStringConvertible {
    case all = "ALL"
    case include = "INCLUDE"
    case keysOnly = "KEYS_ONLY"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ProjectionType = .all
}

/**
 Type definition for the PutItemInputAttributeMap field.
 */
public typealias PutItemInputAttributeMap = [AttributeName: AttributeValue]

/**
 Type definition for the RegionName field.
 */
public typealias RegionName = String

/**
 Type definition for the ReplicaAutoScalingDescriptionList field.
 */
public typealias ReplicaAutoScalingDescriptionList = [ReplicaAutoScalingDescription]

/**
 Type definition for the ReplicaAutoScalingUpdateList field.
 */
public typealias ReplicaAutoScalingUpdateList = [ReplicaAutoScalingUpdate]

/**
 Type definition for the ReplicaDescriptionList field.
 */
public typealias ReplicaDescriptionList = [ReplicaDescription]

/**
 Type definition for the ReplicaGlobalSecondaryIndexAutoScalingDescriptionList field.
 */
public typealias ReplicaGlobalSecondaryIndexAutoScalingDescriptionList = [ReplicaGlobalSecondaryIndexAutoScalingDescription]

/**
 Type definition for the ReplicaGlobalSecondaryIndexAutoScalingUpdateList field.
 */
public typealias ReplicaGlobalSecondaryIndexAutoScalingUpdateList = [ReplicaGlobalSecondaryIndexAutoScalingUpdate]

/**
 Type definition for the ReplicaGlobalSecondaryIndexDescriptionList field.
 */
public typealias ReplicaGlobalSecondaryIndexDescriptionList = [ReplicaGlobalSecondaryIndexDescription]

/**
 Type definition for the ReplicaGlobalSecondaryIndexList field.
 */
public typealias ReplicaGlobalSecondaryIndexList = [ReplicaGlobalSecondaryIndex]

/**
 Type definition for the ReplicaGlobalSecondaryIndexSettingsDescriptionList field.
 */
public typealias ReplicaGlobalSecondaryIndexSettingsDescriptionList = [ReplicaGlobalSecondaryIndexSettingsDescription]

/**
 Type definition for the ReplicaGlobalSecondaryIndexSettingsUpdateList field.
 */
public typealias ReplicaGlobalSecondaryIndexSettingsUpdateList = [ReplicaGlobalSecondaryIndexSettingsUpdate]

/**
 Type definition for the ReplicaList field.
 */
public typealias ReplicaList = [Replica]

/**
 Type definition for the ReplicaSettingsDescriptionList field.
 */
public typealias ReplicaSettingsDescriptionList = [ReplicaSettingsDescription]

/**
 Type definition for the ReplicaSettingsUpdateList field.
 */
public typealias ReplicaSettingsUpdateList = [ReplicaSettingsUpdate]

/**
 Enumeration restricting the values of the ReplicaStatus field.
 */
public enum ReplicaStatus: String, Codable, CustomStringConvertible {
    case active = "ACTIVE"
    case creating = "CREATING"
    case creationFailed = "CREATION_FAILED"
    case deleting = "DELETING"
    case inaccessibleEncryptionCredentials = "INACCESSIBLE_ENCRYPTION_CREDENTIALS"
    case regionDisabled = "REGION_DISABLED"
    case updating = "UPDATING"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ReplicaStatus = .active
}

/**
 Type definition for the ReplicaStatusDescription field.
 */
public typealias ReplicaStatusDescription = String

/**
 Type definition for the ReplicaStatusPercentProgress field.
 */
public typealias ReplicaStatusPercentProgress = String

/**
 Type definition for the ReplicaUpdateList field.
 */
public typealias ReplicaUpdateList = [ReplicaUpdate]

/**
 Type definition for the ReplicationGroupUpdateList field.
 */
public typealias ReplicationGroupUpdateList = [ReplicationGroupUpdate]

/**
 Type definition for the ResourceArnString field.
 */
public typealias ResourceArnString = String

/**
 Type definition for the RestoreInProgress field.
 */
public typealias RestoreInProgress = Bool

/**
 Enumeration restricting the values of the ReturnConsumedCapacity field.
 */
public enum ReturnConsumedCapacity: String, Codable, CustomStringConvertible {
    case indexes = "INDEXES"
    case none = "NONE"
    case total = "TOTAL"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ReturnConsumedCapacity = .indexes
}

/**
 Enumeration restricting the values of the ReturnItemCollectionMetrics field.
 */
public enum ReturnItemCollectionMetrics: String, Codable, CustomStringConvertible {
    case none = "NONE"
    case size = "SIZE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ReturnItemCollectionMetrics = .none
}

/**
 Enumeration restricting the values of the ReturnValue field.
 */
public enum ReturnValue: String, Codable, CustomStringConvertible {
    case allNew = "ALL_NEW"
    case allOld = "ALL_OLD"
    case none = "NONE"
    case updatedNew = "UPDATED_NEW"
    case updatedOld = "UPDATED_OLD"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ReturnValue = .allNew
}

/**
 Enumeration restricting the values of the ReturnValuesOnConditionCheckFailure field.
 */
public enum ReturnValuesOnConditionCheckFailure: String, Codable, CustomStringConvertible {
    case allOld = "ALL_OLD"
    case none = "NONE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ReturnValuesOnConditionCheckFailure = .allOld
}

/**
 Type definition for the S3Bucket field.
 */
public typealias S3Bucket = String

/**
 Type definition for the S3BucketOwner field.
 */
public typealias S3BucketOwner = String

/**
 Type definition for the S3Prefix field.
 */
public typealias S3Prefix = String

/**
 Enumeration restricting the values of the S3SseAlgorithm field.
 */
public enum S3SseAlgorithm: String, Codable, CustomStringConvertible {
    case aes256 = "AES256"
    case kms = "KMS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: S3SseAlgorithm = .aes256
}

/**
 Type definition for the S3SseKmsKeyId field.
 */
public typealias S3SseKmsKeyId = String

/**
 Type definition for the SSEEnabled field.
 */
public typealias SSEEnabled = Bool

/**
 Enumeration restricting the values of the SSEStatus field.
 */
public enum SSEStatus: String, Codable, CustomStringConvertible {
    case disabled = "DISABLED"
    case disabling = "DISABLING"
    case enabled = "ENABLED"
    case enabling = "ENABLING"
    case updating = "UPDATING"

    public var description: String {
        return rawValue
    }
    
    public static let __default: SSEStatus = .disabled
}

/**
 Enumeration restricting the values of the SSEType field.
 */
public enum SSEType: String, Codable, CustomStringConvertible {
    case aes256 = "AES256"
    case kms = "KMS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: SSEType = .aes256
}

/**
 Enumeration restricting the values of the ScalarAttributeType field.
 */
public enum ScalarAttributeType: String, Codable, CustomStringConvertible {
    case b = "B"
    case n = "N"
    case s = "S"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ScalarAttributeType = .b
}

/**
 Type definition for the ScanSegment field.
 */
public typealias ScanSegment = Int

/**
 Type definition for the ScanTotalSegments field.
 */
public typealias ScanTotalSegments = Int

/**
 Type definition for the SecondaryIndexesCapacityMap field.
 */
public typealias SecondaryIndexesCapacityMap = [IndexName: Capacity]

/**
 Enumeration restricting the values of the Select field.
 */
public enum Select: String, Codable, CustomStringConvertible {
    case allAttributes = "ALL_ATTRIBUTES"
    case allProjectedAttributes = "ALL_PROJECTED_ATTRIBUTES"
    case count = "COUNT"
    case specificAttributes = "SPECIFIC_ATTRIBUTES"

    public var description: String {
        return rawValue
    }
    
    public static let __default: Select = .allAttributes
}

/**
 Type definition for the StreamArn field.
 */
public typealias StreamArn = String

/**
 Type definition for the StreamEnabled field.
 */
public typealias StreamEnabled = Bool

/**
 Enumeration restricting the values of the StreamViewType field.
 */
public enum StreamViewType: String, Codable, CustomStringConvertible {
    case keysOnly = "KEYS_ONLY"
    case newAndOldImages = "NEW_AND_OLD_IMAGES"
    case newImage = "NEW_IMAGE"
    case oldImage = "OLD_IMAGE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: StreamViewType = .keysOnly
}

/**
 Type definition for the StringAttributeValue field.
 */
public typealias StringAttributeValue = String

/**
 Type definition for the StringSetAttributeValue field.
 */
public typealias StringSetAttributeValue = [StringAttributeValue]

/**
 Type definition for the TableArn field.
 */
public typealias TableArn = String

/**
 Enumeration restricting the values of the TableClass field.
 */
public enum TableClass: String, Codable, CustomStringConvertible {
    case standard = "STANDARD"
    case standardInfrequentAccess = "STANDARD_INFREQUENT_ACCESS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: TableClass = .standard
}

/**
 Type definition for the TableCreationDateTime field.
 */
public typealias TableCreationDateTime = String

/**
 Type definition for the TableId field.
 */
public typealias TableId = String

/**
 Type definition for the TableName field.
 */
public typealias TableName = String

/**
 Type definition for the TableNameList field.
 */
public typealias TableNameList = [TableName]

/**
 Enumeration restricting the values of the TableStatus field.
 */
public enum TableStatus: String, Codable, CustomStringConvertible {
    case active = "ACTIVE"
    case archived = "ARCHIVED"
    case archiving = "ARCHIVING"
    case creating = "CREATING"
    case deleting = "DELETING"
    case inaccessibleEncryptionCredentials = "INACCESSIBLE_ENCRYPTION_CREDENTIALS"
    case updating = "UPDATING"

    public var description: String {
        return rawValue
    }
    
    public static let __default: TableStatus = .active
}

/**
 Type definition for the TagKeyList field.
 */
public typealias TagKeyList = [TagKeyString]

/**
 Type definition for the TagKeyString field.
 */
public typealias TagKeyString = String

/**
 Type definition for the TagList field.
 */
public typealias TagList = [Tag]

/**
 Type definition for the TagValueString field.
 */
public typealias TagValueString = String

/**
 Type definition for the TimeRangeLowerBound field.
 */
public typealias TimeRangeLowerBound = String

/**
 Type definition for the TimeRangeUpperBound field.
 */
public typealias TimeRangeUpperBound = String

/**
 Type definition for the TimeToLiveAttributeName field.
 */
public typealias TimeToLiveAttributeName = String

/**
 Type definition for the TimeToLiveEnabled field.
 */
public typealias TimeToLiveEnabled = Bool

/**
 Enumeration restricting the values of the TimeToLiveStatus field.
 */
public enum TimeToLiveStatus: String, Codable, CustomStringConvertible {
    case disabled = "DISABLED"
    case disabling = "DISABLING"
    case enabled = "ENABLED"
    case enabling = "ENABLING"

    public var description: String {
        return rawValue
    }
    
    public static let __default: TimeToLiveStatus = .disabled
}

/**
 Type definition for the TransactGetItemList field.
 */
public typealias TransactGetItemList = [TransactGetItem]

/**
 Type definition for the TransactWriteItemList field.
 */
public typealias TransactWriteItemList = [TransactWriteItem]

/**
 Type definition for the UpdateExpression field.
 */
public typealias UpdateExpression = String

/**
 Type definition for the WriteRequests field.
 */
public typealias WriteRequests = [WriteRequest]

/**
 Validation for the AttributeName field.
*/
extension DynamoDBModel.AttributeName {
    public func validateAsAttributeName() throws {

        if self.count > 65535 {
            throw DynamoDBError.validationError(reason: "The provided value to AttributeName violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the AttributeNameList field.
*/
extension Array where Element == DynamoDBModel.AttributeName {
    public func validateAsAttributeNameList() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to AttributeNameList violated the minimum length constraint.")
        }

    }
}

/**
 Validation for the AutoScalingPolicyName field.
*/
extension DynamoDBModel.AutoScalingPolicyName {
    public func validateAsAutoScalingPolicyName() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to AutoScalingPolicyName violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw DynamoDBError.validationError(reason: "The provided value to AutoScalingPolicyName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "\\p{Print}+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw DynamoDBError.validationError(
                    reason: "The provided value to AutoScalingPolicyName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the AutoScalingRoleArn field.
*/
extension DynamoDBModel.AutoScalingRoleArn {
    public func validateAsAutoScalingRoleArn() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to AutoScalingRoleArn violated the minimum length constraint.")
        }

        if self.count > 1600 {
            throw DynamoDBError.validationError(reason: "The provided value to AutoScalingRoleArn violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw DynamoDBError.validationError(
                    reason: "The provided value to AutoScalingRoleArn violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the BackupArn field.
*/
extension DynamoDBModel.BackupArn {
    public func validateAsBackupArn() throws {
        if self.count < 37 {
            throw DynamoDBError.validationError(reason: "The provided value to BackupArn violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw DynamoDBError.validationError(reason: "The provided value to BackupArn violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the BackupName field.
*/
extension DynamoDBModel.BackupName {
    public func validateAsBackupName() throws {
        if self.count < 3 {
            throw DynamoDBError.validationError(reason: "The provided value to BackupName violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw DynamoDBError.validationError(reason: "The provided value to BackupName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9_.-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw DynamoDBError.validationError(
                    reason: "The provided value to BackupName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the BackupSizeBytes field.
*/
extension DynamoDBModel.BackupSizeBytes {
    public func validateAsBackupSizeBytes() throws {
        if self < 0 {
            throw DynamoDBError.validationError(reason: "The provided value to BackupSizeBytes violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the BackupsInputLimit field.
*/
extension DynamoDBModel.BackupsInputLimit {
    public func validateAsBackupsInputLimit() throws {
        if self < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to BackupsInputLimit violated the minimum range constraint.")
        }

        if self > 100 {
            throw DynamoDBError.validationError(reason: "The provided value to BackupsInputLimit violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the BilledSizeBytes field.
*/
extension DynamoDBModel.BilledSizeBytes {
    public func validateAsBilledSizeBytes() throws {
        if self < 0 {
            throw DynamoDBError.validationError(reason: "The provided value to BilledSizeBytes violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the CancellationReasonList field.
*/
extension Array where Element == DynamoDBModel.CancellationReason {
    public func validateAsCancellationReasonList() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to CancellationReasonList violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw DynamoDBError.validationError(reason: "The provided value to CancellationReasonList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ClientRequestToken field.
*/
extension DynamoDBModel.ClientRequestToken {
    public func validateAsClientRequestToken() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to ClientRequestToken violated the minimum length constraint.")
        }

        if self.count > 36 {
            throw DynamoDBError.validationError(reason: "The provided value to ClientRequestToken violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ClientToken field.
*/
extension DynamoDBModel.ClientToken {
    public func validateAsClientToken() throws {
        guard let matchingRange = self.range(of: "^[^\\$]+$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw DynamoDBError.validationError(
                    reason: "The provided value to ClientToken violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the CloudWatchLogGroupArn field.
*/
extension DynamoDBModel.CloudWatchLogGroupArn {
    public func validateAsCloudWatchLogGroupArn() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to CloudWatchLogGroupArn violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw DynamoDBError.validationError(reason: "The provided value to CloudWatchLogGroupArn violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ContributorInsightsRule field.
*/
extension DynamoDBModel.ContributorInsightsRule {
    public func validateAsContributorInsightsRule() throws {
        guard let matchingRange = self.range(of: "[A-Za-z0-9][A-Za-z0-9\\-\\_\\.]{0,126}[A-Za-z0-9]", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw DynamoDBError.validationError(
                    reason: "The provided value to ContributorInsightsRule violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the CsvDelimiter field.
*/
extension DynamoDBModel.CsvDelimiter {
    public func validateAsCsvDelimiter() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to CsvDelimiter violated the minimum length constraint.")
        }

        if self.count > 1 {
            throw DynamoDBError.validationError(reason: "The provided value to CsvDelimiter violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[,;:|\\t ]", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw DynamoDBError.validationError(
                    reason: "The provided value to CsvDelimiter violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the CsvHeader field.
*/
extension DynamoDBModel.CsvHeader {
    public func validateAsCsvHeader() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to CsvHeader violated the minimum length constraint.")
        }

        if self.count > 65536 {
            throw DynamoDBError.validationError(reason: "The provided value to CsvHeader violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[\\x20-\\x21\\x23-\\x2B\\x2D-\\x7E]*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw DynamoDBError.validationError(
                    reason: "The provided value to CsvHeader violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the CsvHeaderList field.
*/
extension Array where Element == DynamoDBModel.CsvHeader {
    public func validateAsCsvHeaderList() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to CsvHeaderList violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw DynamoDBError.validationError(reason: "The provided value to CsvHeaderList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ErrorCount field.
*/
extension DynamoDBModel.ErrorCount {
    public func validateAsErrorCount() throws {
        if self < 0 {
            throw DynamoDBError.validationError(reason: "The provided value to ErrorCount violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the ExportArn field.
*/
extension DynamoDBModel.ExportArn {
    public func validateAsExportArn() throws {
        if self.count < 37 {
            throw DynamoDBError.validationError(reason: "The provided value to ExportArn violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw DynamoDBError.validationError(reason: "The provided value to ExportArn violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the GlobalSecondaryIndexAutoScalingUpdateList field.
*/
extension Array where Element == DynamoDBModel.GlobalSecondaryIndexAutoScalingUpdate {
    public func validateAsGlobalSecondaryIndexAutoScalingUpdateList() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to GlobalSecondaryIndexAutoScalingUpdateList violated the minimum length constraint.")
        }

    }
}

/**
 Validation for the GlobalTableGlobalSecondaryIndexSettingsUpdateList field.
*/
extension Array where Element == DynamoDBModel.GlobalTableGlobalSecondaryIndexSettingsUpdate {
    public func validateAsGlobalTableGlobalSecondaryIndexSettingsUpdateList() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to GlobalTableGlobalSecondaryIndexSettingsUpdateList violated the minimum length constraint.")
        }

        if self.count > 20 {
            throw DynamoDBError.validationError(reason: "The provided value to GlobalTableGlobalSecondaryIndexSettingsUpdateList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ImportArn field.
*/
extension DynamoDBModel.ImportArn {
    public func validateAsImportArn() throws {
        if self.count < 37 {
            throw DynamoDBError.validationError(reason: "The provided value to ImportArn violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw DynamoDBError.validationError(reason: "The provided value to ImportArn violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ImportNextToken field.
*/
extension DynamoDBModel.ImportNextToken {
    public func validateAsImportNextToken() throws {
        if self.count < 112 {
            throw DynamoDBError.validationError(reason: "The provided value to ImportNextToken violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw DynamoDBError.validationError(reason: "The provided value to ImportNextToken violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "([0-9a-f]{16})+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw DynamoDBError.validationError(
                    reason: "The provided value to ImportNextToken violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ImportedItemCount field.
*/
extension DynamoDBModel.ImportedItemCount {
    public func validateAsImportedItemCount() throws {
        if self < 0 {
            throw DynamoDBError.validationError(reason: "The provided value to ImportedItemCount violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the IndexName field.
*/
extension DynamoDBModel.IndexName {
    public func validateAsIndexName() throws {
        if self.count < 3 {
            throw DynamoDBError.validationError(reason: "The provided value to IndexName violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw DynamoDBError.validationError(reason: "The provided value to IndexName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9_.-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw DynamoDBError.validationError(
                    reason: "The provided value to IndexName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ItemCount field.
*/
extension DynamoDBModel.ItemCount {
    public func validateAsItemCount() throws {
        if self < 0 {
            throw DynamoDBError.validationError(reason: "The provided value to ItemCount violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the ItemResponseList field.
*/
extension Array where Element == DynamoDBModel.ItemResponse {
    public func validateAsItemResponseList() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to ItemResponseList violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw DynamoDBError.validationError(reason: "The provided value to ItemResponseList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the KeyList field.
*/
extension Array where Element == DynamoDBModel.Key {
    public func validateAsKeyList() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to KeyList violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw DynamoDBError.validationError(reason: "The provided value to KeyList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the KeySchema field.
*/
extension Array where Element == DynamoDBModel.KeySchemaElement {
    public func validateAsKeySchema() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to KeySchema violated the minimum length constraint.")
        }

        if self.count > 2 {
            throw DynamoDBError.validationError(reason: "The provided value to KeySchema violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the KeySchemaAttributeName field.
*/
extension DynamoDBModel.KeySchemaAttributeName {
    public func validateAsKeySchemaAttributeName() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to KeySchemaAttributeName violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw DynamoDBError.validationError(reason: "The provided value to KeySchemaAttributeName violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ListContributorInsightsLimit field.
*/
extension DynamoDBModel.ListContributorInsightsLimit {
    public func validateAsListContributorInsightsLimit() throws {

        if self > 100 {
            throw DynamoDBError.validationError(reason: "The provided value to ListContributorInsightsLimit violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the ListExportsMaxLimit field.
*/
extension DynamoDBModel.ListExportsMaxLimit {
    public func validateAsListExportsMaxLimit() throws {
        if self < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to ListExportsMaxLimit violated the minimum range constraint.")
        }

        if self > 25 {
            throw DynamoDBError.validationError(reason: "The provided value to ListExportsMaxLimit violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the ListImportsMaxLimit field.
*/
extension DynamoDBModel.ListImportsMaxLimit {
    public func validateAsListImportsMaxLimit() throws {
        if self < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to ListImportsMaxLimit violated the minimum range constraint.")
        }

        if self > 25 {
            throw DynamoDBError.validationError(reason: "The provided value to ListImportsMaxLimit violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the ListTablesInputLimit field.
*/
extension DynamoDBModel.ListTablesInputLimit {
    public func validateAsListTablesInputLimit() throws {
        if self < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to ListTablesInputLimit violated the minimum range constraint.")
        }

        if self > 100 {
            throw DynamoDBError.validationError(reason: "The provided value to ListTablesInputLimit violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the NonKeyAttributeName field.
*/
extension DynamoDBModel.NonKeyAttributeName {
    public func validateAsNonKeyAttributeName() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to NonKeyAttributeName violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw DynamoDBError.validationError(reason: "The provided value to NonKeyAttributeName violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the NonKeyAttributeNameList field.
*/
extension Array where Element == DynamoDBModel.NonKeyAttributeName {
    public func validateAsNonKeyAttributeNameList() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to NonKeyAttributeNameList violated the minimum length constraint.")
        }

        if self.count > 20 {
            throw DynamoDBError.validationError(reason: "The provided value to NonKeyAttributeNameList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the NonNegativeLongObject field.
*/
extension DynamoDBModel.NonNegativeLongObject {
    public func validateAsNonNegativeLongObject() throws {
        if self < 0 {
            throw DynamoDBError.validationError(reason: "The provided value to NonNegativeLongObject violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the ParameterizedStatements field.
*/
extension Array where Element == DynamoDBModel.ParameterizedStatement {
    public func validateAsParameterizedStatements() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to ParameterizedStatements violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw DynamoDBError.validationError(reason: "The provided value to ParameterizedStatements violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the PartiQLBatchRequest field.
*/
extension Array where Element == DynamoDBModel.BatchStatementRequest {
    public func validateAsPartiQLBatchRequest() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to PartiQLBatchRequest violated the minimum length constraint.")
        }

        if self.count > 25 {
            throw DynamoDBError.validationError(reason: "The provided value to PartiQLBatchRequest violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the PartiQLNextToken field.
*/
extension DynamoDBModel.PartiQLNextToken {
    public func validateAsPartiQLNextToken() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to PartiQLNextToken violated the minimum length constraint.")
        }

        if self.count > 32768 {
            throw DynamoDBError.validationError(reason: "The provided value to PartiQLNextToken violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the PartiQLStatement field.
*/
extension DynamoDBModel.PartiQLStatement {
    public func validateAsPartiQLStatement() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to PartiQLStatement violated the minimum length constraint.")
        }

        if self.count > 8192 {
            throw DynamoDBError.validationError(reason: "The provided value to PartiQLStatement violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the PositiveIntegerObject field.
*/
extension DynamoDBModel.PositiveIntegerObject {
    public func validateAsPositiveIntegerObject() throws {
        if self < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to PositiveIntegerObject violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the PositiveLongObject field.
*/
extension DynamoDBModel.PositiveLongObject {
    public func validateAsPositiveLongObject() throws {
        if self < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to PositiveLongObject violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the PreparedStatementParameters field.
*/
extension Array where Element == DynamoDBModel.AttributeValue {
    public func validateAsPreparedStatementParameters() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to PreparedStatementParameters violated the minimum length constraint.")
        }

    }
}

/**
 Validation for the ProcessedItemCount field.
*/
extension DynamoDBModel.ProcessedItemCount {
    public func validateAsProcessedItemCount() throws {
        if self < 0 {
            throw DynamoDBError.validationError(reason: "The provided value to ProcessedItemCount violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the ReplicaAutoScalingUpdateList field.
*/
extension Array where Element == DynamoDBModel.ReplicaAutoScalingUpdate {
    public func validateAsReplicaAutoScalingUpdateList() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to ReplicaAutoScalingUpdateList violated the minimum length constraint.")
        }

    }
}

/**
 Validation for the ReplicaGlobalSecondaryIndexList field.
*/
extension Array where Element == DynamoDBModel.ReplicaGlobalSecondaryIndex {
    public func validateAsReplicaGlobalSecondaryIndexList() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to ReplicaGlobalSecondaryIndexList violated the minimum length constraint.")
        }

    }
}

/**
 Validation for the ReplicaGlobalSecondaryIndexSettingsUpdateList field.
*/
extension Array where Element == DynamoDBModel.ReplicaGlobalSecondaryIndexSettingsUpdate {
    public func validateAsReplicaGlobalSecondaryIndexSettingsUpdateList() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to ReplicaGlobalSecondaryIndexSettingsUpdateList violated the minimum length constraint.")
        }

        if self.count > 20 {
            throw DynamoDBError.validationError(reason: "The provided value to ReplicaGlobalSecondaryIndexSettingsUpdateList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ReplicaSettingsUpdateList field.
*/
extension Array where Element == DynamoDBModel.ReplicaSettingsUpdate {
    public func validateAsReplicaSettingsUpdateList() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to ReplicaSettingsUpdateList violated the minimum length constraint.")
        }

        if self.count > 50 {
            throw DynamoDBError.validationError(reason: "The provided value to ReplicaSettingsUpdateList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ReplicationGroupUpdateList field.
*/
extension Array where Element == DynamoDBModel.ReplicationGroupUpdate {
    public func validateAsReplicationGroupUpdateList() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to ReplicationGroupUpdateList violated the minimum length constraint.")
        }

    }
}

/**
 Validation for the ResourceArnString field.
*/
extension DynamoDBModel.ResourceArnString {
    public func validateAsResourceArnString() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to ResourceArnString violated the minimum length constraint.")
        }

        if self.count > 1283 {
            throw DynamoDBError.validationError(reason: "The provided value to ResourceArnString violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the S3Bucket field.
*/
extension DynamoDBModel.S3Bucket {
    public func validateAsS3Bucket() throws {

        if self.count > 255 {
            throw DynamoDBError.validationError(reason: "The provided value to S3Bucket violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "^[a-z0-9A-Z]+[\\.\\-\\w]*[a-z0-9A-Z]+$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw DynamoDBError.validationError(
                    reason: "The provided value to S3Bucket violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the S3BucketOwner field.
*/
extension DynamoDBModel.S3BucketOwner {
    public func validateAsS3BucketOwner() throws {
        guard let matchingRange = self.range(of: "[0-9]{12}", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw DynamoDBError.validationError(
                    reason: "The provided value to S3BucketOwner violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the S3Prefix field.
*/
extension DynamoDBModel.S3Prefix {
    public func validateAsS3Prefix() throws {

        if self.count > 1024 {
            throw DynamoDBError.validationError(reason: "The provided value to S3Prefix violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the S3SseKmsKeyId field.
*/
extension DynamoDBModel.S3SseKmsKeyId {
    public func validateAsS3SseKmsKeyId() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to S3SseKmsKeyId violated the minimum length constraint.")
        }

        if self.count > 2048 {
            throw DynamoDBError.validationError(reason: "The provided value to S3SseKmsKeyId violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ScanSegment field.
*/
extension DynamoDBModel.ScanSegment {
    public func validateAsScanSegment() throws {
        if self < 0 {
            throw DynamoDBError.validationError(reason: "The provided value to ScanSegment violated the minimum range constraint.")
        }

        if self > 999999 {
            throw DynamoDBError.validationError(reason: "The provided value to ScanSegment violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the ScanTotalSegments field.
*/
extension DynamoDBModel.ScanTotalSegments {
    public func validateAsScanTotalSegments() throws {
        if self < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to ScanTotalSegments violated the minimum range constraint.")
        }

        if self > 1000000 {
            throw DynamoDBError.validationError(reason: "The provided value to ScanTotalSegments violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the StreamArn field.
*/
extension DynamoDBModel.StreamArn {
    public func validateAsStreamArn() throws {
        if self.count < 37 {
            throw DynamoDBError.validationError(reason: "The provided value to StreamArn violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw DynamoDBError.validationError(reason: "The provided value to StreamArn violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TableId field.
*/
extension DynamoDBModel.TableId {
    public func validateAsTableId() throws {
        guard let matchingRange = self.range(of: "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw DynamoDBError.validationError(
                    reason: "The provided value to TableId violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the TableName field.
*/
extension DynamoDBModel.TableName {
    public func validateAsTableName() throws {
        if self.count < 3 {
            throw DynamoDBError.validationError(reason: "The provided value to TableName violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw DynamoDBError.validationError(reason: "The provided value to TableName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9_.-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw DynamoDBError.validationError(
                    reason: "The provided value to TableName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the TagKeyString field.
*/
extension DynamoDBModel.TagKeyString {
    public func validateAsTagKeyString() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to TagKeyString violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw DynamoDBError.validationError(reason: "The provided value to TagKeyString violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TagValueString field.
*/
extension DynamoDBModel.TagValueString {
    public func validateAsTagValueString() throws {
        if self.count < 0 {
            throw DynamoDBError.validationError(reason: "The provided value to TagValueString violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw DynamoDBError.validationError(reason: "The provided value to TagValueString violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TimeToLiveAttributeName field.
*/
extension DynamoDBModel.TimeToLiveAttributeName {
    public func validateAsTimeToLiveAttributeName() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to TimeToLiveAttributeName violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw DynamoDBError.validationError(reason: "The provided value to TimeToLiveAttributeName violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TransactGetItemList field.
*/
extension Array where Element == DynamoDBModel.TransactGetItem {
    public func validateAsTransactGetItemList() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to TransactGetItemList violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw DynamoDBError.validationError(reason: "The provided value to TransactGetItemList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TransactWriteItemList field.
*/
extension Array where Element == DynamoDBModel.TransactWriteItem {
    public func validateAsTransactWriteItemList() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to TransactWriteItemList violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw DynamoDBError.validationError(reason: "The provided value to TransactWriteItemList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the WriteRequests field.
*/
extension Array where Element == DynamoDBModel.WriteRequest {
    public func validateAsWriteRequests() throws {
        if self.count < 1 {
            throw DynamoDBError.validationError(reason: "The provided value to WriteRequests violated the minimum length constraint.")
        }

        if self.count > 25 {
            throw DynamoDBError.validationError(reason: "The provided value to WriteRequests violated the maximum length constraint.")
        }
    }
}
