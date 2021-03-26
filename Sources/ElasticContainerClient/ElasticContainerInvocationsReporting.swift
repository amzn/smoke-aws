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
// ElasticContainerInvocationsReporting.swift
// ElasticContainerClient
//

import Foundation
import SmokeHTTPClient
import SmokeAWSHttp
import ElasticContainerModel

/**
 Invocations reporting for the ElasticContainerModel.
 */
public struct ElasticContainerInvocationsReporting<InvocationReportingType: HTTPClientCoreInvocationReporting> {
    public let createCapacityProvider: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createService: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createTaskSet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteAccountSetting: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteCapacityProvider: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteService: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteTaskSet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deregisterContainerInstance: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deregisterTaskDefinition: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeCapacityProviders: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeClusters: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeContainerInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeServices: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeTaskDefinition: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeTaskSets: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeTasks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let discoverPollEndpoint: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let executeCommand: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listAccountSettings: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listClusters: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listContainerInstances: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listServices: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listTagsForResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listTaskDefinitionFamilies: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listTaskDefinitions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listTasks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putAccountSetting: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putAccountSettingDefault: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putClusterCapacityProviders: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let registerContainerInstance: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let registerTaskDefinition: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let runTask: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let startTask: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let stopTask: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let submitAttachmentStateChanges: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let submitContainerStateChange: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let submitTaskStateChange: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let tagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let untagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let updateCapacityProvider: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let updateCluster: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let updateClusterSettings: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let updateContainerAgent: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let updateContainerInstancesState: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let updateService: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let updateServicePrimaryTaskSet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let updateTaskSet: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>

    public init(reporting: InvocationReportingType, operationsReporting: ElasticContainerOperationsReporting) {
        self.createCapacityProvider = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createCapacityProvider)
        self.createCluster = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createCluster)
        self.createService = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createService)
        self.createTaskSet = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createTaskSet)
        self.deleteAccountSetting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteAccountSetting)
        self.deleteAttributes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteAttributes)
        self.deleteCapacityProvider = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteCapacityProvider)
        self.deleteCluster = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteCluster)
        self.deleteService = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteService)
        self.deleteTaskSet = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteTaskSet)
        self.deregisterContainerInstance = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deregisterContainerInstance)
        self.deregisterTaskDefinition = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deregisterTaskDefinition)
        self.describeCapacityProviders = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeCapacityProviders)
        self.describeClusters = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeClusters)
        self.describeContainerInstances = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeContainerInstances)
        self.describeServices = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeServices)
        self.describeTaskDefinition = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeTaskDefinition)
        self.describeTaskSets = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeTaskSets)
        self.describeTasks = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeTasks)
        self.discoverPollEndpoint = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.discoverPollEndpoint)
        self.executeCommand = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.executeCommand)
        self.listAccountSettings = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listAccountSettings)
        self.listAttributes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listAttributes)
        self.listClusters = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listClusters)
        self.listContainerInstances = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listContainerInstances)
        self.listServices = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listServices)
        self.listTagsForResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listTagsForResource)
        self.listTaskDefinitionFamilies = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listTaskDefinitionFamilies)
        self.listTaskDefinitions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listTaskDefinitions)
        self.listTasks = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listTasks)
        self.putAccountSetting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putAccountSetting)
        self.putAccountSettingDefault = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putAccountSettingDefault)
        self.putAttributes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putAttributes)
        self.putClusterCapacityProviders = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putClusterCapacityProviders)
        self.registerContainerInstance = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.registerContainerInstance)
        self.registerTaskDefinition = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.registerTaskDefinition)
        self.runTask = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.runTask)
        self.startTask = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.startTask)
        self.stopTask = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.stopTask)
        self.submitAttachmentStateChanges = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.submitAttachmentStateChanges)
        self.submitContainerStateChange = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.submitContainerStateChange)
        self.submitTaskStateChange = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.submitTaskStateChange)
        self.tagResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.tagResource)
        self.untagResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.untagResource)
        self.updateCapacityProvider = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateCapacityProvider)
        self.updateCluster = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateCluster)
        self.updateClusterSettings = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateClusterSettings)
        self.updateContainerAgent = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateContainerAgent)
        self.updateContainerInstancesState = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateContainerInstancesState)
        self.updateService = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateService)
        self.updateServicePrimaryTaskSet = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateServicePrimaryTaskSet)
        self.updateTaskSet = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateTaskSet)
    }
}
