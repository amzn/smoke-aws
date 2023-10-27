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
// AppConfigClientProtocol.swift
// AppConfigClient
//

import Foundation
import AppConfigModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the AppConfig service.
 */
public protocol AppConfigClientProtocol: AppConfigClientProtocolV2 {
    typealias CreateApplicationSyncType = (
            _ input: AppConfigModel.CreateApplicationRequest) throws -> AppConfigModel.Application
    typealias CreateApplicationAsyncType = (
            _ input: AppConfigModel.CreateApplicationRequest, 
            _ completion: @escaping (Result<AppConfigModel.Application, AppConfigError>) -> ()) throws -> ()
    typealias CreateConfigurationProfileSyncType = (
            _ input: AppConfigModel.CreateConfigurationProfileRequest) throws -> AppConfigModel.ConfigurationProfile
    typealias CreateConfigurationProfileAsyncType = (
            _ input: AppConfigModel.CreateConfigurationProfileRequest, 
            _ completion: @escaping (Result<AppConfigModel.ConfigurationProfile, AppConfigError>) -> ()) throws -> ()
    typealias CreateDeploymentStrategySyncType = (
            _ input: AppConfigModel.CreateDeploymentStrategyRequest) throws -> AppConfigModel.DeploymentStrategy
    typealias CreateDeploymentStrategyAsyncType = (
            _ input: AppConfigModel.CreateDeploymentStrategyRequest, 
            _ completion: @escaping (Result<AppConfigModel.DeploymentStrategy, AppConfigError>) -> ()) throws -> ()
    typealias CreateEnvironmentSyncType = (
            _ input: AppConfigModel.CreateEnvironmentRequest) throws -> AppConfigModel.Environment
    typealias CreateEnvironmentAsyncType = (
            _ input: AppConfigModel.CreateEnvironmentRequest, 
            _ completion: @escaping (Result<AppConfigModel.Environment, AppConfigError>) -> ()) throws -> ()
    typealias CreateExtensionSyncType = (
            _ input: AppConfigModel.CreateExtensionRequest) throws -> AppConfigModel.Extension
    typealias CreateExtensionAsyncType = (
            _ input: AppConfigModel.CreateExtensionRequest, 
            _ completion: @escaping (Result<AppConfigModel.Extension, AppConfigError>) -> ()) throws -> ()
    typealias CreateExtensionAssociationSyncType = (
            _ input: AppConfigModel.CreateExtensionAssociationRequest) throws -> AppConfigModel.ExtensionAssociation
    typealias CreateExtensionAssociationAsyncType = (
            _ input: AppConfigModel.CreateExtensionAssociationRequest, 
            _ completion: @escaping (Result<AppConfigModel.ExtensionAssociation, AppConfigError>) -> ()) throws -> ()
    typealias CreateHostedConfigurationVersionSyncType = (
            _ input: AppConfigModel.CreateHostedConfigurationVersionRequest) throws -> AppConfigModel.HostedConfigurationVersion
    typealias CreateHostedConfigurationVersionAsyncType = (
            _ input: AppConfigModel.CreateHostedConfigurationVersionRequest, 
            _ completion: @escaping (Result<AppConfigModel.HostedConfigurationVersion, AppConfigError>) -> ()) throws -> ()
    typealias DeleteApplicationSyncType = (
            _ input: AppConfigModel.DeleteApplicationRequest) throws -> ()
    typealias DeleteApplicationAsyncType = (
            _ input: AppConfigModel.DeleteApplicationRequest, 
            _ completion: @escaping (AppConfigError?) -> ()) throws -> ()
    typealias DeleteConfigurationProfileSyncType = (
            _ input: AppConfigModel.DeleteConfigurationProfileRequest) throws -> ()
    typealias DeleteConfigurationProfileAsyncType = (
            _ input: AppConfigModel.DeleteConfigurationProfileRequest, 
            _ completion: @escaping (AppConfigError?) -> ()) throws -> ()
    typealias DeleteDeploymentStrategySyncType = (
            _ input: AppConfigModel.DeleteDeploymentStrategyRequest) throws -> ()
    typealias DeleteDeploymentStrategyAsyncType = (
            _ input: AppConfigModel.DeleteDeploymentStrategyRequest, 
            _ completion: @escaping (AppConfigError?) -> ()) throws -> ()
    typealias DeleteEnvironmentSyncType = (
            _ input: AppConfigModel.DeleteEnvironmentRequest) throws -> ()
    typealias DeleteEnvironmentAsyncType = (
            _ input: AppConfigModel.DeleteEnvironmentRequest, 
            _ completion: @escaping (AppConfigError?) -> ()) throws -> ()
    typealias DeleteExtensionSyncType = (
            _ input: AppConfigModel.DeleteExtensionRequest) throws -> ()
    typealias DeleteExtensionAsyncType = (
            _ input: AppConfigModel.DeleteExtensionRequest, 
            _ completion: @escaping (AppConfigError?) -> ()) throws -> ()
    typealias DeleteExtensionAssociationSyncType = (
            _ input: AppConfigModel.DeleteExtensionAssociationRequest) throws -> ()
    typealias DeleteExtensionAssociationAsyncType = (
            _ input: AppConfigModel.DeleteExtensionAssociationRequest, 
            _ completion: @escaping (AppConfigError?) -> ()) throws -> ()
    typealias DeleteHostedConfigurationVersionSyncType = (
            _ input: AppConfigModel.DeleteHostedConfigurationVersionRequest) throws -> ()
    typealias DeleteHostedConfigurationVersionAsyncType = (
            _ input: AppConfigModel.DeleteHostedConfigurationVersionRequest, 
            _ completion: @escaping (AppConfigError?) -> ()) throws -> ()
    typealias GetApplicationSyncType = (
            _ input: AppConfigModel.GetApplicationRequest) throws -> AppConfigModel.Application
    typealias GetApplicationAsyncType = (
            _ input: AppConfigModel.GetApplicationRequest, 
            _ completion: @escaping (Result<AppConfigModel.Application, AppConfigError>) -> ()) throws -> ()
    typealias GetConfigurationSyncType = (
            _ input: AppConfigModel.GetConfigurationRequest) throws -> AppConfigModel.Configuration
    typealias GetConfigurationAsyncType = (
            _ input: AppConfigModel.GetConfigurationRequest, 
            _ completion: @escaping (Result<AppConfigModel.Configuration, AppConfigError>) -> ()) throws -> ()
    typealias GetConfigurationProfileSyncType = (
            _ input: AppConfigModel.GetConfigurationProfileRequest) throws -> AppConfigModel.ConfigurationProfile
    typealias GetConfigurationProfileAsyncType = (
            _ input: AppConfigModel.GetConfigurationProfileRequest, 
            _ completion: @escaping (Result<AppConfigModel.ConfigurationProfile, AppConfigError>) -> ()) throws -> ()
    typealias GetDeploymentSyncType = (
            _ input: AppConfigModel.GetDeploymentRequest) throws -> AppConfigModel.Deployment
    typealias GetDeploymentAsyncType = (
            _ input: AppConfigModel.GetDeploymentRequest, 
            _ completion: @escaping (Result<AppConfigModel.Deployment, AppConfigError>) -> ()) throws -> ()
    typealias GetDeploymentStrategySyncType = (
            _ input: AppConfigModel.GetDeploymentStrategyRequest) throws -> AppConfigModel.DeploymentStrategy
    typealias GetDeploymentStrategyAsyncType = (
            _ input: AppConfigModel.GetDeploymentStrategyRequest, 
            _ completion: @escaping (Result<AppConfigModel.DeploymentStrategy, AppConfigError>) -> ()) throws -> ()
    typealias GetEnvironmentSyncType = (
            _ input: AppConfigModel.GetEnvironmentRequest) throws -> AppConfigModel.Environment
    typealias GetEnvironmentAsyncType = (
            _ input: AppConfigModel.GetEnvironmentRequest, 
            _ completion: @escaping (Result<AppConfigModel.Environment, AppConfigError>) -> ()) throws -> ()
    typealias GetExtensionSyncType = (
            _ input: AppConfigModel.GetExtensionRequest) throws -> AppConfigModel.Extension
    typealias GetExtensionAsyncType = (
            _ input: AppConfigModel.GetExtensionRequest, 
            _ completion: @escaping (Result<AppConfigModel.Extension, AppConfigError>) -> ()) throws -> ()
    typealias GetExtensionAssociationSyncType = (
            _ input: AppConfigModel.GetExtensionAssociationRequest) throws -> AppConfigModel.ExtensionAssociation
    typealias GetExtensionAssociationAsyncType = (
            _ input: AppConfigModel.GetExtensionAssociationRequest, 
            _ completion: @escaping (Result<AppConfigModel.ExtensionAssociation, AppConfigError>) -> ()) throws -> ()
    typealias GetHostedConfigurationVersionSyncType = (
            _ input: AppConfigModel.GetHostedConfigurationVersionRequest) throws -> AppConfigModel.HostedConfigurationVersion
    typealias GetHostedConfigurationVersionAsyncType = (
            _ input: AppConfigModel.GetHostedConfigurationVersionRequest, 
            _ completion: @escaping (Result<AppConfigModel.HostedConfigurationVersion, AppConfigError>) -> ()) throws -> ()
    typealias ListApplicationsSyncType = (
            _ input: AppConfigModel.ListApplicationsRequest) throws -> AppConfigModel.Applications
    typealias ListApplicationsAsyncType = (
            _ input: AppConfigModel.ListApplicationsRequest, 
            _ completion: @escaping (Result<AppConfigModel.Applications, AppConfigError>) -> ()) throws -> ()
    typealias ListConfigurationProfilesSyncType = (
            _ input: AppConfigModel.ListConfigurationProfilesRequest) throws -> AppConfigModel.ConfigurationProfiles
    typealias ListConfigurationProfilesAsyncType = (
            _ input: AppConfigModel.ListConfigurationProfilesRequest, 
            _ completion: @escaping (Result<AppConfigModel.ConfigurationProfiles, AppConfigError>) -> ()) throws -> ()
    typealias ListDeploymentStrategiesSyncType = (
            _ input: AppConfigModel.ListDeploymentStrategiesRequest) throws -> AppConfigModel.DeploymentStrategies
    typealias ListDeploymentStrategiesAsyncType = (
            _ input: AppConfigModel.ListDeploymentStrategiesRequest, 
            _ completion: @escaping (Result<AppConfigModel.DeploymentStrategies, AppConfigError>) -> ()) throws -> ()
    typealias ListDeploymentsSyncType = (
            _ input: AppConfigModel.ListDeploymentsRequest) throws -> AppConfigModel.Deployments
    typealias ListDeploymentsAsyncType = (
            _ input: AppConfigModel.ListDeploymentsRequest, 
            _ completion: @escaping (Result<AppConfigModel.Deployments, AppConfigError>) -> ()) throws -> ()
    typealias ListEnvironmentsSyncType = (
            _ input: AppConfigModel.ListEnvironmentsRequest) throws -> AppConfigModel.Environments
    typealias ListEnvironmentsAsyncType = (
            _ input: AppConfigModel.ListEnvironmentsRequest, 
            _ completion: @escaping (Result<AppConfigModel.Environments, AppConfigError>) -> ()) throws -> ()
    typealias ListExtensionAssociationsSyncType = (
            _ input: AppConfigModel.ListExtensionAssociationsRequest) throws -> AppConfigModel.ExtensionAssociations
    typealias ListExtensionAssociationsAsyncType = (
            _ input: AppConfigModel.ListExtensionAssociationsRequest, 
            _ completion: @escaping (Result<AppConfigModel.ExtensionAssociations, AppConfigError>) -> ()) throws -> ()
    typealias ListExtensionsSyncType = (
            _ input: AppConfigModel.ListExtensionsRequest) throws -> AppConfigModel.Extensions
    typealias ListExtensionsAsyncType = (
            _ input: AppConfigModel.ListExtensionsRequest, 
            _ completion: @escaping (Result<AppConfigModel.Extensions, AppConfigError>) -> ()) throws -> ()
    typealias ListHostedConfigurationVersionsSyncType = (
            _ input: AppConfigModel.ListHostedConfigurationVersionsRequest) throws -> AppConfigModel.HostedConfigurationVersions
    typealias ListHostedConfigurationVersionsAsyncType = (
            _ input: AppConfigModel.ListHostedConfigurationVersionsRequest, 
            _ completion: @escaping (Result<AppConfigModel.HostedConfigurationVersions, AppConfigError>) -> ()) throws -> ()
    typealias ListTagsForResourceSyncType = (
            _ input: AppConfigModel.ListTagsForResourceRequest) throws -> AppConfigModel.ResourceTags
    typealias ListTagsForResourceAsyncType = (
            _ input: AppConfigModel.ListTagsForResourceRequest, 
            _ completion: @escaping (Result<AppConfigModel.ResourceTags, AppConfigError>) -> ()) throws -> ()
    typealias StartDeploymentSyncType = (
            _ input: AppConfigModel.StartDeploymentRequest) throws -> AppConfigModel.Deployment
    typealias StartDeploymentAsyncType = (
            _ input: AppConfigModel.StartDeploymentRequest, 
            _ completion: @escaping (Result<AppConfigModel.Deployment, AppConfigError>) -> ()) throws -> ()
    typealias StopDeploymentSyncType = (
            _ input: AppConfigModel.StopDeploymentRequest) throws -> AppConfigModel.Deployment
    typealias StopDeploymentAsyncType = (
            _ input: AppConfigModel.StopDeploymentRequest, 
            _ completion: @escaping (Result<AppConfigModel.Deployment, AppConfigError>) -> ()) throws -> ()
    typealias TagResourceSyncType = (
            _ input: AppConfigModel.TagResourceRequest) throws -> ()
    typealias TagResourceAsyncType = (
            _ input: AppConfigModel.TagResourceRequest, 
            _ completion: @escaping (AppConfigError?) -> ()) throws -> ()
    typealias UntagResourceSyncType = (
            _ input: AppConfigModel.UntagResourceRequest) throws -> ()
    typealias UntagResourceAsyncType = (
            _ input: AppConfigModel.UntagResourceRequest, 
            _ completion: @escaping (AppConfigError?) -> ()) throws -> ()
    typealias UpdateApplicationSyncType = (
            _ input: AppConfigModel.UpdateApplicationRequest) throws -> AppConfigModel.Application
    typealias UpdateApplicationAsyncType = (
            _ input: AppConfigModel.UpdateApplicationRequest, 
            _ completion: @escaping (Result<AppConfigModel.Application, AppConfigError>) -> ()) throws -> ()
    typealias UpdateConfigurationProfileSyncType = (
            _ input: AppConfigModel.UpdateConfigurationProfileRequest) throws -> AppConfigModel.ConfigurationProfile
    typealias UpdateConfigurationProfileAsyncType = (
            _ input: AppConfigModel.UpdateConfigurationProfileRequest, 
            _ completion: @escaping (Result<AppConfigModel.ConfigurationProfile, AppConfigError>) -> ()) throws -> ()
    typealias UpdateDeploymentStrategySyncType = (
            _ input: AppConfigModel.UpdateDeploymentStrategyRequest) throws -> AppConfigModel.DeploymentStrategy
    typealias UpdateDeploymentStrategyAsyncType = (
            _ input: AppConfigModel.UpdateDeploymentStrategyRequest, 
            _ completion: @escaping (Result<AppConfigModel.DeploymentStrategy, AppConfigError>) -> ()) throws -> ()
    typealias UpdateEnvironmentSyncType = (
            _ input: AppConfigModel.UpdateEnvironmentRequest) throws -> AppConfigModel.Environment
    typealias UpdateEnvironmentAsyncType = (
            _ input: AppConfigModel.UpdateEnvironmentRequest, 
            _ completion: @escaping (Result<AppConfigModel.Environment, AppConfigError>) -> ()) throws -> ()
    typealias UpdateExtensionSyncType = (
            _ input: AppConfigModel.UpdateExtensionRequest) throws -> AppConfigModel.Extension
    typealias UpdateExtensionAsyncType = (
            _ input: AppConfigModel.UpdateExtensionRequest, 
            _ completion: @escaping (Result<AppConfigModel.Extension, AppConfigError>) -> ()) throws -> ()
    typealias UpdateExtensionAssociationSyncType = (
            _ input: AppConfigModel.UpdateExtensionAssociationRequest) throws -> AppConfigModel.ExtensionAssociation
    typealias UpdateExtensionAssociationAsyncType = (
            _ input: AppConfigModel.UpdateExtensionAssociationRequest, 
            _ completion: @escaping (Result<AppConfigModel.ExtensionAssociation, AppConfigError>) -> ()) throws -> ()
    typealias ValidateConfigurationSyncType = (
            _ input: AppConfigModel.ValidateConfigurationRequest) throws -> ()
    typealias ValidateConfigurationAsyncType = (
            _ input: AppConfigModel.ValidateConfigurationRequest, 
            _ completion: @escaping (AppConfigError?) -> ()) throws -> ()

    /**
     Invokes the CreateApplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateApplicationRequest object being passed to this operation.
         - completion: The Application object or an error will be passed to this 
           callback when the operation is complete. The Application
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, serviceQuotaExceeded.
     */
    func createApplicationAsync(
            input: AppConfigModel.CreateApplicationRequest, 
            completion: @escaping (Result<AppConfigModel.Application, AppConfigError>) -> ()) throws

    /**
     Invokes the CreateApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateApplicationRequest object being passed to this operation.
     - Returns: The Application object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, serviceQuotaExceeded.
     */
    func createApplicationSync(
            input: AppConfigModel.CreateApplicationRequest) throws -> AppConfigModel.Application

    /**
     Invokes the CreateConfigurationProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateConfigurationProfileRequest object being passed to this operation.
         - completion: The ConfigurationProfile object or an error will be passed to this 
           callback when the operation is complete. The ConfigurationProfile
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound, serviceQuotaExceeded.
     */
    func createConfigurationProfileAsync(
            input: AppConfigModel.CreateConfigurationProfileRequest, 
            completion: @escaping (Result<AppConfigModel.ConfigurationProfile, AppConfigError>) -> ()) throws

    /**
     Invokes the CreateConfigurationProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateConfigurationProfileRequest object being passed to this operation.
     - Returns: The ConfigurationProfile object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound, serviceQuotaExceeded.
     */
    func createConfigurationProfileSync(
            input: AppConfigModel.CreateConfigurationProfileRequest) throws -> AppConfigModel.ConfigurationProfile

    /**
     Invokes the CreateDeploymentStrategy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDeploymentStrategyRequest object being passed to this operation.
         - completion: The DeploymentStrategy object or an error will be passed to this 
           callback when the operation is complete. The DeploymentStrategy
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, serviceQuotaExceeded.
     */
    func createDeploymentStrategyAsync(
            input: AppConfigModel.CreateDeploymentStrategyRequest, 
            completion: @escaping (Result<AppConfigModel.DeploymentStrategy, AppConfigError>) -> ()) throws

    /**
     Invokes the CreateDeploymentStrategy operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDeploymentStrategyRequest object being passed to this operation.
     - Returns: The DeploymentStrategy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, serviceQuotaExceeded.
     */
    func createDeploymentStrategySync(
            input: AppConfigModel.CreateDeploymentStrategyRequest) throws -> AppConfigModel.DeploymentStrategy

    /**
     Invokes the CreateEnvironment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateEnvironmentRequest object being passed to this operation.
         - completion: The Environment object or an error will be passed to this 
           callback when the operation is complete. The Environment
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound, serviceQuotaExceeded.
     */
    func createEnvironmentAsync(
            input: AppConfigModel.CreateEnvironmentRequest, 
            completion: @escaping (Result<AppConfigModel.Environment, AppConfigError>) -> ()) throws

    /**
     Invokes the CreateEnvironment operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateEnvironmentRequest object being passed to this operation.
     - Returns: The Environment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound, serviceQuotaExceeded.
     */
    func createEnvironmentSync(
            input: AppConfigModel.CreateEnvironmentRequest) throws -> AppConfigModel.Environment

    /**
     Invokes the CreateExtension operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateExtensionRequest object being passed to this operation.
         - completion: The Extension object or an error will be passed to this 
           callback when the operation is complete. The Extension
           object will be validated before being returned to caller.
           The possible errors are: badRequest, conflict, internalServer, serviceQuotaExceeded.
     */
    func createExtensionAsync(
            input: AppConfigModel.CreateExtensionRequest, 
            completion: @escaping (Result<AppConfigModel.Extension, AppConfigError>) -> ()) throws

    /**
     Invokes the CreateExtension operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateExtensionRequest object being passed to this operation.
     - Returns: The Extension object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, conflict, internalServer, serviceQuotaExceeded.
     */
    func createExtensionSync(
            input: AppConfigModel.CreateExtensionRequest) throws -> AppConfigModel.Extension

    /**
     Invokes the CreateExtensionAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateExtensionAssociationRequest object being passed to this operation.
         - completion: The ExtensionAssociation object or an error will be passed to this 
           callback when the operation is complete. The ExtensionAssociation
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound, serviceQuotaExceeded.
     */
    func createExtensionAssociationAsync(
            input: AppConfigModel.CreateExtensionAssociationRequest, 
            completion: @escaping (Result<AppConfigModel.ExtensionAssociation, AppConfigError>) -> ()) throws

    /**
     Invokes the CreateExtensionAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateExtensionAssociationRequest object being passed to this operation.
     - Returns: The ExtensionAssociation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound, serviceQuotaExceeded.
     */
    func createExtensionAssociationSync(
            input: AppConfigModel.CreateExtensionAssociationRequest) throws -> AppConfigModel.ExtensionAssociation

    /**
     Invokes the CreateHostedConfigurationVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateHostedConfigurationVersionRequest object being passed to this operation.
         - completion: The HostedConfigurationVersion object or an error will be passed to this 
           callback when the operation is complete. The HostedConfigurationVersion
           object will be validated before being returned to caller.
           The possible errors are: badRequest, conflict, internalServer, payloadTooLarge, resourceNotFound, serviceQuotaExceeded.
     */
    func createHostedConfigurationVersionAsync(
            input: AppConfigModel.CreateHostedConfigurationVersionRequest, 
            completion: @escaping (Result<AppConfigModel.HostedConfigurationVersion, AppConfigError>) -> ()) throws

    /**
     Invokes the CreateHostedConfigurationVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateHostedConfigurationVersionRequest object being passed to this operation.
     - Returns: The HostedConfigurationVersion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, conflict, internalServer, payloadTooLarge, resourceNotFound, serviceQuotaExceeded.
     */
    func createHostedConfigurationVersionSync(
            input: AppConfigModel.CreateHostedConfigurationVersionRequest) throws -> AppConfigModel.HostedConfigurationVersion

    /**
     Invokes the DeleteApplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteApplicationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    func deleteApplicationAsync(
            input: AppConfigModel.DeleteApplicationRequest, 
            completion: @escaping (AppConfigError?) -> ()) throws

    /**
     Invokes the DeleteApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteApplicationRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func deleteApplicationSync(
            input: AppConfigModel.DeleteApplicationRequest) throws

    /**
     Invokes the DeleteConfigurationProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteConfigurationProfileRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: badRequest, conflict, internalServer, resourceNotFound.
     */
    func deleteConfigurationProfileAsync(
            input: AppConfigModel.DeleteConfigurationProfileRequest, 
            completion: @escaping (AppConfigError?) -> ()) throws

    /**
     Invokes the DeleteConfigurationProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteConfigurationProfileRequest object being passed to this operation.
     - Throws: badRequest, conflict, internalServer, resourceNotFound.
     */
    func deleteConfigurationProfileSync(
            input: AppConfigModel.DeleteConfigurationProfileRequest) throws

    /**
     Invokes the DeleteDeploymentStrategy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDeploymentStrategyRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    func deleteDeploymentStrategyAsync(
            input: AppConfigModel.DeleteDeploymentStrategyRequest, 
            completion: @escaping (AppConfigError?) -> ()) throws

    /**
     Invokes the DeleteDeploymentStrategy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDeploymentStrategyRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func deleteDeploymentStrategySync(
            input: AppConfigModel.DeleteDeploymentStrategyRequest) throws

    /**
     Invokes the DeleteEnvironment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteEnvironmentRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: badRequest, conflict, internalServer, resourceNotFound.
     */
    func deleteEnvironmentAsync(
            input: AppConfigModel.DeleteEnvironmentRequest, 
            completion: @escaping (AppConfigError?) -> ()) throws

    /**
     Invokes the DeleteEnvironment operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteEnvironmentRequest object being passed to this operation.
     - Throws: badRequest, conflict, internalServer, resourceNotFound.
     */
    func deleteEnvironmentSync(
            input: AppConfigModel.DeleteEnvironmentRequest) throws

    /**
     Invokes the DeleteExtension operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteExtensionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    func deleteExtensionAsync(
            input: AppConfigModel.DeleteExtensionRequest, 
            completion: @escaping (AppConfigError?) -> ()) throws

    /**
     Invokes the DeleteExtension operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteExtensionRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func deleteExtensionSync(
            input: AppConfigModel.DeleteExtensionRequest) throws

    /**
     Invokes the DeleteExtensionAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteExtensionAssociationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    func deleteExtensionAssociationAsync(
            input: AppConfigModel.DeleteExtensionAssociationRequest, 
            completion: @escaping (AppConfigError?) -> ()) throws

    /**
     Invokes the DeleteExtensionAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteExtensionAssociationRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func deleteExtensionAssociationSync(
            input: AppConfigModel.DeleteExtensionAssociationRequest) throws

    /**
     Invokes the DeleteHostedConfigurationVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteHostedConfigurationVersionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    func deleteHostedConfigurationVersionAsync(
            input: AppConfigModel.DeleteHostedConfigurationVersionRequest, 
            completion: @escaping (AppConfigError?) -> ()) throws

    /**
     Invokes the DeleteHostedConfigurationVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteHostedConfigurationVersionRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func deleteHostedConfigurationVersionSync(
            input: AppConfigModel.DeleteHostedConfigurationVersionRequest) throws

    /**
     Invokes the GetApplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetApplicationRequest object being passed to this operation.
         - completion: The Application object or an error will be passed to this 
           callback when the operation is complete. The Application
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    func getApplicationAsync(
            input: AppConfigModel.GetApplicationRequest, 
            completion: @escaping (Result<AppConfigModel.Application, AppConfigError>) -> ()) throws

    /**
     Invokes the GetApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetApplicationRequest object being passed to this operation.
     - Returns: The Application object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func getApplicationSync(
            input: AppConfigModel.GetApplicationRequest) throws -> AppConfigModel.Application

    /**
     Invokes the GetConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetConfigurationRequest object being passed to this operation.
         - completion: The Configuration object or an error will be passed to this 
           callback when the operation is complete. The Configuration
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    func getConfigurationAsync(
            input: AppConfigModel.GetConfigurationRequest, 
            completion: @escaping (Result<AppConfigModel.Configuration, AppConfigError>) -> ()) throws

    /**
     Invokes the GetConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetConfigurationRequest object being passed to this operation.
     - Returns: The Configuration object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func getConfigurationSync(
            input: AppConfigModel.GetConfigurationRequest) throws -> AppConfigModel.Configuration

    /**
     Invokes the GetConfigurationProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetConfigurationProfileRequest object being passed to this operation.
         - completion: The ConfigurationProfile object or an error will be passed to this 
           callback when the operation is complete. The ConfigurationProfile
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    func getConfigurationProfileAsync(
            input: AppConfigModel.GetConfigurationProfileRequest, 
            completion: @escaping (Result<AppConfigModel.ConfigurationProfile, AppConfigError>) -> ()) throws

    /**
     Invokes the GetConfigurationProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetConfigurationProfileRequest object being passed to this operation.
     - Returns: The ConfigurationProfile object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func getConfigurationProfileSync(
            input: AppConfigModel.GetConfigurationProfileRequest) throws -> AppConfigModel.ConfigurationProfile

    /**
     Invokes the GetDeployment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetDeploymentRequest object being passed to this operation.
         - completion: The Deployment object or an error will be passed to this 
           callback when the operation is complete. The Deployment
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    func getDeploymentAsync(
            input: AppConfigModel.GetDeploymentRequest, 
            completion: @escaping (Result<AppConfigModel.Deployment, AppConfigError>) -> ()) throws

    /**
     Invokes the GetDeployment operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetDeploymentRequest object being passed to this operation.
     - Returns: The Deployment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func getDeploymentSync(
            input: AppConfigModel.GetDeploymentRequest) throws -> AppConfigModel.Deployment

    /**
     Invokes the GetDeploymentStrategy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetDeploymentStrategyRequest object being passed to this operation.
         - completion: The DeploymentStrategy object or an error will be passed to this 
           callback when the operation is complete. The DeploymentStrategy
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    func getDeploymentStrategyAsync(
            input: AppConfigModel.GetDeploymentStrategyRequest, 
            completion: @escaping (Result<AppConfigModel.DeploymentStrategy, AppConfigError>) -> ()) throws

    /**
     Invokes the GetDeploymentStrategy operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetDeploymentStrategyRequest object being passed to this operation.
     - Returns: The DeploymentStrategy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func getDeploymentStrategySync(
            input: AppConfigModel.GetDeploymentStrategyRequest) throws -> AppConfigModel.DeploymentStrategy

    /**
     Invokes the GetEnvironment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetEnvironmentRequest object being passed to this operation.
         - completion: The Environment object or an error will be passed to this 
           callback when the operation is complete. The Environment
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    func getEnvironmentAsync(
            input: AppConfigModel.GetEnvironmentRequest, 
            completion: @escaping (Result<AppConfigModel.Environment, AppConfigError>) -> ()) throws

    /**
     Invokes the GetEnvironment operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetEnvironmentRequest object being passed to this operation.
     - Returns: The Environment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func getEnvironmentSync(
            input: AppConfigModel.GetEnvironmentRequest) throws -> AppConfigModel.Environment

    /**
     Invokes the GetExtension operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetExtensionRequest object being passed to this operation.
         - completion: The Extension object or an error will be passed to this 
           callback when the operation is complete. The Extension
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    func getExtensionAsync(
            input: AppConfigModel.GetExtensionRequest, 
            completion: @escaping (Result<AppConfigModel.Extension, AppConfigError>) -> ()) throws

    /**
     Invokes the GetExtension operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetExtensionRequest object being passed to this operation.
     - Returns: The Extension object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func getExtensionSync(
            input: AppConfigModel.GetExtensionRequest) throws -> AppConfigModel.Extension

    /**
     Invokes the GetExtensionAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetExtensionAssociationRequest object being passed to this operation.
         - completion: The ExtensionAssociation object or an error will be passed to this 
           callback when the operation is complete. The ExtensionAssociation
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    func getExtensionAssociationAsync(
            input: AppConfigModel.GetExtensionAssociationRequest, 
            completion: @escaping (Result<AppConfigModel.ExtensionAssociation, AppConfigError>) -> ()) throws

    /**
     Invokes the GetExtensionAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetExtensionAssociationRequest object being passed to this operation.
     - Returns: The ExtensionAssociation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func getExtensionAssociationSync(
            input: AppConfigModel.GetExtensionAssociationRequest) throws -> AppConfigModel.ExtensionAssociation

    /**
     Invokes the GetHostedConfigurationVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetHostedConfigurationVersionRequest object being passed to this operation.
         - completion: The HostedConfigurationVersion object or an error will be passed to this 
           callback when the operation is complete. The HostedConfigurationVersion
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    func getHostedConfigurationVersionAsync(
            input: AppConfigModel.GetHostedConfigurationVersionRequest, 
            completion: @escaping (Result<AppConfigModel.HostedConfigurationVersion, AppConfigError>) -> ()) throws

    /**
     Invokes the GetHostedConfigurationVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetHostedConfigurationVersionRequest object being passed to this operation.
     - Returns: The HostedConfigurationVersion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func getHostedConfigurationVersionSync(
            input: AppConfigModel.GetHostedConfigurationVersionRequest) throws -> AppConfigModel.HostedConfigurationVersion

    /**
     Invokes the ListApplications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListApplicationsRequest object being passed to this operation.
         - completion: The Applications object or an error will be passed to this 
           callback when the operation is complete. The Applications
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer.
     */
    func listApplicationsAsync(
            input: AppConfigModel.ListApplicationsRequest, 
            completion: @escaping (Result<AppConfigModel.Applications, AppConfigError>) -> ()) throws

    /**
     Invokes the ListApplications operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListApplicationsRequest object being passed to this operation.
     - Returns: The Applications object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer.
     */
    func listApplicationsSync(
            input: AppConfigModel.ListApplicationsRequest) throws -> AppConfigModel.Applications

    /**
     Invokes the ListConfigurationProfiles operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListConfigurationProfilesRequest object being passed to this operation.
         - completion: The ConfigurationProfiles object or an error will be passed to this 
           callback when the operation is complete. The ConfigurationProfiles
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    func listConfigurationProfilesAsync(
            input: AppConfigModel.ListConfigurationProfilesRequest, 
            completion: @escaping (Result<AppConfigModel.ConfigurationProfiles, AppConfigError>) -> ()) throws

    /**
     Invokes the ListConfigurationProfiles operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListConfigurationProfilesRequest object being passed to this operation.
     - Returns: The ConfigurationProfiles object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func listConfigurationProfilesSync(
            input: AppConfigModel.ListConfigurationProfilesRequest) throws -> AppConfigModel.ConfigurationProfiles

    /**
     Invokes the ListDeploymentStrategies operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListDeploymentStrategiesRequest object being passed to this operation.
         - completion: The DeploymentStrategies object or an error will be passed to this 
           callback when the operation is complete. The DeploymentStrategies
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer.
     */
    func listDeploymentStrategiesAsync(
            input: AppConfigModel.ListDeploymentStrategiesRequest, 
            completion: @escaping (Result<AppConfigModel.DeploymentStrategies, AppConfigError>) -> ()) throws

    /**
     Invokes the ListDeploymentStrategies operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListDeploymentStrategiesRequest object being passed to this operation.
     - Returns: The DeploymentStrategies object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer.
     */
    func listDeploymentStrategiesSync(
            input: AppConfigModel.ListDeploymentStrategiesRequest) throws -> AppConfigModel.DeploymentStrategies

    /**
     Invokes the ListDeployments operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListDeploymentsRequest object being passed to this operation.
         - completion: The Deployments object or an error will be passed to this 
           callback when the operation is complete. The Deployments
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    func listDeploymentsAsync(
            input: AppConfigModel.ListDeploymentsRequest, 
            completion: @escaping (Result<AppConfigModel.Deployments, AppConfigError>) -> ()) throws

    /**
     Invokes the ListDeployments operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListDeploymentsRequest object being passed to this operation.
     - Returns: The Deployments object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func listDeploymentsSync(
            input: AppConfigModel.ListDeploymentsRequest) throws -> AppConfigModel.Deployments

    /**
     Invokes the ListEnvironments operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListEnvironmentsRequest object being passed to this operation.
         - completion: The Environments object or an error will be passed to this 
           callback when the operation is complete. The Environments
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    func listEnvironmentsAsync(
            input: AppConfigModel.ListEnvironmentsRequest, 
            completion: @escaping (Result<AppConfigModel.Environments, AppConfigError>) -> ()) throws

    /**
     Invokes the ListEnvironments operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListEnvironmentsRequest object being passed to this operation.
     - Returns: The Environments object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func listEnvironmentsSync(
            input: AppConfigModel.ListEnvironmentsRequest) throws -> AppConfigModel.Environments

    /**
     Invokes the ListExtensionAssociations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListExtensionAssociationsRequest object being passed to this operation.
         - completion: The ExtensionAssociations object or an error will be passed to this 
           callback when the operation is complete. The ExtensionAssociations
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer.
     */
    func listExtensionAssociationsAsync(
            input: AppConfigModel.ListExtensionAssociationsRequest, 
            completion: @escaping (Result<AppConfigModel.ExtensionAssociations, AppConfigError>) -> ()) throws

    /**
     Invokes the ListExtensionAssociations operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListExtensionAssociationsRequest object being passed to this operation.
     - Returns: The ExtensionAssociations object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer.
     */
    func listExtensionAssociationsSync(
            input: AppConfigModel.ListExtensionAssociationsRequest) throws -> AppConfigModel.ExtensionAssociations

    /**
     Invokes the ListExtensions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListExtensionsRequest object being passed to this operation.
         - completion: The Extensions object or an error will be passed to this 
           callback when the operation is complete. The Extensions
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer.
     */
    func listExtensionsAsync(
            input: AppConfigModel.ListExtensionsRequest, 
            completion: @escaping (Result<AppConfigModel.Extensions, AppConfigError>) -> ()) throws

    /**
     Invokes the ListExtensions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListExtensionsRequest object being passed to this operation.
     - Returns: The Extensions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer.
     */
    func listExtensionsSync(
            input: AppConfigModel.ListExtensionsRequest) throws -> AppConfigModel.Extensions

    /**
     Invokes the ListHostedConfigurationVersions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListHostedConfigurationVersionsRequest object being passed to this operation.
         - completion: The HostedConfigurationVersions object or an error will be passed to this 
           callback when the operation is complete. The HostedConfigurationVersions
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    func listHostedConfigurationVersionsAsync(
            input: AppConfigModel.ListHostedConfigurationVersionsRequest, 
            completion: @escaping (Result<AppConfigModel.HostedConfigurationVersions, AppConfigError>) -> ()) throws

    /**
     Invokes the ListHostedConfigurationVersions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListHostedConfigurationVersionsRequest object being passed to this operation.
     - Returns: The HostedConfigurationVersions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func listHostedConfigurationVersionsSync(
            input: AppConfigModel.ListHostedConfigurationVersionsRequest) throws -> AppConfigModel.HostedConfigurationVersions

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
         - completion: The ResourceTags object or an error will be passed to this 
           callback when the operation is complete. The ResourceTags
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    func listTagsForResourceAsync(
            input: AppConfigModel.ListTagsForResourceRequest, 
            completion: @escaping (Result<AppConfigModel.ResourceTags, AppConfigError>) -> ()) throws

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: The ResourceTags object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func listTagsForResourceSync(
            input: AppConfigModel.ListTagsForResourceRequest) throws -> AppConfigModel.ResourceTags

    /**
     Invokes the StartDeployment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartDeploymentRequest object being passed to this operation.
         - completion: The Deployment object or an error will be passed to this 
           callback when the operation is complete. The Deployment
           object will be validated before being returned to caller.
           The possible errors are: badRequest, conflict, internalServer, resourceNotFound.
     */
    func startDeploymentAsync(
            input: AppConfigModel.StartDeploymentRequest, 
            completion: @escaping (Result<AppConfigModel.Deployment, AppConfigError>) -> ()) throws

    /**
     Invokes the StartDeployment operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartDeploymentRequest object being passed to this operation.
     - Returns: The Deployment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, conflict, internalServer, resourceNotFound.
     */
    func startDeploymentSync(
            input: AppConfigModel.StartDeploymentRequest) throws -> AppConfigModel.Deployment

    /**
     Invokes the StopDeployment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopDeploymentRequest object being passed to this operation.
         - completion: The Deployment object or an error will be passed to this 
           callback when the operation is complete. The Deployment
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    func stopDeploymentAsync(
            input: AppConfigModel.StopDeploymentRequest, 
            completion: @escaping (Result<AppConfigModel.Deployment, AppConfigError>) -> ()) throws

    /**
     Invokes the StopDeployment operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopDeploymentRequest object being passed to this operation.
     - Returns: The Deployment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func stopDeploymentSync(
            input: AppConfigModel.StopDeploymentRequest) throws -> AppConfigModel.Deployment

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    func tagResourceAsync(
            input: AppConfigModel.TagResourceRequest, 
            completion: @escaping (AppConfigError?) -> ()) throws

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func tagResourceSync(
            input: AppConfigModel.TagResourceRequest) throws

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    func untagResourceAsync(
            input: AppConfigModel.UntagResourceRequest, 
            completion: @escaping (AppConfigError?) -> ()) throws

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func untagResourceSync(
            input: AppConfigModel.UntagResourceRequest) throws

    /**
     Invokes the UpdateApplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateApplicationRequest object being passed to this operation.
         - completion: The Application object or an error will be passed to this 
           callback when the operation is complete. The Application
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    func updateApplicationAsync(
            input: AppConfigModel.UpdateApplicationRequest, 
            completion: @escaping (Result<AppConfigModel.Application, AppConfigError>) -> ()) throws

    /**
     Invokes the UpdateApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateApplicationRequest object being passed to this operation.
     - Returns: The Application object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func updateApplicationSync(
            input: AppConfigModel.UpdateApplicationRequest) throws -> AppConfigModel.Application

    /**
     Invokes the UpdateConfigurationProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateConfigurationProfileRequest object being passed to this operation.
         - completion: The ConfigurationProfile object or an error will be passed to this 
           callback when the operation is complete. The ConfigurationProfile
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    func updateConfigurationProfileAsync(
            input: AppConfigModel.UpdateConfigurationProfileRequest, 
            completion: @escaping (Result<AppConfigModel.ConfigurationProfile, AppConfigError>) -> ()) throws

    /**
     Invokes the UpdateConfigurationProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateConfigurationProfileRequest object being passed to this operation.
     - Returns: The ConfigurationProfile object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func updateConfigurationProfileSync(
            input: AppConfigModel.UpdateConfigurationProfileRequest) throws -> AppConfigModel.ConfigurationProfile

    /**
     Invokes the UpdateDeploymentStrategy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateDeploymentStrategyRequest object being passed to this operation.
         - completion: The DeploymentStrategy object or an error will be passed to this 
           callback when the operation is complete. The DeploymentStrategy
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    func updateDeploymentStrategyAsync(
            input: AppConfigModel.UpdateDeploymentStrategyRequest, 
            completion: @escaping (Result<AppConfigModel.DeploymentStrategy, AppConfigError>) -> ()) throws

    /**
     Invokes the UpdateDeploymentStrategy operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateDeploymentStrategyRequest object being passed to this operation.
     - Returns: The DeploymentStrategy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func updateDeploymentStrategySync(
            input: AppConfigModel.UpdateDeploymentStrategyRequest) throws -> AppConfigModel.DeploymentStrategy

    /**
     Invokes the UpdateEnvironment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateEnvironmentRequest object being passed to this operation.
         - completion: The Environment object or an error will be passed to this 
           callback when the operation is complete. The Environment
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    func updateEnvironmentAsync(
            input: AppConfigModel.UpdateEnvironmentRequest, 
            completion: @escaping (Result<AppConfigModel.Environment, AppConfigError>) -> ()) throws

    /**
     Invokes the UpdateEnvironment operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateEnvironmentRequest object being passed to this operation.
     - Returns: The Environment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func updateEnvironmentSync(
            input: AppConfigModel.UpdateEnvironmentRequest) throws -> AppConfigModel.Environment

    /**
     Invokes the UpdateExtension operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateExtensionRequest object being passed to this operation.
         - completion: The Extension object or an error will be passed to this 
           callback when the operation is complete. The Extension
           object will be validated before being returned to caller.
           The possible errors are: badRequest, conflict, internalServer, resourceNotFound.
     */
    func updateExtensionAsync(
            input: AppConfigModel.UpdateExtensionRequest, 
            completion: @escaping (Result<AppConfigModel.Extension, AppConfigError>) -> ()) throws

    /**
     Invokes the UpdateExtension operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateExtensionRequest object being passed to this operation.
     - Returns: The Extension object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, conflict, internalServer, resourceNotFound.
     */
    func updateExtensionSync(
            input: AppConfigModel.UpdateExtensionRequest) throws -> AppConfigModel.Extension

    /**
     Invokes the UpdateExtensionAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateExtensionAssociationRequest object being passed to this operation.
         - completion: The ExtensionAssociation object or an error will be passed to this 
           callback when the operation is complete. The ExtensionAssociation
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    func updateExtensionAssociationAsync(
            input: AppConfigModel.UpdateExtensionAssociationRequest, 
            completion: @escaping (Result<AppConfigModel.ExtensionAssociation, AppConfigError>) -> ()) throws

    /**
     Invokes the UpdateExtensionAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateExtensionAssociationRequest object being passed to this operation.
     - Returns: The ExtensionAssociation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func updateExtensionAssociationSync(
            input: AppConfigModel.UpdateExtensionAssociationRequest) throws -> AppConfigModel.ExtensionAssociation

    /**
     Invokes the ValidateConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ValidateConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    func validateConfigurationAsync(
            input: AppConfigModel.ValidateConfigurationRequest, 
            completion: @escaping (AppConfigError?) -> ()) throws

    /**
     Invokes the ValidateConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated ValidateConfigurationRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func validateConfigurationSync(
            input: AppConfigModel.ValidateConfigurationRequest) throws
}
