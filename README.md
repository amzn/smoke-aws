<p align="center">
<a href="https://travis-ci.com/amzn/smoke-aws">
<img src="https://travis-ci.com/amzn/smoke-aws.svg?branch=master" alt="Build - Master Branch">
</a>
<img src="https://img.shields.io/badge/os-linux-green.svg?style=flat" alt="Linux">
<a href="http://swift.org">
<img src="https://img.shields.io/badge/swift-4.1-orange.svg?style=flat" alt="Swift 4.1 Compatible">
</a>
<a href="http://swift.org">
<img src="https://img.shields.io/badge/swift-4.2-orange.svg?style=flat" alt="Swift 4.1 Compatible">
</a>
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

# Conceptual overview

Each AWS service has two libraries and corresponding targets in this package-
* a model library that provides the structure and types that express in Swift the service's API model
* a client library that provides a number of clients to contact the service or to mock the service for testing-
  * a protocol that defines synchronous and asynchronous variants for all service API methods.
  * an AWS client that can be used to contact the actual AWS service.
  * a mock client that by default returns a default instance of the return type for each API method.
  * a throwing client that by default throws an error of each API method.

# Getting Started

## Step 1: Add the SmokeAWS dependency

SmokeAWS uses the Swift Package Manager. To use the framework, add the following dependency
to your Package.swift-

```swift
dependencies: [
    .package(url: "https://github.com/amzn/smoke-aws.git", .upToNextMajor(from: "1.0.0"))
]
```

## Step 2: Depend on the SmokeAWS client libraries you need to use

Once you have specified the SmokeAWS package as a dependency, you can specify the targets from this package 
that your application needs to depend on. Swift Package Manager will compile these targets as part of your 
application for you to use. It will not compile the targets in the SmokeAWS package that you don't depend on.
 
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

```swift
import ElasticComputeCloudClient
import SmokeAWSCredentials
...

    guard let credentialsProvider = AwsContainerRotatingCredentials.getCredentials(fromEnvironment: environment) else {
        return Log.error("Unable to obtain credentials from the container environment.")
    }

    let ec2Client = AWSElasticComputeCloudClient(credentialsProvider: credentialsProvider,
                                                 awsRegion: region,
                                                 endpointHostName: ec2EndpointHostName)

    let context = SampleServiceOperationsContext(ec2Client: ec2Client)
```

Here we use the [SmokeAWSCredentials](https://github.com/amzn/smoke-aws-credentials) package to obtain rotating credentials from an AWS runtime such as ECS.

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
