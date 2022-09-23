<p align="center">
<a href="https://github.com/amzn/smoke-aws/actions">
<img src="https://github.com/amzn/smoke-aws/actions/workflows/swift.yml/badge.svg?branch=main" alt="Build - Main Branch">
</a>
<a href="http://swift.org">
<img src="https://img.shields.io/badge/swift-5.5|5.7-orange.svg?style=flat" alt="Swift 5.5 and 5.7 Tested">
</a>
<img src="https://img.shields.io/badge/ubuntu-18.04|20.04-yellow.svg?style=flat" alt="Ubuntu 18.04 and 20.04 Tested">
<img src="https://img.shields.io/badge/CentOS-8-yellow.svg?style=flat" alt="CentOS 8 Tested">
<img src="https://img.shields.io/badge/AmazonLinux-2-yellow.svg?style=flat" alt="Amazon Linux 2 Tested">
<a href="https://gitter.im/SmokeServerSide">
<img src="https://img.shields.io/badge/chat-on%20gitter-ee115e.svg?style=flat" alt="Join the Smoke Server Side community on gitter">
</a>
<img src="https://img.shields.io/badge/license-Apache2-blue.svg?style=flat" alt="Apache 2">
</p>

# SmokeAWS

The SmokeAWS package is a library for communicating with AWS services written in the
Swift programming language. Using [SwiftNIO](https://github.com/apple/swift-nio) 
for its networking layer, the library provides the ability to call API methods for AWS
services either synchronously or asynchronously.

## Support Policy

The support policy for this package is described [here](https://github.com/amzn/smoke-aws/blob/master/docs/Support_Policy.md).

# Conceptual overview

Each AWS service has two libraries and corresponding targets in this package-
* a model library that provides the structure and types that express in Swift the service's API model
* a client library that provides a number of clients to contact the service or to mock the service for testing-
  * a protocol that defines synchronous and asynchronous variants for all service API methods.
  * an AWS client that can be used to contact the actual AWS service.
    * Support for expontential backoff retries.
    * Logging and emittion of invocation metrics, with API-level support for enabling/disabling emitting metrics
  * a mock client that by default returns a default instance of the return type for each API method.
  * a throwing client that by default throws an error of each API method.

# Getting Started

## Step 1: Add the SmokeAWS dependency

SmokeAWS uses the Swift Package Manager. To use the framework, add the following dependency
to your Package.swift-

```swift
dependencies: [
    .package(url: "https://github.com/amzn/smoke-aws.git", from: "2.0.0")
]
```

## Step 2: Depend on the SmokeAWS client libraries you need to use

Once you have specified the SmokeAWS package as a dependency, you can specify the targets from this package 
that your application needs to depend on. Swift Package Manager will compile these targets as part of your 
application for you to use. It will not compile the targets in the SmokeAWS package that you don't depend on.

For swift-tools version 5.2 and greater-

```swift
    targets: [
        .target(
            name: "SampleServiceOperations", dependencies: [
                .product(name: "ElasticComputeCloudClient", package: "smoke-aws"),
            ]),
        .testTarget(
            name: "SampleServiceOperationsTests", dependencies: [
                .target(name: "SampleServiceOperations"),
            ]),
    ]
```

For swift-tools version 5.1 and prior-
 
```swift
    targets: [
        .target(
            name: "SampleServiceOperations",
            dependencies: ["ElasticComputeCloudClient"]),
        .testTarget(
            name: "SampleServiceOperationsTests",
            dependencies: ["SampleServiceOperations"]),
    ]
```

## Step 3: Use the client protocol

While it is possible to use the AWS clients directly, in most cases you will want to use the corresponding protocol
so you can unit test your code without contacting the AWS service, rather using one of the mock clients to handle 
service calls locally.

```swift
import ElasticComputeCloudClient

public struct SampleServiceOperationsContext {
    public let ec2Client: ElasticComputeCloudClientProtocol

    public init(ec2Client: ElasticComputeCloudClientProtocol) {
        self.ec2Client = ec2Client
    }
}
```

Using this protocol you can call service API methods and get results-

```swift
import ElasticComputeCloudModel
...

    let request = RunInstancesRequest(
        clientToken: nil,
        launchTemplate: instanceLaunchTemplate,
        maxCount: maxCount,
        minCount: minCount,
        subnetId: subnetId)
    let response = try context.ec2Client.runInstancesSync(input: request)
    
    try response.instances?.forEach { instance in ... }
```

## Step 4: Instantiate the AWS client for production

When starting your application in production, you can instantiate an instance of the AWS client
and pass it in the place of the protocol to contact the actual AWS service.

Each AWS service provides a Generator type that can be globally instatiated for the application and used to produce a request-specific client.

At application startup-

```swift
import ElasticComputeCloudClient
import SmokeAWSCredentials
...

    guard let credentialsProvider = AwsContainerRotatingCredentials.getCredentials(fromEnvironment: environment) else {
        return Log.error("Unable to obtain credentials from the container environment.")
    }
    
    // optional: for the EC2 clients, only emit the retry count metric
    // only report 5XX error counts for DescribeInstances (even if additional operations are added in the future)
    // only report 4XX error counts for operations other than DescribeInstances (including if they are added in the future)
    let reportingConfiguration = SmokeAWSClientReportingConfiguration<ElasticComputeCloudModelOperations>(
        successCounterMatchingOperations: .none,
        failure5XXCounterMatchingRequests: .onlyForOperations([.describeInstances]),
        failure4XXCounterMatchingRequests: .exceptForOperations([.describeInstances]),
        retryCountRecorderMatchingOperations: .all,
        latencyTimerMatchingOperations: .none)

    self.ec2ClientGenerator = AWSElasticComputeCloudClientGenerator(
        credentialsProvider: credentialsProvider,
        awsRegion: region,
        endpointHostName: ec2EndpointHostName,
        connectionTimeoutSeconds: connectionTimeoutSeconds, // optional
        retryConfiguration: retryConfiguration,             // optional
        eventLoopProvider: .createNew,                      // optional
        reportingConfiguration: reportingConfiguration)     // optional
```

The inputs to this constructor are-
1. **credentialsProvider**: The provider of credentials to use for this client. 
  * Here we use the [SmokeAWSCredentials](https://github.com/amzn/smoke-aws-credentials) package to obtain rotating credentials from an AWS runtime such as ECS.
2. **awsRegion**: The AWS region to use for this client
3. **endpointHostName**: The hostname to contact for invocations made by this client. Doesn't include the scheme or port. 
  * For example `dynamodb.us-west-2.amazonaws.com`.
4. **connectionTimeoutSeconds**: The timeout in seconds for requests made by this client.
5. **retryConfiguration**: An instance of type `HTTPClientRetryConfiguration` to indicate how the client should handle automatic retries on failure. Default to a configuration with 5 retries starting at a 500 ms interval.
6. **eventLoopProvider**: The provider of the event loop for this client. Defaults to creating a new event loop.
7. **reportingConfiguration**: An instance of `SmokeAWSClientReportingConfiguration` that indicates what metrics to emit for the client. Defaults to a configuration where all metrics for all APIs are emitted. 

Within a request-

```swift
    let ec2Client = self.ec2ClientGenerator.with(logger: logger)
```

Recording metrics from the AWS clients will require an metrics implementation to be instatiated for the application for [swift-metrics](https://github.com/apple/swift-metrics). Currently SmokeAWS doesn't provide a default implementation for Cloudwatch.

The metrics emitted by the AWS clients are-
1. **success**: The count of successful invocations.
2. **failure5XX**: The count of unsuccessful invocations of the client that return with a 5xx response code.
3. **failure4XX**: The count of unsuccessful invocations of the client that return with a 4xx response code.
4. **retryCount**: The retry count for invocations of the client.
5. **latency**: The latency of invocations from the client.

## Step 5: Instantiate a mock client for testing

In unit tests, you can instantiate an instance of the mock or throwing client and pass it in the place of the protocol
to verify your code acts as expected. Both mock clients allow you to optionally pass closures to override the default
behavior for particular API methods, allowing you to provide custom mock behavior for some but not all API methods.

```swift
    var instances: [(instanceId: String, subnetId: String)] = []
    var terminatedInstanceIds: [String] = []
    
    func runInstancesSync(_ input: ElasticComputeCloudModel.RunInstancesRequest)
        throws -> ElasticComputeCloudModel.Reservation {
            var instanceList: InstanceList = []
            
            for _ in 0..<input.maxCount {
                let instanceId = "instance_\(UUID().uuidString)"
                let instance = ElasticComputeCloudModel.Instance(instanceId: instanceId)
                instanceList.append(instance)
                instances.append((instanceId: instanceId, subnetId: input.subnetId!))
            }
            
            return ElasticComputeCloudModel.Reservation(instances: instanceList)
    }
    
    func terminateInstancesSync(input: ElasticComputeCloudModel.TerminateInstancesRequest) throws 
        -> ElasticComputeCloudModel.TerminateInstancesResult {
            terminatedInstanceIds.append(contentsOf: input.instanceIds)
            return ElasticComputeCloudModel.TerminateInstancesResult()
    }
    
    let ec2Client = MockElasticComputeCloudClient(runInstancesSync: runInstancesSync,
                                                  terminateInstancesSync: terminateInstancesSync)
    let context = SampleServiceOperationsContext(ec2Client: ec2Client)
```

# Further Concepts

## Package generation

The majority of this package is code generated using [SmokeAWSGenerate](https://github.com/amzn/smoke-aws-generate). 

## License

This library is licensed under the Apache 2.0 License.
