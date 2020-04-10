// swift-tools-version:5.0
//
// Copyright 2018-2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
    name: "SmokeAWS",
    platforms: [
        .macOS(.v10_12), .iOS(.v10)
        ],
    products: [
        .library(
            name: "CloudWatchClient",
            targets: ["CloudWatchClient"]),
        .library(
            name: "CloudWatchModel",
            targets: ["CloudWatchModel"]),
        .library(
            name: "DynamoDBClient",
            targets: ["DynamoDBClient"]),
        .library(
            name: "DynamoDBModel",
            targets: ["DynamoDBModel"]),
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
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.0.0"),
        .package(url: "https://github.com/apple/swift-nio-ssl.git", from: "2.0.0"),
        .package(url: "https://github.com/apple/swift-log", from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-metrics.git", "1.0.0"..<"3.0.0"),
        .package(url: "https://github.com/LiveUI/XMLCoding.git", from: "0.4.1"),
        .package(url: "https://github.com/amzn/smoke-http.git", from: "2.0.0-alpha.8"),
        .package(url: "https://github.com/IBM-Swift/BlueCryptor.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "CloudWatchClient",
            dependencies: ["CloudWatchModel", "SmokeAWSHttp"]),
        .target(
            name: "CloudWatchModel",
            dependencies: ["Logging"]),
        .target(
            name: "DynamoDBClient",
            dependencies: ["DynamoDBModel", "SmokeAWSHttp"]),
        .target(
            name: "DynamoDBModel",
            dependencies: ["Logging"]),
        .target(
            name: "ElasticComputeCloudClient",
            dependencies: ["ElasticComputeCloudModel", "SmokeAWSHttp"]),
        .target(
            name: "ElasticComputeCloudModel",
            dependencies: ["Logging"]),
        .target(
            name: "ElasticContainerClient",
            dependencies: ["ElasticContainerModel", "SmokeAWSHttp"]),
        .target(
            name: "ElasticContainerModel",
            dependencies: ["Logging"]),
        .target(
            name: "RDSClient",
            dependencies: ["RDSModel", "SmokeAWSHttp"]),
        .target(
            name: "RDSModel",
            dependencies: ["Logging"]),
        .target(
            name: "RDSDataClient",
            dependencies: ["RDSDataModel", "SmokeAWSHttp"]),
        .target(
            name: "RDSDataModel",
            dependencies: ["Logging"]),
        .target(
            name: "S3Client",
            dependencies: ["S3Model", "SmokeAWSHttp"]),
        .target(
            name: "S3Model",
            dependencies: ["Logging"]),
        .target(
            name: "SecurityTokenClient",
            dependencies: ["SecurityTokenModel", "SmokeAWSHttp"]),
        .target(
            name: "SecurityTokenModel",
            dependencies: ["Logging"]),
        .target(
            name: "SimpleNotificationClient",
            dependencies: ["SimpleNotificationModel", "SmokeAWSHttp"]),
        .target(
            name: "SimpleNotificationModel",
            dependencies: ["Logging"]),
        .target(
            name: "SimpleQueueClient",
            dependencies: ["SimpleQueueModel", "SmokeAWSHttp"]),
        .target(
            name: "SimpleQueueModel",
            dependencies: ["Logging"]),
        .target(
            name: "SimpleWorkflowClient",
            dependencies: ["SimpleWorkflowModel", "SmokeAWSHttp"]),
        .target(
            name: "SimpleWorkflowModel",
            dependencies: ["Logging"]),
        .target(
            name: "StepFunctionsClient",
            dependencies: ["StepFunctionsModel", "SmokeAWSHttp"]),
        .target(
            name: "StepFunctionsModel",
            dependencies: ["Logging"]),
        .target(
            name: "SmokeAWSCore",
            dependencies: ["Logging", "Metrics", "XMLCoding", "SmokeHTTPClient"]),
        .target(
            name: "SmokeAWSHttp",
            dependencies: ["Logging", "NIO", "NIOHTTP1",
                           "SmokeAWSCore", "SmokeHTTPClient", "QueryCoding",
                           "HTTPPathCoding", "HTTPHeadersCoding", "Cryptor"]),
        .testTarget(
            name: "S3ClientTests",
            dependencies: ["S3Client"]),
        .testTarget(
            name: "SimpleQueueClientTests",
            dependencies: ["SimpleQueueClient"]),
        .testTarget(
            name: "SecurityTokenClientTests",
            dependencies: ["SecurityTokenClient"]),
        .testTarget(
            name: "SimpleNotificationClientTests",
            dependencies: ["SimpleNotificationClient"]),
        .testTarget(
            name: "ElasticComputeCloudClientTests",
            dependencies: ["ElasticComputeCloudClient"]),
        .testTarget(
            name: "RDSClientTests",
            dependencies: ["RDSClient"]),
    ],
    swiftLanguageVersions: [.v5]
)
