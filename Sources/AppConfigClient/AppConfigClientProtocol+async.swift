// Copyright 2018-2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// AppConfigClientProtocol+async.swift
// AppConfigClient
//

import Foundation
import AppConfigModel

#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)

/**
 Async extensions for the AppConfigClientProtocol type.
 */
public extension AppConfigClientProtocol {

    /**
     Invokes the CreateApplication operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateApplicationRequest object being passed to this operation.
     - Returns: The Application object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer.
     */
    func createApplication(input: AppConfigModel.CreateApplicationRequest) async throws
     -> AppConfigModel.Application {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createApplicationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateConfigurationProfile operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateConfigurationProfileRequest object being passed to this operation.
     - Returns: The ConfigurationProfile object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func createConfigurationProfile(input: AppConfigModel.CreateConfigurationProfileRequest) async throws
     -> AppConfigModel.ConfigurationProfile {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createConfigurationProfileAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateDeploymentStrategy operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateDeploymentStrategyRequest object being passed to this operation.
     - Returns: The DeploymentStrategy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer.
     */
    func createDeploymentStrategy(input: AppConfigModel.CreateDeploymentStrategyRequest) async throws
     -> AppConfigModel.DeploymentStrategy {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createDeploymentStrategyAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateEnvironment operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateEnvironmentRequest object being passed to this operation.
     - Returns: The Environment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func createEnvironment(input: AppConfigModel.CreateEnvironmentRequest) async throws
     -> AppConfigModel.Environment {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createEnvironmentAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateHostedConfigurationVersion operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateHostedConfigurationVersionRequest object being passed to this operation.
     - Returns: The HostedConfigurationVersion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, conflict, internalServer, payloadTooLarge, resourceNotFound, serviceQuotaExceeded.
     */
    func createHostedConfigurationVersion(input: AppConfigModel.CreateHostedConfigurationVersionRequest) async throws
     -> AppConfigModel.HostedConfigurationVersion {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createHostedConfigurationVersionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteApplication operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteApplicationRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func deleteApplication(input: AppConfigModel.DeleteApplicationRequest) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteApplicationAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteConfigurationProfile operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteConfigurationProfileRequest object being passed to this operation.
     - Throws: badRequest, conflict, internalServer, resourceNotFound.
     */
    func deleteConfigurationProfile(input: AppConfigModel.DeleteConfigurationProfileRequest) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteConfigurationProfileAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteDeploymentStrategy operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteDeploymentStrategyRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func deleteDeploymentStrategy(input: AppConfigModel.DeleteDeploymentStrategyRequest) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteDeploymentStrategyAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteEnvironment operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteEnvironmentRequest object being passed to this operation.
     - Throws: badRequest, conflict, internalServer, resourceNotFound.
     */
    func deleteEnvironment(input: AppConfigModel.DeleteEnvironmentRequest) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteEnvironmentAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteHostedConfigurationVersion operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteHostedConfigurationVersionRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func deleteHostedConfigurationVersion(input: AppConfigModel.DeleteHostedConfigurationVersionRequest) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteHostedConfigurationVersionAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetApplication operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetApplicationRequest object being passed to this operation.
     - Returns: The Application object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func getApplication(input: AppConfigModel.GetApplicationRequest) async throws
     -> AppConfigModel.Application {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try getApplicationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetConfigurationRequest object being passed to this operation.
     - Returns: The Configuration object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func getConfiguration(input: AppConfigModel.GetConfigurationRequest) async throws
     -> AppConfigModel.Configuration {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try getConfigurationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetConfigurationProfile operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetConfigurationProfileRequest object being passed to this operation.
     - Returns: The ConfigurationProfile object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func getConfigurationProfile(input: AppConfigModel.GetConfigurationProfileRequest) async throws
     -> AppConfigModel.ConfigurationProfile {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try getConfigurationProfileAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetDeployment operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetDeploymentRequest object being passed to this operation.
     - Returns: The Deployment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func getDeployment(input: AppConfigModel.GetDeploymentRequest) async throws
     -> AppConfigModel.Deployment {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try getDeploymentAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetDeploymentStrategy operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetDeploymentStrategyRequest object being passed to this operation.
     - Returns: The DeploymentStrategy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func getDeploymentStrategy(input: AppConfigModel.GetDeploymentStrategyRequest) async throws
     -> AppConfigModel.DeploymentStrategy {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try getDeploymentStrategyAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetEnvironment operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetEnvironmentRequest object being passed to this operation.
     - Returns: The Environment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func getEnvironment(input: AppConfigModel.GetEnvironmentRequest) async throws
     -> AppConfigModel.Environment {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try getEnvironmentAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetHostedConfigurationVersion operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetHostedConfigurationVersionRequest object being passed to this operation.
     - Returns: The HostedConfigurationVersion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func getHostedConfigurationVersion(input: AppConfigModel.GetHostedConfigurationVersionRequest) async throws
     -> AppConfigModel.HostedConfigurationVersion {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try getHostedConfigurationVersionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListApplications operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListApplicationsRequest object being passed to this operation.
     - Returns: The Applications object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer.
     */
    func listApplications(input: AppConfigModel.ListApplicationsRequest) async throws
     -> AppConfigModel.Applications {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listApplicationsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListConfigurationProfiles operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListConfigurationProfilesRequest object being passed to this operation.
     - Returns: The ConfigurationProfiles object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func listConfigurationProfiles(input: AppConfigModel.ListConfigurationProfilesRequest) async throws
     -> AppConfigModel.ConfigurationProfiles {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listConfigurationProfilesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListDeploymentStrategies operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListDeploymentStrategiesRequest object being passed to this operation.
     - Returns: The DeploymentStrategies object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer.
     */
    func listDeploymentStrategies(input: AppConfigModel.ListDeploymentStrategiesRequest) async throws
     -> AppConfigModel.DeploymentStrategies {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listDeploymentStrategiesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListDeployments operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListDeploymentsRequest object being passed to this operation.
     - Returns: The Deployments object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func listDeployments(input: AppConfigModel.ListDeploymentsRequest) async throws
     -> AppConfigModel.Deployments {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listDeploymentsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListEnvironments operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListEnvironmentsRequest object being passed to this operation.
     - Returns: The Environments object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func listEnvironments(input: AppConfigModel.ListEnvironmentsRequest) async throws
     -> AppConfigModel.Environments {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listEnvironmentsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListHostedConfigurationVersions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListHostedConfigurationVersionsRequest object being passed to this operation.
     - Returns: The HostedConfigurationVersions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func listHostedConfigurationVersions(input: AppConfigModel.ListHostedConfigurationVersionsRequest) async throws
     -> AppConfigModel.HostedConfigurationVersions {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listHostedConfigurationVersionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListTagsForResource operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: The ResourceTags object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func listTagsForResource(input: AppConfigModel.ListTagsForResourceRequest) async throws
     -> AppConfigModel.ResourceTags {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listTagsForResourceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the StartDeployment operation and asynchronously returning the response.

     - Parameters:
         - input: The validated StartDeploymentRequest object being passed to this operation.
     - Returns: The Deployment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, conflict, internalServer, resourceNotFound.
     */
    func startDeployment(input: AppConfigModel.StartDeploymentRequest) async throws
     -> AppConfigModel.Deployment {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try startDeploymentAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the StopDeployment operation and asynchronously returning the response.

     - Parameters:
         - input: The validated StopDeploymentRequest object being passed to this operation.
     - Returns: The Deployment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func stopDeployment(input: AppConfigModel.StopDeploymentRequest) async throws
     -> AppConfigModel.Deployment {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try stopDeploymentAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the TagResource operation and asynchronously returning the response.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func tagResource(input: AppConfigModel.TagResourceRequest) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try tagResourceAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UntagResource operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func untagResource(input: AppConfigModel.UntagResourceRequest) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try untagResourceAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UpdateApplication operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UpdateApplicationRequest object being passed to this operation.
     - Returns: The Application object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func updateApplication(input: AppConfigModel.UpdateApplicationRequest) async throws
     -> AppConfigModel.Application {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try updateApplicationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UpdateConfigurationProfile operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UpdateConfigurationProfileRequest object being passed to this operation.
     - Returns: The ConfigurationProfile object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func updateConfigurationProfile(input: AppConfigModel.UpdateConfigurationProfileRequest) async throws
     -> AppConfigModel.ConfigurationProfile {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try updateConfigurationProfileAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UpdateDeploymentStrategy operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UpdateDeploymentStrategyRequest object being passed to this operation.
     - Returns: The DeploymentStrategy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func updateDeploymentStrategy(input: AppConfigModel.UpdateDeploymentStrategyRequest) async throws
     -> AppConfigModel.DeploymentStrategy {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try updateDeploymentStrategyAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UpdateEnvironment operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UpdateEnvironmentRequest object being passed to this operation.
     - Returns: The Environment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func updateEnvironment(input: AppConfigModel.UpdateEnvironmentRequest) async throws
     -> AppConfigModel.Environment {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try updateEnvironmentAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ValidateConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ValidateConfigurationRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    func validateConfiguration(input: AppConfigModel.ValidateConfigurationRequest) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try validateConfigurationAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }
}

#endif
