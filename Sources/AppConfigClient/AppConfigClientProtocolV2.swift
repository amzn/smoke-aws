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
// AppConfigClientProtocolV2.swift
// AppConfigClient
//

import Foundation
import AppConfigModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the AppConfig service.
 */
public protocol AppConfigClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    typealias CreateApplicationFunctionType = (
            _ input: AppConfigModel.CreateApplicationRequest) async throws -> AppConfigModel.Application
    typealias CreateConfigurationProfileFunctionType = (
            _ input: AppConfigModel.CreateConfigurationProfileRequest) async throws -> AppConfigModel.ConfigurationProfile
    typealias CreateDeploymentStrategyFunctionType = (
            _ input: AppConfigModel.CreateDeploymentStrategyRequest) async throws -> AppConfigModel.DeploymentStrategy
    typealias CreateEnvironmentFunctionType = (
            _ input: AppConfigModel.CreateEnvironmentRequest) async throws -> AppConfigModel.Environment
    typealias CreateExtensionFunctionType = (
            _ input: AppConfigModel.CreateExtensionRequest) async throws -> AppConfigModel.Extension
    typealias CreateExtensionAssociationFunctionType = (
            _ input: AppConfigModel.CreateExtensionAssociationRequest) async throws -> AppConfigModel.ExtensionAssociation
    typealias CreateHostedConfigurationVersionFunctionType = (
            _ input: AppConfigModel.CreateHostedConfigurationVersionRequest) async throws -> AppConfigModel.HostedConfigurationVersion
    typealias DeleteApplicationFunctionType = (
            _ input: AppConfigModel.DeleteApplicationRequest) async throws -> ()
    typealias DeleteConfigurationProfileFunctionType = (
            _ input: AppConfigModel.DeleteConfigurationProfileRequest) async throws -> ()
    typealias DeleteDeploymentStrategyFunctionType = (
            _ input: AppConfigModel.DeleteDeploymentStrategyRequest) async throws -> ()
    typealias DeleteEnvironmentFunctionType = (
            _ input: AppConfigModel.DeleteEnvironmentRequest) async throws -> ()
    typealias DeleteExtensionFunctionType = (
            _ input: AppConfigModel.DeleteExtensionRequest) async throws -> ()
    typealias DeleteExtensionAssociationFunctionType = (
            _ input: AppConfigModel.DeleteExtensionAssociationRequest) async throws -> ()
    typealias DeleteHostedConfigurationVersionFunctionType = (
            _ input: AppConfigModel.DeleteHostedConfigurationVersionRequest) async throws -> ()
    typealias GetApplicationFunctionType = (
            _ input: AppConfigModel.GetApplicationRequest) async throws -> AppConfigModel.Application
    typealias GetConfigurationFunctionType = (
            _ input: AppConfigModel.GetConfigurationRequest) async throws -> AppConfigModel.Configuration
    typealias GetConfigurationProfileFunctionType = (
            _ input: AppConfigModel.GetConfigurationProfileRequest) async throws -> AppConfigModel.ConfigurationProfile
    typealias GetDeploymentFunctionType = (
            _ input: AppConfigModel.GetDeploymentRequest) async throws -> AppConfigModel.Deployment
    typealias GetDeploymentStrategyFunctionType = (
            _ input: AppConfigModel.GetDeploymentStrategyRequest) async throws -> AppConfigModel.DeploymentStrategy
    typealias GetEnvironmentFunctionType = (
            _ input: AppConfigModel.GetEnvironmentRequest) async throws -> AppConfigModel.Environment
    typealias GetExtensionFunctionType = (
            _ input: AppConfigModel.GetExtensionRequest) async throws -> AppConfigModel.Extension
    typealias GetExtensionAssociationFunctionType = (
            _ input: AppConfigModel.GetExtensionAssociationRequest) async throws -> AppConfigModel.ExtensionAssociation
    typealias GetHostedConfigurationVersionFunctionType = (
            _ input: AppConfigModel.GetHostedConfigurationVersionRequest) async throws -> AppConfigModel.HostedConfigurationVersion
    typealias ListApplicationsFunctionType = (
            _ input: AppConfigModel.ListApplicationsRequest) async throws -> AppConfigModel.Applications
    typealias ListConfigurationProfilesFunctionType = (
            _ input: AppConfigModel.ListConfigurationProfilesRequest) async throws -> AppConfigModel.ConfigurationProfiles
    typealias ListDeploymentStrategiesFunctionType = (
            _ input: AppConfigModel.ListDeploymentStrategiesRequest) async throws -> AppConfigModel.DeploymentStrategies
    typealias ListDeploymentsFunctionType = (
            _ input: AppConfigModel.ListDeploymentsRequest) async throws -> AppConfigModel.Deployments
    typealias ListEnvironmentsFunctionType = (
            _ input: AppConfigModel.ListEnvironmentsRequest) async throws -> AppConfigModel.Environments
    typealias ListExtensionAssociationsFunctionType = (
            _ input: AppConfigModel.ListExtensionAssociationsRequest) async throws -> AppConfigModel.ExtensionAssociations
    typealias ListExtensionsFunctionType = (
            _ input: AppConfigModel.ListExtensionsRequest) async throws -> AppConfigModel.Extensions
    typealias ListHostedConfigurationVersionsFunctionType = (
            _ input: AppConfigModel.ListHostedConfigurationVersionsRequest) async throws -> AppConfigModel.HostedConfigurationVersions
    typealias ListTagsForResourceFunctionType = (
            _ input: AppConfigModel.ListTagsForResourceRequest) async throws -> AppConfigModel.ResourceTags
    typealias StartDeploymentFunctionType = (
            _ input: AppConfigModel.StartDeploymentRequest) async throws -> AppConfigModel.Deployment
    typealias StopDeploymentFunctionType = (
            _ input: AppConfigModel.StopDeploymentRequest) async throws -> AppConfigModel.Deployment
    typealias TagResourceFunctionType = (
            _ input: AppConfigModel.TagResourceRequest) async throws -> ()
    typealias UntagResourceFunctionType = (
            _ input: AppConfigModel.UntagResourceRequest) async throws -> ()
    typealias UpdateApplicationFunctionType = (
            _ input: AppConfigModel.UpdateApplicationRequest) async throws -> AppConfigModel.Application
    typealias UpdateConfigurationProfileFunctionType = (
            _ input: AppConfigModel.UpdateConfigurationProfileRequest) async throws -> AppConfigModel.ConfigurationProfile
    typealias UpdateDeploymentStrategyFunctionType = (
            _ input: AppConfigModel.UpdateDeploymentStrategyRequest) async throws -> AppConfigModel.DeploymentStrategy
    typealias UpdateEnvironmentFunctionType = (
            _ input: AppConfigModel.UpdateEnvironmentRequest) async throws -> AppConfigModel.Environment
    typealias UpdateExtensionFunctionType = (
            _ input: AppConfigModel.UpdateExtensionRequest) async throws -> AppConfigModel.Extension
    typealias UpdateExtensionAssociationFunctionType = (
            _ input: AppConfigModel.UpdateExtensionAssociationRequest) async throws -> AppConfigModel.ExtensionAssociation
    typealias ValidateConfigurationFunctionType = (
            _ input: AppConfigModel.ValidateConfigurationRequest) async throws -> ()

    /**
     Invokes the CreateApplication operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateApplicationRequest object being passed to this operation.
     - Returns: The Application object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer.
     */
    func createApplication(
            input: AppConfigModel.CreateApplicationRequest) async throws -> AppConfigModel.Application

    /**
     Invokes the CreateConfigurationProfile operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateConfigurationProfileRequest object being passed to this operation.
     - Returns: The ConfigurationProfile object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func createConfigurationProfile(
            input: AppConfigModel.CreateConfigurationProfileRequest) async throws -> AppConfigModel.ConfigurationProfile

    /**
     Invokes the CreateDeploymentStrategy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateDeploymentStrategyRequest object being passed to this operation.
     - Returns: The DeploymentStrategy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer.
     */
    func createDeploymentStrategy(
            input: AppConfigModel.CreateDeploymentStrategyRequest) async throws -> AppConfigModel.DeploymentStrategy

    /**
     Invokes the CreateEnvironment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateEnvironmentRequest object being passed to this operation.
     - Returns: The Environment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func createEnvironment(
            input: AppConfigModel.CreateEnvironmentRequest) async throws -> AppConfigModel.Environment

    /**
     Invokes the CreateExtension operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateExtensionRequest object being passed to this operation.
     - Returns: The Extension object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, conflict, internalServer, serviceQuotaExceeded.
     */
    func createExtension(
            input: AppConfigModel.CreateExtensionRequest) async throws -> AppConfigModel.Extension

    /**
     Invokes the CreateExtensionAssociation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateExtensionAssociationRequest object being passed to this operation.
     - Returns: The ExtensionAssociation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound, serviceQuotaExceeded.
     */
    func createExtensionAssociation(
            input: AppConfigModel.CreateExtensionAssociationRequest) async throws -> AppConfigModel.ExtensionAssociation

    /**
     Invokes the CreateHostedConfigurationVersion operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateHostedConfigurationVersionRequest object being passed to this operation.
     - Returns: The HostedConfigurationVersion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, conflict, internalServer, payloadTooLarge, resourceNotFound, serviceQuotaExceeded.
     */
    func createHostedConfigurationVersion(
            input: AppConfigModel.CreateHostedConfigurationVersionRequest) async throws -> AppConfigModel.HostedConfigurationVersion

    /**
     Invokes the DeleteApplication operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteApplicationRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func deleteApplication(
            input: AppConfigModel.DeleteApplicationRequest) async throws

    /**
     Invokes the DeleteConfigurationProfile operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteConfigurationProfileRequest object being passed to this operation.
     - Throws: badRequest, conflict, internalServer, resourceNotFound.
     */
    func deleteConfigurationProfile(
            input: AppConfigModel.DeleteConfigurationProfileRequest) async throws

    /**
     Invokes the DeleteDeploymentStrategy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteDeploymentStrategyRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func deleteDeploymentStrategy(
            input: AppConfigModel.DeleteDeploymentStrategyRequest) async throws

    /**
     Invokes the DeleteEnvironment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteEnvironmentRequest object being passed to this operation.
     - Throws: badRequest, conflict, internalServer, resourceNotFound.
     */
    func deleteEnvironment(
            input: AppConfigModel.DeleteEnvironmentRequest) async throws

    /**
     Invokes the DeleteExtension operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteExtensionRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func deleteExtension(
            input: AppConfigModel.DeleteExtensionRequest) async throws

    /**
     Invokes the DeleteExtensionAssociation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteExtensionAssociationRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func deleteExtensionAssociation(
            input: AppConfigModel.DeleteExtensionAssociationRequest) async throws

    /**
     Invokes the DeleteHostedConfigurationVersion operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteHostedConfigurationVersionRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func deleteHostedConfigurationVersion(
            input: AppConfigModel.DeleteHostedConfigurationVersionRequest) async throws

    /**
     Invokes the GetApplication operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetApplicationRequest object being passed to this operation.
     - Returns: The Application object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func getApplication(
            input: AppConfigModel.GetApplicationRequest) async throws -> AppConfigModel.Application

    /**
     Invokes the GetConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetConfigurationRequest object being passed to this operation.
     - Returns: The Configuration object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func getConfiguration(
            input: AppConfigModel.GetConfigurationRequest) async throws -> AppConfigModel.Configuration

    /**
     Invokes the GetConfigurationProfile operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetConfigurationProfileRequest object being passed to this operation.
     - Returns: The ConfigurationProfile object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func getConfigurationProfile(
            input: AppConfigModel.GetConfigurationProfileRequest) async throws -> AppConfigModel.ConfigurationProfile

    /**
     Invokes the GetDeployment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetDeploymentRequest object being passed to this operation.
     - Returns: The Deployment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func getDeployment(
            input: AppConfigModel.GetDeploymentRequest) async throws -> AppConfigModel.Deployment

    /**
     Invokes the GetDeploymentStrategy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetDeploymentStrategyRequest object being passed to this operation.
     - Returns: The DeploymentStrategy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func getDeploymentStrategy(
            input: AppConfigModel.GetDeploymentStrategyRequest) async throws -> AppConfigModel.DeploymentStrategy

    /**
     Invokes the GetEnvironment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetEnvironmentRequest object being passed to this operation.
     - Returns: The Environment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func getEnvironment(
            input: AppConfigModel.GetEnvironmentRequest) async throws -> AppConfigModel.Environment

    /**
     Invokes the GetExtension operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetExtensionRequest object being passed to this operation.
     - Returns: The Extension object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func getExtension(
            input: AppConfigModel.GetExtensionRequest) async throws -> AppConfigModel.Extension

    /**
     Invokes the GetExtensionAssociation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetExtensionAssociationRequest object being passed to this operation.
     - Returns: The ExtensionAssociation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func getExtensionAssociation(
            input: AppConfigModel.GetExtensionAssociationRequest) async throws -> AppConfigModel.ExtensionAssociation

    /**
     Invokes the GetHostedConfigurationVersion operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetHostedConfigurationVersionRequest object being passed to this operation.
     - Returns: The HostedConfigurationVersion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func getHostedConfigurationVersion(
            input: AppConfigModel.GetHostedConfigurationVersionRequest) async throws -> AppConfigModel.HostedConfigurationVersion

    /**
     Invokes the ListApplications operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListApplicationsRequest object being passed to this operation.
     - Returns: The Applications object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer.
     */
    func listApplications(
            input: AppConfigModel.ListApplicationsRequest) async throws -> AppConfigModel.Applications

    /**
     Invokes the ListConfigurationProfiles operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListConfigurationProfilesRequest object being passed to this operation.
     - Returns: The ConfigurationProfiles object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func listConfigurationProfiles(
            input: AppConfigModel.ListConfigurationProfilesRequest) async throws -> AppConfigModel.ConfigurationProfiles

    /**
     Invokes the ListDeploymentStrategies operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListDeploymentStrategiesRequest object being passed to this operation.
     - Returns: The DeploymentStrategies object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer.
     */
    func listDeploymentStrategies(
            input: AppConfigModel.ListDeploymentStrategiesRequest) async throws -> AppConfigModel.DeploymentStrategies

    /**
     Invokes the ListDeployments operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListDeploymentsRequest object being passed to this operation.
     - Returns: The Deployments object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func listDeployments(
            input: AppConfigModel.ListDeploymentsRequest) async throws -> AppConfigModel.Deployments

    /**
     Invokes the ListEnvironments operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListEnvironmentsRequest object being passed to this operation.
     - Returns: The Environments object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func listEnvironments(
            input: AppConfigModel.ListEnvironmentsRequest) async throws -> AppConfigModel.Environments

    /**
     Invokes the ListExtensionAssociations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListExtensionAssociationsRequest object being passed to this operation.
     - Returns: The ExtensionAssociations object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer.
     */
    func listExtensionAssociations(
            input: AppConfigModel.ListExtensionAssociationsRequest) async throws -> AppConfigModel.ExtensionAssociations

    /**
     Invokes the ListExtensions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListExtensionsRequest object being passed to this operation.
     - Returns: The Extensions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer.
     */
    func listExtensions(
            input: AppConfigModel.ListExtensionsRequest) async throws -> AppConfigModel.Extensions

    /**
     Invokes the ListHostedConfigurationVersions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListHostedConfigurationVersionsRequest object being passed to this operation.
     - Returns: The HostedConfigurationVersions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func listHostedConfigurationVersions(
            input: AppConfigModel.ListHostedConfigurationVersionsRequest) async throws -> AppConfigModel.HostedConfigurationVersions

    /**
     Invokes the ListTagsForResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: The ResourceTags object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func listTagsForResource(
            input: AppConfigModel.ListTagsForResourceRequest) async throws -> AppConfigModel.ResourceTags

    /**
     Invokes the StartDeployment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartDeploymentRequest object being passed to this operation.
     - Returns: The Deployment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, conflict, internalServer, resourceNotFound.
     */
    func startDeployment(
            input: AppConfigModel.StartDeploymentRequest) async throws -> AppConfigModel.Deployment

    /**
     Invokes the StopDeployment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StopDeploymentRequest object being passed to this operation.
     - Returns: The Deployment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func stopDeployment(
            input: AppConfigModel.StopDeploymentRequest) async throws -> AppConfigModel.Deployment

    /**
     Invokes the TagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func tagResource(
            input: AppConfigModel.TagResourceRequest) async throws

    /**
     Invokes the UntagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func untagResource(
            input: AppConfigModel.UntagResourceRequest) async throws

    /**
     Invokes the UpdateApplication operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateApplicationRequest object being passed to this operation.
     - Returns: The Application object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func updateApplication(
            input: AppConfigModel.UpdateApplicationRequest) async throws -> AppConfigModel.Application

    /**
     Invokes the UpdateConfigurationProfile operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateConfigurationProfileRequest object being passed to this operation.
     - Returns: The ConfigurationProfile object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func updateConfigurationProfile(
            input: AppConfigModel.UpdateConfigurationProfileRequest) async throws -> AppConfigModel.ConfigurationProfile

    /**
     Invokes the UpdateDeploymentStrategy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateDeploymentStrategyRequest object being passed to this operation.
     - Returns: The DeploymentStrategy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func updateDeploymentStrategy(
            input: AppConfigModel.UpdateDeploymentStrategyRequest) async throws -> AppConfigModel.DeploymentStrategy

    /**
     Invokes the UpdateEnvironment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateEnvironmentRequest object being passed to this operation.
     - Returns: The Environment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func updateEnvironment(
            input: AppConfigModel.UpdateEnvironmentRequest) async throws -> AppConfigModel.Environment

    /**
     Invokes the UpdateExtension operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateExtensionRequest object being passed to this operation.
     - Returns: The Extension object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, conflict, internalServer, resourceNotFound.
     */
    func updateExtension(
            input: AppConfigModel.UpdateExtensionRequest) async throws -> AppConfigModel.Extension

    /**
     Invokes the UpdateExtensionAssociation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateExtensionAssociationRequest object being passed to this operation.
     - Returns: The ExtensionAssociation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func updateExtensionAssociation(
            input: AppConfigModel.UpdateExtensionAssociationRequest) async throws -> AppConfigModel.ExtensionAssociation

    /**
     Invokes the ValidateConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ValidateConfigurationRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func validateConfiguration(
            input: AppConfigModel.ValidateConfigurationRequest) async throws
#endif
}
