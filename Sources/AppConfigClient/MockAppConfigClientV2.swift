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
// MockAppConfigClientV2.swift
// AppConfigClient
//

import Foundation
import AppConfigModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the AppConfig service by default returns the `__default` property of its return type.
 */
public struct MockAppConfigClientV2: AppConfigClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    let createApplicationOverride: CreateApplicationFunctionType?
    let createConfigurationProfileOverride: CreateConfigurationProfileFunctionType?
    let createDeploymentStrategyOverride: CreateDeploymentStrategyFunctionType?
    let createEnvironmentOverride: CreateEnvironmentFunctionType?
    let createExtensionOverride: CreateExtensionFunctionType?
    let createExtensionAssociationOverride: CreateExtensionAssociationFunctionType?
    let createHostedConfigurationVersionOverride: CreateHostedConfigurationVersionFunctionType?
    let deleteApplicationOverride: DeleteApplicationFunctionType?
    let deleteConfigurationProfileOverride: DeleteConfigurationProfileFunctionType?
    let deleteDeploymentStrategyOverride: DeleteDeploymentStrategyFunctionType?
    let deleteEnvironmentOverride: DeleteEnvironmentFunctionType?
    let deleteExtensionOverride: DeleteExtensionFunctionType?
    let deleteExtensionAssociationOverride: DeleteExtensionAssociationFunctionType?
    let deleteHostedConfigurationVersionOverride: DeleteHostedConfigurationVersionFunctionType?
    let getApplicationOverride: GetApplicationFunctionType?
    let getConfigurationOverride: GetConfigurationFunctionType?
    let getConfigurationProfileOverride: GetConfigurationProfileFunctionType?
    let getDeploymentOverride: GetDeploymentFunctionType?
    let getDeploymentStrategyOverride: GetDeploymentStrategyFunctionType?
    let getEnvironmentOverride: GetEnvironmentFunctionType?
    let getExtensionOverride: GetExtensionFunctionType?
    let getExtensionAssociationOverride: GetExtensionAssociationFunctionType?
    let getHostedConfigurationVersionOverride: GetHostedConfigurationVersionFunctionType?
    let listApplicationsOverride: ListApplicationsFunctionType?
    let listConfigurationProfilesOverride: ListConfigurationProfilesFunctionType?
    let listDeploymentStrategiesOverride: ListDeploymentStrategiesFunctionType?
    let listDeploymentsOverride: ListDeploymentsFunctionType?
    let listEnvironmentsOverride: ListEnvironmentsFunctionType?
    let listExtensionAssociationsOverride: ListExtensionAssociationsFunctionType?
    let listExtensionsOverride: ListExtensionsFunctionType?
    let listHostedConfigurationVersionsOverride: ListHostedConfigurationVersionsFunctionType?
    let listTagsForResourceOverride: ListTagsForResourceFunctionType?
    let startDeploymentOverride: StartDeploymentFunctionType?
    let stopDeploymentOverride: StopDeploymentFunctionType?
    let tagResourceOverride: TagResourceFunctionType?
    let untagResourceOverride: UntagResourceFunctionType?
    let updateApplicationOverride: UpdateApplicationFunctionType?
    let updateConfigurationProfileOverride: UpdateConfigurationProfileFunctionType?
    let updateDeploymentStrategyOverride: UpdateDeploymentStrategyFunctionType?
    let updateEnvironmentOverride: UpdateEnvironmentFunctionType?
    let updateExtensionOverride: UpdateExtensionFunctionType?
    let updateExtensionAssociationOverride: UpdateExtensionAssociationFunctionType?
    let validateConfigurationOverride: ValidateConfigurationFunctionType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            createApplication: CreateApplicationFunctionType? = nil,
            createConfigurationProfile: CreateConfigurationProfileFunctionType? = nil,
            createDeploymentStrategy: CreateDeploymentStrategyFunctionType? = nil,
            createEnvironment: CreateEnvironmentFunctionType? = nil,
            createExtension: CreateExtensionFunctionType? = nil,
            createExtensionAssociation: CreateExtensionAssociationFunctionType? = nil,
            createHostedConfigurationVersion: CreateHostedConfigurationVersionFunctionType? = nil,
            deleteApplication: DeleteApplicationFunctionType? = nil,
            deleteConfigurationProfile: DeleteConfigurationProfileFunctionType? = nil,
            deleteDeploymentStrategy: DeleteDeploymentStrategyFunctionType? = nil,
            deleteEnvironment: DeleteEnvironmentFunctionType? = nil,
            deleteExtension: DeleteExtensionFunctionType? = nil,
            deleteExtensionAssociation: DeleteExtensionAssociationFunctionType? = nil,
            deleteHostedConfigurationVersion: DeleteHostedConfigurationVersionFunctionType? = nil,
            getApplication: GetApplicationFunctionType? = nil,
            getConfiguration: GetConfigurationFunctionType? = nil,
            getConfigurationProfile: GetConfigurationProfileFunctionType? = nil,
            getDeployment: GetDeploymentFunctionType? = nil,
            getDeploymentStrategy: GetDeploymentStrategyFunctionType? = nil,
            getEnvironment: GetEnvironmentFunctionType? = nil,
            getExtension: GetExtensionFunctionType? = nil,
            getExtensionAssociation: GetExtensionAssociationFunctionType? = nil,
            getHostedConfigurationVersion: GetHostedConfigurationVersionFunctionType? = nil,
            listApplications: ListApplicationsFunctionType? = nil,
            listConfigurationProfiles: ListConfigurationProfilesFunctionType? = nil,
            listDeploymentStrategies: ListDeploymentStrategiesFunctionType? = nil,
            listDeployments: ListDeploymentsFunctionType? = nil,
            listEnvironments: ListEnvironmentsFunctionType? = nil,
            listExtensionAssociations: ListExtensionAssociationsFunctionType? = nil,
            listExtensions: ListExtensionsFunctionType? = nil,
            listHostedConfigurationVersions: ListHostedConfigurationVersionsFunctionType? = nil,
            listTagsForResource: ListTagsForResourceFunctionType? = nil,
            startDeployment: StartDeploymentFunctionType? = nil,
            stopDeployment: StopDeploymentFunctionType? = nil,
            tagResource: TagResourceFunctionType? = nil,
            untagResource: UntagResourceFunctionType? = nil,
            updateApplication: UpdateApplicationFunctionType? = nil,
            updateConfigurationProfile: UpdateConfigurationProfileFunctionType? = nil,
            updateDeploymentStrategy: UpdateDeploymentStrategyFunctionType? = nil,
            updateEnvironment: UpdateEnvironmentFunctionType? = nil,
            updateExtension: UpdateExtensionFunctionType? = nil,
            updateExtensionAssociation: UpdateExtensionAssociationFunctionType? = nil,
            validateConfiguration: ValidateConfigurationFunctionType? = nil) {
        self.createApplicationOverride = createApplication
        self.createConfigurationProfileOverride = createConfigurationProfile
        self.createDeploymentStrategyOverride = createDeploymentStrategy
        self.createEnvironmentOverride = createEnvironment
        self.createExtensionOverride = createExtension
        self.createExtensionAssociationOverride = createExtensionAssociation
        self.createHostedConfigurationVersionOverride = createHostedConfigurationVersion
        self.deleteApplicationOverride = deleteApplication
        self.deleteConfigurationProfileOverride = deleteConfigurationProfile
        self.deleteDeploymentStrategyOverride = deleteDeploymentStrategy
        self.deleteEnvironmentOverride = deleteEnvironment
        self.deleteExtensionOverride = deleteExtension
        self.deleteExtensionAssociationOverride = deleteExtensionAssociation
        self.deleteHostedConfigurationVersionOverride = deleteHostedConfigurationVersion
        self.getApplicationOverride = getApplication
        self.getConfigurationOverride = getConfiguration
        self.getConfigurationProfileOverride = getConfigurationProfile
        self.getDeploymentOverride = getDeployment
        self.getDeploymentStrategyOverride = getDeploymentStrategy
        self.getEnvironmentOverride = getEnvironment
        self.getExtensionOverride = getExtension
        self.getExtensionAssociationOverride = getExtensionAssociation
        self.getHostedConfigurationVersionOverride = getHostedConfigurationVersion
        self.listApplicationsOverride = listApplications
        self.listConfigurationProfilesOverride = listConfigurationProfiles
        self.listDeploymentStrategiesOverride = listDeploymentStrategies
        self.listDeploymentsOverride = listDeployments
        self.listEnvironmentsOverride = listEnvironments
        self.listExtensionAssociationsOverride = listExtensionAssociations
        self.listExtensionsOverride = listExtensions
        self.listHostedConfigurationVersionsOverride = listHostedConfigurationVersions
        self.listTagsForResourceOverride = listTagsForResource
        self.startDeploymentOverride = startDeployment
        self.stopDeploymentOverride = stopDeployment
        self.tagResourceOverride = tagResource
        self.untagResourceOverride = untagResource
        self.updateApplicationOverride = updateApplication
        self.updateConfigurationProfileOverride = updateConfigurationProfile
        self.updateDeploymentStrategyOverride = updateDeploymentStrategy
        self.updateEnvironmentOverride = updateEnvironment
        self.updateExtensionOverride = updateExtension
        self.updateExtensionAssociationOverride = updateExtensionAssociation
        self.validateConfigurationOverride = validateConfiguration
    }

    /**
     Invokes the CreateApplication operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateApplicationRequest object being passed to this operation.
     - Returns: The Application object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, serviceQuotaExceeded.
     */
    public func createApplication(
            input: AppConfigModel.CreateApplicationRequest) async throws -> AppConfigModel.Application {
        if let createApplicationOverride = createApplicationOverride {
            return try await createApplicationOverride(input)
        }

        return Application.__default
    }

    /**
     Invokes the CreateConfigurationProfile operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateConfigurationProfileRequest object being passed to this operation.
     - Returns: The ConfigurationProfile object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound, serviceQuotaExceeded.
     */
    public func createConfigurationProfile(
            input: AppConfigModel.CreateConfigurationProfileRequest) async throws -> AppConfigModel.ConfigurationProfile {
        if let createConfigurationProfileOverride = createConfigurationProfileOverride {
            return try await createConfigurationProfileOverride(input)
        }

        return ConfigurationProfile.__default
    }

    /**
     Invokes the CreateDeploymentStrategy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateDeploymentStrategyRequest object being passed to this operation.
     - Returns: The DeploymentStrategy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, serviceQuotaExceeded.
     */
    public func createDeploymentStrategy(
            input: AppConfigModel.CreateDeploymentStrategyRequest) async throws -> AppConfigModel.DeploymentStrategy {
        if let createDeploymentStrategyOverride = createDeploymentStrategyOverride {
            return try await createDeploymentStrategyOverride(input)
        }

        return DeploymentStrategy.__default
    }

    /**
     Invokes the CreateEnvironment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateEnvironmentRequest object being passed to this operation.
     - Returns: The Environment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound, serviceQuotaExceeded.
     */
    public func createEnvironment(
            input: AppConfigModel.CreateEnvironmentRequest) async throws -> AppConfigModel.Environment {
        if let createEnvironmentOverride = createEnvironmentOverride {
            return try await createEnvironmentOverride(input)
        }

        return Environment.__default
    }

    /**
     Invokes the CreateExtension operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateExtensionRequest object being passed to this operation.
     - Returns: The Extension object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, conflict, internalServer, serviceQuotaExceeded.
     */
    public func createExtension(
            input: AppConfigModel.CreateExtensionRequest) async throws -> AppConfigModel.Extension {
        if let createExtensionOverride = createExtensionOverride {
            return try await createExtensionOverride(input)
        }

        return Extension.__default
    }

    /**
     Invokes the CreateExtensionAssociation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateExtensionAssociationRequest object being passed to this operation.
     - Returns: The ExtensionAssociation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound, serviceQuotaExceeded.
     */
    public func createExtensionAssociation(
            input: AppConfigModel.CreateExtensionAssociationRequest) async throws -> AppConfigModel.ExtensionAssociation {
        if let createExtensionAssociationOverride = createExtensionAssociationOverride {
            return try await createExtensionAssociationOverride(input)
        }

        return ExtensionAssociation.__default
    }

    /**
     Invokes the CreateHostedConfigurationVersion operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateHostedConfigurationVersionRequest object being passed to this operation.
     - Returns: The HostedConfigurationVersion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, conflict, internalServer, payloadTooLarge, resourceNotFound, serviceQuotaExceeded.
     */
    public func createHostedConfigurationVersion(
            input: AppConfigModel.CreateHostedConfigurationVersionRequest) async throws -> AppConfigModel.HostedConfigurationVersion {
        if let createHostedConfigurationVersionOverride = createHostedConfigurationVersionOverride {
            return try await createHostedConfigurationVersionOverride(input)
        }

        return HostedConfigurationVersion.__default
    }

    /**
     Invokes the DeleteApplication operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteApplicationRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func deleteApplication(
            input: AppConfigModel.DeleteApplicationRequest) async throws {
        if let deleteApplicationOverride = deleteApplicationOverride {
            return try await deleteApplicationOverride(input)
        }

    }

    /**
     Invokes the DeleteConfigurationProfile operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteConfigurationProfileRequest object being passed to this operation.
     - Throws: badRequest, conflict, internalServer, resourceNotFound.
     */
    public func deleteConfigurationProfile(
            input: AppConfigModel.DeleteConfigurationProfileRequest) async throws {
        if let deleteConfigurationProfileOverride = deleteConfigurationProfileOverride {
            return try await deleteConfigurationProfileOverride(input)
        }

    }

    /**
     Invokes the DeleteDeploymentStrategy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteDeploymentStrategyRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func deleteDeploymentStrategy(
            input: AppConfigModel.DeleteDeploymentStrategyRequest) async throws {
        if let deleteDeploymentStrategyOverride = deleteDeploymentStrategyOverride {
            return try await deleteDeploymentStrategyOverride(input)
        }

    }

    /**
     Invokes the DeleteEnvironment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteEnvironmentRequest object being passed to this operation.
     - Throws: badRequest, conflict, internalServer, resourceNotFound.
     */
    public func deleteEnvironment(
            input: AppConfigModel.DeleteEnvironmentRequest) async throws {
        if let deleteEnvironmentOverride = deleteEnvironmentOverride {
            return try await deleteEnvironmentOverride(input)
        }

    }

    /**
     Invokes the DeleteExtension operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteExtensionRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func deleteExtension(
            input: AppConfigModel.DeleteExtensionRequest) async throws {
        if let deleteExtensionOverride = deleteExtensionOverride {
            return try await deleteExtensionOverride(input)
        }

    }

    /**
     Invokes the DeleteExtensionAssociation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteExtensionAssociationRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func deleteExtensionAssociation(
            input: AppConfigModel.DeleteExtensionAssociationRequest) async throws {
        if let deleteExtensionAssociationOverride = deleteExtensionAssociationOverride {
            return try await deleteExtensionAssociationOverride(input)
        }

    }

    /**
     Invokes the DeleteHostedConfigurationVersion operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteHostedConfigurationVersionRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func deleteHostedConfigurationVersion(
            input: AppConfigModel.DeleteHostedConfigurationVersionRequest) async throws {
        if let deleteHostedConfigurationVersionOverride = deleteHostedConfigurationVersionOverride {
            return try await deleteHostedConfigurationVersionOverride(input)
        }

    }

    /**
     Invokes the GetApplication operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetApplicationRequest object being passed to this operation.
     - Returns: The Application object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func getApplication(
            input: AppConfigModel.GetApplicationRequest) async throws -> AppConfigModel.Application {
        if let getApplicationOverride = getApplicationOverride {
            return try await getApplicationOverride(input)
        }

        return Application.__default
    }

    /**
     Invokes the GetConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetConfigurationRequest object being passed to this operation.
     - Returns: The Configuration object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func getConfiguration(
            input: AppConfigModel.GetConfigurationRequest) async throws -> AppConfigModel.Configuration {
        if let getConfigurationOverride = getConfigurationOverride {
            return try await getConfigurationOverride(input)
        }

        return Configuration.__default
    }

    /**
     Invokes the GetConfigurationProfile operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetConfigurationProfileRequest object being passed to this operation.
     - Returns: The ConfigurationProfile object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func getConfigurationProfile(
            input: AppConfigModel.GetConfigurationProfileRequest) async throws -> AppConfigModel.ConfigurationProfile {
        if let getConfigurationProfileOverride = getConfigurationProfileOverride {
            return try await getConfigurationProfileOverride(input)
        }

        return ConfigurationProfile.__default
    }

    /**
     Invokes the GetDeployment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetDeploymentRequest object being passed to this operation.
     - Returns: The Deployment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func getDeployment(
            input: AppConfigModel.GetDeploymentRequest) async throws -> AppConfigModel.Deployment {
        if let getDeploymentOverride = getDeploymentOverride {
            return try await getDeploymentOverride(input)
        }

        return Deployment.__default
    }

    /**
     Invokes the GetDeploymentStrategy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetDeploymentStrategyRequest object being passed to this operation.
     - Returns: The DeploymentStrategy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func getDeploymentStrategy(
            input: AppConfigModel.GetDeploymentStrategyRequest) async throws -> AppConfigModel.DeploymentStrategy {
        if let getDeploymentStrategyOverride = getDeploymentStrategyOverride {
            return try await getDeploymentStrategyOverride(input)
        }

        return DeploymentStrategy.__default
    }

    /**
     Invokes the GetEnvironment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetEnvironmentRequest object being passed to this operation.
     - Returns: The Environment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func getEnvironment(
            input: AppConfigModel.GetEnvironmentRequest) async throws -> AppConfigModel.Environment {
        if let getEnvironmentOverride = getEnvironmentOverride {
            return try await getEnvironmentOverride(input)
        }

        return Environment.__default
    }

    /**
     Invokes the GetExtension operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetExtensionRequest object being passed to this operation.
     - Returns: The Extension object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func getExtension(
            input: AppConfigModel.GetExtensionRequest) async throws -> AppConfigModel.Extension {
        if let getExtensionOverride = getExtensionOverride {
            return try await getExtensionOverride(input)
        }

        return Extension.__default
    }

    /**
     Invokes the GetExtensionAssociation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetExtensionAssociationRequest object being passed to this operation.
     - Returns: The ExtensionAssociation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func getExtensionAssociation(
            input: AppConfigModel.GetExtensionAssociationRequest) async throws -> AppConfigModel.ExtensionAssociation {
        if let getExtensionAssociationOverride = getExtensionAssociationOverride {
            return try await getExtensionAssociationOverride(input)
        }

        return ExtensionAssociation.__default
    }

    /**
     Invokes the GetHostedConfigurationVersion operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetHostedConfigurationVersionRequest object being passed to this operation.
     - Returns: The HostedConfigurationVersion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func getHostedConfigurationVersion(
            input: AppConfigModel.GetHostedConfigurationVersionRequest) async throws -> AppConfigModel.HostedConfigurationVersion {
        if let getHostedConfigurationVersionOverride = getHostedConfigurationVersionOverride {
            return try await getHostedConfigurationVersionOverride(input)
        }

        return HostedConfigurationVersion.__default
    }

    /**
     Invokes the ListApplications operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListApplicationsRequest object being passed to this operation.
     - Returns: The Applications object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer.
     */
    public func listApplications(
            input: AppConfigModel.ListApplicationsRequest) async throws -> AppConfigModel.Applications {
        if let listApplicationsOverride = listApplicationsOverride {
            return try await listApplicationsOverride(input)
        }

        return Applications.__default
    }

    /**
     Invokes the ListConfigurationProfiles operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListConfigurationProfilesRequest object being passed to this operation.
     - Returns: The ConfigurationProfiles object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func listConfigurationProfiles(
            input: AppConfigModel.ListConfigurationProfilesRequest) async throws -> AppConfigModel.ConfigurationProfiles {
        if let listConfigurationProfilesOverride = listConfigurationProfilesOverride {
            return try await listConfigurationProfilesOverride(input)
        }

        return ConfigurationProfiles.__default
    }

    /**
     Invokes the ListDeploymentStrategies operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListDeploymentStrategiesRequest object being passed to this operation.
     - Returns: The DeploymentStrategies object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer.
     */
    public func listDeploymentStrategies(
            input: AppConfigModel.ListDeploymentStrategiesRequest) async throws -> AppConfigModel.DeploymentStrategies {
        if let listDeploymentStrategiesOverride = listDeploymentStrategiesOverride {
            return try await listDeploymentStrategiesOverride(input)
        }

        return DeploymentStrategies.__default
    }

    /**
     Invokes the ListDeployments operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListDeploymentsRequest object being passed to this operation.
     - Returns: The Deployments object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func listDeployments(
            input: AppConfigModel.ListDeploymentsRequest) async throws -> AppConfigModel.Deployments {
        if let listDeploymentsOverride = listDeploymentsOverride {
            return try await listDeploymentsOverride(input)
        }

        return Deployments.__default
    }

    /**
     Invokes the ListEnvironments operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListEnvironmentsRequest object being passed to this operation.
     - Returns: The Environments object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func listEnvironments(
            input: AppConfigModel.ListEnvironmentsRequest) async throws -> AppConfigModel.Environments {
        if let listEnvironmentsOverride = listEnvironmentsOverride {
            return try await listEnvironmentsOverride(input)
        }

        return Environments.__default
    }

    /**
     Invokes the ListExtensionAssociations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListExtensionAssociationsRequest object being passed to this operation.
     - Returns: The ExtensionAssociations object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer.
     */
    public func listExtensionAssociations(
            input: AppConfigModel.ListExtensionAssociationsRequest) async throws -> AppConfigModel.ExtensionAssociations {
        if let listExtensionAssociationsOverride = listExtensionAssociationsOverride {
            return try await listExtensionAssociationsOverride(input)
        }

        return ExtensionAssociations.__default
    }

    /**
     Invokes the ListExtensions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListExtensionsRequest object being passed to this operation.
     - Returns: The Extensions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer.
     */
    public func listExtensions(
            input: AppConfigModel.ListExtensionsRequest) async throws -> AppConfigModel.Extensions {
        if let listExtensionsOverride = listExtensionsOverride {
            return try await listExtensionsOverride(input)
        }

        return Extensions.__default
    }

    /**
     Invokes the ListHostedConfigurationVersions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListHostedConfigurationVersionsRequest object being passed to this operation.
     - Returns: The HostedConfigurationVersions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func listHostedConfigurationVersions(
            input: AppConfigModel.ListHostedConfigurationVersionsRequest) async throws -> AppConfigModel.HostedConfigurationVersions {
        if let listHostedConfigurationVersionsOverride = listHostedConfigurationVersionsOverride {
            return try await listHostedConfigurationVersionsOverride(input)
        }

        return HostedConfigurationVersions.__default
    }

    /**
     Invokes the ListTagsForResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: The ResourceTags object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func listTagsForResource(
            input: AppConfigModel.ListTagsForResourceRequest) async throws -> AppConfigModel.ResourceTags {
        if let listTagsForResourceOverride = listTagsForResourceOverride {
            return try await listTagsForResourceOverride(input)
        }

        return ResourceTags.__default
    }

    /**
     Invokes the StartDeployment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartDeploymentRequest object being passed to this operation.
     - Returns: The Deployment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, conflict, internalServer, resourceNotFound.
     */
    public func startDeployment(
            input: AppConfigModel.StartDeploymentRequest) async throws -> AppConfigModel.Deployment {
        if let startDeploymentOverride = startDeploymentOverride {
            return try await startDeploymentOverride(input)
        }

        return Deployment.__default
    }

    /**
     Invokes the StopDeployment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StopDeploymentRequest object being passed to this operation.
     - Returns: The Deployment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func stopDeployment(
            input: AppConfigModel.StopDeploymentRequest) async throws -> AppConfigModel.Deployment {
        if let stopDeploymentOverride = stopDeploymentOverride {
            return try await stopDeploymentOverride(input)
        }

        return Deployment.__default
    }

    /**
     Invokes the TagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func tagResource(
            input: AppConfigModel.TagResourceRequest) async throws {
        if let tagResourceOverride = tagResourceOverride {
            return try await tagResourceOverride(input)
        }

    }

    /**
     Invokes the UntagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func untagResource(
            input: AppConfigModel.UntagResourceRequest) async throws {
        if let untagResourceOverride = untagResourceOverride {
            return try await untagResourceOverride(input)
        }

    }

    /**
     Invokes the UpdateApplication operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateApplicationRequest object being passed to this operation.
     - Returns: The Application object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func updateApplication(
            input: AppConfigModel.UpdateApplicationRequest) async throws -> AppConfigModel.Application {
        if let updateApplicationOverride = updateApplicationOverride {
            return try await updateApplicationOverride(input)
        }

        return Application.__default
    }

    /**
     Invokes the UpdateConfigurationProfile operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateConfigurationProfileRequest object being passed to this operation.
     - Returns: The ConfigurationProfile object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func updateConfigurationProfile(
            input: AppConfigModel.UpdateConfigurationProfileRequest) async throws -> AppConfigModel.ConfigurationProfile {
        if let updateConfigurationProfileOverride = updateConfigurationProfileOverride {
            return try await updateConfigurationProfileOverride(input)
        }

        return ConfigurationProfile.__default
    }

    /**
     Invokes the UpdateDeploymentStrategy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateDeploymentStrategyRequest object being passed to this operation.
     - Returns: The DeploymentStrategy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func updateDeploymentStrategy(
            input: AppConfigModel.UpdateDeploymentStrategyRequest) async throws -> AppConfigModel.DeploymentStrategy {
        if let updateDeploymentStrategyOverride = updateDeploymentStrategyOverride {
            return try await updateDeploymentStrategyOverride(input)
        }

        return DeploymentStrategy.__default
    }

    /**
     Invokes the UpdateEnvironment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateEnvironmentRequest object being passed to this operation.
     - Returns: The Environment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func updateEnvironment(
            input: AppConfigModel.UpdateEnvironmentRequest) async throws -> AppConfigModel.Environment {
        if let updateEnvironmentOverride = updateEnvironmentOverride {
            return try await updateEnvironmentOverride(input)
        }

        return Environment.__default
    }

    /**
     Invokes the UpdateExtension operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateExtensionRequest object being passed to this operation.
     - Returns: The Extension object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, conflict, internalServer, resourceNotFound.
     */
    public func updateExtension(
            input: AppConfigModel.UpdateExtensionRequest) async throws -> AppConfigModel.Extension {
        if let updateExtensionOverride = updateExtensionOverride {
            return try await updateExtensionOverride(input)
        }

        return Extension.__default
    }

    /**
     Invokes the UpdateExtensionAssociation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateExtensionAssociationRequest object being passed to this operation.
     - Returns: The ExtensionAssociation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func updateExtensionAssociation(
            input: AppConfigModel.UpdateExtensionAssociationRequest) async throws -> AppConfigModel.ExtensionAssociation {
        if let updateExtensionAssociationOverride = updateExtensionAssociationOverride {
            return try await updateExtensionAssociationOverride(input)
        }

        return ExtensionAssociation.__default
    }

    /**
     Invokes the ValidateConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ValidateConfigurationRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func validateConfiguration(
            input: AppConfigModel.ValidateConfigurationRequest) async throws {
        if let validateConfigurationOverride = validateConfigurationOverride {
            return try await validateConfigurationOverride(input)
        }

    }
#endif
}
