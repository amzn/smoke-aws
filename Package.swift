// swift-tools-version:4.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SmokeAWS",
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
            name: "S3Client",
            targets: ["S3Client"]),
        .library(
            name: "SmokeAWSCore",
            targets: ["SmokeAWSCore"]),
        .library(
            name: "SmokeAWSHttp",
            targets: ["SmokeAWSHttp"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-nio.git", from: "1.8.0"),
        .package(url: "https://github.com/apple/swift-nio-ssl.git", from: "1.0.0"),
        .package(url: "https://github.com/IBM-Swift/LoggerAPI.git", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com/LiveUI/XMLCoding.git", .upToNextMajor(from: "0.4.0")),
        .package(url: "https://github.com/amzn/smoke-http.git", .upToNextMajor(from: "0.5.0")),
    ],
    targets: [
        .target(
            name: "CloudWatchClient",
            dependencies: ["CloudWatchModel", "SmokeAWSHttp"]),
        .target(
            name: "CloudWatchModel",
            dependencies: ["LoggerAPI"]),
        .target(
            name: "DynamoDBClient",
            dependencies: ["DynamoDBModel", "SmokeAWSHttp"]),
        .target(
            name: "DynamoDBModel",
            dependencies: ["LoggerAPI"]),
        .target(
            name: "ElasticComputeCloudClient",
            dependencies: ["ElasticComputeCloudModel", "SmokeAWSHttp"]),
        .target(
            name: "ElasticComputeCloudModel",
            dependencies: ["LoggerAPI"]),
        .target(
            name: "ElasticContainerClient",
            dependencies: ["ElasticContainerModel", "SmokeAWSHttp"]),
        .target(
            name: "ElasticContainerModel",
            dependencies: ["LoggerAPI"]),
        .target(
            name: "SecurityTokenClient",
            dependencies: ["SecurityTokenModel", "SmokeAWSHttp"]),
        .target(
            name: "SecurityTokenModel",
            dependencies: ["LoggerAPI"]),
        .target(
            name: "SimpleNotificationClient",
            dependencies: ["SimpleNotificationModel", "SmokeAWSHttp"]),
        .target(
            name: "SimpleNotificationModel",
            dependencies: ["LoggerAPI"]),
        .target(
            name: "SimpleQueueClient",
            dependencies: ["SimpleQueueModel", "SmokeAWSHttp"]),
        .target(
            name: "SimpleQueueModel",
            dependencies: ["LoggerAPI"]),
        .target(
            name: "SimpleWorkflowClient",
            dependencies: ["SimpleWorkflowModel", "SmokeAWSHttp"]),
        .target(
            name: "SimpleWorkflowModel",
            dependencies: ["LoggerAPI"]),
        .target(
            name: "StepFunctionsClient",
            dependencies: ["StepFunctionsModel", "SmokeAWSHttp"]),
        .target(
            name: "StepFunctionsModel",
            dependencies: ["LoggerAPI"]),
        .target(
            name: "SmokeAWSCore",
            dependencies: ["LoggerAPI", "XMLCoding"]),
        .target(
            name: "SmokeAWSHttp",
            dependencies: ["LoggerAPI", "NIO", "NIOHTTP1", "NIOOpenSSL", "SmokeAWSCore", "SmokeHTTPClient", "QueryCoder"]),
        .target(
            name: "S3Client",
            dependencies: ["SmokeAWSHttp"]),
        .testTarget(
            name: "S3ClientTests",
            dependencies: ["S3Client"]),
    ]
)