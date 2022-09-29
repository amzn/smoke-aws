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
// DynamoDBOperationsClientInput.swift
// DynamoDBClient
//

import Foundation
import SmokeHTTPClient
import DynamoDBModel

/**
 Type to handle the input to the BatchExecuteStatement operation in a HTTP client.
 */
public typealias BatchExecuteStatementOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the BatchGetItem operation in a HTTP client.
 */
public typealias BatchGetItemOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the BatchWriteItem operation in a HTTP client.
 */
public typealias BatchWriteItemOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the CreateBackup operation in a HTTP client.
 */
public typealias CreateBackupOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the CreateGlobalTable operation in a HTTP client.
 */
public typealias CreateGlobalTableOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the CreateTable operation in a HTTP client.
 */
public typealias CreateTableOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DeleteBackup operation in a HTTP client.
 */
public typealias DeleteBackupOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DeleteItem operation in a HTTP client.
 */
public typealias DeleteItemOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DeleteTable operation in a HTTP client.
 */
public typealias DeleteTableOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeBackup operation in a HTTP client.
 */
public typealias DescribeBackupOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeContinuousBackups operation in a HTTP client.
 */
public typealias DescribeContinuousBackupsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeContributorInsights operation in a HTTP client.
 */
public typealias DescribeContributorInsightsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeEndpoints operation in a HTTP client.
 */
public typealias DescribeEndpointsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeExport operation in a HTTP client.
 */
public typealias DescribeExportOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeGlobalTable operation in a HTTP client.
 */
public typealias DescribeGlobalTableOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeGlobalTableSettings operation in a HTTP client.
 */
public typealias DescribeGlobalTableSettingsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeImport operation in a HTTP client.
 */
public typealias DescribeImportOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeKinesisStreamingDestination operation in a HTTP client.
 */
public typealias DescribeKinesisStreamingDestinationOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeLimits operation in a HTTP client.
 */
public typealias DescribeLimitsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeTable operation in a HTTP client.
 */
public typealias DescribeTableOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeTableReplicaAutoScaling operation in a HTTP client.
 */
public typealias DescribeTableReplicaAutoScalingOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeTimeToLive operation in a HTTP client.
 */
public typealias DescribeTimeToLiveOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DisableKinesisStreamingDestination operation in a HTTP client.
 */
public typealias DisableKinesisStreamingDestinationOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the EnableKinesisStreamingDestination operation in a HTTP client.
 */
public typealias EnableKinesisStreamingDestinationOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ExecuteStatement operation in a HTTP client.
 */
public typealias ExecuteStatementOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ExecuteTransaction operation in a HTTP client.
 */
public typealias ExecuteTransactionOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ExportTableToPointInTime operation in a HTTP client.
 */
public typealias ExportTableToPointInTimeOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the GetItem operation in a HTTP client.
 */
public typealias GetItemOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ImportTable operation in a HTTP client.
 */
public typealias ImportTableOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListBackups operation in a HTTP client.
 */
public typealias ListBackupsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListContributorInsights operation in a HTTP client.
 */
public typealias ListContributorInsightsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListExports operation in a HTTP client.
 */
public typealias ListExportsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListGlobalTables operation in a HTTP client.
 */
public typealias ListGlobalTablesOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListImports operation in a HTTP client.
 */
public typealias ListImportsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListTables operation in a HTTP client.
 */
public typealias ListTablesOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListTagsOfResource operation in a HTTP client.
 */
public typealias ListTagsOfResourceOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the PutItem operation in a HTTP client.
 */
public typealias PutItemOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the Query operation in a HTTP client.
 */
public typealias QueryOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the RestoreTableFromBackup operation in a HTTP client.
 */
public typealias RestoreTableFromBackupOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the RestoreTableToPointInTime operation in a HTTP client.
 */
public typealias RestoreTableToPointInTimeOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the Scan operation in a HTTP client.
 */
public typealias ScanOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the TagResource operation in a HTTP client.
 */
public typealias TagResourceOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the TransactGetItems operation in a HTTP client.
 */
public typealias TransactGetItemsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the TransactWriteItems operation in a HTTP client.
 */
public typealias TransactWriteItemsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the UntagResource operation in a HTTP client.
 */
public typealias UntagResourceOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the UpdateContinuousBackups operation in a HTTP client.
 */
public typealias UpdateContinuousBackupsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the UpdateContributorInsights operation in a HTTP client.
 */
public typealias UpdateContributorInsightsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the UpdateGlobalTable operation in a HTTP client.
 */
public typealias UpdateGlobalTableOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the UpdateGlobalTableSettings operation in a HTTP client.
 */
public typealias UpdateGlobalTableSettingsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the UpdateItem operation in a HTTP client.
 */
public typealias UpdateItemOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the UpdateTable operation in a HTTP client.
 */
public typealias UpdateTableOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the UpdateTableReplicaAutoScaling operation in a HTTP client.
 */
public typealias UpdateTableReplicaAutoScalingOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the UpdateTimeToLive operation in a HTTP client.
 */
public typealias UpdateTimeToLiveOperationHTTPRequestInput = BodyHTTPRequestInput
