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
// DynamoDBModelTypes.swift
// DynamoDBModel
//

import Foundation

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
 Type definition for the BatchWriteItemRequestMap field.
 */
public typealias BatchWriteItemRequestMap = [TableName: WriteRequests]

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
 Type definition for the Date field.
 */
public typealias Date = String

/**
 Type definition for the Endpoints field.
 */
public typealias Endpoints = [Endpoint]

/**
 Type definition for the ErrorMessage field.
 */
public typealias ErrorMessage = String

/**
 Type definition for the ExpectedAttributeMap field.
 */
public typealias ExpectedAttributeMap = [AttributeName: ExpectedAttributeValue]

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
 Type definition for the FilterConditionMap field.
 */
public typealias FilterConditionMap = [AttributeName: Condition]

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
 Type definition for the ListAttributeValue field.
 */
public typealias ListAttributeValue = [AttributeValue]

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
 Type definition for the ReplicaDescriptionList field.
 */
public typealias ReplicaDescriptionList = [ReplicaDescription]

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
    case deleting = "DELETING"
    case updating = "UPDATING"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ReplicaStatus = .active
}

/**
 Type definition for the ReplicaUpdateList field.
 */
public typealias ReplicaUpdateList = [ReplicaUpdate]

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
    case creating = "CREATING"
    case deleting = "DELETING"
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
            throw DynamoDBCodingError.validationError(reason: "The provided value to AttributeName violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the AttributeNameList field.
*/
extension Array where Element == DynamoDBModel.AttributeName {
    public func validateAsAttributeNameList() throws {
        if self.count < 1 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to AttributeNameList violated the minimum length constraint.")
        }

    }
}

/**
 Validation for the AutoScalingPolicyName field.
*/
extension DynamoDBModel.AutoScalingPolicyName {
    public func validateAsAutoScalingPolicyName() throws {
        if self.count < 1 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to AutoScalingPolicyName violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to AutoScalingPolicyName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "\\p{Print}+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw DynamoDBCodingError.validationError(
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
            throw DynamoDBCodingError.validationError(reason: "The provided value to AutoScalingRoleArn violated the minimum length constraint.")
        }

        if self.count > 1600 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to AutoScalingRoleArn violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw DynamoDBCodingError.validationError(
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
            throw DynamoDBCodingError.validationError(reason: "The provided value to BackupArn violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to BackupArn violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the BackupName field.
*/
extension DynamoDBModel.BackupName {
    public func validateAsBackupName() throws {
        if self.count < 3 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to BackupName violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to BackupName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9_.-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw DynamoDBCodingError.validationError(
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
            throw DynamoDBCodingError.validationError(reason: "The provided value to BackupSizeBytes violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the BackupsInputLimit field.
*/
extension DynamoDBModel.BackupsInputLimit {
    public func validateAsBackupsInputLimit() throws {
        if self < 1 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to BackupsInputLimit violated the minimum range constraint.")
        }

        if self > 100 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to BackupsInputLimit violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the CancellationReasonList field.
*/
extension Array where Element == DynamoDBModel.CancellationReason {
    public func validateAsCancellationReasonList() throws {
        if self.count < 1 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to CancellationReasonList violated the minimum length constraint.")
        }

        if self.count > 10 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to CancellationReasonList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ClientRequestToken field.
*/
extension DynamoDBModel.ClientRequestToken {
    public func validateAsClientRequestToken() throws {
        if self.count < 1 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to ClientRequestToken violated the minimum length constraint.")
        }

        if self.count > 36 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to ClientRequestToken violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the GlobalTableGlobalSecondaryIndexSettingsUpdateList field.
*/
extension Array where Element == DynamoDBModel.GlobalTableGlobalSecondaryIndexSettingsUpdate {
    public func validateAsGlobalTableGlobalSecondaryIndexSettingsUpdateList() throws {
        if self.count < 1 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to GlobalTableGlobalSecondaryIndexSettingsUpdateList violated the minimum length constraint.")
        }

        if self.count > 20 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to GlobalTableGlobalSecondaryIndexSettingsUpdateList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the IndexName field.
*/
extension DynamoDBModel.IndexName {
    public func validateAsIndexName() throws {
        if self.count < 3 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to IndexName violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to IndexName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9_.-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw DynamoDBCodingError.validationError(
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
            throw DynamoDBCodingError.validationError(reason: "The provided value to ItemCount violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the ItemResponseList field.
*/
extension Array where Element == DynamoDBModel.ItemResponse {
    public func validateAsItemResponseList() throws {
        if self.count < 1 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to ItemResponseList violated the minimum length constraint.")
        }

        if self.count > 10 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to ItemResponseList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the KeyList field.
*/
extension Array where Element == DynamoDBModel.Key {
    public func validateAsKeyList() throws {
        if self.count < 1 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to KeyList violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to KeyList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the KeySchema field.
*/
extension Array where Element == DynamoDBModel.KeySchemaElement {
    public func validateAsKeySchema() throws {
        if self.count < 1 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to KeySchema violated the minimum length constraint.")
        }

        if self.count > 2 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to KeySchema violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the KeySchemaAttributeName field.
*/
extension DynamoDBModel.KeySchemaAttributeName {
    public func validateAsKeySchemaAttributeName() throws {
        if self.count < 1 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to KeySchemaAttributeName violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to KeySchemaAttributeName violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ListTablesInputLimit field.
*/
extension DynamoDBModel.ListTablesInputLimit {
    public func validateAsListTablesInputLimit() throws {
        if self < 1 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to ListTablesInputLimit violated the minimum range constraint.")
        }

        if self > 100 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to ListTablesInputLimit violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the NonKeyAttributeName field.
*/
extension DynamoDBModel.NonKeyAttributeName {
    public func validateAsNonKeyAttributeName() throws {
        if self.count < 1 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to NonKeyAttributeName violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to NonKeyAttributeName violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the NonKeyAttributeNameList field.
*/
extension Array where Element == DynamoDBModel.NonKeyAttributeName {
    public func validateAsNonKeyAttributeNameList() throws {
        if self.count < 1 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to NonKeyAttributeNameList violated the minimum length constraint.")
        }

        if self.count > 20 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to NonKeyAttributeNameList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the NonNegativeLongObject field.
*/
extension DynamoDBModel.NonNegativeLongObject {
    public func validateAsNonNegativeLongObject() throws {
        if self < 0 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to NonNegativeLongObject violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the PositiveIntegerObject field.
*/
extension DynamoDBModel.PositiveIntegerObject {
    public func validateAsPositiveIntegerObject() throws {
        if self < 1 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to PositiveIntegerObject violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the PositiveLongObject field.
*/
extension DynamoDBModel.PositiveLongObject {
    public func validateAsPositiveLongObject() throws {
        if self < 1 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to PositiveLongObject violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the ReplicaGlobalSecondaryIndexSettingsUpdateList field.
*/
extension Array where Element == DynamoDBModel.ReplicaGlobalSecondaryIndexSettingsUpdate {
    public func validateAsReplicaGlobalSecondaryIndexSettingsUpdateList() throws {
        if self.count < 1 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to ReplicaGlobalSecondaryIndexSettingsUpdateList violated the minimum length constraint.")
        }

        if self.count > 20 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to ReplicaGlobalSecondaryIndexSettingsUpdateList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ReplicaSettingsUpdateList field.
*/
extension Array where Element == DynamoDBModel.ReplicaSettingsUpdate {
    public func validateAsReplicaSettingsUpdateList() throws {
        if self.count < 1 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to ReplicaSettingsUpdateList violated the minimum length constraint.")
        }

        if self.count > 50 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to ReplicaSettingsUpdateList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ResourceArnString field.
*/
extension DynamoDBModel.ResourceArnString {
    public func validateAsResourceArnString() throws {
        if self.count < 1 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to ResourceArnString violated the minimum length constraint.")
        }

        if self.count > 1283 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to ResourceArnString violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ScanSegment field.
*/
extension DynamoDBModel.ScanSegment {
    public func validateAsScanSegment() throws {
        if self < 0 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to ScanSegment violated the minimum range constraint.")
        }

        if self > 999999 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to ScanSegment violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the ScanTotalSegments field.
*/
extension DynamoDBModel.ScanTotalSegments {
    public func validateAsScanTotalSegments() throws {
        if self < 1 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to ScanTotalSegments violated the minimum range constraint.")
        }

        if self > 1000000 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to ScanTotalSegments violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the StreamArn field.
*/
extension DynamoDBModel.StreamArn {
    public func validateAsStreamArn() throws {
        if self.count < 37 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to StreamArn violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to StreamArn violated the maximum length constraint.")
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
                throw DynamoDBCodingError.validationError(
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
            throw DynamoDBCodingError.validationError(reason: "The provided value to TableName violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to TableName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9_.-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw DynamoDBCodingError.validationError(
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
            throw DynamoDBCodingError.validationError(reason: "The provided value to TagKeyString violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to TagKeyString violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TagValueString field.
*/
extension DynamoDBModel.TagValueString {
    public func validateAsTagValueString() throws {
        if self.count < 0 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to TagValueString violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to TagValueString violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TimeToLiveAttributeName field.
*/
extension DynamoDBModel.TimeToLiveAttributeName {
    public func validateAsTimeToLiveAttributeName() throws {
        if self.count < 1 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to TimeToLiveAttributeName violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to TimeToLiveAttributeName violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TransactGetItemList field.
*/
extension Array where Element == DynamoDBModel.TransactGetItem {
    public func validateAsTransactGetItemList() throws {
        if self.count < 1 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to TransactGetItemList violated the minimum length constraint.")
        }

        if self.count > 10 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to TransactGetItemList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TransactWriteItemList field.
*/
extension Array where Element == DynamoDBModel.TransactWriteItem {
    public func validateAsTransactWriteItemList() throws {
        if self.count < 1 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to TransactWriteItemList violated the minimum length constraint.")
        }

        if self.count > 10 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to TransactWriteItemList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the WriteRequests field.
*/
extension Array where Element == DynamoDBModel.WriteRequest {
    public func validateAsWriteRequests() throws {
        if self.count < 1 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to WriteRequests violated the minimum length constraint.")
        }

        if self.count > 25 {
            throw DynamoDBCodingError.validationError(reason: "The provided value to WriteRequests violated the maximum length constraint.")
        }
    }
}
