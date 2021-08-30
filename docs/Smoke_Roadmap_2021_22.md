---
date: 2021-08-30 11:00
description: Smoke Roadmap 2021/22.
tags: support policy
---
# So what has happened

Today [AWS announced](https://aws.amazon.com/blogs/developer/announcing-new-aws-sdk-for-swift-alpha-release/) an alpha release of a new [AWS SDK](https://github.com/awslabs/aws-sdk-swift) for Swift, compatible with both Server Side Swift and Apple platforms (iOS, iPadOS, watchOS, macOS and tvOS). It is an early access preview and **is currently not suitable for production**.

Given this development has significant impact to the collection of Smoke packages we have developed, along with the fact that there are upcoming changes related to the adoption of async/await, this document discusses the roadmap for these packages.

# SmokeFramework

**Status: Supported; upcoming Version 3 release in 2022**

The [SmokeFramework](https://github.com/amzn/smoke-framework) package is the service framework we have developed. It perhaps has the most straight forward roadmap as it has no dependency on AWS service clients.

Version 2 of the SmokeFramework library was released in May 2020 and a number of features have been added in a non-breaking way since that time. Currently Version 2 has experimental support for using async functions as operation handlers when compiling under Swift 5.5 through the use of an underscored import (_SmokeOperationsHTTP1Concurrency). Before the final release of Swift 5.5, this support for async functions will be moved out of this underscored package. This will allow async functions to be used with the existing major version of SmokeFramework when compiling under Swift 5.5 or greater. The other types of operation handlers (sync functions, completion handlers and returning EventLoopFuture) will continue to work for all supported Swift compiler versions.

Following this Version 3 of the SmokeFramework will likely be released in 2022 and will require Swift 5.5 or greater. This version will remove support for other types of operation handlers (sync functions, completion handlers and returning EventLoopFuture) and provide greater support for mechanisms enabled by Swift 5.5 such as Task Local Values and Distributed Tracing.

# SmokeDynamoDB

**Status: Supported; upcoming Version 3 release in 2021**

[SmokeDynamoDB](https://github.com/amzn/smoke-dynamodb) is a library to make it easy to use DynamoDB from Swift-based applications, with a particular focus on usage with polymorphic database tables (tables that don't have a single schema for all rows).

Version 2 of the SmokeDynamoDB library was released in May 2020. There is currently no plan to add support for async/await in Version 2 but please let us know if this would be useful.

Version 3 of SmokeDynamoDB has been in development for some time, driven by our own experience of using the library. Version 3 makes some significant usability changes when making queries and adds additional support for operations such as execute. Version 3 also transitions its APIs to returning EventLoopFutures and will add support for async APIs prior to the release of Swift 5.5. It is expected Version 3 will be released around the same time as Swift 5.5.

Beyond Version 3 of SmokeDynamoDB, the roadmap slightly is less clear. There will be a major version release that moves to the DynamoDB client provided by the new Swift SDK and there will be a major version release that removing support for the APIs returning EventLoopFutures and versions of Swift prior to 5.5. These may end up being the same release depending on timing. Other than changes in set up to accommodate the shift in underlying client, it is not expected there will be breaking changes to the package's APIs.

# SmokeFrameworkApplicationGenerate

**Status: Supported; upcoming Version 3 release in 2021**

The [SmokeFrameworkApplicationGenerate](https://github.com/amzn/smoke-framework-application-generate) and its dependencies provide a code generator for SmokeFramework-based applications.

Version 3 of this code generator has been in development for some time and will shift to generating APIs that return EventLoopFutures and async functions (accessible when compiling under Swift 5.5 or greater). Our plan is to also make `SmokeFrameworkApplicationGenerate` and potentially `APIGatewayClientGenerate` available as SwiftPM plugins to avoid having to check in the generated code.

Beyond Version 3 of the generator, we plan to move the generated clients to the same AWSClientRuntime used by the new SDK. Other than changes in set up to accommodate the shift in underlying client, it is not expected there will be breaking changes the package's APIs. This change will allow the same credentials to be used access AWS service and APIGateway clients.

# SmokeHTTP

**Status: TBD**

The [SmokeHTTP](https://github.com/amzn/smoke-http) library is a specialisation of the generic HTTP client provided by [async-http-client](https://github.com/swift-server/async-http-client), providing the common functionality required to abstract service operations from the underlying HTTP protocol.

With the expected deprecation of SmokeAWS after the release of the new AWS SDK (see below), SmokeHTTP could be left without a major use-case. Please let us know if you use SmokeHTTP directly and would like to see it continue.

# SmokeAWS

**Status: Will be deprecated after Version 2; support will be provided to migrate to the new AWS SDK**

The [SmokeAWS](https://github.com/amzn/smoke-dynamodb) library has provided clients for a number of AWS services along with support for APIGateway clients generated from [SmokeFrameworkApplicationGenerate](https://github.com/amzn/smoke-framework-application-generate) - our code generator for SmokeFramework-based applications.

Version 2 will be the final major version of this package. Prior to the release of Swift 5.5 we will add async/await support to the existing clients. We will provide a migration guide to the new SDK.

Our plan is also to migrate the code generated APIGateway clients to the same AWSClientRuntime used by the new SDK which should result in this package no longer being needed going forward. According to our [Support Policy](https://github.com/amzn/smoke-aws/blob/main/docs/Support_Policy.md) Version 2 will be supported for **at least 6 months** following the initial release of the new SDK.


# SmokeAWSCredentials

**Status: Will be deprecated after Version 2; support will be provided to migrate to the new AWS SDK**

The [SmokeAWSCredentials](https://github.com/amzn/smoke-aws-credentials) package is a library for obtaining or assuming short-lived rotating AWS IAM credentials, suitable for being passed to clients from SmokeAWS.

The functionality of this package will be completely replaced by the new SDK. We will provide a migration guide to the new SDK and according to our [Support Policy](https://github.com/amzn/smoke-aws/blob/main/docs/Support_Policy.md) the current version (Version 2) will be supported for **at least 6 months** following the initial release of the new SDK.
