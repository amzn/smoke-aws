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
// AppConfigOperationsReporting.swift
// AppConfigClient
//

import Foundation
import SmokeAWSCore
import AppConfigModel

/**
 Operation reporting for the AppConfigModel.
 */
public struct AppConfigOperationsReporting {
    public let createApplication: StandardSmokeAWSOperationReporting<AppConfigModelOperations>
    public let createConfigurationProfile: StandardSmokeAWSOperationReporting<AppConfigModelOperations>
    public let createDeploymentStrategy: StandardSmokeAWSOperationReporting<AppConfigModelOperations>
    public let createEnvironment: StandardSmokeAWSOperationReporting<AppConfigModelOperations>
    public let createHostedConfigurationVersion: StandardSmokeAWSOperationReporting<AppConfigModelOperations>
    public let deleteApplication: StandardSmokeAWSOperationReporting<AppConfigModelOperations>
    public let deleteConfigurationProfile: StandardSmokeAWSOperationReporting<AppConfigModelOperations>
    public let deleteDeploymentStrategy: StandardSmokeAWSOperationReporting<AppConfigModelOperations>
    public let deleteEnvironment: StandardSmokeAWSOperationReporting<AppConfigModelOperations>
    public let deleteHostedConfigurationVersion: StandardSmokeAWSOperationReporting<AppConfigModelOperations>
    public let getApplication: StandardSmokeAWSOperationReporting<AppConfigModelOperations>
    public let getConfiguration: StandardSmokeAWSOperationReporting<AppConfigModelOperations>
    public let getConfigurationProfile: StandardSmokeAWSOperationReporting<AppConfigModelOperations>
    public let getDeployment: StandardSmokeAWSOperationReporting<AppConfigModelOperations>
    public let getDeploymentStrategy: StandardSmokeAWSOperationReporting<AppConfigModelOperations>
    public let getEnvironment: StandardSmokeAWSOperationReporting<AppConfigModelOperations>
    public let getHostedConfigurationVersion: StandardSmokeAWSOperationReporting<AppConfigModelOperations>
    public let listApplications: StandardSmokeAWSOperationReporting<AppConfigModelOperations>
    public let listConfigurationProfiles: StandardSmokeAWSOperationReporting<AppConfigModelOperations>
    public let listDeploymentStrategies: StandardSmokeAWSOperationReporting<AppConfigModelOperations>
    public let listDeployments: StandardSmokeAWSOperationReporting<AppConfigModelOperations>
    public let listEnvironments: StandardSmokeAWSOperationReporting<AppConfigModelOperations>
    public let listHostedConfigurationVersions: StandardSmokeAWSOperationReporting<AppConfigModelOperations>
    public let listTagsForResource: StandardSmokeAWSOperationReporting<AppConfigModelOperations>
    public let startDeployment: StandardSmokeAWSOperationReporting<AppConfigModelOperations>
    public let stopDeployment: StandardSmokeAWSOperationReporting<AppConfigModelOperations>
    public let tagResource: StandardSmokeAWSOperationReporting<AppConfigModelOperations>
    public let untagResource: StandardSmokeAWSOperationReporting<AppConfigModelOperations>
    public let updateApplication: StandardSmokeAWSOperationReporting<AppConfigModelOperations>
    public let updateConfigurationProfile: StandardSmokeAWSOperationReporting<AppConfigModelOperations>
    public let updateDeploymentStrategy: StandardSmokeAWSOperationReporting<AppConfigModelOperations>
    public let updateEnvironment: StandardSmokeAWSOperationReporting<AppConfigModelOperations>
    public let validateConfiguration: StandardSmokeAWSOperationReporting<AppConfigModelOperations>

    public init(clientName: String, reportingConfiguration: SmokeAWSClientReportingConfiguration<AppConfigModelOperations>) {
        self.createApplication = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createApplication, configuration: reportingConfiguration)
        self.createConfigurationProfile = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createConfigurationProfile, configuration: reportingConfiguration)
        self.createDeploymentStrategy = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createDeploymentStrategy, configuration: reportingConfiguration)
        self.createEnvironment = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createEnvironment, configuration: reportingConfiguration)
        self.createHostedConfigurationVersion = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createHostedConfigurationVersion, configuration: reportingConfiguration)
        self.deleteApplication = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteApplication, configuration: reportingConfiguration)
        self.deleteConfigurationProfile = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteConfigurationProfile, configuration: reportingConfiguration)
        self.deleteDeploymentStrategy = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteDeploymentStrategy, configuration: reportingConfiguration)
        self.deleteEnvironment = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteEnvironment, configuration: reportingConfiguration)
        self.deleteHostedConfigurationVersion = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteHostedConfigurationVersion, configuration: reportingConfiguration)
        self.getApplication = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getApplication, configuration: reportingConfiguration)
        self.getConfiguration = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getConfiguration, configuration: reportingConfiguration)
        self.getConfigurationProfile = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getConfigurationProfile, configuration: reportingConfiguration)
        self.getDeployment = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getDeployment, configuration: reportingConfiguration)
        self.getDeploymentStrategy = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getDeploymentStrategy, configuration: reportingConfiguration)
        self.getEnvironment = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getEnvironment, configuration: reportingConfiguration)
        self.getHostedConfigurationVersion = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getHostedConfigurationVersion, configuration: reportingConfiguration)
        self.listApplications = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listApplications, configuration: reportingConfiguration)
        self.listConfigurationProfiles = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listConfigurationProfiles, configuration: reportingConfiguration)
        self.listDeploymentStrategies = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listDeploymentStrategies, configuration: reportingConfiguration)
        self.listDeployments = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listDeployments, configuration: reportingConfiguration)
        self.listEnvironments = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listEnvironments, configuration: reportingConfiguration)
        self.listHostedConfigurationVersions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listHostedConfigurationVersions, configuration: reportingConfiguration)
        self.listTagsForResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listTagsForResource, configuration: reportingConfiguration)
        self.startDeployment = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .startDeployment, configuration: reportingConfiguration)
        self.stopDeployment = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .stopDeployment, configuration: reportingConfiguration)
        self.tagResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .tagResource, configuration: reportingConfiguration)
        self.untagResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .untagResource, configuration: reportingConfiguration)
        self.updateApplication = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .updateApplication, configuration: reportingConfiguration)
        self.updateConfigurationProfile = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .updateConfigurationProfile, configuration: reportingConfiguration)
        self.updateDeploymentStrategy = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .updateDeploymentStrategy, configuration: reportingConfiguration)
        self.updateEnvironment = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .updateEnvironment, configuration: reportingConfiguration)
        self.validateConfiguration = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .validateConfiguration, configuration: reportingConfiguration)
    }
}
