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
// AppConfigOperationsClientInput.swift
// AppConfigClient
//

import Foundation
import SmokeHTTPClient
import AppConfigModel

/**
 Type to handle the input to the CreateApplication operation in a HTTP client.
 */
public typealias CreateApplicationOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the CreateConfigurationProfile operation in a HTTP client.
 */
public struct CreateConfigurationProfileOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: CreateConfigurationProfileOperationInputPath?
    public let bodyEncodable: CreateConfigurationProfileOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: CreateConfigurationProfileRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asAppConfigModelCreateConfigurationProfileOperationInputPath()
        self.bodyEncodable = encodable.asAppConfigModelCreateConfigurationProfileOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the CreateDeploymentStrategy operation in a HTTP client.
 */
public typealias CreateDeploymentStrategyOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the CreateEnvironment operation in a HTTP client.
 */
public struct CreateEnvironmentOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: CreateEnvironmentOperationInputPath?
    public let bodyEncodable: CreateEnvironmentOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: CreateEnvironmentRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asAppConfigModelCreateEnvironmentOperationInputPath()
        self.bodyEncodable = encodable.asAppConfigModelCreateEnvironmentOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the CreateHostedConfigurationVersion operation in a HTTP client.
 */
public struct CreateHostedConfigurationVersionOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: CreateHostedConfigurationVersionOperationInputPath?
    public let bodyEncodable: Blob?
    public let additionalHeadersEncodable: CreateHostedConfigurationVersionOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: CreateHostedConfigurationVersionRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asAppConfigModelCreateHostedConfigurationVersionOperationInputPath()
        self.bodyEncodable = encodable.content
        self.additionalHeadersEncodable = encodable.asAppConfigModelCreateHostedConfigurationVersionOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteApplication operation in a HTTP client.
 */
public struct DeleteApplicationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DeleteApplicationOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeleteApplicationRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asAppConfigModelDeleteApplicationOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteConfigurationProfile operation in a HTTP client.
 */
public struct DeleteConfigurationProfileOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DeleteConfigurationProfileOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeleteConfigurationProfileRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asAppConfigModelDeleteConfigurationProfileOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteDeploymentStrategy operation in a HTTP client.
 */
public struct DeleteDeploymentStrategyOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DeleteDeploymentStrategyOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeleteDeploymentStrategyRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asAppConfigModelDeleteDeploymentStrategyOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteEnvironment operation in a HTTP client.
 */
public struct DeleteEnvironmentOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DeleteEnvironmentOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeleteEnvironmentRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asAppConfigModelDeleteEnvironmentOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteHostedConfigurationVersion operation in a HTTP client.
 */
public struct DeleteHostedConfigurationVersionOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DeleteHostedConfigurationVersionOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeleteHostedConfigurationVersionRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asAppConfigModelDeleteHostedConfigurationVersionOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetApplication operation in a HTTP client.
 */
public struct GetApplicationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetApplicationOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: GetApplicationRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asAppConfigModelGetApplicationOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetConfiguration operation in a HTTP client.
 */
public struct GetConfigurationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: GetConfigurationOperationInputQuery?
    public let pathEncodable: GetConfigurationOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: GetConfigurationRequest) {
        self.queryEncodable = encodable.asAppConfigModelGetConfigurationOperationInputQuery()
        self.pathEncodable = encodable.asAppConfigModelGetConfigurationOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetConfigurationProfile operation in a HTTP client.
 */
public struct GetConfigurationProfileOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetConfigurationProfileOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: GetConfigurationProfileRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asAppConfigModelGetConfigurationProfileOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetDeployment operation in a HTTP client.
 */
public struct GetDeploymentOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetDeploymentOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: GetDeploymentRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asAppConfigModelGetDeploymentOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetDeploymentStrategy operation in a HTTP client.
 */
public struct GetDeploymentStrategyOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetDeploymentStrategyOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: GetDeploymentStrategyRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asAppConfigModelGetDeploymentStrategyOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetEnvironment operation in a HTTP client.
 */
public struct GetEnvironmentOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetEnvironmentOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: GetEnvironmentRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asAppConfigModelGetEnvironmentOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetHostedConfigurationVersion operation in a HTTP client.
 */
public struct GetHostedConfigurationVersionOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetHostedConfigurationVersionOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: GetHostedConfigurationVersionRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asAppConfigModelGetHostedConfigurationVersionOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListApplications operation in a HTTP client.
 */
public struct ListApplicationsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListApplicationsOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListApplicationsRequest) {
        self.queryEncodable = encodable.asAppConfigModelListApplicationsOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListConfigurationProfiles operation in a HTTP client.
 */
public struct ListConfigurationProfilesOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListConfigurationProfilesOperationInputQuery?
    public let pathEncodable: ListConfigurationProfilesOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListConfigurationProfilesRequest) {
        self.queryEncodable = encodable.asAppConfigModelListConfigurationProfilesOperationInputQuery()
        self.pathEncodable = encodable.asAppConfigModelListConfigurationProfilesOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListDeploymentStrategies operation in a HTTP client.
 */
public struct ListDeploymentStrategiesOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListDeploymentStrategiesOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListDeploymentStrategiesRequest) {
        self.queryEncodable = encodable.asAppConfigModelListDeploymentStrategiesOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListDeployments operation in a HTTP client.
 */
public struct ListDeploymentsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListDeploymentsOperationInputQuery?
    public let pathEncodable: ListDeploymentsOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListDeploymentsRequest) {
        self.queryEncodable = encodable.asAppConfigModelListDeploymentsOperationInputQuery()
        self.pathEncodable = encodable.asAppConfigModelListDeploymentsOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListEnvironments operation in a HTTP client.
 */
public struct ListEnvironmentsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListEnvironmentsOperationInputQuery?
    public let pathEncodable: ListEnvironmentsOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListEnvironmentsRequest) {
        self.queryEncodable = encodable.asAppConfigModelListEnvironmentsOperationInputQuery()
        self.pathEncodable = encodable.asAppConfigModelListEnvironmentsOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListHostedConfigurationVersions operation in a HTTP client.
 */
public struct ListHostedConfigurationVersionsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListHostedConfigurationVersionsOperationInputQuery?
    public let pathEncodable: ListHostedConfigurationVersionsOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListHostedConfigurationVersionsRequest) {
        self.queryEncodable = encodable.asAppConfigModelListHostedConfigurationVersionsOperationInputQuery()
        self.pathEncodable = encodable.asAppConfigModelListHostedConfigurationVersionsOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListTagsForResource operation in a HTTP client.
 */
public struct ListTagsForResourceOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: ListTagsForResourceOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListTagsForResourceRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asAppConfigModelListTagsForResourceOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the StartDeployment operation in a HTTP client.
 */
public struct StartDeploymentOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: StartDeploymentOperationInputPath?
    public let bodyEncodable: StartDeploymentOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: StartDeploymentRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asAppConfigModelStartDeploymentOperationInputPath()
        self.bodyEncodable = encodable.asAppConfigModelStartDeploymentOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the StopDeployment operation in a HTTP client.
 */
public struct StopDeploymentOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: StopDeploymentOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: StopDeploymentRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asAppConfigModelStopDeploymentOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the TagResource operation in a HTTP client.
 */
public struct TagResourceOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: TagResourceOperationInputPath?
    public let bodyEncodable: TagResourceOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: TagResourceRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asAppConfigModelTagResourceOperationInputPath()
        self.bodyEncodable = encodable.asAppConfigModelTagResourceOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the UntagResource operation in a HTTP client.
 */
public struct UntagResourceOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: UntagResourceOperationInputQuery?
    public let pathEncodable: UntagResourceOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: UntagResourceRequest) {
        self.queryEncodable = encodable.asAppConfigModelUntagResourceOperationInputQuery()
        self.pathEncodable = encodable.asAppConfigModelUntagResourceOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the UpdateApplication operation in a HTTP client.
 */
public struct UpdateApplicationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: UpdateApplicationOperationInputPath?
    public let bodyEncodable: UpdateApplicationOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: UpdateApplicationRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asAppConfigModelUpdateApplicationOperationInputPath()
        self.bodyEncodable = encodable.asAppConfigModelUpdateApplicationOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the UpdateConfigurationProfile operation in a HTTP client.
 */
public struct UpdateConfigurationProfileOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: UpdateConfigurationProfileOperationInputPath?
    public let bodyEncodable: UpdateConfigurationProfileOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: UpdateConfigurationProfileRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asAppConfigModelUpdateConfigurationProfileOperationInputPath()
        self.bodyEncodable = encodable.asAppConfigModelUpdateConfigurationProfileOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the UpdateDeploymentStrategy operation in a HTTP client.
 */
public struct UpdateDeploymentStrategyOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: UpdateDeploymentStrategyOperationInputPath?
    public let bodyEncodable: UpdateDeploymentStrategyOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: UpdateDeploymentStrategyRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asAppConfigModelUpdateDeploymentStrategyOperationInputPath()
        self.bodyEncodable = encodable.asAppConfigModelUpdateDeploymentStrategyOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the UpdateEnvironment operation in a HTTP client.
 */
public struct UpdateEnvironmentOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: UpdateEnvironmentOperationInputPath?
    public let bodyEncodable: UpdateEnvironmentOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: UpdateEnvironmentRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asAppConfigModelUpdateEnvironmentOperationInputPath()
        self.bodyEncodable = encodable.asAppConfigModelUpdateEnvironmentOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ValidateConfiguration operation in a HTTP client.
 */
public struct ValidateConfigurationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ValidateConfigurationOperationInputQuery?
    public let pathEncodable: ValidateConfigurationOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ValidateConfigurationRequest) {
        self.queryEncodable = encodable.asAppConfigModelValidateConfigurationOperationInputQuery()
        self.pathEncodable = encodable.asAppConfigModelValidateConfigurationOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}
