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
// ElasticContainerOperationsReporting.swift
// ElasticContainerClient
//

import Foundation
import SmokeAWSCore
import ElasticContainerModel

/**
 Operation reporting for the ElasticContainerModel.
 */
public struct ElasticContainerOperationsReporting {
    let createCapacityProvider: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let createCluster: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let createService: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let createTaskSet: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let deleteAccountSetting: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let deleteAttributes: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let deleteCapacityProvider: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let deleteCluster: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let deleteService: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let deleteTaskSet: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let deregisterContainerInstance: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let deregisterTaskDefinition: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let describeCapacityProviders: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let describeClusters: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let describeContainerInstances: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let describeServices: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let describeTaskDefinition: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let describeTaskSets: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let describeTasks: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let discoverPollEndpoint: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let listAccountSettings: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let listAttributes: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let listClusters: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let listContainerInstances: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let listServices: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let listTagsForResource: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let listTaskDefinitionFamilies: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let listTaskDefinitions: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let listTasks: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let putAccountSetting: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let putAccountSettingDefault: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let putAttributes: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let putClusterCapacityProviders: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let registerContainerInstance: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let registerTaskDefinition: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let runTask: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let startTask: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let stopTask: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let submitAttachmentStateChanges: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let submitContainerStateChange: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let submitTaskStateChange: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let tagResource: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let untagResource: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let updateCapacityProvider: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let updateClusterSettings: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let updateContainerAgent: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let updateContainerInstancesState: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let updateService: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let updateServicePrimaryTaskSet: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>
    let updateTaskSet: StandardSmokeAWSOperationReporting<ElasticContainerModelOperations>

    public init(clientName: String, reportingConfiguration: SmokeAWSClientReportingConfiguration<ElasticContainerModelOperations>) {
        self.createCapacityProvider = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createCapacityProvider, configuration: reportingConfiguration)
        self.createCluster = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createCluster, configuration: reportingConfiguration)
        self.createService = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createService, configuration: reportingConfiguration)
        self.createTaskSet = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createTaskSet, configuration: reportingConfiguration)
        self.deleteAccountSetting = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteAccountSetting, configuration: reportingConfiguration)
        self.deleteAttributes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteAttributes, configuration: reportingConfiguration)
        self.deleteCapacityProvider = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteCapacityProvider, configuration: reportingConfiguration)
        self.deleteCluster = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteCluster, configuration: reportingConfiguration)
        self.deleteService = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteService, configuration: reportingConfiguration)
        self.deleteTaskSet = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteTaskSet, configuration: reportingConfiguration)
        self.deregisterContainerInstance = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deregisterContainerInstance, configuration: reportingConfiguration)
        self.deregisterTaskDefinition = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deregisterTaskDefinition, configuration: reportingConfiguration)
        self.describeCapacityProviders = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeCapacityProviders, configuration: reportingConfiguration)
        self.describeClusters = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeClusters, configuration: reportingConfiguration)
        self.describeContainerInstances = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeContainerInstances, configuration: reportingConfiguration)
        self.describeServices = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeServices, configuration: reportingConfiguration)
        self.describeTaskDefinition = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeTaskDefinition, configuration: reportingConfiguration)
        self.describeTaskSets = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeTaskSets, configuration: reportingConfiguration)
        self.describeTasks = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeTasks, configuration: reportingConfiguration)
        self.discoverPollEndpoint = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .discoverPollEndpoint, configuration: reportingConfiguration)
        self.listAccountSettings = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listAccountSettings, configuration: reportingConfiguration)
        self.listAttributes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listAttributes, configuration: reportingConfiguration)
        self.listClusters = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listClusters, configuration: reportingConfiguration)
        self.listContainerInstances = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listContainerInstances, configuration: reportingConfiguration)
        self.listServices = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listServices, configuration: reportingConfiguration)
        self.listTagsForResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listTagsForResource, configuration: reportingConfiguration)
        self.listTaskDefinitionFamilies = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listTaskDefinitionFamilies, configuration: reportingConfiguration)
        self.listTaskDefinitions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listTaskDefinitions, configuration: reportingConfiguration)
        self.listTasks = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listTasks, configuration: reportingConfiguration)
        self.putAccountSetting = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putAccountSetting, configuration: reportingConfiguration)
        self.putAccountSettingDefault = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putAccountSettingDefault, configuration: reportingConfiguration)
        self.putAttributes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putAttributes, configuration: reportingConfiguration)
        self.putClusterCapacityProviders = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putClusterCapacityProviders, configuration: reportingConfiguration)
        self.registerContainerInstance = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .registerContainerInstance, configuration: reportingConfiguration)
        self.registerTaskDefinition = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .registerTaskDefinition, configuration: reportingConfiguration)
        self.runTask = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .runTask, configuration: reportingConfiguration)
        self.startTask = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .startTask, configuration: reportingConfiguration)
        self.stopTask = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .stopTask, configuration: reportingConfiguration)
        self.submitAttachmentStateChanges = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .submitAttachmentStateChanges, configuration: reportingConfiguration)
        self.submitContainerStateChange = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .submitContainerStateChange, configuration: reportingConfiguration)
        self.submitTaskStateChange = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .submitTaskStateChange, configuration: reportingConfiguration)
        self.tagResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .tagResource, configuration: reportingConfiguration)
        self.untagResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .untagResource, configuration: reportingConfiguration)
        self.updateCapacityProvider = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .updateCapacityProvider, configuration: reportingConfiguration)
        self.updateClusterSettings = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .updateClusterSettings, configuration: reportingConfiguration)
        self.updateContainerAgent = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .updateContainerAgent, configuration: reportingConfiguration)
        self.updateContainerInstancesState = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .updateContainerInstancesState, configuration: reportingConfiguration)
        self.updateService = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .updateService, configuration: reportingConfiguration)
        self.updateServicePrimaryTaskSet = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .updateServicePrimaryTaskSet, configuration: reportingConfiguration)
        self.updateTaskSet = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .updateTaskSet, configuration: reportingConfiguration)
    }
}
