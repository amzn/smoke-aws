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
// RDSDataModelTypes.swift
// RDSDataModel
//

import Foundation

/**
 Type definition for the Arn field.
 */
public typealias Arn = String

/**
 Type definition for the ArrayOfArray field.
 */
public typealias ArrayOfArray = [ArrayValue]

/**
 Type definition for the ArrayValueList field.
 */
public typealias ArrayValueList = [Value]

/**
 Type definition for the Blob field.
 */
public typealias Blob = Data

/**
 Type definition for the Boolean field.
 */
public typealias Boolean = Bool

/**
 Type definition for the BooleanArray field.
 */
public typealias BooleanArray = [BoxedBoolean]

/**
 Type definition for the BoxedBoolean field.
 */
public typealias BoxedBoolean = Bool

/**
 Type definition for the BoxedDouble field.
 */
public typealias BoxedDouble = Double

/**
 Type definition for the BoxedFloat field.
 */
public typealias BoxedFloat = Double

/**
 Type definition for the BoxedInteger field.
 */
public typealias BoxedInteger = Int

/**
 Type definition for the BoxedLong field.
 */
public typealias BoxedLong = Int

/**
 Type definition for the DbName field.
 */
public typealias DbName = String

/**
 Enumeration restricting the values of the DecimalReturnType field.
 */
public enum DecimalReturnType: String, Codable, CustomStringConvertible {
    case doubleOrLong = "DOUBLE_OR_LONG"
    case string = "STRING"

    public var description: String {
        return rawValue
    }
    
    public static let __default: DecimalReturnType = .doubleOrLong
}

/**
 Type definition for the DoubleArray field.
 */
public typealias DoubleArray = [BoxedDouble]

/**
 Type definition for the ErrorMessage field.
 */
public typealias ErrorMessage = String

/**
 Type definition for the FieldList field.
 */
public typealias FieldList = [Field]

/**
 Type definition for the Id field.
 */
public typealias Id = String

/**
 Type definition for the Integer field.
 */
public typealias Integer = Int

/**
 Type definition for the Long field.
 */
public typealias Long = Int

/**
 Type definition for the LongArray field.
 */
public typealias LongArray = [BoxedLong]

/**
 Type definition for the Metadata field.
 */
public typealias Metadata = [ColumnMetadata]

/**
 Type definition for the ParameterName field.
 */
public typealias ParameterName = String

/**
 Type definition for the Records field.
 */
public typealias Records = [Record]

/**
 Type definition for the RecordsUpdated field.
 */
public typealias RecordsUpdated = Int

/**
 Type definition for the Row field.
 */
public typealias Row = [Value]

/**
 Type definition for the SqlParameterSets field.
 */
public typealias SqlParameterSets = [SqlParametersList]

/**
 Type definition for the SqlParametersList field.
 */
public typealias SqlParametersList = [SqlParameter]

/**
 Type definition for the SqlRecords field.
 */
public typealias SqlRecords = [FieldList]

/**
 Type definition for the SqlStatement field.
 */
public typealias SqlStatement = String

/**
 Type definition for the SqlStatementResults field.
 */
public typealias SqlStatementResults = [SqlStatementResult]

/**
 Type definition for the StringArray field.
 */
public typealias StringArray = [String]

/**
 Type definition for the TransactionStatus field.
 */
public typealias TransactionStatus = String

/**
 Enumeration restricting the values of the TypeHint field.
 */
public enum TypeHint: String, Codable, CustomStringConvertible {
    case date = "DATE"
    case decimal = "DECIMAL"
    case time = "TIME"
    case timestamp = "TIMESTAMP"

    public var description: String {
        return rawValue
    }
    
    public static let __default: TypeHint = .date
}

/**
 Type definition for the UpdateResults field.
 */
public typealias UpdateResults = [UpdateResult]

/**
 Validation for the Arn field.
*/
extension RDSDataModel.Arn {
    public func validateAsArn() throws {
        if self.count < 11 {
            throw RDSDataError.validationError(reason: "The provided value to Arn violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw RDSDataError.validationError(reason: "The provided value to Arn violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the DbName field.
*/
extension RDSDataModel.DbName {
    public func validateAsDbName() throws {
        if self.count < 0 {
            throw RDSDataError.validationError(reason: "The provided value to DbName violated the minimum length constraint.")
        }

        if self.count > 64 {
            throw RDSDataError.validationError(reason: "The provided value to DbName violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Id field.
*/
extension RDSDataModel.Id {
    public func validateAsId() throws {
        if self.count < 0 {
            throw RDSDataError.validationError(reason: "The provided value to Id violated the minimum length constraint.")
        }

        if self.count > 192 {
            throw RDSDataError.validationError(reason: "The provided value to Id violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the SqlStatement field.
*/
extension RDSDataModel.SqlStatement {
    public func validateAsSqlStatement() throws {
        if self.count < 0 {
            throw RDSDataError.validationError(reason: "The provided value to SqlStatement violated the minimum length constraint.")
        }

        if self.count > 65536 {
            throw RDSDataError.validationError(reason: "The provided value to SqlStatement violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TransactionStatus field.
*/
extension RDSDataModel.TransactionStatus {
    public func validateAsTransactionStatus() throws {
        if self.count < 0 {
            throw RDSDataError.validationError(reason: "The provided value to TransactionStatus violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw RDSDataError.validationError(reason: "The provided value to TransactionStatus violated the maximum length constraint.")
        }
    }
}
