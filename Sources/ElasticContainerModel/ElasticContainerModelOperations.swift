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
// ElasticContainerModelOperations.swift
// ElasticContainerModel
//

import Foundation

/**
 Operation enumeration for the ElasticContainerModel.
 */
public enum ElasticContainerModelOperations: String {
    case createCluster = "CreateCluster"
    case createService = "CreateService"
    case createTaskSet = "CreateTaskSet"
    case deleteAccountSetting = "DeleteAccountSetting"
    case deleteAttributes = "DeleteAttributes"
    case deleteCluster = "DeleteCluster"
    case deleteService = "DeleteService"
    case deleteTaskSet = "DeleteTaskSet"
    case deregisterContainerInstance = "DeregisterContainerInstance"
    case deregisterTaskDefinition = "DeregisterTaskDefinition"
    case describeClusters = "DescribeClusters"
    case describeContainerInstances = "DescribeContainerInstances"
    case describeServices = "DescribeServices"
    case describeTaskDefinition = "DescribeTaskDefinition"
    case describeTaskSets = "DescribeTaskSets"
    case describeTasks = "DescribeTasks"
    case discoverPollEndpoint = "DiscoverPollEndpoint"
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
    case registerContainerInstance = "RegisterContainerInstance"
    case registerTaskDefinition = "RegisterTaskDefinition"
    case runTask = "RunTask"
    case startTask = "StartTask"
    case stopTask = "StopTask"
    case submitContainerStateChange = "SubmitContainerStateChange"
    case submitTaskStateChange = "SubmitTaskStateChange"
    case tagResource = "TagResource"
    case untagResource = "UntagResource"
    case updateContainerAgent = "UpdateContainerAgent"
    case updateContainerInstancesState = "UpdateContainerInstancesState"
    case updateService = "UpdateService"
    case updateServicePrimaryTaskSet = "UpdateServicePrimaryTaskSet"
    case updateTaskSet = "UpdateTaskSet"

    public var operationPath: String {
        switch self {
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
        case .submitContainerStateChange:
            return "/"
        case .submitTaskStateChange:
            return "/"
        case .tagResource:
            return "/"
        case .untagResource:
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
