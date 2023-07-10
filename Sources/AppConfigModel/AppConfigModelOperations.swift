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
// AppConfigModelOperations.swift
// AppConfigModel
//

import Foundation

/**
 Operation enumeration for the AppConfigModel.
 */
public enum AppConfigModelOperations: String, Hashable, CustomStringConvertible {
    case createApplication = "CreateApplication"
    case createConfigurationProfile = "CreateConfigurationProfile"
    case createDeploymentStrategy = "CreateDeploymentStrategy"
    case createEnvironment = "CreateEnvironment"
    case createExtension = "CreateExtension"
    case createExtensionAssociation = "CreateExtensionAssociation"
    case createHostedConfigurationVersion = "CreateHostedConfigurationVersion"
    case deleteApplication = "DeleteApplication"
    case deleteConfigurationProfile = "DeleteConfigurationProfile"
    case deleteDeploymentStrategy = "DeleteDeploymentStrategy"
    case deleteEnvironment = "DeleteEnvironment"
    case deleteExtension = "DeleteExtension"
    case deleteExtensionAssociation = "DeleteExtensionAssociation"
    case deleteHostedConfigurationVersion = "DeleteHostedConfigurationVersion"
    case getApplication = "GetApplication"
    case getConfiguration = "GetConfiguration"
    case getConfigurationProfile = "GetConfigurationProfile"
    case getDeployment = "GetDeployment"
    case getDeploymentStrategy = "GetDeploymentStrategy"
    case getEnvironment = "GetEnvironment"
    case getExtension = "GetExtension"
    case getExtensionAssociation = "GetExtensionAssociation"
    case getHostedConfigurationVersion = "GetHostedConfigurationVersion"
    case listApplications = "ListApplications"
    case listConfigurationProfiles = "ListConfigurationProfiles"
    case listDeploymentStrategies = "ListDeploymentStrategies"
    case listDeployments = "ListDeployments"
    case listEnvironments = "ListEnvironments"
    case listExtensionAssociations = "ListExtensionAssociations"
    case listExtensions = "ListExtensions"
    case listHostedConfigurationVersions = "ListHostedConfigurationVersions"
    case listTagsForResource = "ListTagsForResource"
    case startDeployment = "StartDeployment"
    case stopDeployment = "StopDeployment"
    case tagResource = "TagResource"
    case untagResource = "UntagResource"
    case updateApplication = "UpdateApplication"
    case updateConfigurationProfile = "UpdateConfigurationProfile"
    case updateDeploymentStrategy = "UpdateDeploymentStrategy"
    case updateEnvironment = "UpdateEnvironment"
    case updateExtension = "UpdateExtension"
    case updateExtensionAssociation = "UpdateExtensionAssociation"
    case validateConfiguration = "ValidateConfiguration"

    public var description: String {
        return rawValue
    }

    public var operationPath: String {
        switch self {
        case .createApplication:
            return "/applications"
        case .createConfigurationProfile:
            return "/applications/{ApplicationId}/configurationprofiles"
        case .createDeploymentStrategy:
            return "/deploymentstrategies"
        case .createEnvironment:
            return "/applications/{ApplicationId}/environments"
        case .createExtension:
            return "/extensions"
        case .createExtensionAssociation:
            return "/extensionassociations"
        case .createHostedConfigurationVersion:
            return "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions"
        case .deleteApplication:
            return "/applications/{ApplicationId}"
        case .deleteConfigurationProfile:
            return "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}"
        case .deleteDeploymentStrategy:
            return "/deployementstrategies/{DeploymentStrategyId}"
        case .deleteEnvironment:
            return "/applications/{ApplicationId}/environments/{EnvironmentId}"
        case .deleteExtension:
            return "/extensions/{ExtensionIdentifier}"
        case .deleteExtensionAssociation:
            return "/extensionassociations/{ExtensionAssociationId}"
        case .deleteHostedConfigurationVersion:
            return "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions/{VersionNumber}"
        case .getApplication:
            return "/applications/{ApplicationId}"
        case .getConfiguration:
            return "/applications/{Application}/environments/{Environment}/configurations/{Configuration}"
        case .getConfigurationProfile:
            return "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}"
        case .getDeployment:
            return "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments/{DeploymentNumber}"
        case .getDeploymentStrategy:
            return "/deploymentstrategies/{DeploymentStrategyId}"
        case .getEnvironment:
            return "/applications/{ApplicationId}/environments/{EnvironmentId}"
        case .getExtension:
            return "/extensions/{ExtensionIdentifier}"
        case .getExtensionAssociation:
            return "/extensionassociations/{ExtensionAssociationId}"
        case .getHostedConfigurationVersion:
            return "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions/{VersionNumber}"
        case .listApplications:
            return "/applications"
        case .listConfigurationProfiles:
            return "/applications/{ApplicationId}/configurationprofiles"
        case .listDeploymentStrategies:
            return "/deploymentstrategies"
        case .listDeployments:
            return "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments"
        case .listEnvironments:
            return "/applications/{ApplicationId}/environments"
        case .listExtensionAssociations:
            return "/extensionassociations"
        case .listExtensions:
            return "/extensions"
        case .listHostedConfigurationVersions:
            return "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions"
        case .listTagsForResource:
            return "/tags/{ResourceArn}"
        case .startDeployment:
            return "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments"
        case .stopDeployment:
            return "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments/{DeploymentNumber}"
        case .tagResource:
            return "/tags/{ResourceArn}"
        case .untagResource:
            return "/tags/{ResourceArn}"
        case .updateApplication:
            return "/applications/{ApplicationId}"
        case .updateConfigurationProfile:
            return "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}"
        case .updateDeploymentStrategy:
            return "/deploymentstrategies/{DeploymentStrategyId}"
        case .updateEnvironment:
            return "/applications/{ApplicationId}/environments/{EnvironmentId}"
        case .updateExtension:
            return "/extensions/{ExtensionIdentifier}"
        case .updateExtensionAssociation:
            return "/extensionassociations/{ExtensionAssociationId}"
        case .validateConfiguration:
            return "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/validators"
        }
    }
}

/**
 Structure to encode the path input for the CreateConfigurationProfile
 operation.
 */
public struct CreateConfigurationProfileOperationInputPath: Codable, Equatable {
    public var applicationId: Id

    public init(applicationId: Id) {
        self.applicationId = applicationId
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
    }

    public func validate() throws {
        try applicationId.validateAsId()
    }
}

public extension CreateConfigurationProfileRequest {
    func asAppConfigModelCreateConfigurationProfileOperationInputPath() -> CreateConfigurationProfileOperationInputPath {
        return CreateConfigurationProfileOperationInputPath(
            applicationId: applicationId)
    }
}

/**
 Structure to encode the body input for the CreateConfigurationProfile
 operation.
 */
public struct CreateConfigurationProfileOperationInputBody: Codable, Equatable {
    public var description: Description?
    public var locationUri: Uri
    public var name: LongName
    public var retrievalRoleArn: RoleArn?
    public var tags: TagMap?
    public var type: ConfigurationProfileType?
    public var validators: ValidatorList?

    public init(description: Description? = nil,
                locationUri: Uri,
                name: LongName,
                retrievalRoleArn: RoleArn? = nil,
                tags: TagMap? = nil,
                type: ConfigurationProfileType? = nil,
                validators: ValidatorList? = nil) {
        self.description = description
        self.locationUri = locationUri
        self.name = name
        self.retrievalRoleArn = retrievalRoleArn
        self.tags = tags
        self.type = type
        self.validators = validators
    }

    enum CodingKeys: String, CodingKey {
        case description = "Description"
        case locationUri = "LocationUri"
        case name = "Name"
        case retrievalRoleArn = "RetrievalRoleArn"
        case tags = "Tags"
        case type = "Type"
        case validators = "Validators"
    }

    public func validate() throws {
        try description?.validateAsDescription()
        try locationUri.validateAsUri()
        try name.validateAsLongName()
        try retrievalRoleArn?.validateAsRoleArn()
        try type?.validateAsConfigurationProfileType()
        try validators?.validateAsValidatorList()
    }
}

public extension CreateConfigurationProfileRequest {
    func asAppConfigModelCreateConfigurationProfileOperationInputBody() -> CreateConfigurationProfileOperationInputBody {
        return CreateConfigurationProfileOperationInputBody(
            description: description,
            locationUri: locationUri,
            name: name,
            retrievalRoleArn: retrievalRoleArn,
            tags: tags,
            type: type,
            validators: validators)
    }
}

/**
 Structure to encode the path input for the CreateEnvironment
 operation.
 */
public struct CreateEnvironmentOperationInputPath: Codable, Equatable {
    public var applicationId: Id

    public init(applicationId: Id) {
        self.applicationId = applicationId
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
    }

    public func validate() throws {
        try applicationId.validateAsId()
    }
}

public extension CreateEnvironmentRequest {
    func asAppConfigModelCreateEnvironmentOperationInputPath() -> CreateEnvironmentOperationInputPath {
        return CreateEnvironmentOperationInputPath(
            applicationId: applicationId)
    }
}

/**
 Structure to encode the body input for the CreateEnvironment
 operation.
 */
public struct CreateEnvironmentOperationInputBody: Codable, Equatable {
    public var description: Description?
    public var monitors: MonitorList?
    public var name: Name
    public var tags: TagMap?

    public init(description: Description? = nil,
                monitors: MonitorList? = nil,
                name: Name,
                tags: TagMap? = nil) {
        self.description = description
        self.monitors = monitors
        self.name = name
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case description = "Description"
        case monitors = "Monitors"
        case name = "Name"
        case tags = "Tags"
    }

    public func validate() throws {
        try description?.validateAsDescription()
        try monitors?.validateAsMonitorList()
        try name.validateAsName()
    }
}

public extension CreateEnvironmentRequest {
    func asAppConfigModelCreateEnvironmentOperationInputBody() -> CreateEnvironmentOperationInputBody {
        return CreateEnvironmentOperationInputBody(
            description: description,
            monitors: monitors,
            name: name,
            tags: tags)
    }
}

/**
 Structure to encode the body input for the CreateExtension
 operation.
 */
public struct CreateExtensionOperationInputBody: Codable, Equatable {
    public var actions: ActionsMap
    public var description: Description?
    public var name: Name
    public var parameters: ParameterMap?
    public var tags: TagMap?

    public init(actions: ActionsMap,
                description: Description? = nil,
                name: Name,
                parameters: ParameterMap? = nil,
                tags: TagMap? = nil) {
        self.actions = actions
        self.description = description
        self.name = name
        self.parameters = parameters
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case actions = "Actions"
        case description = "Description"
        case name = "Name"
        case parameters = "Parameters"
        case tags = "Tags"
    }

    public func validate() throws {
        try description?.validateAsDescription()
        try name.validateAsName()
    }
}

public extension CreateExtensionRequest {
    func asAppConfigModelCreateExtensionOperationInputBody() -> CreateExtensionOperationInputBody {
        return CreateExtensionOperationInputBody(
            actions: actions,
            description: description,
            name: name,
            parameters: parameters,
            tags: tags)
    }
}

/**
 Structure to encode the body input for the CreateExtension
 operation.
 */
public struct CreateExtensionOperationInputAdditionalHeaders: Codable, Equatable {
    public var latestVersionNumber: Integer?

    public init(latestVersionNumber: Integer? = nil) {
        self.latestVersionNumber = latestVersionNumber
    }

    enum CodingKeys: String, CodingKey {
        case latestVersionNumber = "Latest-Version-Number"
    }

    public func validate() throws {
    }
}

public extension CreateExtensionRequest {
    func asAppConfigModelCreateExtensionOperationInputAdditionalHeaders() -> CreateExtensionOperationInputAdditionalHeaders {
        return CreateExtensionOperationInputAdditionalHeaders(
            latestVersionNumber: latestVersionNumber)
    }
}

/**
 Structure to encode the path input for the CreateHostedConfigurationVersion
 operation.
 */
public struct CreateHostedConfigurationVersionOperationInputPath: Codable, Equatable {
    public var applicationId: Id
    public var configurationProfileId: Id

    public init(applicationId: Id,
                configurationProfileId: Id) {
        self.applicationId = applicationId
        self.configurationProfileId = configurationProfileId
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case configurationProfileId = "ConfigurationProfileId"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try configurationProfileId.validateAsId()
    }
}

public extension CreateHostedConfigurationVersionRequest {
    func asAppConfigModelCreateHostedConfigurationVersionOperationInputPath() -> CreateHostedConfigurationVersionOperationInputPath {
        return CreateHostedConfigurationVersionOperationInputPath(
            applicationId: applicationId,
            configurationProfileId: configurationProfileId)
    }
}

/**
 Structure to encode the body input for the CreateHostedConfigurationVersion
 operation.
 */
public struct CreateHostedConfigurationVersionOperationInputAdditionalHeaders: Codable, Equatable {
    public var contentType: StringWithLengthBetween1And255
    public var description: Description?
    public var latestVersionNumber: Integer?
    public var versionLabel: VersionLabel?

    public init(contentType: StringWithLengthBetween1And255,
                description: Description? = nil,
                latestVersionNumber: Integer? = nil,
                versionLabel: VersionLabel? = nil) {
        self.contentType = contentType
        self.description = description
        self.latestVersionNumber = latestVersionNumber
        self.versionLabel = versionLabel
    }

    enum CodingKeys: String, CodingKey {
        case contentType = "Content-Type"
        case description = "Description"
        case latestVersionNumber = "Latest-Version-Number"
        case versionLabel = "VersionLabel"
    }

    public func validate() throws {
        try contentType.validateAsStringWithLengthBetween1And255()
        try description?.validateAsDescription()
        try versionLabel?.validateAsVersionLabel()
    }
}

public extension CreateHostedConfigurationVersionRequest {
    func asAppConfigModelCreateHostedConfigurationVersionOperationInputAdditionalHeaders() -> CreateHostedConfigurationVersionOperationInputAdditionalHeaders {
        return CreateHostedConfigurationVersionOperationInputAdditionalHeaders(
            contentType: contentType,
            description: description,
            latestVersionNumber: latestVersionNumber,
            versionLabel: versionLabel)
    }
}

/**
 Structure to encode the body input for the CreateHostedConfigurationVersion
 operation.
 */
public struct CreateHostedConfigurationVersionOperationOutputHeaders: Codable, Equatable {
    public var applicationId: Id?
    public var configurationProfileId: Id?
    public var contentType: StringWithLengthBetween1And255?
    public var description: Description?
    public var versionLabel: VersionLabel?
    public var versionNumber: Integer?

    public init(applicationId: Id? = nil,
                configurationProfileId: Id? = nil,
                contentType: StringWithLengthBetween1And255? = nil,
                description: Description? = nil,
                versionLabel: VersionLabel? = nil,
                versionNumber: Integer? = nil) {
        self.applicationId = applicationId
        self.configurationProfileId = configurationProfileId
        self.contentType = contentType
        self.description = description
        self.versionLabel = versionLabel
        self.versionNumber = versionNumber
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "Application-Id"
        case configurationProfileId = "Configuration-Profile-Id"
        case contentType = "Content-Type"
        case description = "Description"
        case versionLabel = "VersionLabel"
        case versionNumber = "Version-Number"
    }

    public func validate() throws {
        try applicationId?.validateAsId()
        try configurationProfileId?.validateAsId()
        try contentType?.validateAsStringWithLengthBetween1And255()
        try description?.validateAsDescription()
        try versionLabel?.validateAsVersionLabel()
    }
}

public extension HostedConfigurationVersion {
    func asAppConfigModelCreateHostedConfigurationVersionOperationOutputHeaders() -> CreateHostedConfigurationVersionOperationOutputHeaders {
        return CreateHostedConfigurationVersionOperationOutputHeaders(
            applicationId: applicationId,
            configurationProfileId: configurationProfileId,
            contentType: contentType,
            description: description,
            versionLabel: versionLabel,
            versionNumber: versionNumber)
    }
}

/**
 Structure to encode the path input for the DeleteApplication
 operation.
 */
public struct DeleteApplicationOperationInputPath: Codable, Equatable {
    public var applicationId: Id

    public init(applicationId: Id) {
        self.applicationId = applicationId
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
    }

    public func validate() throws {
        try applicationId.validateAsId()
    }
}

public extension DeleteApplicationRequest {
    func asAppConfigModelDeleteApplicationOperationInputPath() -> DeleteApplicationOperationInputPath {
        return DeleteApplicationOperationInputPath(
            applicationId: applicationId)
    }
}

/**
 Structure to encode the path input for the DeleteConfigurationProfile
 operation.
 */
public struct DeleteConfigurationProfileOperationInputPath: Codable, Equatable {
    public var applicationId: Id
    public var configurationProfileId: Id

    public init(applicationId: Id,
                configurationProfileId: Id) {
        self.applicationId = applicationId
        self.configurationProfileId = configurationProfileId
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case configurationProfileId = "ConfigurationProfileId"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try configurationProfileId.validateAsId()
    }
}

public extension DeleteConfigurationProfileRequest {
    func asAppConfigModelDeleteConfigurationProfileOperationInputPath() -> DeleteConfigurationProfileOperationInputPath {
        return DeleteConfigurationProfileOperationInputPath(
            applicationId: applicationId,
            configurationProfileId: configurationProfileId)
    }
}

/**
 Structure to encode the path input for the DeleteDeploymentStrategy
 operation.
 */
public struct DeleteDeploymentStrategyOperationInputPath: Codable, Equatable {
    public var deploymentStrategyId: DeploymentStrategyId

    public init(deploymentStrategyId: DeploymentStrategyId) {
        self.deploymentStrategyId = deploymentStrategyId
    }

    enum CodingKeys: String, CodingKey {
        case deploymentStrategyId = "DeploymentStrategyId"
    }

    public func validate() throws {
        try deploymentStrategyId.validateAsDeploymentStrategyId()
    }
}

public extension DeleteDeploymentStrategyRequest {
    func asAppConfigModelDeleteDeploymentStrategyOperationInputPath() -> DeleteDeploymentStrategyOperationInputPath {
        return DeleteDeploymentStrategyOperationInputPath(
            deploymentStrategyId: deploymentStrategyId)
    }
}

/**
 Structure to encode the path input for the DeleteEnvironment
 operation.
 */
public struct DeleteEnvironmentOperationInputPath: Codable, Equatable {
    public var applicationId: Id
    public var environmentId: Id

    public init(applicationId: Id,
                environmentId: Id) {
        self.applicationId = applicationId
        self.environmentId = environmentId
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case environmentId = "EnvironmentId"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try environmentId.validateAsId()
    }
}

public extension DeleteEnvironmentRequest {
    func asAppConfigModelDeleteEnvironmentOperationInputPath() -> DeleteEnvironmentOperationInputPath {
        return DeleteEnvironmentOperationInputPath(
            applicationId: applicationId,
            environmentId: environmentId)
    }
}

/**
 Structure to encode the path input for the DeleteExtension
 operation.
 */
public struct DeleteExtensionOperationInputPath: Codable, Equatable {
    public var extensionIdentifier: Identifier

    public init(extensionIdentifier: Identifier) {
        self.extensionIdentifier = extensionIdentifier
    }

    enum CodingKeys: String, CodingKey {
        case extensionIdentifier = "ExtensionIdentifier"
    }

    public func validate() throws {
        try extensionIdentifier.validateAsIdentifier()
    }
}

public extension DeleteExtensionRequest {
    func asAppConfigModelDeleteExtensionOperationInputPath() -> DeleteExtensionOperationInputPath {
        return DeleteExtensionOperationInputPath(
            extensionIdentifier: extensionIdentifier)
    }
}

/**
 Structure to encode the query input for the DeleteExtension
 operation.
 */
public struct DeleteExtensionOperationInputQuery: Codable, Equatable {
    public var versionNumber: Integer?

    public init(versionNumber: Integer? = nil) {
        self.versionNumber = versionNumber
    }

    enum CodingKeys: String, CodingKey {
        case versionNumber = "version"
    }

    public func validate() throws {
    }
}

public extension DeleteExtensionRequest {
    func asAppConfigModelDeleteExtensionOperationInputQuery() -> DeleteExtensionOperationInputQuery {
        return DeleteExtensionOperationInputQuery(
            versionNumber: versionNumber)
    }
}

/**
 Structure to encode the path input for the DeleteExtensionAssociation
 operation.
 */
public struct DeleteExtensionAssociationOperationInputPath: Codable, Equatable {
    public var extensionAssociationId: Id

    public init(extensionAssociationId: Id) {
        self.extensionAssociationId = extensionAssociationId
    }

    enum CodingKeys: String, CodingKey {
        case extensionAssociationId = "ExtensionAssociationId"
    }

    public func validate() throws {
        try extensionAssociationId.validateAsId()
    }
}

public extension DeleteExtensionAssociationRequest {
    func asAppConfigModelDeleteExtensionAssociationOperationInputPath() -> DeleteExtensionAssociationOperationInputPath {
        return DeleteExtensionAssociationOperationInputPath(
            extensionAssociationId: extensionAssociationId)
    }
}

/**
 Structure to encode the path input for the DeleteHostedConfigurationVersion
 operation.
 */
public struct DeleteHostedConfigurationVersionOperationInputPath: Codable, Equatable {
    public var applicationId: Id
    public var configurationProfileId: Id
    public var versionNumber: Integer

    public init(applicationId: Id,
                configurationProfileId: Id,
                versionNumber: Integer) {
        self.applicationId = applicationId
        self.configurationProfileId = configurationProfileId
        self.versionNumber = versionNumber
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case configurationProfileId = "ConfigurationProfileId"
        case versionNumber = "VersionNumber"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try configurationProfileId.validateAsId()
    }
}

public extension DeleteHostedConfigurationVersionRequest {
    func asAppConfigModelDeleteHostedConfigurationVersionOperationInputPath() -> DeleteHostedConfigurationVersionOperationInputPath {
        return DeleteHostedConfigurationVersionOperationInputPath(
            applicationId: applicationId,
            configurationProfileId: configurationProfileId,
            versionNumber: versionNumber)
    }
}

/**
 Structure to encode the path input for the GetApplication
 operation.
 */
public struct GetApplicationOperationInputPath: Codable, Equatable {
    public var applicationId: Id

    public init(applicationId: Id) {
        self.applicationId = applicationId
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
    }

    public func validate() throws {
        try applicationId.validateAsId()
    }
}

public extension GetApplicationRequest {
    func asAppConfigModelGetApplicationOperationInputPath() -> GetApplicationOperationInputPath {
        return GetApplicationOperationInputPath(
            applicationId: applicationId)
    }
}

/**
 Structure to encode the path input for the GetConfiguration
 operation.
 */
public struct GetConfigurationOperationInputPath: Codable, Equatable {
    public var application: StringWithLengthBetween1And64
    public var configuration: StringWithLengthBetween1And64
    public var environment: StringWithLengthBetween1And64

    public init(application: StringWithLengthBetween1And64,
                configuration: StringWithLengthBetween1And64,
                environment: StringWithLengthBetween1And64) {
        self.application = application
        self.configuration = configuration
        self.environment = environment
    }

    enum CodingKeys: String, CodingKey {
        case application = "Application"
        case configuration = "Configuration"
        case environment = "Environment"
    }

    public func validate() throws {
        try application.validateAsStringWithLengthBetween1And64()
        try configuration.validateAsStringWithLengthBetween1And64()
        try environment.validateAsStringWithLengthBetween1And64()
    }
}

public extension GetConfigurationRequest {
    func asAppConfigModelGetConfigurationOperationInputPath() -> GetConfigurationOperationInputPath {
        return GetConfigurationOperationInputPath(
            application: application,
            configuration: configuration,
            environment: environment)
    }
}

/**
 Structure to encode the query input for the GetConfiguration
 operation.
 */
public struct GetConfigurationOperationInputQuery: Codable, Equatable {
    public var clientConfigurationVersion: Version?
    public var clientId: StringWithLengthBetween1And64

    public init(clientConfigurationVersion: Version? = nil,
                clientId: StringWithLengthBetween1And64) {
        self.clientConfigurationVersion = clientConfigurationVersion
        self.clientId = clientId
    }

    enum CodingKeys: String, CodingKey {
        case clientConfigurationVersion = "client_configuration_version"
        case clientId = "client_id"
    }

    public func validate() throws {
        try clientConfigurationVersion?.validateAsVersion()
        try clientId.validateAsStringWithLengthBetween1And64()
    }
}

public extension GetConfigurationRequest {
    func asAppConfigModelGetConfigurationOperationInputQuery() -> GetConfigurationOperationInputQuery {
        return GetConfigurationOperationInputQuery(
            clientConfigurationVersion: clientConfigurationVersion,
            clientId: clientId)
    }
}

/**
 Structure to encode the body input for the GetConfiguration
 operation.
 */
public struct GetConfigurationOperationOutputHeaders: Codable, Equatable {
    public var configurationVersion: Version?
    public var contentType: String?

    public init(configurationVersion: Version? = nil,
                contentType: String? = nil) {
        self.configurationVersion = configurationVersion
        self.contentType = contentType
    }

    enum CodingKeys: String, CodingKey {
        case configurationVersion = "Configuration-Version"
        case contentType = "Content-Type"
    }

    public func validate() throws {
        try configurationVersion?.validateAsVersion()
    }
}

public extension Configuration {
    func asAppConfigModelGetConfigurationOperationOutputHeaders() -> GetConfigurationOperationOutputHeaders {
        return GetConfigurationOperationOutputHeaders(
            configurationVersion: configurationVersion,
            contentType: contentType)
    }
}

/**
 Structure to encode the path input for the GetConfigurationProfile
 operation.
 */
public struct GetConfigurationProfileOperationInputPath: Codable, Equatable {
    public var applicationId: Id
    public var configurationProfileId: Id

    public init(applicationId: Id,
                configurationProfileId: Id) {
        self.applicationId = applicationId
        self.configurationProfileId = configurationProfileId
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case configurationProfileId = "ConfigurationProfileId"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try configurationProfileId.validateAsId()
    }
}

public extension GetConfigurationProfileRequest {
    func asAppConfigModelGetConfigurationProfileOperationInputPath() -> GetConfigurationProfileOperationInputPath {
        return GetConfigurationProfileOperationInputPath(
            applicationId: applicationId,
            configurationProfileId: configurationProfileId)
    }
}

/**
 Structure to encode the path input for the GetDeployment
 operation.
 */
public struct GetDeploymentOperationInputPath: Codable, Equatable {
    public var applicationId: Id
    public var deploymentNumber: Integer
    public var environmentId: Id

    public init(applicationId: Id,
                deploymentNumber: Integer,
                environmentId: Id) {
        self.applicationId = applicationId
        self.deploymentNumber = deploymentNumber
        self.environmentId = environmentId
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case deploymentNumber = "DeploymentNumber"
        case environmentId = "EnvironmentId"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try environmentId.validateAsId()
    }
}

public extension GetDeploymentRequest {
    func asAppConfigModelGetDeploymentOperationInputPath() -> GetDeploymentOperationInputPath {
        return GetDeploymentOperationInputPath(
            applicationId: applicationId,
            deploymentNumber: deploymentNumber,
            environmentId: environmentId)
    }
}

/**
 Structure to encode the path input for the GetDeploymentStrategy
 operation.
 */
public struct GetDeploymentStrategyOperationInputPath: Codable, Equatable {
    public var deploymentStrategyId: DeploymentStrategyId

    public init(deploymentStrategyId: DeploymentStrategyId) {
        self.deploymentStrategyId = deploymentStrategyId
    }

    enum CodingKeys: String, CodingKey {
        case deploymentStrategyId = "DeploymentStrategyId"
    }

    public func validate() throws {
        try deploymentStrategyId.validateAsDeploymentStrategyId()
    }
}

public extension GetDeploymentStrategyRequest {
    func asAppConfigModelGetDeploymentStrategyOperationInputPath() -> GetDeploymentStrategyOperationInputPath {
        return GetDeploymentStrategyOperationInputPath(
            deploymentStrategyId: deploymentStrategyId)
    }
}

/**
 Structure to encode the path input for the GetEnvironment
 operation.
 */
public struct GetEnvironmentOperationInputPath: Codable, Equatable {
    public var applicationId: Id
    public var environmentId: Id

    public init(applicationId: Id,
                environmentId: Id) {
        self.applicationId = applicationId
        self.environmentId = environmentId
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case environmentId = "EnvironmentId"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try environmentId.validateAsId()
    }
}

public extension GetEnvironmentRequest {
    func asAppConfigModelGetEnvironmentOperationInputPath() -> GetEnvironmentOperationInputPath {
        return GetEnvironmentOperationInputPath(
            applicationId: applicationId,
            environmentId: environmentId)
    }
}

/**
 Structure to encode the path input for the GetExtension
 operation.
 */
public struct GetExtensionOperationInputPath: Codable, Equatable {
    public var extensionIdentifier: Identifier

    public init(extensionIdentifier: Identifier) {
        self.extensionIdentifier = extensionIdentifier
    }

    enum CodingKeys: String, CodingKey {
        case extensionIdentifier = "ExtensionIdentifier"
    }

    public func validate() throws {
        try extensionIdentifier.validateAsIdentifier()
    }
}

public extension GetExtensionRequest {
    func asAppConfigModelGetExtensionOperationInputPath() -> GetExtensionOperationInputPath {
        return GetExtensionOperationInputPath(
            extensionIdentifier: extensionIdentifier)
    }
}

/**
 Structure to encode the query input for the GetExtension
 operation.
 */
public struct GetExtensionOperationInputQuery: Codable, Equatable {
    public var versionNumber: Integer?

    public init(versionNumber: Integer? = nil) {
        self.versionNumber = versionNumber
    }

    enum CodingKeys: String, CodingKey {
        case versionNumber = "version_number"
    }

    public func validate() throws {
    }
}

public extension GetExtensionRequest {
    func asAppConfigModelGetExtensionOperationInputQuery() -> GetExtensionOperationInputQuery {
        return GetExtensionOperationInputQuery(
            versionNumber: versionNumber)
    }
}

/**
 Structure to encode the path input for the GetExtensionAssociation
 operation.
 */
public struct GetExtensionAssociationOperationInputPath: Codable, Equatable {
    public var extensionAssociationId: Id

    public init(extensionAssociationId: Id) {
        self.extensionAssociationId = extensionAssociationId
    }

    enum CodingKeys: String, CodingKey {
        case extensionAssociationId = "ExtensionAssociationId"
    }

    public func validate() throws {
        try extensionAssociationId.validateAsId()
    }
}

public extension GetExtensionAssociationRequest {
    func asAppConfigModelGetExtensionAssociationOperationInputPath() -> GetExtensionAssociationOperationInputPath {
        return GetExtensionAssociationOperationInputPath(
            extensionAssociationId: extensionAssociationId)
    }
}

/**
 Structure to encode the path input for the GetHostedConfigurationVersion
 operation.
 */
public struct GetHostedConfigurationVersionOperationInputPath: Codable, Equatable {
    public var applicationId: Id
    public var configurationProfileId: Id
    public var versionNumber: Integer

    public init(applicationId: Id,
                configurationProfileId: Id,
                versionNumber: Integer) {
        self.applicationId = applicationId
        self.configurationProfileId = configurationProfileId
        self.versionNumber = versionNumber
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case configurationProfileId = "ConfigurationProfileId"
        case versionNumber = "VersionNumber"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try configurationProfileId.validateAsId()
    }
}

public extension GetHostedConfigurationVersionRequest {
    func asAppConfigModelGetHostedConfigurationVersionOperationInputPath() -> GetHostedConfigurationVersionOperationInputPath {
        return GetHostedConfigurationVersionOperationInputPath(
            applicationId: applicationId,
            configurationProfileId: configurationProfileId,
            versionNumber: versionNumber)
    }
}

/**
 Structure to encode the query input for the ListApplications
 operation.
 */
public struct ListApplicationsOperationInputQuery: Codable, Equatable {
    public var maxResults: MaxResults?
    public var nextToken: NextToken?

    public init(maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case maxResults = "max_results"
        case nextToken = "next_token"
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
    }
}

public extension ListApplicationsRequest {
    func asAppConfigModelListApplicationsOperationInputQuery() -> ListApplicationsOperationInputQuery {
        return ListApplicationsOperationInputQuery(
            maxResults: maxResults,
            nextToken: nextToken)
    }
}

/**
 Structure to encode the path input for the ListConfigurationProfiles
 operation.
 */
public struct ListConfigurationProfilesOperationInputPath: Codable, Equatable {
    public var applicationId: Id

    public init(applicationId: Id) {
        self.applicationId = applicationId
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
    }

    public func validate() throws {
        try applicationId.validateAsId()
    }
}

public extension ListConfigurationProfilesRequest {
    func asAppConfigModelListConfigurationProfilesOperationInputPath() -> ListConfigurationProfilesOperationInputPath {
        return ListConfigurationProfilesOperationInputPath(
            applicationId: applicationId)
    }
}

/**
 Structure to encode the query input for the ListConfigurationProfiles
 operation.
 */
public struct ListConfigurationProfilesOperationInputQuery: Codable, Equatable {
    public var maxResults: MaxResults?
    public var nextToken: NextToken?
    public var type: ConfigurationProfileType?

    public init(maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil,
                type: ConfigurationProfileType? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case maxResults = "max_results"
        case nextToken = "next_token"
        case type
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
        try type?.validateAsConfigurationProfileType()
    }
}

public extension ListConfigurationProfilesRequest {
    func asAppConfigModelListConfigurationProfilesOperationInputQuery() -> ListConfigurationProfilesOperationInputQuery {
        return ListConfigurationProfilesOperationInputQuery(
            maxResults: maxResults,
            nextToken: nextToken,
            type: type)
    }
}

/**
 Structure to encode the query input for the ListDeploymentStrategies
 operation.
 */
public struct ListDeploymentStrategiesOperationInputQuery: Codable, Equatable {
    public var maxResults: MaxResults?
    public var nextToken: NextToken?

    public init(maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case maxResults = "max_results"
        case nextToken = "next_token"
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
    }
}

public extension ListDeploymentStrategiesRequest {
    func asAppConfigModelListDeploymentStrategiesOperationInputQuery() -> ListDeploymentStrategiesOperationInputQuery {
        return ListDeploymentStrategiesOperationInputQuery(
            maxResults: maxResults,
            nextToken: nextToken)
    }
}

/**
 Structure to encode the path input for the ListDeployments
 operation.
 */
public struct ListDeploymentsOperationInputPath: Codable, Equatable {
    public var applicationId: Id
    public var environmentId: Id

    public init(applicationId: Id,
                environmentId: Id) {
        self.applicationId = applicationId
        self.environmentId = environmentId
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case environmentId = "EnvironmentId"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try environmentId.validateAsId()
    }
}

public extension ListDeploymentsRequest {
    func asAppConfigModelListDeploymentsOperationInputPath() -> ListDeploymentsOperationInputPath {
        return ListDeploymentsOperationInputPath(
            applicationId: applicationId,
            environmentId: environmentId)
    }
}

/**
 Structure to encode the query input for the ListDeployments
 operation.
 */
public struct ListDeploymentsOperationInputQuery: Codable, Equatable {
    public var maxResults: MaxResults?
    public var nextToken: NextToken?

    public init(maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case maxResults = "max_results"
        case nextToken = "next_token"
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
    }
}

public extension ListDeploymentsRequest {
    func asAppConfigModelListDeploymentsOperationInputQuery() -> ListDeploymentsOperationInputQuery {
        return ListDeploymentsOperationInputQuery(
            maxResults: maxResults,
            nextToken: nextToken)
    }
}

/**
 Structure to encode the path input for the ListEnvironments
 operation.
 */
public struct ListEnvironmentsOperationInputPath: Codable, Equatable {
    public var applicationId: Id

    public init(applicationId: Id) {
        self.applicationId = applicationId
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
    }

    public func validate() throws {
        try applicationId.validateAsId()
    }
}

public extension ListEnvironmentsRequest {
    func asAppConfigModelListEnvironmentsOperationInputPath() -> ListEnvironmentsOperationInputPath {
        return ListEnvironmentsOperationInputPath(
            applicationId: applicationId)
    }
}

/**
 Structure to encode the query input for the ListEnvironments
 operation.
 */
public struct ListEnvironmentsOperationInputQuery: Codable, Equatable {
    public var maxResults: MaxResults?
    public var nextToken: NextToken?

    public init(maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case maxResults = "max_results"
        case nextToken = "next_token"
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
    }
}

public extension ListEnvironmentsRequest {
    func asAppConfigModelListEnvironmentsOperationInputQuery() -> ListEnvironmentsOperationInputQuery {
        return ListEnvironmentsOperationInputQuery(
            maxResults: maxResults,
            nextToken: nextToken)
    }
}

/**
 Structure to encode the query input for the ListExtensionAssociations
 operation.
 */
public struct ListExtensionAssociationsOperationInputQuery: Codable, Equatable {
    public var extensionIdentifier: Identifier?
    public var extensionVersionNumber: Integer?
    public var maxResults: MaxResults?
    public var nextToken: NextToken?
    public var resourceIdentifier: Arn?

    public init(extensionIdentifier: Identifier? = nil,
                extensionVersionNumber: Integer? = nil,
                maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil,
                resourceIdentifier: Arn? = nil) {
        self.extensionIdentifier = extensionIdentifier
        self.extensionVersionNumber = extensionVersionNumber
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.resourceIdentifier = resourceIdentifier
    }

    enum CodingKeys: String, CodingKey {
        case extensionIdentifier = "extension_identifier"
        case extensionVersionNumber = "extension_version_number"
        case maxResults = "max_results"
        case nextToken = "next_token"
        case resourceIdentifier = "resource_identifier"
    }

    public func validate() throws {
        try extensionIdentifier?.validateAsIdentifier()
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
        try resourceIdentifier?.validateAsArn()
    }
}

public extension ListExtensionAssociationsRequest {
    func asAppConfigModelListExtensionAssociationsOperationInputQuery() -> ListExtensionAssociationsOperationInputQuery {
        return ListExtensionAssociationsOperationInputQuery(
            extensionIdentifier: extensionIdentifier,
            extensionVersionNumber: extensionVersionNumber,
            maxResults: maxResults,
            nextToken: nextToken,
            resourceIdentifier: resourceIdentifier)
    }
}

/**
 Structure to encode the query input for the ListExtensions
 operation.
 */
public struct ListExtensionsOperationInputQuery: Codable, Equatable {
    public var maxResults: MaxResults?
    public var name: QueryName?
    public var nextToken: NextToken?

    public init(maxResults: MaxResults? = nil,
                name: QueryName? = nil,
                nextToken: NextToken? = nil) {
        self.maxResults = maxResults
        self.name = name
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case maxResults = "max_results"
        case name
        case nextToken = "next_token"
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
        try name?.validateAsQueryName()
        try nextToken?.validateAsNextToken()
    }
}

public extension ListExtensionsRequest {
    func asAppConfigModelListExtensionsOperationInputQuery() -> ListExtensionsOperationInputQuery {
        return ListExtensionsOperationInputQuery(
            maxResults: maxResults,
            name: name,
            nextToken: nextToken)
    }
}

/**
 Structure to encode the path input for the ListHostedConfigurationVersions
 operation.
 */
public struct ListHostedConfigurationVersionsOperationInputPath: Codable, Equatable {
    public var applicationId: Id
    public var configurationProfileId: Id

    public init(applicationId: Id,
                configurationProfileId: Id) {
        self.applicationId = applicationId
        self.configurationProfileId = configurationProfileId
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case configurationProfileId = "ConfigurationProfileId"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try configurationProfileId.validateAsId()
    }
}

public extension ListHostedConfigurationVersionsRequest {
    func asAppConfigModelListHostedConfigurationVersionsOperationInputPath() -> ListHostedConfigurationVersionsOperationInputPath {
        return ListHostedConfigurationVersionsOperationInputPath(
            applicationId: applicationId,
            configurationProfileId: configurationProfileId)
    }
}

/**
 Structure to encode the query input for the ListHostedConfigurationVersions
 operation.
 */
public struct ListHostedConfigurationVersionsOperationInputQuery: Codable, Equatable {
    public var maxResults: MaxResults?
    public var nextToken: NextToken?
    public var versionLabel: QueryName?

    public init(maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil,
                versionLabel: QueryName? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.versionLabel = versionLabel
    }

    enum CodingKeys: String, CodingKey {
        case maxResults = "max_results"
        case nextToken = "next_token"
        case versionLabel = "version_label"
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
        try versionLabel?.validateAsQueryName()
    }
}

public extension ListHostedConfigurationVersionsRequest {
    func asAppConfigModelListHostedConfigurationVersionsOperationInputQuery() -> ListHostedConfigurationVersionsOperationInputQuery {
        return ListHostedConfigurationVersionsOperationInputQuery(
            maxResults: maxResults,
            nextToken: nextToken,
            versionLabel: versionLabel)
    }
}

/**
 Structure to encode the path input for the ListTagsForResource
 operation.
 */
public struct ListTagsForResourceOperationInputPath: Codable, Equatable {
    public var resourceArn: Arn

    public init(resourceArn: Arn) {
        self.resourceArn = resourceArn
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn = "ResourceArn"
    }

    public func validate() throws {
        try resourceArn.validateAsArn()
    }
}

public extension ListTagsForResourceRequest {
    func asAppConfigModelListTagsForResourceOperationInputPath() -> ListTagsForResourceOperationInputPath {
        return ListTagsForResourceOperationInputPath(
            resourceArn: resourceArn)
    }
}

/**
 Structure to encode the path input for the StartDeployment
 operation.
 */
public struct StartDeploymentOperationInputPath: Codable, Equatable {
    public var applicationId: Id
    public var environmentId: Id

    public init(applicationId: Id,
                environmentId: Id) {
        self.applicationId = applicationId
        self.environmentId = environmentId
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case environmentId = "EnvironmentId"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try environmentId.validateAsId()
    }
}

public extension StartDeploymentRequest {
    func asAppConfigModelStartDeploymentOperationInputPath() -> StartDeploymentOperationInputPath {
        return StartDeploymentOperationInputPath(
            applicationId: applicationId,
            environmentId: environmentId)
    }
}

/**
 Structure to encode the body input for the StartDeployment
 operation.
 */
public struct StartDeploymentOperationInputBody: Codable, Equatable {
    public var configurationProfileId: Id
    public var configurationVersion: Version
    public var deploymentStrategyId: DeploymentStrategyId
    public var description: Description?
    public var kmsKeyIdentifier: Identifier?
    public var tags: TagMap?

    public init(configurationProfileId: Id,
                configurationVersion: Version,
                deploymentStrategyId: DeploymentStrategyId,
                description: Description? = nil,
                kmsKeyIdentifier: Identifier? = nil,
                tags: TagMap? = nil) {
        self.configurationProfileId = configurationProfileId
        self.configurationVersion = configurationVersion
        self.deploymentStrategyId = deploymentStrategyId
        self.description = description
        self.kmsKeyIdentifier = kmsKeyIdentifier
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case configurationProfileId = "ConfigurationProfileId"
        case configurationVersion = "ConfigurationVersion"
        case deploymentStrategyId = "DeploymentStrategyId"
        case description = "Description"
        case kmsKeyIdentifier = "KmsKeyIdentifier"
        case tags = "Tags"
    }

    public func validate() throws {
        try configurationProfileId.validateAsId()
        try configurationVersion.validateAsVersion()
        try deploymentStrategyId.validateAsDeploymentStrategyId()
        try description?.validateAsDescription()
        try kmsKeyIdentifier?.validateAsIdentifier()
    }
}

public extension StartDeploymentRequest {
    func asAppConfigModelStartDeploymentOperationInputBody() -> StartDeploymentOperationInputBody {
        return StartDeploymentOperationInputBody(
            configurationProfileId: configurationProfileId,
            configurationVersion: configurationVersion,
            deploymentStrategyId: deploymentStrategyId,
            description: description,
            kmsKeyIdentifier: kmsKeyIdentifier,
            tags: tags)
    }
}

/**
 Structure to encode the path input for the StopDeployment
 operation.
 */
public struct StopDeploymentOperationInputPath: Codable, Equatable {
    public var applicationId: Id
    public var deploymentNumber: Integer
    public var environmentId: Id

    public init(applicationId: Id,
                deploymentNumber: Integer,
                environmentId: Id) {
        self.applicationId = applicationId
        self.deploymentNumber = deploymentNumber
        self.environmentId = environmentId
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case deploymentNumber = "DeploymentNumber"
        case environmentId = "EnvironmentId"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try environmentId.validateAsId()
    }
}

public extension StopDeploymentRequest {
    func asAppConfigModelStopDeploymentOperationInputPath() -> StopDeploymentOperationInputPath {
        return StopDeploymentOperationInputPath(
            applicationId: applicationId,
            deploymentNumber: deploymentNumber,
            environmentId: environmentId)
    }
}

/**
 Structure to encode the path input for the TagResource
 operation.
 */
public struct TagResourceOperationInputPath: Codable, Equatable {
    public var resourceArn: Arn

    public init(resourceArn: Arn) {
        self.resourceArn = resourceArn
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn = "ResourceArn"
    }

    public func validate() throws {
        try resourceArn.validateAsArn()
    }
}

public extension TagResourceRequest {
    func asAppConfigModelTagResourceOperationInputPath() -> TagResourceOperationInputPath {
        return TagResourceOperationInputPath(
            resourceArn: resourceArn)
    }
}

/**
 Structure to encode the body input for the TagResource
 operation.
 */
public struct TagResourceOperationInputBody: Codable, Equatable {
    public var tags: TagMap

    public init(tags: TagMap) {
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case tags = "Tags"
    }

    public func validate() throws {
    }
}

public extension TagResourceRequest {
    func asAppConfigModelTagResourceOperationInputBody() -> TagResourceOperationInputBody {
        return TagResourceOperationInputBody(
            tags: tags)
    }
}

/**
 Structure to encode the path input for the UntagResource
 operation.
 */
public struct UntagResourceOperationInputPath: Codable, Equatable {
    public var resourceArn: Arn

    public init(resourceArn: Arn) {
        self.resourceArn = resourceArn
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn = "ResourceArn"
    }

    public func validate() throws {
        try resourceArn.validateAsArn()
    }
}

public extension UntagResourceRequest {
    func asAppConfigModelUntagResourceOperationInputPath() -> UntagResourceOperationInputPath {
        return UntagResourceOperationInputPath(
            resourceArn: resourceArn)
    }
}

/**
 Structure to encode the query input for the UntagResource
 operation.
 */
public struct UntagResourceOperationInputQuery: Codable, Equatable {
    public var tagKeys: TagKeyList

    public init(tagKeys: TagKeyList) {
        self.tagKeys = tagKeys
    }

    enum CodingKeys: String, CodingKey {
        case tagKeys
    }

    public func validate() throws {
        try tagKeys.validateAsTagKeyList()
    }
}

public extension UntagResourceRequest {
    func asAppConfigModelUntagResourceOperationInputQuery() -> UntagResourceOperationInputQuery {
        return UntagResourceOperationInputQuery(
            tagKeys: tagKeys)
    }
}

/**
 Structure to encode the path input for the UpdateApplication
 operation.
 */
public struct UpdateApplicationOperationInputPath: Codable, Equatable {
    public var applicationId: Id

    public init(applicationId: Id) {
        self.applicationId = applicationId
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
    }

    public func validate() throws {
        try applicationId.validateAsId()
    }
}

public extension UpdateApplicationRequest {
    func asAppConfigModelUpdateApplicationOperationInputPath() -> UpdateApplicationOperationInputPath {
        return UpdateApplicationOperationInputPath(
            applicationId: applicationId)
    }
}

/**
 Structure to encode the body input for the UpdateApplication
 operation.
 */
public struct UpdateApplicationOperationInputBody: Codable, Equatable {
    public var description: Description?
    public var name: Name?

    public init(description: Description? = nil,
                name: Name? = nil) {
        self.description = description
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case description = "Description"
        case name = "Name"
    }

    public func validate() throws {
        try description?.validateAsDescription()
        try name?.validateAsName()
    }
}

public extension UpdateApplicationRequest {
    func asAppConfigModelUpdateApplicationOperationInputBody() -> UpdateApplicationOperationInputBody {
        return UpdateApplicationOperationInputBody(
            description: description,
            name: name)
    }
}

/**
 Structure to encode the path input for the UpdateConfigurationProfile
 operation.
 */
public struct UpdateConfigurationProfileOperationInputPath: Codable, Equatable {
    public var applicationId: Id
    public var configurationProfileId: Id

    public init(applicationId: Id,
                configurationProfileId: Id) {
        self.applicationId = applicationId
        self.configurationProfileId = configurationProfileId
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case configurationProfileId = "ConfigurationProfileId"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try configurationProfileId.validateAsId()
    }
}

public extension UpdateConfigurationProfileRequest {
    func asAppConfigModelUpdateConfigurationProfileOperationInputPath() -> UpdateConfigurationProfileOperationInputPath {
        return UpdateConfigurationProfileOperationInputPath(
            applicationId: applicationId,
            configurationProfileId: configurationProfileId)
    }
}

/**
 Structure to encode the body input for the UpdateConfigurationProfile
 operation.
 */
public struct UpdateConfigurationProfileOperationInputBody: Codable, Equatable {
    public var description: Description?
    public var name: Name?
    public var retrievalRoleArn: RoleArn?
    public var validators: ValidatorList?

    public init(description: Description? = nil,
                name: Name? = nil,
                retrievalRoleArn: RoleArn? = nil,
                validators: ValidatorList? = nil) {
        self.description = description
        self.name = name
        self.retrievalRoleArn = retrievalRoleArn
        self.validators = validators
    }

    enum CodingKeys: String, CodingKey {
        case description = "Description"
        case name = "Name"
        case retrievalRoleArn = "RetrievalRoleArn"
        case validators = "Validators"
    }

    public func validate() throws {
        try description?.validateAsDescription()
        try name?.validateAsName()
        try retrievalRoleArn?.validateAsRoleArn()
        try validators?.validateAsValidatorList()
    }
}

public extension UpdateConfigurationProfileRequest {
    func asAppConfigModelUpdateConfigurationProfileOperationInputBody() -> UpdateConfigurationProfileOperationInputBody {
        return UpdateConfigurationProfileOperationInputBody(
            description: description,
            name: name,
            retrievalRoleArn: retrievalRoleArn,
            validators: validators)
    }
}

/**
 Structure to encode the path input for the UpdateDeploymentStrategy
 operation.
 */
public struct UpdateDeploymentStrategyOperationInputPath: Codable, Equatable {
    public var deploymentStrategyId: DeploymentStrategyId

    public init(deploymentStrategyId: DeploymentStrategyId) {
        self.deploymentStrategyId = deploymentStrategyId
    }

    enum CodingKeys: String, CodingKey {
        case deploymentStrategyId = "DeploymentStrategyId"
    }

    public func validate() throws {
        try deploymentStrategyId.validateAsDeploymentStrategyId()
    }
}

public extension UpdateDeploymentStrategyRequest {
    func asAppConfigModelUpdateDeploymentStrategyOperationInputPath() -> UpdateDeploymentStrategyOperationInputPath {
        return UpdateDeploymentStrategyOperationInputPath(
            deploymentStrategyId: deploymentStrategyId)
    }
}

/**
 Structure to encode the body input for the UpdateDeploymentStrategy
 operation.
 */
public struct UpdateDeploymentStrategyOperationInputBody: Codable, Equatable {
    public var deploymentDurationInMinutes: MinutesBetween0And24Hours?
    public var description: Description?
    public var finalBakeTimeInMinutes: MinutesBetween0And24Hours?
    public var growthFactor: GrowthFactor?
    public var growthType: GrowthType?

    public init(deploymentDurationInMinutes: MinutesBetween0And24Hours? = nil,
                description: Description? = nil,
                finalBakeTimeInMinutes: MinutesBetween0And24Hours? = nil,
                growthFactor: GrowthFactor? = nil,
                growthType: GrowthType? = nil) {
        self.deploymentDurationInMinutes = deploymentDurationInMinutes
        self.description = description
        self.finalBakeTimeInMinutes = finalBakeTimeInMinutes
        self.growthFactor = growthFactor
        self.growthType = growthType
    }

    enum CodingKeys: String, CodingKey {
        case deploymentDurationInMinutes = "DeploymentDurationInMinutes"
        case description = "Description"
        case finalBakeTimeInMinutes = "FinalBakeTimeInMinutes"
        case growthFactor = "GrowthFactor"
        case growthType = "GrowthType"
    }

    public func validate() throws {
        try deploymentDurationInMinutes?.validateAsMinutesBetween0And24Hours()
        try description?.validateAsDescription()
        try finalBakeTimeInMinutes?.validateAsMinutesBetween0And24Hours()
        try growthFactor?.validateAsGrowthFactor()
    }
}

public extension UpdateDeploymentStrategyRequest {
    func asAppConfigModelUpdateDeploymentStrategyOperationInputBody() -> UpdateDeploymentStrategyOperationInputBody {
        return UpdateDeploymentStrategyOperationInputBody(
            deploymentDurationInMinutes: deploymentDurationInMinutes,
            description: description,
            finalBakeTimeInMinutes: finalBakeTimeInMinutes,
            growthFactor: growthFactor,
            growthType: growthType)
    }
}

/**
 Structure to encode the path input for the UpdateEnvironment
 operation.
 */
public struct UpdateEnvironmentOperationInputPath: Codable, Equatable {
    public var applicationId: Id
    public var environmentId: Id

    public init(applicationId: Id,
                environmentId: Id) {
        self.applicationId = applicationId
        self.environmentId = environmentId
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case environmentId = "EnvironmentId"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try environmentId.validateAsId()
    }
}

public extension UpdateEnvironmentRequest {
    func asAppConfigModelUpdateEnvironmentOperationInputPath() -> UpdateEnvironmentOperationInputPath {
        return UpdateEnvironmentOperationInputPath(
            applicationId: applicationId,
            environmentId: environmentId)
    }
}

/**
 Structure to encode the body input for the UpdateEnvironment
 operation.
 */
public struct UpdateEnvironmentOperationInputBody: Codable, Equatable {
    public var description: Description?
    public var monitors: MonitorList?
    public var name: Name?

    public init(description: Description? = nil,
                monitors: MonitorList? = nil,
                name: Name? = nil) {
        self.description = description
        self.monitors = monitors
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case description = "Description"
        case monitors = "Monitors"
        case name = "Name"
    }

    public func validate() throws {
        try description?.validateAsDescription()
        try monitors?.validateAsMonitorList()
        try name?.validateAsName()
    }
}

public extension UpdateEnvironmentRequest {
    func asAppConfigModelUpdateEnvironmentOperationInputBody() -> UpdateEnvironmentOperationInputBody {
        return UpdateEnvironmentOperationInputBody(
            description: description,
            monitors: monitors,
            name: name)
    }
}

/**
 Structure to encode the path input for the UpdateExtension
 operation.
 */
public struct UpdateExtensionOperationInputPath: Codable, Equatable {
    public var extensionIdentifier: Identifier

    public init(extensionIdentifier: Identifier) {
        self.extensionIdentifier = extensionIdentifier
    }

    enum CodingKeys: String, CodingKey {
        case extensionIdentifier = "ExtensionIdentifier"
    }

    public func validate() throws {
        try extensionIdentifier.validateAsIdentifier()
    }
}

public extension UpdateExtensionRequest {
    func asAppConfigModelUpdateExtensionOperationInputPath() -> UpdateExtensionOperationInputPath {
        return UpdateExtensionOperationInputPath(
            extensionIdentifier: extensionIdentifier)
    }
}

/**
 Structure to encode the body input for the UpdateExtension
 operation.
 */
public struct UpdateExtensionOperationInputBody: Codable, Equatable {
    public var actions: ActionsMap?
    public var description: Description?
    public var parameters: ParameterMap?
    public var versionNumber: Integer?

    public init(actions: ActionsMap? = nil,
                description: Description? = nil,
                parameters: ParameterMap? = nil,
                versionNumber: Integer? = nil) {
        self.actions = actions
        self.description = description
        self.parameters = parameters
        self.versionNumber = versionNumber
    }

    enum CodingKeys: String, CodingKey {
        case actions = "Actions"
        case description = "Description"
        case parameters = "Parameters"
        case versionNumber = "VersionNumber"
    }

    public func validate() throws {
        try description?.validateAsDescription()
    }
}

public extension UpdateExtensionRequest {
    func asAppConfigModelUpdateExtensionOperationInputBody() -> UpdateExtensionOperationInputBody {
        return UpdateExtensionOperationInputBody(
            actions: actions,
            description: description,
            parameters: parameters,
            versionNumber: versionNumber)
    }
}

/**
 Structure to encode the path input for the UpdateExtensionAssociation
 operation.
 */
public struct UpdateExtensionAssociationOperationInputPath: Codable, Equatable {
    public var extensionAssociationId: Id

    public init(extensionAssociationId: Id) {
        self.extensionAssociationId = extensionAssociationId
    }

    enum CodingKeys: String, CodingKey {
        case extensionAssociationId = "ExtensionAssociationId"
    }

    public func validate() throws {
        try extensionAssociationId.validateAsId()
    }
}

public extension UpdateExtensionAssociationRequest {
    func asAppConfigModelUpdateExtensionAssociationOperationInputPath() -> UpdateExtensionAssociationOperationInputPath {
        return UpdateExtensionAssociationOperationInputPath(
            extensionAssociationId: extensionAssociationId)
    }
}

/**
 Structure to encode the body input for the UpdateExtensionAssociation
 operation.
 */
public struct UpdateExtensionAssociationOperationInputBody: Codable, Equatable {
    public var parameters: ParameterValueMap?

    public init(parameters: ParameterValueMap? = nil) {
        self.parameters = parameters
    }

    enum CodingKeys: String, CodingKey {
        case parameters = "Parameters"
    }

    public func validate() throws {
    }
}

public extension UpdateExtensionAssociationRequest {
    func asAppConfigModelUpdateExtensionAssociationOperationInputBody() -> UpdateExtensionAssociationOperationInputBody {
        return UpdateExtensionAssociationOperationInputBody(
            parameters: parameters)
    }
}

/**
 Structure to encode the path input for the ValidateConfiguration
 operation.
 */
public struct ValidateConfigurationOperationInputPath: Codable, Equatable {
    public var applicationId: Id
    public var configurationProfileId: Id

    public init(applicationId: Id,
                configurationProfileId: Id) {
        self.applicationId = applicationId
        self.configurationProfileId = configurationProfileId
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case configurationProfileId = "ConfigurationProfileId"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try configurationProfileId.validateAsId()
    }
}

public extension ValidateConfigurationRequest {
    func asAppConfigModelValidateConfigurationOperationInputPath() -> ValidateConfigurationOperationInputPath {
        return ValidateConfigurationOperationInputPath(
            applicationId: applicationId,
            configurationProfileId: configurationProfileId)
    }
}

/**
 Structure to encode the query input for the ValidateConfiguration
 operation.
 */
public struct ValidateConfigurationOperationInputQuery: Codable, Equatable {
    public var configurationVersion: Version

    public init(configurationVersion: Version) {
        self.configurationVersion = configurationVersion
    }

    enum CodingKeys: String, CodingKey {
        case configurationVersion = "configuration_version"
    }

    public func validate() throws {
        try configurationVersion.validateAsVersion()
    }
}

public extension ValidateConfigurationRequest {
    func asAppConfigModelValidateConfigurationOperationInputQuery() -> ValidateConfigurationOperationInputQuery {
        return ValidateConfigurationOperationInputQuery(
            configurationVersion: configurationVersion)
    }
}
