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
// CodeBuildOperationsClientOutput.swift
// CodeBuildClient
//

import Foundation
import SmokeHTTPClient
import CodeBuildModel

/**
 Type to handle the output from the BatchDeleteBuilds operation in a HTTP client.
 */
extension BatchDeleteBuildsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = BatchDeleteBuildsOutput
    public typealias HeadersType = BatchDeleteBuildsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> BatchDeleteBuildsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the BatchGetBuildBatches operation in a HTTP client.
 */
extension BatchGetBuildBatchesOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = BatchGetBuildBatchesOutput
    public typealias HeadersType = BatchGetBuildBatchesOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> BatchGetBuildBatchesOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the BatchGetBuilds operation in a HTTP client.
 */
extension BatchGetBuildsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = BatchGetBuildsOutput
    public typealias HeadersType = BatchGetBuildsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> BatchGetBuildsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the BatchGetProjects operation in a HTTP client.
 */
extension BatchGetProjectsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = BatchGetProjectsOutput
    public typealias HeadersType = BatchGetProjectsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> BatchGetProjectsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the BatchGetReportGroups operation in a HTTP client.
 */
extension BatchGetReportGroupsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = BatchGetReportGroupsOutput
    public typealias HeadersType = BatchGetReportGroupsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> BatchGetReportGroupsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the BatchGetReports operation in a HTTP client.
 */
extension BatchGetReportsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = BatchGetReportsOutput
    public typealias HeadersType = BatchGetReportsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> BatchGetReportsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateProject operation in a HTTP client.
 */
extension CreateProjectOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateProjectOutput
    public typealias HeadersType = CreateProjectOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateProjectOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateReportGroup operation in a HTTP client.
 */
extension CreateReportGroupOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateReportGroupOutput
    public typealias HeadersType = CreateReportGroupOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateReportGroupOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateWebhook operation in a HTTP client.
 */
extension CreateWebhookOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateWebhookOutput
    public typealias HeadersType = CreateWebhookOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateWebhookOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteBuildBatch operation in a HTTP client.
 */
extension DeleteBuildBatchOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteBuildBatchOutput
    public typealias HeadersType = DeleteBuildBatchOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteBuildBatchOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteProject operation in a HTTP client.
 */
extension DeleteProjectOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteProjectOutput
    public typealias HeadersType = DeleteProjectOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteProjectOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteReport operation in a HTTP client.
 */
extension DeleteReportOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteReportOutput
    public typealias HeadersType = DeleteReportOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteReportOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteReportGroup operation in a HTTP client.
 */
extension DeleteReportGroupOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteReportGroupOutput
    public typealias HeadersType = DeleteReportGroupOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteReportGroupOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteResourcePolicy operation in a HTTP client.
 */
extension DeleteResourcePolicyOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteResourcePolicyOutput
    public typealias HeadersType = DeleteResourcePolicyOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteResourcePolicyOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteSourceCredentials operation in a HTTP client.
 */
extension DeleteSourceCredentialsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteSourceCredentialsOutput
    public typealias HeadersType = DeleteSourceCredentialsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteSourceCredentialsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteWebhook operation in a HTTP client.
 */
extension DeleteWebhookOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteWebhookOutput
    public typealias HeadersType = DeleteWebhookOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteWebhookOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeCodeCoverages operation in a HTTP client.
 */
extension DescribeCodeCoveragesOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeCodeCoveragesOutput
    public typealias HeadersType = DescribeCodeCoveragesOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeCodeCoveragesOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeTestCases operation in a HTTP client.
 */
extension DescribeTestCasesOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeTestCasesOutput
    public typealias HeadersType = DescribeTestCasesOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeTestCasesOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetReportGroupTrend operation in a HTTP client.
 */
extension GetReportGroupTrendOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetReportGroupTrendOutput
    public typealias HeadersType = GetReportGroupTrendOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetReportGroupTrendOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetResourcePolicy operation in a HTTP client.
 */
extension GetResourcePolicyOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetResourcePolicyOutput
    public typealias HeadersType = GetResourcePolicyOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetResourcePolicyOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ImportSourceCredentials operation in a HTTP client.
 */
extension ImportSourceCredentialsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ImportSourceCredentialsOutput
    public typealias HeadersType = ImportSourceCredentialsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ImportSourceCredentialsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the InvalidateProjectCache operation in a HTTP client.
 */
extension InvalidateProjectCacheOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = InvalidateProjectCacheOutput
    public typealias HeadersType = InvalidateProjectCacheOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> InvalidateProjectCacheOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListBuildBatches operation in a HTTP client.
 */
extension ListBuildBatchesOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListBuildBatchesOutput
    public typealias HeadersType = ListBuildBatchesOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListBuildBatchesOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListBuildBatchesForProject operation in a HTTP client.
 */
extension ListBuildBatchesForProjectOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListBuildBatchesForProjectOutput
    public typealias HeadersType = ListBuildBatchesForProjectOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListBuildBatchesForProjectOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListBuilds operation in a HTTP client.
 */
extension ListBuildsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListBuildsOutput
    public typealias HeadersType = ListBuildsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListBuildsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListBuildsForProject operation in a HTTP client.
 */
extension ListBuildsForProjectOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListBuildsForProjectOutput
    public typealias HeadersType = ListBuildsForProjectOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListBuildsForProjectOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListCuratedEnvironmentImages operation in a HTTP client.
 */
extension ListCuratedEnvironmentImagesOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListCuratedEnvironmentImagesOutput
    public typealias HeadersType = ListCuratedEnvironmentImagesOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListCuratedEnvironmentImagesOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListProjects operation in a HTTP client.
 */
extension ListProjectsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListProjectsOutput
    public typealias HeadersType = ListProjectsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListProjectsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListReportGroups operation in a HTTP client.
 */
extension ListReportGroupsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListReportGroupsOutput
    public typealias HeadersType = ListReportGroupsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListReportGroupsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListReports operation in a HTTP client.
 */
extension ListReportsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListReportsOutput
    public typealias HeadersType = ListReportsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListReportsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListReportsForReportGroup operation in a HTTP client.
 */
extension ListReportsForReportGroupOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListReportsForReportGroupOutput
    public typealias HeadersType = ListReportsForReportGroupOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListReportsForReportGroupOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListSharedProjects operation in a HTTP client.
 */
extension ListSharedProjectsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListSharedProjectsOutput
    public typealias HeadersType = ListSharedProjectsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListSharedProjectsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListSharedReportGroups operation in a HTTP client.
 */
extension ListSharedReportGroupsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListSharedReportGroupsOutput
    public typealias HeadersType = ListSharedReportGroupsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListSharedReportGroupsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListSourceCredentials operation in a HTTP client.
 */
extension ListSourceCredentialsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListSourceCredentialsOutput
    public typealias HeadersType = ListSourceCredentialsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListSourceCredentialsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the PutResourcePolicy operation in a HTTP client.
 */
extension PutResourcePolicyOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = PutResourcePolicyOutput
    public typealias HeadersType = PutResourcePolicyOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PutResourcePolicyOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RetryBuild operation in a HTTP client.
 */
extension RetryBuildOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = RetryBuildOutput
    public typealias HeadersType = RetryBuildOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RetryBuildOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RetryBuildBatch operation in a HTTP client.
 */
extension RetryBuildBatchOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = RetryBuildBatchOutput
    public typealias HeadersType = RetryBuildBatchOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RetryBuildBatchOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the StartBuild operation in a HTTP client.
 */
extension StartBuildOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = StartBuildOutput
    public typealias HeadersType = StartBuildOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> StartBuildOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the StartBuildBatch operation in a HTTP client.
 */
extension StartBuildBatchOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = StartBuildBatchOutput
    public typealias HeadersType = StartBuildBatchOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> StartBuildBatchOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the StopBuild operation in a HTTP client.
 */
extension StopBuildOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = StopBuildOutput
    public typealias HeadersType = StopBuildOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> StopBuildOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the StopBuildBatch operation in a HTTP client.
 */
extension StopBuildBatchOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = StopBuildBatchOutput
    public typealias HeadersType = StopBuildBatchOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> StopBuildBatchOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateProject operation in a HTTP client.
 */
extension UpdateProjectOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateProjectOutput
    public typealias HeadersType = UpdateProjectOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateProjectOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateReportGroup operation in a HTTP client.
 */
extension UpdateReportGroupOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateReportGroupOutput
    public typealias HeadersType = UpdateReportGroupOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateReportGroupOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateWebhook operation in a HTTP client.
 */
extension UpdateWebhookOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateWebhookOutput
    public typealias HeadersType = UpdateWebhookOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateWebhookOutput {
        return try bodyDecodableProvider()
    }
}
