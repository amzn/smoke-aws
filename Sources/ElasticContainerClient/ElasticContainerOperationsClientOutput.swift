// Copyright 2018-2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// -- Generated Code; do not edit --
//
// ElasticContainerOperationsClientOutput.swift
// ElasticContainerClient
//

import Foundation
import SmokeHTTPClient
import ElasticContainerModel

/**
 Type to handle the output from the CreateCluster operation in a HTTP client.
 */
extension CreateClusterResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateClusterResponse
    public typealias HeadersType = CreateClusterResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateClusterResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateService operation in a HTTP client.
 */
extension CreateServiceResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateServiceResponse
    public typealias HeadersType = CreateServiceResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateServiceResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateTaskSet operation in a HTTP client.
 */
extension CreateTaskSetResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateTaskSetResponse
    public typealias HeadersType = CreateTaskSetResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateTaskSetResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteAccountSetting operation in a HTTP client.
 */
extension DeleteAccountSettingResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteAccountSettingResponse
    public typealias HeadersType = DeleteAccountSettingResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteAccountSettingResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteAttributes operation in a HTTP client.
 */
extension DeleteAttributesResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteAttributesResponse
    public typealias HeadersType = DeleteAttributesResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteAttributesResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteCluster operation in a HTTP client.
 */
extension DeleteClusterResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteClusterResponse
    public typealias HeadersType = DeleteClusterResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteClusterResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteService operation in a HTTP client.
 */
extension DeleteServiceResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteServiceResponse
    public typealias HeadersType = DeleteServiceResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteServiceResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteTaskSet operation in a HTTP client.
 */
extension DeleteTaskSetResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteTaskSetResponse
    public typealias HeadersType = DeleteTaskSetResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteTaskSetResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeregisterContainerInstance operation in a HTTP client.
 */
extension DeregisterContainerInstanceResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DeregisterContainerInstanceResponse
    public typealias HeadersType = DeregisterContainerInstanceResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeregisterContainerInstanceResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeregisterTaskDefinition operation in a HTTP client.
 */
extension DeregisterTaskDefinitionResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DeregisterTaskDefinitionResponse
    public typealias HeadersType = DeregisterTaskDefinitionResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeregisterTaskDefinitionResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeClusters operation in a HTTP client.
 */
extension DescribeClustersResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeClustersResponse
    public typealias HeadersType = DescribeClustersResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeClustersResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeContainerInstances operation in a HTTP client.
 */
extension DescribeContainerInstancesResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeContainerInstancesResponse
    public typealias HeadersType = DescribeContainerInstancesResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeContainerInstancesResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeServices operation in a HTTP client.
 */
extension DescribeServicesResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeServicesResponse
    public typealias HeadersType = DescribeServicesResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeServicesResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeTaskDefinition operation in a HTTP client.
 */
extension DescribeTaskDefinitionResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeTaskDefinitionResponse
    public typealias HeadersType = DescribeTaskDefinitionResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeTaskDefinitionResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeTaskSets operation in a HTTP client.
 */
extension DescribeTaskSetsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeTaskSetsResponse
    public typealias HeadersType = DescribeTaskSetsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeTaskSetsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeTasks operation in a HTTP client.
 */
extension DescribeTasksResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeTasksResponse
    public typealias HeadersType = DescribeTasksResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeTasksResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DiscoverPollEndpoint operation in a HTTP client.
 */
extension DiscoverPollEndpointResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DiscoverPollEndpointResponse
    public typealias HeadersType = DiscoverPollEndpointResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DiscoverPollEndpointResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListAccountSettings operation in a HTTP client.
 */
extension ListAccountSettingsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListAccountSettingsResponse
    public typealias HeadersType = ListAccountSettingsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListAccountSettingsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListAttributes operation in a HTTP client.
 */
extension ListAttributesResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListAttributesResponse
    public typealias HeadersType = ListAttributesResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListAttributesResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListClusters operation in a HTTP client.
 */
extension ListClustersResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListClustersResponse
    public typealias HeadersType = ListClustersResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListClustersResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListContainerInstances operation in a HTTP client.
 */
extension ListContainerInstancesResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListContainerInstancesResponse
    public typealias HeadersType = ListContainerInstancesResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListContainerInstancesResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListServices operation in a HTTP client.
 */
extension ListServicesResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListServicesResponse
    public typealias HeadersType = ListServicesResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListServicesResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListTagsForResource operation in a HTTP client.
 */
extension ListTagsForResourceResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListTagsForResourceResponse
    public typealias HeadersType = ListTagsForResourceResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListTagsForResourceResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListTaskDefinitionFamilies operation in a HTTP client.
 */
extension ListTaskDefinitionFamiliesResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListTaskDefinitionFamiliesResponse
    public typealias HeadersType = ListTaskDefinitionFamiliesResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListTaskDefinitionFamiliesResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListTaskDefinitions operation in a HTTP client.
 */
extension ListTaskDefinitionsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListTaskDefinitionsResponse
    public typealias HeadersType = ListTaskDefinitionsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListTaskDefinitionsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListTasks operation in a HTTP client.
 */
extension ListTasksResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListTasksResponse
    public typealias HeadersType = ListTasksResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListTasksResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the PutAccountSetting operation in a HTTP client.
 */
extension PutAccountSettingResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = PutAccountSettingResponse
    public typealias HeadersType = PutAccountSettingResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PutAccountSettingResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the PutAccountSettingDefault operation in a HTTP client.
 */
extension PutAccountSettingDefaultResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = PutAccountSettingDefaultResponse
    public typealias HeadersType = PutAccountSettingDefaultResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PutAccountSettingDefaultResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the PutAttributes operation in a HTTP client.
 */
extension PutAttributesResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = PutAttributesResponse
    public typealias HeadersType = PutAttributesResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PutAttributesResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RegisterContainerInstance operation in a HTTP client.
 */
extension RegisterContainerInstanceResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = RegisterContainerInstanceResponse
    public typealias HeadersType = RegisterContainerInstanceResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RegisterContainerInstanceResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RegisterTaskDefinition operation in a HTTP client.
 */
extension RegisterTaskDefinitionResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = RegisterTaskDefinitionResponse
    public typealias HeadersType = RegisterTaskDefinitionResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RegisterTaskDefinitionResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RunTask operation in a HTTP client.
 */
extension RunTaskResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = RunTaskResponse
    public typealias HeadersType = RunTaskResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RunTaskResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the StartTask operation in a HTTP client.
 */
extension StartTaskResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = StartTaskResponse
    public typealias HeadersType = StartTaskResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> StartTaskResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the StopTask operation in a HTTP client.
 */
extension StopTaskResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = StopTaskResponse
    public typealias HeadersType = StopTaskResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> StopTaskResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the SubmitContainerStateChange operation in a HTTP client.
 */
extension SubmitContainerStateChangeResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = SubmitContainerStateChangeResponse
    public typealias HeadersType = SubmitContainerStateChangeResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> SubmitContainerStateChangeResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the SubmitTaskStateChange operation in a HTTP client.
 */
extension SubmitTaskStateChangeResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = SubmitTaskStateChangeResponse
    public typealias HeadersType = SubmitTaskStateChangeResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> SubmitTaskStateChangeResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the TagResource operation in a HTTP client.
 */
extension TagResourceResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = TagResourceResponse
    public typealias HeadersType = TagResourceResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> TagResourceResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UntagResource operation in a HTTP client.
 */
extension UntagResourceResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = UntagResourceResponse
    public typealias HeadersType = UntagResourceResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UntagResourceResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateContainerAgent operation in a HTTP client.
 */
extension UpdateContainerAgentResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateContainerAgentResponse
    public typealias HeadersType = UpdateContainerAgentResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateContainerAgentResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateContainerInstancesState operation in a HTTP client.
 */
extension UpdateContainerInstancesStateResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateContainerInstancesStateResponse
    public typealias HeadersType = UpdateContainerInstancesStateResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateContainerInstancesStateResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateService operation in a HTTP client.
 */
extension UpdateServiceResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateServiceResponse
    public typealias HeadersType = UpdateServiceResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateServiceResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateServicePrimaryTaskSet operation in a HTTP client.
 */
extension UpdateServicePrimaryTaskSetResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateServicePrimaryTaskSetResponse
    public typealias HeadersType = UpdateServicePrimaryTaskSetResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateServicePrimaryTaskSetResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateTaskSet operation in a HTTP client.
 */
extension UpdateTaskSetResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateTaskSetResponse
    public typealias HeadersType = UpdateTaskSetResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateTaskSetResponse {
        return try bodyDecodableProvider()
    }
}
