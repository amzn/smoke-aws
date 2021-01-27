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
// DynamoDBOperationsClientOutput.swift
// DynamoDBClient
//

import Foundation
import SmokeHTTPClient
import DynamoDBModel

/**
 Type to handle the output from the BatchExecuteStatement operation in a HTTP client.
 */
extension BatchExecuteStatementOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = BatchExecuteStatementOutput
    public typealias HeadersType = BatchExecuteStatementOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> BatchExecuteStatementOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the BatchGetItem operation in a HTTP client.
 */
extension BatchGetItemOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = BatchGetItemOutput
    public typealias HeadersType = BatchGetItemOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> BatchGetItemOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the BatchWriteItem operation in a HTTP client.
 */
extension BatchWriteItemOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = BatchWriteItemOutput
    public typealias HeadersType = BatchWriteItemOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> BatchWriteItemOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateBackup operation in a HTTP client.
 */
extension CreateBackupOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateBackupOutput
    public typealias HeadersType = CreateBackupOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateBackupOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateGlobalTable operation in a HTTP client.
 */
extension CreateGlobalTableOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateGlobalTableOutput
    public typealias HeadersType = CreateGlobalTableOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateGlobalTableOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateTable operation in a HTTP client.
 */
extension CreateTableOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateTableOutput
    public typealias HeadersType = CreateTableOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateTableOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteBackup operation in a HTTP client.
 */
extension DeleteBackupOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteBackupOutput
    public typealias HeadersType = DeleteBackupOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteBackupOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteItem operation in a HTTP client.
 */
extension DeleteItemOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteItemOutput
    public typealias HeadersType = DeleteItemOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteItemOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteTable operation in a HTTP client.
 */
extension DeleteTableOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteTableOutput
    public typealias HeadersType = DeleteTableOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteTableOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeBackup operation in a HTTP client.
 */
extension DescribeBackupOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeBackupOutput
    public typealias HeadersType = DescribeBackupOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeBackupOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeContinuousBackups operation in a HTTP client.
 */
extension DescribeContinuousBackupsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeContinuousBackupsOutput
    public typealias HeadersType = DescribeContinuousBackupsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeContinuousBackupsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeContributorInsights operation in a HTTP client.
 */
extension DescribeContributorInsightsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeContributorInsightsOutput
    public typealias HeadersType = DescribeContributorInsightsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeContributorInsightsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeEndpoints operation in a HTTP client.
 */
extension DescribeEndpointsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeEndpointsResponse
    public typealias HeadersType = DescribeEndpointsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeEndpointsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeExport operation in a HTTP client.
 */
extension DescribeExportOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeExportOutput
    public typealias HeadersType = DescribeExportOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeExportOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeGlobalTable operation in a HTTP client.
 */
extension DescribeGlobalTableOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeGlobalTableOutput
    public typealias HeadersType = DescribeGlobalTableOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeGlobalTableOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeGlobalTableSettings operation in a HTTP client.
 */
extension DescribeGlobalTableSettingsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeGlobalTableSettingsOutput
    public typealias HeadersType = DescribeGlobalTableSettingsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeGlobalTableSettingsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeKinesisStreamingDestination operation in a HTTP client.
 */
extension DescribeKinesisStreamingDestinationOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeKinesisStreamingDestinationOutput
    public typealias HeadersType = DescribeKinesisStreamingDestinationOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeKinesisStreamingDestinationOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeLimits operation in a HTTP client.
 */
extension DescribeLimitsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeLimitsOutput
    public typealias HeadersType = DescribeLimitsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeLimitsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeTable operation in a HTTP client.
 */
extension DescribeTableOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeTableOutput
    public typealias HeadersType = DescribeTableOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeTableOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeTableReplicaAutoScaling operation in a HTTP client.
 */
extension DescribeTableReplicaAutoScalingOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeTableReplicaAutoScalingOutput
    public typealias HeadersType = DescribeTableReplicaAutoScalingOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeTableReplicaAutoScalingOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeTimeToLive operation in a HTTP client.
 */
extension DescribeTimeToLiveOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeTimeToLiveOutput
    public typealias HeadersType = DescribeTimeToLiveOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeTimeToLiveOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DisableKinesisStreamingDestination operation in a HTTP client.
 */
extension KinesisStreamingDestinationOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = KinesisStreamingDestinationOutput
    public typealias HeadersType = KinesisStreamingDestinationOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> KinesisStreamingDestinationOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ExecuteStatement operation in a HTTP client.
 */
extension ExecuteStatementOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ExecuteStatementOutput
    public typealias HeadersType = ExecuteStatementOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ExecuteStatementOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ExecuteTransaction operation in a HTTP client.
 */
extension ExecuteTransactionOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ExecuteTransactionOutput
    public typealias HeadersType = ExecuteTransactionOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ExecuteTransactionOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ExportTableToPointInTime operation in a HTTP client.
 */
extension ExportTableToPointInTimeOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ExportTableToPointInTimeOutput
    public typealias HeadersType = ExportTableToPointInTimeOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ExportTableToPointInTimeOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetItem operation in a HTTP client.
 */
extension GetItemOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetItemOutput
    public typealias HeadersType = GetItemOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetItemOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListBackups operation in a HTTP client.
 */
extension ListBackupsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListBackupsOutput
    public typealias HeadersType = ListBackupsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListBackupsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListContributorInsights operation in a HTTP client.
 */
extension ListContributorInsightsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListContributorInsightsOutput
    public typealias HeadersType = ListContributorInsightsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListContributorInsightsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListExports operation in a HTTP client.
 */
extension ListExportsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListExportsOutput
    public typealias HeadersType = ListExportsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListExportsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListGlobalTables operation in a HTTP client.
 */
extension ListGlobalTablesOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListGlobalTablesOutput
    public typealias HeadersType = ListGlobalTablesOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListGlobalTablesOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListTables operation in a HTTP client.
 */
extension ListTablesOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListTablesOutput
    public typealias HeadersType = ListTablesOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListTablesOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListTagsOfResource operation in a HTTP client.
 */
extension ListTagsOfResourceOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListTagsOfResourceOutput
    public typealias HeadersType = ListTagsOfResourceOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListTagsOfResourceOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the PutItem operation in a HTTP client.
 */
extension PutItemOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = PutItemOutput
    public typealias HeadersType = PutItemOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PutItemOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the Query operation in a HTTP client.
 */
extension QueryOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = QueryOutput
    public typealias HeadersType = QueryOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> QueryOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RestoreTableFromBackup operation in a HTTP client.
 */
extension RestoreTableFromBackupOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = RestoreTableFromBackupOutput
    public typealias HeadersType = RestoreTableFromBackupOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RestoreTableFromBackupOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RestoreTableToPointInTime operation in a HTTP client.
 */
extension RestoreTableToPointInTimeOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = RestoreTableToPointInTimeOutput
    public typealias HeadersType = RestoreTableToPointInTimeOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RestoreTableToPointInTimeOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the Scan operation in a HTTP client.
 */
extension ScanOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ScanOutput
    public typealias HeadersType = ScanOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ScanOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the TransactGetItems operation in a HTTP client.
 */
extension TransactGetItemsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = TransactGetItemsOutput
    public typealias HeadersType = TransactGetItemsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> TransactGetItemsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the TransactWriteItems operation in a HTTP client.
 */
extension TransactWriteItemsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = TransactWriteItemsOutput
    public typealias HeadersType = TransactWriteItemsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> TransactWriteItemsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateContinuousBackups operation in a HTTP client.
 */
extension UpdateContinuousBackupsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateContinuousBackupsOutput
    public typealias HeadersType = UpdateContinuousBackupsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateContinuousBackupsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateContributorInsights operation in a HTTP client.
 */
extension UpdateContributorInsightsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateContributorInsightsOutput
    public typealias HeadersType = UpdateContributorInsightsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateContributorInsightsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateGlobalTable operation in a HTTP client.
 */
extension UpdateGlobalTableOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateGlobalTableOutput
    public typealias HeadersType = UpdateGlobalTableOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateGlobalTableOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateGlobalTableSettings operation in a HTTP client.
 */
extension UpdateGlobalTableSettingsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateGlobalTableSettingsOutput
    public typealias HeadersType = UpdateGlobalTableSettingsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateGlobalTableSettingsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateItem operation in a HTTP client.
 */
extension UpdateItemOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateItemOutput
    public typealias HeadersType = UpdateItemOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateItemOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateTable operation in a HTTP client.
 */
extension UpdateTableOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateTableOutput
    public typealias HeadersType = UpdateTableOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateTableOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateTableReplicaAutoScaling operation in a HTTP client.
 */
extension UpdateTableReplicaAutoScalingOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateTableReplicaAutoScalingOutput
    public typealias HeadersType = UpdateTableReplicaAutoScalingOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateTableReplicaAutoScalingOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateTimeToLive operation in a HTTP client.
 */
extension UpdateTimeToLiveOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateTimeToLiveOutput
    public typealias HeadersType = UpdateTimeToLiveOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateTimeToLiveOutput {
        return try bodyDecodableProvider()
    }
}
