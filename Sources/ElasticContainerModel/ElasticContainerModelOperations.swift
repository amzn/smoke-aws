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
// ElasticContainerModelOperations.swift
// ElasticContainerModel
//

import Foundation

/**
 Operation enumeration for the ElasticContainerModel.
 */
public enum ElasticContainerModelOperations: String, Hashable, CustomStringConvertible {
    case createCapacityProvider = "CreateCapacityProvider"
    case createCluster = "CreateCluster"
    case createService = "CreateService"
    case createTaskSet = "CreateTaskSet"
    case deleteAccountSetting = "DeleteAccountSetting"
    case deleteAttributes = "DeleteAttributes"
    case deleteCapacityProvider = "DeleteCapacityProvider"
    case deleteCluster = "DeleteCluster"
    case deleteService = "DeleteService"
    case deleteTaskSet = "DeleteTaskSet"
    case deregisterContainerInstance = "DeregisterContainerInstance"
    case deregisterTaskDefinition = "DeregisterTaskDefinition"
    case describeCapacityProviders = "DescribeCapacityProviders"
    case describeClusters = "DescribeClusters"
    case describeContainerInstances = "DescribeContainerInstances"
    case describeServices = "DescribeServices"
    case describeTaskDefinition = "DescribeTaskDefinition"
    case describeTaskSets = "DescribeTaskSets"
    case describeTasks = "DescribeTasks"
    case discoverPollEndpoint = "DiscoverPollEndpoint"
    case executeCommand = "ExecuteCommand"
    case listAccountSettings = "ListAccountSettings"
    case listAttributes = "ListAttributes"
    case listClusters = "ListClusters"
    case listContainerInstances = "ListContainerInstances"
    case listServices = "ListServices"
    case listTagsForResource = "ListTagsForResource"
    case listTaskDefinitionFamilies = "ListTaskDefinitionFamilies"
    case listTaskDefinitions = "ListTaskDefinitions"
    case listTasks = "ListTasks"
    case putAccountSetting = "PutAccountSetting"
    case putAccountSettingDefault = "PutAccountSettingDefault"
    case putAttributes = "PutAttributes"
    case putClusterCapacityProviders = "PutClusterCapacityProviders"
    case registerContainerInstance = "RegisterContainerInstance"
    case registerTaskDefinition = "RegisterTaskDefinition"
    case runTask = "RunTask"
    case startTask = "StartTask"
    case stopTask = "StopTask"
    case submitAttachmentStateChanges = "SubmitAttachmentStateChanges"
    case submitContainerStateChange = "SubmitContainerStateChange"
    case submitTaskStateChange = "SubmitTaskStateChange"
    case tagResource = "TagResource"
    case untagResource = "UntagResource"
    case updateCapacityProvider = "UpdateCapacityProvider"
    case updateCluster = "UpdateCluster"
    case updateClusterSettings = "UpdateClusterSettings"
    case updateContainerAgent = "UpdateContainerAgent"
    case updateContainerInstancesState = "UpdateContainerInstancesState"
    case updateService = "UpdateService"
    case updateServicePrimaryTaskSet = "UpdateServicePrimaryTaskSet"
    case updateTaskSet = "UpdateTaskSet"

    public var description: String {
        return rawValue
    }

    public var operationPath: String {
        switch self {
        case .createCapacityProvider:
            return "/"
        case .createCluster:
            return "/"
        case .createService:
            return "/"
        case .createTaskSet:
            return "/"
        case .deleteAccountSetting:
            return "/"
        case .deleteAttributes:
            return "/"
        case .deleteCapacityProvider:
            return "/"
        case .deleteCluster:
            return "/"
        case .deleteService:
            return "/"
        case .deleteTaskSet:
            return "/"
        case .deregisterContainerInstance:
            return "/"
        case .deregisterTaskDefinition:
            return "/"
        case .describeCapacityProviders:
            return "/"
        case .describeClusters:
            return "/"
        case .describeContainerInstances:
            return "/"
        case .describeServices:
            return "/"
        case .describeTaskDefinition:
            return "/"
        case .describeTaskSets:
            return "/"
        case .describeTasks:
            return "/"
        case .discoverPollEndpoint:
            return "/"
        case .executeCommand:
            return "/"
        case .listAccountSettings:
            return "/"
        case .listAttributes:
            return "/"
        case .listClusters:
            return "/"
        case .listContainerInstances:
            return "/"
        case .listServices:
            return "/"
        case .listTagsForResource:
            return "/"
        case .listTaskDefinitionFamilies:
            return "/"
        case .listTaskDefinitions:
            return "/"
        case .listTasks:
            return "/"
        case .putAccountSetting:
            return "/"
        case .putAccountSettingDefault:
            return "/"
        case .putAttributes:
            return "/"
        case .putClusterCapacityProviders:
            return "/"
        case .registerContainerInstance:
            return "/"
        case .registerTaskDefinition:
            return "/"
        case .runTask:
            return "/"
        case .startTask:
            return "/"
        case .stopTask:
            return "/"
        case .submitAttachmentStateChanges:
            return "/"
        case .submitContainerStateChange:
            return "/"
        case .submitTaskStateChange:
            return "/"
        case .tagResource:
            return "/"
        case .untagResource:
            return "/"
        case .updateCapacityProvider:
            return "/"
        case .updateCluster:
            return "/"
        case .updateClusterSettings:
            return "/"
        case .updateContainerAgent:
            return "/"
        case .updateContainerInstancesState:
            return "/"
        case .updateService:
            return "/"
        case .updateServicePrimaryTaskSet:
            return "/"
        case .updateTaskSet:
            return "/"
        }
    }
}
