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
// RDSDataModelStructures.swift
// RDSDataModel
//

import Foundation

extension Foundation.Data: @unchecked Sendable { }

public struct AccessDeniedException: Codable, Equatable, Sendable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct ArrayValue: Codable, Equatable, Sendable {
    public var arrayValues: ArrayOfArray?
    public var booleanValues: BooleanArray?
    public var doubleValues: DoubleArray?
    public var longValues: LongArray?
    public var stringValues: StringArray?

    public init(arrayValues: ArrayOfArray? = nil,
                booleanValues: BooleanArray? = nil,
                doubleValues: DoubleArray? = nil,
                longValues: LongArray? = nil,
                stringValues: StringArray? = nil) {
        self.arrayValues = arrayValues
        self.booleanValues = booleanValues
        self.doubleValues = doubleValues
        self.longValues = longValues
        self.stringValues = stringValues
    }

    enum CodingKeys: String, CodingKey {
        case arrayValues
        case booleanValues
        case doubleValues
        case longValues
        case stringValues
    }

    public func validate() throws {
    }
}

public struct BadRequestException: Codable, Equatable, Sendable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct BatchExecuteStatementRequest: Codable, Equatable, Sendable {
    public var database: DbName?
    public var parameterSets: SqlParameterSets?
    public var resourceArn: Arn
    public var schema: DbName?
    public var secretArn: Arn
    public var sql: SqlStatement
    public var transactionId: Id?

    public init(database: DbName? = nil,
                parameterSets: SqlParameterSets? = nil,
                resourceArn: Arn,
                schema: DbName? = nil,
                secretArn: Arn,
                sql: SqlStatement,
                transactionId: Id? = nil) {
        self.database = database
        self.parameterSets = parameterSets
        self.resourceArn = resourceArn
        self.schema = schema
        self.secretArn = secretArn
        self.sql = sql
        self.transactionId = transactionId
    }

    enum CodingKeys: String, CodingKey {
        case database
        case parameterSets
        case resourceArn
        case schema
        case secretArn
        case sql
        case transactionId
    }

    public func validate() throws {
        try database?.validateAsDbName()
        try resourceArn.validateAsArn()
        try schema?.validateAsDbName()
        try secretArn.validateAsArn()
        try sql.validateAsSqlStatement()
        try transactionId?.validateAsId()
    }
}

public struct BatchExecuteStatementResponse: Codable, Equatable, Sendable {
    public var updateResults: UpdateResults?

    public init(updateResults: UpdateResults? = nil) {
        self.updateResults = updateResults
    }

    enum CodingKeys: String, CodingKey {
        case updateResults
    }

    public func validate() throws {
    }
}

public struct BeginTransactionRequest: Codable, Equatable, Sendable {
    public var database: DbName?
    public var resourceArn: Arn
    public var schema: DbName?
    public var secretArn: Arn

    public init(database: DbName? = nil,
                resourceArn: Arn,
                schema: DbName? = nil,
                secretArn: Arn) {
        self.database = database
        self.resourceArn = resourceArn
        self.schema = schema
        self.secretArn = secretArn
    }

    enum CodingKeys: String, CodingKey {
        case database
        case resourceArn
        case schema
        case secretArn
    }

    public func validate() throws {
        try database?.validateAsDbName()
        try resourceArn.validateAsArn()
        try schema?.validateAsDbName()
        try secretArn.validateAsArn()
    }
}

public struct BeginTransactionResponse: Codable, Equatable, Sendable {
    public var transactionId: Id?

    public init(transactionId: Id? = nil) {
        self.transactionId = transactionId
    }

    enum CodingKeys: String, CodingKey {
        case transactionId
    }

    public func validate() throws {
        try transactionId?.validateAsId()
    }
}

public struct ColumnMetadata: Codable, Equatable, Sendable {
    public var arrayBaseColumnType: Integer?
    public var isAutoIncrement: Boolean?
    public var isCaseSensitive: Boolean?
    public var isCurrency: Boolean?
    public var isSigned: Boolean?
    public var label: String?
    public var name: String?
    public var nullable: Integer?
    public var precision: Integer?
    public var scale: Integer?
    public var schemaName: String?
    public var tableName: String?
    public var type: Integer?
    public var typeName: String?

    public init(arrayBaseColumnType: Integer? = nil,
                isAutoIncrement: Boolean? = nil,
                isCaseSensitive: Boolean? = nil,
                isCurrency: Boolean? = nil,
                isSigned: Boolean? = nil,
                label: String? = nil,
                name: String? = nil,
                nullable: Integer? = nil,
                precision: Integer? = nil,
                scale: Integer? = nil,
                schemaName: String? = nil,
                tableName: String? = nil,
                type: Integer? = nil,
                typeName: String? = nil) {
        self.arrayBaseColumnType = arrayBaseColumnType
        self.isAutoIncrement = isAutoIncrement
        self.isCaseSensitive = isCaseSensitive
        self.isCurrency = isCurrency
        self.isSigned = isSigned
        self.label = label
        self.name = name
        self.nullable = nullable
        self.precision = precision
        self.scale = scale
        self.schemaName = schemaName
        self.tableName = tableName
        self.type = type
        self.typeName = typeName
    }

    enum CodingKeys: String, CodingKey {
        case arrayBaseColumnType
        case isAutoIncrement
        case isCaseSensitive
        case isCurrency
        case isSigned
        case label
        case name
        case nullable
        case precision
        case scale
        case schemaName
        case tableName
        case type
        case typeName
    }

    public func validate() throws {
    }
}

public struct CommitTransactionRequest: Codable, Equatable, Sendable {
    public var resourceArn: Arn
    public var secretArn: Arn
    public var transactionId: Id

    public init(resourceArn: Arn,
                secretArn: Arn,
                transactionId: Id) {
        self.resourceArn = resourceArn
        self.secretArn = secretArn
        self.transactionId = transactionId
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn
        case secretArn
        case transactionId
    }

    public func validate() throws {
        try resourceArn.validateAsArn()
        try secretArn.validateAsArn()
        try transactionId.validateAsId()
    }
}

public struct CommitTransactionResponse: Codable, Equatable, Sendable {
    public var transactionStatus: TransactionStatus?

    public init(transactionStatus: TransactionStatus? = nil) {
        self.transactionStatus = transactionStatus
    }

    enum CodingKeys: String, CodingKey {
        case transactionStatus
    }

    public func validate() throws {
        try transactionStatus?.validateAsTransactionStatus()
    }
}

public struct ExecuteSqlRequest: Codable, Equatable, Sendable {
    public var awsSecretStoreArn: Arn
    public var database: DbName?
    public var dbClusterOrInstanceArn: Arn
    public var schema: DbName?
    public var sqlStatements: SqlStatement

    public init(awsSecretStoreArn: Arn,
                database: DbName? = nil,
                dbClusterOrInstanceArn: Arn,
                schema: DbName? = nil,
                sqlStatements: SqlStatement) {
        self.awsSecretStoreArn = awsSecretStoreArn
        self.database = database
        self.dbClusterOrInstanceArn = dbClusterOrInstanceArn
        self.schema = schema
        self.sqlStatements = sqlStatements
    }

    enum CodingKeys: String, CodingKey {
        case awsSecretStoreArn
        case database
        case dbClusterOrInstanceArn
        case schema
        case sqlStatements
    }

    public func validate() throws {
        try awsSecretStoreArn.validateAsArn()
        try database?.validateAsDbName()
        try dbClusterOrInstanceArn.validateAsArn()
        try schema?.validateAsDbName()
        try sqlStatements.validateAsSqlStatement()
    }
}

public struct ExecuteSqlResponse: Codable, Equatable, Sendable {
    public var sqlStatementResults: SqlStatementResults?

    public init(sqlStatementResults: SqlStatementResults? = nil) {
        self.sqlStatementResults = sqlStatementResults
    }

    enum CodingKeys: String, CodingKey {
        case sqlStatementResults
    }

    public func validate() throws {
    }
}

public struct ExecuteStatementRequest: Codable, Equatable, Sendable {
    public var continueAfterTimeout: Boolean?
    public var database: DbName?
    public var formatRecordsAs: RecordsFormatType?
    public var includeResultMetadata: Boolean?
    public var parameters: SqlParametersList?
    public var resourceArn: Arn
    public var resultSetOptions: ResultSetOptions?
    public var schema: DbName?
    public var secretArn: Arn
    public var sql: SqlStatement
    public var transactionId: Id?

    public init(continueAfterTimeout: Boolean? = nil,
                database: DbName? = nil,
                formatRecordsAs: RecordsFormatType? = nil,
                includeResultMetadata: Boolean? = nil,
                parameters: SqlParametersList? = nil,
                resourceArn: Arn,
                resultSetOptions: ResultSetOptions? = nil,
                schema: DbName? = nil,
                secretArn: Arn,
                sql: SqlStatement,
                transactionId: Id? = nil) {
        self.continueAfterTimeout = continueAfterTimeout
        self.database = database
        self.formatRecordsAs = formatRecordsAs
        self.includeResultMetadata = includeResultMetadata
        self.parameters = parameters
        self.resourceArn = resourceArn
        self.resultSetOptions = resultSetOptions
        self.schema = schema
        self.secretArn = secretArn
        self.sql = sql
        self.transactionId = transactionId
    }

    enum CodingKeys: String, CodingKey {
        case continueAfterTimeout
        case database
        case formatRecordsAs
        case includeResultMetadata
        case parameters
        case resourceArn
        case resultSetOptions
        case schema
        case secretArn
        case sql
        case transactionId
    }

    public func validate() throws {
        try database?.validateAsDbName()
        try resourceArn.validateAsArn()
        try resultSetOptions?.validate()
        try schema?.validateAsDbName()
        try secretArn.validateAsArn()
        try sql.validateAsSqlStatement()
        try transactionId?.validateAsId()
    }
}

public struct ExecuteStatementResponse: Codable, Equatable, Sendable {
    public var columnMetadata: Metadata?
    public var formattedRecords: FormattedSqlRecords?
    public var generatedFields: FieldList?
    public var numberOfRecordsUpdated: RecordsUpdated?
    public var records: SqlRecords?

    public init(columnMetadata: Metadata? = nil,
                formattedRecords: FormattedSqlRecords? = nil,
                generatedFields: FieldList? = nil,
                numberOfRecordsUpdated: RecordsUpdated? = nil,
                records: SqlRecords? = nil) {
        self.columnMetadata = columnMetadata
        self.formattedRecords = formattedRecords
        self.generatedFields = generatedFields
        self.numberOfRecordsUpdated = numberOfRecordsUpdated
        self.records = records
    }

    enum CodingKeys: String, CodingKey {
        case columnMetadata
        case formattedRecords
        case generatedFields
        case numberOfRecordsUpdated
        case records
    }

    public func validate() throws {
    }
}

public struct Field: Codable, Equatable, Sendable {
    public var arrayValue: ArrayValue?
    public var blobValue: Blob?
    public var booleanValue: BoxedBoolean?
    public var doubleValue: BoxedDouble?
    public var isNull: BoxedBoolean?
    public var longValue: BoxedLong?
    public var stringValue: String?

    public init(arrayValue: ArrayValue? = nil,
                blobValue: Blob? = nil,
                booleanValue: BoxedBoolean? = nil,
                doubleValue: BoxedDouble? = nil,
                isNull: BoxedBoolean? = nil,
                longValue: BoxedLong? = nil,
                stringValue: String? = nil) {
        self.arrayValue = arrayValue
        self.blobValue = blobValue
        self.booleanValue = booleanValue
        self.doubleValue = doubleValue
        self.isNull = isNull
        self.longValue = longValue
        self.stringValue = stringValue
    }

    enum CodingKeys: String, CodingKey {
        case arrayValue
        case blobValue
        case booleanValue
        case doubleValue
        case isNull
        case longValue
        case stringValue
    }

    public func validate() throws {
        try arrayValue?.validate()
    }
}

public struct ForbiddenException: Codable, Equatable, Sendable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct InternalServerErrorException: Codable, Equatable, Sendable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct NotFoundException: Codable, Equatable, Sendable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct Record: Codable, Equatable, Sendable {
    public var values: Row?

    public init(values: Row? = nil) {
        self.values = values
    }

    enum CodingKeys: String, CodingKey {
        case values
    }

    public func validate() throws {
    }
}

public struct ResultFrame: Codable, Equatable, Sendable {
    public var records: Records?
    public var resultSetMetadata: ResultSetMetadata?

    public init(records: Records? = nil,
                resultSetMetadata: ResultSetMetadata? = nil) {
        self.records = records
        self.resultSetMetadata = resultSetMetadata
    }

    enum CodingKeys: String, CodingKey {
        case records
        case resultSetMetadata
    }

    public func validate() throws {
        try resultSetMetadata?.validate()
    }
}

public struct ResultSetMetadata: Codable, Equatable, Sendable {
    public var columnCount: Long?
    public var columnMetadata: Metadata?

    public init(columnCount: Long? = nil,
                columnMetadata: Metadata? = nil) {
        self.columnCount = columnCount
        self.columnMetadata = columnMetadata
    }

    enum CodingKeys: String, CodingKey {
        case columnCount
        case columnMetadata
    }

    public func validate() throws {
    }
}

public struct ResultSetOptions: Codable, Equatable, Sendable {
    public var decimalReturnType: DecimalReturnType?
    public var longReturnType: LongReturnType?

    public init(decimalReturnType: DecimalReturnType? = nil,
                longReturnType: LongReturnType? = nil) {
        self.decimalReturnType = decimalReturnType
        self.longReturnType = longReturnType
    }

    enum CodingKeys: String, CodingKey {
        case decimalReturnType
        case longReturnType
    }

    public func validate() throws {
    }
}

public struct RollbackTransactionRequest: Codable, Equatable, Sendable {
    public var resourceArn: Arn
    public var secretArn: Arn
    public var transactionId: Id

    public init(resourceArn: Arn,
                secretArn: Arn,
                transactionId: Id) {
        self.resourceArn = resourceArn
        self.secretArn = secretArn
        self.transactionId = transactionId
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn
        case secretArn
        case transactionId
    }

    public func validate() throws {
        try resourceArn.validateAsArn()
        try secretArn.validateAsArn()
        try transactionId.validateAsId()
    }
}

public struct RollbackTransactionResponse: Codable, Equatable, Sendable {
    public var transactionStatus: TransactionStatus?

    public init(transactionStatus: TransactionStatus? = nil) {
        self.transactionStatus = transactionStatus
    }

    enum CodingKeys: String, CodingKey {
        case transactionStatus
    }

    public func validate() throws {
        try transactionStatus?.validateAsTransactionStatus()
    }
}

public struct ServiceUnavailableError: Codable, Equatable, Sendable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct SqlParameter: Codable, Equatable, Sendable {
    public var name: ParameterName?
    public var typeHint: TypeHint?
    public var value: Field?

    public init(name: ParameterName? = nil,
                typeHint: TypeHint? = nil,
                value: Field? = nil) {
        self.name = name
        self.typeHint = typeHint
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case name
        case typeHint
        case value
    }

    public func validate() throws {
        try value?.validate()
    }
}

public struct SqlStatementResult: Codable, Equatable, Sendable {
    public var numberOfRecordsUpdated: RecordsUpdated?
    public var resultFrame: ResultFrame?

    public init(numberOfRecordsUpdated: RecordsUpdated? = nil,
                resultFrame: ResultFrame? = nil) {
        self.numberOfRecordsUpdated = numberOfRecordsUpdated
        self.resultFrame = resultFrame
    }

    enum CodingKeys: String, CodingKey {
        case numberOfRecordsUpdated
        case resultFrame
    }

    public func validate() throws {
        try resultFrame?.validate()
    }
}

public struct StatementTimeoutException: Codable, Equatable, Sendable {
    public var dbConnectionId: Long?
    public var message: ErrorMessage?

    public init(dbConnectionId: Long? = nil,
                message: ErrorMessage? = nil) {
        self.dbConnectionId = dbConnectionId
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case dbConnectionId
        case message
    }

    public func validate() throws {
    }
}

public struct StructValue: Codable, Equatable, Sendable {
    public var attributes: ArrayValueList?

    public init(attributes: ArrayValueList? = nil) {
        self.attributes = attributes
    }

    enum CodingKeys: String, CodingKey {
        case attributes
    }

    public func validate() throws {
    }
}

public struct UpdateResult: Codable, Equatable, Sendable {
    public var generatedFields: FieldList?

    public init(generatedFields: FieldList? = nil) {
        self.generatedFields = generatedFields
    }

    enum CodingKeys: String, CodingKey {
        case generatedFields
    }

    public func validate() throws {
    }
}

public struct Value: Codable, Equatable, Sendable {
    public var arrayValues: ArrayValueList?
    public var bigIntValue: BoxedLong?
    public var bitValue: BoxedBoolean?
    public var blobValue: Blob?
    public var doubleValue: BoxedDouble?
    public var intValue: BoxedInteger?
    public var isNull: BoxedBoolean?
    public var realValue: BoxedFloat?
    public var stringValue: String?
    public var structValue: StructValue?

    public init(arrayValues: ArrayValueList? = nil,
                bigIntValue: BoxedLong? = nil,
                bitValue: BoxedBoolean? = nil,
                blobValue: Blob? = nil,
                doubleValue: BoxedDouble? = nil,
                intValue: BoxedInteger? = nil,
                isNull: BoxedBoolean? = nil,
                realValue: BoxedFloat? = nil,
                stringValue: String? = nil,
                structValue: StructValue? = nil) {
        self.arrayValues = arrayValues
        self.bigIntValue = bigIntValue
        self.bitValue = bitValue
        self.blobValue = blobValue
        self.doubleValue = doubleValue
        self.intValue = intValue
        self.isNull = isNull
        self.realValue = realValue
        self.stringValue = stringValue
        self.structValue = structValue
    }

    enum CodingKeys: String, CodingKey {
        case arrayValues
        case bigIntValue
        case bitValue
        case blobValue
        case doubleValue
        case intValue
        case isNull
        case realValue
        case stringValue
        case structValue
    }

    public func validate() throws {
        try structValue?.validate()
    }
}
