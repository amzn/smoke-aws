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
// ThrowingAppConfigClient.swift
// AppConfigClient
//

import Foundation
import AppConfigModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the AppConfig service that by default always throws from its methods.
 */
public struct ThrowingAppConfigClient: AppConfigClientProtocol {
    let error: AppConfigError
    let createApplicationAsyncOverride: CreateApplicationAsyncType?
    let createApplicationSyncOverride: CreateApplicationSyncType?
    let createConfigurationProfileAsyncOverride: CreateConfigurationProfileAsyncType?
    let createConfigurationProfileSyncOverride: CreateConfigurationProfileSyncType?
    let createDeploymentStrategyAsyncOverride: CreateDeploymentStrategyAsyncType?
    let createDeploymentStrategySyncOverride: CreateDeploymentStrategySyncType?
    let createEnvironmentAsyncOverride: CreateEnvironmentAsyncType?
    let createEnvironmentSyncOverride: CreateEnvironmentSyncType?
    let createExtensionAsyncOverride: CreateExtensionAsyncType?
    let createExtensionSyncOverride: CreateExtensionSyncType?
    let createExtensionAssociationAsyncOverride: CreateExtensionAssociationAsyncType?
    let createExtensionAssociationSyncOverride: CreateExtensionAssociationSyncType?
    let createHostedConfigurationVersionAsyncOverride: CreateHostedConfigurationVersionAsyncType?
    let createHostedConfigurationVersionSyncOverride: CreateHostedConfigurationVersionSyncType?
    let deleteApplicationAsyncOverride: DeleteApplicationAsyncType?
    let deleteApplicationSyncOverride: DeleteApplicationSyncType?
    let deleteConfigurationProfileAsyncOverride: DeleteConfigurationProfileAsyncType?
    let deleteConfigurationProfileSyncOverride: DeleteConfigurationProfileSyncType?
    let deleteDeploymentStrategyAsyncOverride: DeleteDeploymentStrategyAsyncType?
    let deleteDeploymentStrategySyncOverride: DeleteDeploymentStrategySyncType?
    let deleteEnvironmentAsyncOverride: DeleteEnvironmentAsyncType?
    let deleteEnvironmentSyncOverride: DeleteEnvironmentSyncType?
    let deleteExtensionAsyncOverride: DeleteExtensionAsyncType?
    let deleteExtensionSyncOverride: DeleteExtensionSyncType?
    let deleteExtensionAssociationAsyncOverride: DeleteExtensionAssociationAsyncType?
    let deleteExtensionAssociationSyncOverride: DeleteExtensionAssociationSyncType?
    let deleteHostedConfigurationVersionAsyncOverride: DeleteHostedConfigurationVersionAsyncType?
    let deleteHostedConfigurationVersionSyncOverride: DeleteHostedConfigurationVersionSyncType?
    let getApplicationAsyncOverride: GetApplicationAsyncType?
    let getApplicationSyncOverride: GetApplicationSyncType?
    let getConfigurationAsyncOverride: GetConfigurationAsyncType?
    let getConfigurationSyncOverride: GetConfigurationSyncType?
    let getConfigurationProfileAsyncOverride: GetConfigurationProfileAsyncType?
    let getConfigurationProfileSyncOverride: GetConfigurationProfileSyncType?
    let getDeploymentAsyncOverride: GetDeploymentAsyncType?
    let getDeploymentSyncOverride: GetDeploymentSyncType?
    let getDeploymentStrategyAsyncOverride: GetDeploymentStrategyAsyncType?
    let getDeploymentStrategySyncOverride: GetDeploymentStrategySyncType?
    let getEnvironmentAsyncOverride: GetEnvironmentAsyncType?
    let getEnvironmentSyncOverride: GetEnvironmentSyncType?
    let getExtensionAsyncOverride: GetExtensionAsyncType?
    let getExtensionSyncOverride: GetExtensionSyncType?
    let getExtensionAssociationAsyncOverride: GetExtensionAssociationAsyncType?
    let getExtensionAssociationSyncOverride: GetExtensionAssociationSyncType?
    let getHostedConfigurationVersionAsyncOverride: GetHostedConfigurationVersionAsyncType?
    let getHostedConfigurationVersionSyncOverride: GetHostedConfigurationVersionSyncType?
    let listApplicationsAsyncOverride: ListApplicationsAsyncType?
    let listApplicationsSyncOverride: ListApplicationsSyncType?
    let listConfigurationProfilesAsyncOverride: ListConfigurationProfilesAsyncType?
    let listConfigurationProfilesSyncOverride: ListConfigurationProfilesSyncType?
    let listDeploymentStrategiesAsyncOverride: ListDeploymentStrategiesAsyncType?
    let listDeploymentStrategiesSyncOverride: ListDeploymentStrategiesSyncType?
    let listDeploymentsAsyncOverride: ListDeploymentsAsyncType?
    let listDeploymentsSyncOverride: ListDeploymentsSyncType?
    let listEnvironmentsAsyncOverride: ListEnvironmentsAsyncType?
    let listEnvironmentsSyncOverride: ListEnvironmentsSyncType?
    let listExtensionAssociationsAsyncOverride: ListExtensionAssociationsAsyncType?
    let listExtensionAssociationsSyncOverride: ListExtensionAssociationsSyncType?
    let listExtensionsAsyncOverride: ListExtensionsAsyncType?
    let listExtensionsSyncOverride: ListExtensionsSyncType?
    let listHostedConfigurationVersionsAsyncOverride: ListHostedConfigurationVersionsAsyncType?
    let listHostedConfigurationVersionsSyncOverride: ListHostedConfigurationVersionsSyncType?
    let listTagsForResourceAsyncOverride: ListTagsForResourceAsyncType?
    let listTagsForResourceSyncOverride: ListTagsForResourceSyncType?
    let startDeploymentAsyncOverride: StartDeploymentAsyncType?
    let startDeploymentSyncOverride: StartDeploymentSyncType?
    let stopDeploymentAsyncOverride: StopDeploymentAsyncType?
    let stopDeploymentSyncOverride: StopDeploymentSyncType?
    let tagResourceAsyncOverride: TagResourceAsyncType?
    let tagResourceSyncOverride: TagResourceSyncType?
    let untagResourceAsyncOverride: UntagResourceAsyncType?
    let untagResourceSyncOverride: UntagResourceSyncType?
    let updateApplicationAsyncOverride: UpdateApplicationAsyncType?
    let updateApplicationSyncOverride: UpdateApplicationSyncType?
    let updateConfigurationProfileAsyncOverride: UpdateConfigurationProfileAsyncType?
    let updateConfigurationProfileSyncOverride: UpdateConfigurationProfileSyncType?
    let updateDeploymentStrategyAsyncOverride: UpdateDeploymentStrategyAsyncType?
    let updateDeploymentStrategySyncOverride: UpdateDeploymentStrategySyncType?
    let updateEnvironmentAsyncOverride: UpdateEnvironmentAsyncType?
    let updateEnvironmentSyncOverride: UpdateEnvironmentSyncType?
    let updateExtensionAsyncOverride: UpdateExtensionAsyncType?
    let updateExtensionSyncOverride: UpdateExtensionSyncType?
    let updateExtensionAssociationAsyncOverride: UpdateExtensionAssociationAsyncType?
    let updateExtensionAssociationSyncOverride: UpdateExtensionAssociationSyncType?
    let validateConfigurationAsyncOverride: ValidateConfigurationAsyncType?
    let validateConfigurationSyncOverride: ValidateConfigurationSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(error: AppConfigError,
            createApplicationAsync: CreateApplicationAsyncType? = nil,
            createApplicationSync: CreateApplicationSyncType? = nil,
            createConfigurationProfileAsync: CreateConfigurationProfileAsyncType? = nil,
            createConfigurationProfileSync: CreateConfigurationProfileSyncType? = nil,
            createDeploymentStrategyAsync: CreateDeploymentStrategyAsyncType? = nil,
            createDeploymentStrategySync: CreateDeploymentStrategySyncType? = nil,
            createEnvironmentAsync: CreateEnvironmentAsyncType? = nil,
            createEnvironmentSync: CreateEnvironmentSyncType? = nil,
            createExtensionAsync: CreateExtensionAsyncType? = nil,
            createExtensionSync: CreateExtensionSyncType? = nil,
            createExtensionAssociationAsync: CreateExtensionAssociationAsyncType? = nil,
            createExtensionAssociationSync: CreateExtensionAssociationSyncType? = nil,
            createHostedConfigurationVersionAsync: CreateHostedConfigurationVersionAsyncType? = nil,
            createHostedConfigurationVersionSync: CreateHostedConfigurationVersionSyncType? = nil,
            deleteApplicationAsync: DeleteApplicationAsyncType? = nil,
            deleteApplicationSync: DeleteApplicationSyncType? = nil,
            deleteConfigurationProfileAsync: DeleteConfigurationProfileAsyncType? = nil,
            deleteConfigurationProfileSync: DeleteConfigurationProfileSyncType? = nil,
            deleteDeploymentStrategyAsync: DeleteDeploymentStrategyAsyncType? = nil,
            deleteDeploymentStrategySync: DeleteDeploymentStrategySyncType? = nil,
            deleteEnvironmentAsync: DeleteEnvironmentAsyncType? = nil,
            deleteEnvironmentSync: DeleteEnvironmentSyncType? = nil,
            deleteExtensionAsync: DeleteExtensionAsyncType? = nil,
            deleteExtensionSync: DeleteExtensionSyncType? = nil,
            deleteExtensionAssociationAsync: DeleteExtensionAssociationAsyncType? = nil,
            deleteExtensionAssociationSync: DeleteExtensionAssociationSyncType? = nil,
            deleteHostedConfigurationVersionAsync: DeleteHostedConfigurationVersionAsyncType? = nil,
            deleteHostedConfigurationVersionSync: DeleteHostedConfigurationVersionSyncType? = nil,
            getApplicationAsync: GetApplicationAsyncType? = nil,
            getApplicationSync: GetApplicationSyncType? = nil,
            getConfigurationAsync: GetConfigurationAsyncType? = nil,
            getConfigurationSync: GetConfigurationSyncType? = nil,
            getConfigurationProfileAsync: GetConfigurationProfileAsyncType? = nil,
            getConfigurationProfileSync: GetConfigurationProfileSyncType? = nil,
            getDeploymentAsync: GetDeploymentAsyncType? = nil,
            getDeploymentSync: GetDeploymentSyncType? = nil,
            getDeploymentStrategyAsync: GetDeploymentStrategyAsyncType? = nil,
            getDeploymentStrategySync: GetDeploymentStrategySyncType? = nil,
            getEnvironmentAsync: GetEnvironmentAsyncType? = nil,
            getEnvironmentSync: GetEnvironmentSyncType? = nil,
            getExtensionAsync: GetExtensionAsyncType? = nil,
            getExtensionSync: GetExtensionSyncType? = nil,
            getExtensionAssociationAsync: GetExtensionAssociationAsyncType? = nil,
            getExtensionAssociationSync: GetExtensionAssociationSyncType? = nil,
            getHostedConfigurationVersionAsync: GetHostedConfigurationVersionAsyncType? = nil,
            getHostedConfigurationVersionSync: GetHostedConfigurationVersionSyncType? = nil,
            listApplicationsAsync: ListApplicationsAsyncType? = nil,
            listApplicationsSync: ListApplicationsSyncType? = nil,
            listConfigurationProfilesAsync: ListConfigurationProfilesAsyncType? = nil,
            listConfigurationProfilesSync: ListConfigurationProfilesSyncType? = nil,
            listDeploymentStrategiesAsync: ListDeploymentStrategiesAsyncType? = nil,
            listDeploymentStrategiesSync: ListDeploymentStrategiesSyncType? = nil,
            listDeploymentsAsync: ListDeploymentsAsyncType? = nil,
            listDeploymentsSync: ListDeploymentsSyncType? = nil,
            listEnvironmentsAsync: ListEnvironmentsAsyncType? = nil,
            listEnvironmentsSync: ListEnvironmentsSyncType? = nil,
            listExtensionAssociationsAsync: ListExtensionAssociationsAsyncType? = nil,
            listExtensionAssociationsSync: ListExtensionAssociationsSyncType? = nil,
            listExtensionsAsync: ListExtensionsAsyncType? = nil,
            listExtensionsSync: ListExtensionsSyncType? = nil,
            listHostedConfigurationVersionsAsync: ListHostedConfigurationVersionsAsyncType? = nil,
            listHostedConfigurationVersionsSync: ListHostedConfigurationVersionsSyncType? = nil,
            listTagsForResourceAsync: ListTagsForResourceAsyncType? = nil,
            listTagsForResourceSync: ListTagsForResourceSyncType? = nil,
            startDeploymentAsync: StartDeploymentAsyncType? = nil,
            startDeploymentSync: StartDeploymentSyncType? = nil,
            stopDeploymentAsync: StopDeploymentAsyncType? = nil,
            stopDeploymentSync: StopDeploymentSyncType? = nil,
            tagResourceAsync: TagResourceAsyncType? = nil,
            tagResourceSync: TagResourceSyncType? = nil,
            untagResourceAsync: UntagResourceAsyncType? = nil,
            untagResourceSync: UntagResourceSyncType? = nil,
            updateApplicationAsync: UpdateApplicationAsyncType? = nil,
            updateApplicationSync: UpdateApplicationSyncType? = nil,
            updateConfigurationProfileAsync: UpdateConfigurationProfileAsyncType? = nil,
            updateConfigurationProfileSync: UpdateConfigurationProfileSyncType? = nil,
            updateDeploymentStrategyAsync: UpdateDeploymentStrategyAsyncType? = nil,
            updateDeploymentStrategySync: UpdateDeploymentStrategySyncType? = nil,
            updateEnvironmentAsync: UpdateEnvironmentAsyncType? = nil,
            updateEnvironmentSync: UpdateEnvironmentSyncType? = nil,
            updateExtensionAsync: UpdateExtensionAsyncType? = nil,
            updateExtensionSync: UpdateExtensionSyncType? = nil,
            updateExtensionAssociationAsync: UpdateExtensionAssociationAsyncType? = nil,
            updateExtensionAssociationSync: UpdateExtensionAssociationSyncType? = nil,
            validateConfigurationAsync: ValidateConfigurationAsyncType? = nil,
            validateConfigurationSync: ValidateConfigurationSyncType? = nil) {
        self.error = error
        self.createApplicationAsyncOverride = createApplicationAsync
        self.createApplicationSyncOverride = createApplicationSync
        self.createConfigurationProfileAsyncOverride = createConfigurationProfileAsync
        self.createConfigurationProfileSyncOverride = createConfigurationProfileSync
        self.createDeploymentStrategyAsyncOverride = createDeploymentStrategyAsync
        self.createDeploymentStrategySyncOverride = createDeploymentStrategySync
        self.createEnvironmentAsyncOverride = createEnvironmentAsync
        self.createEnvironmentSyncOverride = createEnvironmentSync
        self.createExtensionAsyncOverride = createExtensionAsync
        self.createExtensionSyncOverride = createExtensionSync
        self.createExtensionAssociationAsyncOverride = createExtensionAssociationAsync
        self.createExtensionAssociationSyncOverride = createExtensionAssociationSync
        self.createHostedConfigurationVersionAsyncOverride = createHostedConfigurationVersionAsync
        self.createHostedConfigurationVersionSyncOverride = createHostedConfigurationVersionSync
        self.deleteApplicationAsyncOverride = deleteApplicationAsync
        self.deleteApplicationSyncOverride = deleteApplicationSync
        self.deleteConfigurationProfileAsyncOverride = deleteConfigurationProfileAsync
        self.deleteConfigurationProfileSyncOverride = deleteConfigurationProfileSync
        self.deleteDeploymentStrategyAsyncOverride = deleteDeploymentStrategyAsync
        self.deleteDeploymentStrategySyncOverride = deleteDeploymentStrategySync
        self.deleteEnvironmentAsyncOverride = deleteEnvironmentAsync
        self.deleteEnvironmentSyncOverride = deleteEnvironmentSync
        self.deleteExtensionAsyncOverride = deleteExtensionAsync
        self.deleteExtensionSyncOverride = deleteExtensionSync
        self.deleteExtensionAssociationAsyncOverride = deleteExtensionAssociationAsync
        self.deleteExtensionAssociationSyncOverride = deleteExtensionAssociationSync
        self.deleteHostedConfigurationVersionAsyncOverride = deleteHostedConfigurationVersionAsync
        self.deleteHostedConfigurationVersionSyncOverride = deleteHostedConfigurationVersionSync
        self.getApplicationAsyncOverride = getApplicationAsync
        self.getApplicationSyncOverride = getApplicationSync
        self.getConfigurationAsyncOverride = getConfigurationAsync
        self.getConfigurationSyncOverride = getConfigurationSync
        self.getConfigurationProfileAsyncOverride = getConfigurationProfileAsync
        self.getConfigurationProfileSyncOverride = getConfigurationProfileSync
        self.getDeploymentAsyncOverride = getDeploymentAsync
        self.getDeploymentSyncOverride = getDeploymentSync
        self.getDeploymentStrategyAsyncOverride = getDeploymentStrategyAsync
        self.getDeploymentStrategySyncOverride = getDeploymentStrategySync
        self.getEnvironmentAsyncOverride = getEnvironmentAsync
        self.getEnvironmentSyncOverride = getEnvironmentSync
        self.getExtensionAsyncOverride = getExtensionAsync
        self.getExtensionSyncOverride = getExtensionSync
        self.getExtensionAssociationAsyncOverride = getExtensionAssociationAsync
        self.getExtensionAssociationSyncOverride = getExtensionAssociationSync
        self.getHostedConfigurationVersionAsyncOverride = getHostedConfigurationVersionAsync
        self.getHostedConfigurationVersionSyncOverride = getHostedConfigurationVersionSync
        self.listApplicationsAsyncOverride = listApplicationsAsync
        self.listApplicationsSyncOverride = listApplicationsSync
        self.listConfigurationProfilesAsyncOverride = listConfigurationProfilesAsync
        self.listConfigurationProfilesSyncOverride = listConfigurationProfilesSync
        self.listDeploymentStrategiesAsyncOverride = listDeploymentStrategiesAsync
        self.listDeploymentStrategiesSyncOverride = listDeploymentStrategiesSync
        self.listDeploymentsAsyncOverride = listDeploymentsAsync
        self.listDeploymentsSyncOverride = listDeploymentsSync
        self.listEnvironmentsAsyncOverride = listEnvironmentsAsync
        self.listEnvironmentsSyncOverride = listEnvironmentsSync
        self.listExtensionAssociationsAsyncOverride = listExtensionAssociationsAsync
        self.listExtensionAssociationsSyncOverride = listExtensionAssociationsSync
        self.listExtensionsAsyncOverride = listExtensionsAsync
        self.listExtensionsSyncOverride = listExtensionsSync
        self.listHostedConfigurationVersionsAsyncOverride = listHostedConfigurationVersionsAsync
        self.listHostedConfigurationVersionsSyncOverride = listHostedConfigurationVersionsSync
        self.listTagsForResourceAsyncOverride = listTagsForResourceAsync
        self.listTagsForResourceSyncOverride = listTagsForResourceSync
        self.startDeploymentAsyncOverride = startDeploymentAsync
        self.startDeploymentSyncOverride = startDeploymentSync
        self.stopDeploymentAsyncOverride = stopDeploymentAsync
        self.stopDeploymentSyncOverride = stopDeploymentSync
        self.tagResourceAsyncOverride = tagResourceAsync
        self.tagResourceSyncOverride = tagResourceSync
        self.untagResourceAsyncOverride = untagResourceAsync
        self.untagResourceSyncOverride = untagResourceSync
        self.updateApplicationAsyncOverride = updateApplicationAsync
        self.updateApplicationSyncOverride = updateApplicationSync
        self.updateConfigurationProfileAsyncOverride = updateConfigurationProfileAsync
        self.updateConfigurationProfileSyncOverride = updateConfigurationProfileSync
        self.updateDeploymentStrategyAsyncOverride = updateDeploymentStrategyAsync
        self.updateDeploymentStrategySyncOverride = updateDeploymentStrategySync
        self.updateEnvironmentAsyncOverride = updateEnvironmentAsync
        self.updateEnvironmentSyncOverride = updateEnvironmentSync
        self.updateExtensionAsyncOverride = updateExtensionAsync
        self.updateExtensionSyncOverride = updateExtensionSync
        self.updateExtensionAssociationAsyncOverride = updateExtensionAssociationAsync
        self.updateExtensionAssociationSyncOverride = updateExtensionAssociationSync
        self.validateConfigurationAsyncOverride = validateConfigurationAsync
        self.validateConfigurationSyncOverride = validateConfigurationSync
    }

    /**
     Invokes the CreateApplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateApplicationRequest object being passed to this operation.
         - completion: The Application object or an error will be passed to this 
           callback when the operation is complete. The Application
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer.
     */
    public func createApplicationAsync(
            input: AppConfigModel.CreateApplicationRequest, 
            completion: @escaping (Result<AppConfigModel.Application, AppConfigError>) -> ()) throws {
        if let createApplicationAsyncOverride = createApplicationAsyncOverride {
            return try createApplicationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateApplicationRequest object being passed to this operation.
     - Returns: The Application object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer.
     */
    public func createApplicationSync(
            input: AppConfigModel.CreateApplicationRequest) throws -> AppConfigModel.Application {
        if let createApplicationSyncOverride = createApplicationSyncOverride {
            return try createApplicationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateConfigurationProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateConfigurationProfileRequest object being passed to this operation.
         - completion: The ConfigurationProfile object or an error will be passed to this 
           callback when the operation is complete. The ConfigurationProfile
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func createConfigurationProfileAsync(
            input: AppConfigModel.CreateConfigurationProfileRequest, 
            completion: @escaping (Result<AppConfigModel.ConfigurationProfile, AppConfigError>) -> ()) throws {
        if let createConfigurationProfileAsyncOverride = createConfigurationProfileAsyncOverride {
            return try createConfigurationProfileAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateConfigurationProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateConfigurationProfileRequest object being passed to this operation.
     - Returns: The ConfigurationProfile object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func createConfigurationProfileSync(
            input: AppConfigModel.CreateConfigurationProfileRequest) throws -> AppConfigModel.ConfigurationProfile {
        if let createConfigurationProfileSyncOverride = createConfigurationProfileSyncOverride {
            return try createConfigurationProfileSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateDeploymentStrategy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDeploymentStrategyRequest object being passed to this operation.
         - completion: The DeploymentStrategy object or an error will be passed to this 
           callback when the operation is complete. The DeploymentStrategy
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer.
     */
    public func createDeploymentStrategyAsync(
            input: AppConfigModel.CreateDeploymentStrategyRequest, 
            completion: @escaping (Result<AppConfigModel.DeploymentStrategy, AppConfigError>) -> ()) throws {
        if let createDeploymentStrategyAsyncOverride = createDeploymentStrategyAsyncOverride {
            return try createDeploymentStrategyAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateDeploymentStrategy operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDeploymentStrategyRequest object being passed to this operation.
     - Returns: The DeploymentStrategy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer.
     */
    public func createDeploymentStrategySync(
            input: AppConfigModel.CreateDeploymentStrategyRequest) throws -> AppConfigModel.DeploymentStrategy {
        if let createDeploymentStrategySyncOverride = createDeploymentStrategySyncOverride {
            return try createDeploymentStrategySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateEnvironment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateEnvironmentRequest object being passed to this operation.
         - completion: The Environment object or an error will be passed to this 
           callback when the operation is complete. The Environment
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func createEnvironmentAsync(
            input: AppConfigModel.CreateEnvironmentRequest, 
            completion: @escaping (Result<AppConfigModel.Environment, AppConfigError>) -> ()) throws {
        if let createEnvironmentAsyncOverride = createEnvironmentAsyncOverride {
            return try createEnvironmentAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateEnvironment operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateEnvironmentRequest object being passed to this operation.
     - Returns: The Environment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func createEnvironmentSync(
            input: AppConfigModel.CreateEnvironmentRequest) throws -> AppConfigModel.Environment {
        if let createEnvironmentSyncOverride = createEnvironmentSyncOverride {
            return try createEnvironmentSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateExtension operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateExtensionRequest object being passed to this operation.
         - completion: The Extension object or an error will be passed to this 
           callback when the operation is complete. The Extension
           object will be validated before being returned to caller.
           The possible errors are: badRequest, conflict, internalServer, serviceQuotaExceeded.
     */
    public func createExtensionAsync(
            input: AppConfigModel.CreateExtensionRequest, 
            completion: @escaping (Result<AppConfigModel.Extension, AppConfigError>) -> ()) throws {
        if let createExtensionAsyncOverride = createExtensionAsyncOverride {
            return try createExtensionAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateExtension operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateExtensionRequest object being passed to this operation.
     - Returns: The Extension object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, conflict, internalServer, serviceQuotaExceeded.
     */
    public func createExtensionSync(
            input: AppConfigModel.CreateExtensionRequest) throws -> AppConfigModel.Extension {
        if let createExtensionSyncOverride = createExtensionSyncOverride {
            return try createExtensionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateExtensionAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateExtensionAssociationRequest object being passed to this operation.
         - completion: The ExtensionAssociation object or an error will be passed to this 
           callback when the operation is complete. The ExtensionAssociation
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound, serviceQuotaExceeded.
     */
    public func createExtensionAssociationAsync(
            input: AppConfigModel.CreateExtensionAssociationRequest, 
            completion: @escaping (Result<AppConfigModel.ExtensionAssociation, AppConfigError>) -> ()) throws {
        if let createExtensionAssociationAsyncOverride = createExtensionAssociationAsyncOverride {
            return try createExtensionAssociationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateExtensionAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateExtensionAssociationRequest object being passed to this operation.
     - Returns: The ExtensionAssociation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound, serviceQuotaExceeded.
     */
    public func createExtensionAssociationSync(
            input: AppConfigModel.CreateExtensionAssociationRequest) throws -> AppConfigModel.ExtensionAssociation {
        if let createExtensionAssociationSyncOverride = createExtensionAssociationSyncOverride {
            return try createExtensionAssociationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateHostedConfigurationVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateHostedConfigurationVersionRequest object being passed to this operation.
         - completion: The HostedConfigurationVersion object or an error will be passed to this 
           callback when the operation is complete. The HostedConfigurationVersion
           object will be validated before being returned to caller.
           The possible errors are: badRequest, conflict, internalServer, payloadTooLarge, resourceNotFound, serviceQuotaExceeded.
     */
    public func createHostedConfigurationVersionAsync(
            input: AppConfigModel.CreateHostedConfigurationVersionRequest, 
            completion: @escaping (Result<AppConfigModel.HostedConfigurationVersion, AppConfigError>) -> ()) throws {
        if let createHostedConfigurationVersionAsyncOverride = createHostedConfigurationVersionAsyncOverride {
            return try createHostedConfigurationVersionAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateHostedConfigurationVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateHostedConfigurationVersionRequest object being passed to this operation.
     - Returns: The HostedConfigurationVersion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, conflict, internalServer, payloadTooLarge, resourceNotFound, serviceQuotaExceeded.
     */
    public func createHostedConfigurationVersionSync(
            input: AppConfigModel.CreateHostedConfigurationVersionRequest) throws -> AppConfigModel.HostedConfigurationVersion {
        if let createHostedConfigurationVersionSyncOverride = createHostedConfigurationVersionSyncOverride {
            return try createHostedConfigurationVersionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteApplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteApplicationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func deleteApplicationAsync(
            input: AppConfigModel.DeleteApplicationRequest, 
            completion: @escaping (AppConfigError?) -> ()) throws {
        if let deleteApplicationAsyncOverride = deleteApplicationAsyncOverride {
            return try deleteApplicationAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteApplicationRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func deleteApplicationSync(
            input: AppConfigModel.DeleteApplicationRequest) throws {
        if let deleteApplicationSyncOverride = deleteApplicationSyncOverride {
            return try deleteApplicationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteConfigurationProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteConfigurationProfileRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: badRequest, conflict, internalServer, resourceNotFound.
     */
    public func deleteConfigurationProfileAsync(
            input: AppConfigModel.DeleteConfigurationProfileRequest, 
            completion: @escaping (AppConfigError?) -> ()) throws {
        if let deleteConfigurationProfileAsyncOverride = deleteConfigurationProfileAsyncOverride {
            return try deleteConfigurationProfileAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteConfigurationProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteConfigurationProfileRequest object being passed to this operation.
     - Throws: badRequest, conflict, internalServer, resourceNotFound.
     */
    public func deleteConfigurationProfileSync(
            input: AppConfigModel.DeleteConfigurationProfileRequest) throws {
        if let deleteConfigurationProfileSyncOverride = deleteConfigurationProfileSyncOverride {
            return try deleteConfigurationProfileSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteDeploymentStrategy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDeploymentStrategyRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func deleteDeploymentStrategyAsync(
            input: AppConfigModel.DeleteDeploymentStrategyRequest, 
            completion: @escaping (AppConfigError?) -> ()) throws {
        if let deleteDeploymentStrategyAsyncOverride = deleteDeploymentStrategyAsyncOverride {
            return try deleteDeploymentStrategyAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteDeploymentStrategy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDeploymentStrategyRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func deleteDeploymentStrategySync(
            input: AppConfigModel.DeleteDeploymentStrategyRequest) throws {
        if let deleteDeploymentStrategySyncOverride = deleteDeploymentStrategySyncOverride {
            return try deleteDeploymentStrategySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteEnvironment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteEnvironmentRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: badRequest, conflict, internalServer, resourceNotFound.
     */
    public func deleteEnvironmentAsync(
            input: AppConfigModel.DeleteEnvironmentRequest, 
            completion: @escaping (AppConfigError?) -> ()) throws {
        if let deleteEnvironmentAsyncOverride = deleteEnvironmentAsyncOverride {
            return try deleteEnvironmentAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteEnvironment operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteEnvironmentRequest object being passed to this operation.
     - Throws: badRequest, conflict, internalServer, resourceNotFound.
     */
    public func deleteEnvironmentSync(
            input: AppConfigModel.DeleteEnvironmentRequest) throws {
        if let deleteEnvironmentSyncOverride = deleteEnvironmentSyncOverride {
            return try deleteEnvironmentSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteExtension operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteExtensionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func deleteExtensionAsync(
            input: AppConfigModel.DeleteExtensionRequest, 
            completion: @escaping (AppConfigError?) -> ()) throws {
        if let deleteExtensionAsyncOverride = deleteExtensionAsyncOverride {
            return try deleteExtensionAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteExtension operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteExtensionRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func deleteExtensionSync(
            input: AppConfigModel.DeleteExtensionRequest) throws {
        if let deleteExtensionSyncOverride = deleteExtensionSyncOverride {
            return try deleteExtensionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteExtensionAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteExtensionAssociationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func deleteExtensionAssociationAsync(
            input: AppConfigModel.DeleteExtensionAssociationRequest, 
            completion: @escaping (AppConfigError?) -> ()) throws {
        if let deleteExtensionAssociationAsyncOverride = deleteExtensionAssociationAsyncOverride {
            return try deleteExtensionAssociationAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteExtensionAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteExtensionAssociationRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func deleteExtensionAssociationSync(
            input: AppConfigModel.DeleteExtensionAssociationRequest) throws {
        if let deleteExtensionAssociationSyncOverride = deleteExtensionAssociationSyncOverride {
            return try deleteExtensionAssociationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteHostedConfigurationVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteHostedConfigurationVersionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func deleteHostedConfigurationVersionAsync(
            input: AppConfigModel.DeleteHostedConfigurationVersionRequest, 
            completion: @escaping (AppConfigError?) -> ()) throws {
        if let deleteHostedConfigurationVersionAsyncOverride = deleteHostedConfigurationVersionAsyncOverride {
            return try deleteHostedConfigurationVersionAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteHostedConfigurationVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteHostedConfigurationVersionRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func deleteHostedConfigurationVersionSync(
            input: AppConfigModel.DeleteHostedConfigurationVersionRequest) throws {
        if let deleteHostedConfigurationVersionSyncOverride = deleteHostedConfigurationVersionSyncOverride {
            return try deleteHostedConfigurationVersionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetApplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetApplicationRequest object being passed to this operation.
         - completion: The Application object or an error will be passed to this 
           callback when the operation is complete. The Application
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func getApplicationAsync(
            input: AppConfigModel.GetApplicationRequest, 
            completion: @escaping (Result<AppConfigModel.Application, AppConfigError>) -> ()) throws {
        if let getApplicationAsyncOverride = getApplicationAsyncOverride {
            return try getApplicationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetApplicationRequest object being passed to this operation.
     - Returns: The Application object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func getApplicationSync(
            input: AppConfigModel.GetApplicationRequest) throws -> AppConfigModel.Application {
        if let getApplicationSyncOverride = getApplicationSyncOverride {
            return try getApplicationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetConfigurationRequest object being passed to this operation.
         - completion: The Configuration object or an error will be passed to this 
           callback when the operation is complete. The Configuration
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func getConfigurationAsync(
            input: AppConfigModel.GetConfigurationRequest, 
            completion: @escaping (Result<AppConfigModel.Configuration, AppConfigError>) -> ()) throws {
        if let getConfigurationAsyncOverride = getConfigurationAsyncOverride {
            return try getConfigurationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetConfigurationRequest object being passed to this operation.
     - Returns: The Configuration object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func getConfigurationSync(
            input: AppConfigModel.GetConfigurationRequest) throws -> AppConfigModel.Configuration {
        if let getConfigurationSyncOverride = getConfigurationSyncOverride {
            return try getConfigurationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetConfigurationProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetConfigurationProfileRequest object being passed to this operation.
         - completion: The ConfigurationProfile object or an error will be passed to this 
           callback when the operation is complete. The ConfigurationProfile
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func getConfigurationProfileAsync(
            input: AppConfigModel.GetConfigurationProfileRequest, 
            completion: @escaping (Result<AppConfigModel.ConfigurationProfile, AppConfigError>) -> ()) throws {
        if let getConfigurationProfileAsyncOverride = getConfigurationProfileAsyncOverride {
            return try getConfigurationProfileAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetConfigurationProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetConfigurationProfileRequest object being passed to this operation.
     - Returns: The ConfigurationProfile object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func getConfigurationProfileSync(
            input: AppConfigModel.GetConfigurationProfileRequest) throws -> AppConfigModel.ConfigurationProfile {
        if let getConfigurationProfileSyncOverride = getConfigurationProfileSyncOverride {
            return try getConfigurationProfileSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetDeployment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetDeploymentRequest object being passed to this operation.
         - completion: The Deployment object or an error will be passed to this 
           callback when the operation is complete. The Deployment
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func getDeploymentAsync(
            input: AppConfigModel.GetDeploymentRequest, 
            completion: @escaping (Result<AppConfigModel.Deployment, AppConfigError>) -> ()) throws {
        if let getDeploymentAsyncOverride = getDeploymentAsyncOverride {
            return try getDeploymentAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetDeployment operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetDeploymentRequest object being passed to this operation.
     - Returns: The Deployment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func getDeploymentSync(
            input: AppConfigModel.GetDeploymentRequest) throws -> AppConfigModel.Deployment {
        if let getDeploymentSyncOverride = getDeploymentSyncOverride {
            return try getDeploymentSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetDeploymentStrategy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetDeploymentStrategyRequest object being passed to this operation.
         - completion: The DeploymentStrategy object or an error will be passed to this 
           callback when the operation is complete. The DeploymentStrategy
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func getDeploymentStrategyAsync(
            input: AppConfigModel.GetDeploymentStrategyRequest, 
            completion: @escaping (Result<AppConfigModel.DeploymentStrategy, AppConfigError>) -> ()) throws {
        if let getDeploymentStrategyAsyncOverride = getDeploymentStrategyAsyncOverride {
            return try getDeploymentStrategyAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetDeploymentStrategy operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetDeploymentStrategyRequest object being passed to this operation.
     - Returns: The DeploymentStrategy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func getDeploymentStrategySync(
            input: AppConfigModel.GetDeploymentStrategyRequest) throws -> AppConfigModel.DeploymentStrategy {
        if let getDeploymentStrategySyncOverride = getDeploymentStrategySyncOverride {
            return try getDeploymentStrategySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetEnvironment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetEnvironmentRequest object being passed to this operation.
         - completion: The Environment object or an error will be passed to this 
           callback when the operation is complete. The Environment
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func getEnvironmentAsync(
            input: AppConfigModel.GetEnvironmentRequest, 
            completion: @escaping (Result<AppConfigModel.Environment, AppConfigError>) -> ()) throws {
        if let getEnvironmentAsyncOverride = getEnvironmentAsyncOverride {
            return try getEnvironmentAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetEnvironment operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetEnvironmentRequest object being passed to this operation.
     - Returns: The Environment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func getEnvironmentSync(
            input: AppConfigModel.GetEnvironmentRequest) throws -> AppConfigModel.Environment {
        if let getEnvironmentSyncOverride = getEnvironmentSyncOverride {
            return try getEnvironmentSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetExtension operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetExtensionRequest object being passed to this operation.
         - completion: The Extension object or an error will be passed to this 
           callback when the operation is complete. The Extension
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func getExtensionAsync(
            input: AppConfigModel.GetExtensionRequest, 
            completion: @escaping (Result<AppConfigModel.Extension, AppConfigError>) -> ()) throws {
        if let getExtensionAsyncOverride = getExtensionAsyncOverride {
            return try getExtensionAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetExtension operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetExtensionRequest object being passed to this operation.
     - Returns: The Extension object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func getExtensionSync(
            input: AppConfigModel.GetExtensionRequest) throws -> AppConfigModel.Extension {
        if let getExtensionSyncOverride = getExtensionSyncOverride {
            return try getExtensionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetExtensionAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetExtensionAssociationRequest object being passed to this operation.
         - completion: The ExtensionAssociation object or an error will be passed to this 
           callback when the operation is complete. The ExtensionAssociation
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func getExtensionAssociationAsync(
            input: AppConfigModel.GetExtensionAssociationRequest, 
            completion: @escaping (Result<AppConfigModel.ExtensionAssociation, AppConfigError>) -> ()) throws {
        if let getExtensionAssociationAsyncOverride = getExtensionAssociationAsyncOverride {
            return try getExtensionAssociationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetExtensionAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetExtensionAssociationRequest object being passed to this operation.
     - Returns: The ExtensionAssociation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func getExtensionAssociationSync(
            input: AppConfigModel.GetExtensionAssociationRequest) throws -> AppConfigModel.ExtensionAssociation {
        if let getExtensionAssociationSyncOverride = getExtensionAssociationSyncOverride {
            return try getExtensionAssociationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetHostedConfigurationVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetHostedConfigurationVersionRequest object being passed to this operation.
         - completion: The HostedConfigurationVersion object or an error will be passed to this 
           callback when the operation is complete. The HostedConfigurationVersion
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func getHostedConfigurationVersionAsync(
            input: AppConfigModel.GetHostedConfigurationVersionRequest, 
            completion: @escaping (Result<AppConfigModel.HostedConfigurationVersion, AppConfigError>) -> ()) throws {
        if let getHostedConfigurationVersionAsyncOverride = getHostedConfigurationVersionAsyncOverride {
            return try getHostedConfigurationVersionAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetHostedConfigurationVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetHostedConfigurationVersionRequest object being passed to this operation.
     - Returns: The HostedConfigurationVersion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func getHostedConfigurationVersionSync(
            input: AppConfigModel.GetHostedConfigurationVersionRequest) throws -> AppConfigModel.HostedConfigurationVersion {
        if let getHostedConfigurationVersionSyncOverride = getHostedConfigurationVersionSyncOverride {
            return try getHostedConfigurationVersionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListApplications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListApplicationsRequest object being passed to this operation.
         - completion: The Applications object or an error will be passed to this 
           callback when the operation is complete. The Applications
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer.
     */
    public func listApplicationsAsync(
            input: AppConfigModel.ListApplicationsRequest, 
            completion: @escaping (Result<AppConfigModel.Applications, AppConfigError>) -> ()) throws {
        if let listApplicationsAsyncOverride = listApplicationsAsyncOverride {
            return try listApplicationsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListApplications operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListApplicationsRequest object being passed to this operation.
     - Returns: The Applications object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer.
     */
    public func listApplicationsSync(
            input: AppConfigModel.ListApplicationsRequest) throws -> AppConfigModel.Applications {
        if let listApplicationsSyncOverride = listApplicationsSyncOverride {
            return try listApplicationsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListConfigurationProfiles operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListConfigurationProfilesRequest object being passed to this operation.
         - completion: The ConfigurationProfiles object or an error will be passed to this 
           callback when the operation is complete. The ConfigurationProfiles
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func listConfigurationProfilesAsync(
            input: AppConfigModel.ListConfigurationProfilesRequest, 
            completion: @escaping (Result<AppConfigModel.ConfigurationProfiles, AppConfigError>) -> ()) throws {
        if let listConfigurationProfilesAsyncOverride = listConfigurationProfilesAsyncOverride {
            return try listConfigurationProfilesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListConfigurationProfiles operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListConfigurationProfilesRequest object being passed to this operation.
     - Returns: The ConfigurationProfiles object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func listConfigurationProfilesSync(
            input: AppConfigModel.ListConfigurationProfilesRequest) throws -> AppConfigModel.ConfigurationProfiles {
        if let listConfigurationProfilesSyncOverride = listConfigurationProfilesSyncOverride {
            return try listConfigurationProfilesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListDeploymentStrategies operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListDeploymentStrategiesRequest object being passed to this operation.
         - completion: The DeploymentStrategies object or an error will be passed to this 
           callback when the operation is complete. The DeploymentStrategies
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer.
     */
    public func listDeploymentStrategiesAsync(
            input: AppConfigModel.ListDeploymentStrategiesRequest, 
            completion: @escaping (Result<AppConfigModel.DeploymentStrategies, AppConfigError>) -> ()) throws {
        if let listDeploymentStrategiesAsyncOverride = listDeploymentStrategiesAsyncOverride {
            return try listDeploymentStrategiesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListDeploymentStrategies operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListDeploymentStrategiesRequest object being passed to this operation.
     - Returns: The DeploymentStrategies object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer.
     */
    public func listDeploymentStrategiesSync(
            input: AppConfigModel.ListDeploymentStrategiesRequest) throws -> AppConfigModel.DeploymentStrategies {
        if let listDeploymentStrategiesSyncOverride = listDeploymentStrategiesSyncOverride {
            return try listDeploymentStrategiesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListDeployments operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListDeploymentsRequest object being passed to this operation.
         - completion: The Deployments object or an error will be passed to this 
           callback when the operation is complete. The Deployments
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func listDeploymentsAsync(
            input: AppConfigModel.ListDeploymentsRequest, 
            completion: @escaping (Result<AppConfigModel.Deployments, AppConfigError>) -> ()) throws {
        if let listDeploymentsAsyncOverride = listDeploymentsAsyncOverride {
            return try listDeploymentsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListDeployments operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListDeploymentsRequest object being passed to this operation.
     - Returns: The Deployments object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func listDeploymentsSync(
            input: AppConfigModel.ListDeploymentsRequest) throws -> AppConfigModel.Deployments {
        if let listDeploymentsSyncOverride = listDeploymentsSyncOverride {
            return try listDeploymentsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListEnvironments operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListEnvironmentsRequest object being passed to this operation.
         - completion: The Environments object or an error will be passed to this 
           callback when the operation is complete. The Environments
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func listEnvironmentsAsync(
            input: AppConfigModel.ListEnvironmentsRequest, 
            completion: @escaping (Result<AppConfigModel.Environments, AppConfigError>) -> ()) throws {
        if let listEnvironmentsAsyncOverride = listEnvironmentsAsyncOverride {
            return try listEnvironmentsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListEnvironments operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListEnvironmentsRequest object being passed to this operation.
     - Returns: The Environments object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func listEnvironmentsSync(
            input: AppConfigModel.ListEnvironmentsRequest) throws -> AppConfigModel.Environments {
        if let listEnvironmentsSyncOverride = listEnvironmentsSyncOverride {
            return try listEnvironmentsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListExtensionAssociations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListExtensionAssociationsRequest object being passed to this operation.
         - completion: The ExtensionAssociations object or an error will be passed to this 
           callback when the operation is complete. The ExtensionAssociations
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer.
     */
    public func listExtensionAssociationsAsync(
            input: AppConfigModel.ListExtensionAssociationsRequest, 
            completion: @escaping (Result<AppConfigModel.ExtensionAssociations, AppConfigError>) -> ()) throws {
        if let listExtensionAssociationsAsyncOverride = listExtensionAssociationsAsyncOverride {
            return try listExtensionAssociationsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListExtensionAssociations operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListExtensionAssociationsRequest object being passed to this operation.
     - Returns: The ExtensionAssociations object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer.
     */
    public func listExtensionAssociationsSync(
            input: AppConfigModel.ListExtensionAssociationsRequest) throws -> AppConfigModel.ExtensionAssociations {
        if let listExtensionAssociationsSyncOverride = listExtensionAssociationsSyncOverride {
            return try listExtensionAssociationsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListExtensions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListExtensionsRequest object being passed to this operation.
         - completion: The Extensions object or an error will be passed to this 
           callback when the operation is complete. The Extensions
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer.
     */
    public func listExtensionsAsync(
            input: AppConfigModel.ListExtensionsRequest, 
            completion: @escaping (Result<AppConfigModel.Extensions, AppConfigError>) -> ()) throws {
        if let listExtensionsAsyncOverride = listExtensionsAsyncOverride {
            return try listExtensionsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListExtensions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListExtensionsRequest object being passed to this operation.
     - Returns: The Extensions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer.
     */
    public func listExtensionsSync(
            input: AppConfigModel.ListExtensionsRequest) throws -> AppConfigModel.Extensions {
        if let listExtensionsSyncOverride = listExtensionsSyncOverride {
            return try listExtensionsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListHostedConfigurationVersions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListHostedConfigurationVersionsRequest object being passed to this operation.
         - completion: The HostedConfigurationVersions object or an error will be passed to this 
           callback when the operation is complete. The HostedConfigurationVersions
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func listHostedConfigurationVersionsAsync(
            input: AppConfigModel.ListHostedConfigurationVersionsRequest, 
            completion: @escaping (Result<AppConfigModel.HostedConfigurationVersions, AppConfigError>) -> ()) throws {
        if let listHostedConfigurationVersionsAsyncOverride = listHostedConfigurationVersionsAsyncOverride {
            return try listHostedConfigurationVersionsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListHostedConfigurationVersions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListHostedConfigurationVersionsRequest object being passed to this operation.
     - Returns: The HostedConfigurationVersions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func listHostedConfigurationVersionsSync(
            input: AppConfigModel.ListHostedConfigurationVersionsRequest) throws -> AppConfigModel.HostedConfigurationVersions {
        if let listHostedConfigurationVersionsSyncOverride = listHostedConfigurationVersionsSyncOverride {
            return try listHostedConfigurationVersionsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
         - completion: The ResourceTags object or an error will be passed to this 
           callback when the operation is complete. The ResourceTags
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func listTagsForResourceAsync(
            input: AppConfigModel.ListTagsForResourceRequest, 
            completion: @escaping (Result<AppConfigModel.ResourceTags, AppConfigError>) -> ()) throws {
        if let listTagsForResourceAsyncOverride = listTagsForResourceAsyncOverride {
            return try listTagsForResourceAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: The ResourceTags object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func listTagsForResourceSync(
            input: AppConfigModel.ListTagsForResourceRequest) throws -> AppConfigModel.ResourceTags {
        if let listTagsForResourceSyncOverride = listTagsForResourceSyncOverride {
            return try listTagsForResourceSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the StartDeployment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartDeploymentRequest object being passed to this operation.
         - completion: The Deployment object or an error will be passed to this 
           callback when the operation is complete. The Deployment
           object will be validated before being returned to caller.
           The possible errors are: badRequest, conflict, internalServer, resourceNotFound.
     */
    public func startDeploymentAsync(
            input: AppConfigModel.StartDeploymentRequest, 
            completion: @escaping (Result<AppConfigModel.Deployment, AppConfigError>) -> ()) throws {
        if let startDeploymentAsyncOverride = startDeploymentAsyncOverride {
            return try startDeploymentAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the StartDeployment operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartDeploymentRequest object being passed to this operation.
     - Returns: The Deployment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, conflict, internalServer, resourceNotFound.
     */
    public func startDeploymentSync(
            input: AppConfigModel.StartDeploymentRequest) throws -> AppConfigModel.Deployment {
        if let startDeploymentSyncOverride = startDeploymentSyncOverride {
            return try startDeploymentSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the StopDeployment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopDeploymentRequest object being passed to this operation.
         - completion: The Deployment object or an error will be passed to this 
           callback when the operation is complete. The Deployment
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func stopDeploymentAsync(
            input: AppConfigModel.StopDeploymentRequest, 
            completion: @escaping (Result<AppConfigModel.Deployment, AppConfigError>) -> ()) throws {
        if let stopDeploymentAsyncOverride = stopDeploymentAsyncOverride {
            return try stopDeploymentAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the StopDeployment operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopDeploymentRequest object being passed to this operation.
     - Returns: The Deployment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func stopDeploymentSync(
            input: AppConfigModel.StopDeploymentRequest) throws -> AppConfigModel.Deployment {
        if let stopDeploymentSyncOverride = stopDeploymentSyncOverride {
            return try stopDeploymentSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func tagResourceAsync(
            input: AppConfigModel.TagResourceRequest, 
            completion: @escaping (AppConfigError?) -> ()) throws {
        if let tagResourceAsyncOverride = tagResourceAsyncOverride {
            return try tagResourceAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func tagResourceSync(
            input: AppConfigModel.TagResourceRequest) throws {
        if let tagResourceSyncOverride = tagResourceSyncOverride {
            return try tagResourceSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func untagResourceAsync(
            input: AppConfigModel.UntagResourceRequest, 
            completion: @escaping (AppConfigError?) -> ()) throws {
        if let untagResourceAsyncOverride = untagResourceAsyncOverride {
            return try untagResourceAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func untagResourceSync(
            input: AppConfigModel.UntagResourceRequest) throws {
        if let untagResourceSyncOverride = untagResourceSyncOverride {
            return try untagResourceSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the UpdateApplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateApplicationRequest object being passed to this operation.
         - completion: The Application object or an error will be passed to this 
           callback when the operation is complete. The Application
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func updateApplicationAsync(
            input: AppConfigModel.UpdateApplicationRequest, 
            completion: @escaping (Result<AppConfigModel.Application, AppConfigError>) -> ()) throws {
        if let updateApplicationAsyncOverride = updateApplicationAsyncOverride {
            return try updateApplicationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the UpdateApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateApplicationRequest object being passed to this operation.
     - Returns: The Application object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func updateApplicationSync(
            input: AppConfigModel.UpdateApplicationRequest) throws -> AppConfigModel.Application {
        if let updateApplicationSyncOverride = updateApplicationSyncOverride {
            return try updateApplicationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the UpdateConfigurationProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateConfigurationProfileRequest object being passed to this operation.
         - completion: The ConfigurationProfile object or an error will be passed to this 
           callback when the operation is complete. The ConfigurationProfile
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func updateConfigurationProfileAsync(
            input: AppConfigModel.UpdateConfigurationProfileRequest, 
            completion: @escaping (Result<AppConfigModel.ConfigurationProfile, AppConfigError>) -> ()) throws {
        if let updateConfigurationProfileAsyncOverride = updateConfigurationProfileAsyncOverride {
            return try updateConfigurationProfileAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the UpdateConfigurationProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateConfigurationProfileRequest object being passed to this operation.
     - Returns: The ConfigurationProfile object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func updateConfigurationProfileSync(
            input: AppConfigModel.UpdateConfigurationProfileRequest) throws -> AppConfigModel.ConfigurationProfile {
        if let updateConfigurationProfileSyncOverride = updateConfigurationProfileSyncOverride {
            return try updateConfigurationProfileSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the UpdateDeploymentStrategy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateDeploymentStrategyRequest object being passed to this operation.
         - completion: The DeploymentStrategy object or an error will be passed to this 
           callback when the operation is complete. The DeploymentStrategy
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func updateDeploymentStrategyAsync(
            input: AppConfigModel.UpdateDeploymentStrategyRequest, 
            completion: @escaping (Result<AppConfigModel.DeploymentStrategy, AppConfigError>) -> ()) throws {
        if let updateDeploymentStrategyAsyncOverride = updateDeploymentStrategyAsyncOverride {
            return try updateDeploymentStrategyAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the UpdateDeploymentStrategy operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateDeploymentStrategyRequest object being passed to this operation.
     - Returns: The DeploymentStrategy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func updateDeploymentStrategySync(
            input: AppConfigModel.UpdateDeploymentStrategyRequest) throws -> AppConfigModel.DeploymentStrategy {
        if let updateDeploymentStrategySyncOverride = updateDeploymentStrategySyncOverride {
            return try updateDeploymentStrategySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the UpdateEnvironment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateEnvironmentRequest object being passed to this operation.
         - completion: The Environment object or an error will be passed to this 
           callback when the operation is complete. The Environment
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func updateEnvironmentAsync(
            input: AppConfigModel.UpdateEnvironmentRequest, 
            completion: @escaping (Result<AppConfigModel.Environment, AppConfigError>) -> ()) throws {
        if let updateEnvironmentAsyncOverride = updateEnvironmentAsyncOverride {
            return try updateEnvironmentAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the UpdateEnvironment operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateEnvironmentRequest object being passed to this operation.
     - Returns: The Environment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func updateEnvironmentSync(
            input: AppConfigModel.UpdateEnvironmentRequest) throws -> AppConfigModel.Environment {
        if let updateEnvironmentSyncOverride = updateEnvironmentSyncOverride {
            return try updateEnvironmentSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the UpdateExtension operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateExtensionRequest object being passed to this operation.
         - completion: The Extension object or an error will be passed to this 
           callback when the operation is complete. The Extension
           object will be validated before being returned to caller.
           The possible errors are: badRequest, conflict, internalServer, resourceNotFound.
     */
    public func updateExtensionAsync(
            input: AppConfigModel.UpdateExtensionRequest, 
            completion: @escaping (Result<AppConfigModel.Extension, AppConfigError>) -> ()) throws {
        if let updateExtensionAsyncOverride = updateExtensionAsyncOverride {
            return try updateExtensionAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the UpdateExtension operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateExtensionRequest object being passed to this operation.
     - Returns: The Extension object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, conflict, internalServer, resourceNotFound.
     */
    public func updateExtensionSync(
            input: AppConfigModel.UpdateExtensionRequest) throws -> AppConfigModel.Extension {
        if let updateExtensionSyncOverride = updateExtensionSyncOverride {
            return try updateExtensionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the UpdateExtensionAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateExtensionAssociationRequest object being passed to this operation.
         - completion: The ExtensionAssociation object or an error will be passed to this 
           callback when the operation is complete. The ExtensionAssociation
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func updateExtensionAssociationAsync(
            input: AppConfigModel.UpdateExtensionAssociationRequest, 
            completion: @escaping (Result<AppConfigModel.ExtensionAssociation, AppConfigError>) -> ()) throws {
        if let updateExtensionAssociationAsyncOverride = updateExtensionAssociationAsyncOverride {
            return try updateExtensionAssociationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the UpdateExtensionAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateExtensionAssociationRequest object being passed to this operation.
     - Returns: The ExtensionAssociation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func updateExtensionAssociationSync(
            input: AppConfigModel.UpdateExtensionAssociationRequest) throws -> AppConfigModel.ExtensionAssociation {
        if let updateExtensionAssociationSyncOverride = updateExtensionAssociationSyncOverride {
            return try updateExtensionAssociationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ValidateConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ValidateConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func validateConfigurationAsync(
            input: AppConfigModel.ValidateConfigurationRequest, 
            completion: @escaping (AppConfigError?) -> ()) throws {
        if let validateConfigurationAsyncOverride = validateConfigurationAsyncOverride {
            return try validateConfigurationAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the ValidateConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated ValidateConfigurationRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func validateConfigurationSync(
            input: AppConfigModel.ValidateConfigurationRequest) throws {
        if let validateConfigurationSyncOverride = validateConfigurationSyncOverride {
            return try validateConfigurationSyncOverride(input)
        }

        throw error
    }
}
