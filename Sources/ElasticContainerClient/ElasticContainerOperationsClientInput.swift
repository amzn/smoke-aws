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
// ElasticContainerOperationsClientInput.swift
// ElasticContainerClient
//

import Foundation
import SmokeHTTPClient
import ElasticContainerModel

/**
 Type to handle the input to the CreateCluster operation in a HTTP client.
 */
public typealias CreateClusterOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the CreateService operation in a HTTP client.
 */
public typealias CreateServiceOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the CreateTaskSet operation in a HTTP client.
 */
public typealias CreateTaskSetOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DeleteAccountSetting operation in a HTTP client.
 */
public typealias DeleteAccountSettingOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DeleteAttributes operation in a HTTP client.
 */
public typealias DeleteAttributesOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DeleteCluster operation in a HTTP client.
 */
public typealias DeleteClusterOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DeleteService operation in a HTTP client.
 */
public typealias DeleteServiceOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DeleteTaskSet operation in a HTTP client.
 */
public typealias DeleteTaskSetOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DeregisterContainerInstance operation in a HTTP client.
 */
public typealias DeregisterContainerInstanceOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DeregisterTaskDefinition operation in a HTTP client.
 */
public typealias DeregisterTaskDefinitionOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeClusters operation in a HTTP client.
 */
public typealias DescribeClustersOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeContainerInstances operation in a HTTP client.
 */
public typealias DescribeContainerInstancesOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeServices operation in a HTTP client.
 */
public typealias DescribeServicesOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeTaskDefinition operation in a HTTP client.
 */
public typealias DescribeTaskDefinitionOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeTaskSets operation in a HTTP client.
 */
public typealias DescribeTaskSetsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeTasks operation in a HTTP client.
 */
public typealias DescribeTasksOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DiscoverPollEndpoint operation in a HTTP client.
 */
public typealias DiscoverPollEndpointOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListAccountSettings operation in a HTTP client.
 */
public typealias ListAccountSettingsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListAttributes operation in a HTTP client.
 */
public typealias ListAttributesOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListClusters operation in a HTTP client.
 */
public typealias ListClustersOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListContainerInstances operation in a HTTP client.
 */
public typealias ListContainerInstancesOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListServices operation in a HTTP client.
 */
public typealias ListServicesOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListTagsForResource operation in a HTTP client.
 */
public typealias ListTagsForResourceOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListTaskDefinitionFamilies operation in a HTTP client.
 */
public typealias ListTaskDefinitionFamiliesOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListTaskDefinitions operation in a HTTP client.
 */
public typealias ListTaskDefinitionsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListTasks operation in a HTTP client.
 */
public typealias ListTasksOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the PutAccountSetting operation in a HTTP client.
 */
public typealias PutAccountSettingOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the PutAccountSettingDefault operation in a HTTP client.
 */
public typealias PutAccountSettingDefaultOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the PutAttributes operation in a HTTP client.
 */
public typealias PutAttributesOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the RegisterContainerInstance operation in a HTTP client.
 */
public typealias RegisterContainerInstanceOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the RegisterTaskDefinition operation in a HTTP client.
 */
public typealias RegisterTaskDefinitionOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the RunTask operation in a HTTP client.
 */
public typealias RunTaskOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the StartTask operation in a HTTP client.
 */
public typealias StartTaskOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the StopTask operation in a HTTP client.
 */
public typealias StopTaskOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the SubmitContainerStateChange operation in a HTTP client.
 */
public typealias SubmitContainerStateChangeOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the SubmitTaskStateChange operation in a HTTP client.
 */
public typealias SubmitTaskStateChangeOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the TagResource operation in a HTTP client.
 */
public typealias TagResourceOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the UntagResource operation in a HTTP client.
 */
public typealias UntagResourceOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the UpdateContainerAgent operation in a HTTP client.
 */
public typealias UpdateContainerAgentOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the UpdateContainerInstancesState operation in a HTTP client.
 */
public typealias UpdateContainerInstancesStateOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the UpdateService operation in a HTTP client.
 */
public typealias UpdateServiceOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the UpdateServicePrimaryTaskSet operation in a HTTP client.
 */
public typealias UpdateServicePrimaryTaskSetOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the UpdateTaskSet operation in a HTTP client.
 */
public typealias UpdateTaskSetOperationHTTPRequestInput = BodyHTTPRequestInput
