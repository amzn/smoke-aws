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
// MockAppConfigClient.swift
// AppConfigClient
//

import Foundation
import AppConfigModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the AppConfig service by default returns the `__default` property of its return type.
 */
public struct MockAppConfigClient: AppConfigClientProtocol {
    let createApplicationAsyncOverride: CreateApplicationAsyncType?
    let createApplicationSyncOverride: CreateApplicationSyncType?
    let createConfigurationProfileAsyncOverride: CreateConfigurationProfileAsyncType?
    let createConfigurationProfileSyncOverride: CreateConfigurationProfileSyncType?
    let createDeploymentStrategyAsyncOverride: CreateDeploymentStrategyAsyncType?
    let createDeploymentStrategySyncOverride: CreateDeploymentStrategySyncType?
    let createEnvironmentAsyncOverride: CreateEnvironmentAsyncType?
    let createEnvironmentSyncOverride: CreateEnvironmentSyncType?
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
    let validateConfigurationAsyncOverride: ValidateConfigurationAsyncType?
    let validateConfigurationSyncOverride: ValidateConfigurationSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            createApplicationAsync: CreateApplicationAsyncType? = nil,
            createApplicationSync: CreateApplicationSyncType? = nil,
            createConfigurationProfileAsync: CreateConfigurationProfileAsyncType? = nil,
            createConfigurationProfileSync: CreateConfigurationProfileSyncType? = nil,
            createDeploymentStrategyAsync: CreateDeploymentStrategyAsyncType? = nil,
            createDeploymentStrategySync: CreateDeploymentStrategySyncType? = nil,
            createEnvironmentAsync: CreateEnvironmentAsyncType? = nil,
            createEnvironmentSync: CreateEnvironmentSyncType? = nil,
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
            validateConfigurationAsync: ValidateConfigurationAsyncType? = nil,
            validateConfigurationSync: ValidateConfigurationSyncType? = nil) {
        self.createApplicationAsyncOverride = createApplicationAsync
        self.createApplicationSyncOverride = createApplicationSync
        self.createConfigurationProfileAsyncOverride = createConfigurationProfileAsync
        self.createConfigurationProfileSyncOverride = createConfigurationProfileSync
        self.createDeploymentStrategyAsyncOverride = createDeploymentStrategyAsync
        self.createDeploymentStrategySyncOverride = createDeploymentStrategySync
        self.createEnvironmentAsyncOverride = createEnvironmentAsync
        self.createEnvironmentSyncOverride = createEnvironmentSync
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

        let result = Application.__default
        
        completion(.success(result))
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

        return Application.__default
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

        let result = ConfigurationProfile.__default
        
        completion(.success(result))
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

        return ConfigurationProfile.__default
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

        let result = DeploymentStrategy.__default
        
        completion(.success(result))
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

        return DeploymentStrategy.__default
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

        let result = Environment.__default
        
        completion(.success(result))
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

        return Environment.__default
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

        let result = HostedConfigurationVersion.__default
        
        completion(.success(result))
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

        return HostedConfigurationVersion.__default
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

        completion(nil)
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

        completion(nil)
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

        completion(nil)
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

        completion(nil)
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

        completion(nil)
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

        let result = Application.__default
        
        completion(.success(result))
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

        return Application.__default
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

        let result = Configuration.__default
        
        completion(.success(result))
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

        return Configuration.__default
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

        let result = ConfigurationProfile.__default
        
        completion(.success(result))
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

        return ConfigurationProfile.__default
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

        let result = Deployment.__default
        
        completion(.success(result))
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

        return Deployment.__default
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

        let result = DeploymentStrategy.__default
        
        completion(.success(result))
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

        return DeploymentStrategy.__default
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

        let result = Environment.__default
        
        completion(.success(result))
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

        return Environment.__default
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

        let result = HostedConfigurationVersion.__default
        
        completion(.success(result))
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

        return HostedConfigurationVersion.__default
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

        let result = Applications.__default
        
        completion(.success(result))
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

        return Applications.__default
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

        let result = ConfigurationProfiles.__default
        
        completion(.success(result))
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

        return ConfigurationProfiles.__default
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

        let result = DeploymentStrategies.__default
        
        completion(.success(result))
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

        return DeploymentStrategies.__default
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

        let result = Deployments.__default
        
        completion(.success(result))
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

        return Deployments.__default
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

        let result = Environments.__default
        
        completion(.success(result))
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

        return Environments.__default
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

        let result = HostedConfigurationVersions.__default
        
        completion(.success(result))
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

        return HostedConfigurationVersions.__default
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

        let result = ResourceTags.__default
        
        completion(.success(result))
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

        return ResourceTags.__default
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

        let result = Deployment.__default
        
        completion(.success(result))
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

        return Deployment.__default
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

        let result = Deployment.__default
        
        completion(.success(result))
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

        return Deployment.__default
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

        completion(nil)
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

        completion(nil)
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

        let result = Application.__default
        
        completion(.success(result))
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

        return Application.__default
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

        let result = ConfigurationProfile.__default
        
        completion(.success(result))
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

        return ConfigurationProfile.__default
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

        let result = DeploymentStrategy.__default
        
        completion(.success(result))
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

        return DeploymentStrategy.__default
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

        let result = Environment.__default
        
        completion(.success(result))
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

        return Environment.__default
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

        completion(nil)
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

    }
}
