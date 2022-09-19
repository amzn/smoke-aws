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
// AppConfigInvocationsReporting.swift
// AppConfigClient
//

import Foundation
import SmokeHTTPClient
import SmokeAWSHttp
import AppConfigModel

/**
 Invocations reporting for the AppConfigModel.
 */
public struct AppConfigInvocationsReporting<InvocationReportingType: HTTPClientCoreInvocationReporting> {
    public let createApplication: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createConfigurationProfile: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createDeploymentStrategy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createEnvironment: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createHostedConfigurationVersion: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteApplication: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteConfigurationProfile: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteDeploymentStrategy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteEnvironment: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteHostedConfigurationVersion: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getApplication: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getConfigurationProfile: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getDeployment: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getDeploymentStrategy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getEnvironment: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getHostedConfigurationVersion: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listApplications: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listConfigurationProfiles: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listDeploymentStrategies: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listDeployments: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listEnvironments: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listHostedConfigurationVersions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listTagsForResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let startDeployment: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let stopDeployment: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let tagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let untagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let updateApplication: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let updateConfigurationProfile: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let updateDeploymentStrategy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let updateEnvironment: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let validateConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>

    public init(reporting: InvocationReportingType, operationsReporting: AppConfigOperationsReporting) {
        self.createApplication = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createApplication)
        self.createConfigurationProfile = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createConfigurationProfile)
        self.createDeploymentStrategy = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createDeploymentStrategy)
        self.createEnvironment = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createEnvironment)
        self.createHostedConfigurationVersion = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createHostedConfigurationVersion)
        self.deleteApplication = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteApplication)
        self.deleteConfigurationProfile = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteConfigurationProfile)
        self.deleteDeploymentStrategy = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteDeploymentStrategy)
        self.deleteEnvironment = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteEnvironment)
        self.deleteHostedConfigurationVersion = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteHostedConfigurationVersion)
        self.getApplication = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getApplication)
        self.getConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getConfiguration)
        self.getConfigurationProfile = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getConfigurationProfile)
        self.getDeployment = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getDeployment)
        self.getDeploymentStrategy = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getDeploymentStrategy)
        self.getEnvironment = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getEnvironment)
        self.getHostedConfigurationVersion = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getHostedConfigurationVersion)
        self.listApplications = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listApplications)
        self.listConfigurationProfiles = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listConfigurationProfiles)
        self.listDeploymentStrategies = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listDeploymentStrategies)
        self.listDeployments = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listDeployments)
        self.listEnvironments = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listEnvironments)
        self.listHostedConfigurationVersions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listHostedConfigurationVersions)
        self.listTagsForResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listTagsForResource)
        self.startDeployment = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.startDeployment)
        self.stopDeployment = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.stopDeployment)
        self.tagResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.tagResource)
        self.untagResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.untagResource)
        self.updateApplication = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateApplication)
        self.updateConfigurationProfile = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateConfigurationProfile)
        self.updateDeploymentStrategy = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateDeploymentStrategy)
        self.updateEnvironment = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateEnvironment)
        self.validateConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.validateConfiguration)
    }
}
