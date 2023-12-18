// swift-tools-version:5.5
//
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

import PackageDescription

let package = Package(
    name: "smoke-aws",
    platforms: [
        .macOS(.v10_15), .iOS(.v13), .tvOS(.v13)
        ],
    products: [
        .library(
            name: "AppConfigClient",
            targets: ["AppConfigClient"]),
        .library(
            name: "AppConfigModel",
            targets: ["AppConfigModel"]),
        .library(
            name: "CloudWatchClient",
            targets: ["CloudWatchClient"]),
        .library(
            name: "CloudWatchModel",
            targets: ["CloudWatchModel"]),
        .library(
            name: "CloudformationClient",
            targets: ["CloudformationClient"]),
        .library(
            name: "CloudformationModel",
            targets: ["CloudformationModel"]),
        .library(
            name: "CodePipelineClient",
            targets: ["CodePipelineClient"]),
        .library(
            name: "CodePipelineModel",
            targets: ["CodePipelineModel"]),
        .library(
            name: "DynamoDBClient",
            targets: ["DynamoDBClient"]),
        .library(
            name: "DynamoDBModel",
            targets: ["DynamoDBModel"]),
        .library(
            name: "ECRClient",
            targets: ["ECRClient"]),
        .library(
            name: "ECRModel",
            targets: ["ECRModel"]),
        .library(
            name: "ElasticComputeCloudClient",
            targets: ["ElasticComputeCloudClient"]),
        .library(
            name: "ElasticComputeCloudModel",
            targets: ["ElasticComputeCloudModel"]),
        .library(
            name: "ElasticContainerClient",
            targets: ["ElasticContainerClient"]),
        .library(
            name: "ElasticContainerModel",
            targets: ["ElasticContainerModel"]),
        .library(
            name: "RDSClient",
            targets: ["RDSClient"]),
        .library(
            name: "RDSModel",
            targets: ["RDSModel"]),
        .library(
            name: "RDSDataClient",
            targets: ["RDSDataClient"]),
        .library(
            name: "RDSDataModel",
            targets: ["RDSDataModel"]),
        .library(
            name: "S3Client",
            targets: ["S3Client"]),
        .library(
            name: "S3Model",
            targets: ["S3Model"]),
        .library(
            name: "SchedulerClient",
            targets: ["SchedulerClient"]),
        .library(
            name: "SchedulerModel",
            targets: ["SchedulerModel"]),
        .library(
            name: "SecurityTokenClient",
            targets: ["SecurityTokenClient"]),
        .library(
            name: "SecurityTokenModel",
            targets: ["SecurityTokenModel"]),
        .library(
            name: "SimpleNotificationClient",
            targets: ["SimpleNotificationClient"]),
        .library(
            name: "SimpleNotificationModel",
            targets: ["SimpleNotificationModel"]),
        .library(
            name: "SimpleQueueClient",
            targets: ["SimpleQueueClient"]),
        .library(
            name: "SimpleQueueModel",
            targets: ["SimpleQueueModel"]),
        .library(
            name: "SimpleWorkflowClient",
            targets: ["SimpleWorkflowClient"]),
        .library(
            name: "SimpleWorkflowModel",
            targets: ["SimpleWorkflowModel"]),
        .library(
            name: "StepFunctionsClient",
            targets: ["StepFunctionsClient"]),
        .library(
            name: "StepFunctionsModel",
            targets: ["StepFunctionsModel"]),
        .library(
            name: "SmokeAWSCore",
            targets: ["SmokeAWSCore"]),
        .library(
            name: "SmokeAWSHttp",
            targets: ["SmokeAWSHttp"]),
        .library(
            name: "_SmokeAWSHttpConcurrency",
            targets: ["_SmokeAWSHttpConcurrency"]),
        .library(
            name: "SmokeAWSMetrics",
            targets: ["SmokeAWSMetrics"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.33.0"),
        .package(url: "https://github.com/apple/swift-nio-ssl.git", from: "2.14.0"),
        .package(url: "https://github.com/apple/swift-log", from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-metrics.git", "1.0.0"..<"3.0.0"),
        .package(url: "https://github.com/LiveUI/XMLCoding.git", from: "0.4.1"),
        .package(url: "https://github.com/amzn/smoke-http.git", from: "2.19.1"),
        .package(url: "https://github.com/amzn/smoke-aws-support.git", from: "1.7.0"),
        .package(url: "https://github.com/apple/swift-crypto.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "AppConfigClient", dependencies: [
                .target(name: "AppConfigModel"),
                .target(name: "SmokeAWSHttp"),
            ]),
        .target(
            name: "AppConfigModel", dependencies: [
                .product(name: "Logging", package: "swift-log"),
            ]),
        .target(
            name: "CloudWatchClient", dependencies: [
                .target(name: "CloudWatchModel"),
                .target(name: "SmokeAWSHttp"),
            ]),
        .target(
            name: "CloudWatchModel", dependencies: [
                .product(name: "Logging", package: "swift-log"),
            ]),
        .target(
            name: "CloudformationClient", dependencies: [
                .target(name: "CloudformationModel"),
                .target(name: "SmokeAWSHttp"),
            ]),
        .target(
            name: "CloudformationModel", dependencies: [
                .product(name: "Logging", package: "swift-log"),
            ]),
        .target(
            name: "CodePipelineClient", dependencies: [
                .target(name: "CodePipelineModel"),
                .target(name: "SmokeAWSHttp"),
            ]),
        .target(
            name: "CodePipelineModel", dependencies: [
                .product(name: "Logging", package: "swift-log"),
            ]),
        .target(
            name: "DynamoDBClient", dependencies: [
                .target(name: "DynamoDBModel"),
                .target(name: "SmokeAWSHttp"),
            ]),
        .target(
            name: "DynamoDBModel", dependencies: [
                .product(name: "Logging", package: "swift-log"),
            ]),
        .target(
            name: "ECRClient", dependencies: [
                .target(name: "ECRModel"),
                .target(name: "SmokeAWSHttp"),
            ]),
        .target(
            name: "ECRModel", dependencies: [
                .product(name: "Logging", package: "swift-log"),
            ]),
        .target(
            name: "ElasticComputeCloudClient", dependencies: [
                .target(name: "ElasticComputeCloudModel"),
                .target(name: "SmokeAWSHttp"),
            ]),
        .target(
            name: "ElasticComputeCloudModel", dependencies: [
                .product(name: "Logging", package: "swift-log"),
            ]),
        .target(
            name: "ElasticContainerClient", dependencies: [
                .target(name: "ElasticContainerModel"),
                .target(name: "SmokeAWSHttp"),
            ]),
        .target(
            name: "ElasticContainerModel", dependencies: [
                .product(name: "Logging", package: "swift-log"),
            ]),
        .target(
            name: "RDSClient", dependencies: [
                .target(name: "RDSModel"),
                .target(name: "SmokeAWSHttp"),
            ]),
        .target(
            name: "RDSModel", dependencies: [
                .product(name: "Logging", package: "swift-log"),
            ]),
        .target(
            name: "RDSDataClient", dependencies: [
                .target(name: "RDSDataModel"),
                .target(name: "SmokeAWSHttp"),
            ]),
        .target(
            name: "RDSDataModel", dependencies: [
                .product(name: "Logging", package: "swift-log"),
            ]),
        .target(
            name: "S3Client", dependencies: [
                .target(name: "S3Model"),
                .target(name: "SmokeAWSHttp"),
            ]),
        .target(
            name: "S3Model", dependencies: [
                .product(name: "Logging", package: "swift-log"),
            ]),
        .target(
            name: "SchedulerClient", dependencies: [
                .target(name: "SchedulerModel"),
                .target(name: "SmokeAWSHttp"),
            ]),
        .target(
            name: "SchedulerModel", dependencies: [
                .product(name: "Logging", package: "swift-log"),
            ]),
        .target(
            name: "SecurityTokenClient", dependencies: [
                .target(name: "SecurityTokenModel"),
                .target(name: "SmokeAWSHttp"),
            ]),
        .target(
            name: "SecurityTokenModel", dependencies: [
                .product(name: "Logging", package: "swift-log"),
            ]),
        .target(
            name: "SimpleNotificationClient", dependencies: [
                .target(name: "SimpleNotificationModel"),
                .target(name: "SmokeAWSHttp"),
            ]),
        .target(
            name: "SimpleNotificationModel", dependencies: [
                .product(name: "Logging", package: "swift-log"),
            ]),
        .target(
            name: "SimpleQueueClient", dependencies: [
                .target(name: "SimpleQueueModel"),
                .target(name: "SmokeAWSHttp"),
            ]),
        .target(
            name: "SimpleQueueModel", dependencies: [
                .product(name: "Logging", package: "swift-log"),
            ]),
        .target(
            name: "SimpleWorkflowClient", dependencies: [
                .target(name: "SimpleWorkflowModel"),
                .target(name: "SmokeAWSHttp"),
            ]),
        .target(
            name: "SimpleWorkflowModel", dependencies: [
                .product(name: "Logging", package: "swift-log"),
            ]),
        .target(
            name: "StepFunctionsClient", dependencies: [
                .target(name: "StepFunctionsModel"),
                .target(name: "SmokeAWSHttp"),
            ]),
        .target(
            name: "StepFunctionsModel", dependencies: [
                .product(name: "Logging", package: "swift-log"),
            ]),
        .target(
            name: "SmokeAWSCore", dependencies: [
                .product(name: "Logging", package: "swift-log"),
                .product(name: "Metrics", package: "swift-metrics"),
                .product(name: "XMLCoding", package: "XMLCoding"),
                .product(name: "SmokeHTTPClient", package: "smoke-http"),
                .product(name: "AWSCore", package: "smoke-aws-support"),
                .product(name: "AWSLogging", package: "smoke-aws-support"),
            ]),
        .target(
            name: "SmokeAWSHttp", dependencies: [
                .product(name: "Logging", package: "swift-log"),
                .product(name: "NIO", package: "swift-nio"),
                .product(name: "NIOHTTP1", package: "swift-nio"),
                .target(name: "SmokeAWSCore"),
                .product(name: "SmokeHTTPClient", package: "smoke-http"),
                .product(name: "QueryCoding", package: "smoke-http"),
                .product(name: "HTTPPathCoding", package: "smoke-http"),
                .product(name: "HTTPHeadersCoding", package: "smoke-http"),
                .product(name: "Crypto", package: "swift-crypto"),
                .product(name: "AWSHttp", package: "smoke-aws-support"),
            ]),
        .target(
            name: "_SmokeAWSHttpConcurrency", dependencies: [
                .target(name: "SmokeAWSHttp"),
            ]),
        .target(
            name: "SmokeAWSMetrics", dependencies: [
                .product(name: "Logging", package: "swift-log"),
                .product(name: "Metrics", package: "swift-metrics"),
                .target(name: "CloudWatchClient"),
            ]),
        .testTarget(
            name: "S3ClientTests", dependencies: [
                .target(name: "S3Client"),
            ]),
        .testTarget(
            name: "SimpleQueueClientTests", dependencies: [
                .target(name: "SimpleQueueClient"),
            ]),
        .testTarget(
            name: "SecurityTokenClientTests", dependencies: [
                .target(name: "SecurityTokenClient"),
            ]),
        .testTarget(
            name: "SimpleNotificationClientTests", dependencies: [
                .target(name: "SimpleNotificationClient"),
            ]),
        .testTarget(
            name: "ElasticComputeCloudClientTests", dependencies: [
                .target(name: "ElasticComputeCloudClient"),
            ]),
        .testTarget(
            name: "RDSClientTests", dependencies: [
                .target(name: "RDSClient"),
            ]),
        .testTarget(
            name: "AppConfigClientTests", dependencies: [
                .target(name: "AppConfigClient"),
            ]),
    ],
    swiftLanguageVersions: [.v5]
)
