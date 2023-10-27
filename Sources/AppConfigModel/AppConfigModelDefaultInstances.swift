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
// AppConfigModelDefaultInstances.swift
// AppConfigModel
//

import Foundation

private struct DefaultValues {
    static let tags = [:] as [String:String]
}

public extension Action {
    /**
     Default instance of the Action structure.
     */
    static let __default: AppConfigModel.Action = {
        let defaultInstance = AppConfigModel.Action(
            description: nil,
            name: nil,
            roleArn: nil,
            uri: nil)

        return defaultInstance
    }()
}

public extension ActionInvocation {
    /**
     Default instance of the ActionInvocation structure.
     */
    static let __default: AppConfigModel.ActionInvocation = {
        let defaultInstance = AppConfigModel.ActionInvocation(
            actionName: nil,
            errorCode: nil,
            errorMessage: nil,
            extensionIdentifier: nil,
            invocationId: nil,
            roleArn: nil,
            uri: nil)

        return defaultInstance
    }()
}

public extension Application {
    /**
     Default instance of the Application structure.
     */
    static let __default: AppConfigModel.Application = {
        let defaultInstance = AppConfigModel.Application(
            description: nil,
            id: nil,
            name: nil)

        return defaultInstance
    }()
}

public extension Applications {
    /**
     Default instance of the Applications structure.
     */
    static let __default: AppConfigModel.Applications = {
        let defaultInstance = AppConfigModel.Applications(
            items: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension AppliedExtension {
    /**
     Default instance of the AppliedExtension structure.
     */
    static let __default: AppConfigModel.AppliedExtension = {
        let defaultInstance = AppConfigModel.AppliedExtension(
            extensionAssociationId: nil,
            extensionId: nil,
            parameters: nil,
            versionNumber: nil)

        return defaultInstance
    }()
}

public extension BadRequestDetails {
    /**
     Default instance of the BadRequestDetails structure.
     */
    static let __default: AppConfigModel.BadRequestDetails = {
        let defaultInstance = AppConfigModel.BadRequestDetails(
            invalidConfiguration: nil)

        return defaultInstance
    }()
}

public extension BadRequestException {
    /**
     Default instance of the BadRequestException structure.
     */
    static let __default: AppConfigModel.BadRequestException = {
        let defaultInstance = AppConfigModel.BadRequestException(
            details: nil,
            message: nil,
            reason: nil)

        return defaultInstance
    }()
}

public extension Configuration {
    /**
     Default instance of the Configuration structure.
     */
    static let __default: AppConfigModel.Configuration = {
        let defaultInstance = AppConfigModel.Configuration(
            configurationVersion: nil,
            content: nil,
            contentType: nil)

        return defaultInstance
    }()
}

public extension ConfigurationProfile {
    /**
     Default instance of the ConfigurationProfile structure.
     */
    static let __default: AppConfigModel.ConfigurationProfile = {
        let defaultInstance = AppConfigModel.ConfigurationProfile(
            applicationId: nil,
            description: nil,
            id: nil,
            kmsKeyArn: nil,
            kmsKeyIdentifier: nil,
            locationUri: nil,
            name: nil,
            retrievalRoleArn: nil,
            type: nil,
            validators: nil)

        return defaultInstance
    }()
}

public extension ConfigurationProfileSummary {
    /**
     Default instance of the ConfigurationProfileSummary structure.
     */
    static let __default: AppConfigModel.ConfigurationProfileSummary = {
        let defaultInstance = AppConfigModel.ConfigurationProfileSummary(
            applicationId: nil,
            id: nil,
            locationUri: nil,
            name: nil,
            type: nil,
            validatorTypes: nil)

        return defaultInstance
    }()
}

public extension ConfigurationProfiles {
    /**
     Default instance of the ConfigurationProfiles structure.
     */
    static let __default: AppConfigModel.ConfigurationProfiles = {
        let defaultInstance = AppConfigModel.ConfigurationProfiles(
            items: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ConflictException {
    /**
     Default instance of the ConflictException structure.
     */
    static let __default: AppConfigModel.ConflictException = {
        let defaultInstance = AppConfigModel.ConflictException(
            message: nil)

        return defaultInstance
    }()
}

public extension CreateApplicationRequest {
    /**
     Default instance of the CreateApplicationRequest structure.
     */
    static let __default: AppConfigModel.CreateApplicationRequest = {
        let defaultInstance = AppConfigModel.CreateApplicationRequest(
            description: nil,
            name: "0",
            tags: nil)

        return defaultInstance
    }()
}

public extension CreateConfigurationProfileRequest {
    /**
     Default instance of the CreateConfigurationProfileRequest structure.
     */
    static let __default: AppConfigModel.CreateConfigurationProfileRequest = {
        let defaultInstance = AppConfigModel.CreateConfigurationProfileRequest(
            applicationId: "",
            description: nil,
            kmsKeyIdentifier: nil,
            locationUri: "0",
            name: "0",
            retrievalRoleArn: nil,
            tags: nil,
            type: nil,
            validators: nil)

        return defaultInstance
    }()
}

public extension CreateDeploymentStrategyRequest {
    /**
     Default instance of the CreateDeploymentStrategyRequest structure.
     */
    static let __default: AppConfigModel.CreateDeploymentStrategyRequest = {
        let defaultInstance = AppConfigModel.CreateDeploymentStrategyRequest(
            deploymentDurationInMinutes: 0,
            description: nil,
            finalBakeTimeInMinutes: nil,
            growthFactor: 0.0,
            growthType: nil,
            name: "0",
            replicateTo: nil,
            tags: nil)

        return defaultInstance
    }()
}

public extension CreateEnvironmentRequest {
    /**
     Default instance of the CreateEnvironmentRequest structure.
     */
    static let __default: AppConfigModel.CreateEnvironmentRequest = {
        let defaultInstance = AppConfigModel.CreateEnvironmentRequest(
            applicationId: "",
            description: nil,
            monitors: nil,
            name: "0",
            tags: nil)

        return defaultInstance
    }()
}

public extension CreateExtensionAssociationRequest {
    /**
     Default instance of the CreateExtensionAssociationRequest structure.
     */
    static let __default: AppConfigModel.CreateExtensionAssociationRequest = {
        let defaultInstance = AppConfigModel.CreateExtensionAssociationRequest(
            extensionIdentifier: "0",
            extensionVersionNumber: nil,
            parameters: nil,
            resourceIdentifier: "0",
            tags: nil)

        return defaultInstance
    }()
}

public extension CreateExtensionRequest {
    /**
     Default instance of the CreateExtensionRequest structure.
     */
    static let __default: AppConfigModel.CreateExtensionRequest = {
        let defaultInstance = AppConfigModel.CreateExtensionRequest(
            actions: [.onDeploymentBaking: [Action.__default]],
            description: nil,
            latestVersionNumber: nil,
            name: "",
            parameters: nil,
            tags: nil)

        return defaultInstance
    }()
}

public extension CreateHostedConfigurationVersionRequest {
    /**
     Default instance of the CreateHostedConfigurationVersionRequest structure.
     */
    static let __default: AppConfigModel.CreateHostedConfigurationVersionRequest = {
        let defaultInstance = AppConfigModel.CreateHostedConfigurationVersionRequest(
            applicationId: "",
            configurationProfileId: "",
            content: Data(),
            contentType: "0",
            description: nil,
            latestVersionNumber: nil,
            versionLabel: nil)

        return defaultInstance
    }()
}

public extension DeleteApplicationRequest {
    /**
     Default instance of the DeleteApplicationRequest structure.
     */
    static let __default: AppConfigModel.DeleteApplicationRequest = {
        let defaultInstance = AppConfigModel.DeleteApplicationRequest(
            applicationId: "")

        return defaultInstance
    }()
}

public extension DeleteConfigurationProfileRequest {
    /**
     Default instance of the DeleteConfigurationProfileRequest structure.
     */
    static let __default: AppConfigModel.DeleteConfigurationProfileRequest = {
        let defaultInstance = AppConfigModel.DeleteConfigurationProfileRequest(
            applicationId: "",
            configurationProfileId: "")

        return defaultInstance
    }()
}

public extension DeleteDeploymentStrategyRequest {
    /**
     Default instance of the DeleteDeploymentStrategyRequest structure.
     */
    static let __default: AppConfigModel.DeleteDeploymentStrategyRequest = {
        let defaultInstance = AppConfigModel.DeleteDeploymentStrategyRequest(
            deploymentStrategyId: "")

        return defaultInstance
    }()
}

public extension DeleteEnvironmentRequest {
    /**
     Default instance of the DeleteEnvironmentRequest structure.
     */
    static let __default: AppConfigModel.DeleteEnvironmentRequest = {
        let defaultInstance = AppConfigModel.DeleteEnvironmentRequest(
            applicationId: "",
            environmentId: "")

        return defaultInstance
    }()
}

public extension DeleteExtensionAssociationRequest {
    /**
     Default instance of the DeleteExtensionAssociationRequest structure.
     */
    static let __default: AppConfigModel.DeleteExtensionAssociationRequest = {
        let defaultInstance = AppConfigModel.DeleteExtensionAssociationRequest(
            extensionAssociationId: "")

        return defaultInstance
    }()
}

public extension DeleteExtensionRequest {
    /**
     Default instance of the DeleteExtensionRequest structure.
     */
    static let __default: AppConfigModel.DeleteExtensionRequest = {
        let defaultInstance = AppConfigModel.DeleteExtensionRequest(
            extensionIdentifier: "0",
            versionNumber: nil)

        return defaultInstance
    }()
}

public extension DeleteHostedConfigurationVersionRequest {
    /**
     Default instance of the DeleteHostedConfigurationVersionRequest structure.
     */
    static let __default: AppConfigModel.DeleteHostedConfigurationVersionRequest = {
        let defaultInstance = AppConfigModel.DeleteHostedConfigurationVersionRequest(
            applicationId: "",
            configurationProfileId: "",
            versionNumber: 0)

        return defaultInstance
    }()
}

public extension Deployment {
    /**
     Default instance of the Deployment structure.
     */
    static let __default: AppConfigModel.Deployment = {
        let defaultInstance = AppConfigModel.Deployment(
            applicationId: nil,
            appliedExtensions: nil,
            completedAt: nil,
            configurationLocationUri: nil,
            configurationName: nil,
            configurationProfileId: nil,
            configurationVersion: nil,
            deploymentDurationInMinutes: nil,
            deploymentNumber: nil,
            deploymentStrategyId: nil,
            description: nil,
            environmentId: nil,
            eventLog: nil,
            finalBakeTimeInMinutes: nil,
            growthFactor: nil,
            growthType: nil,
            kmsKeyArn: nil,
            kmsKeyIdentifier: nil,
            percentageComplete: nil,
            startedAt: nil,
            state: nil,
            versionLabel: nil)

        return defaultInstance
    }()
}

public extension DeploymentEvent {
    /**
     Default instance of the DeploymentEvent structure.
     */
    static let __default: AppConfigModel.DeploymentEvent = {
        let defaultInstance = AppConfigModel.DeploymentEvent(
            actionInvocations: nil,
            description: nil,
            eventType: nil,
            occurredAt: nil,
            triggeredBy: nil)

        return defaultInstance
    }()
}

public extension DeploymentStrategies {
    /**
     Default instance of the DeploymentStrategies structure.
     */
    static let __default: AppConfigModel.DeploymentStrategies = {
        let defaultInstance = AppConfigModel.DeploymentStrategies(
            items: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DeploymentStrategy {
    /**
     Default instance of the DeploymentStrategy structure.
     */
    static let __default: AppConfigModel.DeploymentStrategy = {
        let defaultInstance = AppConfigModel.DeploymentStrategy(
            deploymentDurationInMinutes: nil,
            description: nil,
            finalBakeTimeInMinutes: nil,
            growthFactor: nil,
            growthType: nil,
            id: nil,
            name: nil,
            replicateTo: nil)

        return defaultInstance
    }()
}

public extension DeploymentSummary {
    /**
     Default instance of the DeploymentSummary structure.
     */
    static let __default: AppConfigModel.DeploymentSummary = {
        let defaultInstance = AppConfigModel.DeploymentSummary(
            completedAt: nil,
            configurationName: nil,
            configurationVersion: nil,
            deploymentDurationInMinutes: nil,
            deploymentNumber: nil,
            finalBakeTimeInMinutes: nil,
            growthFactor: nil,
            growthType: nil,
            percentageComplete: nil,
            startedAt: nil,
            state: nil,
            versionLabel: nil)

        return defaultInstance
    }()
}

public extension Deployments {
    /**
     Default instance of the Deployments structure.
     */
    static let __default: AppConfigModel.Deployments = {
        let defaultInstance = AppConfigModel.Deployments(
            items: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension Environment {
    /**
     Default instance of the Environment structure.
     */
    static let __default: AppConfigModel.Environment = {
        let defaultInstance = AppConfigModel.Environment(
            applicationId: nil,
            description: nil,
            id: nil,
            monitors: nil,
            name: nil,
            state: nil)

        return defaultInstance
    }()
}

public extension Environments {
    /**
     Default instance of the Environments structure.
     */
    static let __default: AppConfigModel.Environments = {
        let defaultInstance = AppConfigModel.Environments(
            items: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension Extension {
    /**
     Default instance of the Extension structure.
     */
    static let __default: AppConfigModel.Extension = {
        let defaultInstance = AppConfigModel.Extension(
            actions: nil,
            arn: nil,
            description: nil,
            id: nil,
            name: nil,
            parameters: nil,
            versionNumber: nil)

        return defaultInstance
    }()
}

public extension ExtensionAssociation {
    /**
     Default instance of the ExtensionAssociation structure.
     */
    static let __default: AppConfigModel.ExtensionAssociation = {
        let defaultInstance = AppConfigModel.ExtensionAssociation(
            arn: nil,
            extensionArn: nil,
            extensionVersionNumber: nil,
            id: nil,
            parameters: nil,
            resourceArn: nil)

        return defaultInstance
    }()
}

public extension ExtensionAssociationSummary {
    /**
     Default instance of the ExtensionAssociationSummary structure.
     */
    static let __default: AppConfigModel.ExtensionAssociationSummary = {
        let defaultInstance = AppConfigModel.ExtensionAssociationSummary(
            extensionArn: nil,
            id: nil,
            resourceArn: nil)

        return defaultInstance
    }()
}

public extension ExtensionAssociations {
    /**
     Default instance of the ExtensionAssociations structure.
     */
    static let __default: AppConfigModel.ExtensionAssociations = {
        let defaultInstance = AppConfigModel.ExtensionAssociations(
            items: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ExtensionSummary {
    /**
     Default instance of the ExtensionSummary structure.
     */
    static let __default: AppConfigModel.ExtensionSummary = {
        let defaultInstance = AppConfigModel.ExtensionSummary(
            arn: nil,
            description: nil,
            id: nil,
            name: nil,
            versionNumber: nil)

        return defaultInstance
    }()
}

public extension Extensions {
    /**
     Default instance of the Extensions structure.
     */
    static let __default: AppConfigModel.Extensions = {
        let defaultInstance = AppConfigModel.Extensions(
            items: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension GetApplicationRequest {
    /**
     Default instance of the GetApplicationRequest structure.
     */
    static let __default: AppConfigModel.GetApplicationRequest = {
        let defaultInstance = AppConfigModel.GetApplicationRequest(
            applicationId: "")

        return defaultInstance
    }()
}

public extension GetConfigurationProfileRequest {
    /**
     Default instance of the GetConfigurationProfileRequest structure.
     */
    static let __default: AppConfigModel.GetConfigurationProfileRequest = {
        let defaultInstance = AppConfigModel.GetConfigurationProfileRequest(
            applicationId: "",
            configurationProfileId: "")

        return defaultInstance
    }()
}

public extension GetConfigurationRequest {
    /**
     Default instance of the GetConfigurationRequest structure.
     */
    static let __default: AppConfigModel.GetConfigurationRequest = {
        let defaultInstance = AppConfigModel.GetConfigurationRequest(
            application: "0",
            clientConfigurationVersion: nil,
            clientId: "0",
            configuration: "0",
            environment: "0")

        return defaultInstance
    }()
}

public extension GetDeploymentRequest {
    /**
     Default instance of the GetDeploymentRequest structure.
     */
    static let __default: AppConfigModel.GetDeploymentRequest = {
        let defaultInstance = AppConfigModel.GetDeploymentRequest(
            applicationId: "",
            deploymentNumber: 0,
            environmentId: "")

        return defaultInstance
    }()
}

public extension GetDeploymentStrategyRequest {
    /**
     Default instance of the GetDeploymentStrategyRequest structure.
     */
    static let __default: AppConfigModel.GetDeploymentStrategyRequest = {
        let defaultInstance = AppConfigModel.GetDeploymentStrategyRequest(
            deploymentStrategyId: "")

        return defaultInstance
    }()
}

public extension GetEnvironmentRequest {
    /**
     Default instance of the GetEnvironmentRequest structure.
     */
    static let __default: AppConfigModel.GetEnvironmentRequest = {
        let defaultInstance = AppConfigModel.GetEnvironmentRequest(
            applicationId: "",
            environmentId: "")

        return defaultInstance
    }()
}

public extension GetExtensionAssociationRequest {
    /**
     Default instance of the GetExtensionAssociationRequest structure.
     */
    static let __default: AppConfigModel.GetExtensionAssociationRequest = {
        let defaultInstance = AppConfigModel.GetExtensionAssociationRequest(
            extensionAssociationId: "")

        return defaultInstance
    }()
}

public extension GetExtensionRequest {
    /**
     Default instance of the GetExtensionRequest structure.
     */
    static let __default: AppConfigModel.GetExtensionRequest = {
        let defaultInstance = AppConfigModel.GetExtensionRequest(
            extensionIdentifier: "0",
            versionNumber: nil)

        return defaultInstance
    }()
}

public extension GetHostedConfigurationVersionRequest {
    /**
     Default instance of the GetHostedConfigurationVersionRequest structure.
     */
    static let __default: AppConfigModel.GetHostedConfigurationVersionRequest = {
        let defaultInstance = AppConfigModel.GetHostedConfigurationVersionRequest(
            applicationId: "",
            configurationProfileId: "",
            versionNumber: 0)

        return defaultInstance
    }()
}

public extension HostedConfigurationVersion {
    /**
     Default instance of the HostedConfigurationVersion structure.
     */
    static let __default: AppConfigModel.HostedConfigurationVersion = {
        let defaultInstance = AppConfigModel.HostedConfigurationVersion(
            applicationId: nil,
            configurationProfileId: nil,
            content: nil,
            contentType: nil,
            description: nil,
            kmsKeyArn: nil,
            versionLabel: nil,
            versionNumber: nil)

        return defaultInstance
    }()
}

public extension HostedConfigurationVersionSummary {
    /**
     Default instance of the HostedConfigurationVersionSummary structure.
     */
    static let __default: AppConfigModel.HostedConfigurationVersionSummary = {
        let defaultInstance = AppConfigModel.HostedConfigurationVersionSummary(
            applicationId: nil,
            configurationProfileId: nil,
            contentType: nil,
            description: nil,
            kmsKeyArn: nil,
            versionLabel: nil,
            versionNumber: nil)

        return defaultInstance
    }()
}

public extension HostedConfigurationVersions {
    /**
     Default instance of the HostedConfigurationVersions structure.
     */
    static let __default: AppConfigModel.HostedConfigurationVersions = {
        let defaultInstance = AppConfigModel.HostedConfigurationVersions(
            items: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension InternalServerException {
    /**
     Default instance of the InternalServerException structure.
     */
    static let __default: AppConfigModel.InternalServerException = {
        let defaultInstance = AppConfigModel.InternalServerException(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidConfigurationDetail {
    /**
     Default instance of the InvalidConfigurationDetail structure.
     */
    static let __default: AppConfigModel.InvalidConfigurationDetail = {
        let defaultInstance = AppConfigModel.InvalidConfigurationDetail(
            constraint: nil,
            location: nil,
            reason: nil,
            type: nil,
            value: nil)

        return defaultInstance
    }()
}

public extension ListApplicationsRequest {
    /**
     Default instance of the ListApplicationsRequest structure.
     */
    static let __default: AppConfigModel.ListApplicationsRequest = {
        let defaultInstance = AppConfigModel.ListApplicationsRequest(
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListConfigurationProfilesRequest {
    /**
     Default instance of the ListConfigurationProfilesRequest structure.
     */
    static let __default: AppConfigModel.ListConfigurationProfilesRequest = {
        let defaultInstance = AppConfigModel.ListConfigurationProfilesRequest(
            applicationId: "",
            maxResults: nil,
            nextToken: nil,
            type: nil)

        return defaultInstance
    }()
}

public extension ListDeploymentStrategiesRequest {
    /**
     Default instance of the ListDeploymentStrategiesRequest structure.
     */
    static let __default: AppConfigModel.ListDeploymentStrategiesRequest = {
        let defaultInstance = AppConfigModel.ListDeploymentStrategiesRequest(
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListDeploymentsRequest {
    /**
     Default instance of the ListDeploymentsRequest structure.
     */
    static let __default: AppConfigModel.ListDeploymentsRequest = {
        let defaultInstance = AppConfigModel.ListDeploymentsRequest(
            applicationId: "",
            environmentId: "",
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListEnvironmentsRequest {
    /**
     Default instance of the ListEnvironmentsRequest structure.
     */
    static let __default: AppConfigModel.ListEnvironmentsRequest = {
        let defaultInstance = AppConfigModel.ListEnvironmentsRequest(
            applicationId: "",
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListExtensionAssociationsRequest {
    /**
     Default instance of the ListExtensionAssociationsRequest structure.
     */
    static let __default: AppConfigModel.ListExtensionAssociationsRequest = {
        let defaultInstance = AppConfigModel.ListExtensionAssociationsRequest(
            extensionIdentifier: nil,
            extensionVersionNumber: nil,
            maxResults: nil,
            nextToken: nil,
            resourceIdentifier: nil)

        return defaultInstance
    }()
}

public extension ListExtensionsRequest {
    /**
     Default instance of the ListExtensionsRequest structure.
     */
    static let __default: AppConfigModel.ListExtensionsRequest = {
        let defaultInstance = AppConfigModel.ListExtensionsRequest(
            maxResults: nil,
            name: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListHostedConfigurationVersionsRequest {
    /**
     Default instance of the ListHostedConfigurationVersionsRequest structure.
     */
    static let __default: AppConfigModel.ListHostedConfigurationVersionsRequest = {
        let defaultInstance = AppConfigModel.ListHostedConfigurationVersionsRequest(
            applicationId: "",
            configurationProfileId: "",
            maxResults: nil,
            nextToken: nil,
            versionLabel: nil)

        return defaultInstance
    }()
}

public extension ListTagsForResourceRequest {
    /**
     Default instance of the ListTagsForResourceRequest structure.
     */
    static let __default: AppConfigModel.ListTagsForResourceRequest = {
        let defaultInstance = AppConfigModel.ListTagsForResourceRequest(
            resourceArn: "01234567890123456789")

        return defaultInstance
    }()
}

public extension Monitor {
    /**
     Default instance of the Monitor structure.
     */
    static let __default: AppConfigModel.Monitor = {
        let defaultInstance = AppConfigModel.Monitor(
            alarmArn: "0",
            alarmRoleArn: nil)

        return defaultInstance
    }()
}

public extension Parameter {
    /**
     Default instance of the Parameter structure.
     */
    static let __default: AppConfigModel.Parameter = {
        let defaultInstance = AppConfigModel.Parameter(
            description: nil,
            required: nil)

        return defaultInstance
    }()
}

public extension PayloadTooLargeException {
    /**
     Default instance of the PayloadTooLargeException structure.
     */
    static let __default: AppConfigModel.PayloadTooLargeException = {
        let defaultInstance = AppConfigModel.PayloadTooLargeException(
            limit: nil,
            measure: nil,
            message: nil,
            size: nil)

        return defaultInstance
    }()
}

public extension ResourceNotFoundException {
    /**
     Default instance of the ResourceNotFoundException structure.
     */
    static let __default: AppConfigModel.ResourceNotFoundException = {
        let defaultInstance = AppConfigModel.ResourceNotFoundException(
            message: nil,
            resourceName: nil)

        return defaultInstance
    }()
}

public extension ResourceTags {
    /**
     Default instance of the ResourceTags structure.
     */
    static let __default: AppConfigModel.ResourceTags = {
        let defaultInstance = AppConfigModel.ResourceTags(
            tags: nil)

        return defaultInstance
    }()
}

public extension ServiceQuotaExceededException {
    /**
     Default instance of the ServiceQuotaExceededException structure.
     */
    static let __default: AppConfigModel.ServiceQuotaExceededException = {
        let defaultInstance = AppConfigModel.ServiceQuotaExceededException(
            message: nil)

        return defaultInstance
    }()
}

public extension StartDeploymentRequest {
    /**
     Default instance of the StartDeploymentRequest structure.
     */
    static let __default: AppConfigModel.StartDeploymentRequest = {
        let defaultInstance = AppConfigModel.StartDeploymentRequest(
            applicationId: "",
            configurationProfileId: "",
            configurationVersion: "0",
            deploymentStrategyId: "",
            description: nil,
            environmentId: "",
            kmsKeyIdentifier: nil,
            tags: nil)

        return defaultInstance
    }()
}

public extension StopDeploymentRequest {
    /**
     Default instance of the StopDeploymentRequest structure.
     */
    static let __default: AppConfigModel.StopDeploymentRequest = {
        let defaultInstance = AppConfigModel.StopDeploymentRequest(
            applicationId: "",
            deploymentNumber: 0,
            environmentId: "")

        return defaultInstance
    }()
}

public extension TagResourceRequest {
    /**
     Default instance of the TagResourceRequest structure.
     */
    static let __default: AppConfigModel.TagResourceRequest = {
        let defaultInstance = AppConfigModel.TagResourceRequest(
            resourceArn: "01234567890123456789",
            tags: DefaultValues.tags)

        return defaultInstance
    }()
}

public extension UntagResourceRequest {
    /**
     Default instance of the UntagResourceRequest structure.
     */
    static let __default: AppConfigModel.UntagResourceRequest = {
        let defaultInstance = AppConfigModel.UntagResourceRequest(
            resourceArn: "01234567890123456789",
            tagKeys: [])

        return defaultInstance
    }()
}

public extension UpdateApplicationRequest {
    /**
     Default instance of the UpdateApplicationRequest structure.
     */
    static let __default: AppConfigModel.UpdateApplicationRequest = {
        let defaultInstance = AppConfigModel.UpdateApplicationRequest(
            applicationId: "",
            description: nil,
            name: nil)

        return defaultInstance
    }()
}

public extension UpdateConfigurationProfileRequest {
    /**
     Default instance of the UpdateConfigurationProfileRequest structure.
     */
    static let __default: AppConfigModel.UpdateConfigurationProfileRequest = {
        let defaultInstance = AppConfigModel.UpdateConfigurationProfileRequest(
            applicationId: "",
            configurationProfileId: "",
            description: nil,
            kmsKeyIdentifier: nil,
            name: nil,
            retrievalRoleArn: nil,
            validators: nil)

        return defaultInstance
    }()
}

public extension UpdateDeploymentStrategyRequest {
    /**
     Default instance of the UpdateDeploymentStrategyRequest structure.
     */
    static let __default: AppConfigModel.UpdateDeploymentStrategyRequest = {
        let defaultInstance = AppConfigModel.UpdateDeploymentStrategyRequest(
            deploymentDurationInMinutes: nil,
            deploymentStrategyId: "",
            description: nil,
            finalBakeTimeInMinutes: nil,
            growthFactor: nil,
            growthType: nil)

        return defaultInstance
    }()
}

public extension UpdateEnvironmentRequest {
    /**
     Default instance of the UpdateEnvironmentRequest structure.
     */
    static let __default: AppConfigModel.UpdateEnvironmentRequest = {
        let defaultInstance = AppConfigModel.UpdateEnvironmentRequest(
            applicationId: "",
            description: nil,
            environmentId: "",
            monitors: nil,
            name: nil)

        return defaultInstance
    }()
}

public extension UpdateExtensionAssociationRequest {
    /**
     Default instance of the UpdateExtensionAssociationRequest structure.
     */
    static let __default: AppConfigModel.UpdateExtensionAssociationRequest = {
        let defaultInstance = AppConfigModel.UpdateExtensionAssociationRequest(
            extensionAssociationId: "",
            parameters: nil)

        return defaultInstance
    }()
}

public extension UpdateExtensionRequest {
    /**
     Default instance of the UpdateExtensionRequest structure.
     */
    static let __default: AppConfigModel.UpdateExtensionRequest = {
        let defaultInstance = AppConfigModel.UpdateExtensionRequest(
            actions: nil,
            description: nil,
            extensionIdentifier: "0",
            parameters: nil,
            versionNumber: nil)

        return defaultInstance
    }()
}

public extension ValidateConfigurationRequest {
    /**
     Default instance of the ValidateConfigurationRequest structure.
     */
    static let __default: AppConfigModel.ValidateConfigurationRequest = {
        let defaultInstance = AppConfigModel.ValidateConfigurationRequest(
            applicationId: "",
            configurationProfileId: "",
            configurationVersion: "0")

        return defaultInstance
    }()
}

public extension Validator {
    /**
     Default instance of the Validator structure.
     */
    static let __default: AppConfigModel.Validator = {
        let defaultInstance = AppConfigModel.Validator(
            content: "",
            type: .__default)

        return defaultInstance
    }()
}
