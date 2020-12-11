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
// -- Generated Code; do not edit --
//
// RDSDataModelOperations.swift
// RDSDataModel
//

import Foundation

/**
 Operation enumeration for the RDSDataModel.
 */
public enum RDSDataModelOperations: String, Hashable, CustomStringConvertible {
    case batchExecuteStatement = "BatchExecuteStatement"
    case beginTransaction = "BeginTransaction"
    case commitTransaction = "CommitTransaction"
    case executeSql = "ExecuteSql"
    case executeStatement = "ExecuteStatement"
    case rollbackTransaction = "RollbackTransaction"

    public var description: String {
        return rawValue
    }

    public var operationPath: String {
        switch self {
        case .batchExecuteStatement:
            return "/BatchExecute"
        case .beginTransaction:
            return "/BeginTransaction"
        case .commitTransaction:
            return "/CommitTransaction"
        case .executeSql:
            return "/ExecuteSql"
        case .executeStatement:
            return "/Execute"
        case .rollbackTransaction:
            return "/RollbackTransaction"
        }
    }
}
