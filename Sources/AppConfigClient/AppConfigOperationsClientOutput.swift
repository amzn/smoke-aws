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
// AppConfigOperationsClientOutput.swift
// AppConfigClient
//

import Foundation
import SmokeHTTPClient
import AppConfigModel

/**
 Type to handle the output from the CreateApplication operation in a HTTP client.
 */
extension Application: HTTPResponseOutputProtocol {
    public typealias BodyType = Application
    public typealias HeadersType = Application

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> Application {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateConfigurationProfile operation in a HTTP client.
 */
extension ConfigurationProfile: HTTPResponseOutputProtocol {
    public typealias BodyType = ConfigurationProfile
    public typealias HeadersType = ConfigurationProfile

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ConfigurationProfile {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateDeploymentStrategy operation in a HTTP client.
 */
extension DeploymentStrategy: HTTPResponseOutputProtocol {
    public typealias BodyType = DeploymentStrategy
    public typealias HeadersType = DeploymentStrategy

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeploymentStrategy {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateEnvironment operation in a HTTP client.
 */
extension Environment: HTTPResponseOutputProtocol {
    public typealias BodyType = Environment
    public typealias HeadersType = Environment

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> Environment {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateHostedConfigurationVersion operation in a HTTP client.
 */
extension HostedConfigurationVersion: HTTPResponseOutputProtocol {
    public typealias BodyType = Blob
    public typealias HeadersType = CreateHostedConfigurationVersionOperationOutputHeaders

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> HostedConfigurationVersion {
        let body = try bodyDecodableProvider()
        let headers = try headersDecodableProvider()

        return AppConfigModel.HostedConfigurationVersion(
            applicationId: headers.applicationId,
            configurationProfileId: headers.configurationProfileId,
            content: body,
            contentType: headers.contentType,
            description: headers.description,
            versionNumber: headers.versionNumber)
    }
}

/**
 Type to handle the output from the GetConfiguration operation in a HTTP client.
 */
extension Configuration: HTTPResponseOutputProtocol {
    public typealias BodyType = Blob
    public typealias HeadersType = GetConfigurationOperationOutputHeaders

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> Configuration {
        let body = try bodyDecodableProvider()
        let headers = try headersDecodableProvider()

        return AppConfigModel.Configuration(
            configurationVersion: headers.configurationVersion,
            content: body,
            contentType: headers.contentType)
    }
}

/**
 Type to handle the output from the GetDeployment operation in a HTTP client.
 */
extension Deployment: HTTPResponseOutputProtocol {
    public typealias BodyType = Deployment
    public typealias HeadersType = Deployment

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> Deployment {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListApplications operation in a HTTP client.
 */
extension Applications: HTTPResponseOutputProtocol {
    public typealias BodyType = Applications
    public typealias HeadersType = Applications

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> Applications {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListConfigurationProfiles operation in a HTTP client.
 */
extension ConfigurationProfiles: HTTPResponseOutputProtocol {
    public typealias BodyType = ConfigurationProfiles
    public typealias HeadersType = ConfigurationProfiles

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ConfigurationProfiles {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListDeploymentStrategies operation in a HTTP client.
 */
extension DeploymentStrategies: HTTPResponseOutputProtocol {
    public typealias BodyType = DeploymentStrategies
    public typealias HeadersType = DeploymentStrategies

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeploymentStrategies {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListDeployments operation in a HTTP client.
 */
extension Deployments: HTTPResponseOutputProtocol {
    public typealias BodyType = Deployments
    public typealias HeadersType = Deployments

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> Deployments {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListEnvironments operation in a HTTP client.
 */
extension Environments: HTTPResponseOutputProtocol {
    public typealias BodyType = Environments
    public typealias HeadersType = Environments

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> Environments {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListHostedConfigurationVersions operation in a HTTP client.
 */
extension HostedConfigurationVersions: HTTPResponseOutputProtocol {
    public typealias BodyType = HostedConfigurationVersions
    public typealias HeadersType = HostedConfigurationVersions

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> HostedConfigurationVersions {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListTagsForResource operation in a HTTP client.
 */
extension ResourceTags: HTTPResponseOutputProtocol {
    public typealias BodyType = ResourceTags
    public typealias HeadersType = ResourceTags

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ResourceTags {
        return try bodyDecodableProvider()
    }
}
